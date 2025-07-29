; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Jump_007_4000:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [de], a
    cp c
    inc de
    cp c
    ld b, h
    nop
    adc h
    nop
    inc d
    cp c
    dec d
    cp c
    sbc h
    nop
    adc d
    nop
    ld a, [de]
    cp c
    adc e
    nop
    ld d, $b9
    ld a, $00
    db $18, $b9
    add hl, de
    cp c
    or c
    nop
    xor a
    nop
    ld b, h
    cp d
    ld b, l
    cp d
    ld b, [hl]
    cp d
    rst $38
    nop
    ld hl, $9200
    nop
    or c
    nop
    ld de, $9400
    nop
    db $28, $b9
    add hl, hl
    cp c
    ld a, [hl+]
    cp c
    dec hl
    cp c
    inc l
    cp c
    ld l, $00
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    rst $38
    nop
    sub $00
    sbc b
    nop
    add hl, sp
    nop
    ld [hl], h
    nop
    ld [hl], d
    nop
    add $00
    rst $38
    nop
    rst $38
    nop
    add hl, de
    nop
    adc c
    nop
    call $9800
    nop
    rla
    nop
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    ld [hl], h
    nop
    ld [hl], d
    nop
    add $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, h
    nop
    ld sp, $6400
    nop
    ld b, h
    nop
    ld l, b
    nop
    ld l, c
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    add hl, de
    nop
    adc c
    nop
    call $9800
    nop
    rla
    nop
    add a
    nop
    ld b, c
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld h, h
    nop
    add b
    nop
    ld [bc], a
    nop
    ld l, e
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld e, $00
    call Call_000_3500
    nop
    sbc c
    nop
    ld b, h
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    and d
    nop
    ld [hl], h
    nop
    ld d, c

jr_007_4100:
    nop
    sub d
    nop
    ld [bc], a
    nop
    or c
    nop
    ld [hl+], a
    nop
    add d
    nop
    ld l, e
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_4122:
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld a, [de]
    cp c
    ld [hl], d
    nop
    ld [bc], a
    nop
    push bc
    nop
    ld d, $b9
    rla
    cp c
    jr jr_007_4100

    add hl, de
    cp c
    or c
    nop
    rst $38
    nop
    inc h
    cp c
    dec h
    cp c
    ld h, $b9
    daa
    cp c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec de
    cp c
    inc e
    cp c
    dec e
    cp c
    ld e, $b9
    rra
    cp c
    jr nz, jr_007_4122

    ld hl, $22b9
    cp c
    inc hl
    cp c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $0000
    ld b, b
    ld c, h
    nop
    jp nc, Jump_000_006b

    nop
    sbc l
    nop
    sbc h
    nop
    ld d, b
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    reti


    nop
    ld b, e
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    ld bc, $0000
    ld b, b
    ld c, h
    nop
    inc h
    ld l, h
    nop
    nop
    stop
    inc de
    nop
    ld bc, $c800
    nop
    ld [hl], h
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    stop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    ld bc, $0000
    ld b, b
    ld c, h
    nop
    ld e, c
    ld l, h
    nop
    nop
    inc [hl]
    nop
    ld h, h
    nop
    cp d
    nop
    ld sp, $3400
    nop
    ld l, l
    nop
    inc d
    nop
    ld [bc], a
    nop
    stop
    sub h
    nop
    ld l, [hl]
    nop
    ld hl, $7200
    nop
    ld [bc], a
    nop
    stop
    ld l, e
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    inc c
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    add e
    nop
    add e
    nop
    ld l, e
    nop
    rst $38
    nop
    cp l
    nop
    sub h
    nop
    ld [hl], e
    nop
    and b
    nop
    stop
    stop
    add b
    nop
    ld b, b
    nop
    ld bc, $7200
    nop
    jp c, $1400

    nop
    add e
    nop
    cp l
    nop
    ld d, b
    nop
    reti


    nop
    inc d
    nop
    ld [bc], a
    nop
    stop
    sub h
    nop
    cp l
    nop
    ld de, $4000
    nop
    ld bc, $7200
    nop
    ld a, d
    nop
    jp c, $ff00

    rst $38
    ld bc, $0000
    ld b, b
    ld c, h
    nop
    adc [hl]
    ld l, h
    nop
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld [hl], h
    nop
    inc d
    nop
    ld [bc], a
    nop
    stop
    sub h
    nop
    ld hl, $7200
    nop
    ld [bc], a
    nop
    stop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    add $00
    ld [hl-], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc $00
    ld [bc], a
    nop
    and d
    nop
    cp $fe
    nop
    nop
    nop
    nop
    inc c
    nop
    and e
    ld l, e
    nop
    nop
    adc l
    nop
    ld b, h
    nop
    ld h, h
    nop
    inc [hl]
    nop
    stop
    ld [de], a
    nop
    ld b, c
    nop
    sub h
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld hl, $6a00
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld b, b
    nop
    sub h
    nop
    inc [hl]
    nop
    ld l, d
    nop
    ld d, c
    nop
    ld de, $ba00
    nop
    ld hl, $4100
    nop
    inc b
    nop
    sbc d
    nop
    and b
    nop
    nop
    nop
    add d
    nop
    jp c, $ff00

    nop
    inc b
    nop
    or c
    nop
    ld bc, $2000
    nop
    sub h
    nop
    ld b, h
    nop
    ld l, l
    nop
    ld e, b
    nop
    add hl, hl
    nop
    rla
    nop
    add [hl]
    nop
    ld l, [hl]
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp d
    nop
    ld bc, $b100
    nop
    ld b, c
    nop
    reti


    nop
    ld [hl-], a
    nop
    stop
    ld [hl], e
    nop
    inc hl
    nop
    inc sp
    nop
    ld h, h
    nop
    add b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld l, d
    nop
    ld l, d
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld l, $00
    ld [hl], h
    nop
    inc sp
    nop
    ld b, c
    nop
    ld bc, $8300
    nop
    jr nc, jr_007_43cf

jr_007_43cf:
    ld l, d
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    ld a, d
    nop
    inc [hl]
    nop
    reti


    nop
    ld [bc], a
    nop
    ld a, d
    nop
    sub h
    nop
    inc [hl]
    nop
    reti


    nop
    inc d
    nop
    add e
    nop
    ld h, h
    nop
    inc h
    nop
    add e

Jump_007_4400:
    nop
    ld h, h
    nop
    xor h
    nop
    nop
    nop
    add d
    nop
    nop
    nop
    add d
    nop
    reti


    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld hl, $6a00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp d
    nop
    ld bc, $1200
    nop
    ld b, h
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    add c
    nop
    sub d
    nop
    ld [bc], a
    nop
    and b
    nop
    ld [de], a
    nop
    add e
    nop
    jr nc, jr_007_444b

jr_007_444b:
    inc bc
    nop
    cp d
    nop
    jp c, $c800

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld d, d
    nop
    ld [bc], a
    nop
    inc de
    nop
    ld bc, $ac00
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    jr nc, jr_007_4481

jr_007_4481:
    jr nc, jr_007_4483

jr_007_4483:
    stop
    ld bc, $9c00
    nop
    or b
    nop
    ld hl, $4400
    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    jp c, $9e00

    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    ld d, b
    nop
    add e
    nop
    ld b, c
    nop
    ld b, b
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    ld d, b
    nop
    ld b, b
    nop
    push bc
    nop
    add b
    nop
    ld [hl], h
    nop
    ld sp, $8000
    nop
    inc hl
    nop
    inc sp
    nop
    ld hl, $6000
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    add d
    nop
    ld b, h
    nop
    nop
    nop
    ld h, e
    nop
    ld b, c
    nop
    reti


    nop
    ld b, b
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    ld b, h
    nop
    nop
    nop
    ld [hl-], a
    nop
    jr nz, jr_007_4523

jr_007_4523:
    and b
    nop
    reti


    nop
    ld de, $c500
    nop
    ld hl, $0100
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    stop
    ld bc, $2300
    nop
    ld bc, $4100
    nop
    ld b, b
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    nop
    nop
    jr nz, jr_007_456d

jr_007_456d:
    stop
    add b
    nop
    ld d, b
    nop
    and e
    nop
    ld hl, $0100
    nop
    nop
    nop
    ld h, e
    nop
    and b
    nop
    rst $38
    nop
    dec bc
    nop
    sbc h
    nop
    or c
    nop
    sub c
    nop
    ld [bc], a
    nop
    ld d, d
    nop
    add c
    nop
    ld [hl-], a
    nop
    cp h
    nop
    ld [de], a
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $db
    nop
    and b
    nop
    ld de, $8300
    nop
    ld bc, $4100
    nop
    reti


    nop
    inc h
    nop
    ld h, b
    nop
    sub e
    nop
    inc sp
    nop
    ld bc, $6000
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    nop
    nop
    inc b
    nop
    or h
    nop
    add b
    nop
    and b
    nop
    ld h, c
    nop
    inc bc
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    jr nz, jr_007_45fb

jr_007_45fb:
    ld h, d
    nop
    jr nz, jr_007_45ff

jr_007_45ff:
    and b
    nop
    reti


    nop
    ld de, $c500
    nop
    ld hl, $1200
    nop
    ld b, b
    nop
    sub e
    nop
    inc sp
    nop
    ld de, $6000
    nop
    ld hl, $3000
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    dec bc
    nop
    sbc h
    nop
    or c
    nop
    sub c
    nop
    ld [bc], a
    nop
    reti


    nop
    nop
    nop
    ld h, e
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    jr nz, jr_007_4647

jr_007_4647:
    ld h, d
    nop
    jr nz, jr_007_464b

jr_007_464b:
    and b
    nop
    ld de, $c500
    nop
    ld hl, $1200
    nop
    ld b, b
    nop
    sub e
    nop
    inc sp
    nop
    ld de, $6000
    nop
    ld hl, $3000
    nop
    ld b, e
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    ld d, b
    nop
    add e
    nop
    ld b, c
    nop
    ld b, b
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    jr nz, jr_007_4699

jr_007_4699:
    ld h, d
    nop
    ld bc, $bd00
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    jp c, $2000

    nop
    inc sp
    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    ld [hl], c
    nop
    ld de, $a000
    nop
    ld d, d
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc de
    nop
    jr nz, jr_007_46e1

jr_007_46e1:
    reti


    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld bc, $b100
    nop
    ld hl, $9400
    nop
    and b
    nop
    nop
    nop
    add c
    nop
    ld h, b
    nop
    ld hl, $3000
    nop
    jp c, Jump_007_6100

    nop
    ld b, b
    nop
    jr nz, jr_007_4703

jr_007_4703:
    sub h
    nop
    reti


    nop
    ld sp, $9100
    nop
    ld [bc], a
    nop
    ld bc, $2100
    nop
    inc sp
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_4719

jr_007_4719:
    ld bc, $da00
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    jr nc, jr_007_472b

jr_007_472b:
    ld bc, $5200
    nop
    ld [bc], a
    nop
    and b
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    add c
    nop
    ld [de], a
    nop
    ld hl, $6000
    nop
    ld hl, $3000
    nop
    jp c, $ff00

    nop
    sbc [hl]
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    nop
    nop
    add b
    nop
    ld hl, $4100
    nop
    ld b, b
    nop
    add d
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [bc], a
    nop
    ld [hl], e
    nop
    sub e
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld bc, $1000
    nop
    or e
    nop
    cp d
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    nop
    sbc h
    nop
    ld d, b
    nop
    reti


    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    ld bc, $3000
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    and b
    nop
    ld bc, $0100
    nop
    ld [hl], d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [bc], a
    nop
    ld [hl], e
    nop
    sub e
    nop
    ld l, d
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    reti


    nop
    nop
    nop
    jr nz, jr_007_481f

jr_007_481f:
    ld b, h
    nop
    ld a, [de]
    nop
    or c
    nop
    cp d
    nop
    ld [hl], d
    nop
    xor h
    nop
    rst $38
    nop
    and h
    nop
    ld d, b
    nop
    sub h
    nop
    ld [hl], h
    nop
    jr nc, jr_007_4837

jr_007_4837:
    rst $00
    nop
    ld b, c
    nop
    reti


    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    ld h, h
    nop
    cp [hl]
    nop
    add h
    nop
    ld [bc], a
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    db $e3
    nop
    sub e
    nop
    ld l, d
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    reti


    nop
    nop
    nop
    jr nz, jr_007_486b

jr_007_486b:
    ld b, h
    nop
    ld a, [de]
    nop
    or c
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld l, e
    nop
    rst $38
    nop
    ld sp, $9200
    nop
    sub e
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    ld b, $00
    ld h, a
    nop
    reti


    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    ld h, h
    nop
    cp [hl]
    nop
    add h
    nop
    ld [bc], a
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, l
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    call nz, $1400
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, b
    nop
    ld bc, $4100
    nop
    ld sp, $4b00
    nop
    ld a, $00
    rrca
    nop
    or c
    nop
    ld b, c
    nop
    reti


    nop
    inc [hl]
    nop
    add c
    nop
    ld b, c
    nop
    ld de, $6000
    nop
    ld [hl+], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    and c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld hl, $9000
    nop
    ld [hl], d
    nop
    add c
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld l, l
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    add $00
    ld [hl-], a
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    rst $38
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    call nz, $1400
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    add $00
    ld [hl-], a
    nop
    ld [hl], b
    nop
    ld d, e
    nop
    reti


    nop
    cp l
    nop
    sub h
    nop
    ld [hl], e
    nop
    ld hl, $3300
    nop
    stop
    add b
    nop
    reti


    nop
    rst $38
    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    ld bc, $8300
    nop
    inc sp
    nop
    jp c, $ff00

    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    add $00
    ld [hl-], a
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    add c
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    and e
    nop
    sub h
    nop
    or b
    nop
    ld bc, $4400
    nop
    ld hl, $b000
    nop
    ld bc, $4400
    nop
    stop
    or d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec l
    cp c
    ld l, $b9
    cpl
    cp c
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, l
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    and h
    nop
    ld [hl], b
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_007_4a60:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    and e
    nop
    sub h
    nop
    or b
    nop
    ld bc, $4400
    nop
    dec d
    nop
    ld b, $00
    ret


    nop
    ld b, h
    nop
    stop
    or d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_007_4a60

    ld sp, $32b9

jr_007_4aaa:
    cp c
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    rst $38
    nop
    db $ec
    set 5, l
    bit 0, e
    nop
    sub h
    nop
    ld h, e
    nop
    rst $38
    nop
    ld [de], a
    cp c
    inc de
    cp c
    ld b, h
    nop
    adc h
    nop
    rst $38
    nop
    inc d
    cp c
    dec d
    cp c
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [de]
    cp c
    ld [hl], d
    nop
    ld [bc], a
    nop
    push bc
    nop
    rst $38
    nop
    ld d, $b9
    ld a, $00
    jr jr_007_4aaa

    add hl, de
    cp c
    or c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    ld d, b
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, Jump_007_7300

    nop
    ld hl, $b100
    nop
    sub b
    nop
    ld [hl], d
    nop
    jp c, $a300

    nop
    sub h
    nop
    ld de, $bd00
    nop
    ld [hl], b
    nop
    sub e
    nop
    inc [hl]
    nop
    add d
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    ld b, h
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc [hl]
    nop
    inc d
    nop
    add h
    nop
    cp l
    nop
    reti


    nop
    inc d
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    ld [hl], h
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    cp l
    nop
    ld h, e
    nop
    sub h
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld h, c
    nop
    inc sp
    nop
    ld [hl], b
    nop
    sub e
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    ld b, b
    nop
    ld bc, $1000
    nop
    ld l, e
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld [hl], b
    nop
    add b
    nop
    reti


    nop
    ld h, b
    nop
    ld bc, $a400
    nop
    ld b, h
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    sub h
    nop
    or c
    nop
    sub b
    nop
    jp c, Jump_007_4000

    nop
    ld h, b
    nop
    inc bc
    nop
    ld [hl], h
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    reti


    nop
    stop
    ld [hl], e
    nop
    ld bc, $a000
    nop
    sub e
    nop
    inc [hl]
    nop
    ld [de], a
    nop
    add e
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sbc l
    nop
    sbc h
    nop
    ld b, h
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    ld d, b
    nop
    inc d
    nop
    add e
    nop
    stop
    ld bc, $6b00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc sp
    cp c
    inc [hl]
    cp c
    dec [hl]
    cp c
    ld [hl], $b9
    scf
    cp c
    ld l, $00
    ld b, c
    nop
    ld b, b
    nop
    add d
    nop
    ld [hl], d
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    stop
    ld b, e
    nop
    ld d, b
    nop
    sbc [hl]
    nop
    sbc h
    nop
    reti


    nop
    ld d, d
    nop
    add c
    nop
    inc d
    nop
    ld h, d
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    or c
    nop
    sub b
    nop
    reti


    nop
    ld h, b
    nop
    jr nc, jr_007_4c5f

jr_007_4c5f:
    sbc [hl]
    nop
    sbc h
    nop
    ld b, b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sbc l
    nop
    sbc h
    nop
    ld b, h
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    ld d, b
    nop
    reti


    nop
    ld b, b
    nop
    ld bc, $4400
    nop
    stop
    ld bc, $6b00
    nop
    rst $38
    nop
    or c
    nop
    sub b
    nop
    reti


    nop
    ld h, b
    nop
    jr nc, jr_007_4cab

jr_007_4cab:
    sbc [hl]
    nop
    sbc h
    nop
    ld b, b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $ba00

    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    add $00
    stop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_007_4cef

jr_007_4cef:
    sub e
    nop
    ld de, $4400
    nop
    or c
    nop
    ld hl, $9400
    nop
    reti


    nop
    ld [hl+], a
    nop
    and h
    nop
    stop
    sub e
    nop
    jr nc, jr_007_4d07

jr_007_4d07:
    ld b, b
    nop
    ld l, d
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    or c
    nop
    ld hl, $9400
    nop
    cp l
    nop
    inc d
    nop
    ld [hl], e
    nop
    add e
    nop
    jr nc, jr_007_4d29

jr_007_4d29:
    inc [hl]
    nop
    inc d
    nop
    add h
    nop
    and b
    nop
    ld b, b
    nop
    ld bc, $1000
    nop
    reti


    nop
    ld hl, $8000
    nop
    rst $00
    nop
    jr nc, jr_007_4d41

jr_007_4d41:
    ld d, h
    nop
    ld [bc], a
    nop
    and b
    nop
    ld bc, $0100
    nop
    or e
    nop
    jp c, $b100

    nop
    sub b
    nop
    nop
    nop
    ld b, b
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld b, e
    nop
    ld a, d
    nop
    ld b, e
    nop
    ld a, d
    nop
    reti


    nop
    nop
    nop
    ld hl, $3000
    nop
    ld b, h
    nop
    nop
    nop
    jr nz, jr_007_4d7b

jr_007_4d7b:
    stop
    add b
    nop
    ld b, e
    nop
    ld a, d
    nop
    reti


    nop
    ld h, c
    nop
    sub h
    nop
    ld b, b
    nop
    inc [hl]
    nop
    call nc, Call_000_1700
    nop
    ld b, [hl]
    nop
    sbc b
    nop
    rla
    nop
    ld [hl+], a
    nop
    add d
    nop
    ld b, h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0302
    ld b, b
    ld c, h
    nop
    sub e
    ld l, h
    nop
    nop
    cp d
    nop
    stop
    add b
    nop
    reti


    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    ld de, $3300
    nop
    ld h, h
    nop
    ld bc, $0100
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], e
    nop
    ld a, d
    nop
    ld bc, $d900
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_007_4e1f

jr_007_4e1f:
    ld b, h
    nop
    ld hl, $6100
    nop
    ld b, c
    nop
    ld hl, $3300
    nop
    add d
    nop
    stop
    add b
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, d
    nop
    ld l, d
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld hl, $3300
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld h, h
    nop
    sub h
    nop
    jp c, Boot

    nop
    or c
    nop
    ld [hl], e
    nop
    add d
    nop
    ld l, d
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    sub h
    nop
    ld b, c
    nop
    ld sp, $5000
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_4eab

jr_007_4eab:
    sub h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $2400
    nop
    and b
    nop
    ld hl, $0100
    nop
    ld b, h
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    ld bc, $6000
    nop
    inc hl
    nop
    sub h
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    ld l, h
    nop
    nop
    inc h
    nop
    add e
    nop
    cp l
    nop
    ld d, b
    nop
    reti


    nop
    ld h, b
    nop
    ld bc, $8100
    nop
    ld h, b
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_4f0b

jr_007_4f0b:
    sub h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld d, b
    nop
    ld bc, $d900
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    ld [de], a
    nop
    sub h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    nop
    rlc b
    jp Jump_000_0700


    nop
    cp l
    nop
    ld [hl-], a
    nop
    ld [de], a
    nop
    sub e
    nop
    jr nc, jr_007_4f5f

jr_007_4f5f:
    inc b
    nop
    jr nz, jr_007_4f63

jr_007_4f63:
    inc de
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    db $d3
    ld l, h
    nop
    nop
    inc b
    nop
    inc [hl]
    nop
    inc d
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_007_4f85

jr_007_4f85:
    add b
    nop
    reti


    nop
    inc d
    nop
    add e
    nop
    and d
    nop
    add b
    nop
    ld bc, $5000
    nop
    rst $38
    nop
    rst $38
    nop
    stop
    sub h
    nop
    jr nc, jr_007_4f9f

jr_007_4f9f:
    sub h
    nop
    ld b, c
    nop
    ld b, h
    nop
    ld h, e
    nop
    add d
    nop
    ld [hl], e
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld hl, $9100
    nop
    ld [bc], a
    nop
    stop
    ld [de], a
    nop
    jr nz, jr_007_4fd1

jr_007_4fd1:
    ld bc, $4400
    nop
    reti


    nop
    inc b
    nop
    ld bc, $7300
    nop
    ld bc, $ba00
    nop
    inc de
    nop
    cp [hl]
    nop
    jr jr_007_4fe7

jr_007_4fe7:
    ld a, d
    nop
    ld d, $00
    ld [hl], h
    nop
    ld [hl], b
    nop
    ld de, $2200
    nop
    and c
    nop
    ld sp, $9000
    nop
    sub e
    nop
    jr nc, jr_007_4ffd

jr_007_4ffd:
    ld b, h
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff6c]
    nop
    nop
    nop
    nop
    ld h, b
    nop
    add c
    nop
    ld h, h
    nop
    ld b, h
    nop
    cp d
    nop
    inc de
    nop
    cp [hl]
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_502d

jr_007_502d:
    sub h
    nop
    jp c, RST_00

    nop
    ld b, b
    nop
    jr nc, jr_007_5037

jr_007_5037:
    ld b, c
    nop
    nop
    nop
    and e
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    jr nc, jr_007_505f

jr_007_505f:
    ld bc, $5300
    nop
    sub h
    nop
    ld l, d
    nop
    ld l, d
    nop
    jr nc, jr_007_506b

jr_007_506b:
    ld bc, $5300
    nop
    sub h
    nop
    ld l, d
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call nc, Call_007_7a00
    nop
    ld sp, $9000
    nop
    sub h
    nop
    and b
    nop
    ld b, c
    nop
    and e
    nop
    ld sp, $9000
    nop
    sub e
    nop
    jr nc, jr_007_5095

jr_007_5095:
    ld b, h
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0302
    ld b, b
    ld c, h
    nop
    inc de
    ld l, l
    nop
    nop
    inc b
    nop
    ld b, e
    nop
    and b
    nop
    ld bc, $6a00
    nop
    ld bc, $9300
    nop
    ld hl, $9200
    nop
    ld b, c
    nop
    jr nz, jr_007_50bf

jr_007_50bf:
    and b
    nop
    ld hl, $3300
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl-], a
    nop
    stop
    ld h, b
    nop
    inc bc
    nop
    add e
    nop
    call nz, $d900
    nop
    ld [hl+], a
    nop
    and d
    nop
    ld b, c
    nop
    ld hl, $8000
    nop
    inc hl
    nop
    inc sp
    nop
    ld b, e
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    ld [bc], a
    nop
    xor h
    nop
    inc b
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    cp l
    nop
    ld bc, $2400
    nop
    and b
    nop
    ld hl, $0100
    nop
    ld h, h
    nop
    ld b, h
    nop
    ld b, e
    nop
    and h
    nop
    ld h, e
    nop
    sub h
    nop
    ld b, b
    nop
    jr nz, jr_007_516b

jr_007_516b:
    ld bc, $da00
    nop
    or c
    nop
    sub b
    nop
    reti


    nop
    ld h, b
    nop
    jr nc, jr_007_5179

jr_007_5179:
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld l, l
    nop
    nop
    call nc, Call_007_7a00
    nop
    ld sp, $9000
    nop
    sub h
    nop
    reti


    nop
    and h
    nop
    ld h, e
    nop
    sub h
    nop
    ld b, e
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or c
    nop
    ld [hl], c
    nop
    ld [bc], a
    nop
    and b
    nop
    ld d, h
    nop
    ld hl, $1000
    nop
    sub e
    nop
    jr nc, jr_007_51bf

jr_007_51bf:
    ld b, h
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld l, l
    nop
    nop
    ld [bc], a
    nop
    sub h
    nop
    reti


    nop
    ld bc, $0100
    nop
    ld [hl], d
    nop
    jp c, Boot

    nop
    ld h, b
    nop
    ld h, b
    nop
    cp l
    nop
    ld bc, $8400
    nop
    ld bc, $8400
    nop
    inc [hl]
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    jp c, $a300

    nop
    sub h
    nop
    ld de, $bd00
    nop
    ld b, e
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld l, l
    nop
    nop
    ld [bc], a
    nop
    sub h
    nop
    ld l, e
    nop
    inc b
    nop
    ld sp, $1400
    nop
    sub h
    nop
    cp l
    nop
    ld b, b
    nop
    sub h
    nop
    stop
    ld bc, $4000
    nop
    ld bc, $7200
    nop
    jp c, $ba00

    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    add $00
    ld [hl], d
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld l, l
    nop
    nop
    sbc l
    nop
    sbc h
    nop
    ld d, b
    nop
    ld d, h
    nop
    sub h
    nop
    inc [hl]
    nop
    ld b, c
    nop
    reti


    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    or c
    nop
    sub b
    nop
    reti


    nop
    ld h, b
    nop
    jr nc, jr_007_529b

jr_007_529b:
    inc d
    nop
    sub h
    nop
    cp [hl]
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $1100

    nop
    ld b, h
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    jr nc, jr_007_52d1

jr_007_52d1:
    ld bc, $5200
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    reti


    nop
    rst $38
    nop
    ld [hl+], a
    nop
    and h
    nop
    stop
    sub e
    nop
    jr nc, jr_007_52e7

jr_007_52e7:
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc [hl]
    nop
    inc d
    nop
    add h
    nop
    cp l
    nop
    jr nz, jr_007_5313

jr_007_5313:
    reti


    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    ld b, c
    nop
    reti


    nop
    stop
    or b
    nop
    ld h, c
    nop
    cp [hl]
    nop
    add c
    nop
    and b
    nop
    reti


    nop
    inc d
    nop
    ld b, b
    nop
    stop
    sub e
    nop
    jr nc, jr_007_5341

jr_007_5341:
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld de, $4400
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    jr nc, jr_007_535f

jr_007_535f:
    ld bc, $5200
    nop
    ld [bc], a
    nop
    cp l
    nop
    jr nz, jr_007_5369

jr_007_5369:
    reti


    nop
    inc [hl]
    nop
    call nz, $2000
    nop
    add e
    nop
    jr nc, jr_007_5375

jr_007_5375:
    ld h, c
    nop
    jr nc, jr_007_5379

jr_007_5379:
    ld bc, $4000
    nop
    sub h
    nop
    cp d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0504
    ld b, b
    ld c, h
    nop
    add c
    ld l, l
    nop
    nop
    ld bc, $9300
    nop
    ld hl, $9200
    nop
    ld b, c
    nop
    jr nz, jr_007_53ad

jr_007_53ad:
    and b
    nop
    ld hl, $3300
    nop
    ld [hl], d
    nop
    reti


    nop
    ld b, e
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    reti


    nop
    dec h
    nop
    sbc c
    nop
    ld d, $00
    sub [hl]
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    nop
    stop
    add b
    nop
    reti


    nop
    ld [hl+], a
    nop
    ld de, $ba00
    nop
    ld [hl], d
    nop
    jp c, $f400

    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld b, b
    nop
    sub h
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld l, e
    nop
    nop
    nop
    sub h
    nop
    jr nc, jr_007_544b

jr_007_544b:
    ld b, b
    nop
    sub h
    nop
    stop
    ld b, c
    nop
    reti


    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_007_545b

jr_007_545b:
    ld b, h
    nop
    sub h
    nop
    cp d
    nop
    reti


    nop
    call Call_000_1700
    nop
    and b
    nop
    ret


    nop
    dec d
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_007_5473

jr_007_5473:
    ld [hl], d
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    sub e
    nop
    reti


    nop
    inc h
    nop
    add e
    nop
    ld l, d
    nop
    ld h, c
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    jr nc, jr_007_549f

jr_007_549f:
    ld b, h
    nop
    ld l, e
    nop
    rst $38
    nop
    jr nz, jr_007_54a7

jr_007_54a7:
    ld [hl+], a
    nop
    and b
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    cp d
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    or c
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    jr nz, jr_007_54d9

jr_007_54d9:
    reti


    nop
    stop
    nop
    nop
    jr nz, jr_007_54e1

jr_007_54e1:
    sub h
    nop
    ld b, h
    nop
    inc b
    nop
    ld h, h
    nop
    ld bc, $bd00
    nop
    ld b, h
    nop
    reti


    nop
    stop
    or b
    nop
    ld h, c
    nop
    cp [hl]
    nop
    add c
    nop
    ld b, b
    nop
    sub h
    nop
    cp d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld l, l
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    ld d, e
    nop
    xor h
    nop
    ld sp, $9200
    nop
    sub e
    nop
    inc [hl]
    nop
    ld h, l
    nop
    or [hl]
    nop
    ld b, c
    nop
    ld b, b
    nop
    sub e
    nop
    jr nc, jr_007_5539

jr_007_5539:
    ld [hl], d
    nop
    jp c, Jump_007_6100

    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    inc sp
    nop
    dec h
    nop
    sbc c
    nop
    ld d, $00
    sub [hl]
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    jr nc, jr_007_556d

jr_007_556d:
    add b
    nop
    ld hl, $0100
    nop
    inc b
    nop
    jr nz, jr_007_5577

jr_007_5577:
    inc de
    nop
    ld [hl], h
    nop
    reti


    nop
    ld [hl-], a
    nop
    ld [de], a
    nop
    sub e
    nop
    jr nc, jr_007_5585

jr_007_5585:
    ld b, h
    nop
    jp c, Jump_007_4400

    nop
    sub h
    nop
    cp l
    nop
    ld h, c
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    ld b, b
    nop
    ld bc, $1000
    nop
    ld hl, $8000
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld l, e
    nop
    db $db
    nop
    rlc b
    jp Jump_000_0700


    nop
    ld hl, $9100
    nop
    ld [hl], h
    nop
    call z, Call_007_7a00
    nop
    daa
    nop
    ld b, c
    nop
    ld hl, $3300
    nop
    adc b
    nop
    ld l, c
    nop
    sbc c
    nop
    inc [hl]
    nop
    ld d, l
    nop
    ld [hl], $00
    ld h, [hl]
    nop
    scf
    nop
    inc [hl]
    nop
    add [hl]
    nop
    sbc c
    nop
    xor c
    nop
    inc [hl]
    nop
    xor h
    nop
    xor h
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    rla
    nop
    add l
    nop
    sbc c
    nop
    call z, $8600
    nop
    ld a, d
    nop
    inc [hl]
    nop
    reti


    nop
    dec d
    nop
    ld h, $00
    daa
    nop
    inc [hl]
    nop
    ld bc, $3100
    nop
    cp e
    nop
    ld [de], a
    nop
    ld d, $00
    sub [hl]
    nop
    rlca
    nop
    ld b, $00
    inc [hl]
    nop
    add l
    nop
    ld b, $00
    ld h, a
    nop
    ld [hl], h
    nop
    ld bc, $8300
    nop
    inc sp
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0604
    ld b, b
    ld c, h
    nop
    jp c, Jump_000_006d

    nop
    ld a, [de]
    nop
    dec d
    nop
    adc h
    nop
    jr nc, jr_007_5655

jr_007_5655:
    sub e
    nop
    jr nc, jr_007_5659

jr_007_5659:
    ld h, h
    nop
    ld b, h
    nop
    ld [hl], d
    nop
    jp c, $0400

    nop
    ld bc, $2100
    nop
    ld bc, $6b00
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [bc], a
    nop
    ld d, d
    nop
    reti


    nop
    ld [hl], d
    nop
    stop
    sub e
    nop
    jr nc, jr_007_56a7

jr_007_56a7:
    ld [hl], e
    nop
    jp c, $3100

    nop
    sub d
    nop
    sub e
    nop
    inc [hl]
    nop
    cp d
    nop
    inc de
    nop
    reti


    nop
    ld hl, $9400
    nop
    adc $00
    ld bc, $ba00
    nop
    sub e
    nop
    jr nc, jr_007_56c7

jr_007_56c7:
    ld b, h
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    and d
    nop
    inc b
    nop
    ld h, c
    nop
    inc hl
    nop
    ld b, c
    nop
    reti


    nop
    ld b, b
    nop
    add b
    nop
    add $00
    ld d, b
    nop
    or d
    nop
    ld [hl], d
    nop
    jp c, Jump_000_3000

    nop
    ld b, h
    nop
    ld hl, $6100
    nop
    ld b, c
    nop
    ld hl, $3300
    nop
    ld b, e
    nop
    jp c, $0200

    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    add b
    nop
    reti


    nop
    inc h
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld l, e
    nop
    ld d, e
    nop
    sub h
    nop
    ld b, e
    nop
    db $e3
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    ld [hl], e
    nop
    jr nc, jr_007_5755

jr_007_5755:
    ld hl, $5000
    nop
    inc b
    nop
    ld bc, $2100
    nop
    stop
    sub e
    nop
    jr nc, jr_007_5765

jr_007_5765:
    ld [hl], e
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp l
    nop
    ld h, h
    nop
    reti


    nop
    jr nz, jr_007_5785

jr_007_5785:
    sub h
    nop
    inc d
    nop
    ld [bc], a
    nop
    ld b, c
    nop
    ld b, b
    nop
    sub e
    nop
    jr nc, jr_007_5793

jr_007_5793:
    ld [hl], e
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld [hl-], a
    nop
    and c
    nop
    ld b, c
    nop
    ld de, $3000
    nop
    ld bc, $2100
    nop
    inc sp
    nop
    ld b, e
    nop
    jp c, $0200

    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, b
    nop
    ld bc, $9300
    nop
    jr nc, jr_007_57d1

jr_007_57d1:
    or e
    nop
    ld l, d
    nop
    ld l, d
    nop
    cp l
    nop
    ld a, d
    nop
    or c
    nop
    ld b, b
    nop
    ld d, l
    nop
    sbc c
    nop
    ld h, l
    nop
    ld a, d
    nop
    ld [hl], h
    nop
    ld b, b
    nop
    ld [de], a
    nop
    ld hl, $3100
    nop
    ld h, b
    nop
    ld bc, $7000
    nop
    and b
    nop
    sub e
    nop
    inc sp
    nop
    sub h
    nop
    cp l
    nop
    ld bc, $da00
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0302
    ld b, b
    ld c, h
    nop
    db $ec
    ld l, l
    nop
    nop
    ld [hl], e
    nop
    add c
    nop
    pop hl
    nop
    inc de
    nop
    cp [hl]
    nop
    ld d, l
    nop
    sbc c
    nop
    ld h, l
    nop
    ld a, d
    nop
    stop
    ld hl, $3300
    nop
    ld [de], a
    nop
    add e
    nop
    ld [hl], b
    nop
    jp c, $ff00

    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl+], a
    nop
    ld h, b
    nop
    sub h
    nop
    ld b, b
    nop
    jp c, RST_00

    nop
    ld hl, $3000
    nop
    ld b, c
    nop
    ld d, b
    nop
    db $d3
    nop
    ld a, b
    nop
    ld a, d
    nop
    dec b
    nop
    sbc b
    nop
    push de
    nop
    ld hl, $3300
    nop
    stop
    inc bc
    nop
    ld [hl+], a
    nop
    stop
    add b
    nop
    ld [hl], d
    nop
    reti


    nop
    stop
    add c
    nop
    inc sp
    nop
    ld [de], a
    nop
    or e
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sub h
    nop
    cp d
    nop
    inc [hl]
    nop
    ld l, e
    nop
    inc b
    nop
    add e
    nop
    ld b, c
    nop
    ld d, b
    nop
    stop
    inc hl
    nop
    ld b, b
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld b, h
    nop
    stop
    inc de
    nop
    sub e
    nop
    reti


    nop
    ld hl, $1300
    nop
    jr nc, jr_007_58d9

jr_007_58d9:
    ld [hl], b
    nop
    ld [hl-], a
    nop
    cp d
    nop
    or e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    jr nc, jr_007_5901

jr_007_5901:
    ld bc, $5300
    nop
    sub h
    nop
    cp d
    nop
    ld b, e
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $ff00

    nop
    inc [hl]
    nop
    inc d
    nop
    add h
    nop
    cp l
    nop
    reti


    nop
    or [hl]
    nop
    sub a
    nop
    rlca
    nop
    adc c
    nop
    ld d, b
    nop
    ld h, h
    nop
    sub e
    nop
    inc sp
    nop
    add d
    nop
    ld l, e
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    or [hl]
    nop
    sub a
    nop
    rlca
    nop
    adc c
    nop
    ld [hl], h
    nop
    ld sp, $9200
    nop
    sub e
    nop
    inc [hl]
    nop
    stop
    ld bc, $b400
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    add d
    nop
    inc [hl]
    nop
    daa
    nop
    push de
    nop
    add [hl]
    nop
    sbc c
    nop
    rla
    nop
    add l
    nop
    ld a, d
    nop
    and b
    nop
    cp l
    nop
    ld de, $8200
    nop
    sub h
    nop
    cp d
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    dec de
    nop
    sbc h
    nop
    and h
    nop
    ld b, c
    nop
    ld d, b
    nop
    reti


    nop
    stop
    sub h
    nop
    inc hl
    nop
    ld bc, $2200
    nop
    add d
    nop
    stop
    add b
    nop
    or e
    nop
    ld a, d
    nop
    sub e
    nop
    jr nc, jr_007_59b9

jr_007_59b9:
    ld bc, $d900
    nop
    stop
    ld bc, $4100
    nop
    ld de, $3300
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    ld bc, $9300
    nop
    ld [hl+], a
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $1400

    nop
    ld b, h
    nop
    ld bc, $0300
    nop
    ld [hl], h
    nop
    reti


    nop
    or h
    nop
    ld [bc], a
    nop
    ld sp, $1200
    nop
    ld [hl+], a
    nop
    add d
    nop
    sub h
    nop
    cp d
    nop
    ld b, b
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor h
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld [hl], d
    nop
    ld b, b
    nop
    ldh [rP1], a
    xor h
    nop
    ld hl, $b000
    nop
    ld bc, $5000
    nop
    rst $30
    set 7, b
    set 7, c
    set 3, [hl]
    nop
    cp l
    nop
    sbc d
    nop
    ld d, b
    nop
    ld a, [$fbcb]
    set 7, h
    set 7, l
    sra [hl]
    nop
    ld d, c
    nop
    ld [hl-], a
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld b, b
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0503
    ld b, b
    ld c, h
    nop
    ld a, [de]
    ld l, [hl]
    nop
    nop
    or c
    nop
    jr nc, jr_007_5a79

jr_007_5a79:
    ld [de], a
    nop
    ld [hl], h
    nop
    or h
    nop
    ld [bc], a
    nop
    ld sp, $1200
    nop
    ld hl, $7200
    nop
    ld [bc], a
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    sub e
    nop
    ld hl, $9000
    nop
    ld l, d
    nop
    ld l, d
    nop
    sbc [hl]
    nop
    sbc h
    nop
    stop
    add b
    nop
    dec c
    nop
    sbc h
    nop
    stop
    sub h
    nop
    cp l
    nop
    reti


    nop
    add c
    nop
    sub e
    nop
    adc $00
    ld b, b
    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    reti


    nop
    ld hl, $3300
    nop
    ld h, c
    nop
    inc hl
    nop
    add d
    nop
    or h
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    ld bc, $0400
    nop
    ld bc, $d900
    nop
    jr nc, jr_007_5b19

jr_007_5b19:
    add b
    nop
    ld b, e
    nop
    db $e3
    nop
    or h
    nop
    jp c, $ac00

    nop
    inc d
    nop
    add e
    nop
    cp l
    nop
    ld d, b
    nop
    or h
    nop
    ld [bc], a
    nop
    ld sp, $1200
    nop
    ld d, b
    nop
    ld h, a
    nop
    add [hl]
    nop
    cp d
    nop
    or h
    nop
    jp c, $9400

    nop
    or c
    nop
    sub b
    nop
    nop
    nop
    ld b, b
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    db $e4
    nop
    reti


    nop
    inc h
    nop
    ld [bc], a
    nop
    stop
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc h
    nop
    add e
    nop
    or c
    nop
    sub b
    nop
    reti


    nop
    ld [hl], e
    nop
    ld hl, $5000
    nop
    stop
    inc bc
    nop
    add d
    nop
    or h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_5baf

jr_007_5baf:
    sub h
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, [hl]
    nop
    ld a, d
    nop
    ld b, l
    nop
    ld [hl], h
    nop
    ld h, c
    nop
    stop
    inc de
    nop
    ld h, b
    nop
    inc hl
    nop
    sub h
    nop
    cp l
    nop
    ld hl, $3000
    nop
    stop
    ld l, e
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    or c
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    ld de, $4400
    nop
    ld [bc], a
    nop
    stop
    add b
    nop
    reti


    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    ld h, h
    nop
    cp [hl]
    nop
    sub e
    nop
    inc sp
    nop
    ld b, b
    nop
    ld bc, $7200
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld b, h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc b
    nop
    ld bc, $2400
    nop
    and b
    nop
    ld hl, $0100
    nop
    ld b, h
    nop
    ld b, c
    nop
    rst $38
    nop
    ld [hl+], a
    nop
    ld h, c
    nop
    ld h, b
    nop
    inc hl
    nop
    sub h
    nop
    and b
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_5c67

jr_007_5c67:
    sub h
    nop
    ld h, h
    nop
    ld bc, $9300
    nop
    ld hl, $9200
    nop
    ld b, c
    nop
    reti


    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0604
    ld b, b
    ld c, h
    nop
    ret c

    ld l, [hl]
    nop
    nop
    ld b, [hl]
    nop
    ld a, d
    nop
    ld b, l
    nop
    ld [hl], h
    nop
    jr nz, jr_007_5c93

jr_007_5c93:
    and b
    nop
    ld hl, $3300
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_5c9f

jr_007_5c9f:
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], e
    nop
    jr nc, jr_007_5cd9

jr_007_5cd9:
    ld hl, $5000
    nop
    reti


    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    inc h
    nop
    inc [hl]
    nop
    and b
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    jr nz, jr_007_5cf7

jr_007_5cf7:
    and b
    nop
    ld hl, $3300
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_5d2b

jr_007_5d2b:
    sub h
    nop
    ld d, b
    nop
    reti


    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    cp [hl]
    nop
    ld [hl], h
    nop
    jr nz, jr_007_5d43

jr_007_5d43:
    and b
    nop
    ld hl, $3300
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_5d4f

jr_007_5d4f:
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_5d77

jr_007_5d77:
    sub h
    nop
    ld d, b
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    and b
    nop
    cp d
    nop
    ld bc, $b100
    nop
    ld b, b
    nop
    ld b, h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    stop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], e
    nop
    stop
    add c
    nop
    ld h, b
    nop
    ld hl, $3000
    nop
    ld [hl], e
    nop
    xor h
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_007_5dcf

jr_007_5dcf:
    and b
    nop
    inc h
    nop
    sub h
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld [hl-], a
    nop
    ld h, e
    nop
    jr nc, jr_007_5ddf

jr_007_5ddf:
    ld bc, $9f00
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_007_5de9

jr_007_5de9:
    ld b, b
    nop
    sub h
    nop
    inc sp
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc hl
    nop
    ld bc, $b300
    nop
    ld bc, $d900
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    inc b
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    and b
    nop
    sub h
    nop
    call nz, $9300
    nop
    inc sp
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_5e35

jr_007_5e35:
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_5e5b

jr_007_5e5b:
    sub h
    nop
    jp c, Jump_007_7300

    nop
    jr nc, jr_007_5e63

jr_007_5e63:
    ld hl, $7400
    nop
    ld hl, $c400
    nop
    add b
    nop
    ld [de], a
    nop
    ld b, h
    nop
    nop
    nop
    ld bc, $ba00
    nop
    cp l
    nop
    ld bc, $0100
    nop
    cp l
    nop
    ld [hl+], a
    nop
    stop
    add b
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0302
    ld b, b
    ld c, h
    nop
    jp hl


    ld l, [hl]
    nop
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, c
    nop
    ld bc, $2000
    nop
    inc hl
    nop
    inc sp
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_5eb7

jr_007_5eb7:
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    and h
    nop
    or b
    nop
    ld bc, $6000
    nop
    ld [hl+], a
    nop
    jp c, $2100

    nop
    call nz, $8000
    nop
    ld [de], a
    nop
    reti


    nop
    and h
    nop
    ld [hl], b
    nop
    sub e
    nop
    stop
    ld bc, $4100
    nop
    ld b, b
    nop
    add c
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    ld [bc], a
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, Jump_007_6200

    nop
    add c
    nop
    ld b, b
    nop
    inc d
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    ld hl, $7300
    nop
    inc de
    nop
    nop
    nop
    add c
    nop
    ld h, b
    nop
    inc hl
    nop
    sub h
    nop
    cp l
    nop
    ld hl, $3000
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    inc b
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    ld d, b
    nop
    reti


    nop
    jr nc, jr_007_5f9b

jr_007_5f9b:
    ld bc, $5300
    nop
    sub h
    nop
    ld b, b
    nop
    ld b, h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    jp c, $a400

    nop
    ld [de], a
    nop
    add h
    nop
    ld [bc], a
    nop
    jr nz, jr_007_5fb7

jr_007_5fb7:
    ld h, b
    nop
    cp l
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld h, l
    nop
    add [hl]
    nop
    dec b
    nop
    reti


    nop
    ld [hl], e
    nop
    jr nc, jr_007_5fd9

jr_007_5fd9:
    ld hl, $a000
    nop
    ld [hl], e
    nop
    add d
    nop
    stop
    sub e
    nop
    jr nc, jr_007_5fe7

jr_007_5fe7:
    jp c, $ff00

    nop
    rst $38
    nop
    stop
    inc bc
    nop
    sub e
    nop
    inc sp
    nop
    ld de, $4000
    nop
    jr nz, jr_007_5ffb

jr_007_5ffb:
    ld bc, $da00
    nop
    rst $38

Call_007_6000:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld bc, $7000
    nop
    cp l
    nop
    ld [hl+], a
    nop
    jp c, Jump_007_7300

    nop
    jr nc, jr_007_6027

jr_007_6027:
    ld hl, $5000
    nop
    ld h, b
    nop
    cp d
    nop
    reti


    nop
    inc de
    nop
    sub e
    nop
    inc d
    nop
    sub h
    nop
    ld b, b
    nop
    sub h
    nop
    inc sp
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    and c
    nop
    add d
    nop
    inc [hl]
    nop
    inc b
    nop
    ld h, h
    nop
    ld bc, $6000
    nop
    ld [hl+], a
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld b, b
    nop
    or e
    nop
    cp d
    nop
    jp c, RST_00

    nop
    sub h
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld bc, $0100
    nop
    inc b
    nop
    inc [hl]
    nop
    inc d
    nop
    ld d, b
    nop
    reti


    nop
    rst $38
    nop
    ld d, h
    nop
    stop
    ld b, c
    nop
    ld d, b
    nop
    rst $38
    nop
    ld bc, $4000
    nop
    ld bc, $5000
    nop
    or d
    nop
    cp d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], e
    nop
    jr nc, jr_007_60b5

jr_007_60b5:
    ld hl, $5000
    nop
    xor h
    nop
    xor h
    nop
    inc b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    jr nz, jr_007_60c5

jr_007_60c5:
    ld h, b
    nop
    ld b, h
    nop
    inc h
    nop
    sub h
    nop
    ld b, b
    nop
    reti


    nop
    stop
    sub h
    nop
    and b
    nop
    inc bc
    nop
    and b
    nop
    ld bc, $7000
    nop
    ld b, b
    nop
    ld b, h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld l, a
    nop
    nop
    ld h, l
    nop
    add [hl]

Jump_007_6100:
    nop
    dec b
    nop
    xor h
    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    stop
    inc bc
    nop
    sub e
    nop
    inc sp
    nop
    ld de, $4000
    nop
    jr nz, jr_007_6119

jr_007_6119:
    ld bc, $da00
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld hl, $5000
    nop
    reti


    nop
    inc h
    nop
    add e
    nop
    stop
    add b
    nop
    cp d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_6153

jr_007_6153:
    sub h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    nop
    jr nc, jr_007_616d

jr_007_616d:
    ld hl, $d900
    nop
    ld bc, $0300
    nop
    ld b, c
    nop
    stop
    inc bc
    nop
    add c
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld l, a
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ld bc, $0000
    nop
    ld bc, $ba00
    nop
    rst $38
    nop
    inc b
    nop
    or c
    nop
    sub b
    nop
    ld h, b
    nop
    ld hl, $6000
    nop
    ld hl, $3000
    nop
    jp c, $be00

    nop
    ld [bc], a
    nop
    ld h, h
    nop
    reti


    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    and h
    nop
    or b
    nop
    ld bc, $6000
    nop
    ld hl, $3000
    nop
    jp c, $fe00

    cp $00
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld b, e
    nop
    reti


    nop
    inc b
    nop
    call nz, RST_00
    nop
    ld sp, $9000
    nop
    sub h
    nop
    and b
    nop
    reti


    nop
    jr nc, jr_007_61fb

jr_007_61fb:
    ld h, b
    nop
    and h
    nop
    ld [hl], h

Jump_007_6200:
    nop
    stop
    sub e
    nop
    inc sp
    nop
    inc d
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld bc, $9300
    nop
    jr nc, jr_007_6215

jr_007_6215:
    ld b, h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0200
    ld b, b
    ld c, h
    nop
    and [hl]
    ld l, a
    nop
    nop
    cp d
    nop
    stop
    add b
    nop
    reti


    nop
    jr nc, jr_007_6237

jr_007_6237:
    ld h, b
    nop
    and h
    nop
    ld [hl], h
    nop
    ld [bc], a
    nop
    sub e
    nop
    inc sp
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_007_6249

jr_007_6249:
    ld bc, $da00
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, d
    nop
    jp c, $1400

    nop
    ld h, b
    nop
    sub e
    nop
    jr nc, jr_007_6289

jr_007_6289:
    ld b, b
    nop
    nop
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    call nz, RST_00
    nop
    ld sp, $9000
    nop
    sub h
    nop
    ld b, c
    nop
    inc b
    nop
    inc d
    nop
    add b
    nop
    add e
    nop
    add d
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld l, a
    nop
    nop
    ld d, b
    nop
    ld bc, $d900
    nop
    jr nc, jr_007_62cd

jr_007_62cd:
    ld h, b
    nop
    and h
    nop
    cp d
    nop
    ld bc, $1b00
    nop
    rrca
    nop
    ld l, $00
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    jp c, $b100

    nop
    sub b
    nop
    nop
    nop
    ld b, e
    nop
    reti


    nop
    call nz, Boot
    nop
    call nz, Boot
    nop
    jp c, $fe00

    cp $00
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld b, e
    nop
    reti


    nop
    dec [hl]
    nop
    ld h, l
    nop
    xor c
    nop
    ld b, c
    nop
    ld d, b
    nop
    add b
    nop
    sub e
    nop
    jr nc, jr_007_6329

jr_007_6329:
    inc b
    nop
    sbc d
    nop
    and b
    nop
    ld b, e
    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld hl, $d900
    nop
    inc b
    nop
    inc b
    nop
    stop
    sub e
    nop
    jr nc, jr_007_6343

jr_007_6343:
    ld h, c
    nop
    jr nc, jr_007_6347

jr_007_6347:
    ld bc, $4000
    nop
    ld b, h
    nop
    jp c, $ae00

    nop
    cp $fe
    ld bc, $0302
    ld b, b
    ld c, h
    nop
    ld b, $70
    nop
    nop
    cp d
    nop
    stop
    add b
    nop
    reti


    nop
    inc b
    nop
    ld [hl-], a
    nop
    add c
    nop
    ld sp, $9200
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    ld d, e
    nop
    jp c, RST_00

    nop
    add c
    nop
    and b
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    ld l, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or c
    nop
    sub b
    nop
    nop
    nop
    ld b, e
    nop
    jp c, $c400

    nop
    ld bc, $c400
    nop
    ld a, d
    nop
    ld bc, $da00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, d
    nop
    jp c, $1400

    nop
    ld h, b

Jump_007_6400:
    nop
    sub e
    nop
    jr nc, jr_007_6405

jr_007_6405:
    ld b, b
    nop
    nop
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    call nz, RST_00
    nop
    ld sp, $9000
    nop
    sub h
    nop
    ld b, c
    nop
    inc b
    nop
    inc d
    nop
    add b
    nop
    add e
    nop
    add d
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    nop
    nop
    ld [hl-], a
    nop
    ld bc, $7200
    nop
    ld b, e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $70
    nop
    nop
    ld sp, $9200
    nop
    sub e
    nop
    inc [hl]
    nop
    rst $38
    nop
    ld [hl+], a
    nop
    or d
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld de, $3000
    nop
    sub h
    nop
    cp d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    ld h, h
    nop
    ld bc, $1400
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    sub h
    nop
    call nz, $9400
    nop
    ld d, b
    nop
    jp c, $8c00

    nop
    ld b, h
    nop
    ld d, c
    nop
    stop
    add c
    nop
    and b
    nop
    reti


    nop
    inc [hl]
    nop
    inc sp
    nop
    ld h, h
    nop
    ld de, $8300
    nop
    ld bc, $bd00
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $70
    nop
    nop
    ld h, c
    nop
    sub h
    nop
    ld b, b
    nop
    nop
    nop
    ld [hl-], a
    nop
    ld h, b
    nop
    sub e
    nop
    inc sp
    nop
    ld bc, $6000
    nop
    ld [hl+], a
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld [de], a
    nop
    ld bc, $1100
    nop
    ld h, b
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], d
    nop
    db $e4
    nop
    ld l, d
    nop
    stop
    sub h
    nop
    inc hl
    nop
    ld bc, $ba00
    nop
    or e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    cp h
    nop
    inc de
    nop
    inc sp
    nop
    jp nz, $8500

    nop
    sbc b
    nop
    rla
    nop
    daa
    nop
    adc a
    nop
    ld b, h
    nop
    ld bc, $0300
    nop
    cp d
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    add e
    nop
    inc [hl]
    nop
    daa
    nop
    ld a, d
    nop
    db $d3
    nop
    ld a, d
    nop
    ld d, l
    nop
    sbc c
    nop
    ld h, l
    nop
    ld a, d
    nop
    ld [hl], h
    nop
    ld [hl], b
    nop
    add h
    nop
    ld [bc], a
    nop
    jp c, $bd00

    nop
    sub e
    nop
    inc de
    nop
    ld a, d
    nop
    ld bc, $2100
    nop
    cp l
    nop
    ld h, h
    nop
    dec bc
    nop
    xor b
    nop
    ld d, $00
    cp d
    nop
    or h
    nop
    jp c, $ff00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    add e
    nop
    or c
    nop
    sub b
    nop
    nop
    nop
    reti


    nop
    ld [hl], e
    nop
    ld hl, $5000
    nop
    stop
    inc bc
    nop
    add d
    nop
    or h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld b, b
    nop
    ld b, c
    nop
    stop
    nop
    nop
    add e
    nop
    call nz, Call_007_6000
    nop
    jr nc, jr_007_6639

jr_007_6639:
    ld bc, $3200
    nop
    cp l
    nop
    ld h, h
    nop
    inc d
    nop
    ld bc, $7200
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp l
    nop
    ld de, $3000
    nop
    or e
    nop
    jp c, $1400

    nop
    add e
    nop
    or h
    nop
    ld de, $9100
    nop
    ld [bc], a
    nop
    ld de, $9200
    nop
    ld [de], a
    nop
    ld b, h
    nop
    reti


    nop
    rlca
    nop
    add a
    nop
    add hl, sp
    nop
    add l
    nop
    jp nz, $8500

    nop
    sbc b
    nop
    rla
    nop
    daa
    nop
    adc a
    nop
    ld b, h
    nop
    ld bc, $0300
    nop
    cp d
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc h
    nop
    add e
    nop
    or c
    nop
    sub b
    nop
    nop
    nop
    reti


    nop
    ld [hl], e
    nop
    ld hl, $5000
    nop
    stop
    inc bc
    nop
    add d
    nop
    or h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld b, b
    nop
    ld b, c
    nop
    stop
    nop
    nop
    add e
    nop
    call nz, Call_007_6000
    nop
    jr nc, jr_007_66d1

jr_007_66d1:
    ld bc, $3200
    nop
    cp l
    nop
    ld h, h
    nop
    inc d
    nop
    ld bc, $7200
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    inc de
    nop
    ld h, b
    nop
    ld hl, $3300
    nop
    inc b
    nop
    ld h, e
    nop
    cp l
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    and h
    nop
    or b
    nop
    ld bc, $6000
    nop
    ld [hl+], a
    nop
    jp c, $f400

    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jr nz, jr_007_6717

jr_007_6717:
    sub h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld d, h
    nop
    sub h
    nop
    ld b, e
    nop
    sub h
    nop
    ld h, h
    nop
    reti


    nop
    jr nz, jr_007_6747

jr_007_6747:
    ld [de], a
    nop
    ld b, e
    nop
    sub h
    nop
    inc [hl]
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    reti


    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    or h
    nop
    ld [hl], d
    nop
    add h
    nop
    ld hl, $1200
    nop
    reti


    nop
    inc b
    nop
    ld b, e
    nop
    and b
    nop
    ld bc, $2100
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    rst $38
    ld bc, $0401
    ld b, b
    ld c, h
    nop
    scf
    ld [hl], b
    nop
    nop
    add hl, de
    nop
    adc c
    nop
    call $9800
    nop
    rla
    nop
    add a
    nop
    ld b, c
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld h, h
    nop
    add b
    nop
    ld [bc], a
    nop
    ld l, e
    nop
    rst $38
    nop
    ld d, b
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    ld [hl], b
    nop
    nop
    ld h, b
    nop
    cp d
    nop
    cp a
    nop
    ld l, b
    nop
    cp d
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, $3100

    nop
    inc sp
    nop
    ld bc, $4100
    nop
    inc b
    nop
    add c
    nop
    inc sp
    nop
    reti


    nop
    call Call_000_1700
    nop
    jr nc, jr_007_67f7

jr_007_67f7:
    ld sp, $4100
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld hl, $1000
    nop
    inc de
    nop
    inc sp
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    ld a, d
    nop
    jp c, $ff00

    nop
    cp $fe
    ld bc, $0303
    ld b, b
    ld c, h
    nop
    jp nz, Jump_000_0070

    nop
    dec bc
    nop
    sbc h
    nop
    ld b, h
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    jr nz, jr_007_6829

jr_007_6829:
    ld d, b
    nop
    reti


    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    add d
    nop
    ld b, h
    nop
    ld a, d
    nop
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], c
    nop
    sub e
    nop
    ld [de], a
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld bc, $fe00
    cp $00
    nop
    nop
    nop
    nop
    nop
    and h
    ld [hl], b
    nop
    nop
    ld c, d
    nop
    inc a
    nop
    and l
    nop
    sbc c
    nop
    ret


    nop
    add a
    nop
    ld a, d
    nop
    ld l, d
    nop
    cp l
    nop
    ld h, h
    nop
    inc c
    nop
    ld c, $00
    or c
    nop
    stop
    sub h
    nop
    cp l
    nop
    dec bc
    nop
    db $eb
    nop
    ld hl, $1000
    nop
    reti


    nop
    inc b
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    ld bc, $bd00
    nop
    ld de, $4000
    nop
    ld bc, $7200
    nop
    ld l, d
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    ld [hl], b
    nop
    nop
    ld [hl], e
    nop
    stop
    sub e
    nop
    jr nc, jr_007_68bd

jr_007_68bd:
    ld b, b
    nop
    ld b, h
    nop
    ld a, d
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    ld bc, $bd00
    nop
    ld de, $4000
    nop
    ld [de], a
    nop
    inc sp
    nop
    or l
    nop
    sbc c
    nop
    ld c, b
    nop
    sbc c
    nop
    ld l, d
    nop
    ld l, d
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    inc d
    nop
    and b
    nop
    jr nz, jr_007_6909

jr_007_6909:
    ld [de], a
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld [hl], h
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    ld [hl+], a
    nop
    add d
    nop
    reti


    nop
    rst $38
    nop
    ld l, l
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    call nz, $1400
    nop
    ld l, [hl]
    nop
    or c
    nop
    sub b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    sbc a
    nop
    add e
    nop
    jr nc, jr_007_6953

jr_007_6953:
    jr nz, jr_007_6955

jr_007_6955:
    ld [de], a
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    ld c, e
    nop
    ld a, $00
    rrca
    nop
    or c
    nop
    ld b, c
    nop
    ld b, b
    nop
    add d
    nop
    inc [hl]
    nop
    and c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld hl, $9000
    nop
    and b
    nop
    inc [hl]
    nop
    add c
    nop
    ld b, c
    nop
    ld [de], a
    nop
    add d
    nop
    or h
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    inc c
    nop
    ld d, h
    nop
    sub h
    nop
    ld b, h
    nop
    inc [hl]
    nop
    ld [bc], a
    nop
    and b
    nop
    ld l, l
    nop
    dec h
    nop
    ld b, $00
    adc c
    nop
    ld l, [hl]
    nop
    cp l
    nop
    reti


    nop
    ret z

    nop
    ld [de], a
    nop
    inc h
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    jr nc, jr_007_69c5

jr_007_69c5:
    ld h, e
    nop
    add d
    nop
    call nz, $2100
    nop
    sub d
    nop
    or c
    nop
    sub b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    dec h
    nop
    ld b, $00
    adc c
    nop
    ld b, h
    nop
    ld h, c
    nop
    and c
    nop
    and b
    nop
    ld l, l
    nop
    ld b, [hl]
    nop
    ld a, b
    nop
    add hl, sp
    nop
    add [hl]
    nop
    and h
    nop
    ld [hl], b
    nop
    ld l, [hl]
    nop
    cp l
    nop
    ld d, c
    nop
    cp d
    nop
    add c
    nop
    and b
    nop
    ld l, l
    nop
    ld [bc], a
    nop
    ld hl, $a400
    nop
    ld [hl], b
    nop
    ld l, [hl]
    nop
    or c
    nop
    sub b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    inc d
    nop
    ld d, b
    nop
    reti


    nop
    dec b
    nop
    ld b, $00
    jr c, jr_007_6a3f

jr_007_6a3f:
    ld h, a
    nop
    ld [hl], h
    nop
    ld d, h
    nop
    stop
    sub h
    nop
    ld hl, $3300
    nop
    inc b
    nop
    ld [de], a
    nop
    ld l, l
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    ld l, [hl]
    nop
    or c
    nop
    sub b
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    and d
    nop
    ld b, h
    nop
    ld [de], a
    nop
    ld [hl], e
    nop
    ld hl, $0100
    nop
    ld [hl-], a
    nop
    stop
    ld bc, $1000
    nop
    jr nc, jr_007_6a97

jr_007_6a97:
    ld [hl], b
    nop
    reti


    nop
    rst $38
    nop
    add [hl]
    nop
    daa
    nop
    add hl, sp
    nop
    ld b, b
    nop
    cp [hl]
    nop
    or c
    nop
    sub b
    nop
    and b
    nop
    xor h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    ld [hl], e
    nop
    ld hl, $9000
    nop
    reti


    nop
    ld sp, $7a00
    nop
    inc [hl]
    nop
    call nz, Call_000_1000
    nop
    ld hl, $3200
    nop
    stop
    add e
    nop
    jr nc, jr_007_6ae5

jr_007_6ae5:
    jp c, $ff00

    nop
    ld [hl+], a
    nop
    ld h, b
    nop
    sub h
    nop
    and b
    nop
    inc h
    nop
    ld b, h
    nop
    ld l, b
    nop
    ld l, c
    nop
    ld [hl], h
    nop
    ld h, c
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    ld d, b
    nop
    ld sp, $0200
    nop
    inc bc
    nop
    ld b, c
    nop
    jr nz, jr_007_6b25

jr_007_6b25:
    ld [hl], e
    nop
    add d
    nop
    rst $00
    nop
    stop
    add b
    nop
    or d
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor h
    nop
    xor h
    nop
    inc b
    nop
    or c
    nop
    ld bc, $2000
    nop
    sub h
    nop
    ld b, h
    nop
    reti


    nop
    ld d, b
    nop
    ld sp, $0200
    nop
    inc bc
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld l, e
    nop
    nop
    nop
    nop
    add e
    nop
    add e
    nop
    ld l, e
    nop
    ld d, b
    nop
    ld b, b
    nop
    and b
    nop
    jr nz, jr_007_6b71

jr_007_6b71:
    ld bc, $3300
    nop
    ld bc, $8200
    nop
    ld [hl], d
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld bc, $3200
    nop
    jr nz, jr_007_6b87

jr_007_6b87:
    ld bc, $3000
    nop
    ld b, h
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    ld d, d
    nop
    ld hl, $a100
    nop
    cp d
    nop
    ld b, b
    nop
    ldh [rP1], a
    jp c, $ff00

    rst $38
    ret


    ld a, [$cb72]
    or a
    ret nz

    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [$c912], a
    call Call_000_0f81
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6c20

    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $50
    ld [$cb73], a
    ld [$c912], a
    call Call_000_0f81
    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, [$b899]
    and $01
    ret z

    ld a, $03
    ld [$b899], a
    ret


jr_007_6c20:
    call Call_000_3e54
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6c55

    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $18
    ld [$c911], a
    ld a, $01
    ld [$c90f], a
    call Call_000_0f81
    ret


jr_007_6c55:
    call Call_000_3e54
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6c8a

    ld a, $01
    ld [$c911], a
    ld a, $02
    ld [$c90f], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


jr_007_6c8a:
    call Call_000_3e54
    ret


    call Call_000_3e54
    ret


    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6c9f

    ld a, $01
    ld [$b893], a
    ret


jr_007_6c9f:
    xor a
    ld [$b893], a
    ret


    xor a
    ld [$b893], a
    ld a, $0a
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


    ld a, $e6
    ld [$c912], a
    ld a, $ff
    ld [$cb8d], a
    ld a, $8e
    call Call_000_152f
    call Call_000_3e54
    ld a, $01
    ld [$cbf6], a
    ld b, $1e
    call $1ae8
    ret


    ld a, $60
    ld [$c912], a
    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call Call_000_152f
    call Call_000_3e54
    ld a, $01
    ld [$cbf6], a
    ld a, [$b8ee]
    srl a
    srl a
    ld b, a
    call $1ae8
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6d46

    ld a, $01
    ld [$b890], a
    ld a, $1d
    call Call_000_15f6
    ld a, $89
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $25
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $03
    ld [$c770], a
    xor a
    ld [$c76c], a
    ld a, $0a
    call Call_000_0fb9
    ret


jr_007_6d46:
    xor a
    ld [$b890], a
    ret


    ret


    ld a, $01
    ld [$c76c], a
    ld a, $ff
    ld [$c912], a
    ret


    ld a, $04
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    call Call_000_3e54
    ret


    xor a
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_153c
    call Call_000_3e54
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6db9

    ld a, $01
    ld [$b891], a
    ld a, $22
    call Call_000_15f6
    ld a, $88
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $bc
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $04
    ld [$c770], a
    xor a
    ld [$c76c], a
    ld a, $d6
    ld [$ae30], a
    ld a, $81
    ld [$ae31], a
    ret


jr_007_6db9:
    xor a
    ld [$b891], a
    ret


    xor a
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_153c
    call Call_000_3e54
    ld a, $64
    ld [$c912], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6de6

    ld a, $0a
    call Call_000_0fb9
    ret


jr_007_6de6:
    ld a, $f6
    call Call_000_0fb9
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6e0a

    ld a, $01
    ld [$b897], a
    ld a, [$b8a5]
    or a
    jr nz, jr_007_6e0f

    ld a, [$b8f8]
    cp $0d
    jr z, jr_007_6e14

    ld a, $ff
    ld [$b8f9], a
    ret


jr_007_6e0a:
    xor a
    ld [$b897], a
    ret


jr_007_6e0f:
    xor a
    ld [$b8a5], a
    ret


jr_007_6e14:
    ld a, $ff
    ld [$b8f8], a
    ret


    ld a, [$cb72]
    or a
    jp nz, Jump_007_6ed3

    ld a, [$b911]
    cp $00
    jr z, jr_007_6e57

    ld a, [$b939]
    cp $02
    jr nc, jr_007_6e3c

    cp $00
    jr z, jr_007_6e81

    ld a, [$b938]
    cp $2c
    jr nc, jr_007_6e3c

    jr jr_007_6e81

jr_007_6e3c:
    ld a, [$b8f1]
    cp $00
    jr nz, jr_007_6e95

    ld a, [$b8f0]
    cp $14
    jr nc, jr_007_6e95

    cp $13
    jr c, jr_007_6e81

    ld a, [$b8ef]
    cp $88
    jr nc, jr_007_6e95

    jr jr_007_6e81

jr_007_6e57:
    ld a, [$b939]
    or a
    jr nz, jr_007_6e66

    ld a, [$b938]
    cp $64
    jr nc, jr_007_6e66

    jr jr_007_6e81

jr_007_6e66:
    ld a, [$b8f1]
    cp $00
    jr nz, jr_007_6e95

    ld a, [$b8f0]
    cp $0a
    jr nc, jr_007_6e95

    cp $09
    jr c, jr_007_6e81

    ld a, [$b8ef]
    cp $c4
    jr nc, jr_007_6e95

    jr jr_007_6e81

jr_007_6e81:
    call Call_000_393d
    ld hl, $cb53
    ld bc, $0026
    call Call_000_0a27
    xor a
    ld [$cb55], a
    ld [$b8fe], a
    ret


jr_007_6e95:
    ld a, $02
    ld [$b8fe], a
    ld a, [$b911]
    cp $00
    jr z, jr_007_6eba

    ld hl, $b938
    ld bc, $fed4
    call Call_000_0a27
    ld hl, $b8ef
    ld bc, $ec78
    call Call_000_0a14
    call Call_000_0fe5
    call Call_000_10a0
    ret


jr_007_6eba:
    ld hl, $b938
    ld bc, $ff9c
    call Call_000_0a27
    ld hl, $b8ef
    ld bc, $f63c
    call Call_000_0a14
    call Call_000_0fe5
    call Call_000_10a0
    ret


Jump_007_6ed3:
    xor a
    ld [$b8fe], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6ee4

    ld a, $01
    ld [$b899], a
    ret


jr_007_6ee4:
    xor a
    ld [$b899], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6efa

    ld a, $01
    ld [$b89a], a
    ld a, $0a
    call Call_000_0fb9
    ret


jr_007_6efa:
    xor a
    ld [$b89a], a
    ld a, $f6
    call Call_000_0fb9
    ret


    call Call_000_3e54
    ld a, [$b911]
    cp $00
    jr z, jr_007_6f18

    cp $01
    jr z, jr_007_6f1e

    ld a, $72
    ld [$c831], a
    ret


jr_007_6f18:
    ld a, $5a
    ld [$c831], a
    ret


jr_007_6f1e:
    ld a, $83
    ld [$c831], a
    ret


    xor a
    ld [$b89a], a
    ld a, [$b911]
    cp $00
    jr z, jr_007_6f55

    cp $01
    jr z, jr_007_6f84

    xor a
    ld [$d8d8], a
    ld [$d8b6], a
    ld [$d8d9], a
    ld [$d8b7], a
    call Call_000_3e54
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ret


jr_007_6f55:
    xor a
    ld [$d8d8], a
    ld [$d8b6], a
    ld [$d8d9], a
    ld [$d8b7], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_153c
    call Call_000_3e54
    ld a, $10
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ld a, $ff
    ld [$c80c], a
    ret


jr_007_6f84:
    xor a
    ld [$d8d6], a
    ld [$d8b4], a
    ld [$d8d7], a
    ld [$d8b5], a
    call Call_000_3e54
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_6ff4

    ld a, $01
    ld [$b88e], a
    ld hl, $b8ef
    ld bc, $004b
    call Call_000_0a14
    call Call_000_10a0
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, $04
    ld [$c810], a
    xor a
    ld [$c80c], a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $02
    ld [$c912], a
    ret


jr_007_6ff4:
    xor a
    ld [$b88e], a
    ret


    call Call_000_3e54
    xor a
    ld [$c813], a
    ld a, $01
    ld [$cbf6], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_7024

    ld a, $01
    xor a
    ld [$b88e], a
    ld hl, $b8ef
    ld bc, $fffb
    call Call_000_0a14
    call Call_000_10a0
    ld a, $14
    call Call_000_0fb9
    ret


jr_007_7024:
    xor a
    ld [$b88e], a
    ld a, $ec
    call Call_000_0fb9
    ret


    call Call_000_3e54
    ld a, $02
    ld [$c813], a
    ret


    xor a
    ld [$cb5f], a
    ld a, [$cb72]
    or a
    jp nz, Jump_007_705b

    ld a, [$b909]
    or a
    jr z, jr_007_7090

    call Call_000_393d
    ld hl, $cb53
    ld bc, $0026
    call Call_000_0a27
    xor a
    ld [$cb55], a
    jr jr_007_7098

    ret


Jump_007_705b:
    xor a
    ld [$b90a], a
    call Call_000_1029
    ld a, [$b909]
    or a
    jr nz, jr_007_7088

    call Call_000_393d
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb53], a
    ld [$cb55], a
    ld a, $01
    ld [$cb56], a
    jr jr_007_7090

    ret


jr_007_7088:
    xor a
    ld [$b90a], a
    call Call_000_1029
    ret


jr_007_7090:
    xor a
    ld [$b90a], a
    call Call_000_1029
    ret


jr_007_7098:
    ld a, $01
    ld [$b90a], a
    call Call_000_1029
    call Call_000_0a2e
    ret


    call Call_000_393d
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb53], a
    ld [$cb55], a
    ld a, $01
    ld [$cb56], a
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_007_70cd

    xor a
    ld [$ba41], a
    ret


jr_007_70cd:
    ld a, $01
    ld [$ba41], a
    ret


    ld a, $01
    ld [$cb56], a
    ret


    ret


    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ldh [$ff91], a
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$c909], a
    ld [$c90a], a
    ld [$cb80], a
    ld [$c800], a
    ld [$c880], a
    ld a, $1d
    ld [$cb4e], a
    ld hl, $478a
    ld c, $0b
    ld de, $8800
    call Call_000_2f41
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call Call_000_2f41
    call Call_007_731d
    ld a, [$c90b]
    cp $00
    call z, Call_007_7340
    cp $01
    call z, Call_007_7396
    cp $02
    call z, Call_007_73e1
    ld a, $08
    call Call_000_23d2
    ret


    call Call_000_2b71
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$ccc1]
    or a
    jr nz, jr_007_7154

    ldh a, [$ff8b]
    or a
    jr nz, jr_007_716d

    jr jr_007_715a

jr_007_7154:
    ldh a, [$ff8b]
    cp $02
    jr z, jr_007_716d

jr_007_715a:
    ld a, [$c90b]
    cp $00
    call z, Call_007_71b4
    cp $01
    call z, Call_007_71c4
    cp $02
    call z, Call_007_71cc
    ret


Jump_007_716d:
jr_007_716d:
    ld a, $1d
    ld [$cb4f], a
    ld a, [$ccc1]
    or a
    jr z, jr_007_719f

    ld a, [$c90b]
    cp $00
    jr z, jr_007_718e

    cp $01
    jr z, jr_007_7199

    ld a, $01
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ret


jr_007_718e:
    ld a, $26
    ld [$cb50], a
    ld a, $01
    ld [$c90b], a
    ret


jr_007_7199:
    ld a, $27
    ld [$cb50], a
    ret


jr_007_719f:
    ld a, $11
    ld [$cb50], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ret


Call_007_71b4:
    ld hl, $512a
    ld a, $05
    call Call_000_1f96
    call Call_007_71d4
    call Call_000_362c
    pop hl
    ret


Call_007_71c4:
    call Call_007_744d
    call Call_000_362c
    pop hl
    ret


Call_007_71cc:
    call Call_007_7471
    call Call_000_362c
    pop hl
    ret


Call_007_71d4:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$c613]
    cp $00
    jp z, Jump_007_7200

    cp $01
    jp z, Jump_007_7216

    cp $02
    jp z, Jump_007_7235

    cp $03
    jp z, Jump_007_724b

    cp $04
    jp z, Jump_007_7258

    cp $05
    jp z, Jump_007_726e

    cp $06
    jp z, Jump_007_7282

    ret


Jump_007_7200:
    ld a, [$c611]
    cp $6c
    jp z, Jump_007_7292

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0a27
    ret


Jump_007_7216:
    ld a, [$c611]
    cp $24
    jp z, Jump_007_72ab

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0a27
    ld a, [$c90d]
    or a
    ret z

    dec a
    ld [$c90d], a
    ret


Jump_007_7235:
    ld a, [$c611]
    cp $08
    jp z, Jump_007_72ba

    inc a
    ld [$c611], a
    ld hl, $c60a
    ld bc, $ffff
    call Call_000_0a27
    ret


Jump_007_724b:
    ld a, [$c611]
    cp $08
    jp z, Jump_007_72ce

    inc a
    ld [$c611], a
    ret


Jump_007_7258:
    ld a, [$c611]
    cp $18
    jp z, Jump_007_72e2

    inc a
    ld [$c611], a
    ld hl, $c60b
    ld bc, $0001
    call Call_000_0a27
    ret


Jump_007_726e:
    ld a, [$c611]
    cp $08
    jp nc, Jump_007_72fb

    inc a
    ld [$c611], a
    ld a, [$c912]
    dec a
    ld [$c912], a
    ret


Jump_007_7282:
    ld a, [$c611]
    cp $f0
    jp z, Jump_007_716d

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Jump_007_7292:
    ld a, $01
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $11
    call Call_000_152f
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_23d8
    ret


Jump_007_72ab:
    ld a, $02
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call Call_000_152f
    ret


Jump_007_72ba:
    ld a, $03
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [$c60d], a
    ld a, $4c
    call Call_000_152f
    ret


Jump_007_72ce:
    ld a, $04
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $00
    ld [$c60d], a
    ld a, $14
    call Call_000_152f
    ret


Jump_007_72e2:
    ld a, $05
    ld [$c613], a
    xor a
    ld [$c611], a
    ld a, $15
    call Call_000_166a
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ret


Jump_007_72fb:
    ld a, $06
    ld [$c613], a

Jump_007_7300:
    xor a
    ld [$c611], a
    ld [$c620], a
    ld [$cb4a], a
    ld hl, $5da9
    ld a, $01
    call Call_000_1f96
    ld a, $00
    call Call_000_166a
    ld a, $3e
    call Call_000_3e80
    ret


Call_007_731d:
    ld hl, $7330
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ld [$c613], a
    ld [$c611], a
    ret


    ld bc, $ff00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    jr z, jr_007_733d

jr_007_733d:
    ld bc, $0001

Call_007_7340:
    ld hl, $7515
    ld c, $07
    ld de, $9800
    call Call_000_2f41
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6cd0
    ld a, $01
    call Call_000_1f96
    ld a, $15
    call Call_000_152f
    ld a, $01
    ld [$c60d], a
    ld a, $e0
    ld [$c60a], a
    ld a, $28
    ld [$c60b], a
    ld a, $1f
    call $16e3
    ld a, $01
    ld [$c620], a
    ld a, $80
    ld [$c62f], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3d
    call Call_000_3e80
    pop hl
    ret


Call_007_7396:
    ld hl, $75ee
    ld c, $07
    ld de, $9800
    call Call_000_2f41
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6cd0
    ld a, $01
    call Call_000_1f96
    ld a, $4a
    call Call_000_152f
    ld a, $03
    ld [$c60d], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [$c620], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $3f
    call Call_000_3e80
    pop hl
    ret


Call_007_73e1:
    ld hl, $7319
    ld c, $05
    ld de, $8800
    call Call_000_2f41
    ld hl, $6b95
    ld c, $05
    ld de, $9000
    call Call_000_2f41
    ld hl, $6ab6
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    call Call_007_74ab
    ld a, $cd
    ld [$cb5c], a
    ld a, $c8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $00
    ldh [$ff95], a
    ld hl, $44b3
    ld a, $05
    call Call_000_1f96
    ld a, $4a
    call Call_000_152f
    ld a, $03
    ld [$c60d], a
    ld a, $50
    ld [$c60a], a
    ld a, $58
    ld [$c60b], a
    xor a
    ld [$c620], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $41
    call Call_000_3e80
    pop hl
    ret


Call_007_744d:
    ld a, [$c611]
    cp $80
    jr z, jr_007_7467

    cp $f8
    jp z, Jump_007_716d

    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


jr_007_7467:
    inc a
    ld [$c611], a
    ld a, $40
    call Call_000_3e80
    ret


Call_007_7471:
    ld a, [$c611]
    cp $40
    jr z, jr_007_7491

    cp $80
    jr z, jr_007_749e

    cp $d0
    jp z, Jump_007_716d

    ld a, [$c0a8]
    and $03
    cp $03
    ret nz

    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


jr_007_7491:
    ld a, [$c611]
    inc a
    ld [$c611], a
    ld a, $42
    call Call_000_3e80
    ret


jr_007_749e:
    ld a, $43
    call Call_000_3e80
    ld a, [$c611]
    inc a
    ld [$c611], a
    ret


Call_007_74ab:
    ld a, $18
    ldh [$ff91], a
    ld hl, $99ab
    ld a, $48
    ld b, $08

jr_007_74b6:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74b6

    ld hl, $99cb
    ld a, $58
    ld b, $08

jr_007_74c2:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74c2

    ld a, [$b8ec]
    or a
    ret z

    ld hl, $9927
    ld a, $2e
    ld b, $02

jr_007_74d3:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74d3

    ld hl, $9947
    ld a, $3e
    ld b, $02

jr_007_74df:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74df

    ld hl, $992b
    ld a, $08
    ld b, $04

jr_007_74eb:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74eb

    ld hl, $994b
    ld a, $18
    ld b, $04

jr_007_74f7:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_74f7

    ld hl, $99a7
    ld a, $66
    ld b, $02

jr_007_7503:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_7503

    ld hl, $99c7
    ld a, $76
    ld b, $02

jr_007_750f:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_007_750f

    ret


    nop
    inc b
    and $13
    nop
    ld bc, $af01
    ld bc, $01b3
    and [hl]
    and [hl]
    ld bc, $127a
    nop
    and [hl]
    stop
    nop
    nop
    dec b
    ld b, $ad
    inc bc
    db $eb
    and a
    and a
    inc bc
    ld [bc], a
    and a
    stop
    nop
    nop
    dec d
    ld bc, $af16
    dec b
    dec h
    nop
    ld bc, $1f04
    nop
    rlca
    ld [bc], a
    ld bc, $1f04
    nop
    nop
    rrca
    inc b
    ld c, e
    ld [$040f], sp
    ld c, e
    ld [$040d], sp
    ld hl, $690c
    inc c
    dec c
    inc b
    ld hl, sp+$21
    inc c
    ld l, c
    inc c
    db $e3
    rrca
    ld hl, $2322
    ld h, b
    and [hl]
    rst $20
    and [hl]
    inc bc
    inc b
    rrca
    ld a, [bc]
    db $e3
    ld de, $3231
    inc sp
    rst $18
    ld [hl], b
    and a
    and a
    inc de
    inc d
    rrca
    ld [bc], a
    ld bc, $ff01
    rlca
    ld [$0101], sp
    ld b, c
    ld b, d
    ld b, e
    cpl
    db $fc
    ld bc, $2f14
    inc b
    ld bc, $1701
    jr @+$03

    ld bc, $ba0f
    cp e
    ret


    ccf
    ld bc, $2f14
    inc b
    add c
    rla
    ld b, l
    nop
    ld h, e
    jr nz, jr_007_75e0

    daa
    nop
    rlca
    jr jr_007_75cc

    nop
    jr nc, jr_007_75f8

    daa
    nop
    nop
    dec bc
    ld e, $87
    dec de
    cpl
    inc e
    ld c, e
    inc de
    cpl
    inc e
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_007_75cc:
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop

jr_007_75e0:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    nop
    inc b
    db $fd
    cp l
    ld [de], a
    nop
    ld e, d
    ldh a, [$fff1]
    ldh a, [c]

jr_007_75f8:
    di
    db $f4
    cp h
    ld d, d
    nop
    inc de
    ld bc, $5abd
    jr nz, jr_007_7643

    ld [bc], a
    ld [bc], a
    xor d
    ld l, d
    ld [de], a
    nop
    ld a, l
    rlca
    ld [bc], a
    ld a, h
    inc h
    ld bc, $5030
    ld [bc], a
    inc b
    adc a
    or b
    or c
    or c
    or d
    dec bc
    ld [bc], a
    inc h
    ld bc, $0404
    jp hl


    cp a
    ld l, c
    ld l, d
    ld hl, sp-$18
    add sp, $6d
    rlca
    ld b, $6c
    cp h
    inc h
    ld bc, $0404
    or e
    ld a, c
    ld a, d
    or h
    nop
    ld b, $c6
    cpl
    rst $00
    ret z

    and $e7
    ld d, d
    nop
    ld a, h
    inc h
    ld bc, $0804
    rst $38
    or a

jr_007_7643:
    ld l, e
    ld a, e
    cp b
    or [hl]
    or [hl]
    cp c
    sub $2f
    rst $10
    ret c

    or $f7
    ld d, d
    nop
    or l
    inc h
    ld bc, $0804
    scf
    nop
    ld bc, $b501
    inc c
    rlca
    ld [$0129], sp
    inc b
    inc c
    ld h, $08
    ld [bc], a
    rla
    jr @+$2b

    inc bc
    inc b
    inc c
    ld bc, $001f
    ld a, [bc]
    inc b
    nop
    rst $18
    ld bc, $0204
    dec b
    ld [$0829], sp
    sbc c
    dec d
    dec b
    ld [$020f], sp
    sub e
    rla
    ld e, d
    inc b
    inc d
    inc b

jr_007_7685:
    inc hl
    inc c
    xor e
    xor h
    inc d
    nop
    xor l
    ld d, c
    add hl, de
    xor a
    dec b
    ld b, $05

jr_007_7692:
    ld b, $04
    jr @+$16

    inc hl
    ld c, $bc
    ld a, d
    dec d
    nop
    ld e, c
    ld d, c
    dec de
    dec d
    ld d, $15
    ld d, $0b
    ld [$0be0], sp
    ld [bc], a
    ld hl, $0b04
    ld [$020d], sp
    rlca
    inc b
    dec b
    ld b, $01
    add a
    ld bc, $0605
    ld [hl], b
    jr nz, @+$33

    ld b, $a0
    jr nz, jr_007_76cb

    inc c
    dec d
    rra
    ld d, $01
    ld bc, $1615
    ld h, b
    rra
    and c
    ld [hl+], a
    and b

jr_007_76cb:
    jr nz, jr_007_76d9

    inc c
    inc c
    ld [bc], a
    inc b
    nop
    nop
    ld h, b
    ld hl, $20a4
    rrca
    inc b

jr_007_76d9:
    inc b
    ld [bc], a
    daa
    or e
    ld l, c
    ld l, d
    and c
    ld e, $0c
    db $10
    add hl, bc
    inc hl
    inc e
    ld bc, $7402
    and e
    jr nz, jr_007_76f8

    inc c
    ld a, [bc]
    inc hl
    ld e, $b5
    or [hl]
    or [hl]
    and h
    jr nz, jr_007_7718

    inc c
    inc c

jr_007_76f8:
    dec bc
    daa
    jr nz, jr_007_7685

    ld d, $06
    inc d
    inc e
    rrca
    ld [bc], a
    dec bc
    stop
    add hl, sp
    ld e, $e9
    inc bc
    add hl, bc
    inc e
    dec c
    ld [bc], a
    pop hl
    rla
    inc b
    jr nc, jr_007_7692

    ld [bc], a
    cpl
    nop
    ccf
    jr nz, jr_007_7758

jr_007_7718:
    and [hl]
    and [hl]
    ld d, h
    ld d, l
    ld [bc], a
    ld [hl], $80
    ld [bc], a
    ld a, [hl]
    cpl
    nop
    jr nc, jr_007_7775

    and a
    and a
    ld h, h
    ld h, l
    jp hl


    ld a, [bc]
    call z, $1f21
    jp hl


    dec bc
    and [hl]
    and [hl]
    add hl, bc
    ld [bc], a
    ld bc, $151f
    ld d, $80
    jp hl


    dec bc
    add hl, bc
    inc b
    xor c
    inc bc
    push hl
    inc hl
    add hl, bc
    inc b
    xor c
    inc bc
    push hl
    inc hl
    and a
    rlca
    and a
    ld [hl], h
    ld [hl], l
    ld b, d
    add hl, hl
    di
    ld a, $ff
    ld [$dd00], a
    ld [$dd01], a
    xor a

jr_007_7758:
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $77ad
    call Call_000_21f3
    call Call_000_222e
    ld hl, $791c
    call Call_000_21f3
    call Call_000_222e
    ld hl, $797c
    ld b, $08

jr_007_7775:
    push hl
    push bc
    call Call_000_21f3
    call Call_000_222e
    pop bc
    pop hl
    ld de, $0010
    add hl, de
    dec b
    jr nz, jr_007_7775

    ld hl, $7a3f
    ld a, $1e
    ld de, $78fc
    call Call_000_22f4
    ld hl, $7bc0
    ld a, $1e
    ld de, $790c
    call Call_000_22f4
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $793c
    call Call_000_21f3
    call Call_000_222e
    ret


    ld bc, $7fff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$dd00]
    or a
    ret z

    ld hl, $791c
    call Call_000_21f3
    call Call_000_222e
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $9000
    ld bc, $0010
    call Call_000_2099
    ld hl, $9800
    ld bc, $0400
    call Call_000_2099
    ld hl, $79fc
    ld a, [$c0a7]
    cp $01
    jr z, jr_007_77fa

    cp $07
    jr z, jr_007_77fa

    cp $0f
    jr z, jr_007_77fa

    cp $25
    jr nz, jr_007_7800

jr_007_77fa:
    ld hl, $7af8
    ld a, [$b884]

jr_007_7800:
    ld c, l
    ld b, h
    ld l, a
    ld h, $00
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, bc
    ld de, $c0aa
    ld a, $51
    ld [de], a
    inc de
    ld b, $04

jr_007_7814:
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_7814

    ld a, [hl+]
    set 7, a
    ld [de], a
    inc de
    ld b, $06
    xor a

jr_007_7825:
    ld [de], a
    inc de
    dec b
    jr nz, jr_007_7825

    push hl
    ld hl, $c0aa
    call Call_000_21f3
    call Call_000_222e
    pop hl
    ld a, [$c0a7]
    cp $20
    jr z, jr_007_78b8

    ld a, [$cb50]
    cp $20
    jr z, jr_007_78b8

    ld b, [hl]
    ld a, [$dd01]
    cp b
    jp z, Jump_007_78ef

    ld a, b
    ld [$dd01], a
    push af
    push bc
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld hl, $9000
    ld bc, $0010
    call Call_000_2099
    ld hl, $9800
    ld bc, $0400
    ld a, $83
    ld [$c0a2], a
    call Call_000_2099
    call Call_000_208a
    call Call_000_222e
    call Call_000_2071
    ld hl, $791c
    call Call_000_21f3
    call Call_000_222e
    pop bc
    pop af
    add a
    add b
    ld hl, $7b10
    call Call_000_074c
    ld de, $794c
    call Call_000_22f4
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    ld hl, $7b10
    call Call_000_074c
    ld de, $795c
    call Call_000_22f4
    ld a, [$dd01]
    ld b, a
    add a
    add b
    inc a
    inc a
    ld hl, $7b10
    call Call_000_074c
    ld de, $796c
    call Call_000_22f4

jr_007_78b8:
    call Call_000_2071
    ld hl, $9000
    ld bc, $0010
    call Call_000_2099
    ld hl, $9800
    ld bc, $0400
    call Call_000_2099
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_208a
    call Call_000_222e
    call Call_000_2071
    ld hl, $793c
    call Call_000_21f3
    call Call_000_222e
    ld hl, $791c
    call Call_000_21f3
    call Call_000_222e

Jump_007_78ef:
    ret


    ld a, [$dd00]
    or a
    ret z

    ld hl, $793c
    call Call_000_21f3
    ret


    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call Call_000_0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_007_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_007_79c9

    ld b, a
    ld [$0b00], sp
    call nz, Call_000_16d0
    and l
    set 1, c
    dec b
    ret nc

Jump_007_79c9:
    db $10
    and d
    jr z, jr_007_7a46

    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$ff79], a
    ld e, l
    ld [$0400], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$00ea], a
    nop
    nop
    nop

Call_007_7a00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4444
    ld b, h
    ld b, h
    ld bc, $4801
    ld c, b
    ld c, b
    ld c, b
    ld [bc], a
    ld bc, $4c4c
    ld c, h
    ld c, h
    inc bc
    ld bc, $5050
    ld d, b
    ld d, b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $5454
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h
    ld d, h
    ld d, h
    ld de, $5401
    ld d, h

jr_007_7a46:
    ld d, h
    ld d, h
    ld de, $5801
    ld e, c
    ld e, d
    ld e, e
    ld [de], a
    ld bc, $5958
    ld e, d
    ld e, e
    ld [de], a
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    dec b
    nop
    ld [$0a09], sp
    dec bc
    ld b, $01
    ld [$0a09], sp
    dec bc
    rlca
    ld bc, $3030
    jr nc, jr_007_7aa2

    nop
    ld bc, $1110
    ld [de], a
    inc de
    add hl, bc
    ld bc, $1514
    ld d, $17
    ld a, [bc]
    ld bc, $1918
    ld a, [de]
    dec de
    dec bc
    ld bc, $1d1c
    ld e, $1f
    inc c
    ld bc, $2120
    ld [hl+], a
    inc hl
    dec c
    ld bc, $2524
    ld h, $27
    ld c, $01
    inc c
    dec c
    ld c, $0f
    ld [$0001], sp
    nop
    nop
    nop

jr_007_7aa2:
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $2928
    ld a, [hl+]
    dec hl
    rrca
    nop
    inc l
    dec l
    ld l, $2f
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $5858
    ld e, b
    ld e, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $4848
    ld c, b
    ld c, b
    ld [bc], a
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $4c4c
    ld c, h
    ld c, h
    inc bc
    ld bc, $3434
    inc [hl]
    inc [hl]
    nop
    ld bc, $3838
    jr c, jr_007_7b3a

    nop
    ld bc, $3c3c
    inc a
    inc a
    nop
    ld bc, $4040
    ld b, b
    ld b, b
    nop
    ld bc, $72ba
    rra
    adc $6e
    dec de
    db $e3
    ld a, h
    inc e
    cp d
    ld [hl], d
    rra
    adc $6e
    dec de
    dec l
    ld a, h
    dec e
    nop
    inc b
    sbc e
    db $10
    ld [bc], a
    dec d
    nop
    sbc $df
    or [hl]
    nop
    ld b, e
    ld bc, $fe10
    ld bc, $0102
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld e, h
    ld l, h

jr_007_7b3a:
    sbc a
    ld l, l
    dec [hl]
    inc [hl]
    xor $ef
    and b
    nop
    pop hl
    nop
    ld de, $42ee
    ld bc, $3734
    ld de, $0206
    ld e, l
    ld a, h
    ld a, l
    rst $38
    dec [hl]
    inc [hl]
    rst $00
    ret


    dec [hl]
    dec b
    ld b, $20
    rst $38
    ld hl, $2322
    ld de, $2401
    dec h
    ld h, h
    rst $20
    ld h, l
    ld h, [hl]
    ld h, a
    rlca
    ld [bc], a
    ld b, c
    inc b
    cp b
    rst $00
    ret


    rst $38
    cp c
    dec d
    ld d, $30
    ld sp, $3332
    ld de, $017f
    ld h, $27
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    inc bc
    inc b
    rst $38
    ld [hl], $37
    ld [hl], $37
    ld c, b
    ld c, c
    ld l, b
    ld l, c
    rst $38
    rst $00
    ret z

    ret z

    ret


    rlca
    ld [$4140], sp
    rst $38
    ld b, d
    ld b, e
    ld de, $2801
    add hl, hl
    xor d
    xor e
    ei
    xor h
    xor l
    inc bc
    ld b, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, b
    rst $38
    ld e, c
    ld a, b
    ld a, c
    rst $00
    rst $20
    add sp, -$37
    rla
    rst $38
    jr jr_007_7c01

    ld d, c
    ld d, d
    ld d, e
    ld de, $3801
    rst $18
    add hl, sp
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    inc bc
    ld [$bbba], sp
    rst $38
    cp h
    cp l
    xor b
    xor c
    xor b
    xor c
    rst $10
    ret c

    rst $38
    ret c

    reti


    add hl, bc
    add hl, de
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $28
    push de
    sub $a8
    xor c
    rlca
    ld [bc], a
    jp z, $cccb

    rst $18
    call $4544
    ld b, l
    ld b, l
    ld b, a
    nop
    push hl
    and $eb
    ldh [$ffe1], a
    stop
    db $e4
    inc bc
    inc c
    and b
    and c
    and d
    ld l, l
    and e
    push hl
    ld bc, $0403
    and c
    ld [bc], a
    push af
    or $09
    ld [bc], a
    rst $28
    or b
    or c

jr_007_7c01:
    or d
    or e
    inc bc
    inc b
    cp [hl]
    cp a
    cp a
    rst $20
    cp a
    adc $cf
    pop bc
    inc b
    add hl, bc
    inc b
    ret nz

    pop bc
    jp nz, $c3fd

    db $e3
    dec b
    and h
    and l
    and l
    and l
    and [hl]
    and a
    sub $a1
    ld b, $f0
    pop af
    stop
    db $f4
    inc bc
    ld [de], a
    ld c, d
    ld c, e
    ld a, [hl]
    push bc
    rlca
    or h
    or l
    or l
    or l
    or [hl]
    or a
    pop bc
    ld [$1dbf], sp
    ld e, $1f
    dec a
    ld a, $c9
    inc bc
    inc d
    ld e, d
    db $fd
    ld e, e
    push hl
    add hl, bc
    call nz, $c5c4
    push bc
    push bc
    add $7e
    and c
    ld a, [bc]
    dec l
    ld l, $2f
    ld c, h
    ld c, l
    ccf
    inc bc
    ld d, $b3
    ld l, d
    ld l, e
    ret


    dec bc
    add e
    inc c
    dec c
    ld c, $10
    nop
    rrca
    or $03
    jr jr_007_7cdd

    ld a, e
    db $ed
    ld bc, $4544
    rst $30
    ld hl, sp+$4c
    ld hl, $0300
    ld a, [de]
    jp c, $0fdb

    inc b
    ld [bc], a
    ld de, $0347
    inc e
    ld h, e
    ld [$efeb], a
    ld bc, $12e2
    inc bc
    ld [bc], a
    db $10
    ld [de], a
    rla
    nop
    rrca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld hl, sp+$00
    ld [bc], a
    ld [hl+], a
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    nop
    inc b
    sbc e
    db $10
    ld [bc], a
    inc de
    nop
    sbc $df
    sub h
    nop
    ld c, e
    nop
    db $10
    ld [hl], a
    ld bc, $3534
    ld [hl+], a
    nop
    xor $ef
    inc [hl]
    and h
    nop
    rst $38

jr_007_7cdd:
    scf
    ld de, $dc01
    db $dd
    inc [hl]
    dec [hl]
    ld e, h
    ei
    ld l, h
    ld l, l
    jp nz, Jump_007_6400

    ld h, l
    ld h, [hl]
    ld h, a
    inc h
    rst $38
    dec h
    dec [hl]
    rst $00
    ret


    dec [hl]
    dec b
    ld b, $20
    rst $38
    ld hl, $2322
    dec b
    ld b, $11
    ld bc, $ffec
    db $ed
    dec [hl]
    inc [hl]
    ld e, l
    ld a, h
    ld a, l
    inc [hl]
    dec [hl]
    rst $38
    ld [hl], $11
    ld bc, $7574
    halt
    ld [hl], a
    ld h, $ff
    daa
    cp b
    rst $00
    ret


    cp c
    dec d
    ld d, $30
    ccf
    ld sp, $3332
    dec d
    ld d, $11
    ld b, l
    dec b
    jp nz, $ff04

    xor d
    xor e
    xor h
    xor l
    jr z, @+$2b

    rst $00
    ret z

    rst $38
    ret z

    ret


    rlca
    ld [$4140], sp
    ld b, d
    ld b, e
    rst $38
    rlca
    ld [$0111], sp
    scf
    ld [hl], $37
    ld [hl], $fb
    ld c, b
    ld c, c
    ld h, c
    nop
    ld de, $6e01
    ld l, a
    ld a, [hl]
    rst $38
    ld a, a
    jr c, jr_007_7d89

    rst $00
    rst $20
    add sp, -$37
    rla
    rst $38
    jr @+$52

    ld d, c
    ld d, d
    ld d, e
    rla
    jr jr_007_7d6f

    rst $38
    ld bc, $7170
    ld [hl], d
    ld [hl], e
    ld e, b
    ld e, c
    cp [hl]
    rst $30
    cp a
    adc $cf
    inc bc
    ld [bc], a
    xor b
    xor c

jr_007_7d6f:
    rst $10
    ret c

    rst $38
    ret c

    reti


    add hl, bc
    add hl, de
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    add hl, bc
    add hl, de
    ld de, $ba01
    cp e
    cp h
    cp l
    rst $38
    xor b
    xor c
    and h
    and l
    and [hl]

jr_007_7d89:
    and a
    ld de, $6f01
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, e
    nop
    ret nc

    pop de
    ld [de], a
    nop
    rst $38
    call nc, $d6d5
    jp z, $cccb

    call Call_007_7f44
    ld b, l
    or h
    or l
    or [hl]
    or a
    ld de, $e301
    ld bc, $03bf
    inc b
    ld b, l
    ld b, l
    ldh [$ffe1], a
    ld [de], a
    nop
    db $e4
    rst $38
    push hl
    and $a0
    and c
    and d
    and e
    ld b, l
    ld b, l
    ld l, a
    call nz, $c5c5
    add $03
    inc b
    ld a, [bc]
    dec bc
    stop
    cp l
    inc c
    rlca
    ld [bc], a
    or b
    or c
    or d
    or e
    ldh [c], a
    inc b
    call nc, $0376
    inc b
    ld a, [de]
    dec de
    stop
    inc e
    ldh a, [$fff1]
    ld [de], a
    nop
    ld a, a
    db $f4
    ld l, b
    ld l, c
    ret nz

    pop bc
    jp nz, $e2c3

    inc b
    rst $38
    db $e4
    ld de, $4a01
    ld c, e
    ld b, l
    ld b, l
    ld a, [hl+]
    ld [hl], l
    dec hl
    stop
    inc l
    add h
    ld [$7847], sp
    ld a, c
    ld hl, $7e09
    dec b
    ld [bc], a
    ld e, d
    ld e, e
    ld b, h
    ld b, l
    ld a, [hl-]
    dec sp
    stop
    call $a53c
    ld a, [bc]
    xor b
    xor c
    ld hl, $e20b
    inc b
    db $f4
    ld de, $0137
    ld l, d
    ld l, e
    ld bc, $030c
    inc b
    add a
    inc c
    inc bc
    dec c
    rst $38
    dec e
    ld e, $1f
    dec a
    ld a, $c9
    ld de, $5b01
    ld a, d
    ld a, e
    ld hl, $130e
    inc d
    ld h, $0e
    jp nc, $0f23

    rst $38
    dec l
    ld l, $2f
    ld c, h
    ld c, l
    ccf
    ld de, $d301
    jp c, $87db

    inc bc
    ld [hl+], a
    ld c, $e2
    inc bc
    ld de, $0e0d
    ld a, $10
    nop
    rrca
    ld de, $ea01
    db $eb
    daa
    ld [de], a
    ld [hl+], a
    inc c
    db $ed
    ldh a, [c]
    inc hl
    inc de
    rst $30
    ld hl, sp+$21
    nop
    ld de, $1210
    ld e, [hl]
    add hl, de
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [de]
    ld bc, $2f10
    dec h
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_007_7ec9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_007_7f44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
