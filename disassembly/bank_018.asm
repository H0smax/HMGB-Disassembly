; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    jr jr_018_4005

    nop
    inc c
    inc bc

jr_018_4005:
    inc de
    rrca
    rla
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    jp z, $e077

    nop
    db $18, $e0
    add h
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp d
    db $f4
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    dec hl
    dec d
    add hl, sp
    ld d, $6f
    ld [hl-], a
    sub $b8
    sub $bc
    sbc $b0
    rst $28
    or $36
    ret z

    ld [$ced4], a
    inc [hl]
    ld a, e
    and [hl]
    ld a, e
    dec [hl]
    dec sp
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    cpl
    sub $8e
    ldh a, [$ffd8]
    jr nz, @+$76

    jr @+$70

    jr nc, jr_018_4096

    inc e
    inc e
    nop
    nop
    nop
    push de
    ld l, [hl]

jr_018_4063:
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld [hl], $09
    ld a, e
    dec [hl]
    ld a, c
    ld [hl], $3f
    ld [bc], a
    sub $b8
    sub $bc
    sbc $b0
    rst $28
    or $36
    ret z

    ld [$ced4], a
    inc [hl]
    ld a, h
    and b
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    rla
    ld [$0e11], sp
    ld c, $00
    nop
    nop
    nop
    nop
    jr z, jr_018_4063

    sbc b
    ldh [$fffc], a

jr_018_4096:
    jr jr_018_40fa

    inc a
    ld c, [hl]
    jr nc, jr_018_40d8

    nop
    jr jr_018_409f

jr_018_409f:
    nop
    nop
    push de
    ld l, [hl]

jr_018_40a3:
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    dec hl
    dec d
    add hl, sp
    ld d, $1f
    ld [bc], a
    sub $b8
    sub $bc

jr_018_40b5:
    sbc $b0
    rst $28
    or $36
    ret z

    rst $28
    sub $cf
    ld [hl], $7e
    and b
    dec bc
    dec b
    dec bc
    rlca
    rra
    inc c
    ld sp, $3d1e
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
    jr z, jr_018_40a3

    adc b
    ldh a, [$ffc8]
    jr nc, jr_018_414c

jr_018_40d8:
    ld [$3844], sp
    jr c, jr_018_40dd

jr_018_40dd:
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
    rla
    rrca
    dec e
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    db $dd
    ld l, e
    ret nz

    nop
    jr nc, jr_018_40b5

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$32

jr_018_40fa:
    ldh a, [$ff61]
    cp $cd

Call_018_40fe:
    ld a, $be
    ld b, b
    db $fd

jr_018_4102:
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    rrca
    inc bc
    add hl, bc
    ld b, $0f
    inc b
    call nz, $6438
    ret c

    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
    db $fc
    adc b
    ret c

    ld h, b
    ld d, b
    ldh [rIF], a
    inc bc
    dec bc
    ld b, $05
    ld [bc], a
    rrca
    nop
    ld de, $1f0e
    ld bc, $0003
    nop
    nop
    or b
    ld b, b
    ld [hl], b
    ret nz

    ldh a, [$ffc0]
    ldh [rP1], a
    sub b
    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    rrca

jr_018_414c:
    inc bc
    add hl, bc
    ld b, $0f
    dec b
    call nz, $6438
    ret c

    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
    call c, $b8a8
    ld h, b
    or b
    ld h, b
    rrca
    inc bc
    ld [$1b07], sp
    inc c
    add hl, de
    ld b, $39
    ld e, $39
    ld b, $06
    nop
    nop
    nop
    ld d, b
    and b

jr_018_4173:
    cp b
    ld h, b
    db $f4
    ld l, b
    db $e4
    jr jr_018_4102

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    rrca
    inc bc
    add hl, bc
    ld b, $0f
    inc b
    call nz, $6438
    ret c

jr_018_4195:
    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
    db $fc
    adc b
    ld e, b
    ldh [$ff50], a
    ldh [rIF], a
    ld [bc], a
    ld [hl-], a

jr_018_41a4:
    dec c
    ld c, e
    dec [hl]
    daa
    jr jr_018_41bc

    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_018_4173

    ret nc

    and b
    add sp, -$70
    db $e4
    jr c, jr_018_421e

    jr jr_018_41a4

jr_018_41bc:
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    inc l
    rra
    inc a
    rra
    ld a, [hl]
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp h
    ld a, a
    ret nz

    nop
    jr nc, jr_018_4195

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff9e]
    ldh [$fffd], a
    ld b, $3b
    add $c1
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld e, c
    ld [hl], $74
    dec hl
    db $dd
    ld h, [hl]
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    add sp, -$30
    inc [hl]
    ret c

    ld e, h
    xor b
    halt
    call z, Call_018_69f6
    ld [hl], a
    rrca
    dec de
    inc b
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    sbc $2c
    inc e
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call nc, $6868
    jr nc, jr_018_424e

jr_018_421e:
    nop
    nop
    nop
    pop bc

jr_018_4222:
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld c, c
    ld [hl], $f4
    ld l, e
    db $fd
    ld h, [hl]
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    add sp, -$30
    inc [hl]
    ret c

    ld e, d
    and h
    ld a, h
    ret nz

    halt
    add hl, bc
    rla
    rrca
    inc sp
    inc c
    ld c, [hl]
    jr nc, jr_018_426c

    inc e
    inc e
    nop
    nop

jr_018_424e:
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_4264

    ldh [rSVBK], a
    add b
    add sp, $70
    ret c

    ld h, b
    ld a, b
    nop
    jr nc, jr_018_425f

jr_018_425f:
    nop
    nop
    pop bc
    ld a, $7e

jr_018_4264:
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld l, c

jr_018_426c:
    ld [hl], $94
    ld l, e
    ld a, l
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    add sp, -$30
    inc h
    ret c

    ld e, [hl]
    xor h
    ld a, [hl]
    call z, Call_000_0916
    rla
    rrca
    rra
    nop
    ld a, [hl-]
    inc e
    ld [hl-], a
    inc c
    inc a
    nop
    jr jr_018_428f

jr_018_428f:
    nop
    nop
    call c, $1020
    ldh [$ff98], a
    ld h, b
    db $e4
    jr jr_018_4222

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    ld e, $0f
    rra
    rrca
    rla
    rrca
    ld l, e
    inc d
    cp h
    ld [hl], e
    ldh [rP1], a
    sbc b
    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa05]
    pop bc
    cp $85
    ld a, d
    ld c, d
    or h
    rst $20
    ld a, b
    adc e
    halt
    ld e, a
    ld h, $2b
    ld b, $1e
    add hl, bc
    inc sp
    dec e
    add hl, hl
    ld d, $7f
    ld [hl-], a
    ldh a, [c]
    inc c
    xor $b4
    db $fd
    or d
    rst $28
    or [hl]
    ld [hl], $c8
    ld [$cadc], a
    inc [hl]
    ld a, a
    and [hl]
    ld l, e
    dec [hl]
    dec sp
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    dec l
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_018_436c

    jr jr_018_4368

    jr nc, jr_018_4336

    inc e
    inc e
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    ld e, $0f
    rra
    rrca
    rla
    rrca
    dec hl
    inc d
    ld e, h
    inc sp
    ld h, a
    jr c, jr_018_437f

    ld [hl], $3f
    ld b, $7b
    ld [hl], $6e
    ld sp, $0d33
    add hl, de
    ld b, $0f
    ld [bc], a
    ldh a, [c]
    inc c
    xor $b4
    rst $38
    or d
    rst $28
    or [hl]
    ld a, [hl-]
    call z, $d2ed
    swap b
    ld a, b
    add b
    ld a, [bc]
    dec b
    inc c
    inc bc
    dec bc

jr_018_4336:
    inc b
    add hl, bc
    ld b, $05
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld [hl], h
    cp b
    db $e4
    ld a, b
    sbc h
    ld h, b
    ld a, h
    nop
    jr c, jr_018_434b

jr_018_434b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    jr c, jr_018_43bf

    ld [hl], $2f
    ld d, $3b
    ld b, $2e
    add hl, de
    ld d, e
    dec l
    ld l, c
    ld b, $0f
    nop
    ldh a, [c]
    inc c
    rst $28
    or h
    rst $38
    or b
    rst $28

jr_018_4368:
    or [hl]
    dec a
    add $e6

jr_018_436c:
    ret c

    call z, Call_018_7830
    and b
    rla
    ld c, $1c
    rrca
    ld d, $09
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop

jr_018_437f:
    nop
    nop
    jr z, @-$2e

    sbc b
    ld h, b
    add sp, $10
    ld c, b
    jr nc, jr_018_43da

    jr nz, jr_018_43bc

    nop
    nop
    nop
    nop
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    inc bc
    ld bc, $0304
    rlca
    ld [bc], a
    call nz, $6438
    ret c

    add sp, -$30
    ld a, b
    add b
    db $fc
    ld e, b
    cp $84
    db $ec
    ld [hl], b
    adc b
    ld [hl], b
    db $eb
    inc [hl]
    rst $18
    ld l, h
    ld d, a
    inc l
    ld l, [hl]
    db $10
    sbc c
    ld h, [hl]
    ld sp, hl

jr_018_43bc:
    ld e, $3e
    nop

jr_018_43bf:
    nop
    nop
    rlca
    nop
    jr jr_018_43cc

    daa
    rra
    cpl
    rra
    dec sp
    rlca
    ld h, h

jr_018_43cc:
    dec de
    cp a
    ld h, b
    ei
    ld d, [hl]
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff88], a
    ldh a, [$ff9e]

jr_018_43da:
    ldh [$ffc1], a
    cp $9d
    ld a, [hl]
    ld a, [hl]
    add b
    ei
    ld d, [hl]
    ld e, d
    scf
    ccf
    rra
    ld [hl], $0f
    ld l, a
    jr nc, jr_018_4461

    ld a, $3b
    rlca
    rlca
    nop
    adc b
    ld [hl], b
    ret z

    or b
    ret nc

    and b
    ld hl, sp+$10
    cp $f8
    di
    ld l, [hl]
    ld e, a
    and [hl]
    db $eb
    inc d
    rrca
    inc bc
    jr c, jr_018_4414

    ld a, l
    ld [hl], $4a
    inc a
    ld [hl-], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ldh [$ff15], a

jr_018_4414:
    ld [$12ed], a
    add hl, de
    ld b, $0a
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ei
    ld d, [hl]
    ld e, d
    scf
    ccf
    rra
    halt
    rrca
    db $fd
    ld h, d
    rst $00
    ld a, e
    ld a, d
    dec b
    rrca
    dec b
    adc b
    ld [hl], b
    ret z

    or b

jr_018_4435:
    sbc $a0
    cp h
    ld e, b
    cp $80
    or a
    ld a, [hl]
    db $dd
    ld h, [hl]
    ld a, e
    add h
    ld a, l
    ld [bc], a
    ld c, c
    scf
    dec h
    ld a, [de]
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ld [hl], b
    sbc d
    db $e4
    ld sp, hl
    ld c, $19
    ld b, $16
    inc c
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop

jr_018_4461:
    rlca
    nop
    dec de
    rlca

jr_018_4465:
    inc l
    rra
    inc a
    rra
    ld a, [hl]
    rra
    sbc a
    ld l, a
    ret


    halt
    cp h
    ld a, a
    ret nz

    nop
    jr nc, jr_018_4435

    ld [$08f0], sp

jr_018_4478:
    ldh a, [$ff08]
    ldh a, [$ff9e]
    ldh [$fffd], a
    ld b, $3b
    add $7f
    nop
    ld d, e
    cpl
    jr c, jr_018_448e

    ld a, a
    jr c, jr_018_44c9

    rlca
    ld e, c
    ld [hl], $74

jr_018_448e:
    dec hl
    db $dd
    ld h, [hl]
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    add sp, -$30
    inc [hl]
    ret c

jr_018_449d:
    ld e, h
    xor b
    halt
    call z, Call_000_00c0
    jr nc, jr_018_4465

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff9c]
    ldh [$fffe], a
    inc b

jr_018_44af:
    dec sp
    add $7f
    nop
    ld d, e
    cpl
    jr c, jr_018_44be

    ld a, a

jr_018_44b8:
    jr c, jr_018_4529

    rla
    ld d, l
    ld a, [hl+]
    ld a, h

jr_018_44be:
    inc sp
    ld a, l
    ld [hl], $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]

jr_018_44c9:
    add sp, -$30
    jr z, jr_018_449d

    ld e, b
    and b
    ld [hl], b
    ret nz

    ld a, $09
    cpl
    rla
    daa
    jr jr_018_44ea

    inc c
    dec c
    nop
    ld bc, $0100
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_44f4

    ldh [$ffd0], a
    jr nz, jr_018_4478

    ld h, b
    ld h, b

jr_018_44ea:
    add b
    ld h, b
    ret nz

    jr nz, jr_018_44af

    ret nz

    nop
    ld a, a
    nop
    ld d, e

jr_018_44f4:
    cpl
    jr c, jr_018_44fe

    ld a, a
    jr c, jr_018_4539

    rlca
    add hl, sp
    ld d, $24

jr_018_44fe:
    dec de
    dec e
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    ldh a, [$ffc0]
    jr z, @-$2e

    ld e, h
    cp b
    ld a, h
    ret c

    ld d, $09
    rla
    rrca
    rla
    ld [$0c12], sp
    dec c
    ld [bc], a
    dec c
    ld b, $09
    ld b, $06
    nop
    ret c

    jr nz, @+$2a

    ret nc

    ret z

    jr nc, jr_018_44b8

    ld h, b

jr_018_4529:
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_4539:
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    nop
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
    sbc b
    ldh [rTMA], a
    ld hl, sp+$1e
    rrca
    ld l, $1f
    cpl
    rra
    daa
    rra
    ld d, e
    inc l
    xor h
    ld [hl], e
    rst $08
    ld [hl], b
    adc a
    halt
    dec b
    ld a, [$fa05]
    ld de, $e5fe
    ld a, [$708e]
    ld e, d
    and h
    cp $04
    cp $b0
    ld e, e
    ld h, $3d
    inc bc
    ld [de], a
    dec c
    dec e
    ld a, [bc]
    daa
    ld a, [de]
    ccf
    jr jr_018_45b3

    ld a, [de]
    ld e, $00
    rst $28
    or [hl]
    sbc $e0
    inc h
    ret c

    call c, Call_018_7228
    xor h
    cp $0c
    ld d, [hl]
    inc l
    inc a
    nop
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    daa
    add hl, de
    dec a
    ld a, [de]
    ccf
    ld a, [de]
    sub $b8
    sub $bc
    sbc $b0
    rst $28
    or $36
    ret z

    ldh a, [c]
    call z, $2cde
    ld a, [hl]
    xor h
    dec de
    dec b

jr_018_45b3:
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    inc l
    ret nc

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_463c

    jr @+$70

    jr nc, jr_018_4606

    inc e
    inc e
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    ld [de], a
    ld c, $16
    ld c, $1b
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    ld a, [$6047]
    nop
    jr jr_018_4645

    inc b
    ld a, b
    ld h, h
    ld a, b
    or d
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp a
    ldh a, [$fffd]
    ld [hl], $ed
    ld [hl], $4d
    ld [hl], $5b
    scf
    ld l, $19
    rla
    add hl, bc
    add hl, bc
    ld b, $0f
    ld [bc], a
    rst $18
    or [hl]
    db $db
    or [hl]
    reti


jr_018_4606:
    or [hl]
    db $ed
    or $3a
    call z, $c8f4
    ret z

    jr nc, jr_018_4688

    and b
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    jr z, @-$2e

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_469c

    jr jr_018_4698

    jr nc, @+$3c

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_4640

    daa
    rra
    cpl

jr_018_463c:
    rra
    ld hl, $6c1f

jr_018_4640:
    inc de
    nop
    nop
    nop
    nop

jr_018_4645:
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff8e], a
    ldh a, [$ffd1]
    xor $0d
    cp $b7
    ld l, b
    db $dd
    ld h, d
    db $dd
    ld l, e
    cp l
    ld c, e
    ld l, l
    dec de
    rla
    rrca
    inc c
    inc bc
    rlca
    ld bc, $38c6
    ld a, h
    add b
    call nz, $e438
    ret c

    add sp, -$30
    ld e, h
    and b
    cp $9c
    call c, Call_000_0f28
    nop
    dec e
    rrca
    rla
    inc c
    dec c
    ld [bc], a
    ld b, $01
    add hl, bc
    ld b, $0f
    nop
    ld bc, $6800
    ldh a, [$ffd8]
    ldh [$ffe8], a
    db $10
    ld c, b

jr_018_4688:
    or b
    ret c

    ld h, b
    add sp, $30
    sbc b
    ldh [$ffe0], a
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc

jr_018_4698:
    rlca
    ld b, $01
    rra

jr_018_469c:
    ld bc, $1b3c
    add hl, hl
    rra
    call nz, $6438
    ret c

    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
    call c, Call_018_68a8
    ldh a, [$ffd8]
    ldh [$ff1f], a
    nop
    rrca
    rlca
    dec bc
    inc b
    dec c
    ld [bc], a
    inc de
    inc c
    rra
    ld bc, $0003
    nop
    nop
    add sp, $10
    db $10
    ldh [$ff90], a
    ld h, b
    and b
    ret nz

    ret nc

    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    ld [de], a
    ld c, $16
    ld c, $1d
    inc bc
    ld [hl], e
    inc c
    xor a
    ld [hl], c
    rst $18
    ld l, c
    ld b, b
    nop
    jr nc, @+$42

    ld [$4470], sp
    ld a, b
    adc $f0
    pop hl
    ld a, [hl]
    call Call_018_7ebe
    add b
    db $fd
    ld c, d
    xor l
    ld e, d
    ld e, a
    ld c, $0b
    ld b, $06
    ld bc, $020f
    add hl, bc
    ld b, $0e
    dec b
    ld b, h
    cp b
    db $e4
    sbc b
    add sp, -$70
    or b
    ret nz

    ret c

    ldh [$ff5c], a
    add sp, $18
    ldh [$ffe8], a
    db $10
    ld c, $03
    rrca
    rlca
    dec bc
    inc b
    dec c
    ld [bc], a
    inc de
    inc c
    rra
    ld bc, $0003
    nop
    nop
    ld [$10f0], sp
    ldh [$ff90], a
    ld h, b
    and b
    ret nz

    ret nc

    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    pop bc
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld [hl], b
    ld l, c
    ld d, $1c
    dec bc
    dec l
    ld d, $36
    add hl, bc
    rst $18
    ld a, [hl+]
    push de
    ld [$e01e], a
    db $ec
    jr jr_018_4772

    ret nc

    ld [hl], b
    and b
    ld l, b
    ret nc

    ret c

    jr nz, @+$31

    rla
    ld [hl], a
    jr z, jr_018_478a

    jr jr_018_4770

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @-$2e

    call nc, Call_018_6828
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_4770:
    nop
    pop bc

jr_018_4772:
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld sp, hl
    ld d, [hl]
    sub h
    ld l, e
    ld a, l
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    db $fc

jr_018_478a:
    ret nz

    ld a, $d4
    ld d, d
    xor h
    ld a, h
    ret nz

    ld d, $09
    rla
    rrca
    dec de
    inc b
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    ret nc

    jr nz, jr_018_47b4

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call nc, $6868
    jr nc, jr_018_47de

    nop
    nop
    nop
    pop bc
    ld a, $7e

jr_018_47b4:
    ld bc, $1fe3
    rst $38
    ld a, b
    ld a, a
    rlca
    ld e, c
    ld [hl], $34
    dec bc
    dec e
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03e], a
    db $f4
    jr z, @-$12

    ret c

    jr c, @-$2e

    ld e, b
    and b
    ld [hl], b
    ret nz

    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    ld e, $0f
    rra
    rrca
    scf
    rrca
    ld c, e

jr_018_47de:
    inc [hl]
    cp h
    ld [hl], e
    rst $20
    ld a, b
    adc e
    halt
    ld e, a
    ld h, $3b
    ld b, $26
    add hl, de
    ld a, e
    dec [hl]
    ld l, e
    ld [hl], $36
    add hl, bc
    ld a, [$ee04]
    or h
    rst $38
    or d
    xor $b0
    ld [hl-], a
    call z, $d6ef
    db $eb
    ld [hl], $36
    ret z

    add hl, bc
    ld b, $1b
    inc c
    add hl, hl
    ld d, $3a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, Call_018_7430
    jr jr_018_4880

    inc [hl]
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    dec c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec de
    inc c
    inc [hl]
    dec bc
    ld e, a
    jr nc, @-$53

    halt
    call $9876
    ldh [rDIV], a
    ld hl, sp-$1c
    ld hl, sp-$6a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld a, [$d6b4]
    cp b
    push de

jr_018_4852:
    ld l, [hl]
    cp l
    ld b, a
    ld e, e
    rlca
    ld l, $19
    inc sp
    dec e
    ld l, c
    ld [hl], $7f
    ld [hl-], a
    dec sp
    dec b
    sub $bc
    sbc $f0
    rst $28
    ld [hl], d
    cp d
    ld c, h
    and $dc
    swap [hl]
    ld a, a
    and [hl]
    ld l, $d0
    dec c
    rlca
    rrca
    ld b, $0d
    ld [bc], a
    dec de
    inc c
    ld a, [bc]
    rlca
    dec e
    ld c, $1a
    inc c
    inc c

jr_018_4880:
    nop
    adc b
    ldh a, [$ffd8]
    jr nc, jr_018_48de

    jr nz, jr_018_48fc

    jr jr_018_4852

    ld [hl], b
    ld h, h
    jr c, @+$36

    jr @+$1a

    nop
    dec c
    inc bc
    inc de
    rrca
    rla
    rrca
    ld [hl], e
    inc c
    xor h
    ld [hl], e
    rst $08
    ld [hl], b
    rst $10
    ld l, d
    cp l
    ld b, [hl]
    push de
    ld c, $5d
    rlca
    dec de
    rlca
    ld l, $19
    inc sp
    dec e
    ld l, c
    ld [hl], $7f
    ld [hl-], a
    dec sp
    dec b
    inc bc
    nop
    dec c
    inc bc
    ld d, [hl]
    rrca
    sbc $0f
    rst $38
    ld c, a
    rst $10
    ld l, a
    xor e
    ld [hl], h
    ld b, h
    dec sp
    ldh [rP1], a
    sbc b
    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa05]
    pop hl
    cp $85
    ld a, d
    ld c, d
    or h
    scf
    ld [$367b], sp
    ld l, a
    ld [hl], $2b
    ld d, $34
    dec de
    daa
    add hl, de
    add hl, de

jr_018_48de:
    ld b, $0f
    ld [bc], a
    or $08
    rst $28
    or [hl]
    ei
    or [hl]
    db $eb
    or h
    ld d, $ec
    ldh a, [c]
    call z, Call_000_30cc
    ld a, b
    and b
    ld e, $05
    dec a
    ld a, [de]
    dec [hl]
    ld c, $3b
    inc b
    ld a, [de]
    inc b
    inc c

jr_018_48fc:
    nop
    nop
    nop
    nop
    nop
    inc a
    ret nc

    ld a, [$562c]
    jr c, jr_018_4986

    db $10
    inc l
    db $10
    jr jr_018_490d

jr_018_490d:
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    ld e, $0f
    rra
    rrca
    scf
    rrca
    ld c, e
    inc [hl]
    or h
    ld a, e
    rst $30
    ld c, b
    ld a, e
    ld [hl], $6f
    ld [hl], $2b
    ld d, $34
    dec de
    daa
    add hl, de
    add hl, de
    ld b, $0f
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_4940

    daa
    rra
    cpl
    rra
    daa
    rra
    ld l, l

jr_018_4940:
    inc de
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ff95], a
    xor $c1
    cp $b3
    ld l, h
    db $dd
    ld h, d
    cp l
    ld c, e
    ld e, l
    dec bc
    cpl
    dec de
    rla
    rrca
    inc c
    inc bc
    rlca
    ld bc, $38c6
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, [hl]
    and b
    cp $1c
    sbc h
    add sp, $06
    ld bc, $0609
    rrca
    inc b
    dec b
    ld [bc], a
    dec c
    ld b, $0f
    nop
    ld bc, $0000
    nop

jr_018_4981:
    ld l, h
    ldh a, [$ff4e]
    db $fc
    ld a, [hl-]

jr_018_4986:
    call z, $e09c
    add sp, $50
    add sp, -$10
    ldh a, [rP1]
    nop
    nop
    add hl, bc
    rlca
    inc de
    rrca
    dec e
    inc bc
    ld [hl], d
    dec c
    xor [hl]
    ld [hl], c
    rst $10
    ld l, h
    jp c, $bd6d

    ld e, e
    or b
    ret nz

    ret z

    ldh a, [$ffe4]
    ld hl, sp-$1c
    ld hl, sp+$24
    ld hl, sp-$72
    ld [hl], b
    push hl
    ld e, $d9
    ld h, $5b
    rrca
    rla
    rrca
    add hl, bc
    rlca
    ld b, $01
    rlca
    inc bc
    add hl, bc
    ld b, $0f
    inc b
    ld c, $03
    ld h, $d8
    add sp, -$30
    ld d, b
    and b
    ld a, b
    add b

jr_018_49c9:
    db $fc
    add sp, $5e
    db $ec
    inc a
    ldh [$ffd0], a
    jr nz, jr_018_4981

    halt
    ld e, l
    ld [hl], $56
    jr z, jr_018_49c9

    ld e, [hl]
    ld d, l
    ld l, $fa
    ld e, h
    db $f4
    jr jr_018_49f8

    nop
    ld h, $d8
    add sp, -$30
    ld d, b
    and b
    ld a, b
    add b
    db $fc
    add sp, $5c
    add sp, $3e
    db $e4
    sub $20
    ld h, $d8
    add sp, -$30
    ld d, b
    and b
    ld a, b

jr_018_49f8:
    add b
    ld hl, sp-$20
    ld e, h
    add sp, $3c
    ldh [$ffd4], a
    jr nz, jr_018_4a02

jr_018_4a02:
    nop
    inc bc
    nop
    inc c
    inc bc
    ld d, e
    rrca
    ld d, a
    rrca
    di
    ld c, a
    sub $69
    xor e
    ld [hl], h
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    adc b
    ldh a, [$ffce]
    ldh a, [$ffcd]
    or $61
    cp $e2
    inc e
    ld c, [hl]
    ld sp, $053e
    rrca
    dec b
    rla
    dec c
    dec bc
    rlca
    ld b, $01
    inc bc
    nop
    ld [bc], a
    ld bc, $00fe
    di
    ld l, h
    db $d3
    ld l, h
    ld d, a
    xor d
    rst $08
    or [hl]

Call_018_4a3b:
    ld a, [hl]
    or h
    call c, $bc70
    ld [hl], b
    ld b, $03
    rlca
    nop
    inc e
    inc bc

jr_018_4a47:
    dec de
    inc c
    rrca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    xor h
    ld [hl], b
    ld [hl], h
    adc b
    db $e4
    ld a, b
    ret z

    or b
    or b
    ld b, b
    sub b
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    db $d3
    rrca
    ld a, [hl]
    pop bc
    cp e
    ld [hl], h
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4a47

    adc b
    ldh a, [$ffce]
    ldh a, [$ffcd]
    or $61
    cp $e2
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, de
    rlca
    cpl
    rra
    ccf
    rra
    ld l, a
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ffcc]
    ldh a, [$ff90]
    ld l, a
    cp a
    ld a, a
    sbc h
    ld a, a
    ld a, a
    nop
    inc hl
    rra
    ld [hl], b
    rrca
    ld a, a
    inc a
    ccf
    inc bc
    ld a, [hl]
    add h
    dec de
    and $fd
    ld [bc], a
    ld a, a
    add sp, -$2b
    add sp, $1c
    ldh [$fff8], a
    db $10
    cp $e0
    ld a, h
    dec hl
    ld l, d
    dec a
    ld a, $13
    inc de
    inc c
    dec hl
    rla
    halt
    add hl, hl
    dec [hl]
    jr jr_018_4af8

    nop
    sbc a
    ld l, d
    dec hl
    sbc $be
    ld h, h
    ld h, h
    sbc b
    jp z, Jump_000_35f4

    jp z, $0cda

    inc c
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    inc a

jr_018_4af8:
    rra
    inc a
    rra
    ld l, [hl]
    rra
    sub a
    ld l, a
    db $e3
    ld a, h
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [$ff9e]
    db $e4
    ei
    ld b, $be
    ld a, a
    sbc b
    ld a, a
    ld a, a
    nop
    ccf
    nop
    ld a, a
    rrca
    ld sp, hl
    halt
    ld c, h
    inc sp
    db $dd
    ld h, [hl]
    ld e, l
    xor d
    push de
    ld l, d
    ld a, [hl-]
    ret nz

    ldh a, [rNR41]
    ld hl, sp-$40
    inc l
    ret c

    ld [hl], h
    xor b
    halt
    call z, Call_018_69f6
    ld [hl], e
    rrca
    inc de
    inc c
    ld [hl], $18
    ld a, [de]
    inc c
    ld [hl], $18
    ld l, $10
    inc e
    nop
    sbc $2c
    sbc h
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    ret nc

    ld h, b
    add sp, $30
    add sp, $10
    ld [hl], b

jr_018_4b50:
    nop
    cp [hl]
    ld a, a
    sbc b
    ld a, a
    ld a, a
    nop
    ccf

jr_018_4b58:
    nop
    ld a, a
    rra
    db $fd
    ld a, [hl]
    ld [hl], h
    dec bc
    db $dd
    ld h, [hl]
    cp [hl]
    ld a, a
    sbc b
    ld a, a
    ld a, a
    nop
    ccf
    nop
    ld a, a
    rra
    ld a, a
    ld a, $7c
    inc sp
    db $dd
    ld h, [hl]
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    sub b
    ld l, a
    cp [hl]
    ld a, a
    sbc c
    ld a, [hl]
    ret nz

    nop
    jr nc, @-$3e

    ld a, [bc]
    ldh a, [$ff0a]
    ldh a, [$ff8f]
    ldh a, [c]
    db $fd
    ld b, $39
    add $ca
    inc [hl]
    ld a, [hl]
    ld bc, $3f41

jr_018_4b95:
    and b
    ld e, a
    rst $38
    ld a, b
    ld a, a
    daa
    ld e, c
    ld [hl], $24
    dec de
    dec e
    ld b, $dc
    add sp, -$2c
    add sp, $3a
    call nz, Call_000_2cf2
    db $ec
    ret c

    inc [hl]
    ret c

    ld c, b
    or b
    ld [hl], b
    ret nz

    ld h, $19
    ld [hl], e
    cpl
    ld [hl], a
    jr jr_018_4bda

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    jr nc, jr_018_4b58

    add sp, -$14
    jr nc, jr_018_4b50

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4b95

    ld [$08f0], sp
    ldh a, [$ff88]

jr_018_4bda:
    ldh a, [$fffe]
    nop
    dec a
    add $cb
    ld [hl], $7e
    ld bc, $5fa1
    sbc [hl]
    ld a, l
    rst $38
    ld h, [hl]
    ld e, a
    inc hl
    ld e, l
    ld [hl-], a
    inc h
    dec de
    dec e
    ld b, $dd
    ld [$e8d6], a
    ld a, [hl-]
    call nz, Call_000_2cf2
    db $ec
    ret c

    ld [hl], h
    sbc b
    ld c, b
    or b
    ld [hl], b
    ret nz

    ld [bc], a
    nop
    inc c
    ld [bc], a
    ld d, $0e
    ld e, $0e
    rra
    rrca
    rla
    rrca
    ld l, e
    inc d
    xor h
    ld [hl], e
    ld h, b
    nop
    jr jr_018_4c75

    ld b, $78
    dec b
    ld a, d
    add l
    ld a, [$fee1]
    add l
    ld a, d
    ld c, d
    or h
    rst $30
    ld c, b
    ei
    ld [hl], $5f
    ld [hl], $2b
    ld d, $36
    add hl, de
    dec hl
    dec e
    dec de
    ld b, $0e
    ld bc, $08f6
    rst $28
    or [hl]
    db $fd
    or [hl]
    db $eb
    or h
    ld [hl], $cc
    ld [$ecdc], a
    jr nc, @+$3a

    ret nz

    inc d
    rrca
    add hl, de
    ld b, $1b
    inc c
    add hl, sp
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    inc d
    ld hl, sp-$34
    jr nc, jr_018_4cca

    jr jr_018_4cc6

    jr nc, jr_018_4c8c

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    ld [de], a
    ld c, $16
    ld c, $1a
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    bit 6, [hl]
    or l
    ld c, [hl]

jr_018_4c71:
    jr @+$62

    inc b
    ld a, b

jr_018_4c75:
    ld h, h
    ld a, b
    ld d, $78
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ei
    or h
    sub $b8
    db $fd
    ld [hl], $5f
    scf
    ld c, e
    scf
    ld [hl], $19
    dec de
    dec c
    add hl, bc

jr_018_4c8c:
    ld b, $0f
    ld [bc], a
    dec bc
    dec b
    rst $18
    or [hl]
    db $fd
    or $e9
    or $36
    call z, $d8ec
    ret z

    jr nc, jr_018_4d16

    and b
    jr z, jr_018_4c71

    or a
    ld l, b
    call c, $bd63
    ld c, d
    ld e, l
    ld a, [bc]
    cpl
    rra
    rla
    rrca
    inc c
    inc bc
    rlca
    ld bc, $38c6
    db $fc
    nop
    db $e4
    ret c

    and h
    ret c

    xor b
    ld d, b
    sbc h
    ld h, b
    sbc $6c
    call c, $0968
    ld b, $0f
    inc b
    inc c

jr_018_4cc6:
    inc bc
    dec c
    ld b, $05

jr_018_4cca:
    ld [bc], a
    dec c
    ld b, $0f
    nop
    ld bc, $f800
    ldh [$ff58], a
    ldh [$ffe8], a
    db $10
    ret nc

    ldh [$ffb0], a
    ret nz

    ret z

    ld [hl], b
    add sp, -$10
    ldh a, [rP1]
    ld [$1a06], sp
    ld b, $14
    ld a, [bc]
    ld [hl], d
    inc c
    xor [hl]
    ld [hl], c
    rst $10
    ld l, h
    ei
    ld c, l
    cp a
    ld e, c
    jr nc, jr_018_4d33

    ld c, b
    ld [hl], b
    ld h, h
    ld a, b
    ld h, h
    ld a, b
    ld [hl], h
    ld hl, sp-$72
    ld [hl], b
    push hl
    sbc [hl]
    ld d, c
    xor [hl]
    ld e, e
    ld c, $17
    ld c, $09
    ld b, $07
    nop

jr_018_4d09:
    dec bc
    ld b, $09
    ld b, $0f
    inc b
    inc c
    inc bc
    ld c, [hl]
    or b
    jr z, @-$2e

    or b

jr_018_4d16:
    ret nz

    ld hl, sp-$30
    db $fc
    ret c

    cp $cc

jr_018_4d1d:
    ld l, [hl]
    add b
    ldh [rP1], a

jr_018_4d21:
    sub d
    ld a, h
    ld e, d
    inc a
    ld c, [hl]
    jr nc, jr_018_4d21

    ld c, [hl]
    ld e, c
    ld h, $fa
    ld e, h
    db $f4
    jr @+$1a

    nop
    nop
    nop

jr_018_4d33:
    nop
    nop
    inc b
    nop
    jr jr_018_4d3d

    inc l
    inc e
    inc a
    inc e

jr_018_4d3d:
    ld a, [hl]
    rra
    xor a
    ld e, a
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_4d09

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ff8e]
    db $f4
    pop de
    ld l, [hl]
    cp $7f
    cp c
    ld a, [hl]
    ld a, [hl]
    ld bc, $1fe1
    rst $38
    jr c, jr_018_4d1d

    ld b, a
    ld e, l
    ld a, [hl-]
    ei
    ld b, $3b
    add $df
    jr z, jr_018_4d3d

    add sp, -$46
    call nz, Call_000_2cf2
    db $ec
    ret c

    ld [hl], h
    cp b
    inc [hl]
    dec de
    dec a

jr_018_4d74:
    ld b, $66
    add hl, sp
    ld d, e
    cpl
    cpl
    db $10
    ld [hl], h
    jr z, jr_018_4db2

    jr jr_018_4d98

    nop
    ld e, b
    or b
    ld a, b
    ret nz

    call nz, $9438
    add sp, -$18
    db $10
    ld d, h
    jr z, jr_018_4df6

    jr nc, jr_018_4dc0

    nop
    inc b
    nop
    jr jr_018_4d99

    inc l
    inc e
    inc a

jr_018_4d98:
    inc e

jr_018_4d99:
    ld a, [hl]
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp $7f
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff8c]
    ldh a, [$fffe]
    inc b
    dec sp
    add $b9

jr_018_4db2:
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f61
    rst $38
    ld a, b
    ld a, a
    rlca
    ld e, l
    ld a, [hl-]
    inc [hl]
    dec de
    dec e

jr_018_4dc0:
    ld b, $dd
    ld a, [hl+]
    push de
    ld [$c0be], a
    db $f4
    jr z, @-$12

    ret c

    ld a, b
    or b
    ld e, b
    or b
    ld [hl], b
    ret nz

    ld d, $09
    inc de
    rrca
    inc de
    inc c
    ld [hl], $18
    ld a, [de]
    inc c
    ld [hl], $18
    ld l, $10
    inc e
    nop
    ret nc

    jr nz, jr_018_4d74

    ldh [$ff90], a
    ld h, b
    add sp, $30
    ret nc

    ld h, b
    add sp, $30
    add sp, $10
    ld [hl], b
    nop
    inc c
    inc bc
    dec bc
    rlca
    dec a

jr_018_4df6:
    dec bc
    ld a, c
    ld [hl], $2b
    inc e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    db $10
    ldh [$ff98], a
    ldh [rNR50], a
    ret c

    db $e4
    jr jr_018_4e52

    jr nc, jr_018_4e7c

    nop
    nop

jr_018_4e0e:
    nop
    nop
    nop
    inc c
    inc bc
    inc e

jr_018_4e14:
    inc bc
    ld a, [hl+]
    dec d
    ld hl, $121e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    sub b
    ldh [$ffd0], a
    ldh [$ff28], a
    ret nc

    db $e4
    jr c, jr_018_4e0e

    jr jr_018_4e14

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld d, $09
    rla
    rrca
    inc sp
    inc c
    ld c, [hl]
    jr nc, jr_018_4e5c

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_4e54

    ldh [$ff98], a
    ld h, b
    db $e4
    jr @-$76

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_018_4e52:
    nop
    inc c

jr_018_4e54:
    ld [bc], a
    ld d, $0e
    ld e, $0e
    rra
    rrca
    scf

jr_018_4e5c:
    rrca
    ld l, e
    inc [hl]

jr_018_4e5f:
    db $fc
    ld b, e
    ld h, b
    nop
    jr @+$62

    inc b
    ld a, b
    ld b, $78
    dec b
    ld a, [$fee1]
    add l
    ld a, d
    ld c, [hl]
    or b
    rst $38
    jr nc, jr_018_4e5f

    ld [hl], $6f
    ld d, $3b
    ld d, $36
    add hl, de
    cpl

jr_018_4e7c:
    add hl, de
    add hl, de
    ld b, $0f
    ld [bc], a
    rst $38
    ld b, $eb
    or [hl]
    ei
    or h
    xor $b4
    ld [hl], $cc
    ld a, [$cccc]
    jr nc, jr_018_4f08

    and b
    ld e, $01
    ld l, $1d
    add hl, sp
    ld e, $39
    ld b, $1e
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    xor b
    ret nc

    ret z

    ldh a, [$ffd4]
    jr z, jr_018_4f0c

    jr jr_018_4ece

    jr jr_018_4ec4

    nop
    nop
    nop
    nop
    nop
    dec bc
    dec b
    dec bc
    rlca
    dec d
    ld a, [bc]
    inc de
    inc c
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    inc a
    ret nz

    cp d

jr_018_4ec4:
    call c, $3ce2
    ld c, [hl]
    jr nc, jr_018_4f06

    nop
    jr jr_018_4ecd

jr_018_4ecd:
    nop

jr_018_4ece:
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    ld [de], a
    ld c, $16
    ld c, $1d
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    db $dd
    ld l, d
    ld b, b
    nop
    jr nc, jr_018_4f25

    ld [$4470], sp
    ld a, b
    xor $f0
    pop bc
    ld a, $ed
    sbc $be
    ret nz

    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    ld c, $0b
    ld b, $07
    nop
    ld [bc], a
    ld bc, $0304
    rlca
    ld [bc], a
    and h
    ld e, b
    db $e4
    ld e, b
    xor b

jr_018_4f06:
    ret nc

    cp b

jr_018_4f08:
    ret nz

    call c, $fe68

jr_018_4f0c:
    ld h, h
    call c, Call_018_6860
    sub b
    pop de
    ld a, $99

jr_018_4f14:
    ld a, [hl]
    ld e, c
    ld h, $72
    inc e
    cp c
    ld b, [hl]
    pop af
    ld a, $3e
    nop
    nop
    nop
    rlca
    ld bc, $061d

jr_018_4f25:
    ld a, $1b
    inc h
    rra
    add hl, de
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    ldh a, [rKEY1]

jr_018_4f34:
    ldh a, [c]
    dec d
    ld [$16e9], a
    ld a, [de]
    inc b
    ld c, $00
    nop
    nop
    nop
    nop
    ld b, $01
    inc d
    inc bc
    ld a, [hl+]
    dec d
    ld hl, $121e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    inc c
    ldh a, [$ff67]

jr_018_4f54:
    ld hl, sp+$69
    or $fd
    ld a, [bc]
    dec e

jr_018_4f5a:
    ld b, $0f
    ld b, $06
    nop
    nop
    nop
    inc b
    nop
    jr jr_018_4f69

    inc l
    inc e
    inc a
    inc e

jr_018_4f69:
    ld l, [hl]
    rra
    sub a
    ld l, a
    or c
    ld a, [hl]
    ld e, [hl]
    ccf
    ld d, $09
    inc de
    rrca
    inc de
    inc c
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr jr_018_4f96

    nop
    nop
    nop
    ret nc

    jr nz, jr_018_4f14

    ldh [$ff90], a
    ld h, b
    add sp, $30
    call nc, $6868
    jr nc, @+$32

    nop
    nop
    nop
    ld d, $09
    inc de
    rrca
    dec hl

jr_018_4f96:
    inc d
    ld h, $18
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_4f34

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    ret z

    ld [hl], b
    cp b
    ld b, b
    ldh a, [rP1]
    ld h, b
    nop
    ld d, $09
    inc de
    rrca
    dec de
    inc b
    ld a, $18
    ld [hl-], a
    inc e
    ld l, $10
    ld e, $00

jr_018_4fbf:
    inc c
    nop
    ret nc

    jr nz, jr_018_4f54

    ldh [$ffa8], a
    ld d, b
    ret z

    jr nc, jr_018_4f5a

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    jr jr_018_4fd9

    inc l
    inc e
    inc a
    inc e

jr_018_4fd9:
    ld a, [hl]
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp h
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_018_4fe9

jr_018_4fe9:
    db $10
    jr nz, @+$10

    jr nc, jr_018_4fbf

    xor $0d
    cp $40
    nop
    jr nc, jr_018_5035

jr_018_4ff5:
    ld [$0870], sp
    ld [hl], b
    ld [$9ef0], sp
    ldh [$fffd], a
    ld b, $3b
    add $03
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    jp z, $e077

    nop
    jr jr_018_4ff5

    add h
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp d
    db $f4
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    daa
    add hl, de
    dec a
    ld a, [de]
    ccf
    ld a, [de]
    sub $b8
    sub $bc

jr_018_5035:
    sbc $b0
    rst $28
    or $36
    ret z

    ldh a, [c]
    call z, $2cde
    ld a, [hl]
    xor h
    dec de
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    inc l
    ret nc

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_50cc

    jr jr_018_50c8

    jr nc, jr_018_5096

    inc e
    inc e
    nop
    nop
    nop
    rra
    ld bc, $070b
    add hl, bc
    ld b, $17
    ld [$0e11], sp
    ld c, $00
    nop
    nop
    nop
    nop
    inc a
    ret nz

    sbc h
    ldh [$fffe], a
    jr @+$64

    inc a
    ld c, [hl]
    jr nc, jr_018_50b8

    nop
    jr jr_018_507f

jr_018_507f:
    nop
    nop
    rra
    ld bc, $031f
    ccf
    inc c
    ld sp, $3d1e
    ld [bc], a
    ld e, $00
    inc c
    nop
    nop
    nop
    inc a
    ret nz

    adc b
    ldh a, [$ffc8]

jr_018_5096:
    jr nc, jr_018_510c

    ld [$3844], sp
    jr c, jr_018_509d

jr_018_509d:
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
    rla
    rrca
    dec e
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    call c, $c06b
    nop
    jr nc, @-$3e

    adc b
    ldh a, [$ffc4]

jr_018_50b8:
    ld hl, sp-$32
    ldh a, [$ff61]
    cp $cd
    ld a, $be
    ld b, b
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc

jr_018_50c8:
    rlca
    ld b, $01
    rra

jr_018_50cc:
    ld bc, $1b3c
    add hl, hl
    rra
    call nz, $6438
    ret c

    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
    call c, Call_018_68a8
    ldh a, [$ffd8]
    ldh [$ff1f], a
    nop
    rrca
    rlca
    dec bc
    inc b
    dec c
    ld [bc], a
    inc de
    inc c
    rra
    ld bc, $0003
    nop
    nop
    add sp, $10
    db $10
    ldh [$ff90], a
    ld h, b
    and b
    ret nz

    ret nc

    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    rra
    nop
    rrca
    inc bc
    rra
    dec b
    dec a
    ld a, [de]
    dec d
    ld c, $09

jr_018_510c:
    ld b, $06
    nop
    nop
    nop
    ldh a, [rP1]
    sbc b
    ldh [rNR50], a
    ret c

    db $e4
    jr jr_018_5162

    jr nc, jr_018_514c

    nop
    nop

jr_018_511e:
    nop
    nop
    nop
    rra
    nop
    add hl, sp

jr_018_5124:
    rlca
    ld d, h
    dec hl
    inc hl
    inc e
    ld d, $08
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ret nc

    ldh [$ffe8], a
    ret nc

    db $e4
    jr c, jr_018_511e

    jr jr_018_5124

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    inc l
    rra
    inc a
    rra
    ld a, [hl]
    rra
    xor a

jr_018_514c:
    ld e, a
    pop de
    ld l, [hl]
    cp h
    ld a, a
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff9e]
    ldh [$fffd], a
    ld b, $3b
    add $c1

jr_018_5162:
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld sp, hl
    ld d, [hl]
    sub h
    ld l, e
    ld a, l
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    db $fc
    ret nz

    ld a, $d4
    ld d, d
    xor h
    ld a, h
    ret nz

    ld d, $09
    rla
    rrca
    dec de
    inc b
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr jr_018_51a6

    nop
    nop
    nop
    ret nc

    jr nz, jr_018_51a4

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call nc, $6868
    jr nc, jr_018_51ce

    nop
    nop
    nop
    ld d, $09
    rla

jr_018_51a4:
    rrca
    inc sp

jr_018_51a6:
    inc c
    ld c, [hl]
    jr nc, @+$24

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    ret nc

    jr nz, jr_018_51c4

    ldh [rSVBK], a
    add b
    cp b
    ld h, b
    ret z

    ld [hl], b
    cp b
    ld b, b
    ld a, b
    nop
    jr nc, jr_018_51c1

jr_018_51c1:
    ld d, $09
    rla

jr_018_51c4:
    rrca
    dec de
    inc b
    ld l, $18
    ld [hl-], a
    inc e
    ld l, $10
    inc a

jr_018_51ce:
    nop
    jr jr_018_51d1

jr_018_51d1:
    ret nc

    jr nz, jr_018_51e4

    ldh [$ff98], a
    ld h, b

jr_018_51d7:
    db $e4
    jr jr_018_5162

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_018_51e4:
    nop
    inc c
    inc bc
    rla
    rrca
    rra
    rrca
    dec de
    inc c
    inc [hl]
    dec bc
    ld e, a
    jr nc, jr_018_51f2

jr_018_51f2:
    nop
    ldh [rP1], a
    jr jr_018_51d7

    add h
    ld hl, sp-$1a
    ld hl, sp+$75
    ld a, [$7e91]
    db $fd
    ld [bc], a
    xor e
    ld [hl], a
    or a
    ld l, l
    ld d, a

jr_018_5206:
    dec l
    cpl
    dec b
    ld l, e
    rlca
    or $69
    db $db
    ld l, l
    ld [hl], l
    ld a, [de]
    push de
    ld [$74aa], a
    cp [hl]
    ld a, b
    xor h
    ld [hl], b
    sbc $e4
    inc a
    ret nz

    jp c, $ddac

    ld h, $1f
    ld [bc], a
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    ld a, d
    xor h
    ld a, $cc
    adc h
    ldh a, [$ffd8]
    jr nz, jr_018_52ae

    jr jr_018_52aa

    jr nc, jr_018_5278

    inc e
    inc e
    nop
    nop
    nop
    scf
    nop
    ld c, c
    scf
    cp a
    ld [hl], b
    rst $10
    ld l, d
    xor a
    ld e, a
    ld l, a
    db $10
    rra
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ffd4], a
    jr c, jr_018_5206

    ret c

    ldh a, [c]
    call z, $64fa
    ld a, [$3f24]
    nop
    ld a, a
    inc hl
    db $fc
    ld [hl], a
    rst $10
    ld l, b
    or e
    ld l, a
    ld l, h
    inc sp
    ld d, a
    dec hl
    scf
    ld [$10ee], sp
    ld [hl], l
    xor d
    db $fd
    ld [hl], d
    db $ed

jr_018_5278:
    ld [hl-], a
    ld a, a
    sub b
    ld d, h
    cp b
    add sp, $30
    ld d, b
    and b
    dec e
    ld a, [bc]
    ld a, [de]
    rlca
    dec de
    rrca
    dec de
    inc b
    ld [hl], $18
    ld a, d
    inc c
    ld [hl], h
    jr c, jr_018_52c8

    nop
    ldh a, [$ff80]
    ret nc

    jr nz, jr_018_52a6

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call c, Call_018_7460
    jr c, @+$3a

    nop
    inc bc
    nop
    rlca
    inc bc
    dec a

jr_018_52a6:
    ld b, $7a
    dec [hl]
    rst $00

jr_018_52aa:
    ld a, b
    or a
    ld c, l
    ld c, a

jr_018_52ae:
    dec b
    inc de
    rrca
    ldh a, [rP1]
    add sp, -$10
    call nc, $2a38
    call c, Call_000_1ce2
    ldh a, [c]
    ld c, h
    rst $18
    ld h, b
    sub l
    ld [$0f1f], a
    rra
    rrca
    rla
    inc c
    dec bc

jr_018_52c8:
    rlca
    dec c
    inc bc
    ld a, [de]
    dec c
    dec sp
    dec d
    ld c, c
    ld [hl], $fd
    ldh a, [c]
    db $fd
    ld a, [$f8ff]
    cp $f0
    rst $38
    and $2e
    ret c

    xor $d4
    ret


    ld [hl], $7f
    ld [hl-], a
    ld l, e
    dec [hl]
    dec a
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    ld a, a
    and [hl]
    dec l
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_018_536e

    jr jr_018_536a

    jr nc, @+$3c

    inc e
    inc e
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    dec a
    ld b, $7a
    dec [hl]
    rst $00
    ld a, b
    or a
    ld c, l
    ld c, a
    dec b
    nop
    nop
    ldh a, [rP1]
    add sp, -$10
    call nc, $2a38
    call c, Call_000_1ce2
    ldh a, [c]
    ld c, h
    rst $18
    ld h, b
    inc de
    rrca
    rra
    add hl, bc
    rla
    rrca
    rrca
    rlca
    rrca
    inc bc
    ld a, [de]
    dec c
    dec sp
    dec d
    ld c, c
    ld [hl], $95
    ld [$f2fd], a
    db $fd
    ld a, [$f0ee]
    rst $18
    and $2e
    ret c

    xor $d4
    ret


    ld [hl], $03
    nop
    rrca
    inc bc
    dec d
    ld c, $1a
    dec b
    rst $38
    ld [$72ed], sp
    ld [hl], a
    ld a, [hl-]
    ccf
    ld [bc], a
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    jr c, jr_018_538e

    ret c

    push hl
    ld a, [de]
    ld d, l
    xor d
    db $ed
    or d
    ei
    or h
    dec hl
    rla
    dec sp
    rla
    scf
    dec de
    ccf
    dec de
    ld a, [hl+]

jr_018_536a:
    dec e
    dec de
    inc c
    inc d

jr_018_536e:
    dec bc
    ld c, $01
    or $f8
    or $7c
    db $fc
    ld [hl], b
    xor $70
    ccf
    add $f6
    add sp, -$16
    inc d
    xor [hl]
    ld d, h
    dec bc
    dec b
    add hl, bc
    ld b, $0b
    rlca
    dec e
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a

jr_018_538e:
    inc e
    inc e
    nop
    cp e
    ld d, [hl]
    sbc a
    ld h, [hl]
    adc [hl]
    ldh a, [$ffdc]
    jr nz, jr_018_540e

    jr jr_018_540a

    jr nc, jr_018_53d8

    inc e
    inc e
    nop
    nop
    nop
    stop
    jr z, jr_018_53b7

    ld b, h
    jr c, @+$4c

    inc a
    sub l
    ld a, d
    sbc d
    ld [hl], c
    sbc c
    ld [hl], b
    rlca
    nop
    dec de
    rlca
    ld l, $1f

jr_018_53b7:
    ld a, $1f
    ld e, a
    ccf
    ld c, a
    ccf
    xor $11
    ld d, c
    xor [hl]
    ret nz

    nop
    jr nc, @-$3e

    ld [$0cf0], sp
    ldh a, [$ff0a]
    db $f4
    jp z, $12f4

    db $ec
    inc c
    ldh a, [$ff59]
    jr nc, jr_018_542c

    jr nc, jr_018_540e

    db $10
    inc e

jr_018_53d8:
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    ld [hl], b
    rst $10
    ld l, d
    cp a
    ld c, d
    ld d, a
    ld a, [hl+]
    dec hl
    rla
    rra
    nop
    dec bc
    inc b
    dec e
    ld c, $f4
    ld [$e8dc], sp

jr_018_53f5:
    db $fc
    ldh [$ffde], a
    add sp, $6f
    sub [hl]
    sbc $30
    ret nc

    ldh [$ffa8], a
    ret nc

    scf
    jr jr_018_5436

    inc c
    ld a, d
    inc a
    inc a
    nop
    nop

jr_018_540a:
    nop
    nop
    nop
    nop

jr_018_540e:
    nop
    nop
    nop
    ldh a, [rP1]
    add sp, $30
    call c, Call_018_7460
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    cpl

jr_018_542c:
    rra
    scf
    ld [$3748], sp
    ret nz

    nop
    jr nc, jr_018_53f5

    inc c

jr_018_5436:
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    xor a
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    rst $10
    dec c
    sbc e
    rlca
    rla
    ld [$0e19], sp
    dec a
    rla
    or $08
    rst $18
    ld l, d
    cp $64
    sbc $6c
    and h
    ret c

    ldh a, [c]
    inc c
    ld a, $d8
    cp h
    ret c

    ld bc, $2340
    ld hl, $3811
    inc c
    rra
    rlca
    rrca

jr_018_546b:
    ld bc, $0003
    nop
    nop
    nop
    cp a
    ld c, h
    sbc $e1
    ei
    dec b
    dec bc
    inc b
    adc d
    push af
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, $3f
    jp nz, $e202

    ld b, $a6
    adc $cc
    ld a, $38
    db $fc
    ldh a, [$fff8]
    ret nz

    ldh [rP1], a
    add b
    xor a
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    rst $18
    dec b
    sub a
    dec bc
    dec de
    inc c
    dec d
    ld c, $3f
    inc de
    push af
    ld [$68df], sp
    rst $38
    ld h, [hl]
    sbc $6c
    and h
    ret c

    db $ec
    jr jr_018_546b

    ld [hl], b
    add hl, sp
    ldh a, [rP1]
    nop
    ld b, b
    nop
    ld b, b
    nop

jr_018_54b7:
    ld h, b
    nop
    ldh [rLCDC], a
    ldh [rLCDC], a
    and b
    ret nz

    and b
    ret nz

    scf
    dec bc
    ld a, e
    inc a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    ld b, c
    sub $2b
    ld l, h
    rla
    db $10
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
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
    xor a
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    rst $10
    dec c
    xor e
    rla
    scf
    jr jr_018_5528

    dec e
    inc de
    rrca
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    rst $18
    ld l, h
    xor h
    ret nc

    ret c

    jr nc, jr_018_54b7

    ld [hl], b
    ld d, c
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ld a, $13
    scf
    ld [$3d7a], sp
    ccf

jr_018_5528:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    pop bc
    sbc $23
    db $ec
    ld [hl], a
    ld a, b
    adc a
    sub c
    ld a, [hl]
    ld b, d
    inc a
    inc l

jr_018_553e:
    db $10
    stop
    ld b, b
    add b
    ld b, b
    add b
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
    rrca
    nop
    db $10
    rrca
    cpl
    rra
    ccf
    rra
    cpl
    rra
    ld a, l
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff8f], a
    ldh a, [$ff9d]
    xor $ca
    db $fd
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_018_553e

    jr c, jr_018_55ee

    cp h
    ld a, d

jr_018_557e:
    adc h
    call $b706
    ld l, b
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    sub a

jr_018_558c:
    rrca
    inc a
    inc bc
    ld h, a
    dec sp
    add $39
    ld a, a
    add [hl]
    xor a
    ld d, [hl]
    ld d, a
    add sp, -$12
    call nc, $ac56
    ld [$b71c], a
    ld e, d
    add a
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    inc [hl]
    dec a
    ld a, [bc]
    dec c
    inc bc
    ld c, $05
    dec c
    ld [bc], a
    inc e
    rrca
    rra
    nop
    nop
    nop
    ld a, $c0
    ret z

    or b
    ret z

    jr nc, jr_018_558c

    ld hl, sp-$0c
    jr c, jr_018_557e

    inc c
    ld [hl], d
    inc a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff8e], a
    ldh a, [$ff9d]
    xor $c9
    cp $07
    ld b, $1f
    ld e, $3f
    ld a, $79
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]

jr_018_55ee:
    ld a, b
    jr c, jr_018_562d

    ld l, a
    ret nc

    cp d
    push bc
    cp c
    sub $7a
    sub a
    rst $18
    scf
    xor [hl]
    rra
    add hl, de
    ld b, $2f
    db $10
    adc h
    ld [hl], b
    ld hl, sp+$00
    ld c, b
    or b
    xor b

jr_018_5608:
    ret nc

    sbc $a0
    cp h

jr_018_560c:
    ld c, b
    db $fc
    jr c, jr_018_5608

    ld [hl], b
    inc e
    rra
    rlca
    rrca
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ld e, $35
    adc $ce
    pop af

jr_018_5627:
    ccf
    rst $38
    inc sp
    inc c
    ld [hl], d
    inc a

jr_018_562d:
    ld a, h
    nop
    nop
    nop
    ld c, c
    or c
    jp c, Jump_018_7c62

    sbc h
    ld hl, sp-$20
    db $f4
    jr c, jr_018_566e

    inc c
    ld [hl], d
    inc a
    ld a, h
    nop
    or a
    ld l, b
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    inc c
    inc bc
    dec de
    inc c
    rst $00
    jr c, jr_018_56d0

    add e
    and l
    ld e, e
    ld d, a
    add sp, -$18
    ret nc

    ld e, b
    and b
    rst $38

jr_018_565e:
    jr jr_018_565e

    ld a, h
    add b
    nop
    ld b, b
    add b
    jr nz, jr_018_5627

    and b
    ret nz

    ret nc

    ld h, b
    ld [hl], b
    jr nz, jr_018_569e

jr_018_566e:
    nop
    stop
    ld l, $1d
    dec de
    inc c
    dec e
    inc bc
    ld sp, $371f

jr_018_567a:
    ld [$3c72], sp
    ld a, h
    nop
    nop
    nop
    sbc b
    ld h, b
    xor b
    ret nc

    ret z

    jr nc, jr_018_560c

    ld hl, sp-$0c
    jr c, jr_018_56be

    inc c
    ld [hl], d
    inc a

jr_018_568f:
    ld a, h
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    cpl
    rra
    ccf
    rra
    cpl
    rra
    ld a, l

jr_018_569e:
    inc bc
    or a
    ld l, b
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff8e], a
    ldh a, [$ff9d]
    xor $c9

jr_018_56ae:
    cp $c6
    jr c, jr_018_568f

    ld h, d
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    sub a
    rrca
    inc c
    inc bc
    rra

jr_018_56be:
    nop
    ld [hl], $19
    ld a, a
    add b
    and h
    ld e, e
    ld d, a
    db $eb
    rst $28
    ret nc

    ld e, b
    and b
    ld hl, sp+$10
    db $fc
    jr c, jr_018_574e

jr_018_56d0:
    sbc h
    nop
    nop
    add b
    nop

jr_018_56d5:
    ld b, b
    add b
    ret nz

    add b
    ldh [rP1], a
    jr nz, jr_018_56dd

jr_018_56dd:
    nop
    nop
    nop
    nop
    cpl
    rla
    ld a, [hl-]
    rlca
    rra
    nop
    inc c
    rlca
    dec c
    ld [bc], a
    inc e
    rrca
    rra
    nop
    nop
    nop
    call c, $c8a0
    jr nc, jr_018_567a

    ld a, b
    call nz, $f4f8
    jr c, jr_018_56ae

    inc c
    ld [hl], d
    inc a
    ld a, h
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    inc a
    rra
    ld a, [hl]
    rra
    xor a
    ld e, a
    sub c
    ld l, [hl]
    cp [hl]
    ld a, a
    ret nz

    nop
    jr nc, jr_018_56d5

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fffd], a
    ld b, $3b
    add $59
    ld a, $7e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld e, $09
    dec d
    ld a, [bc]
    ld a, $05
    rst $18
    ld a, [hl+]
    push de
    ld [$c0ba], a
    ldh a, [rNR41]
    ld hl, sp-$40
    sbc h

jr_018_573c:
    ld l, b
    halt
    db $ec
    xor l
    ld [hl], d
    nop
    nop
    stop
    jr jr_018_5747

jr_018_5747:
    inc e
    ld [$081c], sp
    inc [hl]
    jr jr_018_5782

jr_018_574e:
    jr jr_018_57b4

    jr c, jr_018_57bf

    ld [de], a
    ld d, a
    cpl
    ld b, a
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$1101]
    ldh [$ffe8], a
    jr nc, jr_018_573c

    ld l, b
    add sp, $70
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ret z

    ld [hl], b
    ld [$90f0], sp
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_5782:
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc e
    ccf
    jr jr_018_580b

    jr nc, jr_018_5809

    rrca
    nop
    scf
    rst $08
    call c, $fcbf
    cp a
    ld a, [hl]
    cp a
    ld e, a
    ccf
    xor [hl]
    ld e, a
    ldh [$ff7f], a
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [$ffbc], a
    ret z

    halt
    adc h
    add hl, sp
    add $30
    ldh a, [$ff60]

jr_018_57b4:
    ldh a, [$ff60]
    ldh [rLCDC], a

jr_018_57b8:
    ldh [rLCDC], a
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_018_57bf:
    nop
    ld b, b
    cp [hl]
    ld a, a
    ld a, a
    nop
    rst $20
    ld e, a
    ld a, a
    jr nz, jr_018_5849

    rra
    ld a, a

jr_018_57cc:
    inc hl
    ld l, b
    rla
    ld e, d
    dec l
    ld l, [hl]
    sub b
    cp b
    ld d, b
    ld [hl], b
    add b
    db $fc
    ld h, b
    cp $fc
    cp $e0
    sub b
    ld h, b
    ldh a, [$ff80]
    dec l
    ld [de], a
    ld l, $1f
    ld c, a
    jr nc, jr_018_57cc

    ld e, b
    ld [hl], h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    sbc b
    ld h, b
    inc [hl]
    ret z

    ret z

    jr nc, jr_018_5868

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    scf
    rrca
    ld e, h
    ccf
    ld a, h
    ccf

jr_018_5809:
    ld a, [hl]
    ccf

jr_018_580b:
    ld e, a
    ccf
    xor [hl]
    ld e, a
    ldh [$ff7f], a
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [$ffbc], a
    ret z

    halt
    adc h
    ld a, [hl-]
    call nz, RST_00
    jr nc, jr_018_5825

jr_018_5825:
    ld c, a
    jr nc, jr_018_57b8

    ld a, a
    xor a
    ld [hl], b
    or c
    ld h, b
    or c
    ld h, b
    or b
    ld h, b
    cp [hl]
    ld a, a
    rst $38
    nop
    rst $20
    ld e, a
    rst $38
    jr nz, jr_018_58b9

    sbc a
    cp a
    db $e3
    call nz, Call_018_7d7b
    ld b, $6d
    sub d
    cp e
    ld d, b
    ld [hl], b
    add b
    db $fc
    ld h, b

jr_018_5849:
    cp $fc
    cp $e0
    ld d, b
    and b
    ld [hl], b
    ret nz

    or b
    ld h, b
    ld e, b
    jr nc, jr_018_58ae

    jr nc, jr_018_5880

    db $10
    jr jr_018_585b

jr_018_585b:
    ld [$0000], sp
    nop
    nop
    nop
    ld h, $19
    ld l, $1f
    ld c, a
    jr nc, @-$1a

jr_018_5868:
    ld e, b
    ld [hl], h
    jr c, jr_018_58a4

    nop
    nop
    nop
    nop
    nop
    ret c

    jr nz, jr_018_58a8

    ret z

    ret z

    jr nc, jr_018_58e8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_5880:
    nop
    nop

jr_018_5882:
    nop
    rrca
    nop
    scf
    rrca
    ld e, h
    ccf
    ld a, h
    ccf
    ld a, [hl]
    ccf
    ld e, a
    ccf
    xor [hl]
    ld e, a
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ffbc], a
    ret nz

    ld a, d
    adc h
    jr nz, jr_018_58a3

jr_018_58a3:
    ld e, b

jr_018_58a4:
    jr nz, jr_018_58ec

    jr c, @-$65

jr_018_58a8:
    halt
    sbc [hl]
    ld [hl], c
    or c
    ld h, b
    or c

jr_018_58ae:
    ld h, b
    or b
    ld h, b
    ldh [$ff7f], a
    cp [hl]
    ld a, a
    ld a, a
    nop
    rst $20
    ld e, a

jr_018_58b9:
    ld a, a
    and b
    rst $38
    rra
    cp a
    jp Jump_018_77e8


    ld [hl], $cc
    ld l, [hl]
    sub h
    cp d
    ld d, h

jr_018_58c7:
    inc [hl]
    ret nz

    ldh a, [rNR41]
    ld hl, sp-$10
    db $fc
    ret z

    ret z

    jr nc, jr_018_5882

    ld h, b
    or b
    ld h, b
    ld [hl], b
    jr nz, jr_018_5928

    jr nz, jr_018_590a

    nop
    stop
    nop
    nop
    nop
    nop
    ld a, d
    dec c
    dec l
    ld [de], a
    ld d, a
    cpl
    rst $28

Call_018_58e8:
jr_018_58e8:
    ld d, b
    ld [hl], h
    jr c, @+$3a

jr_018_58ec:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$80
    sub b
    ld h, b
    jr z, jr_018_58c7

    call nc, $c828
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_5905:
    ld a, $00
    ld e, l
    ld a, $7f

jr_018_590a:
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    scf
    add hl, bc
    ld [hl], a
    ld [$63bc], sp
    rst $38
    ld e, b
    db $fd
    ld e, d
    ldh [rP1], a
    jr jr_018_5905

    call nz, $e4f8

jr_018_5928:
    ld hl, sp-$4a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    db $db
    or h
    cp l
    ld b, d
    ld a, a
    add hl, de
    cp l
    ld e, d
    cp a
    ld h, e
    ld e, [hl]
    ld sp, $122d
    rla
    ld [$0a1d], sp
    sub $b8
    or $fc
    ld [$7f74], a
    add b
    rst $08
    or $fe
    ld [hl], b
    ld a, b
    add b
    ret z

    or b
    ld a, [de]
    rlca
    rla
    rrca
    add hl, bc
    ld b, $1d
    ld c, $1b
    inc b
    add hl, sp
    ld e, $3e
    nop
    nop
    nop
    sbc b
    ld h, b
    inc [hl]
    ret c

    sbc $20
    ld e, d
    inc a
    ld e, h
    jr nz, @+$3a

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
    nop
    nop
    nop
    nop
    inc bc
    inc c
    inc bc
    rla
    rrca
    inc e
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$0f1c]
    inc [hl]
    rrca
    ld a, e
    scf
    call nz, $b77b
    ld c, e
    rst $18
    inc bc
    sbc e
    rlca
    dec de
    rlca
    add l
    ld a, [$fee1]
    add l
    ld a, d
    jp z, $b634

    ld c, b
    xor $34
    ld a, a
    or d
    ld l, a
    or [hl]
    rra
    rlca
    rla
    rrca
    inc d
    rrca
    inc d
    rrca
    inc e
    rrca
    inc a
    rrca
    dec sp
    rrca
    rra
    dec bc
    cp $84
    xor h
    ret c

    or h
    ret c

    cp h
    ret nz

    db $ec
    ret c

    db $ec
    ret nc

    ld h, [hl]
    call c, Call_018_40fe
    rst $20
    ld e, d
    rst $20
    ld e, d
    db $db
    ld h, [hl]
    rst $20
    ld a, [hl]
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    sbc c
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa85]

jr_018_5a01:
    rla
    rrca
    dec sp
    inc b
    ld e, h
    inc sp
    ld h, a

jr_018_5a08:
    jr c, jr_018_5a75

    ld [hl], $5f
    ld h, $2b
    ld b, $0d
    inc bc
    pop hl
    cp $85
    ld a, d
    ld c, d
    or h
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    rst $18
    db $e4
    rrca
    inc b
    add hl, bc
    ld b, $1f
    inc bc
    rla
    ld a, [bc]
    ld a, [hl-]
    dec e
    ccf
    nop
    db $10
    rrca
    inc de
    inc c
    db $ec
    jr jr_018_5a08

    cp b
    call c, $ec60
    ret c

    call z, $e630
    inc e
    ld a, $c0
    jr nz, jr_018_5a01

    or l
    ld e, d
    sbc c
    ld h, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    jp $ff7e


    ld a, [hl]
    cp l
    ld a, [hl]
    ld a, [hl]
    nop

jr_018_5a51:
    rla
    rrca
    dec sp
    inc b
    ld e, h
    inc sp
    ld h, a

jr_018_5a58:
    jr c, jr_018_5ac5

    ld [hl], $5f
    ld h, $2b
    ld b, $15
    dec bc
    pop hl
    cp $85
    ld a, d
    ld c, d
    or h
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    sub $e8
    dec de
    inc c
    inc de
    rrca

jr_018_5a75:
    dec bc
    ld b, $1f
    nop
    jr c, jr_018_5a92

    add hl, sp
    ld b, $0b
    dec b
    add hl, bc
    ld b, $ec
    jr jr_018_5a58

    ld a, b
    call c, $eee0
    db $10
    ld h, $dc
    inc a
    ret nz

    and b
    ld b, b
    jr nz, jr_018_5a51

    ld b, c

jr_018_5a92:
    ld a, $63
    ld a, $7f
    ld a, $5d
    ld a, $3e
    nop
    nop
    nop
    nop
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
    ldh [rLCDC], a
    ldh a, [$ff60]
    add sp, $70
    ld h, a
    jr c, jr_018_5ab5

    nop
    dec b
    inc bc

jr_018_5ab5:
    dec c
    inc bc
    ld a, [bc]
    dec b
    add hl, sp
    ld b, $46
    add hl, sp
    sbc c
    halt
    xor l
    halt
    ld [$e634], a
    ret c

jr_018_5ac5:
    pop de
    xor $f9
    and $65
    jp c, Jump_000_34cb

    sub d
    ld l, h
    ld h, $d8
    or [hl]
    ld l, l
    ld e, a
    ld hl, $063f
    dec l
    ld d, $16
    add hl, bc
    add hl, de
    rlca
    ld [de], a
    dec c
    dec sp
    dec e
    db $ed
    sbc [hl]
    pop de
    xor [hl]
    xor [hl]

jr_018_5ae6:
    ld d, b
    db $fc
    ld b, b
    call c, $ee60
    or h
    ld a, a
    or [hl]
    xor [hl]
    ld d, b
    inc sp
    inc e
    ld l, c
    scf
    push hl
    dec de
    rst $30
    ld l, b
    ld h, l
    jr jr_018_5b18

    nop
    ld bc, $0100
    nop
    jr nc, @-$3e

    jr nz, jr_018_5ac5

    and b
    ret nz

    or b
    ld b, b
    ret z

    ldh a, [$ffc8]
    jr nc, jr_018_5ae6

    ldh [$ffe0], a
    nop
    rlca
    nop
    jr jr_018_5b1c

    daa
    rra
    cpl

jr_018_5b18:
    rra
    cpl
    rra
    ld l, l

jr_018_5b1c:
    inc de
    or a
    ld l, b
    db $dd
    ld h, d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, jr_018_5bac

    add b
    nop
    ld [$1808], sp
    ld [$1018], sp
    jr c, jr_018_5b4a

    jr c, jr_018_5b4c

    ld a, b
    ld d, l
    ld a, [hl]
    ld d, h
    rst $38
    call c, $bd6b
    ld c, e
    ld l, a

jr_018_5b46:
    dec de
    ld d, a
    rrca
    inc c

jr_018_5b4a:
    inc bc
    rra

jr_018_5b4c:
    inc bc
    ld h, $19
    ld a, l
    add a
    and h
    ld e, b
    ld d, h
    add sp, -$11
    ret nc

    ld e, [hl]
    xor h
    db $fc
    sbc b
    ret c

    jr nz, jr_018_5b46

    ret nc

    xor b
    ret nc

    ld [hl], c
    rst $38
    jp nc, $147d

    ld a, b
    ld d, b
    jr c, jr_018_5b7a

    jr c, jr_018_5ba4

    db $10
    ld [$1010], sp
    nop
    ld e, a

jr_018_5b72:
    db $ec
    cp c
    ld b, a
    dec c
    ld [bc], a

jr_018_5b77:
    add hl, de
    ld c, $1e

jr_018_5b7a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $10
    or b
    ret nz

    jr z, jr_018_5b77

    db $e4
    jr jr_018_5b72

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, jr_018_5bad

    jr z, jr_018_5baf

    ld l, a
    db $10
    call c, $bd6b

jr_018_5ba4:
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    inc c
    inc bc

jr_018_5bab:
    rrca

jr_018_5bac:
    inc bc

jr_018_5bad:
    ld d, $09

jr_018_5baf:
    db $fd
    rlca
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, h
    and b
    rst $38
    sbc h
    call c, $e828
    ret nc

    xor b
    ret nc

    xor b
    ld d, a
    ld l, a
    db $10
    jr z, jr_018_5bd7

    jr z, @+$12

    jr z, jr_018_5bdb

    jr c, jr_018_5bdd

    jr c, jr_018_5bdf

    jr jr_018_5bd1

jr_018_5bd1:
    rra
    db $ec
    ld sp, hl
    rlca
    dec c
    ld [bc], a

jr_018_5bd7:
    add hl, de
    ld c, $1e
    nop

jr_018_5bdb:
    nop
    nop

jr_018_5bdd:
    nop
    nop

jr_018_5bdf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $6bdc
    cp l
    ld c, e
    rst $28
    dec de
    ld d, a
    rrca
    inc c
    inc bc
    adc e
    dec b
    sbc a
    nop
    rst $20
    ld a, [de]
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, b
    and b
    db $fc
    jr jr_018_5bab

    db $ec
    db $fc
    nop
    db $ec
    ret c

    ld b, $01
    ld a, [bc]
    dec b
    ld b, $01
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop

jr_018_5c20:
    nop
    sbc a
    ld h, e
    xor $01
    ld b, [hl]
    add e
    ld b, [hl]
    add c
    ld c, h
    add a
    rst $08
    add b
    ret nz

    add b
    ret nz

    nop
    call nc, $f878
    nop
    ret z

    ldh a, [rBCPS]
    or b
    db $e4
    jr jr_018_5c20

    ld a, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rlca
    nop
    nop
    ld a, $00
    ld e, l
    ld a, $7f
    ld a, $63
    ld a, $41
    ld a, $c1
    ld a, $c9
    or [hl]
    rla
    rrca
    cpl
    rra
    ld l, $1f
    ld l, $1f
    ld l, a
    rra
    sub a
    ld l, a
    and e
    ld a, a
    pop af
    ld a, [hl]
    db $dd
    xor d
    ld c, c
    or [hl]
    ld b, c
    cp [hl]
    ld a, $c0
    dec d
    ld [$eaf7], a
    sub a
    add sp, -$03
    nop
    cp [hl]
    ld a, a
    ld h, c
    ld e, $7e
    ld bc, $7cff
    ld a, a
    inc bc
    ld a, [hl+]
    dec d
    jr z, @+$19

    ld a, [de]
    dec c
    ld a, $c4
    call z, $be30
    call nz, Call_000_2cfe
    db $fc
    ret nz

    ld c, h
    cp b
    cp b
    ld [hl], b
    ldh a, [$ff80]
    rra
    ld [bc], a
    scf
    rrca
    jr c, jr_018_5cae

    cpl
    db $10
    ld [hl], d
    inc l
    inc [hl]
    jr jr_018_5cc6

jr_018_5cae:
    nop
    nop
    nop
    sub b
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    xor b
    ld [hl], b
    call nc, Call_018_7868
    jr nc, jr_018_5cf0

    nop
    nop
    ld a, [hl+]
    jr z, @+$2a

    ld a, [bc]

jr_018_5cc6:
    ld a, [de]
    ld [$181c], sp
    inc e
    inc e
    ld a, $1e
    ld a, $2c
    ld a, $07
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp [hl]
    ld a, a
    xor $3e
    cp d
    adc $0e
    or $0a
    or $0a
    or $de
    ldh [$fffd], a
    ld b, $1b

jr_018_5cf0:
    and $5c
    ccf
    ccf
    nop
    ld a, l
    inc bc
    rst $38
    ld a, [hl]
    ld a, a
    rra
    ccf
    ld bc, $152a
    jr z, jr_018_5d18

    db $fd
    ld [bc], a
    ld a, a
    add sp, -$29
    ld [$649a], a
    or $88

jr_018_5d0b:
    cp $e4
    ld l, [hl]
    sbc h
    xor $32
    ld a, [de]
    dec c
    dec l
    ld [de], a
    rla
    rrca
    ccf

jr_018_5d18:
    db $10
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    sbc $ae
    adc h
    halt
    jr jr_018_5d0b

    db $f4
    jr jr_018_5d94

    inc [hl]
    inc [hl]
    jr jr_018_5d46

    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fffd], a
    ld b, $1b
    and $5c
    ccf
    ccf
    nop
    inc hl

jr_018_5d46:
    rra
    ld [hl], b
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rra
    scf
    rrca
    jr z, jr_018_5d68

    db $fd
    ld [bc], a
    ld a, a
    add sp, -$2b
    add sp, $38
    ret nz

    cp $20
    db $fd
    jp nz, $b45b

    xor l
    ld a, d
    reti


    and [hl]
    adc e
    halt
    rra
    and $f5

jr_018_5d68:
    ld a, [de]
    ld l, d
    inc [hl]
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    pop hl
    ld a, [hl]
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffce]
    ldh a, [$ff9d]
    and $fb
    ld b, $bf
    ld a, a
    ld e, l

jr_018_5d94:
    ld a, $3e
    ld bc, $1f27
    ld [hl], b
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rra
    cpl
    db $10
    dec a
    jp nz, $28df

    push de
    add sp, -$48
    ret nz

    ldh a, [rNR41]
    db $fc
    ret nz

    ld [$5634], a
    cp b
    dec a
    ld b, $26
    add hl, de
    scf

Call_018_5db6:
    rrca
    ld [hl], a
    jr z, jr_018_5df4

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, d
    call nz, $2cd6
    ld a, [hl-]
    call z, $70ac
    call nc, Call_018_7868
    jr nc, jr_018_5dfe

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld h, e
    inc e
    ld e, l
    ld a, $be
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    db $dd
    ld a, $63
    inc e
    cp a
    ld h, b
    push de
    ld l, d
    ldh [rP1], a
    sbc b

jr_018_5df4:
    ld h, b
    call nz, $e478
    ld a, b
    or [hl]
    ld a, b
    ld b, l
    cp d
    db $fd

jr_018_5dfe:
    ld [bc], a
    db $db
    or h
    db $dd
    ld h, d
    xor a
    ld e, e

jr_018_5e05:
    ld l, a
    dec de
    ld e, l
    inc hl
    ld e, a
    inc l
    inc a
    rrca
    ld e, $01
    add hl, bc
    ld b, $d6
    cp b
    or $fc
    db $ec
    ld [hl], b
    cp $4c
    rst $28
    ld [hl], $ff
    ldh a, [c]
    ld a, [hl+]
    ldh a, [$fff8]
    nop
    rrca
    ld [bc], a
    dec bc
    dec b
    dec c
    rlca
    rrca
    ld b, $1b
    inc c
    add hl, sp
    ld b, $3b
    inc e
    inc e
    nop
    ld a, b
    and b
    jr z, jr_018_5e05

    adc b
    ldh a, [$ffc8]
    jr nc, jr_018_5eae

    jr @+$70

    jr nc, jr_018_5eb0

    inc e
    inc e
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [$0208], sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    dec hl
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$ff80], a
    ld l, $0b
    ld e, d
    cpl
    ld a, d
    cpl
    ld l, d
    ccf
    ld e, b
    ccf
    jr z, jr_018_5e8c

    ld a, [de]
    rrca
    ld a, [de]
    rrca
    ret c

    ldh [$ff86], a
    ld hl, sp-$7b
    ld a, [$fac5]
    pop af
    cp $85
    ld a, [$b4ca]
    ld a, [$1a84]
    rrca
    jr jr_018_5e94

    ld a, [de]
    dec c
    jr jr_018_5e98

    dec e
    ld a, [bc]
    dec e

jr_018_5e8c:
    ld a, [bc]
    dec e
    ld a, [bc]
    ccf
    ld a, [bc]
    rst $28
    or h
    rst $38

jr_018_5e94:
    or d
    xor $b4
    sub h

jr_018_5e98:
    add sp, -$14
    sbc b
    call nc, $c8b8
    or b
    ld hl, sp-$80
    ccf
    ld a, [bc]
    rra
    ld a, [bc]
    dec e
    ld a, [bc]
    ld a, [de]
    dec c
    jr jr_018_5eba

    jr jr_018_5ebc

    inc e

jr_018_5eae:
    rrca
    rrca

jr_018_5eb0:
    nop
    ld [hl], h
    sbc b
    ld l, [hl]
    or b
    ld [hl], d
    sbc h
    ld e, h
    add b
    ld b, b

jr_018_5eba:
    add b
    ld b, b

jr_018_5ebc:
    add b
    ld b, b
    add b
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
    inc bc
    nop
    dec c
    inc bc
    inc de
    rrca
    ld d, a
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff86], a
    ld hl, sp-$7b
    ld a, [$0f57]
    or e
    ld c, a
    bit 6, h
    or h
    ld a, e
    ld h, a
    jr jr_018_5f05

    ld b, $0f
    ld b, $0b
    ld b, $c5
    ld a, [$fef1]
    add l
    ld a, d
    ld c, d
    or h
    ld a, [$4e04]
    or h
    cp $b0
    rst $28
    or [hl]
    dec d
    dec bc
    dec de
    inc c

jr_018_5f05:
    rrca
    nop
    jr jr_018_5f18

    jr c, jr_018_5f1a

    jr c, jr_018_5f1c

    ld a, [de]
    dec c
    rra
    ld a, [bc]
    sub $e8
    db $ec
    jr @-$6a

    ld a, b
    ld c, b

jr_018_5f18:
    or b
    ld a, b

jr_018_5f1a:
    add b
    ld [hl], h

jr_018_5f1c:
    sbc b
    ld l, [hl]
    or b
    ld [hl], d
    sbc h
    ld a, [de]
    dec c
    jr jr_018_5f34

    jr jr_018_5f56

    inc a
    cpl
    ld a, a
    ldh a, [$ff1f]
    ccf
    scf
    ccf
    ld b, d
    ld h, a
    ld e, h
    add b
    ld b, b

jr_018_5f34:
    add b
    ld b, b
    and b
    ld h, b
    and b
    ldh a, [$ff78]
    ret nz

    ldh [$ff60], a
    ldh [rNR10], a
    jr nc, jr_018_5f42

jr_018_5f42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    inc de
    rrca
    rla
    rrca
    rla
    rrca
    inc de
    rrca
    dec hl

jr_018_5f56:
    inc d
    ld d, h
    dec sp
    ld h, a
    jr c, jr_018_5fc5

    ld [hl], $5f
    ld h, $2b
    ld b, $c5
    ld a, [$fef1]
    add l
    ld a, d
    ld c, d
    or h
    ld a, [$4e04]
    or h
    cp $b0
    xor $b4
    dec d
    dec bc
    dec de
    inc c
    inc de
    inc c
    rrca
    nop
    jr jr_018_5f8a

    jr c, jr_018_5f8c

    jr c, jr_018_5f8e

    ld a, [de]
    dec c
    rst $10
    ld [$18ef], a
    ld d, h
    cp b
    adc b
    ld [hl], b
    ld [hl], b

jr_018_5f8a:
    add b
    ld e, b

jr_018_5f8c:
    and b
    ld [hl], h

jr_018_5f8e:
    sbc b
    ld l, [hl]
    or b
    rra
    ld a, [bc]
    ld a, [de]
    dec c
    jr jr_018_5fa6

    jr jr_018_5fa8

    inc e
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    sbc h
    ld e, h
    add b
    ld b, b

jr_018_5fa6:
    add b
    ld b, b

jr_018_5fa8:
    add b
    ld b, b
    add b
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

jr_018_5fc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_5ff7:
    nop
    nop

jr_018_5ff9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_018_600b

jr_018_600b:
    inc a
    jr jr_018_6070

    inc a
    db $e3
    ld a, h
    inc bc
    nop
    inc b
    inc bc
    dec bc
    rlca
    ccf
    inc bc
    ld c, e
    dec [hl]
    xor [hl]
    ld [hl], c
    db $d3
    ld l, h
    cp a
    ld c, b
    or a
    ld a, d
    ld e, d
    cp l
    xor h
    rst $18
    or $cf
    res 6, a
    sbc h
    ld h, e
    dec hl
    call nc, $9f66
    add b
    nop

jr_018_6033:
    ld b, b
    add b

jr_018_6035:
    jr nz, jr_018_5ff7

    jr nz, jr_018_5ff9

jr_018_6039:
    ld b, b
    add b

jr_018_603b:
    add b
    nop
    nop
    nop
    add b
    nop
    rst $38
    ld [hl], $ff
    ld b, $7d
    ld [hl-], a
    ld c, l
    ld [hl-], a
    ld a, $03
    rla
    dec bc
    dec d
    dec bc
    ld e, $09
    or c
    ld c, [hl]
    adc $b0
    ld d, b
    and b
    and b
    ld b, b
    ldh a, [rNR41]
    ld a, b
    or b
    ld hl, sp-$80
    and b
    ld b, b
    add hl, de
    ld b, $12
    rrca
    scf
    dec de
    inc sp
    inc c
    ld h, a
    add hl, sp
    ccf
    nop
    rlca
    inc bc
    rlca

jr_018_6070:
    nop
    jr nz, jr_018_6033

    jr nz, jr_018_6035

    ld b, b
    add b
    jr nz, jr_018_6039

    jr nz, jr_018_603b

    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    rlca
    nop
    jr jr_018_608c

    daa
    rra
    cpl
    rra
    cpl
    rra
    ld l, l

jr_018_608c:
    inc de
    or a
    ld l, b
    db $dd
    ld h, d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, jr_018_611c

    add b
    ld [$0a0a], sp
    ld e, d
    ld [bc], a
    ld e, $14
    ld a, $14
    cp [hl]
    ld [hl], $bf
    cp [hl]
    rst $38
    cp a
    rst $38
    db $fc
    ld c, e
    cp l
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    inc c
    inc bc
    rra

jr_018_60bc:
    ld b, e
    ld l, [hl]
    reti


    db $dd
    rst $20
    and h
    ld e, b
    ld d, h
    add sp, -$11
    ret nc

    ld e, [hl]
    xor h
    db $fc
    sbc b
    ld hl, sp+$00
    call nc, $94e8
    add sp, -$41
    rst $38
    scf
    rst $38
    or a
    ld a, a
    ld a, $7f
    ld h, l
    ld a, $1a
    inc h
    inc h
    nop
    nop
    nop
    cp a
    ld c, h
    inc e
    ld b, e
    ld b, $01
    inc c
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    jr jr_018_60bc

    ldh a, [$ff94]
    ld a, b
    ldh a, [c]
    inc c
    ld [hl], h
    jr c, jr_018_6174

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    jr nc, jr_018_6128

    jr nc, jr_018_612a

    jr nc, @+$21

    ld [hl], b
    rra
    or b
    ld e, a
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    rst $10
    rrca
    adc h
    inc bc
    rst $38

jr_018_611c:
    dec bc
    sbc [hl]
    ld [hl], l
    db $fd
    rrca
    and h
    ld e, b
    ld d, h
    add sp, -$14
    ret nc

    ld e, [hl]

jr_018_6128:
    xor b
    rst $38

jr_018_612a:
    sbc [hl]
    cp $0c
    call c, $94e0
    add sp, $70
    rra
    jr nc, jr_018_6154

    jr nc, jr_018_6196

    ld a, b
    ld e, a
    rst $38
    ldh [$ff3f], a
    ld a, a
    ld l, [hl]
    ld a, a
    add h
    adc $8f
    nop
    add h
    ld b, e
    add $41
    db $ec
    rst $30
    adc a
    ret nz

    ret nz

    ret nz

    jr nz, jr_018_61af

    nop
    nop
    nop
    nop
    nop

jr_018_6154:
    nop
    rrca
    nop
    jr jr_018_6168

    jr jr_018_616a

    jr jr_018_616c

    jr c, jr_018_616e

    ld e, b
    cpl
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    ld d, a

jr_018_6168:
    adc a
    ld c, h

jr_018_616a:
    add e
    ld b, a

jr_018_616c:
    add c
    ld a, a

jr_018_616e:
    add h
    ld c, [hl]
    cp e
    and h
    ld e, b
    ld d, h

jr_018_6174:
    add sp, -$18

jr_018_6176:
    ret nc

    ld e, b
    and b
    db $fc
    jr @+$01

    adc h
    cp h
    ld h, b
    cp b
    ldh [$ff38], a
    rrca
    jr jr_018_6194

    jr jr_018_6196

    inc e
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_6190:
    nop
    ld a, a
    add [hl]
    ld b, a

jr_018_6194:
    add b
    ld b, [hl]

jr_018_6196:
    add e
    ld b, [hl]
    add c
    adc h
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ret nc

    ret z

    jr nc, jr_018_6176

    ldh [$ffc8], a
    ld [hl], b
    db $e4
    jr jr_018_6190

    ld a, b
    ld hl, sp+$00

jr_018_61af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    ccf
    rrca
    ld d, a
    cpl
    xor e
    ld [hl], a
    ldh [$ff7f], a
    ldh a, [c]
    inc a
    pop af
    ld a, [hl]
    ld sp, hl
    ld h, [hl]
    push af
    ld e, d
    push hl
    ld e, d
    ld sp, hl
    ld h, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    cp [hl]
    ld a, a
    ld b, c
    ld a, $3e
    ld bc, $1f60
    rst $38
    ld a, b
    ld a, a
    rrca
    jr z, jr_018_6208

    pop af
    ld a, [hl]
    db $fd
    ld b, d
    di
    inc a
    pop bc
    ld a, [hl]
    jp nz, $fc3c

    ret nz

    db $ec
    sub b
    or h
    ld l, b
    ld a, [de]
    dec c
    dec l
    ld [de], a
    rla
    rrca
    scf

jr_018_6208:
    jr jr_018_627c

    inc l
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    nop
    ld hl, sp-$50
    or b
    ld b, b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call nc, $e868
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    jr nz, jr_018_622e

    adc b
    jr nz, @+$24

    nop
    xor b
    adc b
    adc d
    xor d

jr_018_622e:
    xor d
    xor d
    ld a, [hl+]
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    sub a
    ld l, a
    pop hl
    ld a, [hl]
    cp a
    ld a, a
    db $dd
    ld a, $b5
    rst $08
    dec c
    or $0f
    db $f4
    dec c
    ldh a, [c]
    db $db
    and $fd
    ld c, $23
    db $dd
    rst $18
    ld hl, $017e
    dec a
    inc bc
    rst $38
    inc e
    ld a, a
    ccf
    ccf
    ld bc, $2c53
    ld c, b
    scf
    ld a, [hl-]
    dec c
    db $dd
    db $eb
    sub h
    db $eb
    inc a
    rst $00
    push af
    ld a, [hl+]
    ei
    call nz, Call_000_2cdb
    cp l
    ld [hl], d
    call Call_018_5db6
    ld [hl+], a
    daa
    rra
    dec a
    inc de
    ld [hl], e
    inc l
    ld [hl-], a
    inc e
    inc e

jr_018_627c:
    nop
    nop
    nop
    nop
    nop
    or l
    ld c, [hl]
    ld de, $9eee
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    ret c

    ld h, b
    ld h, h
    jr c, jr_018_62c8

    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    xor a
    ld e, a
    db $d3
    ld l, h
    cp [hl]
    ld a, a
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffd9]
    ldh [$fff7], a
    ld [$de2d], sp
    ld e, l
    ld a, $3e
    ld bc, $1fef
    ld hl, sp+$47
    rst $38
    ld a, b
    ld a, a
    rra
    ld d, c
    ld l, $35
    dec de
    ldh a, [c]
    inc c
    inc a
    ret nc

    xor h
    ret nc

    ld [hl], d

jr_018_62c8:
    adc h
    ldh [c], a
    ld e, h
    ldh a, [c]
    adc h
    ld a, [$fa74]
    inc [hl]
    dec sp
    inc b
    ld l, $1f
    ld d, a
    cpl
    rst $28
    ld d, b
    ld h, l
    jr c, jr_018_6315

    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    call z, $dd22
    inc hl
    db $dd
    ld a, a
    add e
    sbc $6f
    or e
    rst $00
    ret z

    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    sub a
    ld l, a
    pop bc
    ld a, [hl]
    cp [hl]
    ld a, a
    ret nz

    nop
    or b
    ret nz

jr_018_6315:
    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fff5], a
    ld c, $7b
    add [hl]
    ld e, l
    ld a, $7e
    ld bc, $3fcf
    ldh a, [rVBK]
    ld a, a
    jr nc, @+$41

    rrca
    jr @+$09

    ld a, [de]
    dec c
    sbc a
    ld l, d
    push de
    ld [$c4bb], a
    ldh a, [c]
    inc l
    ldh a, [c]
    call z, $b4fa
    ld [$f234], a
    adc h
    dec e
    ld [bc], a
    dec de
    rlca
    scf
    jr jr_018_63ba

    inc l
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    jp nc, $922c

    db $ec
    cp h
    ld b, b
    add sp, $30
    ret c

    ld h, b
    db $e4
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$081c], sp
    ld a, [hl+]
    inc e
    ld a, $1c
    ccf
    inc d
    dec hl
    dec e
    dec hl
    dec e
    dec hl
    dec e
    rra
    ld [$0b7c], sp
    or a
    ld l, b
    db $dd
    ld h, d
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp-$1c
    ld hl, sp-$4a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld e, e
    or h
    db $fd
    ld e, d
    cp a
    ld d, l
    ld a, a
    inc c
    dec l
    inc de
    ld [hl], $19
    dec d
    ld a, [bc]
    dec bc
    inc b
    ld c, $05
    sub $b8
    or $fc
    db $ec
    ld [hl], b
    ld a, [hl]
    adc h
    rst $38
    or $af
    ld [hl], d
    ld a, [$e800]
    ld d, b
    inc c
    inc bc
    add hl, bc
    rlca
    dec c
    rlca
    dec c
    ld [bc], a
    dec de

jr_018_63ba:
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    ret z

    jr nc, jr_018_63cc

    ldh a, [$ffa8]
    ldh a, [$fff8]
    jr nz, jr_018_643e

    jr @+$70

jr_018_63cc:
    jr nc, jr_018_6400

    inc e
    inc e
    nop
    nop
    ld bc, $0102
    inc l
    inc bc
    ld [hl-], a
    rrca
    ld d, l
    cpl
    ld [hl], l
    cpl
    ld l, c
    scf
    ld d, l
    dec sp
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff86], a
    ld hl, sp+$05
    ld a, [$fa45]
    ld [hl], c
    cp $65
    ld a, [$1729]
    dec de
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld a, [bc]

jr_018_6400:
    rlca
    ld a, [bc]
    db $f4
    cp d
    call nz, $f4af
    cp a
    ldh a, [c]
    xor a
    or $9e
    ldh [$ffac], a
    ret c

    sbc h
    ld hl, sp+$12
    rrca
    jr c, jr_018_641c

    ld sp, $191f
    rlca
    inc bc
    rlca
    inc bc

jr_018_641c:
    rlca
    inc bc
    rlca
    ld bc, $ac07
    ldh a, [$ff3c]
    ret nz

    inc [hl]
    ret c

    inc l
    ldh a, [$ffba]
    call c, $c09e
    add b
    ret nz

    nop
    ret nz

    inc b
    rra
    ld a, [bc]
    dec d
    ld c, $1b
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04

jr_018_643e:
    ld c, $00
    inc b
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    scf
    rrca
    ld e, e
    scf
    and a
    ld a, b
    db $f4
    dec bc
    ldh [rP1], a
    ret c

    ldh [$ff86], a
    ld hl, sp-$7b
    ld a, [$fac5]
    pop af
    cp $85
    ld a, d
    ld c, d
    or h
    adc a
    nop
    dec bc
    ld b, $0f
    ld b, $0b
    ld b, $0d
    inc bc
    rrca
    inc b
    dec c
    ld b, $0b
    dec b
    ld a, [$ee04]
    or h
    db $fc
    or b
    rst $28
    or b
    rst $18
    and $ee
    jr @-$22

    jr c, @-$52

    ldh a, [rNR21]
    dec bc
    dec sp
    ld b, $36
    add hl, de
    dec e
    inc bc
    rlca
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207
    db $fc
    add b
    or h
    ld e, b
    db $ec
    jr nc, jr_018_6512

    sbc h
    sbc $80
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    rra
    ld c, $1f
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    rla
    rrca
    dec hl
    inc d
    ld e, h
    inc sp
    ld h, a
    jr c, @+$6d

    ld [hl], $5f
    ld h, $2b
    ld b, $0d
    inc bc
    rrca
    inc b
    dec c
    ld b, $0b
    dec b
    ld a, [$ee04]
    or h
    db $fc
    or b
    db $ec
    or b
    sbc $e4
    rst $28
    ld a, [de]
    sbc $38
    xor h
    ldh a, [$ff1f]
    ld [bc], a
    ld [de], a
    dec c
    dec a
    inc bc
    scf
    ld a, [de]
    ld e, $01
    rlca
    ld bc, $0207
    rlca
    inc bc
    db $fc
    add b
    db $f4
    jr jr_018_6562

    or b
    ldh a, [c]
    sbc h
    sbc $00
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    rra
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_6512:
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0307
    rrca
    rlca
    ld d, $0f
    inc e
    rrca
    nop
    nop
    ld a, h
    nop
    cp h
    ld a, b
    db $f4
    ld hl, sp-$38
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [$ff0e]
    db $f4
    inc l
    rra
    jr c, @+$21

    jr c, jr_018_6556

    scf
    jr @+$41

    ld b, $5a
    dec h
    or h
    ld l, e
    reti


    ld h, [hl]
    ld a, [bc]
    db $f4
    inc b
    ld hl, sp+$0e
    ldh a, [$ff92]
    ld l, h
    ld h, h
    sbc b
    ld l, b
    sub b
    cp b
    ld b, b
    adc $30
    cp [hl]

jr_018_6552:
    ld c, l
    ld a, [$b90d]

jr_018_6556:
    ld d, $5f
    ld a, [hl-]
    ld a, [hl]
    inc bc
    dec d
    dec bc
    dec de
    dec b
    rra
    inc b
    ld l, l

jr_018_6562:
    sbc [hl]
    pop de

jr_018_6564:
    ld l, $ee
    ld d, b
    xor b
    ld d, b
    ret nc

    jr nz, jr_018_6564

    sub b
    ld a, h
    sbc b
    sbc h
    ld h, b
    ld d, $0b
    dec bc
    rlca
    inc c
    inc bc
    dec c
    ld b, $04
    inc bc
    dec c
    ld b, $06
    nop
    nop
    nop
    inc d
    ldh [rNR10], a
    ldh [$ff88], a
    ld [hl], b
    ret c

    jr nz, jr_018_6552

    ld [hl], b
    db $e4
    jr jr_018_65f2

    jr c, jr_018_660c

    nop
    rlca
    nop
    jr jr_018_65ac

    daa
    ccf
    cpl
    ld a, a
    ld l, a
    ld e, a
    ld a, l
    jp $e8d7


    cp l
    ldh [c], a
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1

jr_018_65ac:
    cp $c6
    jr c, jr_018_662c

    add b
    ld bc, $0909
    dec de
    ld de, $131b

jr_018_65b8:
    ccf
    inc sp
    ccf
    inc sp
    ccf
    scf
    ld a, a
    ld [hl], a
    ld a, a
    call c, $fdeb
    res 5, a
    db $db
    rst $10
    adc a
    adc h
    add e
    adc a
    and c
    xor a
    or [hl]
    cp e
    db $fd
    and l
    ld e, b
    ld d, a
    add sp, -$11
    sub $5e
    xor h
    db $fc
    jr jr_018_65b8

    and b

jr_018_65dd:
    xor b
    ld [hl], b
    ld a, b
    ldh [$ff7f], a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    rst $10

jr_018_65f2:
    ei
    ret z

    rst $30
    push hl
    ld a, [$f7ec]
    rst $30
    ld hl, sp-$08
    db $fc
    ldh [$fff8], a
    add b
    ldh [$ffe8], a
    db $10
    ld c, h
    ldh a, [$ffb2]
    ld e, h
    ld sp, hl
    ld b, $1a
    inc c
    inc e

jr_018_660c:
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_661c

    daa
    rra
    cpl
    rra
    cpl
    rra
    dec a

jr_018_661c:
    inc bc
    ld d, a
    jr z, jr_018_65dd

    ld h, d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1

jr_018_662c:
    cp $c6
    jr c, jr_018_66ac

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    db $10
    rrca
    db $10

jr_018_663c:
    rrca
    rrca
    nop
    ld [$dc07], sp
    ld l, e
    cp l
    ld c, e
    rst $28
    dec de
    rst $10
    rrca
    inc l
    jp $c12f


    ei
    ld b, $43
    cp l
    and h
    ld e, b
    ld d, h
    add sp, -$13
    ret nc

    ld e, a
    xor h
    rst $38
    ld e, $de
    xor b
    xor b
    ld [hl], b
    ld a, b
    ldh [$ff08], a
    rlca
    db $10
    rrca
    db $10
    rrca
    jr nz, jr_018_6688

    ret c

    ccf
    cp a
    ld a, a
    ld l, a
    rra
    rra
    nop
    ld a, a
    add e
    jr z, jr_018_663c

    dec h
    jp nz, $e71c

    ld l, a
    ldh a, [$fff4]
    ld hl, sp-$28
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_018_6688:
    nop
    ld [$0807], sp
    rlca
    rlca
    nop
    inc b
    inc bc
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    rst $30
    rrca
    inc e
    db $e3
    rra
    ldh [$fffd], a
    inc bc
    ld hl, $a4de
    ld e, b
    ld d, h
    add sp, -$14
    ret nc

    ld e, b
    and b
    db $fc

jr_018_66aa:
    jr jr_018_66aa

jr_018_66ac:
    call z, Call_000_30ee
    cp e
    ldh a, [rDIV]
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    ld l, h
    rra
    ld e, a
    ccf
    scf
    rrca
    rrca
    nop
    ccf
    pop bc
    inc d
    db $e3
    dec e
    rst $20
    dec c
    ldh a, [c]
    ld [hl], $fb
    ei

jr_018_66cc:
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    ld hl, sp-$80
    ld [$a4f0], sp
    ret c

    db $e4
    jr c, jr_018_66cc

    inc c
    ld [hl-], a
    inc e
    inc a
    nop
    nop

jr_018_66e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld a, [bc]
    inc b
    ld c, $04
    ld c, $04
    push af
    ld c, $0d
    inc bc
    rla
    rrca
    rra
    rrca
    cpl
    rra
    cpl
    rra
    ld h, a
    rra
    sub e
    ld l, a
    ldh [$ff7f], a
    db $fd
    cp b
    rst $38
    cp b
    ld a, a
    cp d
    ld a, l
    cp d
    ld d, [hl]
    xor b
    db $fc
    sub b
    db $ec
    sub b
    ld a, h
    xor b
    pop af
    ld a, [hl]
    cp [hl]
    ld a, a
    ld e, l
    ld a, $7e
    ld bc, $0f33
    ccf
    nop
    rst $38
    ccf
    jr z, jr_018_6738

    call nc, Call_018_6c38
    sub b
    call c, $9a28
    db $e4
    ld [$fc14], a
    ret nc

    ret c

    jr nc, jr_018_66e0

    ld h, b
    ld a, [de]
    dec c
    dec l
    ld [de], a
    scf
    rrca
    daa

jr_018_6738:
    jr jr_018_67ac

    inc l
    ld a, [hl-]
    inc e
    inc e
    nop
    nop
    nop
    ldh a, [$ff80]
    sub b
    ld h, b
    db $10
    ldh [$ffb0], a
    ld b, b
    adc b
    ld [hl], b
    call nc, $e868
    ld [hl], b
    ld [hl], b
    nop
    nop
    stop
    db $10
    db $10
    db $10
    db $10
    jr c, jr_018_676a

    jr c, jr_018_6794

    jr c, jr_018_6796

    jr c, jr_018_6798

    ld a, h
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ccf

jr_018_676a:
    rra
    ld l, a
    rra
    sub c
    ld l, [hl]
    cp a
    ld a, a
    jr c, jr_018_67ef

    db $fc
    inc a
    inc a
    call z, $f40d
    rrca
    db $f4
    rst $08
    ldh a, [c]
    ei
    ld b, $3d
    add $81

jr_018_6782:
    ld a, [hl]
    ld a, [hl]
    ld bc, $0779
    cp $79
    rst $38
    ld e, $3f
    rlca
    add hl, hl
    rla
    ld a, [hl-]
    dec c
    jp z, $f434

jr_018_6794:
    add sp, -$24

jr_018_6796:
    add sp, $1c

jr_018_6798:
    ldh [$ff3c], a
    ret nz

    db $f4
    jr z, @-$0a

    ret z

    cp b
    ld [hl], h
    ld l, $11
    dec l
    ld e, $36
    rrca
    ld e, a
    jr nz, @+$24

    inc e
    inc e

jr_018_67ac:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$4c
    sub b
    ld l, h
    db $10
    add sp, -$30
    jr nz, jr_018_6782

    ld [hl], b
    ld hl, sp+$60
    db $e4
    jr @+$7e

    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, a
    rra
    sub a
    ld l, a
    ldh [$ff7f], a
    cp a
    ld a, a
    ld a, a
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff88], a
    ldh a, [$ffe8]
    ldh a, [$ffee]
    db $10
    dec e
    and $eb
    ld d, $41
    ccf
    ld b, a
    ccf
    inc hl
    rra
    cp $01
    rst $38
    ld a, [hl]
    ld a, a
    rrca
    jr z, jr_018_6806

jr_018_67ef:
    ld a, [hl-]
    dec c
    db $ed
    ldh a, [c]
    rst $18
    add sp, -$6c
    add sp, $3c
    ret nz

    ldh a, [rNR41]
    add sp, -$30
    ld a, b
    or b
    and h
    ld e, b
    call c, $94a0
    ld l, b
    ld [hl], h

jr_018_6806:
    adc b
    ret c

    ld h, b
    add sp, $70
    add sp, $10
    db $f4
    ld [$007c], sp
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ffd8]
    ldh [$fffc], a
    nop
    cp d
    call nz, Call_018_7e9d
    ld a, [hl]
    ld bc, $3f4f
    ld b, a

Call_018_6828:
    ccf
    cpl
    db $10
    ld a, a
    rrca
    rst $38
    ld a, a
    ld d, c
    ld l, $cd
    ld [hl], $eb
    or $dd
    ld [$e817], a
    add hl, sp
    ret nz

    ldh a, [rNR41]
    ldh a, [$ffc0]
    ld l, h
    or b
    dec [hl]
    dec de
    dec sp
    inc b
    ld l, $1f
    scf
    ld [$2c72], sp
    ld a, [hl-]
    inc e
    inc e
    nop
    nop
    nop
    or h
    ld e, b
    jr @-$1e

    db $10
    ldh [$ffb0], a
    ld b, b
    adc b
    ld [hl], b
    call nc, $e868
    ld [hl], b
    ld [hl], b

Call_018_6860:
    nop
    ld bc, $0300
    ld bc, $001f

jr_018_6867:
    ld e, $0f
    db $10
    rrca
    dec c
    rlca
    dec c
    rlca
    inc c
    rlca
    ret nz

    nop
    ld hl, $fec0
    ld bc, $fb05
    ld a, a
    add e
    ld l, a
    ret nc

    ld l, h
    db $d3
    ld a, a
    add b
    nop
    nop
    ldh [rP1], a
    jr jr_018_6867

    call nz, $e4f8
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld b, $03
    ld b, $03
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    ld e, c
    and [hl]
    dec d
    xor $35
    sbc $d7

Call_018_68a8:
    rrca
    ld a, e
    add a
    xor [hl]
    pop af
    db $db
    dec a
    ld sp, hl
    add [hl]
    jp z, $d6b4

    cp b
    sub $bc
    cp $f0
    rst $28
    halt
    or [hl]
    ld c, b

jr_018_68bd:
    xor $d4
    ret


    ld [hl], $8f
    ld [bc], a
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    ld a, e
    and [hl]
    cpl
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_018_694e

    jr jr_018_694a

    jr nc, jr_018_6918

    inc e
    inc e
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
    dec de
    rlca
    ld l, $1f
    ld a, $1f
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
    jr nc, jr_018_68bd

    ld c, $f0
    add hl, bc
    or $3f
    rra
    daa
    rra
    scf
    ld [$2758], sp
    xor a
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    rst $30
    dec c
    add hl, bc
    or $c1
    cp $0a
    db $f4
    sub h

jr_018_6918:
    ld l, b
    db $f4
    ld [$68dc], sp
    cp $60
    pop de
    ld l, [hl]
    xor e
    rla
    rra
    nop
    add hl, de
    ld c, $35
    ld a, [de]
    ld [hl], $1d
    ld h, e
    inc a
    ld e, [hl]
    ccf
    xor [hl]
    ld [hl], c
    xor l
    sub $d6
    jr nz, jr_018_6986

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    ld e, h
    and b
    db $f4
    jr c, jr_018_69b8

    add b
    rst $18
    ld h, b
    rst $38
    ld b, [hl]
    cp $4f
    sbc h

jr_018_6948:
    ld l, a
    ld c, c

jr_018_694a:
    ld [hl], $27
    jr jr_018_696d

jr_018_694e:
    nop
    nop
    nop
    jr nz, @-$3e

    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    rra
    ccf
    nop
    inc a
    rra
    ld l, [hl]
    ld sp, $6cdf
    db $fd
    ld e, [hl]

jr_018_696d:
    ld sp, hl
    ld e, [hl]
    di
    ld c, h
    add hl, bc
    or $c1
    cp $8a
    ld [hl], h
    ld [hl], h
    adc b
    inc [hl]
    ret z

    cp h
    ld c, b
    cp [hl]
    ld b, b
    or c
    ld c, [hl]
    rst $18
    ld h, b
    ld l, a
    jr nc, jr_018_69df

jr_018_6986:
    ld a, $2b
    inc d
    ld e, $01
    ld de, $360e
    jr jr_018_69c2

    inc c
    db $ed
    ld d, $56
    and b
    ret nc

    jr nz, jr_018_6948

    ld b, b
    add sp, $30
    call c, Call_018_7460
    jr c, jr_018_69d8

    nop
    ld [hl], d
    inc a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_69b5:
    ld bc, $0f00

jr_018_69b8:
    nop
    rrca
    rlca
    ld [$0607], sp
    inc bc
    ld b, $03
    nop

jr_018_69c2:
    nop
    ldh [rP1], a
    sub b
    ldh [$fffe], a
    nop
    ld [bc], a
    db $fc
    ld a, $c0
    or h
    add sp, -$4c
    add sp, $06
    inc bc
    dec bc
    dec b
    rla
    dec c
    rla

jr_018_69d8:
    ld c, $1d
    inc bc
    ld [hl], e
    inc c
    xor a
    ld [hl], b

jr_018_69df:
    db $dd
    ld l, d
    inc a
    ret nz

    jr z, jr_018_69b5

    ld [$94f0], sp
    add sp, -$12
    db $10
    cp l
    ld c, [hl]
    and c
    ld e, [hl]
    cp $00
    db $fd
    ld c, d
    xor l
    ld e, d
    ld e, a

Call_018_69f6:
    rrca
    dec bc
    ld b, $07
    nop
    rrca
    ld [bc], a
    add hl, de
    ld b, $3f
    inc d
    ld h, h
    ret c

    db $e4
    ret c

    xor b
    ld d, b
    ld [hl], b
    ret nz

    ld hl, sp-$30
    ld e, h
    add sp, $38
    ret nz

    ret nc

    jr nz, jr_018_6a3e

    inc de
    add hl, de
    rlca
    dec b
    inc bc
    dec c
    ld b, $0d
    ld [bc], a
    add hl, de
    ld c, $1f
    ld bc, $0003
    db $10
    ldh [$ff90], a
    ldh [$ffd0], a
    ldh [$ffa0], a
    ld b, b
    sub b
    ldh [$ff90], a
    ld h, b
    sub b
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_6a40

    daa
    rra
    cpl
    rra
    cpl

jr_018_6a3e:
    rra
    ld l, l

jr_018_6a40:
    inc de
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $00
    nop
    nop
    nop
    nop
    nop
    jr c, jr_018_6a59

jr_018_6a59:
    scf
    jr jr_018_6a93

    rra
    jr nc, @+$21

    ld [hl], $1f
    or a
    ld l, b
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    ld l, a
    dec de
    rst $30
    rrca
    ld hl, sp-$39
    ccf
    db $e3
    add $38
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, [hl]
    and b
    cp $1c
    sbc h
    ld l, b
    ld a, c
    ld d, $ff
    ld d, [hl]
    rst $38
    ld d, b
    xor c
    ld d, [hl]
    ld l, a
    db $10
    jr c, jr_018_6a8d

jr_018_6a8d:
    nop
    nop
    nop
    nop
    sub l
    ld l, [hl]

jr_018_6a93:
    ld e, $e7
    ccf
    ret nz

    ret


    ld b, $0c

jr_018_6a9a:
    inc bc
    add hl, de
    ld c, $1e
    nop
    nop
    nop
    ld e, b
    ldh [$ffa8], a
    ret nc

    ret z

    jr nc, jr_018_6ad8

    ret nz

    ret z

    ld [hl], b
    db $e4
    jr jr_018_6a9a

    ld [hl], b
    ldh a, [rP1]
    ld bc, $1e00
    ld bc, $1b36
    dec a
    ld d, $3a
    dec c
    ccf
    jr @+$75

    ld a, $e9
    ld a, a
    add b
    nop
    add b
    nop
    add a
    nop
    ld e, b
    add a
    and a
    ld e, a
    cpl
    rst $18
    rst $18
    cpl
    sbc l
    ld h, e
    push af
    ld e, $1c
    rrca
    rrca
    inc bc
    inc bc

jr_018_6ad8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    ld l, b
    ld e, l
    and d
    inc a
    set 5, l
    inc de
    ld e, a
    dec c
    dec d
    ld c, $1d
    inc bc
    ld b, $01
    add $38
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    sbc $20
    ld a, [hl]
    sbc h
    call c, Call_000_09e8
    ld b, $1c
    rrca
    inc e
    rrca
    add hl, bc
    ld b, $0c

jr_018_6b0a:
    inc bc
    add hl, de
    ld c, $1e
    nop
    nop
    nop
    ld e, b
    ldh [$ffe8], a

jr_018_6b14:
    db $10

jr_018_6b15:
    ret z

    ldh a, [$ff30]
    ret nz

    ret z

    ld [hl], b
    db $e4
    jr jr_018_6b0a

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_018_6b26:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    add hl, de
    ld c, $07
    nop
    dec de
    rlca
    ld l, $1f
    inc a
    rra
    ld a, h
    rra
    cp [hl]
    ld e, a
    rst $28
    ld e, a
    rst $10
    ld l, a
    rst $38
    nop
    jr c, jr_018_6b14

    dec bc
    db $f4
    dec bc
    or $0b
    or $0f
    ldh a, [$ffca]
    push af

jr_018_6b4f:
    dec e
    and $e0
    nop
    jr nz, jr_018_6b15

    ldh [rP1], a
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    add b
    nop
    pop hl
    ld a, [hl]
    cp [hl]
    ld a, a
    ld e, c
    ld a, $7e
    ld bc, $78ff
    ld a, a
    rlca
    add hl, hl
    ld d, $54
    dec sp
    ei
    ld b, $3d
    jp z, Jump_000_28d7

    cp e
    call nz, Call_000_2cf2
    db $ec
    ret c

    jr c, jr_018_6b4f

    ld c, b
    or b
    db $fd
    ld h, [hl]
    sub $69
    ld [hl], e
    rrca
    inc de
    inc c
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr jr_018_6ba8

    nop
    ld [hl], b
    ret nz

    ret nc

    jr nz, jr_018_6b26

    ldh [$ff90], a
    ld h, b
    add sp, $30
    call nc, $6868
    jr nc, jr_018_6bd0

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de

jr_018_6ba8:
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffdc]
    ldh [$ffd1], a
    ld l, [hl]
    cp [hl]
    ld a, a
    sbc c
    ld a, [hl]
    ld a, [hl]
    ld bc, $3f47
    daa
    jr jr_018_6c4d

    rlca
    ld sp, hl

jr_018_6bd0:
    ld a, [hl]
    ld a, [$3d04]
    add $df
    ld a, [hl+]
    push de
    ld [$807f], a
    ld a, [$fd65]
    add d
    ld a, $cd
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_018_6be9:
    ld b, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ld b, h
    dec sp
    ld e, l
    ld h, $26
    add hl, de
    inc de

jr_018_6bf8:
    rrca
    scf
    jr jr_018_6c6e

    inc l
    inc [hl]
    jr jr_018_6c18

    nop
    ld d, [hl]
    cp l
    ld a, l
    jp nz, Jump_000_31ce

    sbc a
    ldh [$ffef], a
    jr nc, @-$2a

    ld l, b
    ld l, b
    jr nc, jr_018_6c40

    nop
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    add b

jr_018_6c18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_018_6c24:
    nop
    ret nz

    nop
    jr nc, jr_018_6be9

    ld [$0ff0], sp
    ldh a, [$ff0e]
    rst $30
    call c, Call_000_00e3
    nop
    nop
    nop
    nop
    nop
    nop

Call_018_6c38:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b

jr_018_6c40:
    add b
    ld a, [$3d05]
    add $df
    ld a, [hl+]
    push de
    ld [$817e], a
    rst $38
    ld l, h

jr_018_6c4d:
    rst $30
    adc h
    scf
    ret c

    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld e, b
    and b
    ld [hl], b
    ret nz

    ret z

    jr nc, jr_018_6bf8

    ldh [$ffe8], a
    jr nc, jr_018_6c40

    ld l, b
    ld l, b

jr_018_6c6e:
    jr nc, jr_018_6ca0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld a, e
    inc d
    ld a, l
    ld a, [hl+]
    ld a, [$fd55]
    ld a, [hl+]
    ld a, [$f555]
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    ld a, [hl+]
    ld l, e
    inc d
    ldh a, [rP1]
    adc h
    ld [hl], b
    jp nz, $f27c

    ld a, h
    reti


    ld a, $a2
    ld e, l
    cp $01
    push hl

jr_018_6ca0:
    ld e, d
    nop
    nop
    nop
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
    add b
    nop
    ld a, l
    ld [bc], a
    dec a
    ld a, [de]
    scf
    dec de
    dec hl
    rla
    ld [hl], $19
    dec de
    dec c
    add hl, bc
    ld b, $0f
    ld [bc], a
    sub $b8
    sub $bc
    db $fc
    ldh a, [$ffee]
    ld [hl], h
    or a
    ld c, d
    ld [$ced4], a
    inc [hl]
    ld a, e
    and [hl]
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    cpl
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_018_6d5c

    jr jr_018_6d58

    jr nc, jr_018_6d26

    inc e
    inc e
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
    rla
    rrca
    inc de
    inc c
    inc d
    dec bc
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    call nz, $e4f8
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    ld a, a
    nop
    xor c
    halt
    rst $10
    ld l, h
    rst $18
    ld l, c
    cp a
    ld b, d
    rst $18
    dec b
    xor a
    ld [de], a
    ccf
    dec d
    push af
    ld a, [bc]
    jp c, $f6a4

jr_018_6d26:
    ld [$44be], sp
    jp c, $afa4

    ld d, d
    db $db
    and h
    xor [hl]
    ld d, h
    ld [hl], a
    ld a, [de]
    ld a, d
    dec h
    ld a, l
    ld [hl-], a
    ld h, $19
    ld [hl], e
    inc c
    ld [hl], h
    jr c, jr_018_6d76

    nop
    nop
    nop
    ld d, [hl]
    xor h
    xor a
    ld d, d

jr_018_6d45:
    ld d, a
    xor [hl]
    or d
    ld c, h
    rst $28
    db $10
    dec e
    ld c, $0e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla

jr_018_6d58:
    rrca
    inc de
    inc c
    inc d

jr_018_6d5c:
    dec bc
    ld a, a
    nop
    xor a
    ld [hl], c
    ldh [rP1], a
    jr jr_018_6d45

    call nz, $e4f8
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    push af
    ld a, [bc]
    cp d
    ld b, h
    rst $10
    ld l, d
    rst $18
    ld h, l
    cp a

jr_018_6d76:
    ld b, d
    rst $38
    dec d
    or a
    ld a, [de]
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    ld e, $01
    sbc $a0
    xor a
    ld d, h
    rst $18
    and d
    xor [hl]
    ld d, h
    ld d, [hl]
    xor h
    xor d
    ld d, h
    ld e, h
    and b
    cp h
    ld b, b
    ccf
    jr jr_018_6dc4

    rra

jr_018_6d95:
    rla
    ld [$1c22], sp
    ld a, d
    inc b
    ld [hl], h
    jr c, jr_018_6dd6

    nop
    nop
    nop
    ld [$0e1c], a
    db $fc
    db $f4
    ld [$1c22], sp
    cpl
    db $10
    dec e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    add hl, sp
    ld c, $6e
    dec [hl]
    db $f4
    ld e, e
    ld a, e
    inc l
    cp h

jr_018_6dc4:
    ld d, e
    or e
    ld l, a
    ld d, a
    cpl
    dec a
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    call c, $c06b
    nop
    jr nc, jr_018_6d95

    adc b

jr_018_6dd6:
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp+$6e
    ldh a, [$ffcd]
    ld a, $b1
    ld c, [hl]
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    rlca
    inc bc
    add hl, bc
    ld b, $0f
    inc b
    adc $30
    ld h, h
    ret c

    db $e4
    ret c

    xor b
    ret nc

    ld a, [hl]
    add b
    rst $38
    ld c, $ae
    ret nc

    ld e, b
    ldh [$ff0c], a
    inc bc
    ld a, [bc]
    rlca
    dec b
    inc bc
    rlca
    ld [bc], a
    ld b, $01
    inc c
    rlca
    rrca
    nop
    ld bc, $d800
    ld h, b
    ld a, b
    or b
    ld l, b
    or b
    cp b
    ld b, b
    ret z

    ld [hl], b
    add sp, $30
    ret z

    ldh a, [$fff0]
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_6e2e

    daa
    rra
    cpl
    rra
    cpl
    rra
    ld l, l

jr_018_6e2e:
    inc de
    sub e
    ld l, h
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, jr_018_6e42

jr_018_6e42:
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld b, $03
    dec b
    inc bc
    ld b, $03
    cp l
    ld h, d
    call c, $bd6b
    ld c, e
    ld l, a
    sbc e
    or a
    rst $08
    cp b
    ld b, a
    xor a
    db $d3
    or a
    ld c, b

jr_018_6e61:
    ld a, h
    add b
    and h

jr_018_6e64:
    ld e, b
    ld d, h
    add sp, -$11
    ret nc

    ld e, [hl]
    xor h
    cp $50
    ret c

    and b
    jr z, jr_018_6e61

    dec b
    inc bc
    ld b, $03
    inc bc
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    or h
    rst $18
    or [hl]
    ld c, a
    xor c
    sbc $bc
    ld b, e
    ld a, c
    adc [hl]
    rst $18
    nop
    ld bc, $0000
    nop
    ld hl, sp-$20
    ld h, h
    sbc b
    db $e4
    ld hl, sp-$28
    ld h, b
    ret z

    jr nc, jr_018_6e64

    ldh a, [$fff0]
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld b, $03
    dec b
    inc bc
    ld b, $03
    dec b
    inc bc
    ld b, $03
    cp l
    ld h, d
    ld e, h
    xor e
    cp l
    res 5, a
    ld e, e
    xor a
    rst $10
    or h
    ld c, e
    or a
    db $dd
    or [hl]
    ld c, a
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$11
    ret nc

    ld e, [hl]
    xor h
    cp $50
    ret c

    and b
    ld l, b
    ldh a, [$ffeb]
    ld [hl], h
    xor [hl]
    ld d, c
    ld e, e
    ld hl, $0336
    inc bc
    nop
    ld b, $03
    rlca
    nop
    nop
    nop
    or [hl]
    ld a, b
    ld a, d
    add h
    ld [hl-], a
    db $fc
    call nz, $7238
    sbc h
    ld [hl], d
    adc h
    ldh a, [c]
    inc a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7006:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld a, [$0154]
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    db $fd
    xor d
    rst $38
    inc b
    or l
    jp z, $f50a

    add hl, bc
    or $0a
    push af
    rst $18
    ldh [$fffd], a
    ld b, $80
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
    cp [hl]
    ld a, a
    ld e, l
    ld a, $3e
    ld bc, $1fe3
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, hl
    ld d, $5c
    dec sp
    dec sp
    add $df
    ld a, [hl+]
    push de
    ld [$c0bf], a
    or $28
    db $ec
    ret c

    ld e, b
    or b
    ld c, b
    or b
    db $fd
    ld h, [hl]
    sub $69
    ld [hl], e
    rrca
    inc de
    inc c
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr jr_018_7088

    nop
    ld [hl], b
    ret nz

    ret nc

    jr nz, jr_018_7006

    ldh [$ff90], a
    ld h, b
    add sp, $30
    call nc, $6868
    jr nc, jr_018_70b0

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de

jr_018_7088:
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$ffd1], a
    ld l, [hl]
    cp [hl]
    ld a, a
    ld e, l
    ld a, $3e
    ld bc, $1f23
    ldh a, [rIF]
    rst $38
    ld h, b
    ld a, a

jr_018_70b0:
    rra
    db $fd
    ld b, $3b
    add $df
    ld a, [hl+]
    push de
    ld [$c5bb], a
    db $fd
    ld [hl+], a
    rst $38
    call z, $d42b
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    ld h, b
    add b
    and b
    ld b, b
    ld h, b
    add b
    inc h
    dec de
    dec a
    ld b, $46
    add hl, sp
    ld [hl], e
    cpl
    rst $28
    ld d, b
    ld h, h
    jr c, jr_018_7116

    nop
    nop
    nop
    ld d, l
    cp d
    ld a, c
    add $c5
    ld a, [hl-]
    sub a
    add sp, -$16
    dec d
    ld [hl], a
    jr c, jr_018_7126

    nop
    nop

jr_018_70f0:
    nop
    and b
    ld b, b
    ld h, b
    add b
    ret nz

    nop
    ld b, b
    add b
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
    ret nz

    nop
    or b
    ret nz

    ld c, $f0
    dec c
    ldh a, [c]
    ld c, $f5
    rst $18
    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_018_7116:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    pop de
    ld l, [hl]
    cp [hl]
    ld a, a
    ld e, l

jr_018_7126:
    ld a, $3e
    ld bc, $1fe3
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, hl
    ld d, $fd
    ld b, $3b
    add $df
    ld a, [hl+]
    push de

jr_018_7138:
    ld [$c5ba], a
    rst $38

jr_018_713c:
    jr nz, jr_018_713c

    call $d43b
    ret nz

    nop
    ld b, b
    add b

jr_018_7145:
    ret nz

    nop
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    inc h
    dec de
    dec e
    ld b, $36
    add hl, de
    inc hl
    rra
    ld l, a
    jr nc, @-$1a

    ld e, b
    ld [hl], h
    jr c, jr_018_7198

    nop
    ld h, [hl]
    cp b
    ld a, h
    ret nz

    ret c

    jr nc, jr_018_70f0

    ldh a, [$ffe4]
    jr jr_018_71d6

    inc [hl]
    ld [hl], h
    jr c, @+$3a

    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    cpl
    rra
    ld d, a
    jr z, jr_018_7138

    ld h, a
    ret nz

    nop
    jr nc, jr_018_7145

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    rst $08
    ld [hl], b
    rst $10
    ld l, l

jr_018_7195:
    cp a
    ld c, l
    ld d, a

jr_018_7198:
    dec c
    dec l
    inc de
    scf
    jr jr_018_71cc

    dec e
    dec de
    dec c
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    sbc $6c
    ld a, [$6604]
    ld hl, sp-$0e
    adc h
    jp nz, Jump_000_3ffc

    ld de, $0d7b
    ld [hl], d
    dec a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    call c, $acd3
    db $d3
    xor h
    xor $70
    add sp, $50
    adc b

jr_018_71cc:
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_018_7195

    inc c

jr_018_71d6:
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub a
    ld l, b
    rst $08
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, e
    ld d, a
    dec bc
    rra
    inc bc
    ccf
    dec de
    scf
    dec de
    rra
    inc bc
    rst $38
    inc bc
    ldh a, [c]
    db $fd
    ld [hl], c
    adc [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $71
    adc [hl]
    dec e
    dec bc
    inc e
    dec bc
    ld a, [hl-]
    dec d
    ld a, e
    inc c
    ld [hl], d
    inc a
    dec a
    nop
    ld bc, $0100
    nop
    pop bc
    cp $71
    adc [hl]
    jp z, $cf74

    ld [hl], b
    ret


    halt
    and $f8
    db $f4
    adc b
    db $f4
    adc b
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop

Call_018_7228:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_722f:
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_018_723e

    ld h, $1f
    cpl
    rra
    cpl
    rra
    ld l, l

jr_018_723e:
    inc de
    or a
    ld l, b
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, jr_018_722f

    ld h, d
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    sub a
    rrca
    ld a, h
    inc bc
    rst $38
    ld h, c
    xor [hl]
    ld [hl], c
    ld a, h
    add b
    and h
    ld e, b
    ld [hl], h
    add sp, -$18
    ret nc

    ld e, h
    and b
    cp $1c
    sbc h
    add sp, $68
    ldh a, [rP1]
    nop
    inc bc
    nop
    rra
    inc bc
    dec a
    ld e, $3a
    inc c
    ld a, [hl+]
    inc d
    inc e
    nop
    nop
    nop
    sub l
    rst $28
    rra
    db $ec
    adc l
    ld [hl], d

jr_018_7287:
    ld b, [hl]
    add hl, sp
    jr c, jr_018_7292

    rrca
    nop
    ld bc, $0000
    nop
    ret c

jr_018_7292:
    ldh [$ffe8], a
    db $10
    ld [$f0f0], sp
    ld b, b
    add sp, $30

jr_018_729b:
    ret z

    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0207
    rlca
    inc bc
    inc b
    inc bc
    inc c
    nop
    ld a, a
    inc c
    db $ec
    ld [hl], e
    rst $30
    adc a
    rst $10
    cpl
    sbc l
    ld h, e
    ld [hl], d
    adc l
    rst $38
    jr nz, jr_018_72c2

jr_018_72c2:
    nop
    ret nz

    nop
    jr nc, jr_018_7287

    ld [$84f0], sp
    ld hl, sp-$32
    ldh a, [$ffdd]
    xor $c1
    ld a, $1c
    rlca

jr_018_72d3:
    ld a, d
    dec e
    push hl
    ld a, b
    add sp, $30
    xor b
    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    call c, $dd6b
    ld l, e
    xor l
    ld e, e
    db $db
    daa
    rst $10
    jr c, jr_018_729b

    ld e, $15
    ld c, $0e
    ld bc, $40be
    call nz, $6438
    ret c

    jr z, @-$2e

    ldh a, [rP1]
    cp $60
    ld a, h
    cp b
    ld a, b
    add b
    ld a, [bc]
    dec b
    ld c, $03
    rlca
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0304
    rlca
    nop
    nop
    nop
    jr nc, jr_018_72d3

    ldh a, [$ffa0]
    ldh a, [$ffc0]
    adc b
    ld [hl], b
    db $e4
    jr c, jr_018_7390

    sbc b
    db $ec
    ld [hl], b
    ldh a, [rP1]
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, $1f
    ld l, a
    rra
    sub a
    ld l, a
    ldh [$ff7f], a
    ret nz

    nop
    or b
    ret nz

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$36
    db $f4
    db $fd
    ld b, $bf
    ld a, a
    ld e, [hl]
    ccf
    ccf
    nop
    daa
    rra
    ld a, a
    nop
    rst $38
    ld a, a
    ld h, h
    dec de
    dec e
    ld b, $8b
    or $7f
    adc d
    sub l
    ld l, d
    ccf
    ret nz

    ldh a, [c]
    inc l
    ei
    call c, $ba55
    ld a, c
    add $36
    add hl, de
    dec hl
    rla
    ld [hl], a
    jr z, jr_018_73a2

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld [hl], $ad
    jp nc, Jump_000_28d7

    rst $28
    ld [hl], b
    ld a, [hl]
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
    dec de
    rlca
    ld l, $1f
    ld a, a
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp a

jr_018_7390:
    ld a, a
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$06f0], sp
    ld hl, sp-$33
    ldh a, [c]
    ld a, [$0d05]
    or $5d

jr_018_73a2:
    ld a, $3e
    ld bc, $1f27
    ld hl, $3f1e
    ld bc, $3ffe
    ld a, [hl+]
    dec d
    inc h
    dec de
    ei
    ld b, $df
    ld [$cab5], a
    ei
    inc h
    pop af
    adc $5b
    cp h
    rst $30

jr_018_73be:
    jr c, jr_018_73be

    add b
    ld b, b
    add b
    ret nz

    add b
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
    rra
    inc b
    inc c
    inc bc
    rla
    rrca
    ld de, $370e
    jr jr_018_744e

    inc l
    inc [hl]
    jr jr_018_73f8

    nop
    sub b
    ld h, b
    ld [$98f0], sp
    ldh [$fff4], a
    jr jr_018_7454

    inc [hl]
    inc [hl]
    jr jr_018_7406

    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    inc c
    ldh a, [$ff0a]

jr_018_73f8:
    db $f4
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    ld h, a
    jr c, @+$6d

    ld [hl], $5f

jr_018_7406:
    ld h, $27
    ld [bc], a

jr_018_7409:
    dec bc
    dec b

jr_018_740b:
    dec c
    ld b, $05
    inc bc
    dec bc
    dec b
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    jp c, $fae4

    inc e
    sub $b8
    ld a, c
    add $19
    ld c, $1b
    inc b
    add hl, sp
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_018_7430:
    nop
    sbc h
    ld h, e
    db $eb
    rla
    ld h, a
    rra
    ld h, $1f
    db $10
    rrca
    rrca
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
    jr nz, jr_018_7409

    jr nz, jr_018_740b

    jr nz, @-$3e

    ld b, b

jr_018_744e:
    add b
    add b
    nop
    nop
    nop
    nop

jr_018_7454:
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra

Call_018_7460:
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff86], a
    ld hl, sp+$05
    ld a, [$fa05]
    rra
    rrca
    rla
    rrca

jr_018_7475:
    dec hl
    inc d
    ld e, h
    inc sp
    ld h, a
    jr c, jr_018_74e7

    ld [hl], $5f
    ld h, $2b
    ld b, $85
    ld a, [$fee1]
    add l
    ld a, d
    ld c, d
    or h
    ld a, [$ee04]
    or h
    rst $38
    or d
    rst $28
    or h
    dec c
    inc bc
    rrca
    inc b
    ld a, [bc]
    rlca
    rra
    ld bc, $1d3b
    rra
    nop
    nop
    nop
    nop
    nop
    jp nc, $fbed

    ld b, $9e
    ld l, l
    or $ad
    ld e, l
    and e
    cp c
    rlca
    inc c
    inc bc
    inc bc
    nop
    ret nz

    nop
    jr nz, jr_018_7475

    db $10
    ldh [$ffd0], a
    ldh [$ffd0], a
    ldh [$ff90], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    inc bc
    nop
    dec c
    inc bc
    inc de
    inc c
    inc d
    dec bc
    ld a, a
    nop
    xor c
    halt
    rst $10
    ld l, [hl]
    rst $10
    ld l, a
    ldh [rP1], a
    ret c

    ldh [$ffb4], a
    ld a, b
    ld c, h
    cp b
    ldh [c], a
    inc e
    ld e, l
    and d
    push af
    xor d
    rst $38
    ldh a, [$ffbf]
    ld b, a
    ld a, a
    dec de
    scf
    dec de

jr_018_74e7:
    dec l
    inc de
    daa
    jr @+$31

    add hl, de
    dec e
    ld a, [bc]
    rla
    ld a, [bc]
    or $7c
    ld a, [$ee74]
    ld [hl], b
    rst $18
    and $f6
    ld [$dcea], sp
    adc $34
    ld a, c
    and [hl]
    ld a, [bc]
    dec b
    dec c
    rlca
    rrca
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    cpl
    db $d3
    adc l
    di
    set 6, b
    reti


    jr nz, jr_018_758f

    jr jr_018_758b

    jr nc, jr_018_7550

    inc e
    inc e
    nop
    ldh [rP1], a
    sbc b
    ld h, b
    call nz, $e2f8
    db $fc
    ld h, d
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rra
    xor a
    rst $10
    ei
    rst $00
    sbc l
    ld h, e
    ld d, a
    jr c, jr_018_757b

    add hl, de
    dec d
    ld a, [bc]
    rrca

jr_018_7550:
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    or a
    ld e, a
    ld l, a
    rla
    sbc e
    rlca
    push af
    add e
    xor a
    ldh a, [$ffdb]
    dec a
    dec [hl]
    ld a, [bc]
    rrca
    ld [bc], a
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    dec de
    inc c

jr_018_757b:
    inc [hl]
    dec bc
    ld l, a
    jr nc, @-$25

    ld h, [hl]
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    ld hl, sp-$6a
    ld a, b

jr_018_758b:
    ld b, l
    cp d
    db $fd
    ld [bc], a

jr_018_758f:
    res 6, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    ld bc, $d500
    ld l, [hl]
    or a
    ld e, a
    ld e, a
    rlca
    dec bc
    rlca

jr_018_75a9:
    cp $01
    cp e
    db $fd
    push hl
    sbc d
    sbc a
    ld [bc], a
    sub $b8
    or $fc
    cp $70
    rst $28
    halt
    or [hl]
    ld c, b
    ld [$cedc], a
    inc [hl]
    ld a, c
    and [hl]
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    inc de
    inc c
    inc [hl]
    dec bc
    ld l, a
    jr nc, jr_018_75a9

    ld h, [hl]
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    res 6, h
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, a
    rlca
    dec sp
    rlca
    sbc $39
    xor e
    push af
    ld sp, hl
    add $cf
    ld [bc], a
    sub $b8
    sub $bc
    cp $f0
    rst $28
    halt
    or [hl]
    ld c, b
    ld [$cedc], a
    inc [hl]
    ld a, c
    and [hl]
    cpl
    db $d3
    adc l
    di
    db $db
    jr nz, jr_018_767e

    add hl, de
    ld l, [hl]
    ld sp, $1c33
    inc e
    nop
    nop
    nop
    ldh [rP1], a
    sbc h
    ld h, b
    jp nz, $f1fc

    cp $31
    cp $02
    db $fc
    db $fc
    nop
    nop
    nop
    rra
    nop
    ld l, $1f
    ccf
    rra
    ccf
    rra
    ld d, l
    ccf
    ld l, d
    ccf
    ld d, l
    ccf
    ld h, h
    dec sp
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    add b
    ld c, d
    dec [hl]
    ld l, d
    dec [hl]
    ld c, d
    dec [hl]
    ld c, d
    dec [hl]
    dec sp
    inc b
    ld e, d
    dec h
    xor e
    ld [hl], h
    db $db
    ld h, h
    ld h, b
    add b

jr_018_7653:
    ret c

    and b
    ld b, h
    cp b
    ld h, [hl]
    cp b
    push af
    ld a, d
    ld b, c
    cp [hl]
    db $fd
    ld [bc], a
    jp c, $ddb4

    ld h, d
    cp e
    ld c, h
    ld l, a
    dec e
    ld a, a
    inc hl
    ld d, a
    inc l
    inc a
    rrca
    ld e, $01
    dec d
    ld a, [bc]
    sub $b8
    sub $bc
    cp $f0
    rst $28
    halt
    cp $00
    db $e4
    ld hl, sp+$34

jr_018_767e:
    ld hl, sp-$18
    db $10
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    jr c, jr_018_7653

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_770c

    jr jr_018_7708

    jr nc, jr_018_76ce

    inc e
    inc e
    nop
    nop
    nop

jr_018_76a1:
    ld c, d
    dec [hl]
    ld l, d
    dec [hl]
    ld c, d
    dec [hl]
    ld c, d
    dec [hl]
    ld a, e
    inc b
    xor a
    ld [hl], b
    db $db
    ld l, h
    rst $18
    ld l, h
    ld h, b
    add b
    ret c

    and b
    ld h, h
    cp b
    ld [hl], h
    cp b
    sub $38
    pop hl
    ld e, $d5
    xor d
    call $adb2
    ld d, e
    ld d, a
    dec l
    ld e, a
    inc l
    ld a, $01
    dec de
    inc b
    ld c, $01
    dec c

jr_018_76ce:
    ld [bc], a
    ld a, [de]
    dec c
    ld e, d
    db $f4
    or $78
    ld [$fc74], a
    add b
    ld e, [hl]
    db $e4
    or a
    ld a, d
    sub $38
    jr c, jr_018_76a1

    jr c, @+$09

    ld h, h
    dec sp
    ld [hl], l
    ld a, [bc]
    ld a, [hl]
    nop
    jr c, jr_018_76eb

jr_018_76eb:
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ldh a, [rOBP0]
    ldh a, [$ff88]
    ld [hl], b
    ld e, b
    jr nz, @+$66

    jr c, jr_018_7768

    jr nc, jr_018_7730

    inc e
    ld e, $00
    nop
    nop
    adc b
    adc b
    sbc d
    sbc d
    sbc a

jr_018_7708:
    sbc d
    sbc e
    adc a
    xor [hl]

jr_018_770c:
    cp a
    cp a
    cp a
    rst $38
    rst $18
    jr nz, jr_018_7733

    and b
    and b
    and b
    and b
    ldh [rNR41], a
    jr nc, @-$1e

    ld l, b
    ldh a, [$ff6c]
    ldh a, [rOCPS]
    db $f4
    rst $18
    rst $28
    ld [$feff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30

jr_018_7730:
    rst $38
    ld l, d
    db $f4

jr_018_7733:
    ldh [c], a
    db $fc
    ld [$fcf4], a
    ldh [$fff4], a
    add sp, -$04
    add sp, -$04
    ldh [$fffe], a
    db $ec
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    ld a, a
    push af
    ld a, a
    rst $38
    ld [hl], l
    dec sp
    ld [hl], l
    call c, $d8f8
    ldh [$ffd0], a
    ldh [$ffc8], a
    ldh a, [$ffdc]
    ldh [$ffea], a
    call c, $d0fe
    xor h
    ret nc

    dec [hl]
    ld a, e
    dec sp
    ld a, a
    ccf
    ld a, a
    rra

jr_018_7768:
    ccf
    rra
    ccf
    rra
    ccf
    ld c, $1f
    nop
    rra
    sbc b
    ret nz

    add b
    ret nz

    add b
    ret nz

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
    rlca
    nop
    dec de
    rlca
    cpl
    rra
    ld a, $1f
    ld a, $1f
    ld e, a
    cpl
    xor a
    ld [hl], a
    rst $08
    ld [hl], b
    ret nz

    nop
    or b
    ret nz

    ld [$0cf0], sp
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    ret c

    ld h, a
    cp a
    ld b, b
    rst $30
    dec l
    xor a
    dec e
    rla
    dec c
    dec de
    rlca
    daa
    jr jr_018_77df

    dec de
    sbc h
    ld h, b
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    sbc $6c
    cp h
    ret c

    ld l, b
    ret nc

    ret c

    and b
    dec de
    inc c
    ld a, a
    nop
    ret nz

    ccf
    call nz, Call_018_4a3b
    dec [hl]
    ld c, [hl]
    dec [hl]
    ld h, h
    dec sp
    ld d, c
    ccf
    call nc, $fc28
    nop
    ld l, d
    sbc h
    ld a, [hl]
    sub b
    ld l, h
    sub b
    ld e, b
    add b
    ret nz

    add b

jr_018_77df:
    ld b, b
    add b
    ld l, d
    ccf
    ld d, l
    ccf
    ccf
    rra
    ccf

Jump_018_77e8:
    rra
    ld l, $1f
    rra
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld b, b
    add b
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
    ret c

    ld h, a
    cp a
    ld b, b
    rst $30
    dec l
    xor a
    dec e
    rla
    dec c
    dec de
    rlca
    daa
    jr jr_018_784f

    nop
    sbc h
    ld h, b
    db $f4
    ld [$68dc], sp
    ld hl, sp+$60
    call c, $be60
    call c, $d06c
    ret z

    jr nc, jr_018_7862

    ccf
    ld b, h
    dec sp
    ld c, d
    dec [hl]
    adc $35
    db $e4
    dec sp
    ld d, c
    ccf
    ld l, d
    ccf
    ld d, l

Call_018_7830:
    ccf
    ld [hl], b
    add b
    ld d, b
    and b
    ld c, b
    or b
    ld d, h
    xor b
    ld a, [$6e9c]
    sub b
    db $fc
    add b
    ld b, b
    add b
    ld a, a
    ld a, $7f
    ld a, $5d
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_784f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$60
    db $fc
    ld a, b
    ld a, [hl]
    inc a
    inc sp
    ld e, $03

jr_018_7862:
    ld bc, $0003
    inc c
    inc bc
    rla

Call_018_7868:
    rrca
    rla
    rrca
    dec e
    inc bc
    ld [hl], e
    inc c
    xor [hl]
    ld [hl], c
    ld d, $e0
    jp z, $ecb4

    ld d, b
    ld d, d
    xor h
    ld [$9494], a
    ld l, b
    ld l, $d0
    ld c, l
    cp [hl]
    call c, $fd6b
    ld b, d
    cp a
    ld c, l
    ld d, a
    inc c
    add hl, sp
    ld d, $75
    dec de
    ld e, d
    dec h
    ld l, c
    ld b, $b1
    ld c, [hl]
    adc $30
    db $e4
    ld e, b
    xor b
    ret nc

    ld d, b
    and b
    ld hl, sp+$10
    call c, Call_018_58e8
    ldh [$ffef], a
    ld d, b
    pop de
    ld a, $99
    ld a, [hl]
    pop af
    ld c, [hl]
    jp c, $9d2c

    and $f9
    ld e, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_018_78b9

jr_018_78b9:
    jr c, jr_018_78cb

    inc a
    jr jr_018_78fc

    inc e
    ld a, [de]
    inc c
    rlca
    nop
    ld [$3307], sp
    rrca
    ld e, [hl]
    ld hl, $76a9

jr_018_78cb:
    rst $10
    ld l, b
    rst $38
    ld c, d

jr_018_78cf:
    xor [hl]
    ld e, c
    sbc c
    ld c, $7d
    adc d
    sbc [hl]
    push hl
    adc $f5
    rst $18
    ldh [c], a
    ld h, l
    sbc d
    sbc [hl]
    ld h, l
    ld a, a
    add b
    nop
    nop

jr_018_78e3:
    ldh [rP1], a
    and b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    rst $18
    ld b, $37
    ld e, $5c
    dec hl
    ld a, a
    ld bc, $0d16
    dec a

jr_018_78fc:
    ld [de], a
    ld [hl], a

jr_018_78fe:
    ld a, [bc]
    ld [$ed75], a
    ld e, $f2
    ld c, h
    db $ec
    db $10
    ld [hl], b
    add b
    cp b
    ret nc

    db $fc
    ret z

    jr c, jr_018_78cf

    ldh [rP1], a
    ldh [$ff7f], a
    ld d, e
    cpl
    ld l, a
    inc sp
    ld h, a
    jr jr_018_78e3

    ld [hl], b
    ld [hl], b
    nop
    ld bc, $0100
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    db $10
    ldh [$ffc8], a
    ld [hl], b
    ret z

    jr nc, jr_018_78fe

    ldh [$ffe0], a
    nop
    rlca
    nop
    jr jr_018_793c

    daa
    rra
    cpl
    rra
    dec sp
    rlca
    ld [hl], h

jr_018_793c:
    dec bc
    xor a
    ld [hl], b
    pop de
    ld l, [hl]
    ldh [rP1], a
    db $10
    ldh [$ff0e], a
    ldh a, [$ff8d]
    or $d9
    xor $02
    db $fc
    db $fc
    nop
    ld b, h
    cp b
    nop
    db $10
    db $10
    jr c, jr_018_797e

    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp $4b
    cp a
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    ld [$0f07], sp
    add e
    sbc [hl]
    xor c
    and a
    rst $38
    and h
    ld e, b
    ld [hl], h
    add sp, -$11
    ret nc

    ld e, a
    and [hl]
    cp $1c
    ld e, h
    ldh [$ffd2], a

jr_018_797e:
    db $ec

jr_018_797f:
    ld hl, $1fde
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, b
    db $fd
    jr c, @+$7e

    nop
    jr c, jr_018_797f

    or $ce
    pop hl
    ld e, a
    db $ec
    dec e
    ld b, d
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    db $dd
    ld [hl+], a
    db $fd
    ld c, $f9
    ld d, $f6
    ld l, b
    db $f4
    jr jr_018_7a20

    ld [$0038], sp
    nop
    nop

jr_018_79b1:
    cp $4b
    cp a
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    ld [$0507], sp
    inc bc
    ld a, [de]
    dec b
    ld sp, hl
    rra
    ld l, l
    ld [hl-], a
    ld [hl], l
    ld a, [bc]

jr_018_79c5:
    ld c, d
    inc [hl]
    ld c, [hl]
    inc [hl]
    adc $74
    call c, $dc68
    ld l, b
    db $fc
    ld l, b
    dec d
    rst $38
    xor $1d
    rra
    nop
    add hl, de
    ld b, $0d
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld l, h
    jr c, jr_018_7a1c

    db $10
    stop
    nop
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
    jr @+$09

    daa
    rra
    cpl
    rra
    dec sp
    rlca
    ld [hl], $09
    ld e, a
    jr nz, jr_018_79b1

    ld l, [hl]
    ret nz

    nop
    jr nc, jr_018_79c5

    ld [$88f0], sp
    ldh a, [$ffce]
    ldh a, [$ffdd]
    xor $c1
    ld a, $7e
    add b
    call c, $fd6b
    ld c, e
    xor a
    ld e, e
    ld d, a
    rrca
    call z, $c703

jr_018_7a1c:
    nop
    rst $38
    ld b, $45

jr_018_7a20:
    cp a
    and h

jr_018_7a22:
    ld e, b
    ld d, h
    add sp, -$14
    ret nc

    ld e, [hl]
    and b
    rst $38
    ld e, $ee
    ld [hl], b
    ld d, h
    cp b
    call nc, Call_000_1d38
    ld [bc], a
    ld [de], a
    dec c
    inc de
    dec c
    inc sp
    dec e
    scf
    ld a, [de]
    scf
    ld a, [de]
    ccf
    ld a, [de]
    dec de
    ld c, $7b

jr_018_7a42:
    add a
    adc a
    nop
    add a

jr_018_7a46:
    nop
    add [hl]
    inc bc
    ld b, $01
    dec c
    ld b, $0f
    nop
    nop
    nop
    ld l, h
    ldh a, [$fff4]
    ld [$f804], sp
    ret z

    jr nc, jr_018_7a22

    ld [hl], b
    db $f4
    jr jr_018_7a42

    ld a, b
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7a66:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    sub $6c
    cp e
    sub $11
    xor $83
    ld a, h
    ld bc, $0700
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    pop af
    ld l, [hl]
    db $fc
    nop
    ret nc

    jr nz, jr_018_7a46

    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fffd], a
    ld b, $be
    ld a, a
    ld e, c
    ld a, $3e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, sp

jr_018_7aae:
    ld d, $24
    dec de
    dec sp
    add $df
    ld a, [hl+]
    push de
    ld [$c0ba], a
    db $f4
    jr z, @-$12

    ret c

    inc [hl]
    ret c

    ld c, b
    or b
    dec e
    ld b, $36
    add hl, de
    inc de
    rrca
    scf
    jr jr_018_7b3c

    inc l
    inc [hl]
    jr jr_018_7ae6

    nop
    nop
    nop
    ld [hl], b
    ret nz

    ret z

    jr nc, jr_018_7a66

    ldh [$ffe8], a
    jr nc, jr_018_7aae

    ld l, b
    ld l, b
    jr nc, jr_018_7b0e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7ae6:
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    cp d
    ld a, h
    cp $7c
    rlca
    nop
    ld a, [de]
    dec b
    cpl
    dec e
    ld a, $1d
    ccf
    dec e
    ld l, $1d
    ld d, d
    dec l
    and d
    ld a, l
    db $fc
    ld hl, sp-$56
    db $fc
    ld d, [hl]
    db $fc
    xor d
    call c, $ac76
    ld d, d
    xor h
    ld d, e

jr_018_7b0e:
    xor h
    inc hl
    call c, Call_018_7df2
    cp a
    ld a, [hl]
    ld e, h
    ccf
    ld a, a
    nop
    rst $38
    ld [hl], b
    ld a, a
    rrca
    dec d
    ld a, [bc]
    ld c, $03
    inc bc
    db $fc
    rst $38
    nop
    jp c, Jump_018_6c24

    ret nc

    db $fc
    db $10
    db $fc
    add sp, $34
    ret c

    ld c, h
    or b
    dec de

jr_018_7b32:
    inc c
    ld a, [de]
    rlca
    dec l
    inc de
    inc de
    inc c
    ld c, $00
    nop

jr_018_7b3c:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ret nz

    ret z

    jr nc, jr_018_7b0e

    ldh a, [$ffd0]
    jr nz, jr_018_7b32

    jr nc, @-$2a

    ld l, b
    ld l, b
    jr nc, jr_018_7b80

    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    db $d3
    ld l, a
    ld [bc], a
    ld [bc], a
    sub d
    sub d
    ldh a, [c]
    ld [de], a
    sub [hl]
    and $0e
    or $0e
    or $0e
    ldh a, [c]
    jp c, $b8e4

    ld a, a
    ld e, a
    ccf
    ccf
    nop
    inc hl
    rra
    cpl

jr_018_7b7a:
    db $10
    ccf
    rrca
    ld a, a
    jr c, jr_018_7b7a

jr_018_7b80:
    ld [hl], l
    db $fd
    ld b, $3b
    add $ff
    ld a, [bc]
    push de
    ld [$748e], a
    cp $8e
    cp $6e
    ld e, [hl]
    xor [hl]
    ld hl, sp+$07
    ld a, [hl-]
    dec c
    dec l
    ld [de], a
    ld l, a
    rra
    ld d, a
    cpl
    ld l, a
    jr nc, jr_018_7bd5

    dec de
    dec de
    rlca
    xor [hl]
    halt
    db $f4
    adc d
    sbc h
    ld [hl], d
    adc d
    db $f4
    ld a, [hl+]
    call nc, Call_000_2cd2
    ld a, [hl]
    ret c

    ld hl, sp+$44
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0103
    inc bc
    ld bc, $0003
    ld bc, $0100
    cp b
    ld e, h
    ld e, b
    cp h
    cp b
    db $fc
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh a, [$fff8]
    ldh [$fff0], a
    nop
    ldh a, [rP1]
    nop
    nop
    nop

jr_018_7bd5:
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld l, a
    rra
    db $d3
    ld l, a
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [$ff0c]
    ldh a, [$ffda]
    db $e4
    cp b
    ld a, a
    ld e, a
    ccf
    ccf
    nop
    inc hl
    rra
    daa
    jr @+$01

    rlca
    rst $38
    ld a, b
    ld a, d
    dec b
    db $fd
    ld b, $3b
    add $ff
    ld a, [bc]
    push de
    ld [$708a], a
    ldh a, [$ff80]
    ldh a, [$ff60]
    ld d, b
    and b
    jr z, jr_018_7c2a

    ld a, [de]
    dec c
    dec l
    ld [de], a
    ld l, a
    rra
    ld d, a
    cpl
    ld l, a
    jr nc, jr_018_7c52

    dec de
    inc e
    inc bc
    xor b
    ld [hl], b
    db $f4
    adc b
    sbc h
    ld [hl], d
    adc d
    db $f4
    ld a, [hl+]

jr_018_7c2a:
    call nc, Call_000_2cd2
    cp [hl]
    ld e, b
    cp h
    ld b, b
    ld b, $03
    dec b
    inc bc
    ld b, $03
    dec b
    inc bc
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    xor h
    ld e, b
    ld d, h
    cp b
    inc c
    ld hl, sp+$54
    ld hl, sp-$08
    ldh a, [$fff8]
    ldh a, [$ffe8]
    ldh a, [$fff0]
    nop
    rlca

jr_018_7c52:
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    ret nc

    ld l, a
    cp a
    ld a, a
    ret nz

Jump_018_7c62:
    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ffda]
    db $e4
    db $fd
    ld b, $1b
    and $5c
    ccf
    ccf
    nop
    ld hl, $771f
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rrca
    cpl
    db $10
    add hl, hl
    ld d, $7f
    adc d
    sub l
    ld l, d
    adc $f0
    inc a
    ret nz

    ld a, [$fa24]
    call nz, Call_000_34ca
    ld h, $d8
    inc d
    dec bc
    dec e
    ld b, $36
    add hl, de
    dec hl
    rla
    ld [hl], a
    jr z, @+$37

    jr jr_018_7cb7

    nop
    nop
    nop
    ld d, [hl]
    xor b
    ld l, d
    call nc, $38c6
    xor [hl]
    ret nc

    ld [$f434], a
    ret c

    ld a, h
    ldh [$fff8], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7cb7:
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, a
    ld a, $77
    ld a, $63
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    scf
    ld [$2b54], sp
    or a
    ld l, b
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    push de
    ld l, d
    db $dd
    ld h, d

jr_018_7cf5:
    or l
    ld e, d
    rst $38
    dec de
    ld e, e
    daa
    ld l, a
    jr jr_018_7d37

    rra
    ld e, $01
    db $db
    or h
    sub $b8
    sub $bc
    db $fc
    ldh a, [$ffee]
    ld [hl], b
    rst $38
    ld c, $ee
    ldh a, [rBCPS]
    ldh a, [rNR22]
    ld a, [bc]
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    ld hl, sp+$00
    jr z, jr_018_7cf5

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_7d9e

    jr jr_018_7d9a

    jr nc, jr_018_7d60

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7d37:
    nop
    nop
    ld [$0800], sp
    nop
    inc e
    ld [$081c], sp
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld [hl], a
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld [hl], a
    ld [$68b7], sp
    push de
    ld l, d
    db $dd

jr_018_7d60:
    ld h, d
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    ld hl, sp-$2c
    jr c, jr_018_7d8c

    call c, Call_000_0af5
    ld c, l
    or d
    db $db
    or h
    or a
    ld e, e

jr_018_7d73:
    ld e, a
    dec sp
    ld e, e
    daa
    ld l, a
    jr jr_018_7db4

    rra

Call_018_7d7b:
    dec e
    inc bc
    ld d, $09
    rrca
    ld [bc], a
    rst $30
    ld hl, sp-$0a
    ld a, h
    xor $70
    call c, $fe60
    inc c
    rst $28

jr_018_7d8c:
    or $6f
    ldh a, [$fff8]
    nop
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    add hl, bc
    ld b, $1d

jr_018_7d9a:
    ld a, [bc]
    add hl, bc
    ld b, $1e

jr_018_7d9e:
    inc c
    inc e
    nop
    jr z, jr_018_7d73

    adc b
    ldh a, [$ffd8]
    jr nz, jr_018_7e10

    jr nc, jr_018_7dfe

    jr z, @+$6a

    jr nc, jr_018_7de2

    jr @+$1e

    nop
    db $10
    db $10
    inc d

jr_018_7db4:
    inc d
    inc d
    inc d
    ld d, $16
    rla
    ld d, $1c
    rla

jr_018_7dbd:
    ld sp, $351f
    rra
    db $10
    db $10
    sub b
    sub b
    db $10
    db $10
    ld d, b
    ld d, b
    ret nc

    ld d, b
    jr nc, jr_018_7dbd

    jr c, @-$0e

    ld a, [hl]
    ldh a, [$ff35]
    rra
    dec a
    rra
    ccf
    rra
    ld e, l
    ccf
    cp a
    ld a, a
    db $dd
    ld a, a
    db $dd
    ld a, a
    cp [hl]
    ld e, l
    ld a, c

jr_018_7de2:
    or $f1
    cp $f9
    or $7a
    db $f4
    db $fc
    ldh a, [rPCM34]

jr_018_7dec:
    ld hl, sp+$7f
    ld a, [$76ff]
    ld e, l

Call_018_7df2:
    ld e, $1e
    rra
    ld a, $1f
    ld l, a
    rra
    rst $38
    ld l, a
    rst $28
    rra
    ld a, a

jr_018_7dfe:
    rrca
    ccf
    rrca
    ld a, [hl]
    ldh a, [$fff8]
    ldh a, [$fff4]
    ld hl, sp-$12
    ldh a, [$fff5]
    xor $ff
    add sp, -$02
    ldh [$ffec], a

jr_018_7e10:
    ldh [$ff3e], a
    ld a, a
    ld a, $3e
    ld a, $3e
    ld a, $3e
    inc e
    ld a, $1c
    inc e
    ld [$001c], sp
    ld [$0000], sp
    rlca
    nop
    dec de
    rlca
    cpl
    rra
    ld a, $1f
    ld a, $1f
    ccf
    rra
    cpl
    rra
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$0ef0], sp
    ldh a, [$ff09]

jr_018_7e3c:
    or $01
    cp $c9
    or $57
    jr z, jr_018_7dec

    ld [hl], a
    rst $18
    ld h, b
    db $db
    ld l, l
    xor e
    ld e, l
    ld d, a
    inc c
    inc e
    inc bc
    jr c, jr_018_7e68

    ld a, [bc]
    db $f4
    sbc h
    ld h, b
    db $f4
    ld [$68b6], sp
    cp a
    ld h, [hl]
    rst $18
    ld h, b
    ld l, b
    sub b
    inc [hl]
    ret z

    ld l, b
    rla
    ld sp, hl
    ld h, [hl]
    ld [$7b15], a

jr_018_7e68:
    dec b
    add hl, sp
    ld b, $0c
    rlca
    inc c
    rlca
    ld c, $07
    ld l, $d0
    dec [hl]
    adc $bf
    ld c, b
    cp [hl]
    ld b, b
    inc l
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ldh [$ffc0], a
    rra
    ld c, $1f
    ld c, $1f
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    inc b
    nop
    inc b
    nop
    ld d, a
    jr z, jr_018_7e3c

    ld [hl], a
    rst $18
    ld l, h
    rst $18
    ld a, [hl]
    cp a
    ld e, d
    ld e, a
    inc c

Call_018_7e9d:
    inc d
    dec bc
    jr c, jr_018_7eb8

    ld a, [bc]
    db $f4
    sbc h
    ld h, b
    db $f4
    ld l, b
    db $f4
    ld hl, sp-$02
    or h
    rst $28
    ld [hl], d
    ld c, e
    or b
    inc [hl]
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_7eb8:
    nop
    inc e
    nop
    inc hl
    inc e
    inc hl

Call_018_7ebe:
    inc e
    ld [hl], e
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$0807], sp
    rlca
    inc e
    inc bc
    dec de
    inc c
    ld c, $04
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
