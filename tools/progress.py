import re
import json
from pathlib import Path
import sys

def percentage(named: float, total: float):
    return 100.0 * named / total if total else 0.0

def render_markdown(banks_custom: list[int], banks_total: list[int], overall_named: int, overall_total: int) -> str:
    lines = [
        f"**Labels with a real name: {percentage(overall_named, overall_total):.2f}%** ({overall_named} of {overall_total})",
        "",
        "| Bank | Named | Total | % |",
        "| ---- | ----: | ----: | -: |",
    ]
    
    for bank in range(len(banks_total)):
        named = banks_custom[bank]
        total = banks_total[bank]
        pct = percentage(named, total)
        lines.append(f"| {bank:02X} | {named} | {total} | {pct:.2f}% |")
        
    return "\n".join(lines)

def initialize_bank_counter() -> list[int]:
    total_banks = 32
    banks = []
    for _ in range(total_banks):
        banks.append(0)
    return banks

def bar(p, width=20):
    filled = round(width * p / 100)
    return "#" * filled + "." * (width - filled)

def store_progress_json(percentage: float):
    data = {"schemaVersion": 1, 
            "label": "progress", 
            "message": f"{percentage:.2f}%", 
            "color": "orange" }
    
    with open("./assets/progress.json", "w") as file:
        json.dump(data, file)

def main():
    address_pattern = r"^([0-9a-zA-Z]{2}):[0-9a-zA-Z]{4}"
    auto_pattern = r"(Jump|Call|jr|jp|Data|Label)_"
    readme_progress_start = "<!-- progress:readme_progress_start -->"
    readme_progress_end = "<!-- progress:readme_progress_end -->"
    banks_total_labels = initialize_bank_counter()
    banks_custom_labels = initialize_bank_counter()

    with open("./build/HMGB.sym") as file:
        for line in file.readlines():
            valid_address_search = re.search(address_pattern, line)
            if valid_address_search is None:
                continue

            banks_total_labels[int(valid_address_search.group(1), 16)] += 1

            auto_address_search = re.search(auto_pattern, line)

            if auto_address_search:
                continue

            banks_custom_labels[int(valid_address_search.group(1), 16)]  += 1

    print(f"{'Bank':<6}{'Named':>8}{'Total':>8}{'%':>8}  Progress")
    custom_total = 0
    total_labels = 0
    for bank in range(32):
        n = banks_custom_labels[bank]
        custom_total += n
        a = banks_total_labels[bank]
        total_labels += a
        p = percentage(banks_custom_labels[bank], banks_total_labels[bank])
        print(f"{bank:02X}    {n:>8}{n + a:>8}{p:>7.2f}%  [{bar(p)}]")
    overall = percentage(custom_total, total_labels)
    print(f"{'TOTAL':<6}{custom_total:>8}{total_labels:>8}{overall:>7.2f}%  [{bar(overall)}]")

    path = Path("./README.md")
    text = path.read_text(encoding="utf-8")
    if readme_progress_start not in text or readme_progress_end not in text:
        sys.exit(f"{path}: missing markers {readme_progress_start} / {readme_progress_end}")
    pre, rest = text.split(readme_progress_start, 1)
    _, post = rest.split(readme_progress_end, 1)
    markdown_content = render_markdown(banks_custom_labels, banks_total_labels, custom_total, total_labels)
    path.write_text(f"{pre}{readme_progress_start}\n{markdown_content}\n{readme_progress_end}{post}", encoding="utf-8")
    print("README has been updated with current progress")
    store_progress_json(overall)
    print("Progress has been stored in the json file")
    
if __name__ == "__main__":
    main()

# TODO: Improve this script structure. Quickly done to automate progress