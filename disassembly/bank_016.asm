; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld d, $00
    nop
    nop
    nop
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

jr_016_4017:
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
    add hl, bc
    inc d
    dec bc
    rla
    add hl, bc
    nop
    nop
    ldh [rP1], a
    jr jr_016_4017

jr_016_4037:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    dec d
    ld a, [bc]
    ccf
    nop
    dec [hl]
    ld a, [de]
    ccf
    jr jr_016_40a7

    inc hl
    cpl
    jr jr_016_4087

    rra
    rra
    nop
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    rst $18
    ldh [rIE], a
    ld c, $ce
    ldh a, [$ff98]
    ld h, b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld [hl], b
    add b
    ldh a, [rNR41]
    jr nc, jr_016_4037

    add sp, $70
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_016_40f2

    jr c, @+$3e

    nop
    ld a, $1c
    ld a, $1c
    ld a, $1c

jr_016_4087:
    ld [hl], a
    ld a, $63
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $00
    nop

jr_016_4093:
    nop
    nop
    nop
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
    ld c, c
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]

jr_016_40a7:
    scf
    add hl, bc
    inc d
    dec bc
    rla
    add hl, bc
    rra
    nop
    dec d
    ld a, [bc]
    jr jr_016_4093

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$de94], a
    or b
    ccf
    jr jr_016_411f

    daa
    ld l, [hl]
    add hl, de
    dec sp
    ld e, $1d
    inc bc
    dec bc
    inc b
    dec b
    ld [bc], a
    nop
    nop
    cp $94
    xor $70
    sbc h
    ld h, b
    ld a, [$cf0c]
    or $9e
    ld h, b
    ld [hl], b
    add b
    nop
    nop
    db $10
    db $10
    inc d
    inc d
    inc d
    inc d
    ld d, $16
    rla
    ld d, $1c
    rla

jr_016_40ed:
    ld de, $151f
    rra
    db $10

jr_016_40f2:
    db $10
    sub b
    sub b
    db $10
    db $10
    ld d, b
    ld d, b
    ldh a, [$ff50]
    jr c, jr_016_40ed

    inc [hl]
    ld hl, sp+$7c
    ld hl, sp+$35
    rra
    dec a
    rra
    dec a
    rra
    ccf
    rra
    dec a
    rra
    ccf
    rra
    dec a
    rra
    rra
    inc e
    ld a, [hl]
    db $fc
    ld a, d
    db $fc
    or $fc
    ld a, [$f2fc]
    ld a, h
    halt
    ld hl, sp-$01
    ldh a, [c]

jr_016_411f:
    db $fd
    or $1f
    rra
    rra
    ld e, $1e
    rra
    rra
    rrca
    ccf
    rra
    ccf
    rrca
    rra
    rrca
    rrca
    rrca
    cp $f4
    db $f4
    ld hl, sp-$0c
    ld hl, sp-$04
    ldh a, [$fffa]
    db $ec
    cp $f0
    db $fc
    ldh [$fff8], a
    ldh [$ff3e], a
    ld a, a
    ld a, $3e
    ld a, $3e

jr_016_4147:
    ld a, $3e
    inc e
    ld a, $1c
    inc e
    ld [$001c], sp
    ld [$0000], sp
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_416a

    jr c, jr_016_417c

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_016_4147

    inc b
    ld hl, sp+$0c

jr_016_416a:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    ld a, [hl+]
    rra
    daa
    dec e
    scf
    ld [$163d], sp
    dec de
    inc b
    rrca

jr_016_417c:
    nop
    inc d
    dec bc
    jr @+$09

    xor d
    call c, Call_000_2cd2
    or $88
    sbc $b4
    rst $28
    sub d
    db $dd
    ld h, [hl]
    halt
    adc b
    inc l
    ret c

    jr c, jr_016_419a

    ld a, c
    ld [hl], $7a
    dec b
    dec sp
    dec b
    add hl, de

jr_016_419a:
    ld b, $0c
    rlca
    inc c
    rlca
    ld c, $07
    ld a, $d0
    dec a
    add $bf
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
    ld a, [hl+]
    rra
    daa
    jr jr_016_4205

    rlca
    ccf
    dec d
    rra
    rlca
    rrca
    nop
    inc d
    dec bc
    jr @+$09

    xor d
    call c, $8c72
    cp $70
    cp $54
    cp $70
    db $fd
    ld b, $77
    adc d
    ld l, $d8
    nop
    nop
    ld bc, $0700
    ld bc, $070b
    rla
    rrca
    cpl
    rra
    ld a, $1f
    ld a, h
    ccf
    ld a, h
    nop
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$08
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ff78]
    ccf
    ld hl, sp+$7f

jr_016_4205:
    ldh a, [$ff7f]
    pop af
    ld a, a
    rst $38
    ld h, b
    xor $15
    ld d, h
    dec hl
    ld e, c
    ld h, $1e
    db $e4
    inc a
    ret z

    ld e, [hl]
    or b

jr_016_4217:
    xor a
    halt
    ld e, l
    xor $ba
    call c, Call_000_18f6
    ld a, [$2fa4]
    db $10
    ld e, $0d
    rra
    inc c
    dec sp
    ld d, $35
    dec de
    ld e, [hl]
    ld hl, $0877
    rla
    dec bc
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00
    ld [hl], h
    ret c

    cp [hl]
    call z, Call_000_00ec
    rla
    dec bc
    rrca
    nop
    ld [$1b07], sp
    inc c
    dec c
    ld [bc], a
    add hl, de
    ld c, $1f
    ld bc, $0003
    and b
    ret nz

    ldh [rP1], a

jr_016_4255:
    jr nz, jr_016_4217

    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    ld l, $15
    rra
    ld bc, $061f
    dec l
    ld d, $16
    add hl, bc
    dec c
    ld [bc], a
    dec b

jr_016_426e:
    ld [bc], a
    rra
    nop
    ldh a, [c]
    adc h
    ld a, [$3494]
    ret z

    call c, $da60
    ld l, h
    ld a, a
    add [hl]

jr_016_427d:
    sub [hl]
    ldh [$ff90], a
    ldh [$ff3c], a
    dec de
    ld a, $05
    ld h, l
    jr jr_016_427d

    ld a, b
    ld h, h
    jr jr_016_42a4

    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_016_4255

    ld [hl], b
    and b
    ldh a, [$ffc0]
    ret z

    jr nc, jr_016_4304

    jr nc, jr_016_426e

    ld h, b
    ldh [rP1], a
    inc bc
    db $10
    inc c

jr_016_42a4:
    inc hl
    jr c, jr_016_42d6

    dec [hl]
    ld a, a
    ld a, e
    ld e, [hl]
    ld l, e
    db $f4
    push de
    db $eb
    db $db
    rst $20
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    nop
    ld de, $1111
    ld de, $3131
    inc sp
    inc sp
    ld a, e
    ld [hl], e
    ld a, e
    ld [hl], e
    ld a, a
    ld [hl], a
    ld a, a
    rst $28
    call nc, $e5de
    sub a

jr_016_42d6:
    call c, $df9b
    or e
    db $fc
    or a
    ei
    pop af
    rst $38
    rst $28
    rst $38
    or d
    call z, $d4fa
    or [hl]
    ret z

    ld l, a
    sub [hl]
    ld a, [$dc0c]
    ld h, b
    or h
    ret c

    db $f4
    jr c, jr_016_4369

    rst $38
    rst $38
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
    rlca
    rra
    rst $28
    rst $38
    rst $38

jr_016_4304:
    rst $38
    ei
    rst $38
    ld a, [$f7ff]
    cp $fd
    cp $fa
    db $fc
    ldh [$fff8], a
    jp c, Jump_016_6264

    sbc h
    ld a, d
    or h
    db $fc
    ld [$e0d8], sp
    add sp, $30
    add sp, $10
    jr nc, jr_016_4321

jr_016_4321:
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4336

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_4336:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    nop
    nop
    rlca
    nop
    ld [$0f07], sp
    rlca
    rrca
    nop
    inc d
    dec bc
    rrca
    inc bc
    rlca
    nop
    cpl
    inc d
    cp $05
    rla
    db $ec
    ei
    rst $20
    rst $28
    nop
    scf
    ret


    db $ed
    sub $fe
    rlca
    or d
    call z, $d4fa
    or h
    ret z

    ld l, [hl]
    sub b

jr_016_4369:
    rst $38
    ld c, $de
    ld h, b
    or h
    ret c

    ld [hl], h
    cp b
    ld [$3007], sp
    rrca
    ret nc

    ccf
    db $fc
    ld a, a
    cp a
    ld a, a
    ld e, a
    ccf
    scf
    rrca
    rrca
    nop
    rla
    ldh [$ff0e], a
    pop af
    dec bc
    db $fc
    ccf
    cp $fd
    cp $fb
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    jp c, Jump_016_6264

    sbc h
    ld a, d
    or h
    db $fc
    ld [$e0d8], sp
    add sp, $30
    add sp, $10
    jr nc, jr_016_43a1

jr_016_43a1:
    cpl
    dec d
    rst $38
    rlca
    rla
    add sp, -$05
    rst $20
    rst $28
    nop
    scf
    ret


    db $ed
    sub $fe
    rlca
    or d
    ld c, h
    ld a, [$b454]
    ret z

    ld l, h
    sub b
    ld a, [$df0c]
    ld h, [hl]
    or [hl]
    ret c

    ld [hl], h
    cp b
    rla
    ldh [$ff0e], a

jr_016_43c4:
    pop af
    dec bc
    db $fc
    ccf
    cp $fd
    cp $fa
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    ldh a, [c]
    inc c
    ld [hl], d
    cp h
    cp $08
    call c, $e8e0
    jr nc, jr_016_43c4

    db $10
    jr nc, jr_016_43df

jr_016_43df:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e

jr_016_43e6:
    nop
    ld a, $1c
    ld a, [hl-]
    inc d
    ld a, $08
    ld [hl], $08
    ld a, [hl-]
    inc d
    rlca
    nop
    jr jr_016_43fc

    jr nz, jr_016_4416

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_43fc:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ldh a, [c]
    inc e
    ld [hl-], a
    call z, $f40a
    ld a, [bc]
    db $f4
    ld d, $f8
    ld e, [hl]
    ld hl, sp-$42
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_4416:
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ccf
    rlca
    rrca
    inc bc
    ld e, h
    ldh a, [$ffac]
    ret nc

    ld e, [hl]
    xor h
    or $0c
    ld [$e4d4], a
    jr c, jr_016_43e6

    ret nc

    sub b
    ldh [rNR31], a
    inc c
    inc e
    rlca
    daa
    jr jr_016_4452

    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_4452:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc d
    ld [$081c], sp
    ld a, [hl+]
    inc e
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld e, l
    ld a, $7f
    ld a, $6b
    ld [hl], $ff
    ld a, [hl+]
    ld [hl], a
    xor d
    ld d, l
    xor d
    ld c, c
    or [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    cp [hl]
    rst $38
    add b
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ld a, [hl]
    rlca
    rrca
    rlca
    ld b, c
    cp [hl]
    and d
    call c, $a854
    ld a, [$f404]
    ret z

    db $fc
    db $10
    db $fc
    ld e, b
    xor b
    ld [hl], b
    rrca
    inc bc
    rla
    ld [$0b1f], sp
    dec bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    add b
    ret nc

    jr nz, @+$22

    ret nz

    ret nc

    ldh [$ffa0], a
    ld b, b
    ret nc

    ld h, b
    add sp, $10
    ld [hl], b
    nop
    add c
    add c
    and l
    and l
    add c
    add c
    and h
    and h
    and l
    and l
    push de
    push de
    db $db
    db $db
    rst $38
    rst $38
    rrca
    ld [$0718], sp
    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a
    ccf
    ld a, d
    ccf
    ld a, h
    ccf
    ldh a, [$ff30]

jr_016_44e3:
    jr nc, @-$3e

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$7c
    ld hl, sp+$38
    rla
    ld [hl], a
    ld [$63df], sp
    ld a, a
    inc [hl]
    inc [hl]
    dec bc
    dec hl
    rla
    rra
    rlca
    rra
    ld [$d038], sp
    ret c

    jr nz, @-$0e

    add b
    ldh a, [rLCDC]
    ld d, b
    and b
    xor b
    ret nc

    or h
    ret c

    call c, Call_000_3b28
    rlca
    ld a, h
    dec hl
    ld l, a
    inc [hl]
    dec [hl]
    dec de
    add hl, de
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    jr c, jr_016_44e3

    ld [hl], h
    xor b
    db $e4
    ld e, b
    ld hl, sp-$50
    ldh a, [$ffc0]
    add b
    ret nz

    add b
    ret nz

    nop
    add b
    rlca
    nop
    jr jr_016_453c

    jr nz, jr_016_4556

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_016_453c:
    ccf
    ld a, d
    ccf
    ld a, h
    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$7c
    ld hl, sp+$38
    rla
    daa

jr_016_4554:
    jr jr_016_45cd

jr_016_4556:
    dec bc
    rst $38
    ld [hl], h
    ld [hl], h
    dec bc
    dec hl
    rla
    rra
    rlca
    ccf
    ld [$d038], sp
    ret z

    jr nc, @-$2e

    and b
    ldh a, [rLCDC]
    ld d, b
    and b
    xor b
    ret nc

    or h
    ret z

    call c, Call_016_7b20
    daa
    ld a, h
    dec hl
    dec sp
    inc d
    ld e, $01
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    ret z

    ld [hl], h
    xor b
    ld hl, sp+$50
    ldh a, [$ff80]
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    inc [hl]
    rra
    jr z, jr_016_45ac

    rra
    nop
    ccf
    dec de
    ld l, a
    jr nc, jr_016_45d1

    dec bc
    dec hl
    rla
    rra
    rlca
    ld e, b
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, @-$1e

    ret nz

    ret nc

    jr nz, jr_016_4554

jr_016_45ac:
    ret nc

    call nc, $94e8
    add sp, $3f
    nop
    ld a, h
    dec hl
    ld l, a
    inc [hl]
    ld [hl], $19
    dec e
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld hl, sp+$00
    ld [hl], h
    xor b
    db $e4
    ld e, b
    ld hl, sp-$50
    ldh a, [$ff80]
    ld b, b
    add b

jr_016_45cd:
    add b
    nop
    add b
    nop

jr_016_45d1:
    nop
    nop
    rlca
    nop
    jr jr_016_45de

    scf
    rrca
    cpl
    rra
    ld e, h
    ccf
    ld e, b

jr_016_45de:
    ccf
    ld e, b
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b

Call_016_45e8:
    add b
    and b
    ret nz

    ld d, b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff58], a
    ccf
    jr z, jr_016_4614

    inc [hl]
    rrca
    jr c, jr_016_4600

    cpl
    db $10
    dec h
    ld a, [de]
    dec l
    ld [de], a
    scf

jr_016_4600:
    ld [$e018], sp
    inc h
    ret c

    ld l, h
    sbc b
    sub $3c
    xor [hl]
    call c, Call_000_2cf2
    ld [$eef4], a
    sub b
    ccf
    ld d, $15

jr_016_4614:
    ld c, $37
    add hl, de
    dec hl
    ld d, $2e
    rla
    rra
    nop
    nop
    nop
    nop
    nop
    sbc $b4

jr_016_4623:
    db $fc
    sub b
    db $f4
    add sp, -$12
    inc d
    db $db
    or $b6
    ld h, b
    nop
    nop
    nop
    nop
    ld e, b
    ccf
    jr z, jr_016_4654

    inc [hl]
    rrca
    jr c, jr_016_4640

    cpl
    jr jr_016_4671

    ld a, [de]
    dec h
    ld a, [de]
    ccf

jr_016_4640:
    nop
    jr jr_016_4623

    inc h
    ret c

jr_016_4645:
    ld l, h
    sbc b
    sub $3c
    xor d
    call c, Call_000_2cf6
    ld [$ce94], a
    or b
    ccf
    ld d, $35

jr_016_4654:
    ld c, $37
    add hl, de
    dec a
    ld d, $2e
    rla
    rla
    ld [$020d], sp
    rlca
    ld [bc], a
    cp $94
    xor $70
    sbc h
    ld h, b
    ld a, [$af0c]
    or $5e
    ldh [$fff0], a
    nop
    ld [hl], b
    and b

jr_016_4671:
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    dec b
    ld [bc], a
    dec bc
    ld b, $1e
    inc c
    inc e
    nop
    ldh a, [rNR41]
    jr nc, jr_016_4645

    add sp, $70
    ld [hl], b
    nop
    ld d, b
    jr nz, jr_016_46f4

    jr nc, jr_016_46c2

    jr @+$1e

    nop
    inc bc
    nop
    ld c, $03

jr_016_4695:
    db $10
    rra
    ld a, [de]
    rrca
    dec sp
    ccf
    dec de
    ccf
    ccf
    ccf
    rra
    ccf
    ldh [$ff80], a
    jr jr_016_4695

    call nz, $9cf8
    ld hl, sp-$2a
    db $fc
    jp c, Jump_016_56fc

    db $fc
    jp nc, $1ffc

    ccf
    rla
    ccf
    rra
    ccf
    rla
    ccf
    rla
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld e, d

jr_016_46c2:
    db $fc
    ld e, [hl]
    ld hl, sp+$4e
    db $fc
    rst $08
    ld hl, sp-$31
    ld a, [$fc8e]
    xor h
    ld hl, sp-$50
    ld hl, sp+$3d
    ccf
    dec a
    ccf
    ccf
    ccf
    dec a
    ccf
    dec a
    ccf
    dec l
    ccf
    dec a
    ccf
    dec a
    ccf
    or h
    ld hl, sp-$0e
    db $fc
    ld d, [hl]
    ld hl, sp-$2a
    ld hl, sp+$5c
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$2d
    ccf
    cpl

jr_016_46f4:
    dec a
    ld l, $3d
    dec c
    cp [hl]
    sub [hl]
    rst $38
    ld l, c
    rst $38
    dec a
    ld a, a
    rrca
    ccf
    ld b, b
    ld hl, sp-$40
    ld a, b

jr_016_4705:
    ret z

    ld a, b
    ld c, b
    ei
    xor e
    rst $38
    ld e, h
    cp $78
    db $fc
    ldh [$fff8], a
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_4728

    jr c, jr_016_473a

    dec l
    rra
    ld [hl], $1f
    dec hl
    dec e
    ldh [rP1], a
    jr jr_016_4705

    inc b
    ld hl, sp+$0c

jr_016_4728:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    call c, Call_000_2cda
    daa
    jr @+$3f

    inc bc
    ld a, $11
    dec de
    ld b, $15

jr_016_473a:
    dec bc
    rrca
    inc b
    dec bc
    ld b, $1f
    ld [$e47a], sp
    xor $f0
    cp [hl]
    call nz, $b0ee
    rst $18
    and $fa
    inc c
    xor h
    ld [hl], b
    call c, Call_000_3f28
    inc de
    inc a
    rrca
    inc l
    rra
    ld [hl], $0f
    ccf
    inc de
    ccf
    inc e
    ccf
    rra
    inc a
    rra
    ld a, h
    sub b
    ld a, [de]
    db $ec
    ld a, [bc]
    db $f4
    ld e, $e0
    db $ec
    sub b
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$ff3d]
    ld e, $3e
    dec e
    ccf
    inc e
    ccf
    dec e
    dec a
    ld e, $1c
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld [$88f0], sp
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$10f0], sp
    ldh [$ff60], a
    add b
    add b
    nop
    daa
    jr jr_016_47d1

    inc bc
    ld a, $11
    dec de
    inc b
    rra
    inc bc
    inc e
    rrca
    inc l
    rra
    ld [hl], $0f
    ld a, d
    db $e4
    xor $f0
    cp [hl]
    call nz, Call_000_30dc
    ld a, h
    sub b
    ld e, $e4
    dec bc
    or $1f
    ldh [c], a
    ccf
    inc de
    ccf
    inc e
    ccf
    rra
    inc a
    rra
    dec a
    ld e, $3e
    dec e
    ccf
    inc e
    ccf
    dec e
    xor $90
    adc h
    ld [hl], b
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld c, $f0
    adc h
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b

jr_016_47d1:
    dec a
    ld e, $1c
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_016_47dd:
    nop
    nop

jr_016_47df:
    nop
    nop

jr_016_47e1:
    ld [$10f0], sp
    ldh [$ff60], a
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
    rlca
    nop
    jr jr_016_4800

    jr nz, jr_016_481a

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_4800:
    ccf
    ld c, $00
    ld sp, $ce0e
    ccf
    ccf
    rst $08
    ld [$08f7], sp
    rst $30
    inc d
    ei
    ld e, h
    ei
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    and b

jr_016_481a:
    ret nz

    jr nz, jr_016_47dd

    jr nz, jr_016_47df

    jr nz, jr_016_47e1

    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla

jr_016_4829:
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    cp h
    ei
    db $ec
    ei
    ld e, c
    or $ae
    ret nc

    ld e, [hl]
    xor h

jr_016_483b:
    ld a, [$fc04]
    ret c

    db $fc
    jr z, jr_016_4882

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop

jr_016_4849:
    nop
    nop

jr_016_484b:
    nop
    nop

jr_016_484d:
    nop
    nop

jr_016_484f:
    nop
    nop

jr_016_4851:
    ccf
    rlca
    rrca
    inc bc
    dec de
    inc c
    inc e
    rlca
    daa
    jr jr_016_4876

    inc c
    inc c
    nop
    nop
    nop
    ld c, b
    or b
    or b
    ret nz

    ldh [rP1], a
    jr nz, jr_016_4829

    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    ld c, $00

jr_016_4873:
    ld sp, $f00e

jr_016_4876:
    ccf

jr_016_4877:
    db $f4
    ld a, e
    cp $75
    cp $71
    ld a, [$f475]
    ld a, e
    nop

jr_016_4882:
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_016_4849

    jr nz, jr_016_484b

    jr nz, jr_016_484d

    jr nz, jr_016_484f

    jr nz, jr_016_4851

    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla

jr_016_4899:
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ldh a, [$ff7f]
    db $fc
    ld a, a
    cp $71
    pop af
    ld c, [hl]
    rst $00
    jr c, jr_016_483b

    ld [hl], b
    rst $08
    or b
    or a
    ld c, b
    jr nz, jr_016_4873

    jr nz, @-$3e

    jr nz, jr_016_4877

    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ld a, $07
    cpl
    rla
    daa
    jr jr_016_48dc

    dec bc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $50
    ld l, b
    or b
    ldh a, [rP1]
    jr nz, jr_016_4899

    ret nc

    ldh [$ffa8], a

jr_016_48dc:
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    ld bc, $0201
    inc bc
    rla
    rla
    ld a, [bc]
    rra
    ld a, [hl-]
    ccf
    cpl
    jr c, jr_016_4926

    daa
    jr nz, jr_016_4910

    nop
    nop
    and b

Call_016_48f4:
    and b
    add b

Call_016_48f6:
    and b
    and b
    ldh a, [$fff0]
    ldh a, [$ffd0]
    jr nc, jr_016_492e

    ret nz

    ld [$25f0], sp
    rra
    ld d, [hl]
    ccf
    ld l, a
    ccf
    ld [hl], l
    ccf
    ld l, d
    ccf
    jr nc, @+$21

    ld l, e
    inc d
    rst $30

jr_016_4910:
    ld l, e
    ld c, b
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp+$5c
    ld hl, sp-$54
    ld hl, sp+$18
    ldh a, [$ffa8]
    ld d, b
    ret nc

    and b
    ld e, a
    inc [hl]
    dec [hl]
    dec bc

jr_016_4925:
    ccf

jr_016_4926:
    rla
    ccf
    rrca
    ccf
    ld [$275b], sp
    ld a, h

jr_016_492e:
    dec hl
    cpl
    inc d
    ldh a, [rLCDC]
    ld d, b
    and b
    xor b
    ret nc

    jr @-$1e

    ret c

    jr nz, jr_016_4970

    ret z

    ld [hl], h
    xor b
    add sp, $50
    ld e, $23
    ld a, [de]
    ccf
    ld a, [de]
    ccf
    ld [$91bf], sp
    rst $38
    ld l, c
    rst $38
    dec e
    ld a, a
    rlca
    rra

jr_016_4951:
    ldh a, [$ff88]
    sub b
    ld hl, sp-$70
    ld hl, sp+$00
    ld a, [$fe12]
    inc l
    cp $70
    db $fc
    ret nz

    ldh a, [$ffc0]
    nop
    jr nc, jr_016_4925

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14

jr_016_4970:
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, [hl]
    ld bc, $77ff
    ld a, a
    nop
    cpl
    rla
    ccf
    rlca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ret nc

    and b
    xor b
    ld d, b
    xor b
    ret nc

    jr c, jr_016_4951

    scf
    ld [$275b], sp
    ld a, h
    dec hl
    cpl
    inc d
    ld a, $01
    dec a
    ld e, $3c
    rra
    inc a
    rra
    ret c

    jr nz, @+$36

    ret z

    ld [hl], h
    xor b
    add sp, $50
    ld hl, sp+$00
    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [rNR34]
    rrca
    rrca
    inc bc
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
    db $10
    ldh [$ff60], a
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
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld e, a
    scf
    rst $30
    ld l, b
    ld l, a
    rla
    ccf
    rlca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ret nc

    and b
    xor b
    ld d, b
    xor b
    ret nc

    jr c, @-$3e

    scf
    ld [$1738], sp
    ld e, a
    inc l
    ld h, h
    dec de
    inc a
    rlca
    inc a
    rra
    nop
    nop
    nop
    nop
    add sp, $10
    ld a, b
    and b
    ld hl, sp-$40
    xor b
    ld d, b
    ret c

    ld h, b
    ld l, b
    sub b
    nop
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
    rra
    inc c
    ccf
    dec e
    ld a, a
    dec a
    ld a, l
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_016_4a29

jr_016_4a29:
    add sp, $30
    ld [hl], b
    add b
    ret c

    ldh [$ffe4], a
    ld hl, sp-$4c
    ld a, e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub b
    ld l, a
    ld h, b
    rra
    jr c, jr_016_4a44

    ld l, $11
    add hl, hl
    ld d, $72
    db $fc
    ld a, [de]

jr_016_4a44:
    db $fc
    ld [bc], a
    db $fc

jr_016_4a47:
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$0a
    db $f4
    sub d
    ld l, h
    ld e, $01
    ld a, $1b
    ld a, a
    add hl, de
    ld [hl], e
    inc l
    ld e, d
    scf
    cpl
    ld de, $0a1d
    dec e
    ld a, [bc]
    ld a, d
    sub h
    ld d, h
    add sp, -$48
    ret nz

    ld hl, sp+$30
    xor h
    ret c

    ld a, b
    add b
    and b
    ld b, b
    and b
    ret nz

    rrca
    nop
    ld [$1e07], sp
    dec c
    dec bc
    inc b
    dec c
    ld [bc], a
    dec de
    inc c
    rra
    ld bc, $0003
    ret nc

    ldh [$ffe0], a
    nop
    jr nz, jr_016_4a47

    ret nc

    ldh [$ffa0], a
    ld b, b
    db $10
    ldh [$ffa0], a
    ret nz

    ret nz

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    add hl, de
    ld c, $36
    dec e
    ld a, [hl-]
    dec e
    ld l, [hl]
    dec [hl]
    ld d, a
    jr z, jr_016_4ade

    nop
    sub $38
    db $fd
    ld a, d
    halt
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    ld h, e
    sbc a
    add c
    ld a, a
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ld h, b
    ld h, b
    add b
    and b
    ret nz

    sub b
    ldh [$ffc8], a
    ldh a, [$ff5b]
    ld h, $2f
    inc d
    rla
    inc c
    dec e
    inc bc
    cpl
    dec de
    ld e, $0d
    rrca
    nop
    ld c, $05
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ldh a, [rVBK]
    db $fc
    add e
    ld d, e

jr_016_4ade:
    ldh [$fff0], a
    nop
    ld c, b
    ldh a, [$ff28]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld c, $01
    rra
    inc c
    inc c
    inc bc
    inc de
    inc c
    dec sp
    dec e
    dec a
    nop
    ld bc, $0100
    nop
    ret nc

    ld h, b
    add sp, $70
    ld [hl], b
    add b
    ld h, b
    ret nz

    ret nc

    and b
    ret nc

    ld h, b
    and b
    ret nz

    ret nz

    nop
    dec bc
    ld [$1b1c], sp
    jr nc, jr_016_4b56

    ld [hl-], a
    ccf
    ld a, l
    ld a, a
    ld a, a
    ld a, d
    xor $fd
    push af
    ei
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    sub $7c
    ld [hl], d
    adc h
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    dec e
    dec e
    rra
    rra
    ccf
    ccf
    scf
    ccf
    ld [hl], $3f
    db $eb
    rst $30
    db $fd
    and $b7
    db $ed
    xor e
    rst $20
    ld [hl], a
    ldh a, [$ff73]
    pop af
    ld [hl], l
    ldh a, [c]
    ld a, e
    push af
    cp d
    call nc, Call_016_48f6
    xor a

jr_016_4b56:
    sub $7a
    adc h
    db $fc
    jr nc, @-$44

    ld b, h
    db $dd
    xor $bd
    sbc $6e
    ld a, a
    ld l, [hl]
    ld a, a
    ld c, h
    ld a, a
    ld a, [hl+]
    rst $38
    sub d
    rst $38
    ld l, d
    rst $38
    ccf
    ld a, a
    rrca
    ccf
    ld d, [hl]
    rst $38
    ld e, e
    cp $5f
    ld hl, sp+$15
    di
    ld d, e
    db $fc
    xor c
    db $fc
    ld [hl], b
    ld hl, sp-$40
    ldh a, [$fffd]
    ld b, $3a
    call c, $84fe
    db $ec
    ld [hl], b
    ld [hl], h
    sbc b
    db $f4
    ld [$0018], sp
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4ba6

    ld [hl-], a
    rra
    dec a
    rra
    ld l, a
    ld a, [hl-]
    ld c, [hl]
    dec [hl]
    ld d, l
    dec hl
    rrca
    nop
    ld [hl], $0f
    ld e, h

jr_016_4ba6:
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, jr_016_4c2b

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    db $eb
    rla
    ld a, l
    add [hl]
    rla
    db $ed
    ld a, e
    add a
    sub a
    ld h, b
    inc de
    pop hl
    dec d
    ldh [c], a
    ld e, $e7
    cp d
    call nc, Call_016_48f4
    xor [hl]
    ret nc

    ld a, a
    adc [hl]
    cp $30
    cp d
    ld b, h
    db $dd
    xor $7d
    add [hl]
    db $fc
    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    dec de
    and $17
    ldh [$ff15], a
    db $e3
    inc de
    ldh [rNR11], a
    ldh [rNR10], a
    ldh [$ff60], a
    add b
    add b
    nop
    cp c
    ld e, [hl]
    ld a, [hl]
    add h
    db $ec
    ld [hl], b
    ld [hl], h
    sbc b
    db $f4
    ld [$0018], sp
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4c16

    ld [hl-], a
    rra
    dec a
    rra
    ld l, a
    ld a, [hl-]
    ld c, [hl]
    dec [hl]
    ld d, l
    dec hl
    rrca
    nop
    ld [hl], $0f
    ld e, h

jr_016_4c16:
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, @+$81

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    db $eb
    inc d
    ld a, [hl]
    add l
    rla
    db $ec
    ld a, e
    add a
    sub a
    ld h, b

jr_016_4c2b:
    ld de, $16e0
    pop hl
    rra
    db $e4
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    ld a, [$ff0c]
    and $ee
    db $10
    or [hl]
    ld a, b
    db $fc
    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    ld d, $eb
    rra
    and $17
    ldh [rNR13], a
    pop hl
    rla
    ldh [rNR21], a
    db $e3
    ld h, e
    add b
    add b
    nop
    cp d
    call nz, Call_000_1cfa
    cp d
    ld b, h
    ld [hl], h
    cp b
    ld l, h
    sub b
    call nz, $f478
    ld [$0038], sp
    nop
    nop
    nop
    nop
    stop
    jr z, jr_016_4c89

jr_016_4c79:
    ld b, h
    jr c, jr_016_4cce

    inc a
    sbc l
    ld a, d
    cp e
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc

jr_016_4c89:
    db $10
    rrca
    db $10
    rrca
    jr z, @+$21

    cp b
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_4c79

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld c, $fc
    cp d
    ld [hl], c
    cp e
    ld [hl], c
    cp c
    ld [hl], b
    sbc b
    ld [hl], b
    ld c, h
    jr c, jr_016_4ce0

    ld [$000e], sp
    nop
    nop
    db $ed
    sbc a
    or $9f
    and h
    ld e, a
    or e
    ld c, l
    ld a, a
    db $10
    ld e, l
    ld h, $2b
    inc d
    dec e
    inc bc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, $28d6
    cp $84
    call c, $eab0

jr_016_4cce:
    sub h
    rst $18
    xor $07

jr_016_4cd2:
    nop
    rrca
    ld bc, $050b
    dec e
    ld c, $1b
    inc b
    ld [hl-], a
    inc e
    inc a
    nop
    nop

jr_016_4ce0:
    nop
    xor $10
    ld e, b
    or b
    db $f4
    adc b

jr_016_4ce7:
    ret c

    jr nz, jr_016_4cd2

    ld [hl], b
    ret c

    jr nz, jr_016_4d62

    jr c, jr_016_4d6c

    nop
    nop
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
    ld h, c
    ld e, $b9
    ld a, [hl]
    ld bc, $0200
    ld bc, $0103
    dec b
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    ld [bc], a
    nop
    ld a, c
    cp $ff
    ldh [$ffec], a
    add e
    sub b
    rrca
    jr z, jr_016_4d3a

    dec [hl]
    rra
    ld [hl], e
    ccf
    ld l, l
    ld [hl], $00
    nop
    ret nz

    nop
    jr nc, jr_016_4ce7

    ld [$8cf0], sp
    ld hl, sp-$2c
    ld hl, sp-$02
    ld a, h
    xor [hl]
    ld a, h
    ld d, [hl]
    add hl, hl
    ld e, e
    daa
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ccf

jr_016_4d3a:
    ld a, [bc]
    cpl
    rla
    rla
    ld [$030e], sp
    sub $bc
    or d
    call z, Call_016_64da
    ld a, h
    add sp, -$24
    ld h, b
    cp [hl]
    call z, Call_000_26db
    or $60
    rrca
    inc bc
    dec bc
    inc b
    inc e
    rrca
    rla
    ld [$1c32], sp
    inc a
    nop
    nop
    nop
    nop
    nop
    cp b

jr_016_4d62:
    ld h, b
    add sp, $10
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ldh a, [rP1]
    sub b

jr_016_4d6c:
    ld h, b
    add sp, $70
    ld a, b
    nop
    rlca
    nop
    jr jr_016_4d7c

    jr nz, jr_016_4d96

    jr nz, jr_016_4d98

    ld d, b
    ccf
    ld [hl], h

jr_016_4d7c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    ld [hl], h

jr_016_4d96:
    dec bc
    ld a, [hl]

jr_016_4d98:
    ld sp, $1b2f
    dec de
    inc b
    inc c
    rlca
    dec bc
    rlca
    ld e, b
    ldh a, [$ffa8]
    rst $10
    ld d, e
    xor a
    or $09
    db $ed
    sub $f6
    dec sp
    ld l, $d5
    inc a
    rst $08
    nop
    nop
    nop
    nop
    nop
    ldh [rNR41], a
    ld hl, sp+$18
    db $fc
    inc c
    cp $4c
    xor $c6
    xor $6c
    ld h, e
    ccf
    ccf
    rrca
    rrca
    rlca
    ld bc, $0304
    dec bc
    rlca
    dec bc
    inc b
    rlca
    nop
    ld a, c
    cp a
    rst $20
    rst $38
    cp $ff
    ldh a, [$fffc]
    db $e3
    inc bc
    and b
    ld b, b
    ret nz

    nop
    add b
    nop
    add [hl]
    add $16
    sub [hl]
    inc h
    ld [hl], $c8
    db $ec
    nop
    adc b
    nop
    stop
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
    inc e
    rrca
    inc sp
    dec e
    scf
    jr @+$31

    rla
    nop
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$14
    ret c

    sub $2c
    ld a, [hl]
    add h
    ld a, [$0074]

jr_016_4e12:
    ld bc, $0703
    ld [$121f], sp
    ccf
    inc [hl]
    ccf
    inc l
    ld a, a
    ld l, h
    ld a, a
    ld l, [hl]
    ld a, a
    cpl
    push de
    ccf
    rlca
    ccf
    ret nc

    dec sp
    rst $00
    dec d
    db $eb

jr_016_4e2b:
    rrca
    ret nz

    rla
    call $fe13
    ld a, [$fe54]
    ld [hl], c
    cp $84
    xor $f0
    call nc, $fee8
    inc c
    db $db
    and $ef
    db $10
    ld l, a
    ld a, a
    daa
    ld a, a
    ld sp, $183f
    ccf
    inc c
    ld e, $03
    rrca
    nop
    ld bc, $0000
    add c
    cp $f2
    db $fd
    cp $ff
    ccf
    rst $38
    rlca
    nop
    dec bc
    add l
    and $e1
    ld bc, $d800
    ldh [$ffb8], a
    ret nc

    ld [hl], b
    add b
    ldh [$fff8], a
    jr nz, jr_016_4e2b

    and b
    ret nz

    ldh [rP1], a
    ret nz

    nop
    ld e, $0f
    ld a, $1f
    inc a
    rra
    inc a
    rra
    ccf
    jr jr_016_4efb

    inc b
    ld d, l
    ld a, [hl+]
    ld e, e
    inc h
    rlca
    ld sp, hl
    rrca
    ldh a, [c]
    rla
    db $ec
    dec hl
    db $dd
    rst $10
    dec sp
    cp [hl]
    ld h, a
    dec l
    sub $c6
    jr c, jr_016_4e12

    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_4eb6

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, a
    jr z, jr_016_4f0f

    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_4eb6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_4efb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_4f0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $e3
    ld b, b
    cp h
    ld h, e
    call c, Call_016_6e77
    dec sp
    scf
    dec e
    dec sp
    ld c, $2d
    rla
    nop
    nop
    ldh [rP1], a
    add hl, de
    ldh [rTAC], a
    ld sp, hl
    adc [hl]
    ei
    ld e, l
    rst $30
    cp e
    adc $f6
    inc c
    ld h, b
    nop
    ldh [rLCDC], a
    and b
    ret nz

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld h, $1b
    dec sp
    dec b
    dec a
    ld d, $1f
    dec b
    rla
    add hl, bc
    rrca
    nop
    dec bc
    dec b
    dec c
    ld b, $ee
    ld d, b
    and [hl]
    ld e, b
    sbc $a4
    call z, $8cf0
    ldh a, [$ff9e]
    db $ec
    ei
    ld d, $be
    ld h, b
    rrca
    inc bc
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld l, b
    ldh a, [$ffc8]
    jr nc, jr_016_5096

    ret nz

    add sp, $70
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_016_50e2

    jr c, jr_016_50ac

    nop
    nop
    nop
    nop
    nop

jr_016_5075:
    inc bc
    nop
    inc bc
    ld bc, $0001
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
    db $f4
    rrca
    sbc [hl]
    di
    rst $20
    ld a, h
    ld a, c
    rra
    ld a, $07
    daa
    add hl, de
    ldh [rP1], a
    jr jr_016_5075

    inc b

jr_016_5096:
    ld hl, sp-$73
    ld hl, sp+$57
    ld sp, hl
    db $ec
    rla
    ld [hl], e
    xor a
    rst $18
    xor h
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    adc $7c
    inc a
    ldh a, [$fff0]

jr_016_50ac:
    ret nz

    ret nz

    nop
    nop
    nop
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    rrca
    nop
    dec bc
    dec b
    dec c
    ld b, $0f
    inc bc
    xor $50
    and $f8
    call nz, $ccf8
    ld [hl], b
    db $fc
    nop
    sbc $b4
    or a
    ld a, d
    ld h, $d8
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    ld b, $01
    dec b
    ld [bc], a
    dec c
    ld b, $1a
    inc c
    inc e
    nop
    ret c

jr_016_50e2:
    jr nz, @+$32

    ret nz

    add sp, $70
    or b
    ld b, b
    ld d, b
    jr nz, jr_016_5154

    jr nc, jr_016_5122

    jr jr_016_510c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld c, $04
    ld c, $04
    ld a, [de]
    inc c
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    rst $38
    nop
    ldh [$ff7f], a
    ld a, a

jr_016_510c:
    rra
    ccf
    nop
    ld [hl], $1f
    ld a, [de]
    inc c
    ld a, [$1a0c]
    db $ec
    ld a, [$3f04]
    ret c

    rst $20
    db $db
    ld hl, sp+$07
    rst $18
    or b
    nop

jr_016_5122:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    cp $f8
    rlca
    cp $ff
    nop
    inc h
    rra
    inc hl
    dec e
    dec [hl]
    ld a, [bc]
    ccf
    ld bc, $163b
    dec d
    dec bc
    rra
    nop
    ld a, [bc]
    rlca
    sbc $30
    jp c, Jump_016_5a34

    or h
    sbc $b0
    cp $a4
    db $fc
    and b
    cp $0c
    sbc e
    or $0d
    inc bc
    rlca

jr_016_5154:
    nop
    inc b
    inc bc
    ld c, $07

jr_016_5159:
    rlca
    ld bc, $0609
    dec e
    ld c, $1e
    nop
    halt
    cp b
    and h
    ld e, b
    ld hl, sp+$00
    jr z, jr_016_5159

    ldh a, [rLCDC]
    ret z

    jr nc, jr_016_51e2

    jr c, jr_016_51ac

    nop
    ld a, $00
    add hl, sp
    ld e, $1e
    rlca
    rla
    add hl, bc
    add hl, de
    ld c, $38
    rra
    dec l
    ld e, $36
    add hl, de
    nop
    nop
    pop hl
    nop
    ld a, a
    add c
    sbc [hl]
    rst $20
    jp hl


    ld e, [hl]
    ld l, [hl]
    sbc b
    sbc a
    ld h, [hl]
    ld a, c
    rst $20
    ld a, b
    nop
    db $f4
    ld a, b
    sbc b
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    add hl, sp
    rlca
    ld h, a
    ld e, $7e
    add hl, sp
    ccf
    ld bc, $163b
    dec d

jr_016_51ac:
    dec bc
    rra
    nop
    ld a, [bc]
    rlca
    or $99
    db $e3
    ld a, h
    jp nz, $c67c

    cp b
    cp $84
    db $ec
    ret nc

jr_016_51bd:
    cp $0c
    sbc e
    or $78
    ldh [$ff9c], a
    ld a, b
    ld h, [hl]
    inc e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    dec de
    ld b, $06
    ld bc, $0001
    nop

jr_016_51e2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    adc b
    rlca
    ret c

    adc a

jr_016_51ef:
    ld [hl], d
    rst $18
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
    jr nc, jr_016_51bd

    jr jr_016_51ef

    xor h
    ld hl, sp-$43
    ld e, a
    halt
    ccf
    ld l, e
    ld a, $47
    dec a
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    call c, $f678
    inc l
    xor d

jr_016_5216:
    call nc, $e4da
    db $f4
    jr z, jr_016_5294

    and b
    add sp, $30
    call c, $1fe8
    nop
    inc a
    dec de
    ld l, l
    inc sp
    ld a, d
    dec c
    dec sp
    inc e
    inc a
    inc bc
    ld de, $0e0e
    nop
    or $08
    db $fd
    ld b, [hl]
    ld [hl], a
    sbc d
    sbc [hl]
    ld hl, sp-$03
    ld [bc], a

jr_016_523b:
    db $db
    ld [hl], h
    swap h
    ld a, [hl]
    nop
    inc e
    nop
    rlca
    nop
    ldh [c], a
    pop hl
    add hl, de
    jr jr_016_5250

    ld b, $71
    ld [hl], c
    ld [$0008], sp

jr_016_5250:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [rLCDC], a
    ld [hl], b
    jr nz, jr_016_5216

    sub b
    ld l, h
    ld e, b
    inc a
    jr z, @+$18

    inc c
    ld c, $04
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_526d:
    ld [hl-], a
    rra
    dec a
    rra
    nop
    nop
    nop

jr_016_5274:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_523b

    jr jr_016_526d

    xor h
    ld hl, sp-$24
    ld a, b
    halt
    ccf
    ld l, e
    ld a, $47
    dec a
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld a, $01
    ld a, a
    ld a, [hl-]
    or $2c
    xor d

jr_016_5294:
    call nc, $e4da
    db $f4
    jr z, jr_016_5312

    and b
    db $ec
    jr nc, jr_016_5274

    db $ec
    xor $1c
    cpl
    inc e
    ld e, $01
    inc a
    rra
    ld a, l
    ld a, $3e
    ld bc, $1f2c
    ld de, $0e0e
    nop
    inc l
    ldh a, [$ffd0]
    ld h, b
    ld l, h
    add b
    or $28
    ld [hl], l
    jp c, $74db

    swap h
    ld a, [hl]
    nop
    sbc b
    add b
    sbc b
    add b
    ld d, h
    ld c, b
    ld c, h
    ld b, b
    ld a, [hl+]
    inc h
    ld l, $24
    rla
    ld [de], a
    rla
    ld [de], a
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
    ld [$1807], sp
    rrca
    ld [hl-], a
    rra
    ld e, h
    ld c, b
    inc a
    jr z, jr_016_531c

    inc l
    ld l, $24
    adc $04
    ld a, $c4
    ld a, [de]
    db $f4
    xor a
    ld a, [$1f3d]
    halt
    ccf
    ld l, e
    ld a, $47
    dec a
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    rst $18
    ld a, d
    rst $30
    inc l
    xor e
    call nc, $e4db
    rst $30
    ld a, [hl+]
    ld a, a
    and b
    rst $28
    ld [hl], $db
    and $3b

jr_016_5312:
    inc b
    ld a, [hl]
    dec sp
    ld a, a
    ld bc, $7cfb
    halt
    add hl, sp
    inc a

jr_016_531c:
    rlca
    ld de, $0e0e
    nop
    ld [$ce1c], a
    db $fc
    ld a, h
    add b
    or $28
    ld [hl], l
    jp c, $74db

    swap h
    ld a, [hl]
    nop
    dec a
    rra
    halt
    ccf
    ld l, e
    ld a, $47
    dec a
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    call c, $f678
    inc l
    xor d
    call nc, $e4da
    db $f4
    jr z, jr_016_53c5

    and b
    db $eb
    ld sp, $e3d6
    nop

jr_016_5352:
    nop
    rlca
    nop
    dec e
    ld b, $7e
    jr jr_016_5352

    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    ld hl, sp+$00
    ld a, $c0
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
    rra
    nop
    inc a
    dec de
    ld l, l
    inc sp
    ld a, d
    dec c
    dec sp
    inc e
    inc a
    inc bc
    ld de, $0e0e
    nop
    db $ed
    ld b, $fa
    ld c, h
    ld a, h
    sub b
    sbc [hl]
    ld hl, sp-$03
    ld [bc], a
    db $db
    ld [hl], h
    swap h
    ld a, [hl]
    nop
    nop
    nop
    jr c, jr_016_53cd

    ld b, b
    ld b, b
    rra
    nop
    ld a, h
    rra
    rst $38
    ld h, b
    ldh [$ff80], a
    add b
    nop
    jr nc, @+$32

    ld [$6008], sp
    ld h, b
    sbc b
    jr @+$66

    add h
    ld hl, sp+$00
    inc e
    nop
    ld b, $00
    ld [hl], b
    nop
    inc e
    nop
    ld a, [bc]
    inc b
    dec b
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_53c5:
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b

jr_016_53cd:
    ldh [rLCDC], a
    or b
    ld h, b
    ld [hl], b
    jr nz, jr_016_542c

    jr nc, @+$3a

    db $10
    cpl
    jr @+$1e

    dec bc
    ld a, [de]
    dec c
    ld a, $15
    dec a
    ld d, $7f
    ld [hl], $66
    dec sp
    ld b, a
    ld a, [hl-]
    ld c, a
    ld sp, $285f
    cpl
    inc de
    rla
    dec bc
    ld e, $01
    or $2c
    xor d
    ld d, h
    jp c, $f464

    xor b
    ld hl, sp-$60
    add sp, $50
    or b
    ld h, b
    ret z

    jr nc, jr_016_543f

    ld a, [de]
    ld l, a
    inc [hl]
    ld a, c
    ld c, $3b
    inc e
    ld a, $01
    inc l
    rra
    ld de, $0e0e
    nop
    ld d, b
    and b
    ld h, b
    add b
    db $ec
    nop
    halt
    xor b
    ld a, l
    jp nc, $74db

    swap h
    ld a, [hl]
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    ld c, $04
    inc e

jr_016_542c:
    ld [$1038], sp
    ld l, b
    jr nc, jr_016_54a2

    nop
    ret nz

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

jr_016_543f:
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
    add hl, bc
    ld b, $19
    ld c, $33
    dec e
    ccf
    dec e
    ld [hl], b
    jr nz, @-$2e

    ld h, b
    ldh [rLCDC], a
    and b
    ret nz

    ldh a, [$ff80]
    ret c

    or b
    ld l, h
    cp b
    call c, Call_016_7778
    dec a
    ld l, [hl]
    dec sp
    ld b, [hl]
    dec sp
    ld c, a
    ld [hl-], a
    ld e, a
    add hl, hl
    cpl
    db $10
    rla
    dec bc
    rra
    inc bc
    or $2c
    xor d
    ld d, h
    jp c, $f464

    jr z, @-$06

    and b
    add sp, -$50
    ldh a, [rLCDC]
    or b
    ld h, b
    dec a
    ld a, [de]
    ld l, a
    inc [hl]
    ld a, c
    ld c, $3b
    inc e
    ld a, $01
    inc l
    rra
    ld de, $0e0e
    nop
    ld d, b
    and b
    ld h, b
    add b
    db $ec
    nop

jr_016_5497:
    halt
    xor b
    ld a, l
    jp nc, $74db

    swap h
    ld a, [hl]
    nop
    nop

jr_016_54a2:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_54ba

    inc [hl]
    rra
    ld a, [hl-]
    rra
    dec [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_016_5497

    inc b
    ld hl, sp+$04

jr_016_54ba:
    ld hl, sp-$76
    db $fc
    or [hl]
    db $fc
    ld e, [hl]
    cp h
    daa
    ld a, [de]
    cpl
    ld de, $051f
    dec de
    dec b
    dec c
    inc bc
    rrca
    nop
    dec de
    dec c
    dec [hl]
    ld a, [de]
    or d
    ld c, h
    ld a, [$be24]
    ld l, b
    call c, $a420
    ret c

    db $fc
    nop
    xor $dc
    ld d, h
    xor b
    cpl
    ld [de], a
    cpl
    inc e
    ld e, $0d
    ld c, $03
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, e
    xor h
    rst $38
    ld b, $16
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b

Call_016_54fa:
    nop
    ld c, b
    jr nc, jr_016_5572

    jr c, jr_016_553c

    nop
    cpl
    inc e
    rra
    inc c
    inc c
    inc bc
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, e
    xor h
    rst $38
    ld b, $16
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_016_5592

    jr c, jr_016_555c

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56

jr_016_553c:
    db $fc
    xor [hl]
    call c, Call_000_2cd2
    dec h
    ld a, [de]
    dec sp
    rlca
    ccf
    db $10
    dec sp
    rlca
    ld l, l
    inc sp
    xor a
    ld [hl], b
    db $db
    ld [hl], l
    db $dd
    ld [hl], d
    ld [$eef4], a
    ldh a, [$fffe]
    add h
    db $ec
    ldh a, [$ffd4]
    ld l, b
    db $fc

jr_016_555c:
    nop
    xor $dc
    ld d, h
    xor b
    ld a, a
    ld [de], a
    scf
    ld [bc], a
    ld b, $01

jr_016_5567:
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, h

jr_016_5572:
    xor b
    or $2c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$76

    jr c, jr_016_55bc

    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5567

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cd2
    ld h, b

jr_016_5592:
    ld h, b
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    jr c, jr_016_55d7

    jr jr_016_55b9

    dec h
    ld a, [de]
    dec sp
    rlca
    ccf
    nop
    scf
    dec de
    ld l, l
    dec sp
    rst $08
    ld a, b
    rst $10
    ld a, c
    ld [hl], l
    ld a, [de]
    rra
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01

jr_016_55b7:
    ld c, $07

jr_016_55b9:
    rlca
    nop
    add hl, bc

jr_016_55bc:
    ld b, $1d
    ld c, $1e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    inc [hl]
    rra
    dec sp
    dec e
    dec [hl]
    ld a, [de]
    nop
    nop
    ldh [rP1], a
    jr jr_016_55b7

jr_016_55d7:
    inc b
    ld hl, sp+$4c
    ld hl, sp-$2a
    cp h
    xor d
    ld e, h
    sub $ec
    dec hl
    ld d, $3e
    ld bc, $173b
    dec sp
    rlca
    dec d
    dec bc
    rrca
    nop
    dec bc
    dec b
    dec d
    ld a, [bc]
    ld [$beb4], a
    ret nz

    xor $f4
    xor $70
    call c, $fe60
    inc c
    db $eb
    sub $56
    xor b
    ccf
    ld a, [de]
    scf
    ld a, [de]
    ld e, $01
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, [hl]
    xor h
    or $2c
    inc a
    ret nz

    add sp, $70

jr_016_5619:
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_016_5692

    jr c, @+$3e

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_016_564e

    inc [hl]
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5619

    inc b
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld d, $fc
    ld a, $1f
    dec hl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    scf
    ld [$173b], sp
    rra

jr_016_564e:
    nop
    dec e
    dec bc
    cp [hl]
    db $fc
    jp c, $b6fc

    call c, Call_000_2cd2
    ld l, $f0
    xor $f4
    cp $80
    rst $18
    ld [$0817], a
    dec de
    inc c
    ld e, $0d
    rrca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    nop
    nop
    or $08
    ld l, h
    sbc b
    cp h
    ld e, b
    ld a, b
    nop

jr_016_5679:
    ld c, b
    jr nc, jr_016_56f0

    jr c, @+$3e

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
    db $10
    rrca
    jr jr_016_569c

    jr c, jr_016_56ae

    dec l
    rra
    nop

jr_016_5692:
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_5679

    inc b
    ld hl, sp+$0c

jr_016_569c:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    ld [hl], $1f
    cpl
    rra
    inc h
    rra
    inc hl
    dec e
    scf
    ld [$173b], sp
    rra

jr_016_56ae:
    nop
    dec e
    dec bc
    or [hl]
    db $fc
    jp c, $a2fc

    call c, Call_000_2cd2
    ld l, $f0
    xor $f4
    cp $80
    rst $18
    ld [$0817], a
    ld a, [de]
    dec c
    rra
    inc c
    ld c, $03
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    or $08
    xor h
    ld e, b
    ld a, h
    sbc b
    ld hl, sp+$60
    ldh a, [rP1]

jr_016_56db:
    ld c, b
    jr nc, jr_016_5752

    jr c, @+$3e

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
    db $10
    rrca
    jr jr_016_56fe

    inc a

jr_016_56f0:
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_56db

    inc b

Jump_016_56fc:
    ld hl, sp+$0c

jr_016_56fe:
    ld hl, sp+$0e
    db $fc
    ld a, [hl+]
    rra
    scf
    rra
    dec hl
    rra
    inc hl
    dec e
    dec [hl]
    ld a, [bc]
    ccf
    db $10
    dec e
    ld b, $0b
    inc b
    sub [hl]
    db $fc
    ld l, [hl]
    db $fc
    or [hl]
    call c, Call_000_1ce2
    or $e8
    xor $94
    call c, $eeb0
    sub b
    dec c
    inc bc
    inc sp
    inc c
    ld a, a
    ld [hl+], a
    ccf
    add hl, de
    ld [hl], $1d
    dec de
    inc b
    ld a, [de]
    inc b
    inc c
    nop
    rst $18
    and $e6
    jr jr_016_57b5

    and d
    ldh a, [c]
    ld c, h
    ld a, [hl-]
    call c, Call_000_10fc

jr_016_573d:
    inc l
    db $10
    jr jr_016_5741

jr_016_5741:
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
    db $10
    rrca
    db $10
    rrca
    nop

jr_016_5752:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_573d

    inc b
    ld hl, sp+$04
    ld hl, sp+$34
    rra
    ld a, $1f
    dec sp
    rra
    inc [hl]
    rra
    inc hl
    dec e
    scf
    ld [$173b], sp
    rra
    nop
    ld d, $fc
    cp [hl]
    db $fc
    jp c, $b6fc

    call c, Call_000_2cf2

jr_016_577b:
    ld l, [hl]
    ldh a, [$fffe]
    db $f4
    cp $80
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_577b

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    inc [hl]
    rra
    inc hl
    dec e
    dec h
    ld a, [de]
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    rrca
    nop
    xor [hl]
    call c, Call_000_2cf2

jr_016_57b5:
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fee8
    inc b
    dec bc
    dec b
    dec d
    ld a, [bc]
    ccf
    ld [bc], a
    ld a, a
    add hl, de
    ld [hl], $1d
    dec de
    inc b
    ld a, [de]
    inc b
    inc c
    nop
    db $eb
    sub $de
    jr z, jr_016_5854

    and b

jr_016_57d7:
    di
    ld c, h
    ld a, [hl-]
    call c, Call_000_10fc
    inc l
    db $10
    jr jr_016_57e1

jr_016_57e1:
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_016_57d7

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    dec h
    ld a, [de]
    dec sp
    ld b, $3e
    ld de, $071b
    dec c
    inc bc
    ld [hl], a
    ld [$7bef], sp
    cp d
    ld h, l
    ld l, d
    db $f4
    cp $b0
    cp [hl]
    call nz, $f0ee
    call nc, $fe68
    inc b
    ei
    sub [hl]
    xor [hl]
    ld e, b
    ld l, [hl]
    dec b
    rrca
    inc b
    inc c
    inc bc
    dec e
    ld c, $0e
    nop
    ld [de], a
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    db $f4
    ld c, b
    db $fc
    ld e, b
    ld l, h
    sbc b
    ret c

    ldh [$fff0], a
    nop
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_584e

    jr nc, @+$21

    ld l, c
    ccf
    ld a, d
    ccf
    push de

jr_016_584e:
    ld a, [hl]
    cp a
    ld l, c
    nop
    nop
    add b

jr_016_5854:
    nop
    ld h, b
    add b
    db $10
    ldh [$ff38], a
    ldh a, [$ff58]
    ldh a, [$ffbc]
    ld hl, sp-$2c
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, $0000
    nop
    cp e
    ld b, a
    ld a, a
    dec d
    ld [hl], l
    ld c, $af
    rra
    rst $10
    adc e
    rst $38
    add b
    ld l, a
    rst $10
    or l
    ld l, d
    ld h, h
    sbc b
    or h
    ret z

    ld hl, sp+$50
    cp [hl]
    ret nz

    ld e, a
    and [hl]
    ld a, [$ae0c]
    ld [hl], b
    ld d, a
    cp [hl]
    ld a, l
    ld a, [bc]
    ld e, $09
    ld [$1f07], sp
    inc c
    dec c
    ld [bc], a
    dec c
    ld b, $1a
    inc c
    inc e
    nop
    cp a
    add $e6
    ld b, b
    ld d, b
    and b
    or b
    ld h, b
    ld l, b
    db $10
    ld c, b
    jr nc, @+$72

    nop
    nop
    nop
    cp a
    ld l, c
    cp e
    ld b, a
    ld a, a
    dec d
    ld [hl], l
    ld c, $2f
    rra
    rla
    dec bc
    ccf
    nop

Call_016_58bf:
    ld d, a
    ld a, [hl+]
    call nc, $6478
    sbc b
    or h
    ret z

    db $fc
    ld d, b
    cp [hl]
    call z, $9874
    ret c

    jr nz, jr_016_5938

    sub b
    ld bc, $0300
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    ld l, d
    cp e

Call_016_58e4:
    call z, $81ce
    add e
    ld bc, $0003
    rlca
    inc bc
    rlca
    nop
    nop
    nop
    cp h
    ret c

    ld l, h
    ret c

    ld a, [$5a04]
    or h
    or h
    ld c, b
    ld c, b
    add b
    add b
    nop
    nop
    nop

jr_016_5901:
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    jr jr_016_5901

    db $10
    rrca
    jr jr_016_5934

    ld a, [hl-]
    rra
    dec [hl]
    rra
    dec sp
    dec e
    scf
    ld a, [de]
    ld h, $19
    cpl
    rla
    inc b
    ld hl, sp+$0c

jr_016_5934:
    ld hl, sp-$61
    db $fc
    halt

jr_016_5938:
    db $fd
    ld e, d
    cp l
    di
    ld c, h
    ld l, a
    pop af
    rst $38
    push af
    ld [hl], b
    nop
    add sp, $10
    sbc h
    ld h, b
    xor $10
    and d
    call c, $c07c
    call nc, $d868
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
    nop
    rra
    ld bc, $137c
    rst $20
    ld a, b
    cp b
    ld h, b
    ld h, b
    nop

jr_016_596b:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld [de], a
    ld d, $e9
    db $fd
    inc bc
    dec e
    ld c, $1e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    or b
    ld b, b
    ret nz

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
    inc b
    ld hl, sp+$0c
    ld hl, sp-$62
    db $fc
    ld [hl], a
    db $fc
    db $db
    cp h
    ldh a, [c]
    ld c, l
    ld l, [hl]
    pop af
    rst $38
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_596b

    sub b
    ld h, b
    ld d, b
    and b
    ld d, b
    and b
    rra
    ld bc, $030c
    inc de
    inc c
    ld [hl-], a
    inc c
    ld [hl], h
    jr c, jr_016_5a14

    jr nc, jr_016_59ee

    nop
    nop
    nop
    db $ed
    inc de
    rra
    ldh [c], a
    ei
    dec d
    ei
    ld h, l
    ld a, e
    inc e
    inc a
    jr @+$1a

    nop
    nop
    nop
    ldh a, [rP1]
    add sp, -$70
    ld h, h
    sbc b
    and h
    ld e, b
    ld e, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_016_59f6

    ld b, b
    ccf
    ld h, b
    ccf
    jp nc, $ea7f

jr_016_59ee:
    ld a, a
    push de
    ld a, [hl]
    nop
    nop
    add b
    nop
    ld h, b

jr_016_59f6:
    add b
    db $10
    ldh [$ff30], a
    ldh [$ff38], a
    ldh a, [$ffd8]
    ldh a, [$ff78]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    dec b

jr_016_5a0c:
    inc bc
    dec c
    inc bc
    dec e
    dec bc
    sbc a
    ld l, c
    cp a

jr_016_5a14:
    ld b, h
    xor $15
    rst $38
    nop
    ld [bc], a
    db $fd
    ei
    db $fc

jr_016_5a1d:
    ei
    db $fd
    ld a, [$c8fd]
    jr nc, jr_016_5a0c

    sub b
    ld hl, sp-$60
    ld [hl], b
    add b
    ret c

    jr nz, @-$0a

    jr @-$40

    ld c, h
    call c, Call_000_1520
    dec bc
    dec c

Jump_016_5a34:
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    db $fd
    nop
    ld a, b
    nop
    ret nc

    ldh [rSVBK], a
    ldh [$ffe0], a
    nop

jr_016_5a57:
    and b
    ret nz

    ret nz

    nop
    jr nz, jr_016_5a1d

    ret nc

    ldh [$fff0], a
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070d
    ld d, $0f
    add hl, de
    rrca
    ccf
    ld [bc], a
    ldh [c], a
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_016_5a57

    inc [hl]
    ld hl, sp-$06
    call c, $2cd6
    ld [hl], l
    xor $fb
    ld d, $03
    nop
    ld b, $01
    add hl, bc
    rlca
    rrca
    rlca
    rla
    rrca
    ld d, $0f
    db $10
    rrca
    ld a, [bc]
    rlca
    push bc
    ld a, $76
    rst $08
    add sp, -$09
    rst $28
    ldh a, [$ff85]
    ei
    rlca
    ei
    rlca
    ld hl, sp+$0a
    push af
    db $fd
    ldh a, [c]
    rst $38
    ld [hl], h
    db $ed
    ld [hl], d
    sbc d
    ld h, h
    db $fc
    nop
    ld a, h
    adc b
    ld c, [hl]
    db $f4
    cp $24
    ld [$0607], sp
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $f5
    ccf
    call nz, Call_000_03cc
    dec e
    ld c, $0e
    nop
    ld [de], a
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    db $f4
    ld b, b
    ret nc

    ld h, b
    ld h, b
    add b
    ret nc

    ldh [$ffe0], a
    nop
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    ld bc, $0700
    ld bc, $070b
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    ret nz

    nop
    rst $30
    ret nz

    ld [$fcf7], a
    di
    rst $20
    ld hl, sp-$7b
    ld a, [$fa85]
    ld a, [bc]
    push af
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    sub b
    ld h, b
    add sp, $30
    ld a, b
    or b
    db $ec
    ld e, b
    db $f4
    xor b
    dec bc
    rlca
    ld b, $01
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
    dec bc
    push af
    ld sp, $d1ce
    ld l, $ed
    ld [de], a
    ld e, a
    jr nz, jr_016_5b9b

    inc sp
    dec [hl]
    ld a, [bc]
    dec e
    ld a, [bc]
    db $f4
    xor b
    ld a, h
    and b
    db $fc
    adc b

jr_016_5b37:
    add sp, -$30
    ld a, b
    ret nz

    cp b
    ld d, b
    ld [hl], h
    sbc b
    cp h
    ret z

    rra
    ld [$0718], sp
    rla
    dec c
    dec a
    jr jr_016_5b67

    nop
    dec [hl]
    jr jr_016_5bb6

    jr nc, jr_016_5bc0

    nop
    xor b
    ret nz

    ldh [rP1], a
    ld b, b
    add b
    ldh [$ffc0], a
    ret nz

    nop
    ld h, b
    ret nz

    or b
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca

jr_016_5b67:
    dec l
    rra
    ld a, [hl-]
    rra
    ld e, a
    inc [hl]
    ld c, l
    ld [hl-], a
    ld d, a
    ld a, [hl+]
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_5b37

    xor b
    ldh a, [$ffd8]
    ld [hl], b
    ld a, h
    cp b
    xor h
    ld e, b
    ld h, h
    ret c

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
    ld a, [bc]
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld l, e
    ld d, $7f
    add hl, de
    dec hl
    ld d, $1e
    rlca
    cp $01

jr_016_5b9b:
    rlca
    ld hl, sp-$09
    ei
    push af
    ld a, [$48f4]
    cp h
    ret nc

    ld [hl], h
    adc b
    add sp, $10
    ld hl, sp-$80
    call c, $b6e8
    ld c, h
    ld l, h
    add b
    dec bc
    rlca
    dec bc
    rlca
    dec bc

jr_016_5bb6:
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld [$0707], sp

jr_016_5bc0:
    nop
    push af
    ld a, [$f8f7]
    db $f4
    ei
    rst $30
    ld sp, hl
    push af
    ld hl, sp-$0b
    ld hl, sp+$05
    ld hl, sp-$08
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    and b
    ret nz

    ret nz

    nop
    jr nz, @-$3e

jr_016_5bdd:
    ret nc

    ldh [$fff0], a
    nop
    jr jr_016_5c1b

    inc a
    ld a, h
    ccf
    ld a, a
    inc c
    ld a, $07
    nop
    ld a, [bc]
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld l, e
    ld d, $7f
    add hl, de
    dec hl
    sbc l
    dec d
    ld c, $fd
    ld [bc], a
    rlca
    ld hl, sp-$09
    ei
    push af
    ld a, [$48f4]
    cp h
    ret nc

    db $f4
    ld [$d068], sp
    ld hl, sp-$40
    call c, $b628
    ld l, h
    ld e, h
    and b
    ldh [$ff80], a
    ret nz

    add b

jr_016_5c15:
    ret nz

    nop
    and b
    ret nz

    ret nz

    nop

jr_016_5c1b:
    jr nz, jr_016_5bdd

    ret nc

    ldh [$fff0], a
    nop
    ld bc, $0600
    ld bc, $070b
    inc d
    rrca
    rra
    dec bc
    ccf
    inc d
    cpl
    inc de
    scf
    dec c
    ldh [rP1], a
    jr jr_016_5c15

    inc h
    ld hl, sp-$06
    db $fc
    halt
    sbc h
    ei
    ld e, [hl]
    rst $18
    xor [hl]
    ei
    ld l, [hl]
    rrca
    ld bc, $0d1e
    dec de
    inc c
    dec c
    ld [bc], a
    ld b, $03
    ld [bc], a
    ld bc, $003b
    ld a, a
    ld a, [hl-]
    adc [hl]
    ld [hl], l
    push af
    adc [hl]
    rst $18
    xor h
    or a
    ld c, d
    ei
    inc b
    db $fd
    ld [hl], e
    ld d, [hl]
    xor c
    ei
    ld d, $20
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    add b
    nop
    ld [hl], a
    dec a
    dec sp
    dec b
    rra
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    db $db

jr_016_5c83:
    sbc [hl]
    ld l, c
    ld l, c
    db $10
    ld a, h
    jr c, @+$3a

    nop
    ld c, h
    jr nc, jr_016_5ce8

    inc a
    inc a
    nop
    ret nz

    add b
    ret nz

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
    rlca
    ld bc, $0132
    ld l, l
    jr nc, jr_016_5d1f

    inc a
    ld a, [hl-]
    rlca
    scf
    nop
    ld a, e
    ld sp, $0a7f
    adc [hl]
    ld [hl], l
    push af
    adc [hl]
    rst $18
    xor h
    or a
    ld c, d
    ld a, [$ff05]
    ld [hl], b
    ld d, [hl]
    xor a
    xor a
    ld d, c
    jr nz, jr_016_5c83

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ld [hl], a
    dec c
    dec sp
    dec b
    dec a
    nop
    jr jr_016_5cd9

jr_016_5cd9:
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld a, d
    sub c
    cp c
    ld d, b
    ld e, b
    jr nz, @-$0e

jr_016_5ce8:
    ld b, b
    ld a, b
    or b
    or b
    ret nz

    ret z

    ld [hl], b
    ld [hl], b
    nop
    ret nz

    add b
    add b
    nop
    nop
    nop

jr_016_5cf7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070b
    inc d
    rrca
    rra
    dec bc
    ccf
    inc d
    cpl
    inc de
    nop
    nop
    ldh [rP1], a
    jr jr_016_5cf7

    inc h
    ld hl, sp-$06
    db $fc
    halt
    sbc h
    cp e
    ld e, [hl]

jr_016_5d1f:
    rst $18
    xor [hl]
    ld b, $01
    rlca
    ld bc, $011a
    cpl
    jr jr_016_5d65

    ld e, $1c
    inc bc
    inc bc
    nop
    inc bc
    nop
    rst $38
    xor l
    adc [hl]
    ld [hl], l
    push af
    cp [hl]
    rst $38
    adc h
    and a
    ld e, b
    db $fd
    inc bc
    ei
    or $f6
    ld [$c060], sp
    jr nz, @-$3e

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ld h, b
    add b
    ldh a, [$ff60]
    ret nc

    ld h, b
    rlca
    inc bc
    rrca
    nop
    ld c, $07
    ld c, $01
    rlca
    nop
    ld bc, $0200
    ld bc, $0003
    cp h
    ld e, b
    db $f4
    sbc b

jr_016_5d65:
    cp h
    ld b, b
    ld d, b
    and b
    ldh [rP1], a
    sub b
    ld h, b
    ret nc

    ldh [$ffe0], a
    nop
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca
    scf
    dec e
    dec h
    ld a, [de]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$54
    ret c

    or $2c
    ld l, d
    db $f4
    cpl
    inc d
    dec a
    inc bc
    ccf
    rla
    dec sp
    rlca
    inc d
    dec bc
    rrca
    nop
    dec bc
    dec b
    rla
    ld a, [bc]
    ld a, [$de94]
    ldh [$fffe], a
    db $f4
    xor $70
    sub h
    ld l, b
    cp $04
    db $eb
    sub $76
    xor b
    cpl
    ld [de], a
    dec a
    ld a, [de]
    ld a, $19
    ld e, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, d
    and h
    sbc $2c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_016_5e52

    jr c, jr_016_5e1c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5e1c:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_5e36

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_5e36:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec de
    rlca
    ccf
    jr jr_016_5e83

    ld a, [de]
    ld e, e
    dec h
    ld c, e
    dec [hl]
    or d

jr_016_5e52:
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00

jr_016_5e5b:
    ld [hl], h
    ret c

    cp [hl]
    ld l, h
    ld c, h
    or b
    ccf
    ld bc, $0205
    dec b
    ld [bc], a
    rrca
    dec b
    dec b
    ld [bc], a
    add hl, bc
    ld b, $0f
    ld bc, $0003
    cp [hl]
    call z, Call_000_0cf6
    inc l
    ret nz

    sub b
    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop

jr_016_5e83:
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_5e92

    jr nc, jr_016_5eac

    ld l, d

jr_016_5e8e:
    ccf
    ld [hl], a
    dec a
    nop

jr_016_5e92:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_5e5b

    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]

Call_016_5ea0:
    ldh a, [$ffde]
    ld l, c
    xor e
    ld d, [hl]
    or a
    ld c, a
    ld e, e
    inc l
    dec a
    dec bc
    cpl

jr_016_5eac:
    rra
    ld e, $07
    scf
    jr jr_016_5e8e

    ld hl, sp-$54
    ld hl, sp-$3c
    ld a, b
    ld h, h
    sbc b
    db $fc
    and b
    ld a, [hl]
    adc h

Call_016_5ebd:
    db $f4
    ld e, b
    ld hl, sp-$80
    dec a
    ld a, [de]
    dec e
    ld b, $06
    ld bc, $0001
    ld bc, $0300
    ld bc, $0003
    nop
    nop
    ld e, [hl]
    cp b
    push af
    ld c, $df
    and [hl]
    or [hl]
    ld e, b
    db $f4
    adc b
    ld a, [hl+]
    call c, $3cfa
    ld a, h
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    dec h
    ld a, [de]
    ldh [rP1], a
    jr @-$1e

jr_016_5ef5:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$3bf4], a
    inc b
    dec a
    ld d, $3f
    inc b
    dec d
    ld a, [bc]
    rra
    ld bc, $0f15
    dec de
    inc c
    rrca
    ld [bc], a
    xor $90
    sbc $b4
    db $fc
    sub b
    call c, $fe60
    inc c
    xor $90
    rst $10
    ld l, $7b
    and [hl]
    rlca
    ld [bc], a
    ld b, $01
    rlca
    inc bc
    rrca
    inc b
    dec b
    ld [bc], a
    dec c
    ld b, $1a
    inc c
    inc e
    nop
    or $20
    jr nc, jr_016_5ef5

    ldh a, [$ff60]
    ld l, b
    db $10
    ld d, b
    jr nz, jr_016_5fa4

    jr nc, jr_016_5f72

    jr jr_016_5f5c

    nop
    ld l, l
    ccf
    ld d, [hl]

jr_016_5f44:
    ccf
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld l, e
    dec d
    ld a, l
    inc hl
    scf
    dec c
    dec de
    inc b
    ld l, h
    ld hl, sp-$64
    ld hl, sp+$64
    cp b
    and a
    ld e, b
    db $dd
    and $7f

jr_016_5f5c:
    add [hl]
    sub $68
    xor b
    ld d, b
    ld [hl], $1b
    dec sp
    rra
    rra
    nop
    ld e, $0d
    dec c
    ld [bc], a
    ld [de], a
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    ret nc

jr_016_5f72:
    jr nz, jr_016_5f44

    ld h, b
    add sp, $10
    ldh a, [$ff60]
    ld h, b
    add b
    sub b
    ld h, b
    add sp, $70
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
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_016_5f91

jr_016_5f91:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5fa4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_5ff5:
    nop
    nop
    nop
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    dec h
    ld a, [de]
    ldh [rP1], a
    jr jr_016_5ff5

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$3bf4], a
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    ld c, $01
    dec b
    inc bc
    nop
    inc bc
    nop
    nop
    xor $90
    sbc $b4
    db $fc
    sub b

jr_016_6037:
    call nc, Call_000_38e8
    ret nz

    ret nc

    ldh [rP1], a
    ldh [rP1], a
    nop
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    ld c, $01
    rlca
    inc bc
    dec c
    rlca
    nop
    inc bc
    xor $90
    sbc $b4
    db $fc
    sub b
    call nc, Call_000_38e8
    ret nz

    ldh a, [$ffe0]
    ret c

    ldh a, [rP1]

Call_016_6060:
    ldh [rP1], a
    nop
    rlca
    nop
    jr jr_016_606e

    jr nz, jr_016_6088

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_606e:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_6037

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp+$6f
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_6088:
    dec bc
    ld c, $01
    dec bc
    rlca
    nop
    rlca
    nop
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    and b
    ret nz

    nop
    ret nz

    nop
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    rrca
    rlca
    ld a, [de]
    rrca
    inc b
    rrca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    or b
    ldh [rLCDC], a
    ldh [$ff03], a
    nop
    inc c
    inc bc
    jr jr_016_60d6

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    daa
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_60d6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    dec b
    inc bc
    nop
    inc bc
    nop
    nop
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ldh a, [rP1]
    and b
    ret nz

    add b
    ret nz

    nop
    nop
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    dec b
    inc bc
    ld a, [bc]
    rlca
    ld b, $07
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ldh a, [rP1]
    and b
    ret nz

    ret nc

    ldh [$ffc0], a
    ldh [$ff3b], a
    rlca
    ccf
    db $10
    dec de
    rlca
    dec c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor $f0
    cp $84
    db $ec
    ldh a, [$ffd8]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_016_6161:
    cpl
    rla
    rra
    inc b
    rla
    rrca
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    call z, Call_016_54fa
    or h
    ret z

    ld l, b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    inc d
    ld e, $05
    rra
    inc c
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    call z, $d4fa
    or d
    call z, $9864
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    rrca
    nop
    dec b
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    db $f4
    jr z, jr_016_622c

    and b
    add sp, $30
    ret nc

    ldh [$ffe0], a
    nop
    ldh [$ffc0], a
    ldh a, [rNR41]
    ld [hl], b
    ldh [rTMA], a
    inc bc
    rlca
    inc bc
    rlca
    nop
    dec bc
    rlca
    rrca
    ld b, $0b
    rlca
    rlca
    nop
    nop
    nop
    ldh a, [$ff60]
    sub b
    ld h, b
    ldh [rP1], a
    and b
    ld b, b
    sub b
    ld h, b
    ld [hl], b
    add b
    ret nz

    nop
    nop
    nop
    ld c, l
    inc sp
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    rrca
    nop
    ld d, $0f
    ld l, $19
    ld a, e
    ld [hl], $f4
    jr z, @+$7a

    and b
    add sp, $30
    ret nc

    ldh [$ffe0], a
    nop
    ld b, b
    add b
    ldh [$ffc0], a
    ldh [rP1], a

jr_016_6201:
    ld l, a
    inc sp
    scf
    dec c
    dec de
    ld b, $17
    inc c
    ld c, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    ld d, b
    and b
    ldh [rLCDC], a
    jr nc, @-$1e

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
    nop
    nop
    nop
    nop
    nop

jr_016_622c:
    nop
    inc bc
    nop
    inc c
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
    ret nz

    nop
    jr nc, jr_016_6201

    db $10
    rrca
    ld hl, $321f
    dec e
    ld [hl], c
    ld a, $6b
    ld a, $7d
    ld a, $6b
    dec a
    ld b, e
    dec a
    ld e, b
    ldh a, [$ff6c]
    ld hl, sp-$24
    ld hl, sp-$4a
    ld l, h
    ld a, [$fa94]
    add h
    or [hl]
    ret c

    db $fc
    sub b
    daa
    ld a, [de]
    inc de

Jump_016_6264:
    inc c
    dec c
    ld [bc], a
    ld b, $01
    dec b
    inc bc
    ld b, $03
    rlca
    ld [bc], a
    rrca
    ld b, $e8
    ldh a, [$ff50]
    ldh [$ffe0], a
    nop
    ldh [$ffc0], a
    ldh [rP1], a
    ldh a, [$ff60]
    ld [hl], b
    ldh [rSVBK], a
    ldh [$ff0d], a
    ld b, $07
    nop
    rlca
    ld [bc], a
    ld a, [bc]
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    jr nc, @-$1e

    ldh [rP1], a
    ld h, b
    ret nz

    or b
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    daa
    ld a, [de]
    inc de
    inc c
    rrca
    nop
    ld [bc], a
    ld bc, $0305
    rrca
    ld b, $0d
    ld b, $06
    ld bc, $f0f8

jr_016_62b3:
    ret nc

    ldh [$ffe0], a
    nop
    ldh [$ffc0], a

jr_016_62b9:
    ld h, b
    add b
    ldh a, [$ff60]
    ld [hl], b
    ldh [rSVBK], a
    ldh [rSC], a
    ld bc, $0003
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    jr nc, jr_016_62b3

    ldh [rP1], a
    and b
    ld b, b
    ret nc

    ld h, b
    ld [hl], b
    and b
    ldh [$ff80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_62eb:
    ld [hl-], a
    rra
    dec a
    rra
    halt
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_62b9

    jr jr_016_62eb

    xor h
    ld hl, sp-$24
    ld a, b
    ldh a, [c]
    inc l
    ld l, e
    ld a, $4f
    ld sp, $2d5f
    scf
    dec c
    dec a
    dec bc
    ld e, $09
    dec de
    inc c
    cpl
    inc e
    xor d
    call nc, $e4da
    db $f4
    jr z, @+$7a

    and b
    add sp, $30
    ret nc

    ldh [$ffe0], a
    nop
    ld b, b
    add b
    cpl
    inc de
    ld a, $0f
    ld l, a
    inc e
    xor a
    ld e, e
    ld c, l
    scf
    inc sp
    dec c
    ld c, $01
    ld bc, $8000
    nop
    ld h, b
    add b
    ld e, b
    and b
    add sp, $50
    or b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld c, h
    inc sp
    ld e, a
    dec hl
    adc a
    di
    set 7, l
    ld [hl], a
    ld l, h
    ld de, $0013
    nop
    nop
    nop
    db $f4
    jr z, jr_016_63cc

    and b
    db $eb
    inc sp
    ld d, a
    rst $20
    ld l, h
    adc [hl]
    db $10
    sbc b

jr_016_635d:
    nop
    nop
    nop
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
    db $10
    rrca
    jr jr_016_6380

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_635d

    inc b
    ld hl, sp+$0c

jr_016_6380:
    ld hl, sp+$38
    rra
    dec l
    rra
    ld [hl], $1f
    dec hl
    rra
    jr nz, jr_016_63aa

    inc hl
    dec e
    scf
    ld [$163d], sp
    ld c, $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    jp z, $a2fc

    call c, Call_000_2cd2
    or $88
    sbc $b4
    dec de
    inc b
    dec e
    inc bc
    dec de
    inc c
    ld d, $0d
    dec bc

jr_016_63aa:
    ld b, $1f
    ld b, $3e
    jr jr_016_63ec

    nop
    rst $28
    sub d
    db $dd
    and $ee
    jr jr_016_63ec

    ret c

    add sp, $30
    ld a, h
    jr nc, @+$3c

    inc c
    ld e, $00
    dec h
    ld a, [de]
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    rrca

jr_016_63cc:
    nop
    dec de
    dec c
    dec a
    ld [de], a
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    sub $e8
    rst $38
    ld b, $ee
    ret c

    ld e, [hl]
    and h
    cpl
    ld a, [de]
    ccf
    ld a, [de]
    ld e, $01
    ld c, $07

jr_016_63e9:
    dec c
    inc bc
    inc de

jr_016_63ec:
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    halt
    xor h
    cp $2c
    inc a
    ret nz

    jr c, jr_016_63e9

    ret c

    ld h, b
    ld h, h
    jr @+$3c

    inc e
    ld e, $00
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld d, $0f
    inc e
    rrca
    inc sp
    dec e
    scf
    jr jr_016_643d

    ld d, $00
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$14
    sbc b
    sub [hl]
    ld l, h
    ld l, d
    sub h
    sbc $b4
    cpl
    inc d
    ccf
    rlca
    dec sp
    rla
    dec a
    inc bc
    rla
    ld [$051b], sp
    dec [hl]
    ld a, [de]
    ld l, a
    ld [hl-], a
    ld a, [$fe94]
    ld [hl], b
    xor $74
    sbc $60
    rst $30
    ld c, $ee
    ret nc

jr_016_643d:
    ld d, [hl]
    xor h
    ld a, e
    and [hl]
    ccf
    ld a, [de]
    ld l, $19
    inc e
    inc bc
    ld c, $07

jr_016_6449:
    dec c
    inc bc
    inc de
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    cp $2c
    ld a, [hl-]
    call z, $e01c
    jr c, jr_016_6449

    ret c

    ld h, b
    ld h, h
    jr @+$3c

    inc e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $03
    dec d
    ld c, $1e
    add hl, bc
    dec hl
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp b
    ld h, b
    ld d, h
    cp b
    cp h
    ret z

    ld [$3774], a
    rrca
    scf
    rrca
    scf
    rra
    scf
    rrca
    add hl, hl
    rla
    inc d
    dec bc
    rra
    ld bc, $122d
    or $78
    or $78

jr_016_6495:
    or $fc
    or $f8
    jp z, Jump_000_14f4

    add sp, -$04
    ret nz

    ld e, d
    and h
    ld a, a
    ld a, [hl-]
    ld l, $19
    inc e
    inc bc
    ld c, $07

jr_016_64a9:
    dec c
    inc bc
    inc de
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    db $fd
    ld l, $3a
    call z, $e01c
    jr c, jr_016_64a9

    ret c

    ld h, b
    ld h, h
    jr jr_016_64f8

    inc e
    ld e, $00
    inc bc

jr_016_64c2:
    nop
    inc c
    inc bc
    db $10
    rrca

jr_016_64c7:
    ld [hl+], a
    rra
    dec h
    rra
    ld l, [hl]
    ccf
    ld l, a
    ld a, [hl-]
    ld [hl], a
    ld a, [hl-]
    ret nz

    nop
    jr nc, jr_016_6495

    jr c, jr_016_64c7

    sbc h
    ld hl, sp-$54

Call_016_64da:
    ld a, b
    jp nc, Jump_016_6a3c

    call nc, Call_000_28de
    dec b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ld d, [hl]
    xor [hl]
    ld e, e
    sbc $2f
    ld e, l

jr_016_64f8:
    or d
    and a
    ld e, c
    ld a, a
    ld b, $6e
    ld sp, $45fe
    and [hl]
    ld b, b
    xor e
    ld b, [hl]
    rst $38
    ld c, $d6
    jr c, jr_016_64c2

    ld b, b
    ld h, b
    ret nz

    ret nc

    ld h, b
    ldh a, [$ff60]
    ld l, a
    inc [hl]
    ld a, h
    inc sp
    ccf
    inc c
    inc a
    nop
    ld d, h
    jr c, @-$1a

    ld a, b
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld a, b
    nop
    ld b, h
    jr c, jr_016_6566

    inc e
    ld e, $00
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld de, $0210
    ld bc, $0304
    ld b, h
    ld b, e
    adc l
    add a
    dec c
    rlca
    nop
    nop
    ld a, b
    nop
    add [hl]
    ld a, b
    rlca
    cp $53
    rst $38
    or a
    jp hl


    rst $18
    and $eb
    ld d, [hl]
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
    ld b, b
    add b
    ld b, b
    add b
    rst $28
    ld [hl], h
    cp a
    ld l, d
    ld d, l

jr_016_6566:
    dec hl
    ld e, e

jr_016_6568:
    dec h
    dec hl
    ld d, $1c
    inc bc
    rlca
    nop
    rrca
    inc b
    call z, $7430

jr_016_6574:
    ret c

    db $ec
    ld e, b
    rst $18
    add sp, -$49
    ld c, d
    ld a, [$fa24]
    call c, Call_016_5ebd
    xor a
    ld [hl], b
    ld a, b
    scf
    rst $38
    ld b, b
    ld l, b
    db $10
    ld d, h
    jr c, jr_016_6574

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    and b
    ret nz

    ldh [rP1], a
    ret nc

    ldh [$fff8], a
    nop
    ld b, h
    jr c, jr_016_65d6

    inc e
    ld e, $00
    nop
    nop
    ld l, a
    ccf

jr_016_65a3:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e
    inc [hl]
    ccf
    rlca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ldh [$ffc0], a
    ret nc

    jr nz, jr_016_6568

    ret nc

    cpl
    rla
    ld a, a
    jr nc, @+$6a

    scf
    dec sp
    inc b
    dec e
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    jr z, jr_016_65a3

    db $fc
    jr jr_016_6602

jr_016_65d6:
    ret c

    cp b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    rlca
    nop
    jr jr_016_65ec

    jr nz, jr_016_6606

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_65ec:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop

jr_016_65f3:
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$35

jr_016_6602:
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_6606:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, a
    jr nc, jr_016_6645

    dec bc
    rrca
    rlca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_016_668e

    and b
    and b
    ret nz

    rrca

jr_016_6622:
    rlca
    rrca
    nop
    ld [$1d07], sp
    ld a, [bc]
    dec c
    ld b, $16
    ld [$1c3a], sp
    inc e
    nop
    jr nz, jr_016_65f3

    ldh [rP1], a
    jr nz, @-$3e

    ld d, b
    and b
    ldh [$ffc0], a
    ret nc

    jr nz, @-$16

    ld [hl], b
    ld [hl], b
    nop
    ld l, a
    ccf
    dec [hl]
    rra

jr_016_6645:
    ld a, [hl+]

jr_016_6646:
    rla
    inc d
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, a
    jr nc, jr_016_6687

    dec bc
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_016_66d0

    and b
    rra
    rlca
    rla
    ld [$0708], sp
    rla
    ld [$1639], sp
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    or b
    ret nz

    ret nc

    jr nz, jr_016_6696

    ret nz

    ret nc

    jr nz, jr_016_6622

    ret nc

    ret nc

    ld h, b
    ld h, b
    nop
    nop

Jump_016_6680:
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla

jr_016_6687:
    inc d
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e

jr_016_668e:
    inc [hl]
    rst $38
    rlca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]

jr_016_6696:
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh a, [$ffc0]
    ret c

jr_016_669e:
    jr nc, jr_016_6646

    ret c

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
    nop
    nop

jr_016_66b1:
    rst $18
    rst $20
    xor a
    ret nz

    ret z

    rlca
    dec bc
    inc b
    dec e
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    scf
    adc $ed
    ld b, $26
    ret nz

    and b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b

jr_016_66d0:
    nop
    push af
    rra
    ld l, d
    rst $10
    db $f4
    res 3, [hl]
    ld h, c
    ld a, a
    dec de
    ld l, e
    inc [hl]
    ccf
    rlca
    rrca
    rlca
    ld e, [hl]
    ldh a, [$ffab]
    sub $5f
    and [hl]
    ldh a, [c]
    inc c
    db $fc
    ret z

    ret c

    jr nc, jr_016_669e

    ret nz

    jr nz, jr_016_66b1

    rrca
    nop
    ld [$0f07], sp
    ld [bc], a
    rra
    inc c
    dec c
    ld [bc], a
    rra
    inc c
    ld a, $10
    inc e
    nop
    ldh [rP1], a
    jr nz, @-$3e

    ldh [$ff80], a

jr_016_6707:
    ret nc

    ld h, b
    ld h, b
    add b
    ret nc

    ld h, b
    add sp, $10
    ld [hl], b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ldh [rP1], a
    jr jr_016_6707

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    dec h
    ld a, [de]
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    rrca
    nop
    dec bc
    dec b
    dec d
    ld a, [bc]
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fee8
    nop
    rst $28
    sub $56
    xor b
    rra
    ld a, [bc]
    scf
    ld a, [de]
    ld a, $19
    ld e, $07
    dec c
    inc bc
    inc de
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    ld a, h
    xor b
    or $2c
    ld a, $cc
    inc a
    ldh a, [$ffd8]
    ld h, b
    ld h, h
    jr @+$3c

    inc e
    ld e, $00
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    rlca
    ld bc, $060b
    rrca
    rlca
    ld h, h
    sbc b
    db $f4
    xor b
    ld l, b
    sub b
    ld hl, sp+$00
    db $f4
    ld e, b
    cp $8c
    xor h
    ld d, b
    ld l, b
    ret nc

    ld l, [hl]
    dec de

jr_016_6793:
    ld e, a
    jr nz, jr_016_6793

    ld e, [hl]
    ld e, d
    inc h
    sub l
    ld l, [hl]
    db $fd
    ld e, $3e
    nop
    nop
    nop
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    dec bc
    ld b, $0e
    rlca
    dec b
    inc bc
    ld h, h
    sbc b
    db $f4
    xor b
    ld l, b
    sub b
    ld hl, sp+$00
    db $f4
    ld e, b
    cp $8c
    db $ec
    ld d, b
    xor b
    ret nc

    ld a, [hl]
    inc bc

jr_016_67c3:
    ld e, a
    jr nz, jr_016_67c3

    ld e, [hl]
    ld e, d
    inc h
    sub l
    ld l, [hl]
    db $fd
    ld e, $3e
    nop
    nop
    nop
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rra
    nop
    ld l, l
    dec de
    ld a, [$ff5f]
    ld h, b
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ldh a, [rP1]
    ld d, b
    and b
    ret nc

    ld h, b
    ret nc

    ldh [$ff75], a
    ld [hl+], a
    ld h, $01
    dec b
    ld [bc], a
    rrca
    dec b
    dec b
    ld [bc], a
    add hl, bc
    ld b, $0f
    ld bc, $0003
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    dec bc
    ld b, $0d
    inc bc
    rla
    inc c
    dec a
    rrca
    ld a, h
    inc sp
    ld a, a
    inc a
    reti


    ld h, [hl]
    ld a, l
    ld [$64da], a
    or h
    ret z

    ld hl, sp+$00
    xor b
    ret nc

    ld l, b
    or b
    add sp, $30
    ld a, [hl]
    dec a
    rst $38
    ld a, h
    cp $1d
    rra
    nop
    ld [bc], a
    ld bc, $0304
    rlca
    nop
    ld bc, $e800
    ld [hl], b
    ld a, b
    add b
    ldh a, [rNR41]
    ret nc

    ldh [$ffc8], a
    jr nc, @-$56

    ld [hl], b
    ret c

    ldh [$ffe0], a
    nop
    nop
    nop
    nop

jr_016_6844:
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld [$0008], sp
    nop
    nop
    nop
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rra
    nop
    ld [hl], $19
    add hl, sp
    rlca
    ei
    ld e, $b2
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ldh a, [rP1]
    ld d, b
    and b
    ret nc

    ld h, b
    add sp, -$10
    ld c, a
    ld b, b
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ret c

    db $fd
    jp nz, $fcff

    rst $38
    ld a, d
    ld a, d
    ld bc, $0304
    rlca
    nop
    ld bc, $e800

jr_016_6892:
    ldh a, [$fff8]
    nop
    ldh a, [rNR41]
    ret nc

    ldh [$ffc8], a
    jr nc, jr_016_6844

    ld [hl], b
    ret c

    ldh [$ffe0], a
    nop
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    rlca
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $9864
    db $f4
    xor b
    ld a, b
    add b
    db $fc
    jr jr_016_6892

    and b
    ld d, h
    xor b
    cp d
    ld l, h
    ld a, h
    ret nc

    inc bc
    ld bc, $0207
    inc bc
    nop
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    adc h
    ld a, [$7c34]
    adc b
    ld c, b
    or b
    db $e4
    ld a, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    rrca
    inc bc
    rla
    inc c
    ld e, $0d
    or d
    call z, $d4fa
    or h
    ret z

    ld a, b
    add b
    db $fc
    jr @-$48

    ld c, h
    ld l, h
    ret nc

    ld a, [$3fdc]
    ld [de], a
    dec hl
    dec e
    inc de
    dec c
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
    ld a, [$9c1c]
    ld h, b
    call nz, Call_000_3838
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
    inc d
    ld e, $05
    rra
    inc c

jr_016_6927:
    dec bc
    rlca
    rlca
    nop
    rlca
    ld [bc], a
    dec bc
    dec b
    dec bc
    dec b
    or d
    call z, $d4fa
    or d
    call z, $9864
    ret c

    jr nz, @-$46

    ret nc

    db $fc
    ld c, b
    xor b
    ld b, b
    or $0c
    cp [hl]
    ld c, h
    ld e, [hl]
    jr nz, jr_016_69c1

    ld c, $9d
    ld h, [hl]
    db $fd
    ld e, $3e
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_695e

    jr nz, jr_016_6978

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_695e:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_6927

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp+$6f
    ccf

jr_016_6973:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_6978:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e
    inc [hl]
    ccf
    rlca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ldh [$ffc0], a
    ret nc

    jr nz, @-$56

    ret nc

    cpl
    rla
    ld a, a
    jr nc, jr_016_69fe

    scf
    dec sp
    inc b
    dec e
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    jr z, jr_016_6973

    db $fc
    jr jr_016_69d2

    ret c

    cp b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    ld bc, $0600
    ld bc, $070c
    inc e
    rrca
    dec de
    rrca
    ld a, $1f
    dec [hl]
    ld e, $22
    dec e

jr_016_69c1:
    ldh [rP1], a
    jr @-$1e

    inc c
    ld hl, sp+$06
    db $fc
    ld e, [hl]
    db $fc
    ei
    ld l, [hl]
    db $ed
    sub [hl]
    ld sp, hl
    halt
    daa

jr_016_69d2:
    add hl, de
    rra
    inc b
    ld d, $09
    ccf
    nop
    ld a, a
    scf
    rst $18
    ld h, b
    ld [hl], a
    dec bc
    ccf
    dec de
    db $fd
    ldh [c], a
    or $28
    db $fc
    ldh [$ff6c], a
    ldh a, [$fffa]
    inc c
    ld e, [hl]
    xor h
    ld h, h
    cp b
    cp b

jr_016_69f0:
    ret nc

    scf
    jr jr_016_6a0c

    rlca
    dec b
    ld [bc], a
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06

jr_016_69fe:
    nop
    nop
    nop
    ldh a, [rP1]
    db $10
    ldh [$ffd0], a
    jr nz, jr_016_69f0

    ld [hl], b
    ld d, h
    jr z, @+$6a

jr_016_6a0c:
    jr nc, jr_016_6a3e

jr_016_6a0e:
    nop
    nop
    nop
    ld c, l
    inc sp
    ld e, a
    ld a, [hl+]

jr_016_6a15:
    dec l
    inc de
    ld d, $09
    rrca
    nop
    rra
    dec c
    scf
    jr jr_016_6a3f

    ld [bc], a
    db $f4
    add sp, -$08
    jr nz, jr_016_6a0e

    ldh a, [$ffd0]
    ldh [$ffec], a
    nop
    cp $cc
    sub $2c
    call c, Call_016_5ea0
    jr z, @-$04

    ld h, h
    rst $18
    ld l, d
    ld a, d
    inc b
    xor c
    halt
    cp [hl]

Jump_016_6a3c:
    ld a, b
    ld a, b

jr_016_6a3e:
    nop

jr_016_6a3f:
    nop
    nop
    rlca
    nop
    jr jr_016_6a4c

    ld hl, $221f
    rra
    ld d, l
    ld a, $7f

jr_016_6a4c:
    ld a, $6b
    dec a
    ld [hl], a

jr_016_6a50:
    dec a
    ret nz

    nop
    jr nc, jr_016_6a15

    jr z, @-$0e

    ret c

    ldh a, [$ff7c]
    ret c

    cp h
    ld l, b
    ld [hl], h
    adc b
    call nc, Call_016_45e8
    ld a, [hl-]
    cpl
    inc de
    dec a
    dec bc
    ld a, [de]

jr_016_6a68:
    dec b
    rrca
    nop
    rrca
    dec b
    dec de
    inc c
    rra
    ld a, [bc]
    ld hl, sp+$20
    add sp, -$10
    add sp, -$70
    ld hl, sp-$80
    db $fc
    jr jr_016_6a68

    ret c

    ret c

    jr nz, jr_016_6a50

    and b
    sbc $28
    ld a, [$df64]
    ld l, d
    ld a, d
    inc b
    xor c
    halt
    cp [hl]
    ld a, b
    ld a, b
    nop
    nop
    nop
    ld c, a
    ld [hl-], a
    ld e, a
    dec hl
    dec l
    inc de
    ld d, $09
    rrca
    nop
    rra
    inc c
    ld [hl], $1b
    dec e
    ld b, $74
    add sp, -$08
    ldh a, [$fff0]
    and b
    and b
    ret nz

    ldh a, [rP1]
    ld a, b
    ldh [$ffec], a
    db $10
    xor d
    call nc, Call_000_1d3b
    dec a
    dec de
    dec de
    nop
    inc bc
    ld bc, $0205
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_016_6ac5:
    ld [$0800], sp
    nop
    inc d
    ld [$081c], sp
    inc e
    ld [$1c2a], sp
    ccf
    inc e
    ld a, $15
    ld [hl], $09
    ld [hl], $09
    scf
    add hl, bc
    ld a, [hl+]
    dec d
    ccf
    ld bc, $1a2d
    ldh [rP1], a
    jr jr_016_6ac5

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$3f94], a
    db $10
    dec e
    ld c, $1f
    inc c
    dec l
    ld [de], a
    dec [hl]
    dec de
    ld [de], a
    dec c
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    sbc $b0
    cp $94
    db $ec
    ldh a, [$ffd4]
    ld l, b
    ld a, h
    add b
    sbc $ec
    sbc e
    ld h, [hl]
    halt
    add b
    rlca
    ld [bc], a
    ld b, $01
    inc b
    inc bc
    rrca
    rlca
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    dec e
    ld c, $1e
    nop
    ret z

    jr nc, jr_016_6b60

    ret c

    db $ec
    jr nc, @-$44

    inc e

jr_016_6b29:
    ld e, h
    jr nz, @-$46

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0c02
    inc bc
    db $10
    rrca
    jr jr_016_6b4c

    jr c, jr_016_6b5e

    dec l
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_6b29

    inc b
    ld hl, sp+$0c

jr_016_6b4c:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    inc [hl]
    rra
    cpl
    ld a, [de]
    daa
    ld a, [de]
    scf
    ld a, [bc]
    ld a, [hl-]
    rla
    ld a, [de]
    rlca
    ld a, [bc]

jr_016_6b5e:
    rlca
    rla

jr_016_6b60:
    rrca
    or [hl]
    db $fc
    ld [$62dc], a
    sbc h
    or [hl]
    ld l, b
    cp $94
    rst $18
    or d
    db $ed
    sub [hl]
    ld e, [hl]
    add sp, $17
    rrca
    rlca
    rrca
    dec d
    rrca
    dec [hl]
    rra
    ld [de], a
    rrca
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    dec b
    ld a, [bc]
    ld [hl], h
    sbc b
    ld c, b
    ldh a, [$ff7c]
    add sp, $6c
    sub b
    ld a, [hl-]
    sbc h
    ld e, $80
    nop
    add b
    nop
    add b
    inc b
    dec de
    dec de
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    ld c, $04
    inc b
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_6bba

    jr c, jr_016_6bcc

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_016_6bba:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    dec hl
    rra
    ld hl, $361f
    dec bc
    ccf
    inc d
    dec e
    ld b, $0b

jr_016_6bcc:
    inc b
    rla
    add hl, bc
    dec de
    inc c
    ld [$62dc], a
    sbc h
    or [hl]
    ld l, b
    cp $94
    sbc $b0
    rst $28
    sub [hl]
    sub $e8
    db $ec
    jr jr_016_6bef

    ld [bc], a
    rla
    ld a, [bc]
    ccf
    ld a, [de]
    ld a, [de]
    rlca
    rrca
    rlca
    rrca
    dec b
    dec c
    ld [bc], a

jr_016_6bef:
    rrca
    ld [bc], a
    rra
    ld a, [bc]
    rra
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc b
    nop
    inc b
    nop
    dec hl
    rra
    ld hl, $361f
    dec bc
    ccf
    inc d
    dec e
    ld b, $0b
    inc b
    rra
    ld [$0a15], sp
    ld [$62dc], a
    sbc h
    or [hl]
    ld l, b
    cp $94
    call c, $eeb0
    sub h
    rst $18
    ld [$18f6], a
    rrca
    ld [bc], a
    ld a, [de]
    rlca
    ccf
    rla
    rra

Call_016_6c28:
    dec b
    dec c
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    dec b
    rrca
    rlca
    ret c

    ldh [$ffbc], a
    ld e, b
    call z, $ba30
    inc e
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    dec d
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc b
    nop
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
    ldh a, [rP1]
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

    dec [hl]

jr_016_6c68:
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    inc h
    ld a, e
    ldh [$fffd], a
    ld a, [de]
    ld a, $cc
    ld e, a
    and $e7
    db $db
    ld c, e
    or l
    sub [hl]
    ld l, l
    add hl, hl
    sbc $00
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
    ld l, $15
    rla
    add hl, bc
    rra
    ld b, $35
    ld e, $1f
    add hl, bc
    dec bc
    inc b
    dec bc
    dec b
    rra
    ld bc, $8cf3
    ld a, [$b494]
    ld c, b
    add sp, $50
    ret c

    ld h, b
    db $fc
    jr z, jr_016_6c68

jr_016_6cae:
    call z, $e49e
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_6cbc:
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, [de]
    ld a, $05
    ld h, a
    jr jr_016_6cbc

    ld a, b
    ld h, l
    jr jr_016_6ce4

    nop
    ld bc, $0100
    nop
    call nc, Call_016_6060
    add b
    jr nz, @-$3e

    or b
    ld h, b
    ldh a, [$ffc0]
    ret z

    jr nc, jr_016_6cae

    ldh [$ffe0], a
    nop
    nop
    nop
    nop

jr_016_6ce4:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $00
    ld c, $08
    inc e
    ld [$0c1c], sp
    jr @+$0e

    jr c, @+$16

    ld a, [hl-]
    inc d
    ld a, d
    ld [hl], e
    sbc $7d
    rst $10
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    rra
    ld [bc], a
    ld l, $11
    ld [hl], l
    adc a
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    cp $0c
    ld [hl], h
    sbc b
    cp b
    ret nz

    ld c, b
    or b
    cp e
    ld d, h
    ld [hl], h
    jr jr_016_6d42

    ld [$0c1a], sp
    ld c, $04
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ld e, a

jr_016_6d32:
    db $ec
    cp [hl]
    ld b, e
    rlca
    nop
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
    adc b

jr_016_6d42:
    ld [hl], b
    ldh a, [rP1]
    ret c

    ldh [$ffe4], a
    jr jr_016_6d32

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $04
    ld a, [de]
    inc c
    inc e
    ld [$1834], sp
    ld [hl], a
    jr jr_016_6d91

    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    rra
    ld [bc], a
    ld l, $11
    push af
    rrca
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00
    ld a, h
    sbc b
    or [hl]
    call z, $b04c
    or h
    ld e, e
    ld [hl], a
    jr jr_016_6da2

    ld [$0c1a], sp
    ld c, $04
    ld b, $00
    ld [bc], a
    nop
    nop
    nop

jr_016_6d91:
    rra
    db $ec
    cp $03
    rlca
    nop
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
    nop

jr_016_6da2:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rrca
    nop
    inc de
    dec c
    scf
    ld [$37ca], sp
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    db $fc
    nop
    cp [hl]
    ld c, h
    ld l, a
    sub $ee
    ret nc

    ld b, $03
    dec b
    inc bc
    dec bc
    dec b
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_016_6de0:
    nop
    cp a
    ld b, [hl]
    adc $01
    add [hl]
    inc bc
    jp Jump_016_6680


    jp Jump_000_20ff


    jr c, jr_016_6def

jr_016_6def:
    nop
    nop
    ret z

    jr nc, @-$06

    nop
    db $f4
    ld a, b
    ld c, b
    or b
    db $e4
    jr jr_016_6de0

    ld a, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc d
    ld [$081c], sp
    inc e
    ld [$1c2a], sp
    ld a, $1c
    ld a, $14
    cp $08
    ld a, $d4

jr_016_6e17:
    ld a, $dc
    ld a, [hl+]
    call c, $e81c
    ld e, h
    add sp, -$4c
    add sp, $6f
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ld a, $07
    db $fc
    ldh [$ff5c], a
    ldh [$ffb4], a
    ret z

    ld e, [hl]
    and h
    cp $0c
    ld a, [$d4c4]
    jr z, @-$52

    ld a, b
    rrca
    inc bc
    dec bc
    inc b
    ld [$1b07], sp
    inc c
    cpl
    ld d, $1a
    inc c
    inc c
    nop
    nop
    nop
    ld a, b
    sub b

jr_016_6e53:
    ldh a, [rP1]
    jr nz, jr_016_6e17

    and b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    nop
    ld [$0800], sp
    ld [$0808], sp
    ld [$1c08], sp
    ld [$081c], sp
    inc e
    ld [$001c], sp
    nop
    rlca
    nop
    jr jr_016_6e7e

Call_016_6e77:
    jr nz, jr_016_6e98

    jr nz, jr_016_6e9a

jr_016_6e7b:
    ld b, l
    ccf
    ld d, [hl]

jr_016_6e7e:
    ccf
    ld l, a
    ccf
    ld [$c81c], sp
    inc e
    jr c, jr_016_6e53

    ld [$08f4], sp
    db $f4
    ld b, h
    ld hl, sp-$2c
    ld hl, sp-$14
    ld hl, sp+$7b
    ccf
    dec [hl]
    rra
    ld a, b
    daa
    ld e, a

jr_016_6e98:
    jr nc, jr_016_6ed1

jr_016_6e9a:
    dec de
    ccf
    inc b
    ccf
    inc de
    rra
    inc c
    cp h
    ld hl, sp+$58
    db $f4
    jr z, jr_016_6e7b

    ret nc

    inc l
    ldh a, [$ff8c]
    add sp, $54
    ld l, h
    sub b
    call nc, $3c68
    inc de
    jr jr_016_6ebc

    dec de
    inc c
    cpl
    ld d, $1a
    inc c
    inc c

jr_016_6ebc:
    nop
    nop
    nop
    nop
    nop
    ld l, b
    sub h
    jr c, @-$3a

    cp b
    ld c, h
    ret c

    db $e4
    or h
    ld c, b
    ret c

    ld h, b
    add sp, $10
    ld [hl], b
    nop

jr_016_6ed1:
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    scf
    ld [$037f], sp
    rst $38
    ld [hl], h
    ld a, a
    inc bc
    rrca
    rlca
    db $ec

jr_016_6ee2:
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ret c

    jr nz, jr_016_6ee2

    add b
    db $f4
    ld c, b
    ld l, h
    or b
    or h
    ret c

    rra
    ld [$0718], sp
    dec de
    inc c
    cpl
    ld d, $1a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    call nc, Call_000_3c28
    ret nz

    xor h
    ld d, b
    call nc, $b8e8
    ld b, b
    ret c

    ld h, b
    add sp, $10
    ld [hl], b
    nop
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, a
    jr nc, jr_016_6f5f

    rlca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ld hl, sp+$00
    ld hl, sp-$40
    call nc, Call_016_6c28
    or b
    cpl
    rla
    rra
    nop
    ld [$0b07], sp
    inc b
    dec e
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    cp h
    ret nc

    db $f4
    ld [$c834], sp
    xor h
    ld d, b
    ret c

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    ld e, b
    or b
    cp h
    ld l, b
    db $fc
    ld h, b
    ld a, [$9e1c]
    nop
    add b
    nop
    add b
    nop

jr_016_6f5f:
    add b
    nop
    add b
    nop
    nop
    nop

jr_016_6f65:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ldh [$fff0], a
    nop
    ldh [rLCDC], a
    and b
    ret nz

    sub b
    ld h, b
    ld d, b
    ldh [$ffb0], a
    ret nz

    ret nz

    nop
    cp d
    call nz, Call_000_30cc
    db $10
    ldh [$ff58], a
    or b
    ld hl, sp-$40
    call z, $f838
    ret nz

    ret nz

    nop
    rlca
    nop
    ld [$1807], sp
    rrca

jr_016_6f97:
    ld [hl-], a
    rra
    ccf
    rra
    ld [hl], l
    ccf
    ld l, e
    ld a, $47
    dec a
    ret nz

    nop
    jr nc, jr_016_6f65

    jr jr_016_6f97

    xor h
    ld hl, sp-$24
    ld a, b
    or $2c
    xor d
    call nc, $24da
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $070c
    ld a, [de]
    rrca
    dec e
    rrca
    scf
    ld a, [de]
    ld a, [hl+]
    dec d
    dec l
    inc de
    ldh a, [rP1]
    ld [$0cf0], sp
    ld hl, sp-$5a
    db $fc
    sbc [hl]
    ld a, h
    rst $10
    ld a, [hl]
    db $eb
    cp [hl]
    pop af
    sbc $05
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $003f
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5f
    inc a
    ld a, [hl]
    dec a
    or $99
    rst $18
    cp d
    or $99
    ld l, l
    ldh a, [c]
    rst $38
    nop
    ld a, c
    ld d, $f7
    dec c
    rst $08
    ld a, e
    ld b, b
    add b
    ld b, b
    add b
    ldh [rP1], a
    ldh a, [$ff60]
    and b
    ret nz

    ret nz

    nop
    ld b, b

jr_016_704e:
    add b
    ld b, b
    add b
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp l
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $0102
    rst $38
    ld h, b
    cp $0d
    db $eb
    or [hl]
    di
    sbc h
    or $c9
    rst $38
    ret nz

    call c, Call_016_58bf
    cp a
    ret nz

    nop
    ld b, b
    add b
    ldh [rP1], a
    or b
    ret nz

    add sp, $50
    db $e4
    ld e, b
    or h
    ld c, b
    call nc, $d808
    scf
    or a
    ld e, b
    cp b
    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr c, jr_016_708d

jr_016_708d:
    nop
    nop
    nop
    nop
    ld l, e
    or b
    reti


    jr nc, jr_016_704e

    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr nc, jr_016_709d

jr_016_709d:
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5f
    inc a
    ld a, a
    inc a
    ld a, a
    ld [hl], $7f
    scf
    or $99
    rst $18
    cp d

jr_016_70b5:
    or $99
    ld l, l
    ldh a, [c]
    rst $38
    nop
    ld a, h
    dec de
    cp e
    ld b, [hl]
    rst $30
    dec e
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ldh [rP1], a
    ldh a, [$ffe0]
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ld a, a
    scf
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $010e
    dec de
    inc c
    dec d
    dec bc
    rst $38
    sbc b
    cp a
    add $f7
    reti


    ld sp, hl
    adc $fa
    push bc
    db $fc
    jp $df6e


    xor h
    rst $18
    and b
    ld b, b
    jr nz, jr_016_70b5

    ret nz

    nop
    or b
    ret nz

    ret z

    ld [hl], b
    db $f4
    ld c, b
    ld l, [hl]
    add b
    ld b, b
    add b
    rst $38
    jr @+$26

    jr jr_016_7142

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    ld a, d
    ld a, e
    ld b, $17
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5f
    inc a
    or $99
    rst $18
    cp d
    or $99
    ld l, l
    ldh a, [c]
    rst $38
    nop
    ld a, l
    ld a, [de]

jr_016_713d:
    cp a
    ld b, l
    db $eb
    dec e
    ld b, b

jr_016_7142:
    add b
    ld b, b
    add b
    add b
    nop
    ret nz

    nop
    and b
    ret nz

    ldh a, [$ff60]
    ld h, b
    add b
    and b
    ret nz

    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $70ef
    call c, $fe63
    dec c
    rst $28
    or d
    di
    sbc h
    rst $30
    ret


    rst $38
    db $e3
    ei
    rst $30
    db $fc
    nop
    ld h, [hl]
    sbc b
    db $db
    ld h, b
    ldh [rLCDC], a
    ld h, b
    add b
    jr nc, jr_016_713d

    inc l
    ret nc

    inc [hl]
    ret c

    ld a, a
    ld a, $5e
    dec a
    ld l, a
    inc e
    ld e, d
    inc l
    jp c, $ac6c

    ld e, b
    db $e4
    jr jr_016_71cc

    nop
    add hl, de
    and $e7
    nop
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
    dec b
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $003f
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5f
    inc a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp l
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $0102
    rst $38
    ld h, b
    cp $0d
    db $eb
    or [hl]
    di
    sbc h
    or $c9
    rst $38

jr_016_71cc:
    ret nz

    call c, Call_016_58bf
    cp a
    ret nz

    nop
    ld b, b
    add b
    rst $20
    nop
    cp d
    call nz, Call_016_58e4
    ld hl, sp+$40
    or b
    ld b, b
    and b
    ld b, b
    ret c

    scf
    or a
    ld e, b
    ld l, d
    inc e
    ld [hl-], a
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    or b
    add sp, $30
    or b
    ld h, b
    sub b
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
    inc bc
    nop
    inc c
    inc bc
    jr jr_016_7218

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_016_7218:
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc
    sub $7c
    or a
    ld c, a
    sbc a
    ld l, c
    ld e, l
    dec hl
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    call nz, $6478
    sbc b
    cp $a4
    ld a, d
    adc h
    or $18
    ld sp, hl
    ld b, [hl]
    db $fd
    sub [hl]
    db $dd
    ld [hl], $3f
    nop
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5e
    dec a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    rst $10
    ld a, b
    db $fc
    ld h, e
    ld a, [hl]
    dec c
    db $eb
    ld [hl], $73
    sbc h
    db $f4
    dec bc
    ld a, h
    add a
    xor $df
    ld b, b
    add b
    ld b, b
    add b
    cp h
    nop
    and $18
    db $db
    ldh [$ffe0], a
    ld b, b
    ld a, b
    add b
    ld h, h
    sbc b
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or [hl]
    ld a, c
    ld a, l
    ld [bc], a
    dec bc
    dec b
    dec c
    inc bc
    inc b
    inc bc
    inc bc
    nop
    ldh a, [$ffef]
    rst $38
    ldh a, [rIE]
    rst $38
    ld l, a
    ldh a, [$ff90]
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    sbc h
    ld h, b
    ldh a, [c]
    db $fc
    ld h, d
    sbc h
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    daa
    ld c, a
    inc [hl]
    ld l, $15
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $02fd
    ldh [c], a
    cp h
    or d
    call z, $d0fe
    cp a
    add $7a
    adc h
    db $fd
    ld [hl+], a
    db $fd
    ld d, [hl]
    db $dd
    ld [hl], $77
    ld a, [hl+]
    ld e, l
    ld h, $5e
    dec a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp a
    ld a, a
    db $db
    ld a, h
    cp $61
    cp $0d
    ld l, e
    or [hl]
    ldh a, [c]
    dec e
    ld [hl], h
    adc e
    cp $c7
    ldh a, [$ffef]
    rst $18
    nop
    ld h, d
    sbc h
    ld c, h
    or b
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ld a, b
    add b
    ld h, h
    sbc b
    sbc h
    ld h, b
    ld sp, hl
    ld a, a
    or [hl]
    ld a, c
    ld a, e
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld a, [bc]
    dec b
    ld c, $01
    inc bc
    nop
    rst $38
    ldh a, [$ffcf]
    rst $38
    rst $18
    ldh [$ffa0], a
    ret nz

    and b
    ret nz

    ret nz

    add b
    ld b, b
    add b
    ret nz

    nop
    ld a, [$62fc]
    sbc h

jr_016_7315:
    sbc [hl]
    nop
    nop
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
    db $10
    rrca
    db $10
    rrca
    dec h
    rra
    ld a, [hl+]
    rra
    ccf
    rra
    inc [hl]
    rra
    ldh [rP1], a
    jr jr_016_7315

    inc b
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    adc d
    db $fc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_1d23
    scf
    ld [$163d], sp
    rra
    inc b
    dec e
    inc bc
    rla
    ld [$0e15], sp
    ld a, e
    rla
    ldh a, [c]
    inc l
    xor $90
    sbc $b4
    cp $90
    rst $18
    and $ee
    db $10
    db $ec
    or b
    sbc $68
    sbc $6b
    rst $08
    ld [hl], b
    ld l, [hl]
    ld sp, $057a
    cp a

jr_016_736a:
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    sbc e
    ld h, a
    db $fd
    sub $f9
    adc $f2
    inc c
    ld e, [hl]
    and b
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    reti


    and $77
    dec bc
    dec de
    dec c
    dec de
    dec c
    inc de
    dec c
    rra
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    xor $d0
    ret c

    or b
    ret c

    or b
    ret z

    or b
    ld hl, sp-$30
    ldh a, [$ffc0]
    and b
    ret nz

    ret nz

    nop
    sbc $6b
    bit 6, h
    ld l, [hl]
    ld sp, $053a
    ld e, a
    jr nz, jr_016_736a

    ld b, l
    db $dd
    ld h, [hl]
    db $db
    ld h, a
    db $fd
    sub $f9
    adc $f2
    inc c
    ld e, h
    and b
    ei
    inc b
    ld a, l
    and d
    cp c
    ld h, [hl]
    reti


    and $97
    ld l, e
    ld a, e
    dec c
    dec de
    dec c
    inc de
    dec c
    rla
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    jp hl


    sub $de
    or b
    ret c

    or b
    ret z

    or b
    add sp, -$30
    ldh a, [$ffc0]
    and b
    ret nz

jr_016_73df:
    ret nz

    nop
    sbc $6b
    rst $08
    ld [hl], b
    ld l, a
    ld [hl], $36
    add hl, bc
    ld e, d
    dec h
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    db $fd
    sub $f9

jr_016_73f4:
    adc $f2
    inc l
    ld l, h
    sub b
    ld e, d
    and h
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    sbc e
    ld h, a
    ld [hl], a
    dec bc
    dec de
    dec c
    rla
    add hl, bc
    rrca
    ld bc, $0305
    inc b
    inc bc
    inc bc
    nop
    reti


    and $ee
    ret nc

    ret c

    or b
    add sp, -$70
    ldh a, [$ff80]
    and b
    ret nz

    jr nz, jr_016_73df

    ret nz

    nop
    inc hl
    dec e
    scf
    ld [$163d], sp
    rra
    inc b
    dec d
    dec bc
    dec de
    inc c
    ld a, e
    rla
    sbc $6b
    ldh a, [c]
    inc l
    xor $90
    sbc $b4
    rst $38
    sub d
    db $dd
    and $ee
    jr jr_016_73f4

    ld a, b
    db $fd
    add $cf
    ld [hl], b
    ld l, d
    dec [hl]
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    sbc e
    ld h, a
    ld [hl], a
    dec bc
    dec de
    dec c
    ld sp, hl
    adc $d2
    inc l
    db $fd
    ld [bc], a

jr_016_7457:
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    reti


    and $ee
    ret nc

    ret c

    or b
    dec de
    dec c
    inc hl
    dec e
    cpl
    dec de
    ccf
    dec de
    dec e
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ret c

    or b
    call nz, $f4b8
    ret c

    db $fc
    ret c

    cp b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_748e

    jr nz, jr_016_74a8

    ld [hl+], a
    rra
    ld d, l
    ccf
    ld l, a

jr_016_748e:
    ccf
    ld a, a
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_7457

    ld [$88f0], sp

jr_016_749a:
    ldh a, [rHDMA4]
    ld hl, sp-$14
    ld hl, sp-$04
    ld hl, sp+$7a
    ccf
    inc [hl]
    rra
    jr z, jr_016_74be

    rla

jr_016_74a8:
    ld [$033f], sp
    ld a, a
    inc [hl]
    rst $10
    ld l, e
    ld a, a
    rlca
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_749a

    add b
    ldh [rLCDC], a
    ld d, b

jr_016_74be:
    and b
    cp b
    ret nz

    ld a, a
    daa
    ld [hl], a
    jr z, @+$55

    cpl

jr_016_74c7:
    dec hl
    inc d
    ld e, l
    inc hl
    cp a
    ld b, a
    rst $10
    ld l, a
    sbc $6f
    or h
    ret z

    call nc, $9428
    add sp, -$14
    db $10
    cp d
    call nz, $e2fd
    jp hl


    or $f9
    or $9e
    ld l, l
    ld a, d
    dec c
    rra
    ld [$081c], sp
    inc d
    ld [$081c], sp
    jr jr_016_74ef

jr_016_74ef:
    nop
    nop
    cp c
    halt
    ld e, [hl]
    or b
    jr c, jr_016_74c7

    cp b
    ld d, b
    add sp, $10
    cp b
    db $10
    jr jr_016_74ff

jr_016_74ff:
    nop
    nop
    ld a, d
    ccf
    inc [hl]
    rra
    jr z, jr_016_751e

    rla
    ld [$037f], sp
    rst $38
    ld [hl], h
    ld [hl], a
    dec bc
    ccf
    rlca
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, @-$1e

    add b
    ldh [rLCDC], a
    ld d, b

jr_016_751e:
    and b
    ld hl, sp-$40
    ld a, a
    jr z, jr_016_759c

    daa
    ld d, e
    cpl
    dec hl
    inc d
    ld e, l
    inc hl
    cp a
    ld b, a
    rst $10
    ld l, a
    rst $18
    ld l, a
    call nc, Call_000_3428
    ret z

    sub h
    add sp, -$14
    db $10
    cp d
    call nz, $e2fd
    jp hl


    or $79
    or $9f
    ld l, [hl]
    ld a, [hl]
    dec c
    ld e, $09
    ld d, $09
    dec e
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld a, c
    or [hl]
    cp $30
    cp b
    db $10
    xor b
    db $10
    cp b

jr_016_755a:
    db $10
    or b
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ccf
    inc [hl]
    rra
    jr z, jr_016_757e

    ld [hl], a
    ld [$63ff], sp
    ld e, a
    inc [hl]
    scf
    dec bc
    rra
    rlca
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_755a

    add b
    ldh [rLCDC], a
    ld d, b

jr_016_757e:
    and b
    or b
    ret nz

    ccf
    inc b
    ld a, h
    inc hl
    ld [hl], e
    cpl
    ld c, b
    scf
    cpl
    db $10
    ld d, l
    dec hl
    cp a
    ld b, a
    rst $10
    ld l, a
    cp b
    ld b, b
    ld [hl], h
    adc b
    sub h
    add sp, $24
    ret c

    db $ec
    db $10
    cp d

jr_016_759c:
    call nz, $e2fd
    ld l, c
    or $df
    ld l, [hl]
    sbc [hl]
    ld l, l
    halt
    dec c
    ld a, [bc]
    dec b
    dec bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, c
    or [hl]
    ld a, c
    or [hl]
    xor $30
    ret nc

    jr nz, jr_016_760a

jr_016_75ba:
    and b
    and b
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ccf
    inc [hl]
    rra
    jr z, jr_016_75de

    rla
    ld [$033f], sp
    ld e, a
    inc [hl]
    rst $30
    ld l, e
    ld a, a
    rlca
    cp h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_75ba

jr_016_75da:
    add b
    ldh [rLCDC], a
    ld d, b

jr_016_75de:
    and b
    cp b
    ret nz

    ld a, a
    daa
    ld [hl], a
    jr z, @+$55

    cpl
    cpl
    db $10
    ld e, e
    daa
    or a
    ld c, a
    rst $18
    ld l, a
    sbc $6f
    or h
    ret z

    call nc, $9428
    add sp, -$14
    db $10
    jp c, $ede4

    ldh a, [c]
    ld sp, hl
    or $f9
    or $9e
    ld l, a
    halt
    dec c
    ld d, $0d
    ld [de], a
    dec c
    ld a, [de]

jr_016_760a:
    dec c
    ld a, $19
    dec a
    jr jr_016_7629

    nop
    ld sp, hl
    halt
    ld l, [hl]
    or b
    ld l, b
    or b

jr_016_7617:
    ld c, b

jr_016_7618:
    or b
    ret c

    jr nc, jr_016_7618

    jr jr_016_75da

    jr jr_016_7638

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca

jr_016_7629:
    jr jr_016_763a

    jr c, jr_016_764c

    dec a
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_016_7617

    inc b

jr_016_7638:
    ld hl, sp+$0c

jr_016_763a:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    dec hl
    rra
    jr nz, jr_016_7664

    inc sp
    dec c
    ccf
    db $10
    dec e
    ld b, $0b

jr_016_764c:
    inc b
    dec c
    inc bc
    rla
    ld [$fcda], sp
    and d
    call c, Call_000_28f6
    cp $94
    sbc $b0
    rst $28
    sub [hl]
    sbc $e0
    db $f4
    ld [$0a1d], sp
    rla

jr_016_7664:
    ld a, [bc]
    ld a, $19
    cpl
    ld a, [de]
    rra
    ld bc, $0609
    dec e
    ld c, $0e
    nop
    ld e, h
    xor b
    db $f4
    jr z, jr_016_76b4

    call z, $ac76
    db $ec
    ld d, b

jr_016_767b:
    ld [hl], h
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_016_769e

    jr c, @+$21

    sub b
    sub b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    jr jr_016_767b

    inc b
    ld hl, sp+$0c

jr_016_769e:
    ld hl, sp+$0e
    db $fc
    dec a
    rra
    ld [hl], $1f
    dec hl
    rra
    jr nz, jr_016_76c8

    inc sp
    dec c
    dec a
    ld [de], a
    rra
    ld bc, $060b
    ld e, [hl]
    db $fc
    or [hl]

jr_016_76b4:
    db $fc
    jp c, $a2fc

    call c, $28d6
    cp $f4
    cp $c0
    rst $28
    or [hl]
    dec c
    inc bc
    rla
    ld [$0a1d], sp
    rla

jr_016_76c8:
    ld a, [bc]
    ld a, $19
    dec l
    ld a, [de]
    rra
    ld b, $1e
    nop
    sbc $e0
    db $f4
    ld [$a85c], sp
    db $f4
    jr z, @-$40

    ld c, h
    halt
    inc l
    inc a
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    rlca
    ld bc, $060b
    ld c, $07
    reti


    ld h, [hl]
    ld a, l
    ld [$64da], a
    or h
    ret z

    db $fc
    nop
    sbc $ac
    cp e

jr_016_76fe:
    ld h, [hl]
    ld d, [hl]
    add sp, $07
    nop
    ld b, $03
    ld [bc], a
    ld bc, $0306
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    jr jr_016_7770

    and b
    ld hl, sp+$70
    db $e4
    jr jr_016_76fe

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
    rlca
    nop
    jr jr_016_7730

    jr nc, jr_016_774a

    ld h, h
    ccf
    ld a, d
    dec a
    rst $10

jr_016_7730:
    ld a, c
    ld b, b
    ld b, b
    inc b
    inc b
    ret nz

    nop
    ld hl, $30c1
    ldh [$ff98], a
    ldh a, [$ff78]
    ldh a, [$ff5c]
    ld hl, sp-$75
    ld [hl], h
    sub [hl]
    ld l, a
    ld e, a
    inc l
    dec a
    dec bc
    cpl

jr_016_774a:
    rra
    ld d, $0f
    ld l, a
    nop

jr_016_774f:
    cp [hl]
    ld h, e
    xor h
    ld hl, sp-$3c
    ld a, b
    ld h, h

jr_016_7756:
    sbc b
    db $f4
    xor b
    ld l, b
    sub b

jr_016_775b:
    ret nc

    jr nz, jr_016_7756

    nop
    db $fc
    jr c, jr_016_774f

    ld a, [hl]
    ld [hl], e
    inc c
    dec c
    ld [bc], a
    dec c
    ld b, $06
    ld bc, $070c
    rrca
    nop
    nop

jr_016_7770:
    nop
    cp b
    ret nz

    ret z

    ldh a, [$fff4]
    add sp, -$08

Call_016_7778:
    db $10
    db $f4
    ld l, b
    ld [hl], h
    sbc b
    add sp, $70
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_7792

    jr nz, jr_016_77ac

    jr nz, @+$21

    ld d, b
    ccf
    nop

jr_016_7792:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_016_775b

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$74
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_77ac:
    dec bc
    ld a, $01
    ld a, a
    dec de
    ld e, h
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld e, b
    and b
    db $fc

jr_016_77be:
    nop
    ld a, [$6bcc]
    inc [hl]
    ccf
    dec bc
    rra
    rlca
    rra
    ld [$163d], sp
    rla
    ld [$000f], sp
    ld b, $00
    adc $3c
    ld a, h
    sub b
    or b
    ret nz

    ldh a, [rNR41]
    xor b
    ret nc

    ret nc

    jr nz, jr_016_77be

    nop
    ret nz

    nop
    ld [$4008], sp
    ld b, b
    rlca
    nop
    sbc b
    add a
    jr nz, jr_016_780a

    jr nz, jr_016_780c

    ld d, b
    ccf
    ld [hl], h
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    ld d, h
    dec hl
    ld e, [hl]
    ld hl, $1b3f
    ld l, a
    jr nc, jr_016_77be

    ld hl, sp-$14
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, h

jr_016_780a:
    xor b
    db $f4

jr_016_780c:
    ld [$d0e8], sp
    ret nc

    jr nz, jr_016_7851

    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    ld [$163d], sp
    rla
    ld [$000f], sp
    ld b, $00
    ld h, b
    add b
    and b
    ret nz

    and b
    ret nz

    ldh a, [rNR41]
    xor b
    ret nc

    ret nc

    jr nz, @-$1e

    nop
    ret nz

    nop
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    call c, RST_38
    nop
    nop
    nop

jr_016_7851:
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    nop
    nop

jr_016_786d:
    nop
    nop
    nop
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
    inc d
    rrca
    ld a, [de]
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
    jr jr_016_786d

    inc b
    ld hl, sp-$74
    ld hl, sp+$2f
    rra
    inc [hl]
    rra
    inc hl
    dec e
    dec h
    ld a, [de]
    ccf
    rlca
    ccf
    db $10
    dec de
    rlca
    dec d
    dec bc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$fef4], a
    ldh a, [$fffe]
    add h
    db $ec
    ldh a, [$ffd4]
    add sp, $2f
    rra
    inc [hl]
    rra
    inc hl
    dec e
    dec h
    ld a, [de]
    dec sp
    inc b
    dec a
    ld d, $1f
    inc b
    dec d
    dec bc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, Call_000_03e8
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    rst $38
    rlca
    rst $38
    ld l, d
    ld d, [hl]
    add hl, sp
    ccf
    nop
    ldh [rP1], a
    jr @-$1e

    inc h
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$3d94], a
    ld a, [bc]
    ccf
    ld [$0b3f], sp
    dec de
    dec c
    ld d, $0d
    rrca
    inc b
    dec bc
    dec b
    dec b
    ld [bc], a
    sbc $b0
    cp $94

jr_016_7905:
    cp $70
    db $ec
    ld [hl], b
    sbc h
    ld h, b
    ld a, [$ef0c]
    sub $56
    xor b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    ld [$1d07], sp
    ld c, $1e
    nop
    ld a, [hl]
    xor h
    or $2c
    inc a
    ret nz

    add sp, $70
    ld [hl], b
    nop
    xor b
    ld [hl], b
    ld d, h
    jr c, jr_016_796c

    nop
    rlca
    nop
    jr jr_016_793c

    jr nz, jr_016_7956

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_016_793c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop

jr_016_7943:
    jr nc, jr_016_7905

    ld [$08f0], sp
    ldh a, [rNR22]
    ld hl, sp+$5f
    ld a, [$f8be]
    db $ec
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_016_7956:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e
    inc [hl]
    scf
    dec bc
    ccf
    rla
    ld e, h
    ldh a, [$ffac]
    ret nc

    ld d, h
    xor b
    add sp, $10
    ret c

    or b
    or b

jr_016_796c:
    ld h, b
    ldh [$ff80], a
    and b
    ret nz

    ld l, a
    scf
    ld a, a
    jr nc, jr_016_79ae

    rlca
    dec bc
    inc b
    dec e
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    jr nz, jr_016_7943

    ldh [rP1], a

jr_016_7985:
    jr nz, @-$3e

    and b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b
    nop
    ld bc, $0600
    ld bc, $070d
    dec de
    rrca
    dec e
    rrca
    ld [hl], $1b
    cpl
    inc d
    rst $28
    db $10
    ldh [rP1], a
    jr jr_016_7985

    inc b
    ld hl, sp+$42
    db $fc
    or [hl]
    call c, $3ec7
    db $eb

jr_016_79ae:
    cp [hl]
    rst $18
    cp [hl]
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
    or [hl]
    db $ed
    rst $38
    ld b, h
    ld c, a
    inc sp
    scf
    dec de
    rra
    ld [$020f], sp
    dec bc
    dec b
    dec bc
    dec b
    db $eb
    sbc $e1
    sbc $f2
    xor h
    ld h, h
    sbc b
    ret c

    jr nz, jr_016_7a18

    ret c

    or $4c
    cp h
    ld h, b
    db $fd
    ld [de], a
    ld e, a
    ld h, $5d
    ld h, $fe
    ld e, b
    ld e, d
    inc h
    sub l
    ld l, [hl]
    ld sp, hl
    ld e, $3e
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
    jr nz, jr_016_7a1e

    inc [hl]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$14f0], sp
    ld hl, sp+$4c
    ld hl, sp+$6b
    ccf
    ld a, a
    dec a
    ld d, l
    ld a, [hl-]

jr_016_7a17:
    ld c, [hl]

jr_016_7a18:
    ld sp, $265b
    ld a, $17
    dec de

jr_016_7a1e:
    ld b, $0d
    inc bc
    or [hl]
    call c, $9c6e
    or d
    ld l, h
    db $f4
    add sp, -$14
    ld d, b
    ld hl, sp+$50
    db $ec
    ld d, b
    sbc $e4
    rra
    ld [$0e15], sp
    rra
    inc bc
    dec sp
    dec e
    dec e
    ld [bc], a
    ld [de], a
    inc c
    ld a, [hl-]
    inc e
    inc a
    nop
    ei
    inc c
    or h
    ld a, e
    db $db
    or a
    ld a, e
    add a
    cp e
    ld b, a
    add sp, $77
    ld a, h
    inc bc
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_7a17

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld d, a
    ccf
    ld b, d
    ccf
    ld l, a
    inc d
    ld [hl], a
    add hl, hl
    dec sp
    dec c
    scf
    add hl, bc
    nop
    nop
    nop
    nop
    call nc, $c4b8
    jr c, jr_016_7aa6

    ret nc

    call c, $be28
    ld h, b
    db $db
    ld h, $4b
    scf
    ld a, a
    jr nz, jr_016_7ac4

    add hl, de
    ld [hl], a
    jr jr_016_7ac7

    nop
    ld c, c
    jr nc, @-$16

    ld [hl], b
    ldh a, [rP1]
    xor a
    sub $df
    jr nz, @-$13

    ld [hl], a
    db $db
    ld h, a
    ld l, e
    add a
    ret c

    rst $20
    db $f4
    inc bc
    inc bc
    nop
    add b
    nop
    ld h, b
    add b
    db $10

jr_016_7aa6:
    ldh [$ff88], a
    ldh a, [$ff88]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop

jr_016_7ab3:
    nop
    nop
    nop
    nop
    xor a
    ld a, a
    add l
    ld a, [hl]
    sbc $29
    rst $28
    ld d, d
    ld [hl], a
    ld a, [de]
    nop
    nop
    nop

jr_016_7ac4:
    nop
    nop
    nop

jr_016_7ac7:
    xor b
    ld [hl], b
    adc b
    ld [hl], b
    ld e, b
    and b
    cp [hl]
    ld d, b
    ld [hl], e
    adc $af
    ld d, d
    rst $10
    ld l, a
    ld l, a
    jr nc, @+$67

    ld a, [de]
    ld a, $0c
    ld e, d
    inc l
    call z, $f070
    nop
    and [hl]
    ld e, c
    ld e, l
    and e
    xor l
    ld [hl], e
    push de
    db $e3
    db $f4
    inc bc
    ld [$7971], a
    nop
    nop
    nop
    jr nc, jr_016_7ab3

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    nop
    nop
    ld d, a
    ccf
    ld b, d
    ccf
    ld l, a
    inc d
    ld [hl], a
    add hl, hl
    dec sp
    dec c
    ld d, a
    add hl, hl
    ld l, e
    scf
    ccf
    db $10
    ld h, $19
    rra
    inc c
    ld a, [hl-]
    inc c
    ld l, h
    jr nc, jr_016_7b92

    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7b20:
    nop
    rlca
    nop
    jr @+$09

    jr nz, jr_016_7b46

    ld b, b
    ccf
    ld h, e
    ccf
    sub $7d
    rst $38
    ld l, d
    rst $28
    ld d, a
    add b
    nop
    ld h, b
    add b
    ld [hl], b
    ldh [$ffd8], a
    ldh a, [$ff6c]
    ld hl, sp-$2c
    ld hl, sp-$7c
    ld a, b
    ld h, h
    sbc b
    or a
    ld c, c
    ld e, l
    dec hl
    dec hl

jr_016_7b46:
    dec e
    ld e, $07
    rrca
    nop
    dec c
    ld b, $17
    ld [$071e], sp
    db $f4
    xor b
    add sp, -$70
    ld c, b

jr_016_7b56:
    or b
    ret nc

    jr nz, jr_016_7b56

    nop
    cp $cc
    xor h
    ldh a, [$fff4]
    ld [$040f], sp
    ld b, $01
    dec b
    inc bc
    dec c
    inc bc
    inc c
    inc bc
    ld d, $09
    rrca
    nop
    nop
    nop
    inc d
    add sp, -$34
    ldh a, [$ffc4]
    ld hl, sp-$7c
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    dec bc
    ld b, $05
    inc bc
    scf
    nop
    ld a, c
    ld [hl], $4f
    jr nc, @+$40

    rlca
    reti


jr_016_7b92:
    ld h, [hl]
    ld a, l
    ld [$64da], a
    or h
    ret z

    db $fc
    nop
    or $cc
    xor a
    ldh a, [c]
    or $08
    rrca
    inc b
    ld b, $01
    dec b
    inc bc
    dec c
    inc bc
    inc c
    inc bc
    ld d, $09
    rrca
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    ld [bc], a
    dec a
    ld b, $d9
    ld h, [hl]
    ld a, l
    ld [$64db], a
    or a
    set 7, a
    inc b
    rst $38
    db $e3
    ld [$771f], a
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    and b
    ld b, b
    jr @-$1e

    ld [hl], e
    inc a
    ld e, [hl]
    inc sp
    ld [hl-], a
    ld bc, $0306
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$f5b5]
    dec bc
    db $ed
    ld [hl], e
    ld h, h
    sbc e
    or $39
    ld a, c
    nop
    nop
    nop
    nop
    nop
    call nz, $e2f8
    db $fc
    ldh [c], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    ld a, a
    nop
    db $ed
    ld a, d
    or l
    ld l, [hl]
    ld l, a
    nop
    ld b, $03
    ld [bc], a
    ld bc, $0306
    rlca
    nop
    nop

jr_016_7c2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ccf
    inc [hl]
    rra
    jr z, jr_016_7c50

    rra
    nop
    ccf
    dec de
    ld l, a
    jr nc, @+$41

    rlca
    nop
    nop
    xor h
    ld hl, sp+$58
    ldh a, [$ff28]
    ret nc

    ret nc

    jr nz, jr_016_7c2c

    add b
    db $ec
    ld b, b
    ld d, [hl]

jr_016_7c50:
    xor h
    rrca
    rlca
    ld c, $07
    rrca
    nop
    ld [$1d07], sp
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    cp e
    ld h, h
    ld e, h
    cp e
    ld sp, hl
    rla
    add hl, sp
    rst $00
    ret c

    rst $20
    xor h
    ld d, e
    jp nc, Jump_016_6161

    nop
    add b
    nop
    ld h, b
    add b
    sub b
    ldh [$ffc8], a
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_016_7c90

    jr nz, jr_016_7caa

    jr nz, jr_016_7cac

    ld d, b
    ccf
    ld [hl], h

jr_016_7c90:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp+$3d
    rra
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [bc]

jr_016_7caa:
    dec b
    rrca

jr_016_7cac:
    nop
    rra
    dec c
    dec [hl]
    ld a, [de]
    ld e, [hl]
    db $fc
    or $fc
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    xor $d0
    rst $10
    ld a, $1b
    rlca
    rla
    dec bc
    rrca
    nop
    inc b
    inc bc
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06
    nop
    db $dd
    and $96
    pop hl
    ld sp, hl
    rlca
    add hl, de
    rst $20
    add sp, $77
    ld e, b
    daa
    ld l, h
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_016_7cf8

    ld b, b
    ccf
    ld b, b
    ccf
    and b
    ld a, a
    add sp, $7f
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b

jr_016_7cf8:
    add b
    db $10
    ldh [rNR10], a
    ldh [$ff28], a
    ldh a, [$ffb8]
    ldh a, [$fff5]
    ld a, a
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    ld l, b
    rla
    db $fd
    ld h, d
    ld e, a
    scf
    or a
    ld c, b
    ld a, b
    ldh a, [$ffd8]
    ldh a, [$ffb0]
    ldh [$ff50], a
    and b
    and b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ld [hl], b
    ret nz

    db $dd
    ld l, [hl]
    ld a, a
    ld c, $2f
    db $10
    ld [hl], l
    ld a, [hl-]
    xor e
    ld d, b
    ld l, c
    jr nc, jr_016_7d5e

    nop
    nop
    nop
    call z, $b2b0
    ld a, h
    ld [hl], c
    cp $61
    cp $01
    cp $01
    cp $82
    ld a, h
    ld a, h
    nop
    push af
    ld a, a
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    ld l, b
    rla
    db $fd
    ld h, d
    ld e, a
    scf
    ld [hl], a
    ld [$6e9d], sp
    rst $38
    ld c, [hl]
    ld l, a
    db $10
    ld [hl], l
    ld a, [hl-]
    xor e
    ld d, b
    ld l, c
    jr nc, @+$32

jr_016_7d5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_7d6d:
    nop
    nop
    ret nz

    nop
    call nc, $c4b8
    jr c, jr_016_7da2

    ret nc

    rst $18
    jr z, @-$45

    ld h, a
    db $d3
    inc l
    xor [hl]
    pop de
    sub $39
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_016_7d6d

    call nz, $e2f8
    db $fc
    ld [$7a71], a
    ld bc, $3875
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [c], a

jr_016_7da2:
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
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
    db $10
    rrca
    jr jr_016_7dca

    jr c, jr_016_7ddc

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_016_7dca:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    dec hl
    rra
    ld hl, $371f
    ld a, [bc]
    ccf
    inc d
    dec e
    ld b, $0b

jr_016_7ddc:
    inc b
    dec b
    inc bc
    dec bc
    inc b
    ld [$62dc], a
    sbc h
    or [hl]
    ld l, b
    cp $94
    call c, $ecb0
    sub b
    jp nc, $faec

    inc c
    dec c
    ld b, $0f
    dec b
    dec b
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    inc de
    dec c
    ld a, [hl-]
    dec e
    dec a
    nop
    inc e
    ldh [rNR23], a
    ldh a, [rNR14]
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp-$44
    ldh a, [$ffaa]
    db $f4
    ld e, [hl]
    and b
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    ld e, $36
    add hl, de
    inc l
    rla
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp-$06
    inc b
    ld b, $f8
    inc bc
    cp $3e
    rrca
    ld a, $1f
    ld a, a
    ccf
    ld e, a
    ccf
    add a
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    sbc h
    rst $38
    ld [hl], b
    rst $18
    ld [hl], b
    xor a
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ldh [$ffc0], a
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff80], a
    ld a, a
    add e
    ld a, a
    ld c, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ld e, $0f
    ld a, $17
    ld a, $01
    ldh a, [$ffdf]
    adc h
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    cp $06
    ld hl, sp+$10
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

jr_016_7e87:
    ldh [$ffc0], a
    ret nz

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
    stop
    jr c, jr_016_7eaf

    cp $00
    ld b, $01
    add hl, de
    rlca
    daa
    rra
    ld c, a
    ccf
    rst $38
    rra
    rst $38
    ld c, b
    ld a, h
    ld d, a

jr_016_7eaf:
    ld h, e
    ld e, l
    ld d, e
    db $fc
    adc h
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$12
    db $10
    ldh a, [c]
    inc l
    nop
    nop
    ret nz

    nop
    jr nz, jr_016_7e87

    sub b
    ldh [$fff8], a
    ret nz

    ret c

    sub b
    add b
    nop
    jr nz, @+$22

    dec h
    ld a, [de]
    dec sp
    rlca
    ccf
    db $10
    dec sp
    daa
    or l
    xor e
    adc a
    add b
    adc e
    add l
    rla
    inc c
    ld a, d
    and h
    cp $a0
    cp $a4
    db $fc
    and b
    db $f4
    adc b
    db $dd
    ld h, c
    ei
    dec l
    xor a
    sub $a8
    xor b
    and b
    and b
    jr nz, @+$22

    nop
    nop
    ld [$4808], sp
    ld c, b
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld a, [hl+]
    daa
    and a
    and b
    ld h, $21
    ld c, $07
    ld b, a
    ld b, b
    ld c, c
    ld b, [hl]
    dec e
    ld c, $9e
    add b
    or $d8
    ld hl, sp+$20
    ld [hl-], a
    jp nz, $72ea

    ld [hl], b
    nop
    ld c, b
    jr nc, @-$0a

    cp b
    ld a, $02
    ld c, b
    ld c, b
    ld [$8808], sp
    adc b
    add b
    add b
    sub b
    sub b
    db $10
    db $10
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rlca
    ld bc, $071e
    jr c, @+$21

    ld [hl], b
    ccf
    ldh [$ff1f], a
    cp a
    jr z, @-$42

    sub a
    inc hl
    dec e
    xor a
    db $fc
    ld [hl], e
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$02
    db $10
    ldh a, [c]
    inc l
    nop
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ld [hl], b
    ldh [$ff38], a
    ret nz

    ld c, b
    add b
    adc b
    ld [$a8a8], sp
    dec h
    ld a, [de]
    dec sp
    rlca
    ccf
    db $10
    dec sp
    daa
    dec [hl]
    dec hl
    xor a
    and b
    adc e
    add l
    rla
    inc c
    ld a, d
    and h
    cp $a0
    cp $a4
    db $fc
    and b
    db $f4
    adc b
    call c, $fa60
    inc l
    xor a
    sub $a0
    and b
    ld [$8808], sp
    adc b
    add b
    add b
    add b
    add b
    db $10
    db $10
    db $10
    stop
    nop
    ld a, [de]
    rla
    ld d, a
    ld d, b
    ld d, [hl]
    ld d, c
    ld c, [hl]
    ld b, a
    rlca
    nop
    add hl, bc
    ld b, $9d
    adc [hl]
    rra
    ld bc, $d8f6
    db $fc
    inc h
    ld sp, $e9c1
    ld [hl], c
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$77

    add hl, sp
    ld a, l
    ld b, c
    db $10
    db $10
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
