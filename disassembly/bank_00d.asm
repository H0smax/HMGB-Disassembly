; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    dec c
    nop
    cp $41
    ld b, c
    nop
    cp $4b
    ld b, c
    nop
    cp $55
    ld b, c
    nop
    cp $5f
    ld b, c
    nop
    cp $fd
    ld b, e
    ld bc, $93fe
    ld b, h
    ld bc, $31fe
    ld b, l
    ld bc, $37fe
    ld b, l
    ld bc, $3bfe
    ld b, l
    ld bc, $41fe
    ld b, l
    ld bc, $a3fe
    ld b, [hl]
    ld bc, $bbfe
    ld b, [hl]
    ld bc, $c9fe
    ld b, [hl]
    ld bc, $d3fe
    ld b, [hl]
    ld bc, $80fe
    ld c, b
    ld [bc], a
    cp $4d
    ld c, d
    ld [bc], a
    cp $51
    ld c, d
    ld [bc], a
    cp $55
    ld c, d
    ld [bc], a
    cp $59
    ld c, d
    ld [bc], a
    cp $e5
    ld c, d
    ld [bc], a
    cp $e9
    ld c, d
    ld [bc], a
    cp $ed
    ld c, d
    ld [bc], a
    cp $f1
    ld c, d
    ld [bc], a
    cp $7d
    ld c, e
    ld [bc], a
    cp $89
    ld c, e
    ld [bc], a
    cp $ae
    ld c, h
    ld [bc], a
    cp $c2
    ld c, h
    ld [bc], a
    cp $e4
    ld c, h
    ld [bc], a
    cp $e8
    ld c, h
    ld [bc], a
    cp $06
    ld c, l
    ld [bc], a
    cp $0a
    ld c, l
    ld [bc], a
    cp $0e
    ld c, l
    ld [bc], a
    cp $2a
    ld c, l
    inc bc
    cp $e9
    ld c, a
    inc bc
    cp $ef
    ld c, a
    inc bc
    cp $f5
    ld c, a
    inc bc
    cp $fb
    ld c, a
    inc bc
    cp $f5
    ld d, d
    inc bc
    cp $03
    ld d, e
    inc bc
    cp $11
    ld d, e
    inc bc
    cp $1f
    ld d, e
    inc bc
    cp $18
    ld d, a
    inc bc
    cp $1a
    ld d, a
    inc bc
    cp $1c
    ld d, a
    inc bc
    cp $1e
    ld d, a
    ld bc, $b4fe
    ld d, a
    ld bc, $b8fe
    ld d, a
    ld bc, $bcfe
    ld d, a
    ld bc, $c0fe
    ld d, a
    inc bc
    cp $5a
    ld e, b
    inc bc
    cp $64
    ld e, b
    inc bc
    cp $6e
    ld e, b
    inc bc
    cp $78
    ld e, b
    ld bc, $a6fe
    ld c, b
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    nop
    db $fd
    ld c, d
    ld e, c
    ld l, c
    ld b, c
    adc d
    ld b, c
    xor e
    ld b, c
    call z, $ed41
    ld b, c
    ld c, $42
    cpl
    ld b, d
    ld d, b
    ld b, d
    ld [hl], c
    ld b, d
    sub d
    ld b, d
    or e
    ld b, d
    call nc, $f542
    ld b, d
    ld d, $43
    scf
    ld b, e
    ld e, b
    ld b, e
    ld a, c
    ld b, e
    sbc d
    ld b, e
    cp e
    ld b, e
    call c, $f843
    nop
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    ld [$5ff8], a
    nop
    ldh [c], a
    nop
    ld e, [hl]
    nop
    ldh [c], a
    ld hl, sp+$5d
    nop
    ld [$6000], a
    nop
    ldh a, [c]
    nop
    ld h, d
    nop
    ldh a, [c]
    ld hl, sp+$61
    nop
    add b
    ldh [rP1], a
    ld e, [hl]
    nop
    ldh [$fff8], a
    ld e, l
    nop
    add sp, $00
    ld h, h
    nop
    add sp, -$08
    ld h, e
    nop
    ld hl, sp+$00
    ld l, b
    nop
    ld hl, sp-$08
    ld h, a
    nop
    ldh a, [rP1]
    ld h, [hl]
    nop
    ldh a, [$fff8]
    ld h, l
    nop
    add b
    nop
    nop
    ld [hl], b
    nop
    nop
    ld hl, sp+$6f
    nop
    ld hl, sp+$00
    ld l, [hl]
    nop
    ld hl, sp-$08
    ld l, l
    nop
    ldh a, [rP1]
    ld l, h
    nop
    ldh a, [$fff8]
    ld l, e
    nop
    add sp, $00
    ld l, d
    nop
    add sp, -$08
    ld l, c
    nop
    add b
    nop
    nop
    ld a, b
    nop
    nop
    ld hl, sp+$77
    nop
    ld hl, sp+$00
    halt
    nop
    ld hl, sp-$08
    ld [hl], l
    nop
    ldh a, [rP1]
    ld [hl], h
    nop
    ldh a, [$fff8]
    ld [hl], e
    nop
    add sp, $00
    ld [hl], d
    nop
    add sp, -$08
    ld [hl], c
    nop
    add b
    jp hl


    nop
    ld [hl], d
    nop
    jp hl


    ld hl, sp+$71
    nop
    ld bc, $7e00
    nop
    ld bc, $7df8
    nop
    ld sp, hl
    nop
    ld a, h
    nop
    ld sp, hl
    ld hl, sp+$7b
    nop
    pop af
    nop
    ld a, d
    nop
    pop af
    ld hl, sp+$79
    nop
    add b
    ld hl, sp+$00
    xor b
    nop
    ld hl, sp-$08
    and a
    nop
    ldh a, [rP1]
    and [hl]
    nop
    ldh a, [$fff8]
    and l
    nop
    add sp, $00
    and h
    nop
    add sp, -$08
    and e
    nop
    ldh [rP1], a
    and d
    nop
    ldh [$fff8], a
    and c
    nop
    add b
    ld hl, sp-$01
    or b
    nop
    ld hl, sp-$09
    xor a
    nop
    ldh a, [rTAC]
    xor [hl]
    nop
    ldh a, [rIE]
    xor l
    nop
    ldh a, [$fff7]
    xor h
    nop
    add sp, $07
    xor e
    nop
    add sp, -$01
    xor d
    nop
    add sp, -$09
    xor c
    nop
    add b
    ld hl, sp-$03
    cp b
    nop

jr_00d_4254:
    ld hl, sp-$0b
    or a
    nop
    ld hl, sp-$13
    or [hl]
    nop
    ldh a, [$fffd]
    or l
    nop
    ldh a, [$fff5]
    or h
    nop
    ldh a, [$ffed]
    or e
    nop
    add sp, -$03
    or d
    nop
    add sp, -$0b
    or c
    nop
    add b
    ld hl, sp-$03
    cp a
    nop
    ld hl, sp-$0b
    cp [hl]
    nop
    ld hl, sp-$13
    cp l
    nop
    ldh a, [$fffd]
    cp h
    nop
    ldh a, [$fff5]
    cp e
    nop
    ldh a, [$ffed]
    cp d
    nop
    add sp, -$03
    or d
    nop
    add sp, -$0b
    cp c
    nop
    add b
    add sp, -$02
    or d
    nop

jr_00d_4296:
    add sp, -$0a
    ret nz

    nop
    ld hl, sp-$02
    add $00
    ld hl, sp-$0a
    push bc
    nop
    ld hl, sp-$12
    call nz, $f000
    cp $c3
    nop
    ldh a, [$fff6]

jr_00d_42ac:
    jp nz, $f000

    xor $c1
    nop
    add b
    ld hl, sp-$08
    xor b
    jr nz, @-$06

    nop
    and a
    jr nz, jr_00d_42ac

    ld hl, sp-$5a
    jr nz, @-$0e

    nop
    and l
    jr nz, jr_00d_42ac

    ld hl, sp-$5c
    jr nz, @-$16

    nop
    and e
    jr nz, jr_00d_42ac

    ld hl, sp-$5e
    jr nz, @-$1e

    nop

jr_00d_42d1:
    and c
    jr nz, jr_00d_4254

    ld hl, sp-$07
    or b
    jr nz, jr_00d_42d1

jr_00d_42d9:
    ld bc, $20af
    ldh a, [$fff1]
    xor [hl]
    jr nz, jr_00d_42d1

    ld sp, hl
    xor l
    jr nz, @-$0e

    ld bc, $20ac
    add sp, -$0f
    xor e
    jr nz, @-$16

    ld sp, hl
    xor d
    jr nz, jr_00d_42d9

    ld bc, $20a9
    add b
    ld hl, sp-$05
    cp b
    jr nz, @-$06

jr_00d_42fa:
    inc bc
    or a
    jr nz, @-$06

    dec bc
    or [hl]
    jr nz, @-$0e

    ei
    or l
    jr nz, @-$0e

    inc bc
    or h
    jr nz, jr_00d_42fa

    dec bc
    or e
    jr nz, @-$16

    ei
    or d
    jr nz, jr_00d_42fa

    inc bc

jr_00d_4313:
    or c
    jr nz, jr_00d_4296

    ld hl, sp-$05
    cp a
    jr nz, jr_00d_4313

jr_00d_431b:
    inc bc
    cp [hl]
    jr nz, @-$06

    dec bc
    cp l
    jr nz, jr_00d_4313

    ei

jr_00d_4324:
    cp h
    jr nz, @-$0e

    inc bc
    cp e
    jr nz, jr_00d_431b

    dec bc
    cp d
    jr nz, @-$16

    ei
    or d
    jr nz, jr_00d_431b

    inc bc
    cp c
    jr nz, @-$7e

    add sp, -$06
    or d
    jr nz, jr_00d_4324

    ld [bc], a
    ret nz

    jr nz, @-$06

jr_00d_4340:
    ld a, [$20c6]
    ld hl, sp+$02
    push bc
    jr nz, jr_00d_4340

    ld a, [bc]
    call nz, $f020
    ld a, [$20c3]
    ldh a, [rSC]
    jp nz, $f020

    ld a, [bc]
    pop bc
    jr nz, @-$7e

    ld hl, sp+$01
    add [hl]
    nop
    ld hl, sp-$07
    add l
    nop
    ldh a, [$ff09]
    add h
    nop
    ldh a, [rSB]
    add e
    nop
    ldh a, [$fff9]
    add d
    nop
    add sp, $09
    add c
    nop
    add sp, $01
    add b
    nop
    add sp, -$07
    ld a, a
    nop
    add b
    ld hl, sp+$01
    adc l
    nop
    ld hl, sp-$07
    adc h
    nop
    add sp, -$07
    ld a, a
    nop
    ldh a, [$ff09]
    adc e
    nop
    ldh a, [rSB]
    adc d
    nop
    ldh a, [$fff9]
    adc c
    nop
    add sp, $09
    adc b
    nop
    add sp, $01
    add a
    nop
    add b
    ld a, [$9501]
    nop
    ld a, [$94f9]
    nop
    ldh a, [c]
    ld bc, $0093
    ldh a, [c]
    ld sp, hl
    sub d
    nop
    ld [$9101], a
    nop
    ld [$90f9], a
    nop
    ldh [c], a
    ld bc, $008f
    ldh [c], a
    ld sp, hl
    adc [hl]
    nop
    add b
    add sp, -$07
    ccf
    nop
    add sp, $01
    sub [hl]
    nop
    nop
    ld bc, $009c
    nop
    ld sp, hl
    sbc e
    nop
    ld hl, sp+$01
    sbc d
    nop
    ld hl, sp-$07
    sbc c
    nop
    ldh a, [rSB]
    sbc b
    nop
    ldh a, [$fff9]
    sub a
    nop
    add b
    jp hl


    ld bc, $0096
    jp hl


    ld sp, hl
    ccf
    nop
    rst $38
    ld bc, $009c
    rst $38
    ld sp, hl
    sbc e
    nop
    ld sp, hl
    ld bc, $00a0
    ld sp, hl
    ld sp, hl
    sbc a
    nop
    pop af
    ld bc, $009e
    pop af
    ld sp, hl
    sbc l
    nop
    add b
    rrca
    ld b, h
    jr nc, jr_00d_4445

    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    jr nc, jr_00d_4453

    ld hl, sp+$00
    adc $00
    ld hl, sp-$08
    call $f000
    nop
    call z, $f000
    ld hl, sp-$35
    nop
    ldh a, [$fff0]
    jp z, $e800

    nop
    ret


    nop
    add sp, -$08
    ret z

    nop
    add sp, -$10
    rst $00
    nop
    add b
    ld hl, sp+$00
    sub $00
    ld hl, sp-$08
    push de
    nop
    ldh a, [rP1]
    call nc, $f000
    ld hl, sp-$2d
    nop
    add sp, $00
    jp nc, $e800

jr_00d_4445:
    ld hl, sp-$2f
    nop
    add sp, -$10
    ret nc

    nop
    ldh [$fff8], a
    rst $08
    nop
    add b
    ld hl, sp+$09

jr_00d_4453:
    sbc $00
    ld hl, sp+$01
    db $dd
    nop
    ld hl, sp-$07
    call c, $f000
    add hl, bc
    db $db
    nop
    ldh a, [rSB]
    jp c, $f000

    ld sp, hl
    reti


    nop
    add sp, $01
    ret c

    nop
    add sp, -$07
    rst $10
    nop
    add b
    ld hl, sp+$00
    and $00
    ld hl, sp-$08
    push hl
    nop
    ld hl, sp-$10
    db $e4
    nop
    ldh a, [rP1]
    db $e3
    nop
    ldh a, [$fff8]
    ldh [c], a
    nop
    ldh a, [$fff0]
    pop hl
    nop
    add sp, $00
    ldh [rP1], a
    add sp, -$08
    rst $18
    nop
    add b
    or c
    ld b, h
    adc $44
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    adc $44
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    dec b
    nop
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$fff8]
    inc bc
    nop
    add sp, $08
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rP1]
    inc c
    nop
    ldh a, [$fff8]
    dec bc
    nop
    add sp, $08
    ld a, [bc]
    nop
    add sp, $00
    add hl, bc
    nop
    add sp, -$08
    ld [$e800], sp
    ldh a, [rTAC]
    nop
    add b
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$fff8]
    inc de
    nop
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    dec d
    nop
    ldh [rP1], a
    rrca
    nop
    add sp, $08
    ld [de], a
    nop
    add sp, $00
    ld de, $e800
    ld hl, sp+$10
    nop
    add b
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    dec d
    nop
    add sp, $08
    add hl, de
    nop
    add sp, $00
    jr jr_00d_4520

jr_00d_4520:
    add sp, -$08
    rla
    nop
    ldh a, [$ff08]
    inc e
    nop
    ldh a, [rP1]
    dec de
    nop
    ldh a, [$fff8]
    ld a, [de]
    nop
    add b
    ld b, e
    ld b, l
    ld h, b
    ld b, l
    add c
    ld b, l
    and d
    ld b, l
    jp $e445


    ld b, l
    dec b
    ld b, [hl]
    ld b, e
    ld b, l
    and d
    ld b, l
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    ldh a, [rP1]
    ld hl, $f000
    ld hl, sp+$20
    nop
    add sp, $00
    rra
    nop
    add sp, -$08
    ld e, $00
    add sp, -$10
    dec e
    nop
    add b
    ldh [$fff8], a
    dec h
    nop
    ldh [$fff0], a
    inc h
    nop
    ld hl, sp+$00
    dec hl
    nop
    ld hl, sp-$08
    ld a, [hl+]
    nop
    ldh a, [rP1]
    add hl, hl
    nop
    ldh a, [$fff8]
    jr z, jr_00d_4578

jr_00d_4578:
    add sp, $00
    daa
    nop
    add sp, -$08
    ld h, $00
    add b
    ret c

    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl-], a
    nop
    ld hl, sp-$08
    ld sp, $f000
    nop
    jr nc, jr_00d_4591

jr_00d_4591:
    ldh a, [$fff8]
    cpl
    nop
    ldh [$fffe], a
    inc l
    nop
    add sp, $00
    ld l, $00
    add sp, -$08
    dec l
    nop
    add b
    add sp, -$08
    dec l
    nop
    add sp, $00
    rra
    nop
    ld hl, sp+$00
    jr c, jr_00d_45ae

jr_00d_45ae:
    ld hl, sp-$08
    scf
    nop
    ldh a, [rNR10]
    ld [hl], $00
    ldh a, [$ff08]
    dec [hl]
    nop
    ldh a, [rP1]
    inc [hl]
    nop
    ldh a, [$fff8]
    inc sp
    nop
    add b
    ldh a, [rNR10]
    ld a, [hl-]
    nop
    ldh a, [$ff08]
    add hl, sp
    nop
    ld hl, sp-$08
    scf
    nop
    add sp, -$08
    dec l
    nop
    add sp, $00
    rra
    nop
    ldh a, [rP1]
    inc [hl]
    nop
    ldh a, [$fff8]
    inc sp
    nop
    ld hl, sp+$00
    jr c, jr_00d_45e3

jr_00d_45e3:
    add b
    ldh [$ff08], a
    ld b, e
    nop
    ldh [rP1], a
    ld b, d
    nop
    add sp, $00
    ld b, l
    nop
    add sp, -$08
    ld b, h
    nop
    ldh a, [rP1]
    ld b, a
    nop
    ldh a, [$fff8]
    ld b, [hl]
    nop
    ld hl, sp+$00
    ld c, c
    nop
    ld hl, sp-$08
    ld c, b
    nop
    add b
    ldh [$fff8], a
    inc a
    nop
    ldh [$fff0], a
    dec sp
    nop
    add sp, -$08
    dec a
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh a, [$fff8]
    ld a, $00
    ld hl, sp+$00
    ld b, c
    nop
    ld hl, sp-$08
    ld b, b
    nop
    add sp, $00
    daa
    nop
    add b
    rst $20
    ld bc, $0054
    rst $20
    ld sp, hl
    ld d, e
    nop
    rst $30
    ld bc, $005c
    rst $30
    ld sp, hl
    ld e, e
    nop
    rst $28
    ld bc, $005a
    rst $28
    ld sp, hl
    ld e, c
    nop
    add b
    ret c

    nop
    pop hl
    nop
    ret c

    ld hl, sp-$20
    nop
    add sp, $00
    rst $18
    nop
    add sp, -$08
    sbc $00
    ldh [rP1], a
    db $db
    nop
    ldh [$fff8], a
    jp c, $8000

    call c, $e100
    nop
    call c, $e0f8
    nop
    db $ec
    nop
    rst $18
    nop
    db $ec
    ld hl, sp-$22
    nop
    db $e4
    nop
    db $db
    nop
    db $e4
    ld hl, sp-$26
    nop
    add b
    db $e4
    nop
    pop hl
    nop
    db $e4
    ld hl, sp-$20
    nop
    db $f4
    nop
    rst $18
    nop
    db $f4
    ld hl, sp-$22
    nop
    db $ec
    nop
    db $db
    nop
    db $ec
    ld hl, sp-$26
    nop
    add b
    add sp, $00
    pop hl
    nop
    add sp, -$08
    ldh [rP1], a
    ld hl, sp+$00
    rst $18
    nop
    ld hl, sp-$08
    sbc $00
    ldh a, [rP1]
    db $db
    nop
    ldh a, [$fff8]
    jp c, $8000

    jp hl


    ld b, [hl]
    ld [bc], a
    ld b, a
    jp hl


    ld b, [hl]
    ld [bc], a
    ld b, a
    dec de
    ld b, a
    inc [hl]
    ld b, a
    dec de
    ld b, a
    inc [hl]
    ld b, a
    jp hl


    ld b, [hl]
    ld [bc], a
    ld b, a
    jp hl


    ld b, [hl]
    ld [bc], a
    ld b, a
    ld d, c
    ld b, a
    ld l, d
    ld b, a
    add a
    ld b, a
    ld l, d
    ld b, a
    add a
    ld b, a
    ld l, d
    ld b, a
    add a
    ld b, a
    ld d, c
    ld b, a
    and b
    ld b, a
    jp nc, $b947

    ld b, a
    add a
    ld b, a
    db $eb
    ld b, a
    inc b
    ld c, b
    db $eb
    ld b, a
    inc b
    ld c, b
    db $eb
    ld b, a
    inc b
    ld c, b
    ld hl, $3e48
    ld c, b
    ld e, a
    ld c, b
    cp c
    ld b, a
    add a
    ld b, a
    ld hl, sp+$00
    ld c, a
    nop
    ld hl, sp-$08
    ld c, [hl]
    nop
    ldh a, [rP1]
    ld c, l
    nop
    ldh a, [$fff8]
    ld c, h
    nop
    add sp, $00
    ld c, e
    nop
    add sp, -$08
    ld c, d
    nop
    add b
    add sp, $00
    ld c, e
    nop
    add sp, -$08
    ld c, d
    nop
    ldh a, [rP1]
    ld c, l
    nop
    ldh a, [$fff8]
    ld c, h
    nop
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    add b
    ld hl, sp+$00
    ld d, a
    nop
    ld hl, sp-$08
    ld d, [hl]
    nop
    ldh a, [rP1]
    ld d, l
    nop
    ldh a, [$fff8]
    ld d, h
    nop
    add sp, $00
    ld d, e
    nop
    add sp, -$08
    ld d, d
    nop
    add b
    ld hl, sp+$00
    ld d, a
    nop
    ldh a, [rP1]
    ld d, l
    nop
    add sp, $00
    ld d, e
    nop
    add sp, -$08
    ld d, d
    nop
    ld hl, sp-$08
    ld e, e
    nop
    ldh a, [$fff8]
    ld e, d
    nop
    add sp, $08
    ld e, c
    nop
    add b
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    ldh a, [rP1]
    ld e, a
    nop
    ldh a, [$fff8]
    ld e, [hl]
    nop
    add sp, $00
    ld e, l
    nop
    add sp, -$08
    ld e, h
    nop
    add b
    jp hl


    ld [$0059], sp
    ld sp, hl
    nop
    ld h, a
    nop
    ld sp, hl
    ld hl, sp+$66
    nop
    pop af
    nop
    ld h, l
    nop
    pop af
    ld hl, sp+$64
    nop
    jp hl


    nop
    ld h, e
    nop
    jp hl


    ld hl, sp+$62
    nop
    add b
    ld hl, sp+$00
    ld l, l
    nop
    ld hl, sp-$08
    ld l, h
    nop
    ldh a, [rP1]
    ld l, e
    nop
    ldh a, [$fff8]
    ld l, d
    nop
    add sp, $00
    ld l, c
    nop
    add sp, -$08
    ld l, b
    nop
    add b
    ld sp, hl
    nop
    ld [hl], e
    nop
    ld sp, hl
    ld hl, sp+$72
    nop
    pop af
    nop
    ld [hl], c
    nop
    pop af
    ld hl, sp+$70
    nop
    jp hl


    nop
    ld l, a
    nop
    jp hl


    ld hl, sp+$6e
    nop
    add b
    ld sp, hl
    nop
    ld [hl], e
    nop
    ld sp, hl
    ld hl, sp+$72
    nop
    pop af
    nop
    ld [hl], a
    nop
    pop af
    ld hl, sp+$76
    nop
    jp hl


    nop
    ld [hl], l
    nop
    jp hl


    ld hl, sp+$74
    nop
    add b
    jp hl


    nop
    ld a, c
    nop
    jp hl


    ld hl, sp+$78
    nop
    pop af
    nop
    ld a, e
    nop
    pop af
    ld hl, sp+$7a
    nop
    ld sp, hl
    nop
    ld a, l
    nop
    ld sp, hl
    ld hl, sp+$7c
    nop
    add b
    ld hl, sp+$01
    add e
    nop
    ld hl, sp-$07
    add d
    nop
    ldh a, [rSB]
    add c
    nop
    ldh a, [$fff9]
    add b
    nop
    add sp, $01
    ld a, a
    nop
    add sp, -$07
    ld a, [hl]
    nop
    add b
    ldh a, [$fff0]
    add [hl]
    nop
    ld hl, sp+$00
    adc d
    nop
    ld hl, sp-$08
    adc c
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$fff8]
    add a
    nop
    add sp, $00
    add l
    nop
    add sp, -$08
    add h
    nop
    add b
    ld sp, hl
    xor $8d
    nop
    jp hl


    cp $85
    nop
    jp hl


    or $84
    nop
    ld sp, hl
    cp $8f
    nop
    ld sp, hl
    or $8e
    nop
    pop af
    cp $8c
    nop
    pop af
    or $8b
    nop
    add b
    db $fd
    ld [bc], a
    sbc b
    nop
    db $fd
    ld a, [$0097]
    db $fd
    ldh a, [c]
    sub [hl]
    nop
    push af
    ld [bc], a
    sub h
    nop
    push af
    ld a, [$0093]
    push af
    ldh a, [c]
    sub d
    nop
    db $ed
    ld a, [$0091]
    db $ed
    ldh a, [c]
    sub b
    nop
    add b
    di
    ldh a, [c]
    sub d
    nop
    di
    ld [bc], a
    sbc d
    nop
    di
    ld a, [$0099]
    ei
    ld [bc], a
    sbc l
    nop
    ei
    ld a, [$009c]
    ei
    ldh a, [c]
    sbc e
    nop
    db $eb
    ld a, [$0091]
    db $eb
    ldh a, [c]
    sub b
    nop
    add b
    or b
    ld c, b
    pop de
    ld c, b
    ldh a, [c]
    ld c, b
    inc de
    ld c, c
    inc [hl]
    ld c, c
    ld d, l
    ld c, c
    halt
    ld c, c
    ld d, l
    ld c, c
    sub a
    ld c, c
    cp b
    ld c, c
    reti


    ld c, c
    cp b
    ld c, c
    ld a, [$5549]
    ld c, c
    halt
    ld c, c
    ld d, l
    ld c, c
    sub a
    ld c, c
    dec de
    ld c, d
    inc [hl]
    ld c, d
    or b
    ld c, b
    pop de
    ld c, b
    ldh a, [c]
    ld c, b
    inc de
    ld c, c
    inc [hl]
    ld c, c
    ld hl, sp+$02
    and l
    nop
    ld hl, sp-$06
    and h
    nop
    ld hl, sp-$0e
    and e
    nop
    ldh a, [rSC]
    and d
    nop
    ldh a, [$fffa]
    and c
    nop
    ldh a, [$fff2]
    and b
    nop
    add sp, $02
    sbc a
    nop
    add sp, -$06
    sbc [hl]
    nop
    add b
    ld hl, sp+$01
    xor l
    nop
    ld hl, sp-$07
    xor h
    nop
    ld hl, sp-$0f
    xor e
    nop
    ldh a, [rSB]
    xor d
    nop
    ldh a, [$fff9]
    xor c
    nop
    ldh a, [$fff1]
    xor b
    nop
    add sp, $01
    and a
    nop
    add sp, -$07
    and [hl]
    nop
    add b
    ld hl, sp+$02
    or l
    nop
    ld hl, sp-$06
    or h
    nop
    ldh a, [rSC]
    or e
    nop
    ldh a, [$fffa]
    or d
    nop
    ldh a, [$fff2]
    or c
    nop
    add sp, $02
    or b
    nop
    add sp, -$06
    xor a
    nop
    add sp, -$0e
    xor [hl]
    nop
    add b
    ld hl, sp+$02
    cp l
    nop
    ld hl, sp-$06
    cp h
    nop
    ld hl, sp-$0e
    cp e
    nop
    ldh a, [rSC]
    cp d
    nop
    ldh a, [$fffa]
    cp c
    nop
    ldh a, [$fff2]
    cp b
    nop
    add sp, $02
    or a
    nop
    add sp, -$06
    or [hl]
    nop
    add b
    add sp, $02
    or a
    nop
    add sp, -$06
    or [hl]
    nop
    ld hl, sp-$06
    cp h
    nop
    ld hl, sp-$0e
    cp e
    nop
    ld hl, sp+$02
    pop bc
    nop
    ldh a, [rSC]
    ret nz

    nop
    ldh a, [$fffa]
    cp a
    nop
    ldh a, [$fff2]
    cp [hl]
    nop
    add b
    ld hl, sp+$07
    ret


    nop

jr_00d_4959:
    ld hl, sp-$01
    ret z

    nop
    ld hl, sp-$09
    rst $00
    nop
    ldh a, [rTAC]
    add $00
    ldh a, [rIE]
    push bc
    nop
    ldh a, [$fff7]
    call nz, $e800
    ld [bc], a
    jp $e800


    ld a, [$00c2]
    add b
    ld hl, sp+$09
    rst $08
    nop
    ld hl, sp+$01
    adc $00
    ld hl, sp-$07
    call $e800
    inc b
    jp $e800


    db $fc
    jp nz, $f000

    add hl, bc
    call z, $f000
    ld bc, $00cb
    ldh a, [$fff9]
    jp z, $8000

    add sp, $03
    pop de
    nop

jr_00d_499b:
    add sp, -$05
    ret nc

    nop
    ldh a, [$ff08]
    call nc, $f000
    nop
    db $d3
    nop
    ldh a, [$fff8]
    jp nc, $f800

    ld [$00d7], sp
    ld hl, sp+$00
    sub $00
    ld hl, sp-$08

jr_00d_49b5:
    push de
    nop
    add b
    ld hl, sp-$0f
    ret


    jr nz, jr_00d_49b5

jr_00d_49bd:
    ld sp, hl
    ret z

    jr nz, @-$06

    ld bc, $20c7
    ldh a, [$fff1]
    add $20
    ldh a, [$fff9]
    push bc
    jr nz, jr_00d_49bd

    ld bc, $20c4
    add sp, -$0a
    jp $e820


    cp $c2
    jr nz, jr_00d_4959

    ld hl, sp-$11
    rst $08
    jr nz, @-$06

    rst $30
    adc $20
    ld hl, sp-$01
    call $e820
    db $f4

jr_00d_49e7:
    jp $e820


    db $fc
    jp nz, $f020

    rst $28
    call z, $f020
    rst $30

jr_00d_49f3:
    sla b
    ldh a, [rIE]
    jp z, $8020

    add sp, -$0c
    pop de
    jr nz, jr_00d_49e7

    db $fc
    ret nc

    jr nz, jr_00d_49f3

    rst $28
    call nc, $f020
    rst $30
    db $d3
    jr nz, @-$0e

jr_00d_4a0b:
    rst $38
    jp nc, $f820

    rst $28
    rst $10
    jr nz, jr_00d_4a0b

    rst $30
    sub $20
    ld hl, sp-$01
    push de
    jr nz, jr_00d_499b

    add sp, $00
    reti


    nop
    add sp, -$08
    ret c

    nop
    ldh a, [rP1]
    db $db
    nop
    ldh a, [$fff8]
    jp c, $f800

    nop
    db $dd
    nop
    ld hl, sp-$08
    call c, $8000
    ld hl, sp+$00
    ld l, l
    nop

Call_00d_4a38:
    ld hl, sp-$08
    ld l, h
    nop
    ldh a, [rP1]
    ld l, e
    nop
    ldh a, [$fff8]
    ld l, d

jr_00d_4a43:
    nop
    add sp, $00
    ld l, c
    nop
    add sp, -$08
    ld l, b
    nop
    add b
    ld e, l
    ld c, d
    ld l, [hl]
    ld c, d
    ld a, a
    ld c, d
    sub b
    ld c, d
    and c
    ld c, d
    or d
    ld c, d
    jp $d44a


    ld c, d
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    ldh a, [rP1]
    ld bc, $f000
    ld hl, sp+$00
    nop
    add b
    rst $30
    nop
    dec b
    nop
    rst $30
    ld hl, sp+$04
    nop
    rst $28
    nop
    ld bc, $ef00
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld c, $00
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add b
    rst $30
    nop
    ld de, $f700
    ld hl, sp+$10
    nop
    rst $28
    nop
    dec c
    nop
    rst $28
    ld hl, sp+$0c
    nop
    add b
    ld hl, sp-$08
    rrca
    jr nz, @-$06

    nop
    ld c, $20
    ldh a, [$fff8]
    dec c
    jr nz, @-$0e

jr_00d_4aae:
    nop
    inc c
    jr nz, @-$7e

    rst $30
    ld hl, sp+$11
    jr nz, jr_00d_4aae

    nop
    db $10
    jr nz, @-$0f

    ld hl, sp+$0d
    jr nz, jr_00d_4aae

    nop
    inc c
    jr nz, jr_00d_4a43

    ld hl, sp+$01
    add hl, bc
    nop
    ld hl, sp-$07
    ld [$f000], sp
    ld bc, $0007
    ldh a, [$fff9]
    ld b, $00
    add b
    rst $30
    ld bc, $000b
    rst $30
    ld sp, hl
    ld a, [bc]

jr_00d_4adb:
    nop
    rst $28
    ld bc, $0007
    rst $28
    ld sp, hl
    ld b, $00
    add b
    push af
    ld c, d
    ld b, $4b
    rla
    ld c, e
    jr z, jr_00d_4b38

    add hl, sp
    ld c, e
    ld c, d
    ld c, e
    ld e, e
    ld c, e
    ld l, h
    ld c, e
    ldh a, [rP1]
    ld bc, $f000
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    add b
    pop af
    nop
    ld bc, $f100
    ld hl, sp+$00
    nop
    ld sp, hl
    nop
    inc de
    nop
    ld sp, hl
    ld hl, sp+$12
    nop
    add b
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add b
    ld sp, hl
    nop
    rla
    nop

jr_00d_4b2c:
    ld sp, hl
    ld hl, sp+$16
    nop
    pop af
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0c
    nop

jr_00d_4b38:
    add b
    ld hl, sp-$08
    rla
    jr nz, @-$06

    nop
    ld d, $20
    ldh a, [$fff8]
    dec c
    jr nz, @-$0e

    nop
    inc c

jr_00d_4b48:
    jr nz, @-$7e

    ld sp, hl
    ld hl, sp+$17
    jr nz, jr_00d_4b48

    nop
    ld d, $20
    pop af
    ld hl, sp+$0d
    jr nz, jr_00d_4b48

    nop
    inc c
    jr nz, jr_00d_4adb

    ldh a, [rP1]
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    ld hl, sp+$00
    dec d
    nop
    ld hl, sp-$08
    inc d
    nop
    add b
    pop af
    nop
    rlca
    nop
    pop af
    ld hl, sp+$06
    nop
    ld sp, hl
    nop
    dec d
    nop
    ld sp, hl
    ld hl, sp+$14
    nop
    add b
    sub e
    ld c, e
    xor h
    ld c, e
    push bc
    ld c, e
    and $4b
    rlca
    ld c, h
    jr nz, jr_00d_4bd5

    ld sp, $424c
    ld c, h
    ld e, e
    ld c, h
    ld a, h
    ld c, h

jr_00d_4b91:
    sub l
    ld c, h
    pop af
    nop
    dec de
    nop
    pop af
    ld hl, sp+$1a
    nop
    ld sp, hl
    nop
    dec e
    nop
    ld sp, hl
    ld hl, sp+$1c
    nop
    jp hl


    ld hl, sp+$0d
    jr nz, jr_00d_4b91

    nop
    inc c
    jr nz, jr_00d_4b2c

    ld a, [$2101]
    nop
    ld a, [$20f9]
    nop
    ldh a, [c]
    ld bc, $001f
    ldh a, [c]
    ld sp, hl
    ld e, $00
    ld [$0df9], a
    jr nz, @-$14

    ld bc, $200c
    add b
    or $00
    add hl, hl
    nop
    or $f8
    jr z, jr_00d_4bcd

jr_00d_4bcd:
    xor $00
    daa
    nop
    xor $f8
    ld h, $00

jr_00d_4bd5:
    and $00
    dec h
    nop
    and $f8
    inc h
    nop
    sbc $00
    inc hl
    nop
    sbc $f8
    ld [hl+], a
    nop
    add b
    sub $00
    inc hl
    nop
    sub $f8
    ld [hl+], a
    nop
    sbc $00
    dec h
    nop
    sbc $f8
    inc h
    nop
    xor $00
    dec l
    nop
    xor $f8

jr_00d_4bfc:
    inc l
    nop
    and $00
    dec hl
    nop
    and $f8
    ld a, [hl+]
    nop
    add b
    db $f4
    nop
    inc sp
    nop
    db $f4
    ld hl, sp+$32
    nop
    db $e4
    nop
    cpl
    nop
    db $e4
    ld hl, sp+$2e
    nop

jr_00d_4c17:
    db $ec
    nop
    ld sp, $ec00
    ld hl, sp+$30
    nop
    add b
    ldh a, [c]
    ld hl, sp+$0d

jr_00d_4c23:
    jr nz, jr_00d_4c17

    nop
    inc c
    jr nz, jr_00d_4c23

    nop
    dec [hl]
    nop
    ld a, [$34f8]
    nop
    add b
    ldh a, [c]
    nop
    dec c
    nop
    ldh a, [c]

jr_00d_4c36:
    ld hl, sp+$0c
    nop

jr_00d_4c39:
    ld a, [$1900]
    nop

jr_00d_4c3d:
    ld a, [$18f8]
    nop
    add b

jr_00d_4c42:
    and $f8
    inc hl
    jr nz, @-$18

    nop
    ld [hl+], a

jr_00d_4c49:
    jr nz, jr_00d_4c39

    ld hl, sp+$25

jr_00d_4c4d:
    jr nz, jr_00d_4c3d

    nop
    inc h
    jr nz, jr_00d_4c49

    ld hl, sp+$27
    jr nz, jr_00d_4c4d

    nop
    ld h, $20
    add b
    sub $f8
    inc hl
    jr nz, jr_00d_4c36

    nop
    ld [hl+], a

jr_00d_4c62:
    jr nz, jr_00d_4c42

    ld hl, sp+$25

jr_00d_4c66:
    jr nz, @-$20

    nop
    inc h
    jr nz, @-$18

    ld hl, sp+$2b
    jr nz, @-$18

    nop
    ld a, [hl+]
    jr nz, jr_00d_4c62

    ld hl, sp+$2d
    jr nz, jr_00d_4c66

    nop
    inc l
    jr nz, jr_00d_4bfc

    ldh [c], a
    ld hl, sp+$2f
    jr nz, @-$1c

    nop
    ld l, $20
    ld [$31f8], a
    jr nz, @-$14

    nop
    jr nc, jr_00d_4cac

    ldh a, [c]
    ld hl, sp+$33
    jr nz, @-$0c

    nop
    ld [hl-], a
    jr nz, @-$7e

    jp hl


    nop

jr_00d_4c97:
    dec c
    nop
    jp hl


    ld hl, sp+$0c
    nop
    ld sp, hl
    ld hl, sp+$1d
    jr nz, @-$05

    nop
    inc e
    jr nz, jr_00d_4c97

    ld hl, sp+$1b
    jr nz, @-$0d

    nop
    ld a, [de]

jr_00d_4cac:
    jr nz, @-$7e

    ld l, $4d
    ld b, a
    ld c, l
    ld l, $4d
    ld b, a
    ld c, l
    ld l, $4d
    ld h, b
    ld c, l
    ld a, c
    ld c, l
    sub d
    ld c, l
    ld a, c
    ld c, l
    ld h, b
    ld c, l
    ld h, b
    ld c, l
    xor e
    ld c, l
    ret z

    ld c, l
    xor e
    ld c, l
    ret z

    ld c, l
    xor e
    ld c, l
    ret z

    ld c, l
    xor e
    ld c, l
    ld h, b
    ld c, l
    push hl
    ld c, l
    ld [bc], a
    ld c, [hl]
    push hl
    ld c, l
    ld [bc], a
    ld c, [hl]
    push hl
    ld c, l
    ld [bc], a
    ld c, [hl]
    push hl
    ld c, l
    ld h, b
    ld c, l
    rra
    ld c, [hl]
    jr c, jr_00d_4d36

    ld d, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    add e
    ld c, [hl]
    sbc h
    ld c, [hl]
    or l
    ld c, [hl]
    sbc h
    ld c, [hl]
    or l
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld l, d
    ld c, [hl]
    sub $4e
    db $eb
    ld c, [hl]
    nop
    ld c, a
    add hl, de
    ld c, a
    ld [hl-], a
    ld c, a
    ld c, e
    ld c, a
    ld h, h
    ld c, a
    ld a, l
    ld c, a
    sbc d
    ld c, a
    ld a, l
    ld c, a
    ld h, h
    ld c, a
    ld c, e
    ld c, a
    ld h, h
    ld c, a
    ld a, l
    ld c, a
    sbc d
    ld c, a
    ld a, l
    ld c, a
    ld h, h
    ld c, a
    ld [hl-], a
    ld c, a
    or a
    ld c, a
    ret nc

    ld c, a
    ld hl, sp+$00
    dec sp
    nop
    ld hl, sp-$08
    ld a, [hl-]
    nop

jr_00d_4d36:
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00d_4d3e

jr_00d_4d3e:
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    add sp, $00
    ld [hl], d
    nop
    add sp, -$08
    ld [hl], c
    nop
    ldh a, [rP1]
    ld [hl], h
    nop
    ldh a, [$fff8]
    ld [hl], e
    nop
    ld hl, sp+$00
    halt
    nop
    ld hl, sp-$08
    ld [hl], l
    nop
    add b
    add sp, $00
    ld [hl], d
    nop
    add sp, -$08
    ld [hl], c
    nop
    ld hl, sp+$00
    ccf
    nop
    ld hl, sp-$08
    ld a, $00
    ldh a, [rP1]
    dec a
    nop
    ldh a, [$fff8]
    inc a
    nop
    add b
    ld hl, sp+$00
    ld b, l
    nop
    ld hl, sp-$08
    ld b, h
    nop
    add sp, $00
    ld b, c
    nop
    add sp, -$08
    ld b, b
    nop
    ldh a, [rP1]
    ld b, e
    nop
    ldh a, [$fff8]
    ld b, d
    nop
    add b
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b
    nop
    add b
    jp hl


    db $fc
    ld c, l
    nop
    jp hl


    db $f4
    ld c, h
    nop
    pop af
    ld hl, sp+$4f
    nop
    pop af
    ldh a, [$ff4e]
    nop
    ld sp, hl
    nop
    ld d, d
    nop
    ld sp, hl
    ld hl, sp+$51
    nop
    pop af
    nop
    ld d, b
    nop
    add b
    jp hl


    nop
    ld d, l
    nop
    jp hl


    ld hl, sp+$54
    nop
    jp hl


    ldh a, [rHDMA3]

jr_00d_4dd3:
    nop
    pop af
    db $fc
    ld d, a
    nop
    pop af
    db $f4
    ld d, [hl]
    nop
    ld sp, hl
    nop
    ld e, c

jr_00d_4ddf:
    nop
    ld sp, hl
    ld hl, sp+$58

jr_00d_4de3:
    nop
    add b
    jp hl


    dec b
    ld c, h
    jr nz, jr_00d_4dd3

    db $fd
    ld c, l
    jr nz, jr_00d_4ddf

    add hl, bc
    ld c, [hl]

jr_00d_4df0:
    jr nz, jr_00d_4de3

    ld bc, $204f
    ld sp, hl
    ld sp, hl
    ld d, d
    jr nz, @-$05

    ld bc, $2051
    pop af
    ld sp, hl
    ld d, b

jr_00d_4e00:
    jr nz, @-$7e

    jp hl


    ld sp, hl

jr_00d_4e04:
    ld d, l
    jr nz, jr_00d_4df0

    ld bc, $2054
    jp hl


    add hl, bc
    ld d, e
    jr nz, jr_00d_4e00

    db $fd

jr_00d_4e10:
    ld d, a
    jr nz, jr_00d_4e04

    dec b

jr_00d_4e14:
    ld d, [hl]
    jr nz, jr_00d_4e10

    ld sp, hl
    ld e, c
    jr nz, jr_00d_4e14

    ld bc, $2058
    add b
    db $ec
    nop
    dec c
    nop
    db $ec
    ld hl, sp+$0c
    nop
    db $fc
    nop
    sub c
    nop
    db $fc
    ld hl, sp-$70
    nop
    db $f4
    nop
    adc a
    nop
    db $f4
    ld hl, sp-$72
    nop
    add b
    ld [$0dff], a
    nop
    ld [$0cf7], a
    nop
    ld a, [$8d00]
    nop
    ld a, [$8cf8]
    nop
    ldh a, [c]
    nop
    adc e
    nop
    ldh a, [c]
    ld hl, sp-$76
    nop
    add b
    ld sp, hl
    inc b
    or $00
    jp hl


    rst $38
    dec c
    nop
    jp hl


    rst $30
    inc c
    nop
    ld sp, hl
    db $fc
    ld a, c
    nop
    pop af
    nop
    ld a, b
    nop
    pop af
    ld hl, sp+$77
    nop
    add b
    ld sp, hl

jr_00d_4e6b:
    inc b
    or $00
    ld sp, hl
    db $fc
    ld a, h
    nop
    pop af
    nop
    ld a, e
    nop
    pop af
    ld hl, sp+$7a
    nop
    jp hl


    rst $38
    dec c
    nop
    jp hl


    rst $30
    inc c
    nop
    add b
    ld hl, sp+$00
    rst $30
    nop
    ld hl, sp-$08
    ld a, a
    nop
    ldh a, [rP1]
    ld a, [hl]
    nop
    ldh a, [$fff8]
    ld a, l
    nop
    add sp, $00
    dec c
    nop
    add sp, -$08

jr_00d_4e99:
    inc c
    nop
    add b
    ld hl, sp-$01
    add e
    nop
    ld hl, sp-$09
    add d
    nop
    ldh a, [rIE]
    add c
    nop
    ldh a, [$fff7]
    add b
    nop
    add sp, $00
    dec c
    nop
    add sp, -$08
    inc c
    nop
    add b
    ld hl, sp-$01
    adc c
    nop
    ld hl, sp-$09
    adc b
    nop
    ld hl, sp-$11
    add a
    nop
    ldh a, [rIE]
    add [hl]
    nop
    ldh a, [$fff7]
    add l
    nop
    ldh a, [$ffef]
    add h
    nop
    add sp, -$01
    dec c

jr_00d_4ed0:
    nop
    add sp, -$09
    inc c
    nop
    add b
    ld sp, hl
    db $fc
    and e
    nop
    pop af
    nop
    and d
    nop
    pop af
    ld hl, sp-$5f
    nop
    jp hl


    ld hl, sp+$0d
    jr nz, jr_00d_4ed0

    nop
    inc c
    jr nz, jr_00d_4e6b

    ld sp, hl
    db $fc
    xor b
    nop
    pop af
    nop
    and a
    nop
    pop af
    ld hl, sp-$5a
    nop
    jp hl


    nop
    and l
    nop

jr_00d_4efb:
    jp hl


    ld hl, sp-$5c
    nop

jr_00d_4eff:
    add b
    ld a, [$8dfa]
    jr nz, jr_00d_4eff

    ld [bc], a
    adc h
    jr nz, jr_00d_4efb

    ld a, [$208b]
    ldh a, [c]
    ld [bc], a
    adc d
    jr nz, jr_00d_4efb

    ei
    dec c
    jr nz, jr_00d_4eff

    inc bc
    inc c
    jr nz, jr_00d_4e99

    add sp, -$01
    ld a, [$e800]
    rst $30
    ld sp, hl
    nop
    ld hl, sp-$01
    ld hl, sp+$00
    ld hl, sp-$09
    xor e
    nop
    ldh a, [rIE]
    xor d
    nop
    ldh a, [$fff7]
    xor c
    nop
    add b
    ldh a, [rSB]
    ld e, e
    nop
    ldh a, [$fff9]
    ld e, d
    nop
    ld hl, sp+$01
    ld e, l
    nop
    ld hl, sp-$07
    ld e, h
    nop
    add sp, $01
    sub [hl]
    nop
    add sp, -$07
    sub l
    nop
    add b
    rst $30
    ld bc, $0063
    rst $30
    ld sp, hl
    ld h, d
    nop
    rst $28
    ld bc, $0061
    rst $28
    ld sp, hl
    ld h, b
    nop
    rst $20
    ld bc, $005f
    rst $20
    ld sp, hl
    ld e, [hl]
    nop
    add b
    ld sp, hl
    ld bc, $0067
    ld sp, hl
    ld sp, hl
    ld h, [hl]
    nop
    pop af
    ld bc, $0065
    pop af
    ld sp, hl
    ld h, h
    nop
    jp hl


    ld bc, $0007
    jp hl


    ld sp, hl
    ld b, $00
    add b
    ldh a, [rSB]
    ld l, c
    nop
    ldh a, [$fff9]
    ld l, b
    nop
    ld hl, sp+$01
    ld l, h
    nop
    ld hl, sp-$07
    ld l, e
    nop
    ld hl, sp-$0f
    ld l, d
    nop
    add sp, $01
    rlca
    nop
    add sp, -$07
    ld b, $00
    add b
    rst $30
    ld bc, $0070
    rst $30
    ld sp, hl
    ld l, a
    nop
    rst $20
    ld bc, $005f
    rst $20
    ld sp, hl
    ld e, [hl]
    nop
    ldh a, [$fff1]
    ld l, d
    nop
    rst $28
    ld bc, $006e
    rst $28
    ld sp, hl
    ld l, l
    nop
    add b
    ld hl, sp+$01
    sbc d
    nop
    ld hl, sp-$07
    sbc c
    nop
    add sp, $01
    sub [hl]
    nop
    add sp, -$07
    sub l
    nop
    ldh a, [rSB]
    sbc b
    nop
    ldh a, [$fff9]
    sub a
    nop
    add b
    ld sp, hl
    nop
    and b
    nop
    ld sp, hl
    ld hl, sp-$61
    nop
    jp hl


    nop
    sbc h
    nop
    jp hl


    ld hl, sp-$65
    nop
    pop af
    nop
    sbc [hl]
    nop
    pop af
    ld hl, sp-$63
    nop
    add b
    ld h, h
    ld d, b
    ld bc, $4350
    ld d, b
    xor [hl]
    ld d, b
    rst $10
    ld d, b
    nop
    ld d, c
    and h
    ld d, c
    call $f651
    ld d, c
    call nc, $9252
    ld d, d
    or e
    ld d, d
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_00d_5009

jr_00d_5009:
    ldh a, [rP1]
    scf
    nop
    ldh a, [$fff8]
    ld [hl], $00
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ldh [rP1], a
    inc sp
    nop
    ldh [$fff8], a
    ld [hl-], a
    nop
    add b
    ldh [rP1], a
    inc sp
    nop
    ldh [$fff8], a
    ld [hl-], a
    nop
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh a, [$fff8]
    ld a, $00
    ld hl, sp+$00
    ld b, c
    nop
    ld hl, sp-$08
    ld b, b
    nop
    add b
    rst $18
    nop
    inc sp
    nop
    rst $18
    ld hl, sp+$32
    nop
    rst $20
    nop
    ld b, e
    nop
    rst $20
    ld hl, sp+$42
    nop
    rst $28
    nop
    ld b, l
    nop
    rst $28
    ld hl, sp+$44
    nop
    rst $30
    nop
    ld b, a
    nop
    rst $30
    ld hl, sp+$46
    nop
    add b
    pop hl
    nop
    inc sp
    nop
    pop hl
    ld hl, sp+$32
    nop
    jp hl


    nop
    dec [hl]
    nop
    jp hl


    ld hl, sp+$34
    nop
    pop af
    nop
    dec sp
    nop
    pop af
    ld hl, sp+$3a
    nop
    ld sp, hl
    nop
    dec a
    nop
    ld sp, hl
    ld hl, sp+$3c
    nop
    add b
    ld a, [$0904]
    nop
    ld a, [$08fc]
    nop
    ldh a, [c]
    ld b, $07
    nop
    ldh a, [c]
    cp $06
    nop
    ldh a, [c]
    or $05
    nop
    ld [$0406], a
    nop
    ld [$03fe], a
    nop
    ld [$02f6], a
    nop
    ldh [c], a
    nop
    ld bc, $e200
    ld hl, sp+$00
    nop
    add b
    ldh [c], a
    nop
    ld bc, $e200
    ld hl, sp+$00
    nop
    ld a, [$1101]
    nop
    ld a, [$10f9]
    nop
    ldh a, [c]
    ld b, $0f
    nop
    ldh a, [c]
    cp $0e
    nop
    ldh a, [c]
    or $0d
    nop
    ld [$0c06], a
    nop
    ld [$0bfe], a
    nop
    ld [$0af6], a
    nop
    add b
    ldh [rP1], a
    ld bc, $e000
    ld hl, sp+$00
    nop
    ld hl, sp+$04
    add hl, de
    nop
    ld hl, sp-$04
    jr jr_00d_50e7

jr_00d_50e7:
    ldh a, [rTMA]
    rla
    nop
    ldh a, [$fffe]
    ld d, $00
    ldh a, [$fff6]
    dec d
    nop
    add sp, $06
    inc d
    nop
    add sp, -$02
    inc de
    nop
    add sp, -$0a
    ld [de], a
    nop
    add b
    db $e3
    nop
    ld bc, $e300
    ld hl, sp+$00
    nop
    db $eb
    ld b, $04
    nop
    db $eb
    cp $03
    nop
    db $eb
    or $1a
    nop
    di
    ld b, $1d
    nop
    di
    cp $1c
    nop
    di
    or $1b
    nop
    ei
    inc b
    rra
    nop

jr_00d_5124:
    ei
    db $fc
    ld e, $00
    add b
    push af
    ld b, $29
    nop
    push af
    cp $28
    nop
    push af
    or $27
    nop
    db $ed
    ld b, $26
    nop
    db $ed
    cp $25
    nop
    db $ed
    or $24
    nop
    push hl
    cp $23
    nop
    push hl
    or $22
    nop
    db $dd
    cp $21
    nop

jr_00d_514d:
    db $dd
    or $20
    nop
    add b
    ldh [rSB], a
    ld hl, $e000
    ld sp, hl
    jr nz, jr_00d_515a

jr_00d_515a:
    add sp, $01
    dec hl
    nop
    add sp, -$07
    ld a, [hl+]
    nop
    ldh a, [$ff08]
    ld l, $00
    ldh a, [rP1]
    dec l
    nop
    ldh a, [$fff8]
    inc l
    nop
    ld hl, sp-$08
    cpl
    nop
    ld hl, sp+$08
    ld sp, $f800
    nop
    jr nc, jr_00d_517a

jr_00d_517a:
    add b
    ld a, [$09f4]

jr_00d_517e:
    jr nz, jr_00d_517a

    db $fc
    ld [$f220], sp
    pop af
    rlca
    jr nz, jr_00d_517a

    ld sp, hl
    ld b, $20

jr_00d_518b:
    ldh a, [c]
    ld bc, $2005
    ld [$04f1], a
    jr nz, jr_00d_517e

    ld sp, hl
    inc bc
    jr nz, @-$14

    ld bc, $2002
    ldh [c], a
    rst $30
    ld bc, $e220
    rst $38
    nop
    jr nz, jr_00d_5124

    ldh [c], a
    ld hl, sp+$01

jr_00d_51a7:
    jr nz, jr_00d_518b

    nop
    nop

jr_00d_51ab:
    jr nz, jr_00d_51a7

    rst $30
    ld de, $fa20
    rst $38
    db $10
    jr nz, jr_00d_51a7

    ldh a, [c]
    rrca
    jr nz, jr_00d_51ab

    ld a, [$200e]
    ldh a, [c]
    ld [bc], a
    dec c
    jr nz, jr_00d_51ab

    ldh a, [c]
    inc c
    jr nz, @-$14

    ld a, [$200b]
    ld [$0a02], a
    jr nz, jr_00d_514d

    ldh [$fff8], a
    ld bc, $e020

jr_00d_51d2:
    nop
    nop
    jr nz, @-$06

jr_00d_51d6:
    db $f4
    add hl, de
    jr nz, jr_00d_51d2

    db $fc
    jr jr_00d_51fd

    ldh a, [$fff2]
    rla
    jr nz, jr_00d_51d2

    ld a, [$2016]
    ldh a, [rSC]
    dec d
    jr nz, jr_00d_51d2

jr_00d_51ea:
    ldh a, [c]
    inc d
    jr nz, jr_00d_51d6

jr_00d_51ee:
    ld a, [$2013]
    add sp, $02
    ld [de], a
    jr nz, @-$7e

    db $e3
    ld hl, sp+$01
    jr nz, @-$1b

    nop
    nop

jr_00d_51fd:
    jr nz, jr_00d_51ea

    ldh a, [c]
    inc b
    jr nz, jr_00d_51ee

    ld a, [$2003]
    db $eb
    ld [bc], a
    ld a, [de]
    jr nz, @-$0b

    ldh a, [c]
    dec e
    jr nz, @-$0b

    ld a, [$201c]

jr_00d_5212:
    di
    ld [bc], a
    dec de
    jr nz, jr_00d_5212

    db $f4
    rra
    jr nz, @-$03

    db $fc

jr_00d_521c:
    ld e, $20
    add b
    ld hl, sp-$0e
    add hl, hl
    jr nz, jr_00d_521c

jr_00d_5224:
    ld a, [$2028]
    ld hl, sp+$02
    daa
    jr nz, jr_00d_521c

    ldh a, [c]
    ld h, $20
    ldh a, [$fffa]
    dec h
    jr nz, jr_00d_5224

    ld [bc], a
    inc h
    jr nz, @-$16

    ld a, [$2023]
    add sp, $02

jr_00d_523d:
    ld [hl+], a
    jr nz, @-$1e

    ld a, [$2021]
    ldh [rSC], a
    jr nz, jr_00d_5267

    add b
    ldh [$fff8], a
    ld hl, $e020
    nop
    jr nz, jr_00d_5270

    add sp, -$08
    dec hl
    jr nz, jr_00d_523d

    nop
    ld a, [hl+]
    jr nz, @-$0e

    pop af
    ld l, $20
    ldh a, [$fff9]
    dec l
    jr nz, @-$0e

jr_00d_5261:
    ld bc, $202c
    ld hl, sp+$01
    cpl

jr_00d_5267:
    jr nz, jr_00d_5261

    pop af
    ld sp, $f820
    ld sp, hl
    jr nc, jr_00d_5290

jr_00d_5270:
    add b
    ld sp, hl
    ld bc, $004f
    ld sp, hl
    ld sp, hl
    ld c, [hl]
    nop
    pop af
    ld bc, $004d
    pop af
    ld sp, hl
    ld c, h
    nop
    jp hl


    ld bc, $004b
    jp hl


    ld sp, hl
    ld c, d
    nop
    pop hl
    ld bc, $0049
    pop hl
    ld sp, hl
    ld c, b

jr_00d_5290:
    nop
    add b
    ldh [c], a
    ld bc, $0049
    ldh [c], a
    ld sp, hl
    ld c, b
    nop
    ld a, [$5501]
    nop
    ld a, [$54f9]
    nop
    ldh a, [c]
    ld bc, $0053
    ldh a, [c]
    ld sp, hl
    ld d, d
    nop
    ld [$5101], a
    nop
    ld [$50f9], a
    nop
    add b
    ldh [c], a
    ld bc, $0049
    ldh [c], a
    ld sp, hl
    ld c, b
    nop
    ld [$5701], a
    nop
    ld [$56f9], a
    nop
    ldh a, [c]
    ld bc, $0059
    ldh a, [c]
    ld sp, hl
    ld e, b
    nop
    ld a, [$5b01]
    nop
    ld a, [$5af9]
    nop
    add b
    rst $18
    ld bc, $0049
    rst $18
    ld sp, hl
    ld c, b
    nop
    rst $20
    ld bc, $005d
    rst $20
    ld sp, hl
    ld e, h
    nop
    rst $28
    ld bc, $005f
    rst $28
    ld sp, hl
    ld e, [hl]
    nop
    rst $30
    ld bc, $0061
    rst $30
    ld sp, hl
    ld h, b
    nop
    add b
    dec l
    ld d, e
    ld c, [hl]
    ld d, e
    ld l, a
    ld d, e
    sub b
    ld d, e
    or c
    ld d, e
    jp nc, $2d53

    ld d, e
    di
    ld d, e
    inc e
    ld d, h
    ld b, l
    ld d, h
    ld l, [hl]
    ld d, h
    sub a
    ld d, h
    ret nz

    ld d, h
    jp hl


    ld d, h
    ld [de], a
    ld d, l
    dec sp
    ld d, l
    ld h, h
    ld d, l
    adc l
    ld d, l
    or [hl]
    ld d, l
    rst $18
    ld d, l
    ld [$3156], sp
    ld d, [hl]
    ld d, d
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    sub h
    ld d, [hl]
    or l
    ld d, [hl]
    sub $56
    rst $30
    ld d, [hl]
    ldh [rP1], a
    inc sp
    nop
    ldh [$fff8], a
    ld [hl-], a
    nop
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh a, [$fff8]
    ld a, $00
    ld hl, sp+$00
    ld b, c
    nop
    ld hl, sp-$08
    ld b, b
    nop
    add b
    pop hl
    nop
    inc sp
    nop
    pop hl
    ld hl, sp+$32
    nop
    jp hl


    nop
    ld b, e
    nop
    jp hl


    ld hl, sp+$42
    nop
    pop af
    nop
    ld b, l
    nop
    pop af
    ld hl, sp+$44
    nop
    ld sp, hl
    nop
    ld b, a
    nop
    ld sp, hl
    ld hl, sp+$46
    nop
    add b
    db $dd
    nop
    inc sp
    nop
    db $dd
    ld hl, sp+$32
    nop
    push hl
    nop
    ld b, e
    nop
    push hl
    ld hl, sp+$42
    nop
    db $ed
    nop
    ld b, l
    nop
    db $ed
    ld hl, sp+$44
    nop
    push af
    nop
    ld b, a
    nop
    push af
    ld hl, sp+$46
    nop
    add b
    push de
    nop
    inc sp
    nop
    push de
    ld hl, sp+$32
    nop
    db $dd
    nop
    ld b, e
    nop
    db $dd
    ld hl, sp+$42
    nop
    push hl
    nop
    ld b, l
    nop
    push hl
    ld hl, sp+$44
    nop
    db $ed
    nop
    ld b, a
    nop
    db $ed
    ld hl, sp+$46
    nop
    add b
    reti


    nop
    inc sp
    nop
    reti


    ld hl, sp+$32
    nop
    pop hl
    nop
    ld b, e
    nop
    pop hl
    ld hl, sp+$42
    nop
    jp hl


    nop
    ld b, l
    nop
    jp hl


    ld hl, sp+$44
    nop
    pop af
    nop
    ld b, a
    nop
    pop af
    ld hl, sp+$46
    nop
    add b
    pop hl
    nop
    inc sp
    nop
    pop hl
    ld hl, sp+$32
    nop
    jp hl


    nop
    dec [hl]
    nop
    jp hl


    ld hl, sp+$34
    nop
    pop af
    nop
    scf
    nop
    pop af
    ld hl, sp+$36
    nop
    ld sp, hl
    nop
    add hl, sp
    nop
    ld sp, hl
    ld hl, sp+$38
    nop
    add b
    ldh [c], a
    nop
    ld bc, $e200
    ld hl, sp+$00
    nop
    ld [$0c06], a
    nop
    ld [$0bfe], a
    nop
    ld [$0af6], a
    nop
    ldh a, [c]
    ld b, $0f
    nop
    ldh a, [c]
    cp $0e
    nop
    ldh a, [c]
    or $0d
    nop
    ld a, [$1101]
    nop
    ld a, [$10f9]
    nop
    add b
    db $dd
    rst $38
    ld hl, $dd00
    rst $30
    jr nz, jr_00d_5424

jr_00d_5424:
    push hl
    nop
    inc hl
    nop
    push hl
    ld hl, sp+$22
    nop
    db $ed
    ld b, $26
    nop
    db $ed
    cp $25
    nop
    db $ed
    or $24
    nop
    push af
    ld b, $29
    nop
    push af
    cp $28
    nop
    push af
    or $27
    nop
    add b
    reti


    rst $38
    ld hl, $d900
    rst $30
    jr nz, jr_00d_544d

jr_00d_544d:
    pop hl
    nop
    inc hl
    nop
    pop hl
    ld hl, sp+$22
    nop
    jp hl


    ld b, $26
    nop
    jp hl


    cp $25
    nop
    jp hl


    or $24
    nop
    pop af
    ld b, $29
    nop
    pop af
    cp $28
    nop
    pop af
    or $27
    nop
    add b
    push de
    rst $38
    ld hl, $d500
    rst $30
    jr nz, jr_00d_5476

jr_00d_5476:
    db $dd
    nop
    inc hl
    nop
    db $dd
    ld hl, sp+$22
    nop
    push hl
    ld b, $26
    nop
    push hl
    cp $25
    nop
    push hl
    or $24
    nop
    db $ed
    ld b, $29
    nop
    db $ed
    cp $28
    nop
    db $ed
    or $27
    nop
    add b
    reti


    rst $38
    ld hl, $d900
    rst $30
    jr nz, jr_00d_549f

jr_00d_549f:
    pop hl
    nop
    inc hl
    nop
    pop hl
    ld hl, sp+$22
    nop
    jp hl


    ld b, $26
    nop
    jp hl


    cp $25
    nop
    jp hl


    or $24
    nop
    pop af
    ld b, $29
    nop
    pop af
    cp $28
    nop

jr_00d_54bb:
    pop af
    or $27
    nop
    add b
    add sp, $01
    dec hl
    nop
    add sp, -$07
    ld a, [hl+]
    nop
    ldh a, [rTAC]
    ld l, $00
    ldh a, [rIE]
    dec l
    nop
    ldh a, [$fff7]
    inc l
    nop
    ld hl, sp+$07
    ld sp, $f800
    rst $38
    jr nc, jr_00d_54dc

jr_00d_54dc:
    ld hl, sp-$09
    cpl
    nop
    ldh [rSB], a
    ld hl, $e000
    ld sp, hl
    jr nz, jr_00d_54e8

jr_00d_54e8:
    add b
    db $e3
    nop
    ld bc, $e300
    ld hl, sp+$00
    nop
    db $eb
    ld b, $14
    nop
    db $eb
    cp $13
    nop

jr_00d_54f9:
    db $eb
    or $1a
    nop
    di
    ld b, $1d
    nop
    di
    cp $1c
    nop

jr_00d_5505:
    di
    or $1b
    nop

jr_00d_5509:
    ei
    inc b
    rra
    nop

jr_00d_550d:
    ei
    db $fc
    ld e, $00
    add b
    ldh [c], a
    ld hl, sp+$01
    jr nz, jr_00d_54f9

    nop
    nop

jr_00d_5519:
    jr nz, jr_00d_5505

    ldh a, [c]
    inc c

jr_00d_551d:
    jr nz, jr_00d_5509

    ld a, [$200b]
    ld [$0a02], a
    jr nz, jr_00d_5519

    ldh a, [c]
    rrca
    jr nz, jr_00d_551d

    ld a, [$200e]
    ldh a, [c]
    ld [bc], a
    dec c
    jr nz, @-$04

    rst $30
    ld de, $fa20
    rst $38
    db $10

jr_00d_5539:
    jr nz, jr_00d_54bb

    db $dd
    ld sp, hl
    ld hl, $dd20
    ld bc, $2020
    push hl
    ld hl, sp+$23
    jr nz, @-$19

    nop
    ld [hl+], a
    jr nz, jr_00d_5539

    ldh a, [c]

jr_00d_554d:
    ld h, $20
    db $ed
    ld a, [$2025]
    db $ed
    ld [bc], a
    inc h
    jr nz, jr_00d_554d

    ldh a, [c]
    add hl, hl
    jr nz, @-$09

    ld a, [$2028]

jr_00d_555f:
    push af
    ld [bc], a
    daa
    jr nz, @-$7e

    reti


    ld sp, hl
    ld hl, $d920
    ld bc, $2020
    pop hl
    ld hl, sp+$23
    jr nz, @-$1d

    nop

jr_00d_5572:
    ld [hl+], a
    jr nz, @-$15

    ldh a, [c]

jr_00d_5576:
    ld h, $20
    jp hl


    ld a, [$2025]
    jp hl


    ld [bc], a
    inc h
    jr nz, jr_00d_5572

    ldh a, [c]
    add hl, hl

jr_00d_5583:
    jr nz, jr_00d_5576

    ld a, [$2028]
    pop af
    ld [bc], a
    daa
    jr nz, jr_00d_550d

    push de
    ld sp, hl
    ld hl, $d520
    ld bc, $2020
    db $dd
    ld hl, sp+$23
    jr nz, @-$21

    nop

jr_00d_559b:
    ld [hl+], a
    jr nz, jr_00d_5583

    ldh a, [c]
    ld h, $20
    push hl
    ld a, [$2025]
    push hl
    ld [bc], a
    inc h
    jr nz, @-$11

    ldh a, [c]
    add hl, hl
    jr nz, jr_00d_559b

    ld a, [$2028]
    db $ed
    ld [bc], a
    daa
    jr nz, @-$7e

    reti


    ld sp, hl
    ld hl, $d920
    ld bc, $2020
    pop hl
    ld hl, sp+$23
    jr nz, @-$1d

    nop

jr_00d_55c4:
    ld [hl+], a
    jr nz, @-$15

    ldh a, [c]

jr_00d_55c8:
    ld h, $20
    jp hl


    ld a, [$2025]
    jp hl


    ld [bc], a
    inc h
    jr nz, jr_00d_55c4

    ldh a, [c]
    add hl, hl
    jr nz, jr_00d_55c8

    ld a, [$2028]
    pop af
    ld [bc], a
    daa
    jr nz, jr_00d_555f

    add sp, -$09
    dec hl
    jr nz, @-$16

    rst $38
    ld a, [hl+]
    jr nz, @-$0e

    pop af
    ld l, $20
    ldh a, [$fff9]
    dec l
    jr nz, @-$0e

jr_00d_55f0:
    ld bc, $202c
    ld hl, sp-$0f
    ld sp, $f820
    ld sp, hl
    jr nc, jr_00d_561b

    ld hl, sp+$01
    cpl
    jr nz, @-$1e

jr_00d_5600:
    rst $30
    ld hl, $e020
    rst $38
    jr nz, jr_00d_5627

    add b
    db $e3
    ld hl, sp+$01
    jr nz, jr_00d_55f0

    nop
    nop
    jr nz, @-$13

    ldh a, [c]
    inc d
    jr nz, jr_00d_5600

    ld a, [$2013]
    db $eb
    ld [bc], a
    ld a, [de]

jr_00d_561b:
    jr nz, @-$0b

    ldh a, [c]
    dec e
    jr nz, @-$0b

    ld a, [$201c]

jr_00d_5624:
    di
    ld [bc], a
    dec de

jr_00d_5627:
    jr nz, jr_00d_5624

    db $f4
    rra
    jr nz, @-$03

    db $fc
    ld e, $20
    add b
    ldh [c], a
    nop
    ld c, c
    nop
    ldh [c], a
    ld hl, sp+$48
    nop
    ld [$5100], a
    nop
    ld [$50f8], a
    nop
    ldh a, [c]
    nop
    ld d, e
    nop
    ldh a, [c]
    ld hl, sp+$52
    nop
    ld a, [$5500]
    nop
    ld a, [$54f8]
    nop
    add b
    ldh [rP1], a
    ld c, c
    nop
    ldh [$fff8], a
    ld c, b
    nop
    add sp, $00
    ld e, l
    nop
    add sp, -$08
    ld e, h
    nop
    ldh a, [rP1]
    ld e, a
    nop
    ldh a, [$fff8]
    ld e, [hl]
    nop
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    db $db
    nop
    ld c, c
    nop
    db $db
    ld hl, sp+$48
    nop
    db $e3
    nop
    ld e, l
    nop
    db $e3
    ld hl, sp+$5c
    nop
    db $eb
    nop
    ld e, a
    nop
    db $eb
    ld hl, sp+$5e
    nop
    di
    nop
    ld h, c
    nop
    di
    ld hl, sp+$60
    nop
    add b
    db $d3
    nop
    ld c, c
    nop
    db $d3
    ld hl, sp+$48
    nop
    db $db
    nop
    ld e, l
    nop
    db $db
    ld hl, sp+$5c
    nop
    db $e3
    nop
    ld e, a
    nop
    db $e3
    ld hl, sp+$5e
    nop
    db $eb
    nop
    ld h, c
    nop
    db $eb
    ld hl, sp+$60
    nop
    add b
    sub $00
    ld c, c
    nop
    sub $f8
    ld c, b
    nop
    sbc $00
    ld e, l
    nop
    sbc $f8
    ld e, h
    nop
    and $00
    ld e, a
    nop
    and $f8
    ld e, [hl]
    nop
    xor $00
    ld h, c
    nop
    xor $f8
    ld h, b
    nop
    add b
    ldh [rP1], a
    ld c, c
    nop
    ldh [$fff8], a
    ld c, b
    nop
    add sp, $00
    ld e, l
    nop
    add sp, -$08
    ld e, h
    nop
    ldh a, [rP1]
    ld e, a
    nop
    ldh a, [$fff8]
    ld e, [hl]
    nop
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    ldh [c], a
    nop
    ld c, c
    nop
    ldh [c], a
    ld hl, sp+$48
    nop
    ld [$5700], a
    nop
    ld [$56f8], a
    nop
    ldh a, [c]
    nop
    ld e, c
    nop
    ldh a, [c]
    ld hl, sp+$58
    nop
    ld a, [$5b00]
    nop
    ld a, [$5af8]
    nop
    add b
    jr nz, @+$59

    ld b, c
    ld d, a
    ld l, d
    ld d, a
    sub e
    ld d, a
    ldh [rP1], a
    inc sp
    nop
    ldh [$fff8], a
    ld [hl-], a
    nop
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ldh a, [rP1]
    scf
    nop
    ldh a, [$fff8]
    ld [hl], $00
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_00d_5740

jr_00d_5740:
    add b
    ldh [c], a
    nop
    ld bc, $e200
    ld hl, sp+$00
    nop
    ld [$0406], a
    nop
    ld [$03fe], a
    nop
    ld [$02f6], a
    nop
    ldh a, [c]
    ld b, $07
    nop
    ldh a, [c]
    cp $06
    nop
    ldh a, [c]
    or $05
    nop

jr_00d_5761:
    ld a, [$0904]
    nop

jr_00d_5765:
    ld a, [$08fc]
    nop
    add b
    ldh [c], a
    ld sp, hl
    ld bc, $e220
    ld bc, $2000
    ld [$04f3], a

jr_00d_5775:
    jr nz, jr_00d_5761

    ei
    inc bc
    jr nz, jr_00d_5765

    inc bc
    ld [bc], a
    jr nz, @-$0c

    di
    rlca
    jr nz, jr_00d_5775

    ei
    ld b, $20
    ldh a, [c]
    inc bc
    dec b

jr_00d_5789:
    jr nz, @-$04

    push af
    add hl, bc
    jr nz, jr_00d_5789

    db $fd
    ld [$8020], sp
    pop hl
    ld bc, $0049
    pop hl
    ld sp, hl
    ld c, b
    nop
    jp hl


    ld bc, $004b
    jp hl


    ld sp, hl
    ld c, d
    nop
    pop af
    ld bc, $004d
    pop af
    ld sp, hl
    ld c, h
    nop
    ld sp, hl
    ld bc, $004f
    ld sp, hl
    ld sp, hl
    ld c, [hl]
    nop
    add b
    call nz, $dd57
    ld d, a
    or $57
    rrca
    ld e, b
    jr z, jr_00d_5816

    ld b, c
    ld e, b
    jr z, jr_00d_581a

    ld b, c
    ld e, b
    ld hl, sp+$00
    di
    nop
    ld hl, sp-$08
    ldh a, [c]
    nop
    ldh a, [rP1]
    pop af
    nop
    ldh a, [$fff8]
    ldh a, [rP1]
    add sp, $00
    rst $28
    nop
    add sp, -$08
    xor $00
    add b
    add sp, $00
    ld l, a
    nop
    add sp, -$08
    ld l, [hl]
    nop
    ld hl, sp+$01
    rst $30
    nop
    ld hl, sp-$07
    or $00
    ldh a, [rSB]
    push af
    nop
    ldh a, [$fff9]
    db $f4
    nop
    add b
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    ldh a, [rP1]
    push hl
    nop
    ldh a, [$fff8]
    db $e4
    nop
    add sp, $00
    db $e3
    nop
    add sp, -$08
    ldh [c], a
    nop
    add b
    ld hl, sp-$03
    db $ed
    nop
    ld hl, sp-$0b
    db $ec

jr_00d_5816:
    nop
    ldh a, [$fffd]
    db $eb

jr_00d_581a:
    nop
    ldh a, [$fff5]
    ld [$e800], a
    db $fd

jr_00d_5821:
    jp hl


    nop
    add sp, -$0b

jr_00d_5825:
    add sp, $00
    add b
    ld hl, sp-$08
    rst $20
    jr nz, jr_00d_5825

    nop
    and $20
    ldh a, [$fff8]
    push hl
    jr nz, jr_00d_5825

    nop
    db $e4
    jr nz, jr_00d_5821

    ld hl, sp-$1d
    jr nz, jr_00d_5825

    nop

jr_00d_583e:
    ldh [c], a
    jr nz, @-$7e

    ld hl, sp-$05
    db $ed
    jr nz, jr_00d_583e

    inc bc
    db $ec
    jr nz, @-$0e

    ei
    db $eb
    jr nz, jr_00d_583e

    inc bc
    ld [$e820], a
    ei
    jp hl


    jr nz, jr_00d_583e

    inc bc
    add sp, $20
    add b
    add d
    ld e, b
    sbc e
    ld e, b
    add d
    ld e, b
    sbc e
    ld e, b
    add d
    ld e, b
    or h
    ld e, b
    call $b458
    ld e, b
    call $b458
    ld e, b
    and $58
    rst $38
    ld e, b
    and $58
    rst $38
    ld e, b
    and $58
    jr jr_00d_58d3

    ld sp, $1859
    ld e, c
    ld sp, $1859
    ld e, c
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    ldh a, [rP1]
    ld h, l
    nop
    ldh a, [$fff8]
    ld h, h
    nop
    add sp, $00
    ld h, e
    nop
    add sp, -$08

jr_00d_5898:
    ld h, d
    nop
    add b
    ld hl, sp+$00
    ld l, l
    nop
    ld hl, sp-$08
    ld l, h
    nop
    ldh a, [rP1]
    ld l, e
    nop
    ldh a, [$fff8]
    ld l, d
    nop
    add sp, $00
    ld l, c
    nop
    add sp, -$08
    ld l, b
    nop
    add b
    ld [$01fe], a
    nop
    ld [$00f6], a
    nop
    ld a, [$71fe]
    nop
    ld a, [$70f6]
    nop
    ldh a, [c]
    cp $6f
    nop
    ldh a, [c]
    or $6e
    nop
    add b
    ld hl, sp-$02
    ld [hl], a
    nop
    ld hl, sp-$0a

jr_00d_58d3:
    halt
    nop

jr_00d_58d5:
    ldh a, [$fffe]
    ld [hl], l
    nop
    ldh a, [$fff6]
    ld [hl], h
    nop
    add sp, -$02
    ld [hl], e
    nop
    add sp, -$0a
    ld [hl], d
    nop
    add b
    ld [$01fa], a

jr_00d_58e9:
    jr nz, jr_00d_58d5

    ld [bc], a
    nop
    jr nz, jr_00d_58e9

    ld a, [$2071]
    ld a, [$7002]
    jr nz, jr_00d_58e9

    ld a, [$206f]
    ldh a, [c]
    ld [bc], a

jr_00d_58fc:
    ld l, [hl]
    jr nz, @-$7e

    ld hl, sp-$06
    ld [hl], a
    jr nz, jr_00d_58fc

    ld [bc], a
    halt
    jr nz, @-$0e

    ld a, [$2075]
    ldh a, [rSC]
    ld [hl], h
    jr nz, @-$16

    ld a, [$2073]
    add sp, $02
    ld [hl], d
    jr nz, jr_00d_5898

    jp hl


    ld bc, $0079
    jp hl


    ld sp, hl
    ld a, b
    nop
    pop af
    ld bc, $007b
    pop af
    ld sp, hl
    ld a, d
    nop
    ld sp, hl
    ld bc, $007d
    ld sp, hl
    ld sp, hl
    ld a, h
    nop
    add b
    jp hl


    ld bc, $00c9
    jp hl


    ld sp, hl
    ld a, [hl]
    nop
    pop af
    ld sp, hl
    ld a, a
    nop
    pop af
    ld bc, $0080
    ld sp, hl
    ld bc, $0082
    ld sp, hl
    ld sp, hl
    add c
    nop
    add b
    nop
    inc b
    db $d3
    inc bc
    ld [bc], a
    rra
    nop
    or h
    nop
    inc bc
    ld bc, $0102
    ld hl, $1f2c
    nop
    jp Jump_000_2200


    ld de, $0202
    ld sp, $001f
    jp $3900


    ld [hl-], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    ld bc, $1f41
    nop
    jp $f500


    ld b, d
    inc bc
    inc b
    inc de
    inc d
    nop
    daa
    inc h
    dec h
    ld h, $bf
    inc de
    inc de
    inc hl
    inc h
    dec h
    rlca
    ld hl, $5001
    rst $30
    ld d, c
    ld d, d
    db $10
    add hl, bc
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    scf
    inc [hl]
    rst $38
    dec [hl]
    ld [hl], $2c
    inc de
    inc sp
    inc [hl]
    dec [hl]
    rla
    rst $38
    ld a, [hl+]
    inc l
    inc de
    inc de
    ld h, b
    ld h, c
    ld h, d

jr_00d_59a3:
    jr nz, jr_00d_59a3

    add hl, bc
    inc b
    ld e, c
    ld a, [hl-]
    ld b, a
    ld b, h
    ld b, l
    ld b, [hl]
    dec sp
    rst $38
    inc l
    ld b, e
    ld b, h
    ld b, l
    ld [$3c3a], sp
    inc de
    rst $18
    inc de
    ld [hl], b
    ld [hl], c
    ld [hl], d
    jr nc, jr_00d_59c8

    ld b, $59
    ld d, a
    rst $38
    ld d, h
    ld d, l
    ld d, [hl]

jr_00d_59c5:
    ld c, d
    ld c, e
    ld d, e

jr_00d_59c8:
    ld d, h
    ld d, l
    ld a, e
    jr jr_00d_5a29

    jr nc, jr_00d_59d6

    ld h, e
    ld h, h
    ld h, l
    ld b, b
    inc bc
    inc c

jr_00d_59d5:
    ei

jr_00d_59d6:
    dec bc
    inc c
    inc h
    ld [$4a39], sp
    dec sp
    ld a, [hl-]
    dec sp
    reti


    ld a, [hl-]
    ret nz

    dec b
    inc hl
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc bc
    ld c, $1b
    inc e
    ld a, [hl]
    inc h
    ld a, [bc]
    ld c, c
    ld c, d
    ld c, e
    ld a, [hl-]
    dec sp
    ld c, d
    ret nz

    dec b
    ld [hl], $23
    dec bc
    add hl, de
    ld a, [de]
    rrca
    inc c
    ld c, d
    ld c, e
    dec b
    inc c
    ld h, b
    dec c
    adc l
    inc d
    rrca
    inc c
    ld e, d
    ld e, e
    dec b
    inc c
    dec c
    ld [bc], a
    inc bc
    inc c
    inc de
    call $0513
    inc c
    add hl, hl
    inc l
    dec bc
    inc b
    inc bc
    inc c
    inc de
    inc de
    ld e, d
    dec b
    inc c
    ld e, c
    ld b, $06
    add hl, bc
    ld a, [bc]
    inc h
    db $10
    ld e, d
    and l
    nop

jr_00d_5a29:
    add [hl]
    dec bc
    ld [$1a19], sp
    daa
    dec bc
    push bc
    inc d
    ld d, d
    ld c, $04
    ld a, [bc]
    ld c, l
    or a
    ld c, [hl]
    ld c, a
    jr z, jr_00d_59c5

    inc bc
    dec bc

jr_00d_5a3e:
    inc c
    ld b, c
    jr jr_00d_5a6c

    ld a, e
    dec hl
    inc l
    inc b
    inc c
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_00d_59d5

    dec b
    cp e
    dec de
    inc e
    ld b, c
    jr jr_00d_5a8d

    dec sp
    inc a
    inc b
    ld c, $6d
    rst $00
    ld l, [hl]
    ld l, a
    ld c, b
    add e
    inc bc
    add l
    inc de
    ld b, c
    jr jr_00d_5aad

    ld c, e
    dec a
    ld c, h
    inc b
    db $10
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b

jr_00d_5a6c:
    add e
    inc bc
    ld d, b
    inc e
    ld [hl], e
    dec hl
    inc l
    add b
    inc de
    ld b, c
    jr jr_00d_5ad2

    ld e, e
    ld e, h
    inc bc
    ld [de], a
    ld a, e
    inc bc
    ld [de], a
    rla
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld hl, sp+$00
    nop
    ld [bc], a
    ld a, [hl+]
    rra
    nop
    rra

jr_00d_5a8d:
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

jr_00d_5aad:
    nop
    dec de
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_00d_5a3e

    nop
    add b
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $fb24
    nop
    ld a, [hl]
    ld b, b
    nop

jr_00d_5ad2:
    ld l, $00
    ld l, d
    nop
    ld h, $78
    rrca
    ld bc, $010f
    rrca
    ld bc, $7400
    nop
    ld e, [hl]
    ret nz

    ld bc, $2a07
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fe0
    ld bc, $010f
    rrca
    ld bc, $010f
    ld c, $01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rra
    rst $28
    rst $28
    rra
    ld e, e
    daa
    cpl
    rst $38
    ld de, $0133
    inc bc
    nop
    rlca
    cp $4e
    rst $38
    db $fc
    cp $fc
    db $fc
    ld hl, sp+$6c
    ld hl, sp-$04
    ei
    ld [$0898], sp
    ld [bc], a
    dec sp
    rlca
    ld a, [de]
    rlca
    rla
    cp e
    inc c
    inc c
    ld [$f602], sp
    inc c
    ld c, $0a
    inc b
    xor a
    di
    ld b, c
    pop bc
    ldh [$ff15], a
    rlca
    inc b
    ld hl, sp+$10
    ret nc

    add b
    rst $38
    ret nz

    nop
    ld bc, $0700
    nop
    dec c
    rlca
    rst $38
    rlca
    inc bc
    rlca
    ld bc, $020f
    rrca
    ld [bc], a
    rst $38
    rra
    rrca
    daa
    nop
    rst $38
    ld hl, $edd3
    rst $38
    rst $20
    ei
    di
    rst $18
    rst $38
    xor a
    cp $af
    ei
    db $fc
    rst $38
    dec b
    ld [bc], a
    inc b
    inc bc
    rrca
    nop
    ld [$07fd], sp
    rlca
    ld [bc], a
    inc de
    rst $38
    ld a, a
    adc a
    ld b, $ff
    ld [$0207], a
    rlca
    nop
    ld [bc], a
    rrca
    ld [$f302], sp
    rst $38
    rst $38
    xor e
    adc a
    cp $0d
    ld [bc], a
    ld b, $08
    ld b, $bf
    nop
    ld [bc], a
    rst $28
    ld h, a
    db $fc
    rst $38
    nop
    daa
    ld [$0422], sp
    nop
    nop
    dec hl
    inc b
    rst $38
    nop
    nop
    ldh [rP1], a
    sbc [hl]
    ldh [$ffc7], a
    ld a, [$e2ff]
    db $fc
    ld a, [$4dfc]
    cp $07
    cp $ff
    rra
    rrca
    rra
    rrca
    db $10
    rrca
    inc c
    rrca
    rrc a
    inc c
    db $e3
    add hl, hl
    db $fc
    ld b, b
    ld [$1225], sp
    dec l
    ld e, $f9
    ld e, $00
    ld [de], a
    inc hl
    ld [de], a
    cp $f8
    push hl
    cp $fe
    cp b
    inc h
    inc l
    ld c, c
    ld a, [bc]
    jr nz, jr_00d_5be0

    nop
    ccf
    rlca
    ld b, l
    ld a, [bc]
    cp $fd
    adc a
    ld b, c
    dec bc
    rra
    rrca
    jr nc, jr_00d_5c1d

    ld e, h
    ld a, a

jr_00d_5be0:
    rst $28
    ld a, a
    ld a, b

jr_00d_5be3:
    jr nc, jr_00d_5c15

    inc bc
    dec b
    cp $ff
    ld a, a
    and $40
    rla
    rst $38
    inc bc
    ld bc, $6505
    jr nc, jr_00d_5bfb

    nop
    inc e
    rst $18
    rlca
    cpl
    rra
    ld e, a

jr_00d_5bfb:
    ccf
    ld h, l
    ld sp, $00e0
    rst $38
    jr jr_00d_5be3

    inc b
    ld hl, sp-$1e
    db $fc
    ld e, a
    dec a
    rst $38
    cp a
    ld h, d
    db $fd
    ld e, e
    rst $30
    ld l, a
    rst $38
    ld l, l
    rst $38
    rst $38
    ld l, l

jr_00d_5c15:
    rst $18
    ld l, l
    rst $38
    ld e, a
    ld a, [$ffbc]
    db $fd

jr_00d_5c1d:
    ld b, [hl]
    and a
    jp c, $f6cf

    rst $28
    or [hl]
    rst $38
    rst $38
    or [hl]
    ei
    or [hl]
    rst $38
    ld a, [$5fbf]
    rst $38

jr_00d_5c2e:
    ld l, b
    rra
    ld d, b
    cpl
    ld c, b
    scf
    daa
    jr jr_00d_5c2e

    inc [hl]
    jr @+$1a

    ldh [$ff2d], a
    db $fd
    ld a, [$f816]
    ld a, a
    ld a, [bc]
    db $f4
    ld [de], a
    db $ec
    db $e4
    jr jr_00d_5c74

    ld [bc], a
    ld bc, $7fff
    rra
    jr z, @+$21

    jr nc, @+$11

    jr z, jr_00d_5c6a

    db $fd
    daa
    ldh [c], a
    ld bc, $0000
    cp $f8
    inc d
    ld hl, sp-$61
    inc c
    ldh a, [rNR14]
    add sp, -$1c
    inc b
    ld bc, $0606
    ld l, c
    rst $28
    rst $38

jr_00d_5c6a:
    ld h, [hl]
    rst $18
    ld h, [hl]
    ld [$9606], sp
    rst $38
    ld h, [hl]
    rst $28
    ei

jr_00d_5c74:
    ld h, [hl]
    rst $38
    ld a, [$0806]
    ld l, a
    ld hl, sp+$6f
    rst $30
    sbc $61
    ldh a, [rTAC]
    ld [$1ff6], sp
    or $7b
    ld a, e
    add [hl]
    rrca
    ld [$ff02], sp
    ld l, a
    rst $18
    ld h, c
    ld [$df0a], sp
    or $ff
    or $fb
    add [hl]
    add hl, bc
    inc b
    rst $38
    ld h, c
    cp [hl]
    inc c
    inc c
    add [hl]
    ei
    and $ff
    ld a, [$1007]
    jr @+$75

    rlca
    ld l, $00
    db $10
    ld bc, $300d
    rrca
    dec bc
    jr nz, @+$25

    ld a, h
    db $e3
    ld b, c
    ld bc, $0c0d
    ldh a, [rNR10]
    ldh [$ffe0], a
    ld c, d
    ld b, e
    ld hl, sp-$1b
    ld [bc], a
    dec b
    inc de
    db $e3
    ld [de], a
    add d
    db $fc
    ldh [c], a
    db $fc
    cp a
    ld a, l
    ld a, l
    add hl, bc
    add hl, bc
    cp a
    ld e, a
    ld sp, hl
    cp [hl]
    rst $38
    ld [$ff09], sp
    db $fd
    ld a, [$3fdf]
    ld c, b
    ccf
    jr nz, jr_00d_5cfd

    rst $38
    rra
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    rst $38
    nop
    nop
    ei
    db $fc
    ld [de], a
    db $fc
    inc b
    ld hl, sp-$03
    jr jr_00d_5cfd

    ld b, $02
    nop
    ccf
    ld [bc], a
    dec h
    dec de
    rst $18
    inc de
    rrca

jr_00d_5cfd:
    rla
    ld [$001b], sp
    inc hl
    nop
    nop
    rst $38
    ld b, b
    nop
    db $fc
    ld b, b
    cp h
    ret c

    add sp, -$10
    rst $28
    ld hl, sp+$10
    ret c

    ldh [rSTAT], a
    ld a, [de]
    ld a, [hl]
    ccf
    cp h
    ei
    ld a, a
    ld hl, sp+$20
    nop
    ldh a, [$ff7f]
    or c
    ld a, a
    db $f4
    rst $38
    ld hl, sp-$06
    db $fc
    ld a, [hl]
    db $fc
    dec a
    cp $1f
    cp $20
    nop
    ccf
    cp $fd
    cp $7b
    ld a, $5e
    rst $38
    ccf
    cpl
    rra
    rra
    inc c
    ld d, $0c
    ld a, [bc]
    db $fd
    inc b
    ld bc, $fe32
    cp h
    ld a, [$545c]
    cp b
    ld a, a
    ld hl, sp+$30
    ld l, b
    jr nc, jr_00d_5d9d

    jr nz, jr_00d_5dbf

    ldh [rBGP], a
    ld a, a
    ld a, e
    ld a, $5f
    dec a

jr_00d_5d56:
    dec l
    ld e, $17
    db $e4
    ld bc, $058a
    ld [bc], a
    ret z

    ldh [rSB], a
    ld h, b
    ldh [c], a
    ld c, c
    inc bc
    ld [bc], a
    add hl, bc
    inc b
    cp d
    rst $20
    ld a, h
    ld [hl], h
    ld hl, sp+$07
    inc b
    ld hl, $034c
    nop
    ld b, $fb
    inc bc
    inc bc
    ret nz

    ld a, [hl-]
    inc bc
    nop
    dec b
    ld [bc], a
    nop
    rst $38
    nop
    or a
    nop
    rst $38
    inc hl
    db $d3
    db $ed
    rst $30
    rst $38
    ei
    rst $38
    rst $18
    cp $df
    db $fc
    rst $18
    nop
    rst $38
    nop
    ret nz

    nop
    jr nc, jr_00d_5d56

    adc [hl]
    ldh a, [$ffc7]
    ld a, a
    ld a, [$f8f6]

jr_00d_5d9d:
    sbc d
    db $fc
    ld c, $fc
    and c
    inc sp
    sbc a
    inc b
    inc bc
    ld [bc], a
    ld bc, $e401
    ld d, [hl]
    ld bc, $1a2d
    rst $38
    rst $38
    rrca
    rst $30
    rst $30
    rrca
    dec l
    inc de
    dec de
    cp $00
    ccf
    ld c, $fc
    ld a, [bc]
    db $fc
    ld e, h

jr_00d_5dbf:
    ld hl, sp-$0c
    db $eb
    ld hl, sp+$58
    ldh [$ff0d], a
    or b
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    rlca
    rrca
    rlc h
    inc b
    ld [$ec02], sp
    ld [bc], a
    ld h, $07
    inc b
    ld e, a
    ld hl, $22f9
    ld h, b
    dec b
    rlca
    inc b
    ldh a, [rNR41]
    ldh [$ff80], a
    add b
    jr c, jr_00d_5dee

    ld a, [bc]
    ldh [rLY], a
    inc c
    ld a, [bc]
    xor a
    db $fc
    xor a
    inc c

jr_00d_5dee:
    ld [bc], a
    ld h, b
    ld e, $00
    ld b, $0c
    ldh [$ff32], a
    ld bc, $2b3b
    inc b
    ld hl, $295b
    ld [bc], a
    ld hl, $295c
    ld c, $c1
    dec b
    and b
    ld b, c
    pop hl
    ld b, e
    ld de, $0500
    dec sp
    inc hl
    ld c, $f5
    dec bc
    rst $20
    dec de
    ld b, $0e
    nop
    ld c, $25
    ld c, $4a
    db $fc
    db $fc
    ret c

    ld l, b
    ld h, a
    ld b, l
    ld a, [bc]
    jp $bf37


    rlca
    ld b, e
    inc d
    cp $ff
    db $fc
    ld b, c
    add hl, bc
    pop hl
    ld b, [hl]
    inc c
    rrca
    rla
    rra
    rra
    ld e, $e7
    inc c
    inc c
    db $fc
    ld b, b
    add hl, bc
    ld hl, $1b3b
    rst $38
    dec c
    ld [hl], e
    di
    ei
    nop
    dec b
    add hl, hl
    inc b
    ld c, $03
    rla
    ld de, $fc3f
    add h
    ld l, h
    add c
    rla
    adc b
    ldh a, [$ff2f]
    dec e
    ccf
    ld [bc], a
    rst $38
    ld a, l
    dec de
    ld a, a
    daa
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    rst $38
    ld [hl], a
    dec l
    ld a, a
    cpl
    db $e4
    cp b
    db $fc
    ld b, b
    rst $38
    and [hl]
    ret c

    sbc $e4
    cp $ac
    cp $ac
    rst $38
    xor $b4
    cp $f4
    ld e, a
    cpl
    jr c, @+$11

    sbc a
    jr c, jr_00d_5e83

    rla
    ld [$c01a], sp
    ld d, h
    pop hl
    ld l, b

jr_00d_5e83:
    ld a, [$f4ff]
    inc e
    ldh a, [rNR32]
    ldh [$ffe8], a
    db $10
    ld e, b
    ld a, h
    pop de
    ld b, c
    ldh [rBCPD], a
    ccf
    rrca
    jr c, jr_00d_5ea5

    jr jr_00d_5e98

jr_00d_5e98:
    ld [bc], a
    ld a, [hl]
    db $f4
    ld b, a
    nop
    db $fc
    ldh a, [rNR32]
    ldh a, [rNR23]
    nop
    ld [bc], a
    halt

jr_00d_5ea5:
    db $e3
    ld bc, $0000
    ld [$3206], sp
    ld [hl], a
    ld a, [hl+]
    ld a, [bc]
    ld b, $5f
    ld c, h
    xor $54
    cp $f4
    ld b, $08
    scf
    jr nz, jr_00d_5ebb

jr_00d_5ebb:
    push af
    ld hl, $0808
    db $ec
    jr nz, jr_00d_5ec2

jr_00d_5ec2:
    add h
    cp $f4
    inc bc
    ei
    nop
    inc c
    ld h, b
    dec bc
    cpl
    rra
    ccf
    dec e
    ld e, a
    ld sp, hl
    ld [hl+], a
    add c
    ld a, [bc]
    pop hl
    ld [hl+], a
    ld [$c4f0], sp
    ld hl, sp-$0c
    rst $20
    cp b
    ld a, [$8144]
    ld a, [bc]
    add e
    inc bc
    ld e, a
    cpl
    ld l, a
    sbc $80
    ld b, e
    rla
    rrca
    dec bc
    rrca
    add e
    inc bc
    ld a, [$3df4]
    or $80
    ld b, e
    ld [$f0f0], sp
    nop
    ld h, e
    inc sp
    add hl, bc
    ld a, h
    ld b, b
    add e
    db $10
    add l
    rrca
    add l
    db $10
    add l
    rrca
    add l
    ld [$0f81], sp
    dec de
    add b
    ld h, b
    nop
    add l
    ld [$0f81], sp
    ld h, c
    scf
    ld hl, $6721
    ld de, $80e0
    ld b, $60
    call Call_000_210f
    ld hl, $6801
    ld de, $8140
    ld b, $60
    call Call_000_210f
    ld hl, $68e1
    ld de, $81a0
    ld b, $60
    call Call_000_210f
    ld hl, $69c1
    ld de, $8200
    ld b, $60
    call Call_000_210f
    ld hl, $6ae1
    ld de, $8260
    ld b, $60
    call Call_000_210f
    ld hl, $6be1
    ld de, $82c0
    ld b, $60
    call Call_000_210f
    ld hl, $6d01
    ld de, $8320
    ld b, $60
    call Call_000_210f
    ld hl, $6de1
    ld de, $8380
    ld b, $70
    call Call_000_210f
    ld hl, $6f01
    ld de, $83f0
    ld b, $60
    call Call_000_210f
    ld hl, $7001
    ld de, $8450
    ld b, $80
    call Call_000_210f
    ld hl, $7131
    ld de, $84d0
    ld b, $70
    call Call_000_210f
    ld hl, $7231
    ld de, $8540
    ld b, $70
    call Call_000_210f
    ld hl, $7341
    ld de, $85b0
    ld b, $60
    call Call_000_210f
    ld hl, $7421
    ld de, $8610
    ld b, $60
    call Call_000_210f
    ld hl, $7501
    ld de, $8670
    ld b, $60
    call Call_000_210f
    ret


    ld hl, $6001
    ld de, $8100
    ld b, $f0
    call Call_000_210f
    ld hl, $60f1
    ld de, $81f0
    ld b, $b0
    call Call_000_210f
    ret


    ld hl, $7001
    ld de, $80a0
    ld b, $80
    call Call_000_210f
    ret


jr_00d_5fdd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    rlca
    inc e
    rrca
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_00d_5fdd

    db $10
    ldh [$fff8], a
    nop
    ld e, [hl]
    ccf
    ld a, a
    jr nz, @+$3d

    inc b
    ld d, $0f
    cpl
    rra
    ld d, a
    add hl, hl
    ld a, c
    daa
    scf
    dec c
    inc b
    ld hl, sp-$0c
    ld [$a058], sp
    ret nc

    ldh [$ffe8], a
    ldh a, [$ffd4]
    jr z, jr_00d_607a

    ret z

    ret c

    ld h, b
    ld c, a
    dec [hl]
    adc l
    halt
    bit 6, a
    ld [hl], l
    dec sp
    cp a
    ld c, h
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    db $e4
    ld e, b
    ld h, d
    call c, $dca6

jr_00d_6057:
    ld e, l
    cp d
    ld sp, hl
    ld h, [hl]
    push hl
    sbc d
    or a
    ld e, b

jr_00d_605f:
    ccf
    sub $d3
    ld l, a
    pop af
    ld l, a
    ld h, c
    rra
    jr nz, jr_00d_6088

    ccf
    rra
    ccf
    nop
    ld [hl], d
    inc a
    ld a, h
    nop
    cp e
    sub $26
    ret c

    jr jr_00d_6057

    ld [$f8f0], sp

jr_00d_607a:
    ldh a, [$fff8]
    nop
    call nz, Call_00d_7c78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_6088:
    nop
    rrca
    nop
    ld e, $0f
    jr c, jr_00d_60ae

    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_00d_605f

    ldh a, [rP1]
    cp h
    ld a, a
    rst $38
    ld b, b
    ld a, e
    inc b
    ld l, [hl]
    rra
    ccf
    rra
    dec a
    inc de
    ld d, e

jr_00d_60ae:
    dec a
    ld a, a
    ccf
    ld [$e8f0], sp
    db $10
    ld [hl], b
    add b
    sub b
    ldh [$ffb0], a
    ret nz

    ret nc

    and b
    or b
    ldh [$fff8], a
    add b
    cp $7f
    rst $28
    ld e, $fd
    ld e, [hl]
    ld l, d
    dec e
    cp h
    ld b, e
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    call nz, $4238
    cp h
    add [hl]
    ld a, h
    dec e
    ld a, [$e679]
    push hl
    sbc d
    or a
    ld e, b
    ccf
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    ld c, $07
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$ff08], a
    ldh a, [$fffc]
    nop
    cpl
    rra
    ccf
    db $10
    dec e
    ld [bc], a
    rla
    rrca
    dec de
    rlca
    rla
    dec bc
    dec de
    rrca
    ccf
    inc bc
    ld [bc], a
    db $fc
    ld a, [$bc04]
    ld b, b
    db $ec
    ldh a, [$fff8]
    ldh a, [$ff78]
    sub b
    sbc h
    ld a, b
    db $fc
    ld hl, sp+$46
    add hl, sp
    add l
    ld a, d
    jp Jump_00d_707c


    ccf
    cp h
    ld c, a
    sbc a
    ld h, e
    sub e
    ld l, h
    pop hl
    rra
    cp $fc
    xor $f0
    ld a, [hl]
    db $f4
    xor l
    ld [hl], d
    ld a, c
    add [hl]
    push hl
    sbc d
    or a
    ld e, b
    ccf
    sub $2f
    rra
    ccf
    db $10
    ld e, $01
    dec c
    rlca
    rla
    rrca
    dec a
    rla
    dec hl
    dec d
    rra
    nop
    ld [bc], a
    db $fc
    ld a, [$dc04]
    jr nz, @+$2a

    ldh a, [$fff4]
    ld hl, sp-$22
    db $f4
    ld [$fcd4], a
    nop
    jr nz, @+$21

    ld b, b
    ccf
    ld h, b
    ccf
    cp b
    ld e, a
    sbc a
    ld h, a
    sub a
    ld l, b
    cp h
    ld c, e
    db $fc
    dec hl
    ld [bc], a
    db $fc
    ld bc, $03fe
    cp $0e
    db $fc
    db $fd
    ldh a, [c]
    push af
    ld a, [bc]
    dec b
    ld a, [$f807]
    call c, $646b
    dec de
    jr jr_00d_618e

    db $10
    rrca
    rra
    rrca
    rra
    nop
    add hl, sp

jr_00d_618e:
    ld e, $3e
    nop
    dec b
    ld a, [$fa07]
    ld b, $f8
    inc b
    ld hl, sp-$04

jr_00d_619a:
    ld hl, sp-$04
    nop
    ld h, d
    inc a
    ld a, $00
    rlca
    nop
    add hl, bc
    ld b, $15
    ld c, $1a
    dec c
    dec l
    inc de
    dec sp
    rlca
    rra
    ld b, $2d

jr_00d_61b0:
    ld d, $70
    nop
    ret z

    jr nc, jr_00d_619a

    jr jr_00d_61ec

    ret z

    jp c, $eee4

    ldh a, [$fffc]
    or b
    ld e, d
    or h
    scf
    dec e
    dec e
    ld a, [bc]
    rla
    inc c
    dec bc
    rlca
    ld e, $01
    cpl
    ld d, $3f
    inc bc
    ld l, e
    inc [hl]
    or $5c
    call c, $f428

jr_00d_61d6:
    sbc b
    add sp, -$10
    cp h
    ret nz

    ld a, [$fe34]
    ld h, b
    xor e
    sub $7b
    dec [hl]
    ld [hl], e
    inc c
    ld d, d
    dec l
    ld d, a
    jr z, jr_00d_6247

    ld [hl+], a
    ld d, [hl]

jr_00d_61ec:
    cpl
    cpl
    nop
    nop
    nop
    swap [hl]
    ld b, $f8
    inc b
    ld hl, sp-$1c
    jr jr_00d_61d6

    jr nz, jr_00d_61b0

    ld a, b
    ld a, b
    nop
    nop
    nop
    scf
    dec e
    dec e
    ld a, [bc]
    rla
    inc c
    dec bc
    rlca
    ld e, $01
    ccf
    ld b, $7f
    inc sp
    ld a, e
    inc [hl]
    or $5c
    call c, $f428
    sbc b
    add sp, -$10
    cp h
    ret nz

    ld a, [$fa34]
    ld h, h
    and l
    jp c, Jump_000_057b

    ld d, e

jr_00d_6224:
    inc l
    ld d, d
    dec l
    ld d, a
    jr z, jr_00d_6287

    ld [hl+], a
    ld a, d
    inc h
    inc l
    nop
    nop
    nop
    rst $00
    ld a, [hl-]
    ld b, $f8
    inc b
    ld hl, sp-$0c
    ld [$30c8], sp
    cp h
    ld a, b
    ld [hl], h
    jr c, jr_00d_6278

    nop
    scf
    dec e
    dec e
    ld a, [bc]
    rla
    inc c

jr_00d_6247:
    dec bc
    rlca
    ld e, $01
    cpl
    ld d, $2f
    inc de
    dec sp
    inc b
    or $5c
    call c, $f428
    sbc b
    add sp, -$10
    cp h
    ret nz

    cp $30
    ei
    ld h, [hl]
    xor a
    sub $73
    dec l
    ld [hl], e
    inc l
    ld [hl], d
    dec c
    ld d, a
    jr z, jr_00d_62c3

    ld h, $3e
    rrca
    rla
    ld c, $0e
    nop
    add $38
    inc b
    ld hl, sp+$04
    ld hl, sp-$1c

jr_00d_6278:
    jr @-$26

    jr nz, jr_00d_6224

    db $10
    jr jr_00d_627f

jr_00d_627f:
    nop
    nop
    dec c
    nop
    inc de
    inc c
    cpl
    db $10

jr_00d_6287:
    dec sp
    ld b, $36
    rrca
    rra
    rrca
    rra
    dec bc
    rla
    dec bc
    ldh a, [rP1]
    jr @-$1e

    ld l, h
    ldh a, [rDMA]
    ld hl, sp-$46
    ld h, h
    adc $30
    ld a, [hl]
    add b
    xor $98
    ccf
    rla
    dec e
    ld [bc], a
    rla
    add hl, bc
    dec bc
    rlca
    rrca
    nop
    dec e
    dec bc
    cpl
    ld d, $3e
    add hl, bc
    sbc [hl]
    ld hl, sp-$02
    ldh [$ffdc], a
    ldh [$ff78], a
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    sub d
    ld l, h
    sub d
    ld l, h
    jr c, jr_00d_62da

jr_00d_62c3:
    ld sp, $2f0e
    db $10
    db $10
    rrca
    rrca
    nop
    dec b
    inc bc
    rlca
    nop
    nop
    nop
    ldh a, [c]
    inc c
    ld d, d
    db $ec
    jp nc, $fcec

    nop
    sub b

jr_00d_62da:
    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    ccf
    rla
    dec e
    ld [bc], a
    rla
    add hl, bc
    dec bc
    rlca
    rrca
    nop
    dec e
    dec bc
    cpl
    ld d, $3e
    add hl, bc
    sbc [hl]
    ld hl, sp-$02
    ldh [$ffdc], a
    ldh [$ff78], a
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    adc d
    ld [hl], h
    ld e, $e0
    jr c, @+$19

    jr nc, @+$11

    ld l, a
    db $10
    ld a, b
    daa
    ld e, [hl]
    add hl, sp
    ld hl, $1e1e
    nop
    nop
    nop
    ld l, d
    sbc h
    ld a, $d8
    ei
    inc b
    dec a
    jp nz, $3cc2

    inc a
    nop
    nop
    nop
    nop
    nop
    ccf
    rla
    dec e
    ld [bc], a
    rla
    add hl, bc
    dec bc
    rlca
    rrca
    nop
    dec e
    dec bc
    cpl
    ld d, $3f
    ld [$f89e], sp
    cp $e0
    call c, Call_00d_78e0
    add b
    db $fc
    ld [hl], b
    db $f4
    adc b
    sub d
    ld l, h
    ld [bc], a
    db $fc
    ld a, [hl-]
    rla
    ld a, $07
    cpl
    db $10
    ld e, h
    inc hl
    ld h, e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    and d
    ld e, h
    jp nz, $033c

    db $fc
    db $fd
    ld [bc], a
    xor c
    ld e, [hl]
    halt
    jr c, jr_00d_63d6

    nop
    nop
    nop
    rlca
    nop
    inc c
    inc bc
    dec de
    ld b, $16
    rrca
    scf
    rrca
    dec [hl]
    rrca

jr_00d_636d:
    jr @+$09

    dec a
    ld [de], a
    ld [hl], b
    nop
    sbc b
    ld h, b
    call z, $8c30
    ld [hl], b
    ld d, [hl]
    add sp, $1e
    ldh [$ff5c], a
    and b
    ld a, [hl]
    add h
    cpl
    db $10
    rra
    nop
    rla
    ld [$040b], sp
    rra
    inc bc
    inc hl
    inc e
    ld l, b
    rla
    ld a, b
    daa
    ld a, [$fc04]
    nop
    db $f4
    ld [$10e8], sp
    db $fc
    ldh [$ffe2], a
    inc e
    adc e
    ld [hl], h
    adc a
    ld [hl], d
    ld [hl], e
    inc l
    ld [hl], $0b
    inc de
    inc c
    db $10
    rrca
    rrca
    nop
    inc e
    rrca
    rrca
    nop
    nop
    nop
    rst $20
    ld a, [de]
    scf
    add sp, -$1b
    ld a, [de]
    add l
    ld a, d
    db $fd
    ld [bc], a
    push bc
    ld a, d
    ld a, d
    nop
    nop
    nop
    cpl
    db $10
    rra
    nop
    rla
    ld [$040b], sp
    rra
    inc bc
    inc hl
    inc e
    ld [hl], b
    cpl
    ld e, b
    daa
    ld a, [$fc04]
    nop
    db $f4

jr_00d_63d6:
    ld [$10e8], sp
    db $fc
    ldh [$ffe6], a
    jr jr_00d_636d

    halt
    adc e
    halt
    inc sp
    inc c
    ld d, $0b
    inc de
    inc c
    db $10
    rrca
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $20
    jr jr_00d_6429

    ld [$1ae5], a
    add a
    ld a, d
    cp $00
    ret z

    ld [hl], b
    ld [hl], h
    jr c, jr_00d_6438

    nop
    cpl
    db $10
    rra
    nop
    rla
    ld [$040b], sp
    rra
    inc bc
    inc sp
    inc c
    ld l, b
    scf
    ld a, b
    scf
    ld a, [$fc04]
    nop
    db $f4
    ld [$10e8], sp
    db $fc
    ldh [$ffe2], a
    inc e
    add a
    ld a, d
    adc l
    ld [hl], d
    inc sp
    inc c
    ld d, $0b
    inc de
    inc c
    db $10
    rrca

jr_00d_6429:
    rrca
    nop
    ld a, [bc]
    rlca
    dec e
    ld c, $0e
    nop
    rst $20
    jr @+$37

    ld [$1ae5], a
    add l

jr_00d_6438:
    ld a, d
    db $fd
    ld [bc], a
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070a
    dec e
    rlca
    dec hl
    dec d
    ld a, [hl-]
    dec d
    scf
    jr jr_00d_64ca

    nop
    or h
    ld a, b
    ld [hl], d
    adc h
    jp z, Jump_000_3434

    ret z

    xor h
    ret nc

    ld a, [hl+]
    call c, Call_000_0cf6
    dec h
    dec de
    dec hl
    rla
    rra
    ld b, $1d
    ld c, $0b
    ld b, $1d
    dec bc
    dec bc
    inc b
    dec e
    dec bc
    ld [hl-], a
    db $ec
    ld [$fcf4], a
    or b
    call c, $e8b8
    or b
    call c, $e8e8
    sub b
    call c, Call_000_1ee8
    add hl, bc
    dec d
    ld c, $0f
    ld b, $0f
    ld bc, $0b17
    rla
    dec bc
    rrca
    nop
    nop
    nop
    inc a
    ret z

    call nc, $f8b8
    or b
    ld hl, sp-$40
    db $f4
    add sp, -$0c
    add sp, -$08
    nop
    nop
    nop
    ld e, $09
    rla
    dec c
    rra
    dec c
    rrca
    ld bc, $050b
    rla
    dec bc
    rla
    dec bc
    rrca
    nop
    ld a, h
    sbc b
    xor b
    ld [hl], b
    ld hl, sp+$60
    add sp, -$70
    db $f4
    add sp, -$0c
    add sp, -$08
    add b
    add b
    nop
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, b
    ccf
    ld d, h

jr_00d_64ca:
    dec sp
    ld d, a
    add hl, sp
    add hl, hl
    ld d, $16
    rrca
    inc e
    nop
    xor $1c

jr_00d_64d5:
    di
    ld c, [hl]
    ld a, c
    and [hl]
    db $fd
    xor d
    ld a, $d4
    ld a, d
    sub h
    sbc [hl]

Jump_00d_64e0:
    ld l, b
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    ld a, [bc]
    dec b
    ld e, [hl]
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    ld d, b
    and b
    sub b
    ld h, b
    dec c
    ld b, $07
    ld [bc], a
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    rla
    rrca
    rra
    rrca
    rrca
    nop
    sub b
    ld h, b
    jr nz, jr_00d_64d5

    ret nc

    and b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    add h
    ld a, b
    call nz, $f8b8
    nop
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    ld a, [bc]
    dec b
    ld e, [hl]
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    ld d, b
    and b
    sub b
    ld h, b
    dec c
    ld b, $1f
    ld a, [bc]
    dec de
    ld b, $0f
    rlca
    rrca
    rlca
    rla
    rrca
    rla
    rrca
    rrca
    nop
    adc b
    ld [hl], b
    ld c, b
    or b
    inc a
    ret c

    sbc b
    ld h, b
    add h
    ld a, b
    ld b, h
    cp b
    jp nz, $fcbc

    nop
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    ld b, $01
    dec b
    inc bc
    add hl, bc
    ld b, $5e
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld [hl], b
    and b
    ld h, b
    add b
    or b
    ld b, b
    db $10
    ldh [$ff0e], a
    ld bc, $070e
    rrca
    nop
    ld c, $05
    ld c, $05
    rla
    ld c, $16
    rrca
    rrca
    nop
    db $10
    ldh [rNR41], a
    ret nz

    ret nc

    jr nz, jr_00d_65a0

    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp-$7e
    ld a, h
    db $fc

jr_00d_65a0:
    nop
    inc bc
    nop
    rlca
    inc bc
    ld c, $07
    dec c
    ld b, $1b
    dec b
    ld l, $11
    dec sp
    inc d
    ccf
    inc d
    ldh [rP1], a
    sub b
    ldh [$ff08], a
    ldh a, [$ffc8]
    or b
    inc l
    ret nc

    ld a, [hl-]
    call nz, $946a
    ld [$2a14], a
    dec d
    dec d
    ld a, [bc]
    ld [de], a
    dec c
    add hl, bc
    ld b, $1c
    dec bc
    dec bc
    inc b
    db $10
    rrca
    inc de
    rrca
    ld a, [hl+]
    call nc, $28d4
    inc h
    ret c

    ret z

    jr nc, jr_00d_65f6

    add sp, -$18
    db $10
    inc b
    ld hl, sp-$1c
    ld hl, sp+$29
    rla
    inc a
    inc de
    jr @+$09

    add hl, bc
    rlca
    add hl, bc
    rlca
    inc de
    rrca
    ld de, $0f0f
    nop
    jp z, Jump_000_1ef4

    db $e4
    adc h

jr_00d_65f6:
    ldh a, [$ffc8]
    ldh a, [$ffc8]
    ldh a, [$ffe4]
    ld hl, sp-$3c
    ld hl, sp-$08
    nop
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    ld [de], a
    dec c
    add hl, bc
    ld b, $1c
    dec bc
    dec bc
    inc b
    db $10
    rrca
    dec hl
    rla
    ld a, [hl+]
    call nc, $28d4
    inc h
    ret c

    ret z

    jr nc, jr_00d_6636

    add sp, -$18
    db $10
    inc b
    ld hl, sp-$16
    db $f4
    add hl, sp
    rla
    inc e
    inc bc
    ld [$0907], sp
    rlca
    inc de
    rrca
    inc de
    rrca
    dec bc
    rlca
    rlca
    nop
    adc $f4
    ld e, $e4
    adc h

jr_00d_6636:
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp-$1c
    ld hl, sp+$78
    add b
    add b
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070a
    dec e
    rlca
    dec hl
    dec d
    ld a, [hl-]
    dec d
    scf
    jr jr_00d_66ca

    nop
    or h
    ld a, b
    ld [hl], d
    adc h
    jp z, Jump_000_3434

    ret z

    xor h
    ret nc

    ld a, [hl+]
    call c, Call_000_0cf6
    dec h
    dec de
    dec hl
    rla
    rra
    ld b, $1d
    ld c, $0b
    ld b, $1d
    dec bc
    ccf
    nop
    ld a, a
    ccf
    ld [hl-], a
    db $ec
    ld [$fcf4], a
    or b
    call c, $e8b8
    or b
    call c, Call_00d_7ee8
    add b
    rst $38
    ld a, [hl]
    ld a, a
    nop
    ld [hl], b
    cpl
    ld h, b
    rra
    ccf
    nop
    dec bc
    dec b
    rla
    dec bc
    rla
    dec bc
    rrca
    nop
    ld a, a
    add b
    add a
    ld a, d
    add e
    ld a, h
    cp $00
    add sp, -$30
    db $f4
    add sp, -$0c
    add sp, -$08
    nop
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, b
    ccf
    ld d, l
    dec sp
    ld d, [hl]
    add hl, sp
    add hl, hl
    ld d, $16
    rrca
    inc e
    nop
    xor $1c
    or e
    ld c, [hl]
    ld sp, hl
    and [hl]
    ld d, l
    xor d
    ld a, [hl-]
    call nc, $946a
    sbc [hl]
    ld l, b
    rra
    dec bc
    dec e
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc

jr_00d_66ca:
    rlca
    rlca
    nop
    ccf
    nop
    ld a, a
    ccf
    ld e, h
    xor b
    ld d, h
    xor b
    xor h
    ret nc

    ld l, b
    ret nc

    ld a, b
    and b
    ret nc

    and b
    ld a, [hl]
    add b
    rst $38
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $16
    rrca
    dec d
    rrca
    inc sp
    dec c
    ld a, [hl+]
    dec d
    ld a, b
    nop
    call nc, Call_00d_4a38
    cp h
    ld b, d
    cp h
    db $fc
    ld b, b
    ld [hl], h
    cp b
    cp d
    call nz, $dc2a
    scf
    jr jr_00d_6729

    dec de
    cpl
    rla
    rra
    ld c, $0b
    ld b, $1d
    ld a, [bc]
    ccf
    nop
    ld a, a
    ccf
    ldh [c], a
    inc e
    ld d, d
    db $ec

jr_00d_6715:
    ld a, [$fcf4]
    cp b
    add sp, -$50
    call c, Call_00d_7ea8
    add b
    rst $38
    ld a, [hl]
    inc bc
    nop
    inc c
    inc bc
    dec de
    inc b
    rla
    dec bc

jr_00d_6729:
    cpl
    inc d
    dec l
    inc de
    dec hl
    rla
    scf
    rrca
    ldh [rP1], a
    jr jr_00d_6715

    db $ec
    db $10
    db $f4
    add sp, -$06
    inc d
    jp c, $eae4

    db $f4
    or $f8
    daa
    ld e, $37
    ld e, $33
    ld c, $2d
    inc de
    ld l, $15
    inc sp
    ld c, $33
    dec c
    dec hl
    inc d
    ldh a, [c]
    cp h
    or $bc
    and $b8
    jp c, Jump_000_3ae4

    call nc, $b866
    and $58
    ld [$3b94], a
    inc e
    dec sp
    inc e
    dec e
    ld b, $07
    inc bc
    inc b
    inc bc
    rrca
    ld b, $06
    nop
    nop
    nop
    xor $1c
    xor $1c
    call c, $f030
    ldh [$ff90], a
    ld h, b
    ld a, b
    jr nc, jr_00d_67ae

    nop
    nop
    nop
    daa
    ld e, $37
    ld e, $33
    ld c, $2d
    inc de
    ld l, $15
    inc sp
    ld c, $2d
    inc de
    dec h
    ld a, [de]
    ldh a, [c]
    cp h
    or $bc
    and $b8
    jp c, Jump_000_3ae4

    call nc, $b866
    jp nc, $de6c

    xor h
    dec sp
    inc d
    dec de
    inc b
    ld c, $07
    rlca

jr_00d_67a8:
    ld bc, $0205
    dec b
    ld [bc], a
    rrca

jr_00d_67ae:
    ld b, $06
    nop
    cp $0c
    db $ec
    db $10
    ret c

    jr nc, jr_00d_67a8

    ldh [$fff0], a
    nop
    ld e, b
    jr nc, jr_00d_67ee

    nop
    nop
    nop
    daa
    ld e, $37
    ld e, $33
    ld c, $2d
    inc de
    ld l, $15
    inc sp
    ld c, $25
    dec de
    dec a
    ld a, [de]
    ldh a, [c]
    cp h
    or $bc
    and $b8
    jp c, Jump_000_3ae4

    call nc, $b866
    jp c, $d264

    xor h
    ccf
    jr @+$1d

    inc b
    rrca
    inc b
    rlca
    inc bc
    rlca
    nop
    dec c
    ld b, $06

jr_00d_67ee:
    nop
    nop
    nop
    xor $14
    db $ec
    db $10
    cp b
    ld [hl], b
    ldh a, [$ffc0]
    ret nc

    jr nz, jr_00d_684c

    jr nz, jr_00d_6876

    jr nc, @+$32

    nop
    rlca
    nop
    ld e, $01
    ccf
    ld c, $27
    add hl, de
    add hl, hl
    ld d, $16
    rrca
    rra
    rrca
    rra
    dec bc
    ldh a, [rP1]
    inc c
    ldh a, [$ff82]
    ld a, h
    add $bc
    ld h, a
    sbc $bf
    ld l, [hl]
    ld e, l
    xor [hl]
    ld [hl], c
    adc [hl]
    dec e
    dec bc
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    ld b, $01
    dec c
    inc bc
    ld a, [bc]
    rlca
    ld b, $01
    ld b, c
    cp [hl]
    ld [hl], c
    xor [hl]
    ld d, c
    xor [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    sbc $61
    sbc [hl]
    ldh a, [c]
    inc c
    dec bc
    inc b
    dec bc
    inc b
    dec c
    ld b, $07
    inc bc
    inc bc
    nop
    rlca

jr_00d_684c:
    inc bc
    inc bc
    nop
    nop

jr_00d_6850:
    nop
    inc a
    ret nz

    ld hl, sp+$60
    db $ec
    jr jr_00d_6850

    ldh a, [$ff30]
    ret nz

    ldh a, [$ffc0]
    ldh [rP1], a
    nop
    nop
    dec e
    dec bc
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    ld b, $01
    dec c
    inc bc
    ld a, [bc]
    rlca
    dec b
    ld [bc], a
    ld b, c
    cp [hl]
    ld [hl], c
    xor [hl]
    ld d, c

jr_00d_6876:
    xor [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    sbc $61
    sbc [hl]
    sub d
    ld l, h
    dec bc
    inc b
    dec bc
    inc b
    ld c, $07
    rra
    ld bc, $0e1d
    rrca
    inc bc
    inc bc
    nop
    nop

jr_00d_6890:
    nop
    db $fc
    jr nc, jr_00d_6890

    ld [$08fc], sp
    cp $f4
    db $fc
    ld [$0098], sp
    nop
    nop
    nop
    nop
    dec e
    dec bc
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    ld b, $01
    dec c
    inc bc
    ld a, [bc]
    rlca
    dec b
    ld [bc], a
    ld b, c
    cp [hl]
    ld [hl], c
    xor [hl]
    ld d, c
    xor [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    sbc $e1
    ld e, $f2
    inc c
    ld [$0f07], sp
    ld b, $0f
    nop
    rra
    dec bc
    rrca
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00

jr_00d_68d5:
    call c, $f838
    ldh [$ffec], a
    jr jr_00d_6950

    jr c, jr_00d_6956

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    ld a, [de]
    rlca
    dec d
    ld c, $39
    ld c, $2c
    rra
    inc l
    rra
    cpl
    rra
    ldh [rP1], a
    jr jr_00d_68d5

    xor h
    ld [hl], b
    call nc, $ce38
    jr c, @-$64

    ld a, h
    ld a, [de]
    db $fc
    ld a, d
    db $fc
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_6928

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec sp
    inc b
    ldh a, [c]
    db $fc
    jp nz, $02fc

    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, [hl]
    sub b
    dec a
    ld [de], a
    dec de
    inc b
    rrca
    inc b
    rlca

jr_00d_6928:
    inc bc
    inc b
    inc bc
    rrca
    ld b, $06
    nop
    nop
    nop
    sbc $24
    db $ec
    db $10
    ld hl, sp+$10
    ldh a, [$ffe0]
    sub b
    ld h, b
    ld a, b
    jr nc, jr_00d_696e

    nop
    nop
    nop
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_6968

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec de

jr_00d_6950:
    inc b
    ldh a, [c]
    db $fc
    jp nz, $02fc

jr_00d_6956:
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, d
    sub h
    dec c
    ld [bc], a
    dec bc
    inc b
    rrca
    inc b
    rlca

jr_00d_6968:
    inc bc
    inc b
    inc bc
    dec c
    ld b, $0b

jr_00d_696e:
    ld b, $06
    nop
    sbc $24
    db $ec
    db $10
    cp b
    ld [hl], b
    ldh a, [$ffc0]
    sbc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    daa
    rra
    ld hl, $201f
    rra
    jr nz, jr_00d_69a8

    ld [hl+], a
    dec e
    ld [hl-], a
    dec c
    ld [hl-], a
    dec c
    dec hl
    inc d
    ldh a, [c]
    db $fc
    jp nz, $02fc

    db $fc

jr_00d_6997:
    ld [bc], a
    db $fc
    ld b, $f8
    ld h, $d8
    ld h, $d8
    ld l, h
    sub b
    dec a
    ld [de], a
    dec de
    inc b
    ld c, $07
    rlca

jr_00d_69a8:
    ld bc, $070c
    rlca
    nop
    nop
    nop
    nop
    nop
    ret c

    jr nz, @-$16

    db $10
    ld hl, sp+$10
    ldh a, [$ffe0]
    sub b
    ld h, b
    ld e, b
    jr nc, jr_00d_6a26

    jr nc, jr_00d_69f0

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec bc
    rlca
    inc c
    inc bc
    ld d, $0f
    inc l
    rra
    dec [hl]
    ld e, $00
    nop
    ret nz

    nop
    jr nz, jr_00d_6997

    sub b
    ldh [rBCPS], a
    sub b
    sbc b
    ld h, b
    db $ec
    ld [hl], b
    ld e, h
    or b
    ld c, d
    dec [hl]
    ld d, a
    dec hl
    ld l, e
    dec a
    ld c, e
    dec a
    cpl
    dec e
    daa
    rra
    inc l
    inc de
    rla

jr_00d_69f0:
    dec bc
    and h
    ret c

    call nc, $ace8
    ld a, b

jr_00d_69f7:
    and h
    ld a, b
    add sp, $70
    ret z

    ldh a, [rBCPS]
    sub b
    ret nc

    and b
    dec hl
    rla
    ld a, a
    jr nc, jr_00d_6a5e

    scf
    ccf
    ld c, $0d
    ld [bc], a
    rrca
    ld b, $1f
    ld c, $1e
    nop
    xor b
    ret nc

    db $fc
    jr jr_00d_6a4a

    ret c

    ld hl, sp-$20
    ld h, b
    add b
    ldh [$ffc0], a
    ldh a, [$ffe0]
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    inc b

jr_00d_6a26:
    inc bc
    dec bc
    rlca
    inc c
    inc bc
    ld d, $0f
    inc l
    rra
    dec [hl]
    ld e, $00
    nop
    ret nz

    nop
    jr nz, jr_00d_69f7

    sub b
    ldh [rBCPS], a
    sub b
    sub h
    ld l, b
    db $ec
    ld [hl], b
    ld e, h
    or b
    ld c, d
    dec [hl]
    ld d, a
    dec hl
    ld l, e
    dec a
    ld c, e
    dec a
    cpl

jr_00d_6a4a:
    dec e
    daa
    rra
    inc l
    inc de
    ld [hl], a
    dec bc
    and h
    ret c

    sub $e8
    xor l
    ld a, d
    and [hl]
    ld a, b
    add sp, $70
    ret z

    ldh a, [rBCPS]

jr_00d_6a5e:
    sub b
    ret c

    and b
    ei
    ld h, a
    cp $61
    ld l, b
    rla
    dec e
    ld c, $0b
    inc b
    dec e
    ld c, $0f
    nop
    nop
    nop
    xor b
    ret nc

    ld l, h
    sbc b
    db $f4
    add sp, $38
    ret nz

    ld [hl], b
    ldh [$fff0], a
    ldh [$ffe0], a
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld c, $01
    dec bc
    rlca
    ld d, $0f
    ld a, [de]
    rrca
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ffc8], a
    ldh a, [$ff38]
    ret nz

    ld c, h
    or b
    ld [hl], h
    cp b
    xor [hl]
    ld e, b
    dec h
    ld a, [de]
    ld l, e
    dec d
    or l
    ld e, [hl]
    ld h, l
    ld e, $17
    ld c, $13
    rrca
    ld d, $09
    dec de
    dec b
    ld d, d
    db $ec
    ld [$d6f4], a
    cp h
    jp nc, $f4bc

    cp b
    db $e4
    ld hl, sp+$34
    ret z

    xor $d0
    dec d
    dec bc
    ld [hl], $19
    cpl
    rla
    jr jr_00d_6ad0

    ld c, $07
    rrca
    rlca
    rlca
    inc bc
    inc bc

jr_00d_6ad0:
    nop
    rst $18
    and $7f
    add [hl]
    ld d, $e8
    cp b
    ld [hl], b
    ret nc

    jr nz, @-$46

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    jr c, jr_00d_6af2

    ld e, c
    ld a, $a6
    ld a, c
    adc c
    halt
    nop

jr_00d_6af2:
    nop

jr_00d_6af3:
    ldh a, [rP1]
    inc c
    ldh a, [$ffea]
    call c, Call_000_2ef5
    inc hl
    sbc $d3
    xor $e9
    or $96
    ld l, a
    ld e, l
    dec hl
    dec a
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    add hl, hl
    or $49
    or [hl]
    ld c, c
    or [hl]
    ld l, c
    sub $29
    sub $5a
    and h
    ld h, h
    add b
    sub b
    ld h, b
    ld a, [bc]
    rlca
    ld b, $03
    rlca
    nop
    inc b
    inc bc
    rlca

jr_00d_6b2a:
    inc bc
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    jr nc, jr_00d_6af3

    add sp, -$30
    add sp, -$30
    ret nc

    jr nz, jr_00d_6b2a

    ldh [rSVBK], a
    add b
    and b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    jr c, jr_00d_6b52

    ld e, c
    ld a, $a6

jr_00d_6b4e:
    ld a, c
    adc c
    halt
    nop

jr_00d_6b52:
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$ffea]
    call c, Call_000_2ef5
    inc hl
    sbc $d3
    xor $f1
    xor $96
    ld l, a
    ld e, l
    dec hl
    dec a
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    add hl, hl
    or $49
    or [hl]
    ld c, c
    or [hl]
    ld l, c
    sub $29
    sub $59
    and [hl]
    ld l, d
    add h
    sub h
    ld h, b
    dec bc
    rlca
    rra
    dec bc
    rla
    ld [$070c], sp
    rla
    dec bc
    add hl, de
    ld c, $0e
    rlca
    rlca
    nop
    ld [$5cf0], sp
    cp b
    db $fc
    jr @+$5a

    and b
    xor h
    ld e, b
    ret c

    jr nc, jr_00d_6b4e

    nop
    nop
    nop
    sub [hl]
    ld l, a
    ld e, l
    dec hl
    dec a
    dec bc
    cpl
    dec de
    rra
    rrca
    add hl, bc
    rlca
    rlca
    nop
    rlca
    nop
    add hl, hl
    or $49
    or [hl]
    ld c, c
    or [hl]

jr_00d_6bb7:
    ld l, c
    sub $2a
    call nc, $a854
    ld l, b
    sub b
    sbc b
    ld h, b
    ld c, $07
    ld c, $07
    rlca
    nop
    ld b, $03
    dec e
    ld [bc], a
    dec e
    ld c, $0e
    nop
    nop
    nop
    inc d
    add sp, -$34
    jr nc, @+$3a

    ret nz

    ld a, h
    ldh a, [$ffa2]
    call c, Call_000_18ec
    ld a, b
    jr nc, jr_00d_6c50

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1207], sp
    rrca
    dec d
    rrca
    dec [hl]
    rrca
    ld sp, $000f
    nop
    ret nz

    nop
    jr nz, jr_00d_6bb7

    db $10
    ldh [$ff50], a
    ldh [$ff58], a
    ldh [$ff94], a
    add sp, $14
    add sp, $30
    rrca
    jr nc, jr_00d_6c14

    ld [hl-], a
    dec c
    ld a, [hl-]
    dec b
    ld a, [de]
    dec b
    ld d, $09
    ld d, $09
    add hl, bc
    ld b, $12
    db $ec
    ld [de], a

jr_00d_6c14:
    db $ec
    ld d, $ec
    ld [hl+], a
    call c, $b844
    ld d, h
    xor b
    or h
    ld c, b
    ld [$16f0], sp
    dec bc
    ccf
    dec de
    cpl
    jr jr_00d_6c44

    inc bc
    rrca
    rlca
    ld b, $01
    rlca
    inc bc
    rlca
    nop
    inc d
    add sp, $1e
    db $ec
    ld a, [$1c0c]
    ldh [$fff8], a
    ld [hl], b
    or b
    ld b, b
    ldh a, [$ff60]
    ld [hl], b
    nop
    ld bc, $0200

jr_00d_6c44:
    ld bc, $0304
    ld [$0b07], sp
    rlca
    ld a, [de]
    rlca
    inc d
    rrca
    db $10

jr_00d_6c50:
    rrca
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff88]
    ldh a, [$ff6c]
    ldh a, [$ffca]
    db $f4
    adc d
    db $f4
    add hl, bc
    or $14
    dec bc
    inc h
    dec de
    add hl, hl
    ld d, $52
    dec l
    push hl
    ld a, [de]
    ccf
    nop
    inc e
    inc bc
    dec e
    rrca
    add hl, bc
    or $13
    xor $31
    adc $62
    sbc h
    adc d
    ld [hl], h
    ld a, [$0604]
    ld hl, sp+$03
    db $fc
    rra
    dec c
    rrca
    nop
    ld b, $01
    rlca
    inc bc
    inc bc
    nop
    dec b
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop
    adc e
    or $fe
    nop
    inc b
    ld hl, sp-$28
    or b
    ld h, h
    sbc b
    ret c

    add b
    ret nz

    nop
    add b
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$1107], sp
    rrca
    inc de
    rrca
    ld a, [hl+]
    rla
    ld a, [hl+]
    rla
    jr z, @+$19

    ret nz

    nop
    jr nz, @-$3e

    db $10
    ldh [$ff50], a
    ldh [rOBP0], a
    ldh a, [$ffac]
    ldh a, [$ff8c]
    ldh a, [$ff0a]
    db $f4
    jr z, jr_00d_6cda

    inc l
    inc de
    inc [hl]
    dec bc
    ld d, $09
    dec d
    ld a, [bc]
    inc d
    dec bc
    jr jr_00d_6cd6

    ld [hl-], a
    rrca
    ld a, [hl+]
    call nc, $d42e
    sbc d

jr_00d_6cd6:
    ld h, h

jr_00d_6cd7:
    ld c, [hl]
    or b
    and [hl]

jr_00d_6cda:
    ld e, b
    ld a, d
    add h
    ld c, $f0
    ld c, $fc
    scf
    dec de
    rra
    nop
    inc c
    inc bc
    ld b, $03
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld e, $ec
    db $fc
    nop
    jr jr_00d_6cd7

    ld hl, sp+$70
    or b
    ld b, b
    add sp, $70
    ld hl, sp+$10
    ld [hl], b
    nop
    rlca
    nop
    ld [$1407], sp
    rrca
    cpl
    inc e
    ld e, e
    inc a
    ld a, e
    dec a
    or l
    ld a, e
    xor l
    ld [hl], e
    add b
    nop
    ld [hl], b
    add b
    add sp, -$10
    ld [hl], h
    ld hl, sp-$44
    ld a, b
    jp c, $aabc

    call c, $ee95
    or e
    ld c, l
    db $eb
    dec a
    ld e, a
    dec l
    dec sp
    rlca
    ld e, l
    inc hl
    ld d, a
    cpl
    jr c, @+$11

jr_00d_6d2f:
    inc l
    dec de
    xor l
    halt
    xor c
    ld a, [hl]
    ld a, [$b464]
    ret z

    ld [hl], h
    adc b
    add sp, -$10
    jr jr_00d_6d2f

    inc [hl]
    ret c

    ld [hl], a
    dec sp
    ld a, b
    scf
    jr c, jr_00d_6d4e

    rrca
    nop
    rlca
    ld [bc], a
    add hl, bc
    ld b, $0e

jr_00d_6d4e:
    nop
    nop
    nop
    xor $dc
    ld e, $ec
    inc e
    ldh [$fff0], a
    nop
    ldh [rLCDC], a
    sub b
    ld h, b

jr_00d_6d5d:
    ld [hl], b
    nop
    nop
    nop
    or e
    ld c, l
    xor e
    ld a, l
    ld e, a
    dec l
    ld c, e
    scf
    cpl
    ld de, $0f17
    jr @+$11

jr_00d_6d6f:
    inc [hl]
    dec de
    xor l
    halt
    xor c
    ld a, [hl]

jr_00d_6d75:
    ld a, [$b464]
    ret z

    ld h, h
    sbc b
    add sp, -$10
    jr jr_00d_6d6f

    inc a
    ret c

    ld c, a
    inc sp
    jr c, jr_00d_6d8c

    ld [$0f07], sp
    nop
    add hl, bc
    ld b, $07

jr_00d_6d8c:
    nop
    ld bc, $0000
    nop
    db $fc
    ret c

    jr jr_00d_6d75

    db $10
    ldh [$fff0], a
    nop
    ldh [rLCDC], a
    jr nz, jr_00d_6d5d

    db $10
    ldh [$fff0], a
    nop
    or e
    ld c, l
    db $eb
    dec a
    ld e, a
    dec l
    dec sp
    rlca
    cpl
    ld de, $0f17
    jr c, @+$11

jr_00d_6daf:
    inc a
    dec de
    xor l
    halt
    xor c
    ld a, [hl]
    ld a, [$b464]
    ret z

    ld h, h
    sbc b
    add sp, -$10
    jr jr_00d_6daf

    ld l, $d8
    ld a, a
    dec de
    ld e, b
    daa
    ld e, b
    daa
    cpl
    nop
    rlca
    ld [bc], a
    inc b
    inc bc
    ld [$0f07], sp
    nop
    or $cc
    inc e
    ldh [rNR10], a
    ldh [$fff0], a
    nop
    sub b
    ld h, b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    inc l
    rra
    ld e, d
    dec a
    cp l
    ld a, d
    or $7b
    rst $30
    ld a, e
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    add sp, -$10
    db $f4
    ld hl, sp+$7c
    ld hl, sp-$46
    ld a, h

jr_00d_6dff:
    sbc d
    ld a, h
    xor d
    ld [hl], l
    ld e, [hl]
    dec h
    scf
    dec c
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    add hl, bc
    ld b, $42
    cp h
    or d
    call z, $e8f7
    xor b
    rst $10
    db $d3
    db $ec
    dec a
    jp nz, $ef92

    ld e, e
    rst $20
    ld [$0707], sp
    inc bc

jr_00d_6e25:
    inc b
    inc bc
    inc b
    inc bc
    dec b
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    reti


    ld h, a
    push af
    ld h, e
    ldh a, [c]
    ld h, c
    pop af
    nop
    pop de
    and b
    ldh [$ff80], a
    jr nz, jr_00d_6dff

    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    inc bc
    nop
    inc e
    inc bc
    inc l
    rra
    ld e, d
    dec a
    cp l
    ld a, d
    or $7b
    rst $30
    ld a, e
    xor d
    ld [hl], l
    ret nz

    nop
    jr nc, jr_00d_6e25

    add sp, -$10
    db $f4
    ld hl, sp+$7c
    ld hl, sp-$46
    ld a, h
    sbc d
    ld a, h
    ld b, d
    cp h
    ld e, [hl]
    dec h
    scf
    dec c
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    add hl, bc
    ld b, $08
    rlca
    or d
    call z, $e8f7

jr_00d_6e85:
    xor b
    rst $10
    db $d3
    db $ec
    dec a
    jp nz, $efd4

    dec hl
    rst $30
    db $dd
    dec sp
    rra
    dec bc
    inc c
    inc bc
    dec b
    ld [bc], a
    dec bc
    dec b
    dec bc
    dec b
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    ccf
    ret c

    jr jr_00d_6e85

    sub b
    ld h, b
    ret c

    and b
    and h
    jr @-$46

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    add b
    nop
    ld e, [hl]
    dec h
    scf
    dec c
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    add hl, bc
    ld b, $0a
    dec b
    or d
    call z, $e8f6
    xor c
    sub $d2
    db $ec
    inc a
    ret nz

    ld d, [hl]
    db $ec
    ld d, l
    xor $bd
    adc $07
    inc bc
    rlca
    inc bc
    rlca
    nop
    inc c
    inc bc
    dec bc
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    ld e, d
    xor h
    sub [hl]
    ld l, b

jr_00d_6ef5:
    ld e, h
    and b
    db $f4
    ld h, b
    add sp, $30
    adc b
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    ld bc, $0e00

jr_00d_6f04:
    ld bc, $0f16
    inc l
    rra
    inc a
    rra
    ld e, [hl]
    ccf
    ld e, a
    ccf
    adc a
    ld a, a
    ldh [rP1], a
    jr jr_00d_6ef5

    ld h, h
    ld hl, sp+$34
    ld hl, sp+$3a
    db $fc
    ld a, d
    db $fc
    ld a, [$f1fc]
    cp $83
    ld a, a
    adc [hl]
    ld [hl], c
    ld d, c
    ld l, $2c
    inc de
    dec de
    inc b
    ld [de], a

jr_00d_6f2c:
    dec c
    dec l
    dec de
    dec [hl]
    dec de
    pop bc
    cp $71
    adc [hl]
    adc d
    ld [hl], h
    inc [hl]
    ret z

    ret c

    jr nz, jr_00d_6f04

    or b
    or h
    ret c

    xor h
    ret c

    ld a, l
    inc sp
    ld a, e
    dec [hl]
    ld a, [hl-]
    dec b
    ld c, $01
    rlca
    ld [bc], a
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld a, $cc
    ld e, [hl]
    xor h
    sbc h
    ld h, b
    ldh a, [rP1]
    ldh [rLCDC], a
    sub b
    ld h, b

jr_00d_6f5d:
    ld h, b
    nop
    nop
    nop
    add e
    ld a, a
    adc [hl]
    ld [hl], c
    ld d, c
    ld l, $2c
    inc de
    dec de
    inc b
    dec c

jr_00d_6f6c:
    inc bc
    ld [hl], $09
    ld l, a
    jr c, @-$3d

    cp $71
    adc [hl]
    adc d
    ld [hl], h
    inc [hl]
    ret z

    ret c

    jr nz, jr_00d_6f2c

    ret nz

    ret c

    ldh [$ff74], a

jr_00d_6f80:
    add sp, $7c
    inc sp
    inc [hl]
    inc bc
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $07
    nop
    ld bc, $0100
    nop
    nop
    nop
    or h
    ld l, b
    ld a, b
    and b
    ld c, h
    or b
    ldh a, [rP1]
    ldh [$ffc0], a
    jr nz, jr_00d_6f5d

    ret nc

    jr nz, jr_00d_6f80

    nop
    add e
    ld a, a
    adc [hl]
    ld [hl], c
    ld d, c
    ld l, $2c
    inc de
    dec de
    inc b
    dec c
    inc bc
    dec de
    rlca
    cpl
    rla
    pop bc
    cp $71
    adc [hl]
    adc d
    ld [hl], h
    inc [hl]
    ret z

    ret c

    jr nz, jr_00d_6f6c

    ret nz

    ld l, h
    sub b
    or [hl]
    ld e, h
    dec l
    ld d, $1e
    dec b
    ld a, [bc]
    dec b
    rlca
    nop
    rlca
    inc bc
    inc b
    inc bc
    dec bc
    inc b
    rlca
    nop
    ld e, $ec
    inc e
    ldh [rNR10], a
    ldh [$ff90], a
    ld h, b
    ldh [rP1], a
    add b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    dec l
    ld e, $2e
    dec e
    ld a, [hl+]
    dec e
    dec h
    dec de
    ldh a, [rP1]
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$14
    ld hl, sp-$26
    inc a
    cp d
    ld e, h
    xor d
    call c, $ecd2
    ld c, a
    ld [hl], $9d
    ld l, [hl]
    dec e
    and $cb
    rst $30
    ld c, [hl]
    pop af
    dec bc
    or $fa
    rrca
    dec h
    dec de
    ld sp, hl
    or [hl]
    call c, $dcbb
    or e

jr_00d_7037:
    jp hl


    rst $30
    add hl, sp
    rst $00

jr_00d_703b:
    ld l, b
    or a
    cpl
    ld hl, sp-$2e
    db $ec
    ld a, b
    scf
    ld a, e
    cpl
    dec hl
    rra
    inc l
    rra
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    nop
    nop
    rrca
    or $ef
    ld a, [$fcea]
    ld a, [de]
    db $fc
    db $ec
    ldh a, [$ffb8]
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_00d_7072:
    nop
    ret nz

    nop
    jr nz, jr_00d_7037

    and b
    ret nz

    jr nz, jr_00d_703b

    ld b, b

Jump_00d_707c:
    add b
    add b
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    dec l
    ld e, $2e
    dec e
    ld a, [hl+]
    dec e

jr_00d_708f:
    push bc
    dec sp
    rrca
    or $1d
    xor $dd
    and $4b
    rst $30
    ld c, $f1
    ei
    ld b, $6a
    ccf
    ld [hl], l
    dec sp
    ld sp, hl
    or [hl]
    call c, $ddbb
    or e
    jp hl


    rst $30
    jr c, jr_00d_7072

    ld h, a
    cp b
    dec hl
    db $fc
    db $db
    and $38
    rlca
    dec de
    rrca
    dec hl
    rra
    inc l
    rra
    dec de
    rlca
    rrca
    nop
    inc bc
    nop
    nop
    nop
    rrca

jr_00d_70c2:
    ldh a, [$ffec]
    ld hl, sp+$0a
    db $fc

jr_00d_70c7:
    halt
    ld hl, sp-$68
    ldh [$fff0], a
    nop
    jr nz, jr_00d_708f

    ldh [rP1], a
    ldh a, [rP1]
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$14
    ld hl, sp-$26
    inc a
    cp d
    ld e, h
    xor d
    call c, $eed1
    rst $08
    ld [hl], $1d
    xor $dd
    and $4b
    rst $30
    ld c, $f1
    di
    ld c, $6a
    rra
    ld l, l
    inc sp
    ld hl, sp-$49
    call c, $ddbb
    or e
    jp hl


    rst $30
    jr c, jr_00d_70c2

    ld l, [hl]
    or c
    dec hl
    cp $d7
    xor $80
    nop
    ld b, b
    add b

jr_00d_7105:
    jr nz, jr_00d_70c7

    and b
    ret nz

    jr nz, @-$3e

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, b
    rlca
    dec de
    rrca
    jr z, jr_00d_7136

    scf
    rrca
    inc c
    inc bc
    rlca
    nop
    ld [bc], a
    ld bc, $0003
    ld c, $f0
    db $ec
    ld hl, sp+$6a
    db $fc
    ld a, [de]
    db $fc
    db $ec
    ldh a, [$fff8]
    nop
    ld h, b
    add b
    add b
    nop
    rrca
    nop
    jr nc, @+$11

    ld b, c

jr_00d_7136:
    ccf
    ld b, l
    ccf
    sub [hl]
    ld l, a
    sbc e
    ld h, a
    ld [hl], h
    dec de
    ld a, [hl-]
    dec d
    ret nz

    nop
    jr nc, jr_00d_7105

    ld [$a8f0], sp
    ldh a, [$fff4]
    ld hl, sp-$4c
    ld hl, sp+$14
    ld hl, sp+$02
    db $fc
    dec sp
    ld d, $5b
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    add hl, de
    rrca
    dec bc
    dec b
    pop hl
    ld e, $c8
    cp a

jr_00d_7165:
    adc $3f
    adc h
    ld a, a
    add b
    ld a, a
    ld b, c
    cp [hl]
    cp [hl]
    ld b, b
    and b
    ld b, b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec c
    dec de
    dec c
    inc hl
    ld e, $3e
    rra
    rra
    nop
    inc b
    inc bc
    rlca
    nop
    nop
    nop
    ret nc

    and b
    ret z

    or b
    adc b
    ld [hl], b
    db $10
    ldh [$ffe0], a
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_00d_7165

    ld [$a8f0], sp
    ldh a, [$fff4]
    ld hl, sp-$4c
    ld hl, sp+$14
    ld hl, sp+$03
    db $fc
    dec sp
    ld d, $5b
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    add hl, de
    rrca
    ld a, [hl-]
    dec b
    ldh [$ff1f], a
    adc $bf
    adc $3f
    adc h
    ld a, a
    add c
    ld a, [hl]
    ld b, [hl]
    cp b
    ld a, h
    add b
    or b
    ldh [$ff7d], a
    ld l, $39
    rrca
    ld [hl+], a
    rra
    ld e, h
    ccf
    ld a, a
    nop
    inc de
    inc c
    ld c, $00
    nop
    nop
    ld [hl], b
    ldh [$ffe8], a
    db $10
    inc b
    ld hl, sp+$18
    ldh [$fff8], a
    nop
    jr nc, jr_00d_71ed

jr_00d_71ed:
    nop
    nop
    nop
    nop
    dec sp
    ld d, $5b
    scf
    ccf
    rra
    ld e, $0f
    inc c
    inc bc
    ld [de], a
    rrca
    dec de
    dec c
    ld e, $0b
    ldh [$ff1f], a

jr_00d_7203:
    adc $bf
    adc $3f
    adc h
    ld a, a
    add c
    ld a, [hl]
    ld b, [hl]
    cp b
    cp h
    ld b, b
    xor b
    ld d, b
    dec c
    ld b, $1f
    ld b, $26
    add hl, de
    ld e, a
    ccf
    ld a, a
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    jr jr_00d_7203

    ld l, b
    ldh a, [$ffc4]
    ld hl, sp+$38
    ret nz

    ret nc

    jr nz, jr_00d_725c

    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    ld l, $1f
    ld l, $1f
    daa
    rra
    nop
    nop
    ldh a, [rP1]
    ld [$04f0], sp
    ld hl, sp+$14
    ld hl, sp+$3a
    db $fc
    ld a, [hl-]
    db $fc
    ld [hl], d
    db $fc
    jr nz, jr_00d_7272

    ld b, b
    ccf
    add b
    ld a, a
    ld h, b
    rst $38

jr_00d_7259:
    ld h, [hl]
    ei

jr_00d_725b:
    ld c, d

jr_00d_725c:
    rst $30

jr_00d_725d:
    dec de
    rst $20
    ld sp, hl
    rlca
    ld [bc], a
    db $fc
    ld bc, $00fe
    rst $38
    inc bc
    rst $38
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, h
    di
    ld c, a
    ldh a, [$ff6c]

jr_00d_7272:
    inc de
    jp $f37c


    ld c, a
    ld l, h
    inc de
    daa
    rra
    dec de
    rlca
    rrca
    nop
    inc bc
    nop
    ld a, [de]
    db $e4
    db $e3
    ld e, $e7
    ld a, [$e41a]
    ldh a, [c]
    db $fc
    db $ec
    ldh a, [$fff8]
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_00d_7259

    jr nz, jr_00d_725b

    jr nz, jr_00d_725d

    ld b, b
    add b
    add b
    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    inc d
    rrca
    ld l, $1f
    ld l, $1f
    daa
    rra
    ld b, b
    ccf
    ldh a, [rP1]
    ld [$04f0], sp
    ld hl, sp+$14
    ld hl, sp+$3a
    db $fc
    ld a, [hl-]
    db $fc
    ld [hl], d
    db $fc
    ld bc, $80fe
    ld a, a
    ld h, b
    rst $38
    ld h, [hl]
    ei
    ld c, d
    rst $30
    dec bc
    rst $30
    sbc c
    ld h, a
    ld a, h
    inc bc
    inc de
    inc c
    nop
    rst $38
    inc bc
    rst $38
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, b
    rst $30
    ld c, h
    di
    rra
    ldh [$ffe6], a
    jr jr_00d_730a

    rla
    ld a, c
    scf
    ld a, [hl]
    ld sp, $0f31
    ld hl, $1b1f
    inc b
    inc c
    inc bc
    inc bc
    nop
    jp hl


    or $f7
    ld hl, sp+$1a
    db $e4
    ld a, [$f2fc]
    db $fc
    db $ec
    ldh a, [$ffb8]
    ld b, b
    ldh [rP1], a
    add b
    ld a, a
    ld h, b
    rst $38
    ld h, [hl]
    ei
    ld c, d
    rst $30
    dec bc

jr_00d_730a:
    rst $30
    sbc c
    ld h, a
    ld a, h
    inc bc
    inc sp
    inc c
    nop
    rst $38
    inc bc
    rst $38

jr_00d_7315:
    inc sp
    rst $28
    add hl, hl
    rst $30
    ld l, b
    rst $30
    ld c, h
    di
    rra
    ldh [$ffe4], a
    jr @+$4d

    scf
    scf
    rrca
    inc l
    inc de
    cpl
    rra
    daa
    rra
    add hl, de
    rlca
    ld c, $01
    inc bc
    nop
    adc d
    db $f4
    rst $08
    or $3f
    add $e6
    ld hl, sp-$1e
    db $fc

jr_00d_733b:
    db $ec
    sub b
    sbc b
    ld h, b
    ldh [rP1], a
    inc bc
    nop
    rrca
    inc bc
    rla
    rrca
    inc l
    rra
    add hl, hl
    rra
    ld d, c
    ccf
    ld b, a
    ld a, [hl-]
    ld c, d
    dec [hl]
    ret nz

    nop
    jr c, jr_00d_7315

    inc [hl]
    ld hl, sp+$7a
    cp h
    jp z, $a5bc

    ld e, [hl]
    ld d, c
    xor $a9
    or $55
    ld a, [hl+]
    scf
    ld e, $1f
    ld b, $07
    inc bc
    ld b, $01
    rrca
    ld b, $16
    rrca
    ccf
    add hl, de
    push de
    cp d
    or $bc
    db $fc
    or b
    ldh a, [$ffe0]
    jr nc, jr_00d_733b

    ld a, b
    or b
    or h
    ld hl, sp-$02
    ld c, h
    scf
    jr jr_00d_73a3

    nop
    dec bc
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    dec e
    ld c, $0e
    nop
    nop
    nop
    or $0c
    inc e
    ldh [$ff88], a
    ldh a, [$fff0]
    nop
    xor b
    ld [hl], b
    ld e, h
    jr c, jr_00d_73d6

    nop
    nop
    nop
    ld d, l
    ld a, [hl+]

jr_00d_73a3:
    scf
    ld e, $1b
    ld b, $0d
    inc bc
    ld b, $01
    rra
    ld b, $3e
    dec de
    ccf
    add hl, de
    push de
    cp d
    or $bc

jr_00d_73b5:
    db $ec

jr_00d_73b6:
    or b
    ret c

    ldh [$ff30], a
    ret nz

jr_00d_73bb:
    ld a, b
    or b
    or h
    ld hl, sp-$0a
    ld c, h
    rra
    nop
    ld c, $01
    dec bc
    rlca
    rrca
    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    jr jr_00d_73b5

    cp b

jr_00d_73d6:
    ret nz

    db $f4
    jr c, jr_00d_73b6

    ld h, b
    ld a, b
    nop
    jr nc, jr_00d_73df

jr_00d_73df:
    nop
    nop
    ld d, l
    ld a, [hl+]
    scf
    ld e, $1f
    ld b, $0f
    inc bc
    ld b, $01
    rrca
    ld b, $16
    rrca
    scf
    add hl, de
    push de
    cp d
    or $bc

jr_00d_73f5:
    db $fc
    or b
    ld hl, sp-$20
    jr nc, jr_00d_73bb

    ld a, h
    or b
    cp [hl]
    db $ec
    cp $4c
    rra
    nop
    inc c
    inc bc
    rrca
    ld bc, $0e1d
    inc e
    inc bc
    rrca
    nop
    ld b, $00
    nop
    nop
    db $fc
    nop
    jr jr_00d_73f5

    ret z

    ldh a, [$fff8]
    nop
    ret z

    jr nc, jr_00d_744c

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_00d_742c

    add hl, hl
    rra
    ld e, d

Call_00d_7428:
    dec a
    halt
    add hl, sp
    xor c

jr_00d_742c:
    halt
    or [hl]
    ld l, a
    sbc a
    ld l, e
    ret nz

    nop
    jr nc, jr_00d_73f5

    ret z

    ldh a, [$ffe4]
    ld hl, sp+$64
    ld hl, sp+$32
    db $fc

jr_00d_743d:
    sub d
    ld a, h
    sub d
    ld a, h
    ld e, l
    dec hl
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    rlca
    nop
    ld a, [bc]

jr_00d_744c:
    rlca
    dec c
    ld b, $07
    nop
    jp nz, $e43c

    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_74ba

    add b
    ret nc

    ldh [$ffd0], a
    ldh [$ff30], a
    ret nz

    rrca
    nop
    add hl, bc
    ld b, $0e
    rlca
    rrca

jr_00d_7468:
    nop
    ld [bc], a
    ld bc, $0307
    rlca
    nop
    nop
    nop
    ldh [$ffc0], a
    ld [hl], b
    ret nz

    ret nc

    jr nz, jr_00d_7468

    nop
    and b
    ret nz

    jr nz, jr_00d_743d

    ldh [rP1], a
    nop
    nop
    ld e, l
    dec hl
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    inc c
    rlca
    rla
    ld a, [bc]
    jp nz, $e43c

    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_74fa

    add b
    ret nc

    ldh [$ffd0], a
    ldh [$ffc8], a
    jr nc, jr_00d_74c1

    nop
    ld [$0e07], sp
    rlca
    rra
    nop
    dec l
    ld e, $19
    ld b, $06
    nop
    nop
    nop
    ld hl, sp+$30
    ld a, b
    or b
    jr c, @-$3e

    add sp, $10
    ld c, b

jr_00d_74ba:
    jr nc, jr_00d_74ec

    nop
    nop
    nop
    nop
    nop

jr_00d_74c1:
    ld e, l
    dec hl
    dec l
    dec de
    rra
    rrca
    dec bc
    rlca
    rlca
    nop
    ld a, [bc]
    rlca
    dec c
    ld b, $06
    ld bc, $3cc2
    db $e4
    ret c

    xor b
    ret nc

    ret nc

    jr nz, jr_00d_753a

    add b
    ret nc

    ldh [$ffd0], a
    ldh [$ffd0], a
    and b
    rrca
    inc bc
    rrca

jr_00d_74e4:
    inc bc
    rra
    inc b
    scf
    jr jr_00d_7507

    ld c, $0e

jr_00d_74ec:
    nop
    nop
    nop
    nop
    nop
    add sp, $10
    or b
    ld b, b

jr_00d_74f5:
    db $10
    ldh [$fff8], a
    nop
    ld d, h

jr_00d_74fa:
    jr c, jr_00d_74e4

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    ld bc, $0e00
    ld bc, $0f12

jr_00d_7507:
    inc h
    rra
    inc l
    rra
    ld e, h
    ccf
    ld e, h
    ccf
    ld c, [hl]
    ccf
    ldh [rP1], a
    jr jr_00d_74f5

    inc h
    ld hl, sp+$12
    db $fc
    ld a, [de]
    db $fc
    dec c
    cp $1d
    cp $39
    cp $4f
    ccf
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $060f
    inc de
    rrca
    jr nc, jr_00d_7550

    ld sp, hl
    cp $f2
    db $fc
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff30]

jr_00d_753a:
    ret nz

    ld hl, sp+$30
    db $e4
    ld hl, sp+$06
    db $fc
    ccf
    jr jr_00d_7563

    nop
    dec bc
    rlca
    rlca
    nop
    inc c
    rlca
    add hl, de
    ld c, $0e
    nop
    nop

jr_00d_7550:
    nop
    cp $0c
    inc e
    ldh [$ff88], a
    ldh a, [$fff0]
    nop
    ret z

    ld [hl], b
    ld h, h
    jr c, jr_00d_7596

    nop
    nop

jr_00d_7560:
    nop
    ld c, a
    ccf

jr_00d_7563:
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $061f
    ccf
    dec de
    inc a
    dec de
    ld sp, hl
    cp $f2
    db $fc

jr_00d_7575:
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff38]
    ret nz

    db $f4
    jr c, jr_00d_7560

    db $fc
    ld c, $f4
    rra
    nop
    rrca
    nop
    dec bc
    rlca
    rlca
    nop
    add hl, bc
    ld b, $06

jr_00d_758c:
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    jr jr_00d_7575

    adc b

jr_00d_7596:
    ldh a, [$fff8]
    nop
    add sp, $70
    db $f4
    ld [$007c], sp
    jr c, jr_00d_75a1

jr_00d_75a1:
    ld c, a
    ccf
    daa
    rra
    inc de
    rrca
    ld [$0607], sp
    ld bc, $061f
    inc hl
    rra
    jr c, jr_00d_75c8

    ld sp, hl
    cp $f2
    db $fc

jr_00d_75b5:
    ld b, h
    ld hl, sp+$08
    ldh a, [$ff30]
    ret nz

    db $fc

jr_00d_75bc:
    jr nc, jr_00d_75bc

    db $ec
    ld e, $ec
    rra
    nop
    rrca
    nop
    dec bc
    rlca
    rrca

jr_00d_75c8:
    nop
    ld c, $07
    rla
    ld [$001f], sp
    ld c, $00
    db $fc
    nop
    jr jr_00d_75b5

    adc b
    ldh a, [$fff0]
    nop
    ret z

    jr nc, jr_00d_758c

    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc

jr_00d_75e4:
    inc b
    dec bc
    ld b, $36
    dec bc
    ld e, l
    ld a, $2f
    ld e, $1e
    ld bc, $0f1f
    sbc b
    nop
    ld l, b
    sub b
    add sp, -$50
    and $b8
    db $fd
    sbc [hl]
    ld a, [$3c3c]
    ret nz

    db $fc
    ld hl, sp+$3b
    inc c
    ld l, l
    dec sp
    cpl
    rra
    rla
    dec c
    dec hl
    ld d, $5f
    add hl, sp
    ld e, a
    inc a
    ld l, $13
    xor $98
    db $db
    xor $fa
    db $fc
    db $f4
    ld e, b
    ld l, d
    or h
    db $fd
    adc $fd
    ld e, $ba
    ld h, h
    dec sp
    rrca
    inc de
    inc c
    dec c
    inc bc
    dec bc
    rlca
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    rra
    inc c
    inc c
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$ffe8], a
    ldh a, [$ffd0]
    jr nz, jr_00d_75e4

    ld [hl], b
    ld a, h
    jr jr_00d_7658

    nop
    dec sp
    rrca
    inc de
    inc c
    dec c

jr_00d_7646:
    inc bc
    dec bc
    rlca
    rlca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$fffc], a

jr_00d_7658:
    ret c

    db $ec
    jr nc, jr_00d_76b4

    jr nz, @+$72

    nop
    nop
    nop
    dec sp
    rrca
    inc de
    inc c
    dec c
    inc bc
    rra
    dec c
    dec de
    ld b, $0d
    ld [bc], a
    rlca
    nop
    nop
    nop
    xor $78
    ld h, h
    sbc b
    sbc b
    ldh [$ffe8], a
    ldh a, [$fff0]
    nop
    ret nc

    jr nz, @+$52

    jr nz, @+$62

    nop
    add hl, de
    nop
    ld d, $09
    ld d, $0b
    rst $28
    ld a, [de]
    cp [hl]
    ld [hl], a
    ld e, a
    dec sp
    inc hl
    inc e
    ccf
    rra
    jr nc, jr_00d_7693

jr_00d_7693:
    ret nc

    jr nz, jr_00d_7646

    ld h, b
    ld a, h
    ldh [$fffa], a
    db $ec
    db $fd
    sbc $d2
    ld a, h
    ld h, h
    cp b
    dec a
    inc de
    ld e, e
    dec a
    ld a, a
    ccf
    ld a, a
    rla
    ld d, [hl]
    cpl
    add hl, hl
    ld e, $1f
    ld bc, $060b
    cp b
    ret nz

    sbc b

jr_00d_76b4:
    ldh a, [$ff90]
    ldh [rNR41], a
    ret nz

    ld a, h
    add b
    ldh a, [c]
    ld a, h
    db $fd
    ld a, $fd
    sbc $1e
    rlca
    dec d
    dec bc
    rrca
    nop
    dec bc
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0307
    rlca
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret nc

    ldh [$ff60], a
    add b
    ld b, b
    add b
    and b
    ret nz

    ldh [rP1], a
    ld e, $07
    dec d
    dec bc
    rrca
    nop
    dec bc
    rlca
    dec a
    ld [bc], a
    ld [hl], d
    inc a
    ld a, [hl+]
    inc e
    inc e
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret c

    ldh [$fff4], a
    ld [$1824], sp
    ld c, b
    jr nc, jr_00d_7730

    nop
    ld e, $07
    dec d
    dec bc
    rrca

jr_00d_7706:
    nop
    dec de
    rlca
    daa
    jr jr_00d_771e

    inc c
    inc c
    nop
    nop
    nop
    xor l
    sbc $73
    adc h
    sbc [hl]
    ld h, b
    ret c

    ldh [$ffec], a
    db $10
    ld d, h
    jr c, jr_00d_7706

jr_00d_771e:
    ld [hl], b
    ld [hl], b
    nop
    inc c
    nop
    rrca
    inc b
    dec bc
    ld b, $3f
    ld [bc], a
    ld e, d
    dec a
    inc l
    rra
    ld e, $07
    dec e

jr_00d_7730:
    dec bc
    sbc b
    nop
    ld a, b
    sub b
    add sp, -$50
    cp $a0
    xor l
    sbc $9a
    db $fc
    inc a
    ldh a, [$ff5c]
    add sp, $3e
    rlca
    ld [hl], l
    dec hl
    scf
    ld [$0718], sp
    daa
    rra
    ld c, a
    ccf
    ld c, a
    ccf
    daa
    rra
    ld a, $f0
    ld d, a
    ld [$08f6], a
    inc c
    ldh a, [$ffe2]
    db $fc
    pop af
    cp $f1
    cp $e2
    db $fc
    jr c, jr_00d_776a

    rla
    ld [$030c], sp
    dec bc
    rlca
    rlca

jr_00d_776a:
    nop
    ld a, [bc]
    rlca
    rra
    inc c
    inc c
    nop
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$10
    ldh a, [rP1]
    xor b
    ld [hl], b
    ld a, h
    jr @+$1a

    nop
    jr c, jr_00d_778a

    rla
    ld [$030c], sp
    dec bc
    rlca
    rlca

jr_00d_778a:
    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$70
    ldh a, [$ff60]
    ret c

    jr nc, jr_00d_7806

    db $10
    jr nc, jr_00d_77a1

jr_00d_77a1:
    jr c, jr_00d_77aa

    rla
    ld [$030c], sp
    dec bc
    inc b
    rlca

jr_00d_77aa:
    inc bc
    dec c
    ld b, $0b
    inc b
    ld b, $00
    ld c, $f0
    db $f4
    ld [$e018], sp
    add sp, -$10
    ldh a, [rP1]
    ret z

    jr nc, jr_00d_77ee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec bc
    inc b
    dec bc
    ld b, $36
    dec bc
    ld e, l
    ld a, $2f
    ld e, $00
    nop
    nop
    nop
    sbc b
    nop
    ld l, b
    sub b
    add sp, -$50
    and $b8
    db $fd
    sbc [hl]
    ld a, [$1e3c]
    ld bc, $0f1f
    dec sp
    inc c
    ld l, l
    dec sp
    cpl
    rra
    rla
    dec c
    dec bc

jr_00d_77ee:
    ld b, $0f
    ld bc, $c03c
    db $fc
    ld hl, sp-$12
    sbc b
    db $db
    xor $fa
    db $fc
    db $f4
    ld e, b
    ld l, b
    or b
    ld hl, sp-$40
    rla
    inc c
    ld e, $0d
    dec de

jr_00d_7806:
    inc c
    rla
    dec bc
    rrca
    inc bc
    rra
    inc c
    inc d
    rrca
    rrca
    nop
    db $f4
    jr jr_00d_7850

    ret c

    ld l, h
    sbc b
    db $f4
    ld l, b
    ld hl, sp+$60
    ld a, h
    sbc b
    sub h
    ld a, b
    ld a, b
    nop
    ld bc, $0600
    ld bc, $040b
    dec d
    dec bc
    dec de
    rlca
    cpl
    rla
    dec hl
    rla
    ld e, $01
    ret nz

    nop
    jr nc, @-$3e

    add sp, $10
    ld d, h
    add sp, -$14
    ldh a, [$fffa]
    db $f4
    ld [$bcf4], a
    ret nz

    dec sp
    inc d
    ld l, $15
    ld e, $07
    rla
    ld [$051a], sp
    daa
    jr jr_00d_7894

    dec a
    ld [hl], a

jr_00d_7850:
    dec c
    xor $14
    cp d
    call nc, $f0bc
    db $f4
    ld [$d0ac], sp
    ldh a, [c]
    inc c
    ld sp, $f7de
    ret c

    ld l, [hl]
    dec [hl]
    scf
    inc c
    ld d, $0d
    inc c
    inc bc
    dec bc
    inc b
    ld de, $0e0e
    nop
    nop
    nop
    dec sp
    sub $f6
    jr jr_00d_78aa

    ret c

    sbc b
    ld h, b
    ld l, b
    db $10
    ld b, h
    jr c, jr_00d_78b6

    nop
    nop
    nop
    dec sp
    inc d
    ld l, $15
    ld e, $07
    rla
    ld [$152a], sp
    ld h, a
    jr @-$08

    ld l, l
    rst $30
    ld l, l
    xor $14
    cp d

jr_00d_7894:
    call nc, $f0bc
    db $f4
    ld [$d0ac], sp
    ldh a, [c]
    inc c
    inc sp
    call c, $daf7
    ld a, [hl]
    dec b
    rla
    inc c
    ld d, $0d
    inc c
    inc bc
    inc de

jr_00d_78aa:
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, $d0
    db $f4
    jr jr_00d_78ea

jr_00d_78b6:
    ret c

    sbc b
    ld h, b

jr_00d_78b9:
    ld h, h
    jr jr_00d_7900

    jr c, jr_00d_78f6

    nop
    nop
    nop
    ld [hl], a
    jr z, jr_00d_7921

    dec hl
    dec a
    rrca
    cpl
    db $10
    dec [hl]
    dec bc
    ld c, a
    jr nc, @-$32

    dec sp
    rst $28
    ld e, e
    call c, Call_00d_7428
    xor b
    ld a, b
    ldh [$ffe8], a
    db $10
    ld d, h
    xor b
    and $18
    ld l, a
    or [hl]
    rst $28

Call_00d_78e0:
    or [hl]
    ld a, h
    dec bc
    cpl
    jr jr_00d_7912

    dec de
    add hl, de
    ld b, $26

jr_00d_78ea:
    jr jr_00d_790e

    inc e
    inc e
    nop
    nop
    nop
    ld a, [hl]
    and b
    add sp, $30
    ld l, b

jr_00d_78f6:
    or b
    jr nc, jr_00d_78b9

    ret z

    jr nc, jr_00d_792c

    nop
    nop
    nop
    nop

jr_00d_7900:
    nop
    nop
    nop
    rlca
    nop
    ld c, $01
    inc de
    inc c

jr_00d_7909:
    ld l, $1f
    ccf
    rra
    ccf

jr_00d_790e:
    rra
    dec hl
    inc e
    nop

jr_00d_7912:
    nop
    add b
    nop
    ld h, b
    add b
    ld e, b
    and b
    xor h
    ld d, b
    ld d, h
    xor b
    call nz, $aab8
    ld d, h

jr_00d_7921:
    ld e, $01
    ccf
    dec bc
    ld l, $1f
    rra
    nop
    dec de
    inc c
    rra

jr_00d_792c:
    nop
    dec bc
    dec b
    ld d, $0b
    jp nc, $6c2c

    sub b
    db $f4
    ld c, b
    jr z, jr_00d_7909

    ldh a, [rP1]
    ldh a, [$ffe0]
    ld [$88f0], sp
    ld [hl], b
    ld e, $0b
    ld d, $0b
    ld e, $03
    ld e, $03

jr_00d_7949:
    rlca
    nop
    add hl, bc
    ld b, $0e
    ld bc, $0001
    ld hl, sp+$00
    ld hl, sp+$60
    ld hl, sp+$60
    ld l, b
    sub b
    ldh a, [rP1]
    db $10
    ldh [rNR10], a
    ldh [$fff0], a
    nop
    ld e, $01
    ccf
    dec bc
    ld l, $1f
    rra
    nop
    dec de
    inc c
    rra
    nop
    dec hl
    dec d
    ld d, [hl]
    dec hl
    jp nc, $6c2c

    sub b
    db $f4
    ld c, b
    jr z, jr_00d_7949

jr_00d_7979:
    ldh a, [rP1]
    ldh a, [$ffe0]
    ld [$04f0], sp
    ld hl, sp+$36
    dec bc
    ld e, $03
    ld e, $03
    ld a, $03

jr_00d_7989:
    inc hl
    inc e
    db $10
    rrca
    add hl, bc
    ld b, $06
    nop
    ld e, h
    and b
    inc a
    ret c

    inc a
    ret c

    jr jr_00d_7979

    db $f4
    ld [$38c4], sp
    jr c, jr_00d_799f

jr_00d_799f:
    nop
    nop
    ld e, $01
    ccf
    dec bc
    ld l, $1f
    rra
    nop
    dec de
    inc c
    rra
    nop
    dec bc
    inc b
    ld d, $09
    jp nc, $6c2c

    sub b

jr_00d_79b5:
    db $f4
    ld c, b
    jr z, jr_00d_7989

    ldh a, [rP1]
    ldh a, [$ffe0]
    inc c
    ldh a, [$ff0a]
    db $f4
    ld e, $05
    ld e, $0d
    rra
    nop
    ld l, $13
    daa
    jr jr_00d_79de

    inc c
    inc c
    nop
    nop
    nop
    inc a
    ldh a, [rOBP0]
    or b
    cp b
    ld [hl], b

jr_00d_79d7:
    ld [$f4f0], sp
    ld [$3844], sp
    adc b

jr_00d_79de:
    ld [hl], b
    ldh a, [rP1]
    ld bc, $0600
    ld bc, $030c
    dec d
    ld a, [bc]
    ld [hl+], a
    dec e
    scf
    ld [$142b], sp
    rla
    ld [$00c0], sp
    jr nc, jr_00d_79b5

    jr jr_00d_79d7

    ld d, h
    xor b
    and d
    ld e, h
    or $08
    ld [$f414], a
    ld [$1639], sp
    dec hl
    inc d
    dec e
    ld [bc], a
    rrca
    nop
    inc d
    dec bc
    inc hl
    inc e
    ld d, b
    cpl

jr_00d_7a0f:
    ld [hl], e

jr_00d_7a10:
    rrca
    adc $34
    ld [$dc14], a
    jr nz, jr_00d_7a10

    nop
    inc d
    add sp, -$1e
    inc e
    add l
    ld a, [$f8e7]
    ld [hl], b
    cpl
    inc sp
    rrca
    db $10
    rrca
    inc c
    inc bc
    rla
    ld [$0609], sp
    ld b, $00
    nop
    nop
    add a
    ld a, [$f866]
    inc b
    ld hl, sp+$18
    ldh [$fff4], a
    ld [$3048], sp
    jr nc, jr_00d_7a3f

jr_00d_7a3f:
    nop
    nop
    ld [hl], e
    inc l
    ld d, a
    jr z, jr_00d_7a81

    inc b
    rra
    nop
    jr c, jr_00d_7a52

    ld b, a
    jr c, jr_00d_7a0f

    ccf
    rst $20
    ld e, a
    sbc h

jr_00d_7a52:
    ld l, b
    call nc, $b828
    ld b, b
    ld hl, sp+$00
    inc h
    ret c

    add $38
    rrca
    or $cf
    or $71
    rrca
    ld h, $1f
    jr nz, jr_00d_7a86

    db $10
    rrca
    rra
    nop
    ld [hl+], a
    inc e
    ld l, $10
    inc e
    nop
    ld e, $e0
    ret z

    ldh a, [$ff08]
    ldh a, [$ff78]
    add b
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop

jr_00d_7a81:
    add hl, sp
    ld d, $2b
    inc d
    dec e

jr_00d_7a86:
    ld [bc], a
    rra
    nop
    inc h
    dec de
    ld h, e
    inc e
    ldh a, [$ff6f]
    di

jr_00d_7a90:
    ld l, a
    adc $34
    ld [$dc14], a
    jr nz, jr_00d_7a90

    nop
    inc e
    ldh [$ffe2], a
    inc e
    add e
    db $fc
    rst $20
    ld a, [$0778]
    inc de
    rrca
    db $10
    rrca
    ld e, $01
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ldh a, [$ff64]
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff8]
    nop
    ld b, h
    jr c, jr_00d_7b32

    ld [$0038], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $01
    add hl, de
    ld c, $3e
    rra
    dec a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr c, @-$3e

    ld c, h
    cp b
    cp [hl]
    ld a, h
    sbc $3c
    ld l, $1d
    inc hl
    dec e
    dec e
    inc bc
    ccf
    ld d, $5b
    ld h, $65
    dec sp
    ld l, e
    inc [hl]
    ld e, d
    dec h
    ld a, [hl-]
    call c, $dce2
    call c, $fee0
    or h
    db $ed
    or d
    db $d3
    xor $6b
    sub [hl]
    dec l
    jp nc, Jump_000_142f

    ccf
    inc de
    ld d, $0f
    rla
    inc c
    dec c
    ld [bc], a
    ld e, $0c
    inc c
    nop
    nop
    nop
    ld a, [$fe14]
    db $e4
    inc [hl]
    ld hl, sp-$0c
    jr jr_00d_7b72

    jr nz, jr_00d_7b58

    jr @+$1a

    nop
    nop
    nop
    ld l, $1d
    inc hl
    dec e
    dec e
    inc bc
    ccf
    ld d, $5b
    ld h, $65
    dec sp
    ld a, e
    inc b
    ld l, d
    dec [hl]
    ld a, [hl-]

jr_00d_7b32:
    call c, $dce2
    call c, $fee0
    or h
    db $ed
    or d
    db $d3
    xor $6f
    sub d
    dec hl
    call nc, Call_000_142f
    dec e
    inc bc
    dec bc
    rlca
    dec bc
    inc b
    rlca
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ei
    ld d, $de
    ldh [$ff7c], a
    sbc b
    or h

jr_00d_7b58:
    jr jr_00d_7b82

    db $10
    stop
    nop
    nop
    nop
    nop
    ld l, $1d
    inc hl
    dec e
    dec e
    inc bc
    ccf
    ld d, $5b
    ld h, $65
    dec sp
    ld a, e
    inc h
    ld l, d
    dec d
    ld a, [hl-]

jr_00d_7b72:
    call c, $dce2
    call c, $fee0
    or h
    db $ed
    or d
    db $d3
    xor $6f
    sub b
    dec hl
    sub $6f

jr_00d_7b82:
    inc [hl]
    dec a
    inc bc
    rra
    inc c
    ld d, $0c
    ld a, [bc]
    inc b
    inc b
    nop

jr_00d_7b8d:
    nop
    nop
    nop
    nop
    ld a, [$dc14]
    ldh [rBCPS], a
    ldh a, [$ffe8]
    db $10
    ld [hl], b
    jr nz, jr_00d_7bcc

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
    inc bc
    nop
    inc e
    inc bc
    ld [hl], $1b
    ld a, a
    dec sp
    ld a, a
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], b
    add b
    jr z, jr_00d_7b8d

jr_00d_7bbd:
    db $ec
    ret c

    db $fc
    ret c

    ld d, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rla
    rrca
    add hl, bc

jr_00d_7bcc:
    rlca
    ld b, $01
    dec b
    ld [bc], a
    ld [hl], d
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    xor h
    ld d, b
    sbc $28
    ld sp, hl
    ld d, $f7
    adc $0b
    inc b
    rrca
    inc b
    rrca
    ld [bc], a
    inc c
    rlca
    rlca
    nop
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    ld a, e
    add $b5
    ld b, d
    jp nc, $90a0

    ld h, b
    ld h, b
    add b
    jr nz, jr_00d_7bbd

    ret nz

    nop
    nop
    nop
    ld d, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rla
    rrca
    add hl, bc
    rlca
    ld a, $01
    dec [hl]
    ld a, [de]
    ld [hl], d
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    xor h
    ld d, b
    sbc $28
    ld sp, hl
    ld b, $ef
    or $1b
    inc b
    ld c, $05
    dec a
    inc bc
    ccf
    dec de
    rla
    inc c
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    dec sp
    sub $dd
    ld [hl+], a
    xor d
    ret nc

    ld [hl], h
    adc b
    ret z

    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    ld d, h
    dec hl
    ccf
    inc c
    rra
    dec bc
    rra
    dec bc
    rla
    rrca
    add hl, bc
    rlca
    ld b, $01
    inc c
    inc bc
    ld [hl], d
    call c, Call_000_1ce2
    jp nz, $e43c

    ld e, b
    xor h
    ld d, b
    sbc $28
    ld sp, hl
    ld d, $d7
    xor [hl]
    dec de
    rrca
    rrca
    nop
    rrca
    rlca
    rla
    ld [$0609], sp
    ld b, $00
    nop
    nop
    nop
    nop
    ld e, e
    and [hl]
    sub l
    ld h, d
    jp c, Jump_00d_64e0

Call_00d_7c78:
    ld hl, sp-$0c
    jr jr_00d_7ce4

    jr nc, jr_00d_7cae

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    ld d, $0f
    inc l
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    ld h, h
    ld hl, sp+$34
    ld hl, sp+$1a
    db $fc
    ld l, $1f
    cpl
    rra
    daa
    rra
    ld a, c
    daa
    inc a
    dec bc
    inc l
    inc de
    ld e, e

jr_00d_7cae:
    inc a
    ld d, l
    ld a, [hl-]
    ld a, [hl-]
    db $fc
    ld a, [$f2fc]
    db $fc
    rst $08
    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    db $ed
    ld e, $55
    xor [hl]
    scf
    ld a, [de]
    ld a, [hl+]
    dec d
    inc de
    rrca
    ld de, $0e0e
    nop
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    or $2c
    ld a, [hl+]
    call nc, $f8e4
    call nz, Call_000_3838
    nop
    inc l
    jr jr_00d_7cf6

    nop
    nop
    nop
    ld l, $1f
    cpl

jr_00d_7ce4:
    rra
    daa
    rra
    ld a, c
    daa
    inc a
    dec bc
    inc l
    inc de
    ld e, e
    inc a
    ld d, l
    ld a, [hl-]
    ld a, [hl-]
    db $fc
    ld a, [$f2fc]

jr_00d_7cf6:
    db $fc
    rst $08
    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    db $ed
    ld e, $55
    xor [hl]
    scf
    ld a, [de]
    ld a, [hl+]
    dec d
    dec de
    rlca
    dec bc
    inc b
    dec b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    or $2c
    ld l, d
    call nc, $c0bc
    ret c

    jr nc, jr_00d_7d72

    jr nz, jr_00d_7d8c

    nop
    nop
    nop
    nop
    nop
    ld l, $1f
    cpl
    rra
    daa
    rra
    ld a, c
    daa
    inc a
    dec bc
    inc l
    inc de
    ld e, e
    inc a
    ld d, l
    ld a, [hl-]
    ld a, [hl-]
    db $fc
    ld a, [$f2fc]
    db $fc
    rst $08
    ldh a, [c]
    ld e, $e8
    ld a, [de]
    db $e4
    db $ed
    ld e, $55
    xor [hl]
    scf
    ld a, [de]
    dec hl
    dec d
    ld e, $01
    dec c
    ld b, $0b
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    or $2c
    ld a, [hl+]
    call nc, $f0ec
    add sp, $10
    ld d, b
    jr nz, jr_00d_7d8c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    jr nz, jr_00d_7d6a

jr_00d_7d6a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00d_7d72:
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
    jr nz, jr_00d_7d80

jr_00d_7d80:
    inc b
    nop
    nop
    ld [$0008], sp
    nop
    nop
    jr nz, jr_00d_7daa

    jr nz, jr_00d_7d8c

jr_00d_7d8c:
    and b
    add b
    add b
    nop
    add b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    add c
    add b
    add b
    dec bc
    dec bc
    rra
    inc e
    ld d, a
    ld e, b
    ld l, a
    ld a, c
    ld a, [hl]

jr_00d_7daa:
    ld a, a
    ld e, a
    ld a, h
    ld [hl], a
    ld e, e
    ld l, a
    ld d, b
    ldh [$ffe0], a
    ld a, b
    sbc b
    db $f4
    inc c
    ld a, [$be4e]
    ld a, [hl]
    ld a, l
    sbc a
    rst $30
    db $ed
    ei
    dec b
    ld a, l
    ld b, [hl]
    ld a, a
    ld d, h
    ld l, e
    ld d, a
    ld a, l
    ld b, e
    ld a, a
    ld c, h
    ld [hl], l
    ld c, a
    ld a, [hl]
    ld e, e
    ld a, a
    inc sp
    cp a
    pop de
    rst $38
    sub l
    db $eb
    push af
    rst $18
    pop hl
    ld a, a
    sbc c
    rst $10
    ld sp, hl
    ccf
    db $ed
    ld a, a
    and $7d
    ld b, [hl]
    ld e, l
    ld l, a
    dec hl
    ccf
    rla
    rra
    rla
    rra
    cpl
    ccf
    db $10
    rra
    rrca
    rrca
    rst $18
    ld sp, $bb4d
    ld h, $fe
    or h
    db $fc
    sub d
    cp $c2
    cp $3c
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    db $10
    db $10
    stop
    stop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    nop
    add hl, bc
    ld bc, $0101
    ld bc, $8800
    ld [$0008], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    ld b, e
    ld b, e
    rrca
    ld c, h
    rla
    jr jr_00d_7e77

    add hl, sp
    ld a, $3f
    ld e, a
    ld a, h
    ld [hl], a
    ld e, e
    ld l, a
    ld d, b
    add sp, -$18
    ld a, h
    sbc h
    db $f4
    inc c
    ld a, [$be4e]
    ld a, [hl]
    ld a, l
    sbc a
    rst $30
    db $ed
    ei
    dec b
    ld a, l
    ld b, [hl]
    ld e, l
    ld l, a
    add hl, hl
    ccf
    dec d
    rra
    inc hl
    ccf
    inc hl
    ccf
    inc e
    rra
    inc bc
    inc bc
    rst $18
    ld sp, $dbad
    add $fe

jr_00d_7e77:
    call nc, $cafc
    cp $e2
    cp $1c
    db $fc
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $1100
    db $10
    stop
    stop
    nop
    ld bc, $0001
    ld de, $0000
    nop

Call_00d_7ea8:
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00d_7eb8

jr_00d_7eb8:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc bc
    inc bc
    cpl
    inc l
    ld [hl], a
    ld a, b
    ld l, a
    ld a, c
    ld a, [hl]
    ld a, a
    ld e, a
    ld a, h
    ld [hl], a
    ld e, e
    ld l, a
    ld d, b
    ldh [$ffe1], a
    ld a, c
    sbc c
    push af
    dec c
    ld a, [$be4f]
    ld a, [hl]
    ld a, l
    sbc a
    rst $30
    db $ed
    ei
    dec b
    ld a, l
    ld b, [hl]
    ld e, l
    ld l, [hl]
    ld a, [hl+]
    ccf
    rla

Call_00d_7ee8:
    rra
    ld h, $3f
    jr nz, jr_00d_7f2c

    rra
    rra
    nop
    nop
    rst $18
    ld sp, $fb4d
    and $fe
    db $f4
    db $fc
    ldh a, [c]
    cp $7a
    cp $84
    db $fc
    ld a, b
    ld a, b
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

jr_00d_7f2c:
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
    nop
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
