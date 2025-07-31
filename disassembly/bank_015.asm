; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    dec d
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
    db $18, $e0
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
    call nc, $fce8
    nop
    xor $dc
    ld d, h
    xor b
    rra
    ld a, [bc]
    scf
    ld a, [de]
    ld a, $19
    ld e, $07
    rlca
    nop
    dec c
    ld b, $19
    ld c, $1e
    nop
    ld a, h
    xor b
    or $2c
    ld a, $cc

jr_015_4057:
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_015_40d2

    jr c, jr_015_409c

    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fce8
    nop
    cp $cc
    ld e, [hl]
    xor h
    cpl
    ld [de], a
    rra
    nop
    ld c, $07
    dec b
    inc bc
    dec bc
    inc b
    dec e
    ld c, $1d
    ld [bc], a
    ld c, $00
    ld a, h
    and b
    ldh a, [rNR41]
    jr nc, jr_015_4057

    ldh a, [$ff60]
    ldh [rP1], a
    sub b

jr_015_409c:
    ld h, b
    ld c, b
    jr nc, jr_015_40d0

    nop
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
    dec e
    ld [bc], a
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call c, $fce0

Call_015_40bc:
    ld [$d0f8], sp
    ld d, h
    xor b
    ccf
    ld a, [de]
    ccf
    ld a, [de]
    ld e, $01

jr_015_40c7:
    rlca
    inc bc
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $06

jr_015_40d0:
    nop
    ld a, d

jr_015_40d2:
    and h
    db $fc
    nop
    jr c, jr_015_40c7

    ret nc

    ld h, b
    add sp, $10
    call c, Call_015_5c38
    jr nz, jr_015_4118

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_40f8

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

jr_015_40f8:
    ldh a, [$ff4c]
    ld hl, sp-$44

Call_015_40fc:
    ld hl, sp+$6e
    db $fc
    sub $7c
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
    rlca
    ld [bc], a
    dec bc
    dec b
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h

jr_015_4118:
    ret z

    ld l, b

jr_015_411a:
    sub b
    ret c

    jr nz, @-$46

    ret nc

    db $fc
    ld c, b
    dec bc
    dec b
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    dec b
    dec b
    ld [bc], a
    add hl, bc
    ld b, $0f
    ld bc, $0003
    xor b
    ld b, b
    ld h, b
    ret nz

    ldh [$ffc0], a
    ldh a, [rNR41]
    and b
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr jr_015_41b1

    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b

jr_015_415a:
    sub b
    ret c

    jr nz, jr_015_411a

    ret c

    ld hl, sp+$40
    dec bc
    dec b
    rrca
    ld bc, $040f
    rlca
    inc bc
    dec e
    ld [bc], a
    dec sp
    inc e
    dec d
    ld c, $0e
    nop
    cp b
    ld [hl], b
    ld e, b
    or b
    ldh a, [rP1]
    sbc h
    ld [hl], b
    ldh a, [c]
    inc l
    ld [hl-], a
    inc c
    inc h
    jr jr_015_4198

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
    rlca
    ld [bc], a
    ld a, [bc]
    dec b
    ldh [c], a
    cp h
    or d
    call z, $d4fa

jr_015_4197:
    or h

jr_015_4198:
    ret z

    ld l, b
    sub b
    ret c

    jr nz, jr_015_415a

    ret c

    ld hl, sp-$80
    dec c
    inc bc
    rrca
    inc bc
    dec de

jr_015_41a6:
    inc c
    add hl, sp

jr_015_41a8:
    ld b, $47
    jr c, jr_015_41ce

    inc e
    inc e
    nop
    nop
    nop

jr_015_41b1:
    and b
    ld b, b
    and b
    ld b, b
    ldh a, [rNR41]
    ret nc

    ldh [$ffe8], a
    db $10
    ld h, h
    jr c, jr_015_41a6

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_41ce

    jr nz, jr_015_41e8

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_41ce:
    ccf
    ld a, d
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_4197

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp+$6f
    ccf

jr_015_41e3:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_41e8:
    dec bc
    ld e, $01
    ccf
    dec de
    ld a, e
    inc h
    cpl

jr_015_41f0:
    rla
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

MoveToHouse::
    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_015_41a8

    ret nc

    cpl
    rla
    ld a, a
    jr nc, jr_015_426e

    scf
    dec sp
    inc b
    dec e
    ld c, $2b
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    jr z, jr_015_41e3

    db $fc
    jr jr_015_4242

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
    ld l, a
    ccf

jr_015_4223:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld a, a
    dec sp
    dec sp
    inc b
    cpl
    rla
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_015_41f0

    ret nz

    ld a, a

jr_015_4242:
    scf
    ld a, a
    jr nc, jr_015_427e

    rlca
    dec de
    inc c
    ld l, $11
    inc de
    inc c
    dec c
    nop
    nop
    nop
    jr z, jr_015_4223

    db $e4
    jr jr_015_428e

    ret nz

    ldh [$ffc0], a
    ldh a, [rNR41]
    ld h, b
    ret nz

    or b
    ld h, b
    ldh a, [rP1]
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld a, a
    dec sp
    dec sp

jr_015_426e:
    inc b
    rra
    rlca
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

jr_015_427e:
    jr nz, jr_015_42e8

    sub b
    cpl
    rla
    ld c, a
    jr nc, jr_015_42be

    rlca
    rrca
    ld b, $1e
    add hl, bc
    dec c
    ld b, $1b

jr_015_428e:
    inc c
    ld e, $00
    inc a
    ret c

    db $fc
    jr jr_015_42ce

    ret nz

jr_015_4297:
    sub b
    ld h, b
    add sp, $10
    sub b
    ld h, b
    ld h, b
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
    inc d
    rrca
    ld a, [hl+]
    rra

Call_015_42ad:
    ccf
    rra
    inc [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_4297

    inc b
    ld hl, sp+$04
    ld hl, sp-$76
    db $fc
    ld d, [hl]

jr_015_42be:
    db $fc
    xor [hl]
    call c, Call_000_1d23
    scf
    ld [$163d], sp
    rra
    inc b
    dec d
    dec bc
    rrca
    nop
    dec bc

jr_015_42ce:
    dec b
    dec d
    ld a, [bc]
    ldh a, [c]
    inc l
    xor $90
    sbc $b4
    db $fc
    sub b
    call nc, $fce8
    nop
    xor $dc
    ld d, h
    xor b
    inc hl
    dec e
    scf
    ld [$163d], sp
    rra

jr_015_42e8:
    inc b
    dec e
    inc bc
    ccf
    jr jr_015_4325

    add hl, de
    add hl, de
    ld b, $f2
    inc l
    xor $90
    sbc $b4
    cp $90
    sbc $e4
    db $fc
    ld [$d8f4], sp
    ld e, d
    and h
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    add hl, bc
    ld b, $06

jr_015_430a:
    ld bc, $0102
    inc bc
    nop
    nop
    nop
    ld a, [hl]
    add b
    db $f4
    jr c, @-$1a

    ld a, b
    sbc h
    ld h, b
    db $fc
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    jr jr_015_4323

jr_015_4323:
    nop
    nop

jr_015_4325:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    inc l
    xor $90
    sbc $b4

jr_015_4337:
    db $fc
    sub b
    call c, $fee0
    inc c
    ld a, [$5ccc]
    and b
    rrca
    nop
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
    ld [hl], b
    and b
    ldh a, [rNR41]
    or b
    ld b, b
    ret z

    jr nc, jr_015_430a

    ld b, b
    and b
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_4388

    ld l, d
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_4337

    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$49
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl

jr_015_4388:
    add hl, de
    ld d, $0f
    rrca

jr_015_438c:
    nop
    rlca
    ld [bc], a
    dec bc
    dec b
    call nz, Call_015_6478
    sbc b
    db $f4
    xor b
    ld l, b
    sub b
    ret nc

    jr nz, @-$4e

    ld b, b
    cp b
    ret nc

    db $fc
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $18
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr jr_015_441d

    inc b
    ld a, b
    inc c
    ld a, b
    or a
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld [hl], $0f
    ld l, a
    jr nc, jr_015_4415

    ld a, [hl-]
    dec sp
    dec b
    call nz, Call_015_6478
    sbc b
    db $f4
    xor b
    ld l, b
    sub b
    ret nc

    jr nz, jr_015_438c

    ld b, b
    cp h
    ldh a, [$ffe6]
    ld e, h
    dec bc
    dec b
    rlca
    nop
    scf
    inc bc
    ld e, e
    inc [hl]
    ld e, l
    ld a, [hl-]
    ld a, [hl+]
    inc e
    inc h
    jr jr_015_4408

    nop
    cp $0c
    sbc $a0
    sub a
    ld l, b
    push af
    sbc d
    reti


    ld h, $29
    ld b, $06
    nop
    nop
    nop
    or a
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl

jr_015_4408:
    add hl, de
    ld [hl], $0f
    ld l, a
    jr nc, jr_015_4485

    dec a
    ld a, [hl-]
    rlca
    call nz, Call_015_6478
    sbc b

jr_015_4415:
    db $f4
    xor b
    ld l, b
    sub b
    db $fc
    ld [$30f8], sp

jr_015_441d:
    or b
    ld b, b
    ld e, b
    and b
    rrca
    nop
    dec bc
    dec b
    dec a
    ld a, [bc]
    ld e, h
    daa
    ld c, e
    inc [hl]
    inc h
    jr jr_015_4446

    nop
    nop
    nop
    call nc, $f468
    add sp, -$06
    inc b
    ld [hl], c
    xor [hl]
    db $fd
    ld b, [hl]
    ld d, [hl]
    inc c
    ld a, [de]
    inc c
    inc c
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10

jr_015_4446:
    ld c, $1a
    ld c, $37
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr jr_015_44b2

    nop
    jr @+$62

    inc h
    ld a, b
    ld l, h
    ld a, b
    ld d, [hl]
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$0094], a
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    jr jr_015_4479

    inc [hl]
    ld e, $3b
    ld e, $6f

jr_015_4470:
    inc [hl]
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_015_44b9

jr_015_4479:
    jr @+$72

    ld c, h
    ld a, b
    inc a
    ld hl, sp-$52
    db $fc
    nop
    nop
    ld [bc], a
    nop

jr_015_4485:
    inc c
    ld [bc], a
    inc d
    ld c, $1a
    ld c, $2f
    rra
    inc [hl]
    rra
    inc hl
    dec e
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
    inc [hl]
    dec bc
    ld a, [hl]
    ld sp, $0b3f
    dec de
    inc b
    ccf
    dec de
    db $ec

jr_015_44b2:
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

MoveToToolRoom::
    ld d, b
    and b

jr_015_44b9:
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_015_4470

    ret nz

    ccf
    dec de
    rra
    nop
    ld [$1507], sp
    ld a, [bc]
    inc de
    inc c
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    add sp, $10
    ld l, b
    sub b
    ret nc

    ld h, b

jr_015_44d7:
    add sp, -$70
    ldh a, [$ff60]
    ret z

    ld [hl], b
    add sp, $10
    ldh a, [rP1]
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld a, [hl]
    ld sp, $0b3f
    dec de
    inc b
    cpl
    rla
    db $ec
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ret nc

    and b
    or b
    ld b, b
    ld a, b
    or b
    cpl
    rla
    rra
    nop
    ld e, $0d
    ccf
    ld [de], a
    ld a, [de]
    inc c
    ld [hl-], a
    inc e
    ld a, $10
    ld e, $00
    ld hl, sp+$30
    ld [hl], b
    add b
    jr nz, jr_015_44d7

    ld d, b
    and b
    sub b
    ld h, b
    sub b
    ld h, b

jr_015_451d:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_4540

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_451d

    inc b
    ld hl, sp+$0c

jr_015_4540:
    ld hl, sp+$38
    rra
    dec l
    rra
    ld [hl], $1f
    inc h
    rra
    inc hl
    dec e
    scf
    ld [$063d], sp
    ccf
    inc d
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, Call_000_2cd2
    or $88
    sbc $b0
    xor $94
    dec e
    inc bc
    dec de
    inc c
    rla
    ld a, [bc]
    ccf
    jr jr_015_459f

    ld a, [de]
    ld e, $00
    nop
    nop
    nop
    nop
    call c, $ece0
    jr jr_015_45ea

    xor b
    cp $0c
    ld d, [hl]
    inc l
    inc a
    nop
    nop
    nop
    nop
    nop
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
    dec de
    dec b
    dec a
    ld a, [de]
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fee8
    inc b
    db $ec
    ret nc

jr_015_459f:
    ld e, [hl]
    xor h
    ccf
    ld a, [de]
    rra
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld a, [hl]
    xor h
    db $fc
    jr nz, @+$32

    ret nz

jr_015_45b7:
    add sp, $70
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$76

    jr c, jr_015_45fc

    nop
    dec [hl]
    ld a, [bc]
    ld a, e
    inc [hl]
    ld l, l

jr_015_45c6:
    ld [hl], $3f
    inc d
    dec l
    dec de
    inc de
    inc c
    dec bc
    dec b
    dec b
    ld [bc], a
    xor $f0
    rst $28
    sub [hl]
    db $db
    or [hl]
    xor $94
    jp c, $e4ec

    jr jr_015_45c6

    ret nc

    ld d, b
    and b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca

jr_015_45ea:
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    ld [hl], b
    and b
    ldh a, [rNR41]
    jr nc, jr_015_45b7

    add sp, $70
    ld [hl], b
    nop
    ld c, b

jr_015_45fc:
    jr nc, @+$76

    jr c, jr_015_463c

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
    ld [de], a
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
    jr @-$1e

    inc b
    ld hl, sp-$5c
    ld hl, sp+$2b
    rra
    scf
    rra
    dec a
    rra
    ld a, [hl-]
    rra
    inc e
    dec bc
    ld [de], a
    dec c
    rrca
    nop
    rra
    dec c
    ld [$f6fc], a
    db $fc
    sbc $fc
    xor [hl]
    db $fc
    inc e
    add sp, $24

jr_015_463c:
    ret c

    ld l, b
    sub b
    ld hl, sp-$20
    dec a
    ld [de], a
    rla
    dec bc
    cpl
    inc de
    daa
    dec de
    dec de
    inc b
    dec e
    dec bc
    rrca
    inc b
    ld b, $00
    add sp, $10
    call nc, $dae8
    db $e4
    sub d
    db $ec
    db $ec
    db $10
    sub h
    add sp, -$18
    db $10
    jr nc, jr_015_4661

jr_015_4661:
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [bc]
    dec b
    rrca
    nop
    rra
    dec c
    dec a
    ld [de], a
    scf
    dec bc
    or $fc
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    db $fc
    ldh [$ffee], a
    inc d
    jp nc, $1fec

jr_015_4682:
    inc bc
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06
    nop
    sbc h
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_4682

    ld [hl], b
    call nc, Call_015_6828
    jr nc, jr_015_46d0

    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $10
    ld c, $28
    rra
    ld a, [hl-]
    rra
    ld a, l
    rra
    nop
    nop
    ld h, b
    nop
    jr jr_015_4717

    inc b
    ld a, b
    inc b
    ld a, b
    ld a, [bc]
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    ld [hl], a
    rra
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl+]
    dec d
    ccf
    db $10
    rra
    dec c
    dec a
    ld a, [de]
    rra

jr_015_46d0:
    inc bc
    rst $30
    db $fc
    xor l
    ld a, [$ea55]
    ld a, [hl+]
    call nc, $847e
    db $fc
    add sp, -$18
    db $10
    ret nc

    ldh [rTAC], a

jr_015_46e2:
    inc bc
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06
    nop
    sub b
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_46e2

    ld [hl], b

jr_015_46fb:
    call nc, Call_015_6828
    jr nc, jr_015_4730

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_4710

    jr nz, jr_015_472a

    ld l, d
    ccf
    ld [hl], h
    ccf
    rst $18

jr_015_4710:
    ld l, c
    nop
    nop
    nop
    nop
    add b
    nop

jr_015_4717:
    ld h, b
    add b
    jr nc, jr_015_46fb

    sbc b
    ldh a, [$ff74]
    ld hl, sp+$5c
    ld hl, sp-$57
    ld d, [hl]
    or a
    ld c, a
    sbc a
    ld l, c
    ld e, l
    dec hl
    cpl

jr_015_472a:
    add hl, de
    ld d, $0f
    rrca
    nop
    rlca

jr_015_4730:
    inc bc
    xor h
    ld hl, sp-$3c
    ld a, b
    ld h, h
    sbc b

jr_015_4737:
    db $fc
    and b
    ld a, [hl]
    adc h
    call nc, $f838
    add b
    or b
    ld b, b
    rrca
    nop
    inc e
    rrca
    rla
    inc c
    dec c
    ld [bc], a
    ld b, $01
    ld [$0f07], sp
    nop
    ld bc, $7000
    ret nz

    ret z

    or b
    add sp, $10
    ret c

jr_015_4758:
    ldh [$fff0], a
    nop
    add sp, $70
    ret z

    ldh a, [$fff8]
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_4788

    ld l, d
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_4737

jr_015_4777:
    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$49
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl

jr_015_4788:
    add hl, de
    ld d, $0f
    rrca
    nop
    rra
    ld [bc], a
    ld [hl], $19
    call nz, Call_015_6478
    sbc b
    db $f4
    xor b
    ld l, b
    sub b
    ret c

    jr nz, jr_015_4758

    ld e, b
    ld d, [hl]
    xor h
    call c, $39a0
    rra
    rra
    nop
    dec c
    ld [bc], a
    ld c, $05
    dec c
    ld [bc], a
    ld de, $1f0e
    ld bc, $0003
    ret nc

    ld h, b
    ldh [rP1], a
    jr nz, jr_015_4777

    ret nc

    ldh [$ffe0], a
    nop
    ld d, b
    ldh [$ff90], a
    ldh [$fff0], a
    nop
    nop
    nop
    ld b, $00
    jr jr_015_47cd

    jr nc, jr_015_47e7

    ld l, d
    ld a, $77

jr_015_47cc:
    dec a

jr_015_47cd:
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ld b, b
    nop
    jr nz, jr_015_4817

    jr nc, @+$62

    jr jr_015_484b

    ld a, b
    ldh a, [$ffdc]
    jr c, jr_015_47cc

    ret c

    or a
    ld c, [hl]
    ld e, a
    jr z, jr_015_4823

    dec bc

jr_015_47e7:
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    rlca
    ld [bc], a
    dec bc
    dec b
    and h
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    xor b
    ld d, b
    ld hl, sp+$40
    ld a, h
    ret c

    ld [hl], $cc
    db $fc
    nop
    dec bc
    dec b
    rlca
    ld bc, $0205
    rrca
    inc b
    dec c
    ld [bc], a
    ld de, $1f0e
    ld bc, $0003
    and b
    ret nz

    and b
    ret nz

    ldh [rP1], a

jr_015_4817:
    ret nc

    ldh [$ffe0], a
    nop
    ret nc

    ldh [$ff90], a
    ldh [$fff0], a
    nop
    jr c, jr_015_4842

jr_015_4823:
    dec l
    rra
    ld [hl], $1f
    inc h
    rra
    inc hl
    dec e
    scf
    ld [$061d], sp
    dec sp
    inc b
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor d
    call c, Call_000_2cd2
    or $88
    call c, $eeb0
    sub b
    ld a, l

jr_015_4842:
    inc sp
    ld l, a
    inc [hl]
    scf
    ld [$060f], sp
    ld c, $01

jr_015_484b:
    rrca
    ld b, $1d
    ld c, $1e
    nop
    rst $18
    and $fb
    ld d, $76
    adc b
    add sp, $30
    cp b
    ld b, b
    ld hl, sp+$30
    ld d, h
    jr c, @+$3e

    nop
    nop
    nop
    ld h, b
    nop
    jr jr_015_48c7

    inc b
    ld a, b
    inc c
    ld a, b
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    scf
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr @+$2b

    ld d, $18
    ldh [rNR50], a
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$ca94], a
    or h
    ccf

jr_015_48a2:
    inc b
    dec a
    rla
    dec de
    rlca
    dec c
    inc bc
    rrca
    inc b
    dec de
    dec c
    dec [hl]
    ld a, [de]
    ccf
    ld a, [de]
    cp $90
    sbc $f4
    db $ec
    ld [hl], b
    call c, $fe60
    inc d
    db $ec
    ret c

    ld d, [hl]
    xor h
    ld a, [hl]
    xor h
    rra
    ld [bc], a
    ld b, $01
    ld c, $07

jr_015_48c7:
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    dec e
    ld c, $1a
    inc c
    inc c
    nop
    db $fc
    jr nz, jr_015_4904

    ret nz

jr_015_48d5:
    add sp, $70
    ld d, b
    jr nz, jr_015_48a2

    ld [hl], b
    ld h, h
    jr c, @+$36

    jr jr_015_48f8

    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_48f8

    jr c, jr_015_490a

    dec l
    rra
    ld [hl], $1f
    dec hl
    dec e
    ldh [rP1], a
    jr jr_015_48d5

    inc b
    ld hl, sp+$0c

jr_015_48f8:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    call c, Call_000_2cda
    ccf
    ld [bc], a
    ld a, a

jr_015_4904:
    jr nc, jr_015_4973

    ld [hl], $2f
    inc d
    inc [hl]

jr_015_490a:
    dec de
    rla
    ld [$163d], sp
    rra
    ld a, [bc]
    ld e, $e0
    ld a, a
    add [hl]
    db $db
    or [hl]
    ld a, [$9694]
    db $ec
    db $f4
    ld [$b45a], sp
    db $fc
    jr z, jr_015_4940

    dec b
    dec a
    ld a, [de]
    dec [hl]
    ld c, $3b
    inc b
    ld a, [de]
    inc b
    inc c
    nop
    nop
    nop
    nop
    nop
    inc a
    ret nc

    jp c, Jump_015_562c

    jr c, jr_015_49b6

    db $10
    inc l
    db $10
    jr jr_015_493d

jr_015_493d:
    nop
    nop
    nop

jr_015_4940:
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_4958

    jr c, jr_015_496a

    dec l
    rra
    ld [hl], $1f
    dec hl
    dec e
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp+$0c

jr_015_4958:
    ld hl, sp+$0e
    db $fc

jr_015_495b:
    ld e, d
    db $fc
    or [hl]
    call c, $9cea
    dec a
    inc bc
    ld a, a
    jr nc, jr_015_49d3

    ld [hl], $2f
    inc d
    inc [hl]

jr_015_496a:
    dec de
    rla
    ld [$061d], sp
    ccf
    ld a, [de]
    sbc [hl]
    ld h, b

jr_015_4973:
    ld a, a
    add [hl]
    db $db
    or [hl]
    ld a, [$9694]
    db $ec
    db $f4
    ld [$b05c], sp
    ld a, [$002c]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

jr_015_498d:
    dec [hl]
    rra
    dec sp
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_495b

    jr jr_015_498d

    ld c, h
    ld hl, sp+$3c
    ld hl, sp+$6f
    inc [hl]
    ld d, l
    dec hl
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
    xor [hl]
    db $fc
    sub $7c
    ldh [c], a

jr_015_49b6:
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld a, h
    add b
    xor $1c
    rlca
    ld bc, $040b
    dec d
    ld a, [bc]
    dec e
    ld b, $06
    ld bc, $0708
    rrca
    nop
    ld bc, $d400
    xor b

jr_015_49d3:
    db $ec
    jr nc, @-$10

    sbc h
    ld a, [$ec6c]
    db $10
    ld hl, sp+$60
    ret z

    ldh a, [$fff0]
    nop

jr_015_49e1:
    nop
    nop
    nop
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
    ldh [rP1], a
    jr jr_015_49e1

    dec c
    rlca
    dec de
    rrca
    dec e
    rrca
    ld [hl], $1b
    cpl
    inc d
    cpl
    db $10
    ld [hl], $0d
    rra
    inc b
    inc b
    ld hl, sp+$42
    db $fc
    and [hl]
    call c, $3ec7
    db $eb
    cp [hl]
    rst $18
    cp [hl]
    db $eb
    sbc $e1
    sbc $0b
    rlca
    dec b
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0007
    ld a, [bc]
    dec b
    dec bc
    dec b
    rrca

jr_015_4a30:
    ld bc, $acf2
    ld h, h
    sbc b
    ret c

    jr nz, jr_015_4a30

    add b
    db $fc
    ld e, b
    sub $6c
    cp h
    ld h, b
    ret nc

    and b
    dec bc
    inc b
    rlca
    inc bc
    rlca
    nop
    dec bc
    dec b
    rlca
    nop
    dec bc
    dec b
    rrca
    ld bc, $0001
    ld hl, sp+$30
    ld e, b
    or b
    ldh a, [$ff80]
    or b
    ld b, b
    ld d, b
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    inc bc

jr_015_4a68:
    ld bc, $0007
    ld a, [bc]
    dec b
    dec bc
    dec b
    rrca
    ld bc, $acf2
    ld h, h
    sbc b
    ret c

    jr nz, jr_015_4a68

    add b
    ld hl, sp+$50
    call c, $bc68
    ld h, b
    ret nc

    and b
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    inc bc

jr_015_4a88:
    ld bc, $0007
    ld a, [bc]
    dec b
    dec bc
    dec b
    rrca
    ld bc, $acf2
    ld h, h
    sbc b
    ret c

    jr nz, jr_015_4a88

    add b
    ld hl, sp+$50
    ret c

    ld h, b
    cp b
    ld h, b
    ret nc

    and b
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_4ab8

    ld [hl-], a
    rra
    ld e, l
    ld h, $7b
    inc e
    cp l
    ld h, e
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_4ab8:
    ldh a, [$ff4c]
    ld hl, sp+$3c
    ld hl, sp-$52
    db $fc

jr_015_4abf:
    sub $7c
    bit 6, a
    cp a
    ld b, h
    ld c, [hl]
    dec b
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    inc bc
    ld bc, $0205
    ldh a, [c]
    adc h
    ld a, [$ebb4]
    or h
    xor a
    jp nc, $966d

    ld a, [$dc34]
    or b
    cp d
    ld b, h
    ld c, $05
    rlca
    nop
    inc c
    inc bc
    dec de
    inc c
    rrca
    inc bc
    rlca
    ld bc, $0001
    nop
    nop
    ldh [c], a
    ld a, h
    ld l, h
    or b
    ld hl, sp+$00
    add sp, -$30
    ldh a, [rNR41]
    and b
    ret nz

jr_015_4afd:
    jr nz, jr_015_4abf

    ret nz

    nop
    bit 6, a
    cp a
    ld b, h
    ld c, [hl]
    dec b
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    inc bc
    ld bc, $0205
    ldh a, [c]
    adc h
    ld a, [$eab4]
    or h
    xor h
    ret nc

    ld l, [hl]
    sub h
    ei
    ld [hl], $df
    or b
    cp d
    ld b, h
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
    jr jr_015_4b34

    jr nz, @+$21

    dec h
    rra
    nop
    nop
    nop

jr_015_4b34:
    nop
    nop
    nop
    nop
    nop

jr_015_4b39:
    ret nz

    nop
    jr nc, jr_015_4afd

    ld [$48f0], sp
    ldh a, [$ff57]
    ccf
    ld l, a
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    jr c, jr_015_4b62

    inc h
    dec de
    ld [hl], $09
    ld a, a

jr_015_4b50:
    scf
    call nc, $ecf8
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38
    ret nc

    ld c, b
    or b
    ret nc

    jr nz, jr_015_4b50

    ret nz

    rst $10

jr_015_4b62:
    ld l, b
    ld a, a
    dec bc
    cpl
    rla
    rra
    rlca
    rla
    ld [$173b], sp
    rra
    ld [$000c], sp
    ret c

    jr nz, @-$02

    xor b
    xor b
    ret nc

    jr nc, jr_015_4b39

    ret nc

    jr nz, jr_015_4ba4

    ret nc

    ret nc

    jr nz, jr_015_4be0

    nop
    rlca
    nop
    jr jr_015_4b8c

    jr nz, jr_015_4ba6

    jr nc, @+$21

    ld d, b
    ccf
    ld l, b

jr_015_4b8c:
    ccf
    ld e, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, @-$3e

jr_015_4b95:
    ld [$18f0], sp
    ldh a, [rNR14]
    ld hl, sp+$2c
    ld hl, sp-$4c
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]

jr_015_4ba4:
    rla
    inc d

jr_015_4ba6:
    dec bc
    ld e, $01
    ccf
    dec de
    ld a, e
    inc h
    rst $28

jr_015_4bae:
    ld d, a
    rst $38
    ld h, a
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ret nc

    and b
    xor h
    ld d, b
    xor d
    call c, $cc3e
    ld l, a
    nop
    ld [$1d07], sp
    ld c, $0f
    nop
    ld a, [de]
    inc c
    ld e, $08
    ld d, $08
    inc c
    nop
    db $ec
    nop
    jr nz, jr_015_4b95

    ret nc

    ldh [$ffe0], a
    nop
    ldh a, [$ff60]
    ret nc

    jr nz, jr_015_4bae

    jr nz, jr_015_4c40

jr_015_4be0:
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    ccf
    dec bc
    ld a, e
    inc [hl]
    rst $28
    ld d, a
    rst $38
    ld h, a
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ret nc

    and b
    xor h
    ld d, b
    xor d
    call c, $cc3e
    dec [hl]

jr_015_4c02:
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    rra
    dec bc
    ld [hl], a
    jr @+$01

    ld d, a
    rst $38
    ld h, a
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ret nc

    and b
    xor h
    ld d, b
    xor d
    call c, $cc3e
    dec [hl]
    rra
    ld a, [hl+]
    rla

jr_015_4c25:
    ld [hl], h
    dec bc
    ld a, [hl]
    ld sp, $182f
    inc [hl]
    dec bc
    rra
    rlca
    dec sp
    inc e
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, h
    xor b
    db $e4
    jr jr_015_4c02

    jr nc, jr_015_4c8c

    and b
    or b
    ret nz

    ret z

jr_015_4c40:
    ld [hl], b
    inc e

jr_015_4c42:
    inc bc
    dec sp
    rla
    scf
    jr jr_015_4c62

jr_015_4c48:
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    add b
    jr z, jr_015_4c25

    ret c

    jr nc, jr_015_4c48

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]

jr_015_4c62:
    rra
    ld a, [hl+]
    rla
    ld [hl], h
    dec bc
    ld e, [hl]
    ld hl, $183f
    ld [hl], h
    dec hl
    ccf
    rlca
    dec de
    inc c
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, h
    xor b
    db $e4
    jr jr_015_4c42

    jr nc, jr_015_4ccc

    and b
    or b
    ret nz

    sub b
    ld h, b
    jr c, jr_015_4ca2

    dec l
    rra
    ld [hl], $1f
    inc [hl]
    rrca
    ld l, e
    dec [hl]
    ld a, a

jr_015_4c8c:
    jr nc, jr_015_4cbb

    ld d, $3b
    inc d
    ld c, $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    xor [hl]
    ret c

    db $db
    ld h, $ff
    add [hl]
    jp c, $eeb4

    sub h
    dec l

jr_015_4ca2:
    dec de
    rra
    inc b
    ld c, $01
    rrca
    ld b, $0e
    ld bc, $060f
    dec e
    ld c, $1e
    nop
    jp c, $fcec

    db $10
    cp b
    ld b, b

jr_015_4cb7:
    ld l, b
    or b
    cp b
    ld b, b

jr_015_4cbb:
    ld hl, sp+$30
    ld d, h
    jr c, jr_015_4cfc

    nop
    add hl, sp
    ld b, $7f

jr_015_4cc4:
    inc [hl]
    ld e, l

jr_015_4cc6:
    scf
    dec hl
    rla
    dec [hl]
    dec de
    dec de

jr_015_4ccc:
    inc c
    dec bc
    dec b
    dec b
    ld [bc], a
    adc $b0
    rst $38
    sub [hl]
    db $dd
    or $ea
    ld [hl], h
    sub $6c
    db $ec
    jr jr_015_4cc6

    ret nc

    ld d, b
    and b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    dec e
    ld c, $1a
    inc c
    ld [hl], b
    and b
    ldh a, [rNR41]
    jr nc, jr_015_4cb7

    add sp, $70
    ld d, b
    jr nz, jr_015_4cc4

jr_015_4cfc:
    ld [hl], b
    ld h, h
    jr c, jr_015_4d34

    jr @+$57

    dec hl
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
    inc bc
    ld bc, $1cf6
    or d
    ld l, h
    ldh a, [c]
    ld l, h
    jp c, $f4a4

    xor b
    ld a, b
    and b
    call c, $ba20
    ld l, h
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    dec c
    ld b, $06
    ld bc, $0708
    rrca
    nop
    ld bc, $df00
    and [hl]
    and [hl]

jr_015_4d34:
    ret c

    ld a, h
    add b
    db $f4
    ld l, b
    db $ec
    db $10
    ld hl, sp+$60
    ret z

    ldh a, [$fff0]
    nop
    inc c
    ld b, $1a
    ld c, $1d
    rrca
    ld [hl], $1b
    cpl
    inc d
    cpl
    db $10
    ld [hl], $0d
    rra
    inc b
    inc b
    ld a, b
    ld b, d
    ld a, h

jr_015_4d55:
    and [hl]
    call c, $3ec7
    db $eb
    cp [hl]
    rst $38
    ld e, $bb
    ld l, [hl]
    pop af
    ld l, [hl]
    ld bc, $0300
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
    nop
    or d
    ld c, h
    and h
    ld e, b
    cp b
    ld b, b
    cp b
    ldh [$ffbc], a
    ld l, b
    sub [hl]
    ld l, h
    ld a, h
    and b
    and b
    ret nz

    nop
    nop
    jr jr_015_4d85

jr_015_4d85:
    jr jr_015_4d87

jr_015_4d87:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_4d8d

jr_015_4d8d:
    jr jr_015_4d8f

jr_015_4d8f:
    nop
    nop
    ldh [rP1], a
    jr nz, jr_015_4d55

    ret nz

    add b
    and b
    ld b, b
    ld d, b
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [hl+]

jr_015_4da6:
    dec d
    cpl
    db $10
    scf
    dec c
    ccf
    jr jr_015_4dc9

    dec b
    rlca
    inc bc
    xor h
    ld hl, sp+$54
    add sp, $2a
    call nc, $8c72
    or $e8
    db $ec
    jr jr_015_4da6

    ret nc

    ret nc

    ldh [rTAC], a
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec e
    ld a, [bc]

jr_015_4dc9:
    dec c
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    sub b
    ldh [$ffe8], a
    db $10
    xor b
    ret nc

    call nc, Call_015_6828
    jr nc, jr_015_4e0c

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    inc b
    inc bc
    ld c, $07
    rlca
    nop
    dec c
    ld b, $0f
    inc b
    dec bc
    inc b
    ld b, $00
    ldh a, [rP1]
    db $10
    ldh [$ffe8], a
    ld [hl], b
    ld [hl], b
    nop
    ld a, b
    jr nc, @+$7a

    db $10
    ld l, b
    db $10
    jr nc, jr_015_4e01

jr_015_4e01:
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $10
    ld c, $28
    rra
    ld [hl-], a

jr_015_4e0c:
    rra
    dec a
    rra
    ccf
    rra
    ld h, b
    nop
    jr jr_015_4e75

    inc b
    ld a, b
    inc b
    ld a, b
    ld a, [bc]
    db $fc
    ld h, $fc
    ld e, [hl]
    db $fc
    cp $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld h, b
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $1a
    ld c, $37
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr jr_015_4e89

    ld b, $18
    ld h, b
    inc h
    ld a, b
    ld l, h
    ld a, b
    ld d, [hl]
    db $fc
    xor d
    call c, Call_000_2cf6
    ld [$ce94], a
    or b
    rra
    ld [bc], a
    ld b, $01
    inc b
    inc bc
    ld c, $07
    dec c
    ld [bc], a
    dec e
    ld c, $1e
    nop
    nop
    nop
    or $2c
    ld a, $cc

jr_015_4e75:
    sbc h
    ld h, b
    add sp, $70
    ret c

    jr nz, jr_015_4ef0

    jr c, jr_015_4eba

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

jr_015_4e89:
    inc sp
    dec e
    dec [hl]
    ld a, [de]
    add hl, hl
    ld d, $2b
    rla
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$14
    sbc b
    sub [hl]
    ld l, h
    ld c, d
    or h
    adc $b4
    ld [$3ff4], a
    ld b, $3f
    inc d
    ld a, $01
    ld a, $0d
    dec de
    inc c
    ccf
    ld de, $1a35
    rra
    ld [bc], a
    cp $30
    ld a, [hl]
    sub h
    ld a, $c0
    ld a, $d8
    db $f4

jr_015_4eba:
    jr @-$04

    call nz, $ac56
    ld a, h
    and b
    rlca
    ld [bc], a
    ld b, $01
    inc b
    inc bc
    ld c, $07
    dec c
    ld [bc], a
    dec e
    ld c, $1e
    nop
    nop
    nop
    ldh a, [rNR41]
    jr nc, @-$3e

    sub b
    ld h, b
    add sp, $70
    ret c

    jr nz, jr_015_4f50

    jr c, jr_015_4f1a

    nop
    nop
    nop
    ccf
    inc b
    ccf
    inc de
    ld a, $03
    rra
    inc b
    dec de
    inc c
    rra
    add hl, bc
    dec c
    ld [bc], a
    rrca

jr_015_4ef0:
    ld [bc], a
    cp $70
    xor $34

jr_015_4ef5:
    sbc $60
    ld [hl], h
    adc b
    db $ec
    db $10
    cp $cc
    ld d, h
    xor b
    ld a, h
    xor b
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
    ccf
    dec e
    scf
    ld a, [de]
    dec l
    ld d, $e0
    nop
    jr jr_015_4ef5

    inc b
    ld hl, sp+$4c
    ld hl, sp-$2a

jr_015_4f1a:
    cp h
    ld [$d65c], a
    xor h
    jp z, Jump_000_3fb4

    rlca
    ccf
    inc d
    ccf
    inc bc
    dec l
    inc de
    dec de
    inc b
    rra
    dec c
    dec e
    ld a, [bc]
    rrca
    ld [bc], a
    xor $f0
    cp $34

jr_015_4f35:
    xor $70
    sbc d
    ld h, h
    db $f4
    ld [$dcee], sp
    call nc, Call_015_7ca8
    xor b
    ld bc, $0600
    ld bc, $070c
    ld a, [de]
    rrca
    dec e
    rrca
    ld [hl], $1b
    ld l, e
    inc d
    db $ed

jr_015_4f50:
    ld d, e
    ldh [rP1], a
    jr jr_015_4f35

    inc c
    ld hl, sp-$3a
    db $fc
    and $bc
    rst $18
    ld a, $77
    sbc $eb
    sbc $ab
    sub $9f
    ld h, d
    ld d, a
    ld l, $2b
    dec d
    rla
    ld [$030f], sp
    dec bc
    inc b
    dec d
    ld a, [bc]
    reti


    ld h, [hl]
    ld a, l
    ld [$64da], a
    or h
    ret z

    ld hl, sp+$00
    db $f4
    sbc b
    cp [hl]
    ld l, h
    call c, Call_000_15b0
    ld a, [bc]
    rrca
    nop
    ld [bc], a
    ld bc, $0306
    dec bc
    dec b
    ld de, $1e0e
    nop
    nop
    nop
    and h
    ret c

    sbc $ec
    or $0c
    inc e
    ldh a, [$fff8]
    ld h, b
    ld [hl], h
    jr @+$64

    inc a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    jr jr_015_4fbb

    ld [hl-], a
    ld e, $3d
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    db $10
    ld h, b

jr_015_4fbb:
    jr @+$72

    ld c, h
    ld a, b
    inc a
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
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $18
    ld c, $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr jr_015_505b

    inc b
    ld a, b
    inc c
    ld a, b
    ld c, $fc
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    inc d
    ld c, $1a
    ld c, $2f
    rra
    inc [hl]
    rra
    inc hl
    dec e
    nop
    nop
    ld h, b
    nop
    jr jr_015_5077

jr_015_5017:
    inc b
    ld a, b
    inc c
    ld a, b
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    dec [hl]
    ld a, [bc]
    ld a, e
    inc [hl]
    ld l, l
    ld [hl], $3f
    inc d
    dec l
    dec de
    rla
    ld [$050b], sp
    dec b
    ld [bc], a
    xor $f0
    rst $28
    sub [hl]
    db $db
    or [hl]

jr_015_5037:
    cp $94
    jp c, $f4ec

    ld [$d0e8], sp
    ld d, b
    and b
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
    and b
    ldh a, [rNR41]
    jr nc, jr_015_5017

    add sp, $70
    ld [hl], b
    nop

jr_015_505b:
    ld c, b
    jr nc, jr_015_50d2

    jr c, @+$3e

    nop
    rlca
    ld [bc], a
    rlca
    nop
    ld c, $07
    dec b
    inc bc
    dec bc
    inc b
    dec e
    ld c, $1d
    ld [bc], a
    ld c, $00
    ld [hl], b
    and b
    ldh a, [rNR41]
    jr nc, jr_015_5037

jr_015_5077:
    ldh a, [$ff60]
    ldh [rP1], a
    sub b
    ld h, b
    ld c, b
    jr nc, @+$3a

    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01

jr_015_5087:
    rlca
    inc bc
    rlca
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $0e
    nop
    ld [hl], b
    and b
    ldh a, [rP1]
    jr c, jr_015_5087

    ret nc

    ld h, b
    add sp, $10
    call c, Call_015_5c38
    jr nz, jr_015_50d8

    nop
    nop
    nop
    ld b, $00
    jr jr_015_50ad

    jr nc, jr_015_50c7

    ld l, d
    ld a, $77

jr_015_50ac:
    dec a

jr_015_50ad:
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ld b, b
    nop
    jr nz, jr_015_50f7

    jr nc, jr_015_5119

    jr @+$72

    ld a, b
    ldh a, [$ffdc]
    jr c, jr_015_50ac

    ret c

    or a
    ld c, [hl]
    ld e, a
    jr z, jr_015_5103

    dec bc

jr_015_50c7:
    cpl
    add hl, de
    ld d, $0f
    rrca
    nop
    rlca
    ld [bc], a
    dec bc
    dec b
    and h

jr_015_50d2:
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    xor b

jr_015_50d8:
    ld d, b
    ld hl, sp+$40
    ld a, h
    ret c

    ld [hl], $cc
    db $fc
    nop
    dec bc
    dec b
    rlca
    ld bc, $0205
    rrca
    inc b
    dec c
    ld [bc], a
    ld de, $1f0e
    ld bc, $0003
    and b
    ret nz

    and b
    ret nz

    ldh [rP1], a

jr_015_50f7:
    ret nc

    ldh [$ffe0], a
    nop
    ret nc

    ldh [$ff90], a
    ldh [$fff0], a
    nop
    dec bc
    dec b

jr_015_5103:
    rrca
    ld bc, $040f
    rlca
    inc bc
    dec e
    ld [bc], a
    dec sp
    inc e
    dec d
    ld c, $0e
    nop
    and b
    ret nz

    and b
    ret nz

    ldh a, [rNR41]
    ret c

    ld h, b

jr_015_5119:
    db $e4
    jr jr_015_5140

    jr jr_015_5166

    jr nc, jr_015_5150

    nop
    dec bc
    dec b
    rrca
    ld bc, $0c1b
    add hl, sp
    ld b, $47
    jr c, jr_015_514e

    inc e
    inc e
    nop
    nop
    nop
    and b
    ret nz

    and b
    ret nz

    ldh a, [rNR41]
    ret nc

    ldh [$ffe8], a
    db $10
    ld h, h
    jr c, @-$16

    ld [hl], b
    ld [hl], b

jr_015_5140:
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $10
    ld c, $28
    rra
    ld a, [hl-]

jr_015_514e:
    rra
    ld a, l

jr_015_5150:
    rra
    nop
    nop
    ld h, b
    nop
    jr jr_015_51b7

    inc b
    ld a, b
    inc b
    ld a, b
    ld a, [bc]
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    ld [hl], a
    rra
    ld e, d
    cpl
    ld d, l

jr_015_5166:
    dec hl
    ld a, [hl+]
    dec d
    ccf
    nop
    ccf
    dec e
    dec e
    ld [bc], a
    rlca
    inc bc
    rst $30
    db $fc
    xor l
    ld a, [$ea55]
    ld a, [hl+]
    call nc, $847e
    db $fc
    add sp, -$18
    db $10
    ret nc

    ldh [rTAC], a

jr_015_5182:
    inc bc
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06
    nop
    sub b
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_5182

    ld [hl], b
    call nc, Call_015_6828
    jr nc, jr_015_51d0

    nop
    ld [hl], a
    rra
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl-]
    dec b
    scf
    jr jr_015_51cb

    dec c
    dec c
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    rlca
    nop
    inc b
    inc bc

jr_015_51b7:
    dec c
    ld b, $16
    add hl, bc
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    sub b
    ldh [$fff0], a
    nop
    db $10
    ldh [$fff0], a
    ld h, b
    ld hl, sp+$10

jr_015_51cb:
    or b
    ld h, b
    ret c

    jr nc, jr_015_5248

jr_015_51d0:
    nop
    ld [hl], a
    rra
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl+]
    dec d
    ccf
    db $10
    rra
    dec c
    dec [hl]
    ld a, [de]
    rra
    inc bc
    rlca
    inc bc
    rlca
    nop
    inc b
    inc bc
    rlca
    inc bc
    rrca
    inc b
    ld b, $03
    dec c

jr_015_51ee:
    ld b, $0f
    nop
    sub b
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffc8], a
    jr nc, jr_015_51ee

    ld [$30c8], sp
    or b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $14
    ld c, $2a
    rra
    ccf
    rra
    inc [hl]
    rra
    nop
    nop
    ld h, b
    nop
    jr jr_015_5277

    inc b
    ld a, b
    inc b
    ld a, b
    adc d
    db $fc
    ld d, [hl]
    db $fc
    xor [hl]
    call c, Call_000_0d33
    ld a, a
    jr nc, jr_015_5293

    ld [hl], $3f
    inc d
    dec l
    dec de
    rla
    ld [$050b], sp
    dec b
    ld [bc], a
    or $28
    rst $28
    sub [hl]
    db $db
    or [hl]
    cp $94
    jp c, $f4ec

    ld [$d0e8], sp
    ld d, b
    and b
    ld [hl], a
    rra
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl+]

jr_015_5248:
    dec d
    ccf

jr_015_524a:
    db $10
    rla
    dec c
    dec a
    ld a, [de]
    rra
    inc bc
    nop
    nop
    jr jr_015_5255

jr_015_5255:
    jr jr_015_5257

jr_015_5257:
    ld a, [hl]
    nop
    ld a, [hl]

jr_015_525a:
    nop
    jr jr_015_525d

jr_015_525d:
    jr jr_015_525f

jr_015_525f:
    nop
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    add hl, bc
    ld b, $06
    ld bc, $0102
    inc bc
    nop
    nop

Call_015_5270:
    nop
    ld a, b
    add b
    db $f4
    jr c, jr_015_525a

    ld a, b

jr_015_5277:
    sbc h
    ld h, b
    db $fc
    nop
    cp b
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
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
    ld [hl], b
    and b

jr_015_5293:
    ldh a, [rNR41]
    or b
    ld b, b
    ret z

    jr nc, jr_015_524a

    ld b, b
    and b
    ld b, b
    ld h, b
    nop
    nop
    nop
    ld hl, $361f
    dec bc
    dec sp
    inc d
    dec e
    ld b, $0b
    inc b
    dec c
    inc bc
    dec bc
    inc b
    ld e, $03
    ld h, d
    sbc h
    or [hl]
    ld l, b
    cp $94

jr_015_52b7:
    sbc $b0
    rst $28
    sub [hl]
    sub $e8
    ld a, [$7204]
    sbc h
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_52da

    jr c, @+$21

    dec l
    rra

jr_015_52cf:
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_015_52b7

    inc b
    ld hl, sp+$0c

jr_015_52da:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or d
    db $fc
    nop
    nop
    jr jr_015_52e5

jr_015_52e5:
    jr jr_015_52e7

jr_015_52e7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_52ed

jr_015_52ed:
    jr jr_015_52ef

jr_015_52ef:
    nop
    nop
    nop
    nop
    jr jr_015_52f5

jr_015_52f5:
    jr jr_015_52f7

jr_015_52f7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_52fd

jr_015_52fd:
    jr jr_015_52ff

jr_015_52ff:
    nop
    nop
    and h
    ret c

    db $e4
    ld e, b
    db $f4
    ld c, b
    xor h
    ld d, b
    cp $4c
    ld [hl], h
    ret c

    jr c, jr_015_52cf

    ret nc

    jr nz, jr_015_531d

    dec b
    rlca
    nop
    scf
    inc bc
    ld e, e
    inc [hl]
    ld e, l
    ld a, [hl-]
    ld a, [hl+]
    inc e

jr_015_531d:
    inc h
    jr jr_015_5338

    nop
    ret nc

    ldh [$ff98], a
    ld h, b
    halt
    adc b
    push af
    sbc d
    reti


    ld h, $29
    ld b, $06
    nop
    nop
    nop
    dec bc
    dec b
    rrca
    nop
    inc a
    dec bc
    ld e, h

jr_015_5338:
    daa
    ld c, e
    inc [hl]
    inc h
    jr @+$1a

    nop
    nop
    nop
    ret nc

    ldh [$ff90], a
    ldh [$fffe], a
    db $10
    ld de, $fdfe
    ld h, $36
    inc c
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    jr jr_015_5355

jr_015_5355:
    jr jr_015_5357

jr_015_5357:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_535d

jr_015_535d:
    jr jr_015_535f

jr_015_535f:
    nop
    nop
    nop
    nop
    jr jr_015_5365

jr_015_5365:
    jr jr_015_5367

jr_015_5367:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_536d

jr_015_536d:
    jr jr_015_536f

jr_015_536f:
    nop
    nop
    nop
    nop
    jr jr_015_5375

jr_015_5375:
    jr jr_015_5377

jr_015_5377:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_537d

jr_015_537d:
    jr jr_015_537f

jr_015_537f:
    nop
    nop
    nop
    nop
    jr jr_015_5385

jr_015_5385:
    jr jr_015_5387

jr_015_5387:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_538d

jr_015_538d:
    jr jr_015_538f

jr_015_538f:
    nop
    nop
    ld [bc], a
    nop
    inc c
    ld [bc], a
    db $10
    ld c, $10
    ld c, $28
    rra
    ld a, [hl-]
    rra
    ld a, l
    rra
    ld [hl], a
    rra
    ld h, b
    nop
    jr @+$62

    inc b
    ld a, b
    inc b
    ld a, b
    ld a, [bc]
    db $fc
    ld l, $fc
    ld e, a
    db $fc
    rst $30
    db $fc
    ld e, d
    cpl
    ld d, l
    dec hl
    ld a, [hl-]
    dec b
    ccf
    jr @+$19

    dec c
    dec c
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    xor l
    ld a, [$ea55]
    ld a, [hl+]
    call nc, $847e
    db $fc
    add sp, -$18
    db $10
    ret nc

    ldh [$ff90], a
    ldh [rTAC], a
    nop
    inc b
    inc bc
    ld a, [bc]
    dec b
    add hl, bc
    ld b, $09
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld l, b
    or b
    db $f4
    ld c, b
    ld hl, sp+$30
    ld h, h
    jr c, jr_015_5460

    ld [$0078], sp
    jr nc, jr_015_53f1

jr_015_53f1:
    rrca
    nop
    rrca
    ld b, $1f
    add hl, bc
    dec c
    ld b, $19
    ld c, $1f
    ld [$000f], sp
    ld b, $00
    ldh a, [rP1]
    db $10
    ldh [$ffa8], a
    ld d, b

jr_015_5407:
    ld c, b
    jr nc, jr_015_5452

    jr nc, jr_015_543c

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
    nop
    nop
    ldh [rP1], a
    jr jr_015_5407

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

jr_015_543c:
    nop
    dec de
    dec b
    dec a
    ld a, [de]
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fee8
    inc b
    db $ec
    ret nc

    ld e, [hl]
    xor h
    ccf

jr_015_5452:
    ld a, [de]
    rra
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e

jr_015_5460:
    nop
    ld a, [hl]
    xor h
    db $fc
    jr nz, @+$32

    ret nz

    add sp, $70
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$76

    jr c, @+$3e

    nop
    ccf
    ld a, [de]
    rra
    nop
    ld c, $07
    rlca
    ld bc, $040b
    dec e
    ld c, $1d
    ld [bc], a
    ld c, $00
    ld a, [hl]
    xor h
    db $fc
    jr nz, @+$32

    ret nz

jr_015_5487:
    ldh a, [$ff60]
    ldh [rP1], a
    sub b
    ld h, b
    ld c, b
    jr nc, @+$3a

    nop
    ccf
    ld a, [de]
    rra
    ld [bc], a
    ld b, $01

jr_015_5497:
    rlca
    inc bc
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $0e
    nop
    ld a, [hl]
    xor h
    db $fc
    nop
    jr c, jr_015_5497

    ret c

jr_015_54a8:
    ld h, b

jr_015_54a9:
    db $ec
    db $10
    call c, Call_015_5c38
    jr nz, jr_015_54e8

    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    jr nc, jr_015_54d8

    ld l, d

Call_015_54ba:
    ccf
    ld [hl], a
    dec a
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_5487

jr_015_54c7:
    jr nc, jr_015_54a9

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp-$49
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl

jr_015_54d8:
    add hl, de
    ld d, $0f
    rrca
    nop
    rra
    ld [bc], a
    ld [hl], $19
    call nz, Call_015_6478
    sbc b
    db $f4
    xor b
    ld l, b

jr_015_54e8:
    sub b
    ret c

    jr nz, jr_015_54a8

    ld e, b
    ld d, [hl]
    xor h
    call c, $39a0
    rra
    rra
    nop
    dec c
    ld [bc], a
    ld c, $05
    dec c
    ld [bc], a
    ld de, $1f0e
    ld bc, $0003
    ret nc

    ld h, b
    ldh [rP1], a
    jr nz, jr_015_54c7

    ret nc

    ldh [$ffe0], a
    nop
    ld d, b
    ldh [$ff90], a
    ldh [$fff0], a
    nop
    add hl, sp
    rra
    rra
    nop
    rrca
    inc b
    rlca
    inc bc
    dec e
    ld [bc], a
    dec sp
    inc e
    dec d
    ld c, $0e
    nop
    and b
    ld b, b
    and b
    ret nz

    ldh a, [rNR41]
    ret c

    ld h, b
    db $e4
    jr jr_015_5550

    jr jr_015_5576

    jr nc, jr_015_5560

    nop
    add hl, sp
    rra
    rra
    nop
    dec de

jr_015_5536:
    inc c
    add hl, sp
    ld b, $47
    jr c, jr_015_555e

    inc e
    inc e
    nop
    nop
    nop
    and b
    ld b, b
    and b
    ret nz

    ldh a, [rNR41]

jr_015_5547:
    ret nc

    ldh [$ffe8], a
    db $10
    ld h, h
    jr c, jr_015_5536

    ld [hl], b
    ld [hl], b

jr_015_5550:
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
    jr z, jr_015_557c

    ld a, [hl-]

jr_015_555e:
    rra
    dec a

jr_015_5560:
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_5547

    inc b
    ld hl, sp+$04
    ld hl, sp+$0a
    db $fc
    ld l, $fc
    ld e, [hl]
    db $fc
    scf
    rra
    ld a, [de]
    rrca
    dec d

jr_015_5576:
    dec bc
    ld a, [bc]
    dec b
    rrca
    nop
    rra

jr_015_557c:
    dec c
    dec a
    ld [de], a
    scf
    dec bc
    or $fc
    xor h
    ld hl, sp+$54
    add sp, $28
    ret nc

    ld [hl], b
    add b
    db $fc
    ldh [$ffee], a
    inc d
    jp nc, $1fec

jr_015_5592:
    inc bc
    rlca
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld c, $07
    dec d
    ld a, [bc]
    dec c
    ld b, $06
    nop
    sbc h
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffd0], a
    jr nz, jr_015_5592

    ld [hl], b
    call nc, Call_015_6828
    jr nc, jr_015_55e0

    nop
    scf
    rra
    ld a, [de]
    rrca
    dec d
    dec bc
    ld a, [de]
    dec b
    ccf
    db $10
    rra
    dec c
    dec a
    ld [de], a
    daa
    dec de
    rra
    inc bc
    rlca
    nop
    inc b
    inc bc
    dec c
    ld b, $16
    add hl, bc
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    sbc h
    ldh [$fff0], a
    nop
    db $10
    ldh [$fff0], a
    ld h, b
    ld hl, sp+$10
    or b
    ld h, b
    ret c

    jr nc, jr_015_5658

jr_015_55e0:
    nop
    nop
    nop
    jr jr_015_55e5

jr_015_55e5:
    jr jr_015_55e7

jr_015_55e7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_55ed

jr_015_55ed:
    jr jr_015_55ef

jr_015_55ef:
    nop
    nop
    rra
    inc bc
    rlca
    nop

jr_015_55f5:
    inc b
    inc bc
    rlca
    inc bc
    rrca
    inc b
    ld b, $03
    dec c

jr_015_55fe:
    ld b, $0f
    nop
    sbc h
    ldh [$fff0], a
    nop
    db $10
    ldh [$ffc8], a
    jr nc, jr_015_55fe

    ld [$30c8], sp
    or b
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, jr_015_5627

    ld b, h
    jr c, @+$4c

    inc a
    sub l
    ld a, d
    sbc d
    ld [hl], c
    sbc c
    ld [hl], b
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca

jr_015_5627:
    jr z, jr_015_5648

    dec [hl]
    rra
    ld [hl], e

Jump_015_562c:
    ccf
    db $ed
    ld [hl], $56
    xor c
    ret nz

    nop
    jr nc, jr_015_55f5

    ld [$8cf0], sp
    ld hl, sp-$2c
    ld hl, sp-$02
    ld a, h
    xor [hl]
    ld a, h
    sub $bc
    ld e, b
    jr nc, jr_015_569c

    jr nc, jr_015_567e

    db $10
    inc e

jr_015_5648:
    ld [$000e], sp
    nop
    nop
    nop
    nop
    nop
    nop
    db $db
    daa
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ccf

jr_015_5658:
    ld a, [bc]
    ccf
    rlca
    cpl
    db $10
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    or d
    call z, Call_015_64da
    ld a, h
    add sp, -$24
    ld h, b
    cp [hl]
    call z, Call_000_26db
    sub $e0
    ld [hl], b
    ret nz

    rra
    inc c
    rrca
    ld [bc], a

jr_015_5675:
    ld [de], a
    inc c
    ld l, $1c
    ld e, $00
    nop
    nop
    nop

jr_015_567e:
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_015_5675

    ldh a, [rLCDC]
    ret z

    jr nc, jr_015_56fe

    jr c, jr_015_56c4

    nop
    nop
    nop
    nop
    nop
    ld hl, $361f
    dec bc
    dec sp
    inc d
    dec e
    ld b, $0b
    inc b
    dec d

jr_015_569c:
    dec bc
    dec de
    inc c
    rla
    inc c
    ld h, d
    sbc h
    or [hl]
    ld l, b
    cp $94
    sbc $b0
    rst $28
    sub [hl]
    sub $e8
    db $e4
    jr jr_015_5724

    sbc b
    nop
    ld [$0404], sp
    ld [bc], a
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec hl
    rla
    halt

jr_015_56c4:
    dec sp
    dec sp
    nop
    add c
    ldh [$fff1], a
    cp $3f
    ld a, a
    rrca

jr_015_56ce:
    rra
    ld bc, $e807
    ld [hl], b
    cp h
    ld h, b
    ld a, d
    sbc h
    ld a, h
    add e
    ld b, e
    sbc a
    cp $ff
    ld hl, sp-$04
    ret nz

    ldh a, [rNR41]
    jr nz, jr_015_5704

    ld h, b
    ld h, b
    ldh [$ffc0], a
    ldh [$ff80], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_56f5

jr_015_56f5:
    jr nz, jr_015_56f7

jr_015_56f7:
    jr nc, jr_015_56f9

jr_015_56f9:
    ldh a, [rNR41]
    ld [hl], b
    jr nz, jr_015_56ce

jr_015_56fe:
    ld h, b
    ret nc

    ld h, b
    daa
    add hl, de
    ld [hl], l

jr_015_5704:
    jr c, jr_015_5742

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    add sp, -$21
    ld h, c
    halt
    dec bc
    jr c, jr_015_5720

    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_015_5720:
    nop
    sub b
    ldh [rNR41], a

jr_015_5724:
    ret nz

    jr nz, @-$3e

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
    add l
    ld a, [hl]
    jp c, $ef2d

    ld d, d
    ld [hl], a
    ld a, [de]
    cpl
    ld [de], a
    scf
    rrca
    ld e, a
    jr nz, @+$7e

    inc de
    adc b

jr_015_5742:
    ld [hl], b
    ret c

    and b
    ld hl, sp+$50
    ld a, b
    ret nz

    cp [hl]
    ld e, b
    ld a, d
    add b
    and a
    ld b, d
    rst $20
    ld b, d
    dec hl
    rla
    halt
    dec sp

jr_015_5755:
    dec sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ld hl, $6bd6
    db $ec
    rla
    ld a, b
    adc a
    sub c
    ld a, [hl]
    ld b, d
    inc a
    inc l
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
    rlca
    nop
    jr jr_015_578c

    jr nz, jr_015_57a6

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_578c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_015_5755

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$35
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_57a6:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, a
    inc [hl]
    ccf
    rlca
    rrca
    inc bc
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    add sp, -$30
    call c, $be20
    ld l, b
    or l
    ld a, d
    nop
    nop
    stop
    jr jr_015_57c7

jr_015_57c7:
    inc e
    ld [$081c], sp
    inc [hl]
    jr jr_015_5802

    jr jr_015_5834

    jr c, jr_015_57e1

    inc b
    inc d
    dec bc
    inc de
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_57e1:
    adc $31
    ld [hl], c
    add b

jr_015_57e5:
    ret nc

    ldh [$ffe8], a
    db $10
    or b
    ld h, b
    ld h, b
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

jr_015_57fc:
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_5802:
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    inc e
    ccf
    jr jr_015_588b

    jr nc, jr_015_5889

    rlca
    nop
    jr jr_015_57fc

    ldh [$ffdf], a
    ldh [$ffdf], a
    ret nc

    cp a
    ld [hl], h
    cp a
    ld a, d
    ccf
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_015_57e5

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$42
    ld hl, sp-$13
    ld a, [$f030]
    ld h, b

jr_015_5834:
    ldh a, [$ff60]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld e, $01
    rla
    dec c
    ccf
    jr jr_015_586d

    rlca
    rrca
    rlca
    ld e, [hl]
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ld hl, sp-$30
    add sp, $30
    or b
    ret nz

    ld h, b
    add b
    rrca
    nop
    ld e, $0d
    rra
    ld [bc], a
    ld l, $14
    ld a, [de]
    inc c
    inc c
    nop

jr_015_586d:
    nop
    nop
    nop
    nop
    sub b
    ld h, b
    ld l, b
    sub b
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

jr_015_5881:
    jr nc, jr_015_5883

jr_015_5883:
    ld c, a
    jr nc, @-$6e

    ld a, a
    xor a
    ld [hl], b

jr_015_5889:
    or c
    ld h, b

jr_015_588b:
    or b
    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    dec [hl]
    rra
    ld [$d417], a
    dec hl
    cp [hl]
    pop bc
    rst $38
    push bc
    cp e
    ld l, h
    ld a, a
    dec bc
    rra
    rlca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ldh [rP1], a
    and b
    ret nz

    ld h, b
    add b
    ld e, b
    jr nc, @+$5a

    jr nc, @+$2a

    db $10
    jr jr_015_58b9

jr_015_58b9:
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_015_58c0:
    nop
    nop
    nop
    jr jr_015_58c5

jr_015_58c5:
    jr jr_015_58c7

jr_015_58c7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_58cd

jr_015_58cd:
    jr jr_015_58cf

jr_015_58cf:
    nop
    nop
    nop
    nop
    jr jr_015_58d5

jr_015_58d5:
    jr jr_015_58d7

jr_015_58d7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_58dd

jr_015_58dd:
    jr jr_015_58df

jr_015_58df:
    nop
    nop
    jr nz, jr_015_58e3

jr_015_58e3:
    ld e, b
    jr nz, jr_015_592c

    jr c, jr_015_5881

    halt
    sbc [hl]
    ld [hl], c
    or c
    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    nop
    nop

jr_015_58f3:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    sub h
    dec bc
    ld l, [hl]
    sub c
    rst $18
    ld h, l
    ei
    ld l, h
    ld e, a
    dec hl
    nop
    nop
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh [$ffc0], a
    ret nc

    jr nz, jr_015_58c0

    ret nz

    or b
    ld h, b
    or b
    ld h, b
    ld [hl], b
    jr nz, jr_015_5968

    jr nz, @+$32

    nop
    stop
    nop
    nop
    nop
    nop
    ccf
    inc bc
    rrca
    nop
    dec e
    ld c, $2e
    db $10
    ld a, [de]
    inc c
    inc c

jr_015_592c:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_58f3

    ldh [rP1], a
    ret nc

    ld h, b
    add sp, $10
    ret nc

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
    jr jr_015_595a

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_595a:
    ldh a, [rKEY1]
    ld hl, sp-$43
    ld hl, sp+$6e
    db $fd
    nop
    nop
    nop
    nop
    ld h, b
    nop
    sbc b

jr_015_5968:
    ld h, b
    add h
    ld a, b
    ld [hl], d
    cp h
    ld a, d
    adc h
    call $5506
    dec hl
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rrca
    nop
    rla
    dec c
    sub $79
    db $eb
    or [hl]
    cp a
    add $fa
    call nc, $ccb2
    ld e, h
    xor b
    or $18
    rst $08
    or [hl]
    add a
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    inc b
    nop
    nop
    nop

jr_015_599b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $0d
    rrca
    ld [bc], a
    ld b, $01
    rrca
    ld b, $0e
    ld bc, $0e1d
    rra
    nop
    nop
    nop
    cp $40
    add sp, $70
    ld a, b
    add b
    or h
    ld c, b
    db $fc
    jr nc, @+$74

    inc c

jr_015_59bd:
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
    rlca
    nop
    jr jr_015_59d2

    jr nc, jr_015_59ec

    ld l, d
    ccf
    ld [hl], a
    dec a
    nop

jr_015_59d2:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_599b

    jr nc, jr_015_59bd

    sbc b
    ldh a, [$ff78]
    ldh a, [rTAC]
    rlca
    rra
    rra
    ccf
    ccf
    ld a, b
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]

jr_015_59ec:
    ldh a, [rSVBK]
    ld a, b
    jr c, jr_015_5a2d

    sbc $69
    xor e
    ld d, [hl]
    or a
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld d, $0f
    rra
    nop
    call c, $acf8
    ld hl, sp-$3c
    ld a, b
    ld h, h
    sbc b
    db $f4
    xor b
    ld a, h
    add b
    cp $1c
    db $ec
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
    dec hl
    dec e
    scf
    call z, $f1ce
    ccf
    rst $38
    dec e
    ld [bc], a
    ld a, [hl-]
    inc e

jr_015_5a2d:
    ld a, $00
    nop
    nop
    ld a, c
    add c
    jp c, $fce2

    inc e
    db $fc
    ldh [$fffa], a
    inc [hl]
    ld [hl-], a
    inc c
    ld [hl], h
    jr c, @+$7a

    nop
    sbc $69
    xor e
    ld d, [hl]
    or a
    ld c, a
    ld e, a
    add hl, hl
    dec a
    dec bc
    cpl
    add hl, de
    ld d, $0f
    ccf
    db $10
    rst $18
    ld hl, sp-$54
    ei
    add $7b
    ld h, a
    sbc c
    push af
    xor b
    ld l, b
    sub b
    ld hl, sp+$00
    db $fc
    ld a, b
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    ldh [rLCDC], a
    ld h, b
    nop
    jr nz, jr_015_5a71

jr_015_5a71:
    dec hl
    dec e
    rra
    dec bc
    rrca
    nop
    ld e, $0d
    dec e
    ld [bc], a
    ld a, [hl-]
    inc e
    ld a, $00
    nop
    nop
    ld a, b
    add b
    or b
    ret nz

    ret c

    jr nz, jr_015_5abc

    ret z

    ld a, [$3234]
    inc c
    ld [hl], h
    jr c, @+$7a

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_5aaa

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_015_5aaa:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    ld d, l
    dec hl
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla
    inc c
    dec bc

jr_015_5abc:
    rlca
    rrca
    nop
    rra
    inc c
    rst $10
    ld a, h
    ldh [c], a
    cp l
    or e
    call $d4fb
    or h
    ret z

    ld a, b
    add b
    cp $38
    ld [hl], a
    adc [hl]
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    ldh [rP1], a
    jr nz, jr_015_5add

jr_015_5add:
    nop
    nop
    nop
    nop
    dec de
    rrca
    inc c
    inc bc
    rlca
    nop
    rrca
    ld b, $0e
    ld bc, $0e1d
    rra
    nop
    nop
    nop
    ld l, [hl]
    or b
    add sp, $70

jr_015_5af5:
    ld hl, sp+$00
    inc d
    add sp, -$04
    jr nc, jr_015_5b2e

    inc c
    ld [hl], d
    inc a
    ld a, h
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_5b18

    jr c, jr_015_5b2a

    dec l
    rra
    ld [hl], $1f
    dec hl
    rra
    ldh [rP1], a
    jr jr_015_5af5

    inc b
    ld hl, sp+$0c

jr_015_5b18:
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    or [hl]
    db $fc
    ld [$00dc], a
    nop
    nop
    nop

jr_015_5b25:
    ld a, $00
    ld e, l
    ld a, $7f

jr_015_5b2a:
    ld a, $63
    ld a, $41

jr_015_5b2e:
    ld a, $41
    ld a, $49
    ld [hl], $55
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    ld [hl], $09
    scf
    dec bc
    inc a
    rlca
    ccf
    add hl, de
    dec [hl]
    ld a, [de]
    ldh [rP1], a
    jr jr_015_5b25

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$3bf4], a
    inc b
    dec l
    ld a, [de]
    ccf
    jr jr_015_5b91

    ld b, $37
    dec de
    ld a, [de]
    dec c
    dec d
    ld a, [bc]
    rrca
    ld [bc], a
    xor $90
    sbc $b4
    db $fc
    sub b
    call nc, Call_015_7c68
    add b
    sbc $ec
    ei
    ld b, $76
    and b
    rlca
    ld [bc], a
    ld b, $01
    rrca
    ld b, $0e
    ld bc, $0609
    dec e
    ld c, $1e
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, b
    and b
    db $f4
    ld e, b
    db $e4
    jr c, @+$7e

    jr nz, jr_015_5bc4

    nop

jr_015_5b8d:
    nop
    nop
    nop
    nop

jr_015_5b91:
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    rrca
    inc bc
    inc de
    rrca
    jr jr_015_5bb0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_015_5b8d

    inc b
    ld hl, sp+$0c

jr_015_5bb0:
    ld hl, sp+$3b
    rra
    cpl
    rra
    scf
    rra
    inc l
    dec de
    daa
    dec de
    scf
    dec bc
    dec sp
    rla
    dec de
    rlca
    ld c, $fc
    ld e, d

jr_015_5bc4:
    db $fc
    or d
    ld a, h
    xor d
    ld e, h
    jp nc, $f62c

    ld [$b25f], sp
    ld l, l
    sub [hl]
    rra
    rlca
    rla
    rrca
    inc d
    rrca
    inc [hl]
    rrca
    ld a, h
    cpl
    inc a
    rrca
    dec de
    rrca
    rra
    dec bc
    cp $80
    or h
    ret z

    and h
    ret c

    cp h
    ret nc

    ld hl, sp-$40
    db $ec
    ret nc

    ld a, d
    call c, Call_015_40fc
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
    jr jr_015_5c05

jr_015_5c05:
    jr jr_015_5c07

jr_015_5c07:
    ld a, [hl]
    nop
    ld a, [hl]
    nop

jr_015_5c0b:
    jr jr_015_5c0d

jr_015_5c0d:
    jr jr_015_5c0f

jr_015_5c0f:
    nop
    nop

jr_015_5c11:
    inc h
    rra
    inc hl
    dec e
    scf
    ld [$163d], sp
    dec de
    inc b
    dec c
    inc bc
    rla
    ld [$0e17], sp
    xor d
    call c, Call_000_2cd2
    or $88
    sbc $b0
    rst $28
    sub [hl]
    sbc $e0
    db $f4
    jr @-$16

    or b
    dec l
    ld d, $76
    add hl, sp
    ccf
    nop
    db $10

Call_015_5c38:
    rrca
    inc de
    inc c
    ld d, $0b
    inc de
    inc c
    db $10
    rrca
    ld hl, sp+$60
    db $ec
    db $10
    ld a, [$3c1c]
    ret nz

    jr nz, jr_015_5c0b

    and b
    ld b, b
    jr nz, jr_015_5c0f

    jr nz, jr_015_5c11

    add c
    ld a, [hl]
    jp $ff7e


    ld a, [hl]
    cp l

jr_015_5c58:
    ld a, [hl]
    ld a, [hl]
    nop

jr_015_5c5b:
    nop
    nop

jr_015_5c5d:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_015_5c65

jr_015_5c65:
    jr jr_015_5c67

jr_015_5c67:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5c6d

jr_015_5c6d:
    jr jr_015_5c6f

jr_015_5c6f:
    nop
    nop
    xor d
    call c, Call_000_2cd2
    or $88
    sbc $b0
    rst $28
    sub [hl]
    sub $e8
    db $e4
    jr jr_015_5c58

    ldh [$ff1f], a
    nop
    jr z, @+$19

    ld a, c
    ld [hl], $3b
    dec b
    add hl, bc
    ld b, $08
    rlca
    inc c
    rlca
    rrca
    rlca
    add sp, $10
    inc h
    ret c

    ld a, [hl-]
    call c, Call_015_40bc
    jr nz, jr_015_5c5b

    jr nz, jr_015_5c5d

    ld h, b
    ret nz

    ldh [$ffc0], a
    ld e, l
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
    nop
    nop
    jr jr_015_5cb5

jr_015_5cb5:
    jr jr_015_5cb7

jr_015_5cb7:
    ld a, [hl]

Call_015_5cb8:
    nop
    ld a, [hl]
    nop
    jr jr_015_5cbd

jr_015_5cbd:
    jr jr_015_5cbf

jr_015_5cbf:
    nop
    nop
    nop
    nop
    jr jr_015_5cc5

jr_015_5cc5:
    jr jr_015_5cc7

jr_015_5cc7:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr jr_015_5ccd

jr_015_5ccd:
    jr jr_015_5ccf

jr_015_5ccf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld e, l
    ld a, $7f
    ld a, $63
    ld a, $41
    ld a, $07
    nop
    jr jr_015_5cec

    jr nz, jr_015_5d06

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_5cec:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    pop bc
    ld a, $49
    or [hl]
    ld e, l
    xor d

jr_015_5cf7:
    ld c, c
    or [hl]
    ld b, c
    cp [hl]
    ld a, $c0
    or h
    add sp, -$0c
    add sp, $35
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_5d06:
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ld a, $07
    rrca
    rlca
    ld d, h
    add sp, -$4c
    ret z

    ld e, [hl]
    and h
    db $f4
    ld [$c4fe], sp
    sub $2c
    xor h
    ld a, b
    ld e, b
    or b
    rrca
    inc bc
    rra
    inc c
    inc c
    inc bc
    rla
    ld [$0e1d], sp
    ld c, $00
    nop
    nop
    nop
    nop
    jr nc, @-$3e

    ldh [rP1], a
    jr nc, jr_015_5cf7

    add sp, $70
    ldh a, [rP1]
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    nop
    ld a, [hl+]
    jr z, jr_015_5d6d

    ld a, [bc]
    ld a, [de]
    ld [$181c], sp
    inc e
    inc e
    ld a, $1e
    ld a, $2c
    ld a, $07
    nop
    jr jr_015_5d5c

    jr nz, jr_015_5d76

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_5d5c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    xor $3e
    ld a, [hl-]
    adc $0e
    or $4a
    or $d6
    ld a, [$faee]

jr_015_5d6d:
    cp [hl]
    ld a, [$fa5e]
    jr c, jr_015_5d8a

    ld h, a
    jr @+$01

jr_015_5d76:
    ld h, e
    ld e, a
    inc [hl]
    inc [hl]
    dec bc
    dec hl
    rla
    cpl
    rla
    rra
    ld [$d63e], sp
    adc $36

jr_015_5d85:
    ld a, [$fa8e]
    ld c, [hl]
    ld d, d

jr_015_5d8a:
    xor [hl]
    ld c, d
    or [hl]
    ld [hl], $da
    xor $1a
    ld [$1d07], sp
    ld c, $2f
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop

jr_015_5d9c:
    nop
    nop
    nop
    nop
    nop
    cp $66
    db $fc
    sub [hl]
    ldh a, [$ff6c]
    ret nc

    ld h, b
    ret nc

    jr nz, jr_015_5d9c

    nop
    ld h, b
    nop
    nop
    nop
    rlca
    nop

jr_015_5db3:
    jr jr_015_5dbc

    jr nz, jr_015_5dd6

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_5dbc:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    ret nz

    nop
    jr nc, jr_015_5d85

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38
    rla
    daa
    jr jr_015_5e55

jr_015_5dd6:
    inc bc
    rst $38
    ld [hl], h
    ld a, h
    inc bc
    rla
    dec bc
    rra
    rlca
    rrca
    inc b
    jr c, jr_015_5db3

    ret z

    jr nc, jr_015_5dd6

    add b
    ldh a, [rLCDC]
    ld e, h
    and b
    ld c, d
    or h
    ld [hl], $d8
    xor $18
    inc c
    inc bc
    dec e
    ld c, $2f
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop

jr_015_5dfc:
    nop
    nop
    nop
    nop
    nop
    ld a, [$fe64]
    sub h
    ld a, [$dc6c]
    ld h, b
    ret nc

    jr nz, jr_015_5dfc

    nop
    ld h, b
    nop
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    rra
    dec bc
    scf
    jr jr_015_5e5c

    rla
    ld e, $07
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh [rP1], a
    ldh a, [$ffc0]
    ld hl, sp+$00
    call nc, $ac68
    ld [hl], b
    ld c, $07
    rrca
    nop
    ld [$1d07], sp
    ld c, $2f
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    ld [hl], h
    adc b
    db $e4
    jr jr_015_5e62

    add sp, -$14
    ld [hl], b
    ld hl, sp+$00
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    nop
    nop
    nop
    nop

jr_015_5e55:
    ld bc, $0100
    nop
    ld bc, $0100

jr_015_5e5c:
    nop
    nop
    nop
    inc bc
    nop
    nop

jr_015_5e62:
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ret nc

    ldh [$ffce], a
    ld [hl], b
    ld [$0c34], a
    inc bc
    jr @+$11

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    inc h
    ld l, $15
    ld h, $d8

jr_015_5e83:
    ld de, $59ee
    and $a5
    jp c, $b44e

    sub [hl]
    ld l, h
    and d
    ld e, h
    ldh a, [c]
    adc h
    rra
    ld bc, $061f
    dec l
    ld d, $16
    add hl, bc
    dec c
    ld [bc], a
    dec b

jr_015_5e9c:
    ld [bc], a
    rra
    nop
    inc a
    dec de
    ld a, [$3494]
    ret z

    call c, $da60
    ld l, h
    ld a, a
    add [hl]

jr_015_5eab:
    sub [hl]
    ldh [$ff90], a
    ldh [$fff0], a
    nop
    ld a, $05
    ld h, l
    jr jr_015_5eab

    ld a, b
    ld h, h
    jr jr_015_5ed2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_5e83

    ld [hl], b
    and b
    ldh a, [$ffc0]
    ret z

    jr nc, jr_015_5f32

    jr nc, jr_015_5e9c

    ld h, b
    ldh [rP1], a
    nop
    nop
    inc bc

jr_015_5ed2:
    nop
    inc c
    inc bc
    jr jr_015_5ee6

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

jr_015_5ee6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    nop
    ld [$1808], sp
    ld [$1018], sp
    jr c, jr_015_5f0a

    jr c, jr_015_5f0c

    ld a, b
    ld d, h
    ld a, l
    ld d, h
    rst $38
    cpl
    inc d

jr_015_5f03:
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca

jr_015_5f0a:
    nop
    rrca

jr_015_5f0c:
    ld [bc], a
    rla
    ld c, c
    inc l
    db $d3
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    sbc $2c
    inc [hl]
    ret c

    cp b
    ret nz

    ldh [rP1], a
    ld [hl], c
    rst $38
    jp nc, $147d

    ld a, b
    ld d, b
    jr c, jr_015_5f3a

    jr c, @+$3a

    db $10
    ld [$1010], sp
    nop
    ld e, l

jr_015_5f32:
    xor $bb
    ld c, h
    dec c
    ld [bc], a
    add hl, de
    ld c, $1e

jr_015_5f3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_015_5f03

    ld [hl], b
    and b
    add sp, -$30
    call nz, $e838
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
    jr z, jr_015_5f6d

    jr z, jr_015_5f6f

    ld l, a
    db $10
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
    ld [bc], a

jr_015_5f6d:
    rla
    add hl, bc

jr_015_5f6f:
    db $ec
    inc de
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    call c, $3e20
    call c, $c0be
    ldh [rP1], a
    xor b
    ld d, a
    ld l, a
    db $10
    jr z, jr_015_5f97

    jr z, @+$12

    jr z, jr_015_5f9b

    jr c, jr_015_5f9d

    jr c, jr_015_5f9f

    jr jr_015_5f91

jr_015_5f91:
    dec e
    xor $fb
    inc c
    dec c
    ld [bc], a

jr_015_5f97:
    add hl, de
    ld c, $1e
    nop

jr_015_5f9b:
    nop
    nop

jr_015_5f9d:
    nop
    nop

jr_015_5f9f:
    nop
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
    ld bc, $142f
    ld e, $05
    rla
    inc c
    dec bc
    rlca
    rlca
    nop
    add a
    ld [bc], a
    sbc a
    nop
    push hl
    dec de
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ret c

    jr nz, jr_015_6000

    ret c

    sbc $6c
    db $fc
    jr nz, @+$08

    ld bc, $050a
    ld b, $01
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    sbc a
    ld h, e
    db $e3
    nop
    ld b, a
    add b
    ld c, h
    add a
    ld c, a
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ld [hl], b
    ret nz

    ldh a, [rNR41]
    add sp, -$30
    call nz, $e838
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop

jr_015_6000:
    nop
    nop
    nop
    nop
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
    ccf
    ld bc, $0a35
    ldh [rP1], a
    sbc b
    ld h, b

jr_015_6025:
    add h
    ld a, b
    adc h
    ld a, b
    sub $7c
    xor [hl]
    call c, Call_000_2cf2
    ld [$3ff4], a
    nop
    dec l
    ld a, [de]
    ld l, a
    jr jr_015_6095

    inc hl
    ld e, a
    inc l
    inc a
    rrca
    rra
    nop
    rrca
    ld [bc], a
    xor $90
    sbc $b4
    db $fc
    sub b
    call nc, $fc68
    nop
    jp c, $bfec

    ld h, [hl]
    halt
    add b
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    rlca
    nop
    dec c
    ld b, $0d
    ld b, $1a
    inc c
    inc e
    nop
    ldh a, [rNR41]
    jr nc, jr_015_6025

    add sp, $70
    ld [hl], b
    nop
    ld l, b
    jr nc, jr_015_60d4

    jr nc, jr_015_60a2

    jr jr_015_6088

    nop
    nop
    stop
    nop
    nop
    inc d
    inc d
    ld d, h
    ld b, b
    ld b, b
    inc d
    inc d
    ld d, b
    ld d, b
    ld e, a
    ld d, h
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10

jr_015_6088:
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    ld c, $0b
    ld a, [de]
    rrca

jr_015_6095:
    ld a, [de]
    rrca
    ld a, [hl+]
    rra
    jr c, jr_015_60ba

    jr z, jr_015_60bc

    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    ret c

jr_015_60a2:
    ldh [$ff84], a
    ld hl, sp-$74
    ld hl, sp-$32
    db $fc
    jp c, $b6fc

    db $fc
    ld [$e29c], a
    sbc h
    ld a, [hl-]
    rrca
    jr c, jr_015_60c4

    ld a, [de]
    dec c
    jr jr_015_60c8

    dec e

jr_015_60ba:
    ld a, [bc]
    dec e

jr_015_60bc:
    ld a, [bc]
    dec e
    ld a, [bc]
    ccf
    ld a, [bc]
    sub $a8
    rst $38

jr_015_60c4:
    sub d
    db $db
    or [hl]
    xor [hl]

jr_015_60c8:
    call nc, $a8d4
    db $ec
    sbc b
    call c, $c8b0
    or b
    ccf
    ld a, [bc]
    rra

jr_015_60d4:
    ld a, [bc]
    dec e
    ld a, [bc]
    ld a, [de]
    dec c
    jr jr_015_60ea

    jr jr_015_60ec

    inc e
    rrca
    rrca
    nop
    ld a, h
    add b
    ld h, [hl]
    sbc h
    ld a, h
    add b

jr_015_60e7:
    ld h, b
    add b
    ld b, b

jr_015_60ea:
    add b
    ld b, b

jr_015_60ec:
    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_610a

    jr c, jr_015_611c

    dec l
    rra
    ld [hl], $1f
    nop
    nop
    ldh [rP1], a
    jr jr_015_60e7

    inc b
    ld hl, sp+$0c

jr_015_610a:
    ld hl, sp+$0e
    db $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    dec e
    ld b, $0b
    inc b
    dec e

jr_015_611c:
    dec bc
    rrca
    nop
    jr jr_015_6130

    xor d
    call c, $28d6
    cp $94
    sbc $b0
    rst $28
    sub [hl]
    sub $e8
    db $ec
    jr jr_015_6184

jr_015_6130:
    cp b
    jr jr_015_6142

    jr c, jr_015_6144

    ld a, [de]
    dec c
    rra
    ld a, [bc]
    ld a, [de]
    dec c
    jr jr_015_614c

    jr jr_015_616e

    inc a
    cpl
    ld e, b

jr_015_6142:
    and b
    ld l, h

jr_015_6144:
    sub b
    ld h, [hl]
    sbc h
    ld a, h
    add b
    ld b, b
    add b
    ld b, b

jr_015_614c:
    add b
    ld b, b
    and b
    ld h, b
    and b
    ld a, a
    ldh a, [$ff1f]
    ccf
    scf
    ccf
    ld b, d
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff78]
    ret nz

    ldh [$ff60], a
    ldh [rNR10], a
    jr nc, jr_015_616a

jr_015_616a:
    nop
    nop
    nop
    nop

jr_015_616e:
    nop
    nop
    nop
    nop
    nop
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    dec e
    ld b, $0b
    inc b
    dec e
    dec bc
    rla
    inc c
    nop
    nop
    xor d

jr_015_6184:
    call c, $28d6
    cp $94
    call c, $eeb0
    sub h
    rst $10
    ld [$18ef], a
    rrca
    nop
    jr jr_015_61a4

    jr c, jr_015_61a6

    jr jr_015_61a8

    ld a, [de]
    dec c
    rra
    ld a, [bc]
    ld a, [de]
    dec c
    jr jr_015_61b0

    sub h
    ld a, b
    ld e, b

jr_015_61a4:
    and b
    ld l, h

jr_015_61a6:
    sub b
    ld h, [hl]

jr_015_61a8:
    sbc h
    ld a, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b

jr_015_61b0:
    add b
    ld h, c
    ld a, $71
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
    rlca
    nop
    jr jr_015_61cc

    jr nz, jr_015_61e6

    jr nz, jr_015_61e8

    ld b, l
    ccf
    ld d, [hl]

jr_015_61cc:
    ccf
    ld l, a
    ccf
    ld a, e
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
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_61e6:
    nop
    nop

jr_015_61e8:
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ldh a, [c]
    inc a
    jr jr_015_61fa

    jr nz, jr_015_6214

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_61fa:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    pop af
    ld a, [hl]
    ld sp, hl
    ld h, [hl]

jr_015_6205:
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
    ld a, [hl+]
    rla
    inc d

jr_015_6214:
    dec bc

jr_015_6215:
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ld a, $07
    rrca
    rlca
    rrca
    inc bc
    db $fd
    ld b, d
    di
    inc a
    pop bc
    ld a, [hl]
    jp nz, $fcbc

    nop
    xor h
    ld d, b
    or h
    ld l, b
    ld hl, sp-$50
    dec bc
    inc b
    jr @+$11

    rra
    inc b
    ld h, $18
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nz, jr_015_6205

    ret nc

    ldh [$ffe0], a
    nop
    sub b
    ld h, b
    ldh a, [$ff60]
    add sp, $10
    ld [hl], b
    nop
    ret nz

    nop
    jr nc, jr_015_6215

    ld [$08f0], sp
    ldh a, [rLY]
    ld hl, sp-$2c
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    db $10
    inc b
    ld b, h
    db $10
    ld de, $5400
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    rlca
    nop
    jr jr_015_627c

    jr nz, jr_015_6296

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_627c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    push de
    dec d
    dec [hl]
    rst $08
    dec c
    rst $30
    ld c, l
    rst $30
    push de
    ei
    db $ed
    ei
    cp l
    ei
    ld e, l
    ei
    jr c, jr_015_62aa

    ld h, a
    jr @+$01

jr_015_6296:
    ld h, e
    ld e, a
    inc [hl]
    inc [hl]
    dec bc
    dec hl
    rla
    cpl
    rla
    rra
    ld [$d73d], sp
    call $f437
    adc a
    db $f4
    ld c, a
    ld d, l

jr_015_62aa:
    xor [hl]
    ld c, l
    or [hl]
    dec [hl]
    jp c, $da2d

    ld [$1d07], sp
    ld c, $2f
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    nop

jr_015_62be:
    nop
    nop
    nop
    db $fd
    ld b, $f1
    ld l, [hl]
    cp $90
    ldh a, [$ff60]
    ret nc

    ld h, b
    ret nc

    jr nz, jr_015_62be

    nop
    ld h, b
    nop
    rlca
    nop
    jr jr_015_62dc

jr_015_62d5:
    jr nz, jr_015_62f6

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_62dc:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    ret nz

    nop
    jr nc, @-$3e

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$00
    nop
    jr c, jr_015_630c

    daa

jr_015_62f6:
    jr jr_015_6337

    inc bc
    ld a, a
    inc [hl]
    push de
    ld l, e
    ld l, e
    rla
    rra
    inc b
    nop
    nop
    jr c, jr_015_62d5

    ret z

    jr nc, @-$02

    add b
    ldh a, [c]
    ld c, h
    ld d, d

jr_015_630c:
    xor h
    cp d
    call nc, Call_015_54ba
    inc c
    inc bc
    dec e
    ld c, $2f
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    inc c
    ldh a, [c]
    ld l, l
    ei
    sub l
    rst $38
    ld h, e
    sbc $6f
    db $d3
    daa
    ldh a, [rSB]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6337:
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
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld c, $01
    rra
    dec bc
    scf
    jr jr_015_638d

    rla
    scf
    rrca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld e, h
    and b
    ldh a, [c]
    inc c
    ldh [c], a
    call c, Call_000_2cd2
    ld [hl-], a
    call z, $b47a
    ld c, $07
    rrca
    nop
    ld [$1d07], sp
    ld c, $2e
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    jp c, $f274

    inc c
    ld [de], a
    db $ec
    db $ec
    ld [hl], b
    ldh a, [rP1]
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6387:
    nop
    nop

jr_015_6389:
    nop
    nop
    nop
    nop

jr_015_638d:
    nop
    nop
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
    jr jr_015_639b

jr_015_639b:
    inc a
    jr jr_015_6400

    inc a
    db $e3
    ld a, h
    inc c
    inc bc
    jr jr_015_63b4

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    dec hl
    ld e, e
    inc h
    ld l, $15
    or a
    ld a, d
    ld e, d

jr_015_63b4:
    cp l
    ld l, h
    rst $18
    or [hl]
    rst $08
    ld c, e
    or a
    sub h
    ld l, e
    and e
    ld e, h
    jp nc, $80ac

    nop

jr_015_63c3:
    ld b, b
    add b
    jr nz, jr_015_6387

    jr nz, jr_015_6389

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rra
    ld bc, $061f
    dec l
    ld d, $17
    add hl, bc
    dec c
    ld [bc], a
    dec b

jr_015_63dc:
    ld [bc], a
    rra
    nop
    inc a
    dec de
    ld a, [$3494]
    ret z

    call c, $da60
    ld l, h
    rst $38
    add [hl]

jr_015_63eb:
    sub $e0
    sub b
    ldh [$fff0], a
    nop
    ld a, $05
    ld h, l
    jr jr_015_63eb

    ld a, b
    ld h, h
    jr jr_015_6412

    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6400:
    nop
    jr nz, jr_015_63c3

    ld [hl], b
    and b
    ldh a, [$ffc0]
    ret z

    jr nc, jr_015_6472

    jr nc, jr_015_63dc

    ld h, b
    ldh [rP1], a
    nop
    nop
    nop

jr_015_6412:
    nop
    ld [$0a0a], sp
    ld e, d
    ld [bc], a
    ld e, $14
    ld a, $14
    cp [hl]
    ld [hl], $bf
    cp [hl]
    rst $38
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_6436

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

jr_015_6436:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    ldh [c], a
    cp h
    cp a
    rst $38
    cp a
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
    cpl
    inc d

jr_015_6453:
    ld e, $05
    rla
    inc c
    dec de
    ld b, a
    ld l, a
    ret c

    ei
    rst $18
    cp a
    ld b, b
    inc c
    ld b, e
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    sbc $2c
    inc [hl]
    ret c

    cp b
    ret nz

    ldh [rP1], a
    inc h

jr_015_6472:
    rra
    inc sp
    dec c
    ccf
    db $10
    dec e

Call_015_6478:
    ld b, $0b
    inc b
    dec e
    dec bc
    rla
    inc c
    add hl, de
    ld b, $0b
    inc b
    ld e, $0d
    dec c
    ld [bc], a
    add hl, de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_015_6453

    ld [hl], b
    and b
    add sp, -$30
    call nz, $e838
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    jr nc, jr_015_64c6

    jr nc, jr_015_64c8

    jr nc, jr_015_64ca

    ld [hl], b
    rra
    or b
    ld e, a
    ld [hl], b
    rra
    cpl
    inc d
    ld e, $05
    sub a
    inc c
    adc e
    rlca
    adc a
    nop
    rst $38
    dec bc
    adc a
    ld [hl], h
    db $fd
    rrca
    or d
    call z, $d4fa
    or h

jr_015_64c6:
    ret z

    ld l, b

jr_015_64c8:
    sub b
    ret c

jr_015_64ca:
    jr nz, jr_015_64c8

    jr jr_015_6524

    db $ec
    cp h
    ret nz

    jr nc, jr_015_64f2

    jr nc, jr_015_6534

    ld a, b
    ld e, a
    rst $38
    ldh [$ff3f], a

Call_015_64da:
    ld a, a
    ld l, [hl]
    ld a, a
    add h
    adc $00
    nop
    adc a
    nop
    sbc [hl]
    ld c, l
    call $e942
    cp $8e
    ret nz

    ret nz

    ret nz

    jr nz, jr_015_654f

    nop
    nop
    cpl

jr_015_64f2:
    inc d
    ld e, $05
    ld d, a
    inc c
    ld c, e
    rlca
    ld b, a
    nop
    ld a, a
    dec b
    ld c, a
    ld a, [hl-]
    ld a, [hl]
    rlca
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00
    call c, $b6a8
    ld l, h
    ld e, [hl]
    db $e4
    jr nc, jr_015_6532

    jr nc, jr_015_6534

    jr c, @+$21

    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_651e:
    nop
    nop
    nop
    ld b, a
    nop
    ld b, [hl]

jr_015_6524:
    inc bc
    ld b, a
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
    db $ec

jr_015_6532:
    db $10
    sub b

jr_015_6534:
    ld h, b
    ld hl, sp-$20
    db $e4
    jr jr_015_651e

    ld a, b
    ld hl, sp+$00
    nop
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

jr_015_654f:
    ld a, $1c
    ccf
    inc d
    ld a, [hl+]
    dec e
    ld a, [hl+]
    dec e
    ld a, [hl+]
    dec e
    rra
    dec bc
    inc e
    dec bc
    rla
    add hl, bc
    dec e
    ld [bc], a
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$37f4], a
    jr jr_015_65b1

    ld a, [de]
    ccf
    inc b

jr_015_6577:
    ccf
    dec c
    dec l
    ld [de], a
    dec d
    dec bc
    inc de
    inc c
    rrca
    ld [bc], a
    nop
    ld bc, $0103
    dec c
    inc bc
    ld de, $190f
    rrca
    add hl, sp
    rra
    dec l
    rra
    dec [hl]
    rra
    nop
    nop
    ldh [rP1], a
    jr jr_015_6577

    inc b
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    ld e, d
    db $fc
    ld d, $fc
    add hl, hl
    rra
    inc hl
    rra
    inc sp
    rrca
    dec sp
    rla
    dec de
    rlca
    dec bc
    rlca
    dec de
    rrca
    ld [de], a
    rrca

jr_015_65b1:
    ld a, [hl+]
    call c, $ec92
    sbc [hl]
    ldh [$ffbf], a
    jp nc, $f69d

    xor [hl]
    call nc, $e894
    xor h
    ret c

    inc b
    rra
    ld a, [bc]
    dec d
    ld c, $1b
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    ld c, $00
    inc b
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    dec e
    ld b, $0b
    inc b
    dec e
    dec bc
    rla
    inc c
    add hl, sp
    ld d, $aa
    call c, $28d6
    cp $94
    sbc $b0
    db $ed
    sub [hl]
    rst $10
    ld [$18ef], a
    db $f4
    cp b
    dec d
    dec bc
    cpl
    ld [de], a
    ld h, [hl]
    add hl, sp
    dec a
    inc bc
    rlca
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207
    sbc $64
    db $fc
    ret nz

    db $f4
    jr jr_015_6682

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
    dec sp
    dec d
    dec d
    ld a, [bc]
    ld l, $11
    ld h, l
    dec sp
    ccf
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0207

jr_015_6631:
    call nc, $fa68
    call c, Call_000_00fc
    ld [hl], h
    sbc b
    ld a, [$de9c]
    nop
    ret nz

    nop
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$1cea], sp
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, $dc
    ld a, [hl+]
    call nc, $c8be
    or $c8
    ld a, [hl]
    call nc, $dcaa
    ld d, $e8
    ld a, h
    add b
    cp $c4
    push de
    ld a, [hl+]
    xor [hl]
    ld a, b
    ld e, b
    or b
    jr nc, jr_015_6631

    nop
    stop
    db $10
    db $10
    db $10
    db $10
    jr c, jr_015_668a

    jr c, @+$3a

    jr c, jr_015_66b6

    jr c, @+$3a

    ld a, h
    rlca

jr_015_6682:
    nop
    jr jr_015_668c

    jr nz, jr_015_66a6

    dec h
    rra
    ld d, [hl]

jr_015_668a:
    ccf
    ld l, a

jr_015_668c:
    ccf
    ld a, e
    ccf
    ld [hl], l
    ccf
    ld hl, sp+$3c
    inc a
    call z, $f40c
    ld c, h
    db $f4
    call nc, $ecf8
    ld hl, sp-$44
    ld hl, sp+$5c
    ld hl, sp+$38

jr_015_66a2:
    rla
    ld h, a
    jr @-$07

jr_015_66a6:
    ld l, e
    ld e, a
    inc [hl]
    inc [hl]
    dec bc
    dec hl
    rla
    cpl
    rla
    rra
    ld [$d43c], sp
    call z, $d834

jr_015_66b6:
    xor h
    ld hl, sp+$4c
    ld d, b
    xor h
    ld c, b
    or h
    inc [hl]
    ret c

    db $ec
    jr jr_015_671a

    ldh a, [$ffa8]
    ret nc

jr_015_66c5:
    ld d, b
    and b
    ld hl, sp+$00
    db $e4
    ret c

    db $e4

jr_015_66cc:
    jr jr_015_66a2

    ld l, b
    cp b

jr_015_66d0:
    ld h, b
    ld hl, sp+$64
    ld hl, sp-$6c
    ldh a, [rBCPS]
    ret nc

    ld h, b
    ret nc

    jr nz, jr_015_66cc

    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_66fc

    daa
    jr jr_015_671f

    dec bc
    ld a, a
    inc [hl]
    rst $10
    ld l, e
    ld l, a
    rla
    rra
    inc b
    nop
    nop
    jr c, jr_015_66c5

    ret z

    jr nc, jr_015_66d0

    and b
    db $f4
    ld c, b
    ld d, h

jr_015_66fc:
    xor b
    inc l
    ret nc

    db $ec
    db $10
    ld a, [$b4d4]
    ld c, b
    ld l, h
    sub b

jr_015_6707:
    jp c, $9fec

    ld h, [hl]
    xor $10
    db $f4
    ld a, b
    add sp, $30
    db $f4
    ld l, b
    ld hl, sp-$70
    ld hl, sp+$60
    ret c

    ld h, b
    ret nc

jr_015_671a:
    jr nz, @-$0e

    nop
    ld h, b
    nop

jr_015_671f:
    nop
    nop
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
    jr nc, jr_015_676c

    rlca
    ld l, $17
    ld l, $17
    rra
    nop
    ld [$1d07], sp
    ld c, $2f
    db $10
    ld a, [de]

jr_015_673c:
    inc c
    inc c
    nop
    nop
    nop
    ret z

    jr nc, jr_015_673c

    nop
    jr nc, jr_015_6707

    add sp, $70
    ldh a, [rP1]
    sub b
    ld h, b
    add sp, $70
    ld a, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0307
    rrca
    rlca
    ld e, $0f
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

jr_015_676c:
    ldh a, [$ff0c]

jr_015_676e:
    ldh a, [$ff0e]
    db $f4
    inc l
    rra

jr_015_6773:
    jr c, jr_015_6794

    jr c, jr_015_6796

    ld [hl], a
    jr jr_015_67f9

    inc h
    ld d, [hl]
    add hl, hl
    ld e, h
    inc hl
    dec l
    ld [de], a
    ld a, [bc]
    db $f4
    inc b
    ld hl, sp+$0e
    ldh a, [$ff92]
    ld l, h
    ld h, h
    sbc b
    ld l, [hl]
    sub h
    or [hl]
    ld c, h
    ldh a, [c]
    call z, Call_000_0d1f
    dec de

jr_015_6794:
    inc c
    dec a

jr_015_6796:
    inc de
    ld e, a
    jr c, jr_015_67d4

    dec b
    ld c, $05
    inc e
    dec bc
    rrca
    nop
    inc b
    inc bc
    dec b
    inc bc
    rrca
    ld b, $06
    ld bc, $0305
    rlca
    ld [bc], a
    ld b, $00
    nop
    nop
    jr nc, jr_015_6773

    sbc b
    ld [hl], b
    ld hl, sp+$60
    db $e4
    jr jr_015_676e

    jr @+$3a

    db $10
    ld l, b
    jr nc, jr_015_67f0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$030a], sp
    nop
    inc e

jr_015_67d4:
    inc de
    jr c, jr_015_6806

    dec [hl]
    ld a, a
    ld a, e
    ld e, [hl]
    ld l, a
    db $f4
    push de
    db $eb
    cp e
    rst $20
    ld bc, $0909
    dec de
    ld de, $131b
    ccf
    inc sp
    ccf
    inc sp
    ccf
    scf
    ld a, a
    ld [hl], a

jr_015_67f0:
    ld a, a
    rst $28
    call nc, $c5de
    sub a
    call z, $878b

jr_015_67f9:
    add a
    add b
    adc a
    and d
    or [hl]
    xor c
    cp l
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a

jr_015_6806:
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
    cp $ce
    pop af
    db $ed
    ldh a, [c]
    jp hl


    cp $f6
    ld hl, sp-$08
    db $fc
    ldh [$fff8], a
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rrca

Call_015_6828:
    nop
    db $10
    rrca
    db $10
    rrca
    rrca
    nop
    ld [$2f07], sp
    inc d
    ld e, $05
    rla
    inc c
    rlc a
    daa
    ret nz

    cpl
    jp nz, Jump_000_09fe

    ld c, l
    or a
    ld [$1007], sp
    rrca
    db $10
    rrca
    jr nz, jr_015_6868

    ret c

    ccf
    cp a
    ld a, a
    ld l, a
    rra
    rra
    nop
    ld a, a
    add [hl]
    ld h, $c1
    dec l
    jp nz, $ee19

    ld l, [hl]
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

jr_015_6868:
    nop
    ld [$0807], sp
    rlca
    rlca
    nop
    inc b
    inc bc
    cpl
    inc d
    ld e, $05
    rla
    inc c
    db $eb
    rlca
    rla
    ldh [rNR13], a
    pop hl
    rst $38
    ld [bc], a
    daa
    db $dd
    inc b
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
    jp $e013


    ld d, $e3
    rrca
    ldh a, [$ff36]
    ei
    ei
    db $fc
    db $ed
    ldh a, [$fff0]
    nop
    ld l, [hl]
    ret nc

    ret c

    jr nz, jr_015_68fe

    or b
    add sp, $70
    ldh a, [rP1]
    adc b
    ld [hl], b
    add sp, -$10
    ldh a, [rP1]
    ld [hl-], a
    rra
    jr jr_015_68bc

    add hl, hl
    rla
    ld h, c
    ccf

jr_015_68b9:
    dec sp
    rlca
    inc bc

jr_015_68bc:
    rlca
    inc bc
    rlca
    ld bc, $9807
    ldh a, [$ff2c]
    ldh a, [$ff38]
    ret nz

    jr z, jr_015_68b9

    or h
    ld hl, sp-$44
    ret nz

    add b
    ret nz

    nop
    ret nz

    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00
    db $fc
    ret z

    jp c, $be2c

    ld h, h
    ld bc, $0300
    ld bc, $001f

jr_015_68e7:
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
    inc hl
    ret nz

    db $fc
    inc bc
    inc b
    ei
    ld a, [hl]
    add e
    ld l, a
    rst $10
    ld l, h

jr_015_68fe:
    rst $10
    ld a, e
    add l
    nop
    nop
    ldh [rP1], a
    jr jr_015_68e7

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld b, $03
    ld b, $03
    inc bc
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld d, l
    xor d
    dec de
    db $e4
    dec a
    sub $df
    inc b
    or l
    set 3, a
    ldh a, [$ffeb]
    dec e
    db $dd
    add d
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fce8
    nop
    xor $dc
    ld d, h
    xor b
    add a
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
    ld a, h
    xor b
    or $2c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_015_69d2

    jr c, jr_015_699c

    nop
    inc h
    rra
    inc sp
    dec c
    ccf
    db $10
    dec e
    ld b, $0b
    inc b
    rrca
    ld bc, $0e19
    inc [hl]
    dec de
    xor d
    call c, $28d6
    ld l, [hl]
    sub h
    sbc $b0
    rst $28
    sub [hl]
    db $d3
    xor $fe
    db $10
    cp b
    ld h, b
    ld [hl], $1d
    ld h, e
    inc a
    ld e, [hl]
    ccf
    xor [hl]
    ld [hl], c
    rst $18
    ld h, b
    rst $38
    ld b, [hl]
    cp $4f
    sbc h
    ld l, a
    db $f4
    jr c, jr_015_6a0c

    add b
    add sp, $30
    ld a, b
    add b
    inc [hl]
    ret c

    cp b

jr_015_699c:
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ld c, c
    ld [hl], $27
    jr jr_015_69c5

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop

jr_015_69b7:
    nop
    nop
    nop
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

jr_015_69c5:
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_69da

    jr c, jr_015_69ec

    dec l
    rra
    ccf
    nop
    nop

jr_015_69d2:
    nop
    ldh [rP1], a
    jr jr_015_69b7

    inc b
    ld hl, sp+$0c

jr_015_69da:
    ld hl, sp+$0e

jr_015_69dc:
    db $fc
    ld e, [hl]
    db $fc
    or [hl]
    db $fc
    inc a
    rra
    ld l, [hl]
    ld sp, $6cdf
    db $fd
    ld e, [hl]
    ld sp, hl
    ld e, [hl]
    di

jr_015_69ec:
    ld c, h
    rst $18
    ld h, b
    ld l, a
    jr nc, jr_015_69dc

    inc e
    ld d, [hl]
    xor b
    ld l, $d4
    cp [hl]
    ld d, b
    xor a
    ld d, [hl]
    or e
    ld c, [hl]
    cp $10
    ld a, b
    and b
    ld a, c
    ld e, $33

jr_015_6a04:
    inc c

jr_015_6a05:
    dec a
    ld [de], a
    ld a, [de]
    inc b
    ld d, $08
    ld a, [hl-]

jr_015_6a0c:
    inc e
    inc e

jr_015_6a0e:
    nop
    nop
    nop
    db $f4
    jr c, jr_015_6a4c

    ret nz

    add sp, $70
    ld e, b
    jr nz, jr_015_6a8e

    jr c, jr_015_6a54

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, de
    ld c, $ff
    nop
    jr c, jr_015_6a04

    dec bc
    db $f4
    add hl, bc
    or $15
    ld a, [$f85f]
    cp [hl]
    ld sp, hl
    db $ed
    ld a, [$00e0]
    jr nz, jr_015_6a05

jr_015_6a45:
    ldh [rP1], a
    ld b, b
    add b
    ld b, b
    add b
    ret nz

jr_015_6a4c:
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld a, [hl+]

jr_015_6a54:
    rla

jr_015_6a55:
    inc d
    dec bc
    ld e, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ccf
    rlca
    cpl
    rla
    ld e, e
    or $ad
    jp nc, $a45b

    cp $08
    ld hl, sp-$30
    ret nc

    jr nz, jr_015_6a0e

    ret nz

    jr nz, @-$3e

    ld a, a
    jr nc, @+$6a

    scf
    dec sp
    inc b
    dec e
    ld c, $2b
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, jr_015_6a45

    and b
    ld b, b
    ret nc

    ldh [$ffa8], a
    ld d, b
    ret nc

    ld h, b
    ld h, b

jr_015_6a8e:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_6a55

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$34
    ld hl, sp+$38
    rla
    ld h, a
    jr @-$07

    ld l, e
    ld e, a
    inc [hl]
    ld [hl], l
    dec bc
    db $eb
    ld [hl], a
    cp a
    ld h, h
    ld [hl], h
    dec bc
    cpl
    ret nc

    adc $37
    pop de
    xor [hl]
    or $49
    ld e, l
    and d
    cp [hl]
    reti


    cp [hl]
    ld c, c
    ld e, l
    and d
    nop
    nop
    add b
    nop

jr_015_6ac5:
    ld b, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ld h, b
    add b
    ldh [rP1], a
    ld l, h
    rra
    ld l, [hl]
    ld sp, $3b5f
    xor d
    ld d, c
    ld l, e
    ld sp, $0031
    nop
    nop
    nop
    nop
    ei
    inc b
    xor $90
    ld a, h
    add b
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
    rlca
    nop
    jr jr_015_6afc

    jr nz, jr_015_6b16

    jr nz, jr_015_6b18

    ld d, b
    ccf

jr_015_6afb:
    ld [hl], l

jr_015_6afc:
    ccf
    ld a, e
    ccf

jr_015_6aff:
    ld l, a
    ccf
    ret nz

    nop
    jr nc, jr_015_6ac5

    ld [$0ff0], sp
    ldh a, [rNR21]
    ei
    ld e, h
    ei
    cp [hl]
    ld sp, hl
    db $ed
    ld a, [$0000]

jr_015_6b13:
    nop
    nop
    nop

jr_015_6b16:
    nop
    nop

jr_015_6b18:
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    dec [hl]
    rra
    jr z, jr_015_6b3c

    ld e, $01
    cpl
    dec de
    ld a, a
    inc [hl]
    scf
    dec bc
    ld a, a
    scf
    ld e, a
    jr nc, jr_015_6b91

    ldh a, [c]
    dec l
    jp nc, Jump_000_2dde

    rst $20
    sbc h
    rst $08
    jr nc, jr_015_6afb

jr_015_6b3c:
    ret nz

    jr nz, jr_015_6aff

    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    jr nz, jr_015_6b13

    or b
    ld h, b
    ret nc

    ldh [$ffa8], a

jr_015_6b58:
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
    nop
    nop
    nop

jr_015_6b65:
    ld bc, $0f00
    nop
    rrca
    rlca
    ld [$0607], sp
    inc bc
    ld b, $03
    nop
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
    inc bc
    ld bc, $010f
    add hl, de
    ld c, $35
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    ld a, [hl+]

jr_015_6b91:
    inc a
    ret nz

    jr z, jr_015_6b65

    ld [$98f0], sp
    ldh [$ffec], a
    jr jr_015_6b58

    ld e, b
    xor [hl]
    ld e, h
    or $1c
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
    rra
    ld [bc], a
    dec sp
    dec d
    or d
    ld l, h
    ldh a, [c]
    ld l, h
    jp c, $b4a4

    ld l, b
    ld hl, sp+$60
    xor b
    ld [hl], b
    sbc b
    ld h, b
    ld a, h
    adc b
    dec hl
    dec d
    rra
    ld bc, $0205
    dec c
    ld b, $05
    ld [bc], a
    dec c
    ld b, $0f
    ld bc, $0003
    sub [hl]
    db $ec
    call c, $e0e0
    nop
    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    jr c, jr_015_6be5

jr_015_6be5:
    scf
    jr jr_015_6c1f

    rra
    jr nc, @+$21

    ld [hl], $1f
    ld a, c
    ld d, $ff
    ld d, [hl]
    cpl
    inc d
    ld e, $05
    rla
    inc c
    rlc a
    rst $30
    ret nz

    ccf
    pop af
    adc e
    halt
    rrca
    di
    or d
    call z, $d4fa
    or [hl]
    ret z

    ld l, a
    sub [hl]
    ld a, [$dc0c]
    and b
    or b
    ld h, b
    ld l, b
    ret nc

    rst $38
    ld d, b
    xor c
    ld d, [hl]
    ld l, a
    db $10
    jr c, jr_015_6c19

jr_015_6c19:
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_6c1f:
    nop
    nop
    scf
    ret nz

    rst $08
    ld b, $0d
    ld [bc], a
    add hl, de
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [hl], b
    and b
    add sp, -$30
    call nz, $e838
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $1e00
    ld bc, $1b36
    dec a
    ld d, $3a
    dec c
    ccf
    jr jr_015_6cc1

    ld a, $e9
    ld a, a
    add b
    nop
    add b
    nop
    add e
    nop
    ld c, h
    add e
    cp b
    ld c, a
    dec [hl]
    rst $18
    db $db
    ld l, $9f
    ld h, h
    push af
    ld e, $1c
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
    sub l
    ld l, e
    ld e, e
    and a
    ccf
    call nz, $25de
    cpl
    jr jr_015_6cbb

    add hl, de
    dec e
    ld b, $0e
    inc bc
    sub $7c
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    cp $0c
    cp e
    add $06
    ld bc, $0205
    rlca
    nop
    rrca
    ld b, $0d
    ld [bc], a
    add hl, de
    ld c, $0e
    nop
    nop
    nop
    ld d, [hl]
    and b
    add sp, $70
    ldh a, [rP1]
    ld [hl], b
    and b
    add sp, -$30
    call nz, $e838
    ld [hl], b
    ldh a, [rP1]
    dec sp
    rlca
    dec de
    inc c
    rla
    ld c, $2a
    inc d
    ld a, [de]
    inc c

jr_015_6cbb:
    inc c
    nop
    nop
    nop
    nop
    nop

jr_015_6cc1:
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
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    dec h
    ld a, [de]
    dec sp
    inc b
    dec a
    ld d, $7f
    inc b
    or l
    ld l, e
    rst $38
    ld h, b
    ld a, e
    dec d
    dec l
    ld a, [de]
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fce8
    nop
    xor $dc
    ld d, h
    xor b
    rra
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
    ld a, h
    xor b
    or $2c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$76

    jr c, jr_015_6d5c

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
    jr jr_015_6d59

    ld d, $00
    nop
    ldh [rP1], a
    ld e, b
    ldh [$ffb4], a
    ld hl, sp-$54
    ret c

    sub $2c
    ld l, d
    sub h
    adc $b4
    cpl
    inc d
    ccf
    ld b, $3e
    dec d
    ld e, $01
    ld e, $0d
    dec de
    inc c
    ccf
    ld de, $1a35
    ld a, [$fe94]
    jr nc, jr_015_6d94

    call nc, $d02c

jr_015_6d59:
    inc [hl]
    ret z

    db $fc

jr_015_6d5c:
    nop
    xor $dc
    ld d, h
    xor b
    rra
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
    ld a, h
    xor b
    or $2c
    ld a, $cc
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_015_6df2

    jr c, jr_015_6dbc

    nop
    cpl
    inc d
    ccf
    rlca
    ccf
    inc d
    ld e, $03
    ld e, $07
    dec de
    inc c
    rra
    add hl, bc
    dec c
    ld [bc], a
    ld a, [$fe94]

jr_015_6d94:
    ldh a, [$ffee]
    inc [hl]
    db $f4
    ld l, b
    cp h
    ld b, b
    db $f4
    ld [$dcee], sp
    ld d, h
    xor b
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01

jr_015_6da7:
    ld c, $07
    rlca
    nop
    add hl, bc
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

jr_015_6dbc:
    rra
    dec sp
    dec e
    scf
    jr jr_015_6dc2

jr_015_6dc2:
    nop
    ldh [rP1], a
    jr jr_015_6da7

    inc b
    ld hl, sp+$4c
    ld hl, sp-$4a
    call c, Call_000_2cda
    ld l, [hl]
    sub h
    add hl, sp
    ld b, $3f
    inc d
    ccf
    rlca
    rla
    ld [$031f], sp
    add hl, de
    rlca
    rra
    inc c
    dec e
    ld a, [bc]
    adc $b0
    cp $94
    cp $f0
    db $f4
    jr z, @-$42

    ld b, b
    db $f4
    ld [$dcee], sp
    call nc, Call_000_00a8

jr_015_6df2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    or $28
    ei
    ld d, h
    push af
    xor d
    ei
    ld d, h
    push af
    xor d
    db $eb
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    rst $10
    jr z, jr_015_70c3

    nop
    dec a
    ld a, [de]
    scf
    jr jr_015_7077

    inc de
    rla
    ld [$0d1b], sp
    dec c
    ld [bc], a
    ld [$eef4], a
    sub b
    sbc $b4
    db $fc
    sub b
    call nc, $fc68
    nop
    xor $dc
    ld d, h
    xor b
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
    ld a, h
    xor b
    or $2c
    ld a, $cc

jr_015_7077:
    db $ec
    ld [hl], b
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_015_70f2

    jr c, jr_015_70bc

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
    dec sp
    inc b
    ccf
    ld de, $021f
    rra
    dec b
    cpl
    ld [de], a
    ccf
    dec d
    scf
    ld a, [de]
    ld [$eef4], a
    db $10
    cp [hl]
    ld b, h
    call c, $aea0
    ld d, b
    jp c, $aea4

    ld d, h
    ld d, [hl]
    xor h
    ld a, [de]
    dec b
    dec a
    ld [de], a
    ld d, $09
    dec bc
    inc b
    dec e
    ld c, $1e

jr_015_70bc:
    nop
    nop
    nop
    nop
    nop
    xor h
    ld d, b

jr_015_70c3:
    ld e, [hl]
    and h
    or h
    ld c, b

jr_015_70c7:
    add sp, $10
    ld [hl], h
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
    inc d
    rrca
    ld a, [de]
    rrca
    cpl
    rra
    inc [hl]
    rra
    inc hl
    inc e
    nop
    nop
    ldh [rP1], a
    jr jr_015_70c7

jr_015_70e7:
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, $0cf2
    daa

jr_015_70f2:
    add hl, de
    ccf
    ld [bc], a
    ccf
    dec d
    rra
    ld [bc], a
    ccf
    dec d
    scf
    ld a, [de]
    ld a, [hl+]
    dec d
    dec d
    ld a, [bc]
    cp d
    ld b, h
    sbc $a0
    xor [hl]
    ld d, h
    call c, $aea0
    ld d, h
    ld d, [hl]
    xor h
    xor d
    ld d, h
    ld e, h
    and b
    ld a, [de]
    dec b
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
    xor b
    ld d, b
    ldh a, [rNR41]
    jr nc, jr_015_70e7

    add sp, $70
    ld [hl], b
    nop
    ld c, b
    jr nc, @+$76

    jr c, jr_015_716c

jr_015_7130:
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_015_714e

    jr nz, jr_015_7168

    jr nz, jr_015_716a

    ld d, b
    ccf
    ld [hl], h

jr_015_714e:
    ccf
    ld a, d
    ccf
    db $fd
    xor d
    rst $38
    inc d
    dec [hl]
    jp z, $f50a

    dec c
    ldh a, [c]
    ld d, $f9
    ld e, l
    ld a, [$f8bf]
    nop
    nop

jr_015_7163:
    nop
    nop
    add b
    nop

jr_015_7167:
    add b

jr_015_7168:
    nop
    add b

jr_015_716a:
    nop
    add b

jr_015_716c:
    nop
    add b
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
    ld e, $01
    ccf
    dec de
    ld a, e
    inc h
    cpl
    rla
    rst $28
    ld a, [$f65f]
    xor d
    call nc, $a854

jr_015_7189:
    db $fc
    ld [$d0f8], sp
    ret nc

    jr nz, jr_015_7130

    ret nz

    cpl
    rla
    ld a, a
    jr nc, jr_015_71fe

    scf
    dec sp
    inc b
    dec e
    ld c, $2b
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    jr nz, jr_015_7163

    ldh [rP1], a
    jr nz, jr_015_7167

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
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_71c0

    jr nz, jr_015_71da

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h

jr_015_71c0:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_7189

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp+$7a
    ccf
    ld l, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_71da:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e
    inc [hl]
    cp [hl]
    ld hl, sp-$13
    ld a, [$f55e]
    xor a
    jp nc, $a55f

    db $fd
    ld [bc], a
    cp $cd
    swap h
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop

jr_015_71f9:
    ret nz

    nop
    ld b, b
    add b
    ret nz

jr_015_71fe:
    nop
    ld b, b
    add b
    ccf
    rlca
    rra
    rlca
    ccf
    db $10
    dec de
    rlca
    cpl
    db $10
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    cp [hl]
    reti


    dec a
    jp nz, Jump_000_15fa

    dec a
    jp nz, $10ee

    ret nc

    ld h, b
    ld h, b
    nop
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop

jr_015_7232:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_71f9

    ld c, $f0
    dec c
    ldh a, [c]
    ld d, $f9
    ld e, a
    ld a, [$0000]
    nop
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
    ld a, d
    ccf
    ld l, a
    ccf

jr_015_7255:
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld [hl], a
    dec sp
    dec sp
    inc b
    cp a
    ld sp, hl
    db $ed
    ld a, [$f55a]
    xor a
    ret nc

    ld e, [hl]
    xor l
    rst $30
    inc c
    or $d9
    rst $08
    jr nc, jr_015_7232

    nop
    ld b, b
    add b
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

jr_015_7281:
    cpl
    rla
    rra
    rlca
    rla
    ld [$173b], sp
    rra
    ld [$142a], sp
    ld a, [de]
    inc c
    inc c
    nop
    cp b
    ret nz

    jr nc, jr_015_7255

    ret nc

    jr nz, jr_015_72d0

    ret nc

    ldh a, [rNR41]
    xor b
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
    nop
    nop
    nop
    inc bc
    nop
    ld c, $03
    dec de
    dec c
    dec a
    ld d, $00
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
    and b
    ld b, b
    jr nz, jr_015_7281

    ld a, d
    dec l
    or a
    ld e, b
    xor h
    ld [hl], e
    ld e, b
    cpl
    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l

jr_015_72d0:
    dec hl
    ld b, b
    add b
    ldh [rP1], a
    db $10
    ldh [rNR23], a
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
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
    rlca
    ld [bc], a
    ld a, [bc]
    dec b
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld a, b
    add b
    ld hl, sp+$30
    xor h
    ret c

    ret c

    ld h, b
    dec bc
    dec b
    rlca
    ld bc, $0205
    dec c
    ld b, $04
    inc bc
    dec c
    ld b, $0f
    ld bc, $0003
    sub b
    ld h, b
    ld a, b
    or b
    add sp, $30
    ld hl, sp-$40
    or b
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_015_7338

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

jr_015_7338:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc
    sub $7c
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    ld b, $03
    dec b
    inc bc
    ld b, $03
    ld e, e
    daa
    cpl
    inc d
    sbc $05
    ld [hl], a
    adc h
    xor e
    rst $00
    or a
    ld b, b
    xor a
    db $d3
    cp a
    ld c, h
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or [hl]
    ret z

    ld l, a
    sub [hl]
    ld a, [$9c0c]
    ld h, b
    or b
    ret nz

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
    cp c
    rst $08
    xor a
    ld d, b
    cp e
    call Call_015_42ad
    ld c, l
    add [hl]
    adc a
    ld bc, $0003
    nop
    nop
    ld l, b
    or b
    add sp, $10
    cp b
    ret nz

    ldh a, [rP1]
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
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
    db $db
    daa
    ld l, a
    sub h
    cp [hl]
    push bc
    or a
    ld c, h
    cp e
    rst $00
    xor a
    ld d, b
    cp a
    call z, $4fbc
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    cp $0c
    ld e, e
    and $f6
    add b
    inc bc
    ld bc, $0102
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
    xor a
    ret nc

    cp e
    ld b, l
    ld h, a
    add b
    call $0706
    nop
    dec c
    ld b, $0f
    ld bc, $0003
    sub b
    ld h, b
    ret nc

    ldh [$ffe0], a

jr_015_73f6:
    nop
    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    rlca
    nop
    jr jr_015_740e

    jr nz, jr_015_7428

    jr nc, jr_015_742a

    ld [hl], b
    ccf
    ld e, d

jr_015_740e:
    ccf
    ld l, l
    ccf
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$18f0], sp
    ldh a, [rNR32]
    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp+$57
    ccf
    ld b, d
    ccf
    ld l, l
    ld d, $7f

jr_015_7428:
    add hl, hl
    dec sp

jr_015_742a:
    dec c
    scf
    ld [$255a], sp
    ld l, l
    inc sp
    call nc, $c4b8
    jr c, jr_015_7462

    ret nc

    db $fc
    jr z, jr_015_73f6

    ld h, b
    cp $0c
    jp z, $e4f4

    jr jr_015_7481

    dec de
    scf
    dec de
    ccf
    inc bc
    ld [hl], l
    dec sp
    ld a, e
    nop
    ld bc, $0100
    nop
    nop
    nop
    add h
    ld hl, sp+$44
    cp b
    and h
    ld e, b
    and [hl]
    ld e, b
    call c, $d0e0
    and b
    db $10
    ldh [$ffe0], a
    nop
    ld d, a

jr_015_7462:
    ccf
    ld b, a
    jr c, jr_015_74d5

    inc de
    ld a, [hl]
    daa
    ccf
    ld b, $3f
    ld b, $7f
    ld [hl], $6f
    ld [hl], $de
    or b
    rst $38
    ld b, $e5
    ld a, [$1ce2]
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c
    ldh a, [c]
    inc c

jr_015_7481:
    ld a, $07
    dec de
    rlca
    jr c, @+$19

    dec e
    ld [bc], a
    daa
    jr jr_015_7501

    jr c, @+$7d

    ld bc, $0103
    ldh [c], a
    inc e
    add d
    db $fc
    ldh [c], a
    inc e
    sub h
    add sp, -$64
    ldh [$ff9a], a
    db $ec
    call z, $e8f0
    db $10
    ld a, [$4444]
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
    jr jr_015_74c2

    jr nz, jr_015_74dc

    jr nc, @+$21

    ld d, b
    ccf
    nop

jr_015_74c2:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$18f0], sp
    ldh a, [rNR14]
    ld hl, sp+$68
    ccf
    ld e, d
    ccf

jr_015_74d5:
    ld l, l
    ccf
    scf
    rra
    ld a, [hl+]
    rla
    inc d

jr_015_74dc:
    dec bc
    ld e, $01
    cpl
    dec de
    inc l
    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp-$28
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    db $ec
    nop
    cp d
    call z, Call_000_347b
    ccf
    rlca
    cpl
    rla
    rra
    rlca
    rla
    ld [$173b], sp
    rra
    ld [$000c], sp

jr_015_7501:
    rst $18
    inc h
    push hl
    cp d
    cp c
    sub $39
    add $dd
    ld [hl+], a
    cpl
    ret nc

    sbc $20
    ld h, b
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_015_7526

    ld b, b
    ccf
    ld b, b
    ccf
    and b
    ld a, a
    ld [$f77f], a
    ld a, a
    nop
    nop
    add b
    nop
    ld h, b

jr_015_7526:
    add b
    db $10
    ldh [rNR10], a
    ldh [$ff2c], a
    ldh a, [$ffba]
    db $f4
    ld a, d
    db $f4
    rst $18
    ld a, a
    ld l, d
    ccf
    ld d, l
    cpl
    jr z, jr_015_7550

    dec a
    ld [bc], a
    ld e, a
    scf
    rst $30
    ld l, b
    ld a, [hl]
    rrca
    jp c, $b2f4

    db $ec
    ld e, [hl]
    and b
    cp [hl]
    ld e, b
    or $08
    sbc $b0
    db $fc
    ld h, b
    cp b

jr_015_7550:
    ld b, b
    ld e, $0f
    rra
    nop
    db $10
    rrca
    rla
    add hl, bc
    dec sp
    inc e
    ld d, l
    jr z, @+$36

    jr jr_015_7578

    nop
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    and b
    ret nz

    ld d, b
    and b
    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla

jr_015_7578:
    inc c
    dec bc
    rlca
    ccf
    nop
    ld a, a
    ld sp, $3857
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, h
    sub b
    cp $0c
    db $db
    and [hl]
    sub $68
    ld bc, $0f00
    ld bc, $0f1e
    dec e
    ld b, $15
    ld a, [bc]
    ld c, $00
    nop
    nop
    nop
    nop
    jp z, $8f77

    or $c6
    add hl, sp

jr_015_75a7:
    inc hl
    inc e
    ld e, $03
    rlca
    nop
    nop
    nop
    nop
    nop
    and h
    ret c

    db $f4
    ld [$70e8], sp
    ld a, b
    add b
    ld [hl], h
    cp b
    db $e4
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
    ld bc, $0300
    ld bc, $0207
    rlca
    inc bc
    inc b
    inc bc
    inc c
    nop
    ld a, a
    ld [$67f8], sp
    ldh a, [$ff9f]
    ld [$f73f], a
    dec a
    sbc $69
    xor e
    ld d, [hl]
    nop
    nop
    ret nz

    nop
    jr nz, jr_015_75a7

    jr nc, @-$1e

    sbc b
    ldh a, [$ff78]
    ldh a, [$ffdc]
    ld hl, sp-$54
    ld hl, sp+$1c
    rlca
    ld a, d
    dec e
    push hl
    ld a, b
    jp hl


    jr nc, @-$56

    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    or a
    ld c, a
    ld e, a
    xor c
    ld a, l

jr_015_7606:
    adc e
    rst $28
    ld e, c

jr_015_7609:
    cp $67
    ld h, a

jr_015_760c:
    jr @+$1f

    ld c, $0b
    dec b
    call nz, Call_015_6478
    sbc b
    db $f4

jr_015_7616:
    xor b
    ld l, b
    sub b
    ret nc

jr_015_761a:
    jr nz, jr_015_760c

    nop
    ld l, b
    or b
    cp h
    ret c

    rrca
    ld bc, $040b
    inc b
    inc bc
    rrca
    ld b, $06
    ld bc, $070c
    rlca
    nop
    nop
    nop
    sbc b
    ldh [$ff90], a
    ldh [$fff0], a
    nop
    jr z, jr_015_7609

    db $f4
    ld l, b
    db $f4
    jr jr_015_7606

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld l, [hl]
    ld de, $2d7b
    scf
    add hl, bc
    dec de
    rlca
    rla
    ld [$0000], sp
    ld d, h
    cp b
    and h
    ld e, b
    db $fc
    jr nz, jr_015_7616

    ld l, b
    ret c

    jr nz, jr_015_761a

    ret z

    db $fc
    jr nc, jr_015_766d

    rlca
    inc e
    dec bc
    rra

jr_015_7666:
    inc b
    ld a, [hl-]
    inc e
    inc a
    nop
    nop
    nop

jr_015_766d:
    nop
    nop
    nop
    nop
    ld a, e
    or h
    cp b
    ld b, a
    sub $2f
    adc $3f
    ld c, h
    ccf
    jr nz, jr_015_769c

    rra
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
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
    ld c, c
    ccf
    ld b, a
    ld a, [hl-]
    ld e, a
    ld hl, $0d3b
    scf

jr_015_769c:
    add hl, bc
    dec de
    rlca
    rra
    ld [$0000], sp

jr_015_76a3:
    ld d, h
    cp b
    and h
    ld e, b
    db $f4
    jr z, jr_015_7666

    ld h, b
    sbc $24
    cp a
    ret z

    db $e4
    dec de
    nop
    nop
    nop
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
    dec d
    ld c, $1f
    inc bc
    ld a, $1b
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
    inc a
    db $db
    cp l
    ld e, e
    ei
    ld b, a
    ld [hl], e
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_76a3

    and b
    ret nz

jr_015_76e5:
    and b
    ret nz

    jr nz, @-$3e

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
    db $10
    rrca
    dec de
    rrca
    inc [hl]
    rra
    dec sp
    dec e
    scf
    jr jr_015_7729

    ld d, $e0
    nop
    jr jr_015_76e5

    and h
    ld hl, sp-$14
    ld hl, sp-$4a
    call c, Call_000_2cda
    halt
    adc h
    jp z, Jump_000_3fb4

    inc b
    ccf
    dec de
    scf
    dec de
    cpl
    inc de
    inc h
    dec de
    dec de
    inc c
    rla
    dec c
    dec c
    ld [bc], a
    cp $90
    cp $f4
    cp $70
    xor $70

jr_015_7729:
    sbc a
    ld h, [hl]
    ld a, [$ec0c]
    ret nc

    ld d, a
    xor h
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
    ld a, e
    and a
    push af
    inc hl
    inc sp
    ret nz

    jp hl


    ld [hl], b
    ld [hl], c
    nop
    ld c, c
    jr nc, @+$76

    jr c, @+$3e

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
    rst $38
    inc b
    cp a
    rst $10
    rst $38
    rst $00
    cp e
    ld h, a
    ld e, h
    inc sp
    inc hl
    inc e
    dec de
    dec b
    dec b
    ld [bc], a
    cp $90
    cp $f4
    cp $70
    xor $70
    sbc a
    ld h, [hl]
    ld a, [$ec0c]
    ret nc

    ld d, a
    xor h
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
    nop
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
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    add hl, sp
    ld b, $3f
    inc d
    cp a
    rlca
    ei
    add a
    xor h
    di
    db $db
    inc a
    inc sp
    dec c
    dec c
    ld [bc], a
    sbc $b0
    cp $94
    cp $f0
    db $ec
    ld [hl], b
    sbc [hl]
    ld h, b
    rst $38
    ld c, $ee
    ret nc

    ld d, a
    xor h
    add hl, sp
    ld b, $3f
    inc d
    ccf
    rlca
    dec de
    rlca
    inc c
    inc bc
    rst $38
    nop
    db $db
    db $fd
    rst $00
    cp d
    sbc $b0
    cp $94
    cp $f0
    db $ec
    ld [hl], b
    sbc [hl]
    ld h, b
    rst $38
    ld c, $ee
    ret nc

    ld d, a
    xor h
    rst $38
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
    ld a, e
    and a
    push af
    inc hl
    inc sp
    ret nz

    jp hl


    ld [hl], b
    pop af
    nop
    ld c, c
    jr nc, @+$76

    jr c, jr_015_784c

    nop
    ldh [rP1], a
    sbc b
    ld h, b

jr_015_7815:
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
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr jr_015_7838

    inc [hl]
    rra
    dec sp
    rra
    dec l
    rra
    ld a, [hl-]
    rra
    ldh [rP1], a
    jr jr_015_7815

    inc b
    ld hl, sp+$0c

jr_015_7838:
    ld hl, sp-$6a
    db $fc
    xor [hl]
    db $fc
    ld l, d
    db $fc
    and [hl]
    call c, Call_000_152f
    ccf
    nop
    dec a
    ld d, $3f
    inc b
    dec de
    rlca
    inc l

jr_015_784c:
    inc de
    rst $10
    jr c, @-$3f

    ldh [c], a
    jp nc, $ee2c

    sub b
    sbc $b4
    cp $90
    db $ec
    ldh a, [$ff9a]
    ld l, h
    rst $28
    ld d, $57
    xor b
    rst $20
    jp nz, $01c6

    ld c, $07
    rlca
    nop
    add hl, bc
    ld b, $1d
    ld c, $1e
    nop
    nop
    nop
    ei
    daa
    dec [hl]
    jp $70eb


    ld a, d
    ld bc, $314a
    ld [hl], l
    jr c, jr_015_78ba

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
    xor $b0
    cp $94
    cp $f0
    ld [$9c74], a
    ld h, b
    xor $1c
    db $fc
    ret nz

    ld d, a
    xor h
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

jr_015_78ba:
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
    ld a, [hl-]
    dec d
    dec hl
    dec d
    dec hl
    inc d
    ld h, b
    add b
    ret c

    and b

jr_015_78d5:
    ld b, h
    cp b
    ld c, h
    cp b
    sub $7c
    xor [hl]
    call c, Call_000_2cf2
    ld [$3ff4], a
    nop
    dec l
    ld a, [de]
    cpl
    jr jr_015_7965

    inc hl
    ld d, a
    inc l
    inc a
    rrca
    ld c, $01
    rlca
    ld [bc], a
    xor $90
    sbc $b4
    cp $90
    rst $18
    and $fa
    inc c
    inc l
    ldh a, [$ffd0]
    ldh [$fff0], a
    nop
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
    nop
    nop
    ldh a, [rNR41]
    jr nc, jr_015_78d5

    add sp, $70

jr_015_7917:
    ld [hl], b
    nop
    ld c, b
    jr nc, jr_015_7990

    jr c, jr_015_795a

    nop
    nop
    nop
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
    ld a, $11
    dec sp
    dec c
    ccf
    inc c
    ld h, b
    add b
    ret c

    and b
    ld h, h
    cp b
    ld l, h
    cp b
    sub $7c
    xor d
    call c, Call_000_2cf6
    ld [$1f94], a
    ld [bc], a
    inc sp
    inc e
    ld a, [hl-]
    dec b
    dec sp
    inc b
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    and b
    ldh a, [rNR41]
    jr nc, jr_015_7917

    ret nc

    ld h, b
    ld a, b

jr_015_795a:
    jr nc, @-$06

    ld b, b
    ld h, h
    jr c, jr_015_799c

    nop
    nop
    nop
    adc b
    adc b

jr_015_7965:
    sbc d
    sbc d
    sbc e
    sbc d
    adc a
    adc e
    cp [hl]
    xor a
    cp a
    cp a
    rst $38
    rst $18
    jr nz, jr_015_7993

    and b
    and b
    and b
    and b
    ldh [rNR41], a
    jr c, @-$1e

    ld h, h
    ld hl, sp+$6c
    ld hl, sp+$6e
    db $fc
    rst $28
    rst $18
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

jr_015_7990:
    rst $38
    ld a, d
    db $fc

jr_015_7993:
    or $fc
    ld [$e2fc], a
    db $fc
    or $e8
    rst $38

jr_015_799c:
    ldh a, [c]
    db $fd
    or $ee
    db $f4
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
    ld [hl], l
    ld a, a
    ld a, a
    ld [hl], l
    dec sp
    ld [hl], l
    call c, $d4e8
    ld hl, sp-$38
    ldh a, [$ffd4]
    add sp, -$24
    ldh [$ffea], a
    call c, $d0fe
    xor h
    ret nc

    dec [hl]
    ld a, e
    dec sp
    ld a, a
    ccf

jr_015_79c6:
    ld a, a
    rra
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

jr_015_79de:
    nop
    nop
    nop
    ld d, a
    ccf
    ld b, d
    ccf
    ld l, l
    ld d, $7f
    add hl, hl
    dec sp
    dec c
    rla
    add hl, bc
    dec sp
    rla
    daa
    jr jr_015_79c6

    cp b
    call nz, Call_000_2c38
    ret nc

    cp $28
    cp e
    ld h, [hl]
    sbc $2c
    cp h
    ret nc

    add sp, $30
    ldh [c], a
    cp h
    or d

jr_015_7a04:
    call z, $d4fa
    or h
    ret z

    ld l, [hl]
    sub b
    rst $38
    ld c, $6e
    ret nc

    or h
    ret c

    cpl
    dec e
    rra
    ld [$007f], sp
    add b
    ld a, a
    adc b

jr_015_7a1a:
    ld [hl], a
    sub h
    ld l, e
    sbc h
    ld l, e
    ret


    ld [hl], a
    ret nc

    ld h, b
    add sp, -$30
    ld hl, sp+$00
    call nc, $fc38
    jr nz, jr_015_7a04

    jr nz, jr_015_79de

    nop
    add b
    nop
    and d
    ld a, a
    push de
    ld a, a
    xor d
    ld a, a
    ld a, a
    ld a, $7f
    ld a, $5d
    ld a, $3e
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, $c4b8
    jr c, jr_015_7a86

    ret nc

    db $fc
    jr z, jr_015_7a1a

    ld h, b
    jp c, Jump_000_002c

    nop
    nop

jr_015_7a64:
    nop
    ld a, a

jr_015_7a66:
    nop
    add b
    ld a, a
    adc b
    ld [hl], a
    sub h
    ld l, e
    sbc h
    ld l, e
    ret


    ld [hl], a
    cp a
    sub $ee
    jr nc, jr_015_7a66

    ld b, b
    or b
    ld b, b
    ret nc

    jr nz, jr_015_7a64

jr_015_7a7c:
    ld [hl], b
    cp b
    ld b, b
    call nc, $ec38
    jr nc, jr_015_7a7c

    nop
    add b

jr_015_7a86:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0102
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    xor h
    ret c

    halt
    xor h
    ld [hl+], a
    call c, $f806
    db $fc
    nop

jr_015_7ab3:
    ret nc

    jr nz, @+$32

    ret nz

jr_015_7ab7:
    ld [$18f0], sp
    ldh a, [rNR32]
    ld hl, sp-$4c
    ld hl, sp+$6c
    ld hl, sp+$7f
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld a, $01
    cpl
    dec de
    ld a, e
    inc [hl]
    ccf
    rlca
    db $fc
    ld hl, sp+$58
    ldh a, [$ffa8]
    ret nc

    ld e, b
    and b
    add sp, $10
    add sp, -$30
    ret nc

    jr nz, @-$5e

    ret nz

    rrca
    rlca
    rrca
    nop
    ld [$1d07], sp
    ld c, $2a
    inc d
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    jr nz, jr_015_7ab3

    ldh [rP1], a
    jr nz, jr_015_7ab7

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld [hl], h
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp+$1a
    dec b
    inc hl
    dec e
    ld [hl-], a
    dec e
    ld [hl], e
    dec a
    ld e, d
    dec a
    ld l, [hl]
    dec a
    ld a, d
    dec a
    ld a, $1d
    xor d
    db $fc
    ld d, [hl]
    db $fc

jr_015_7b35:
    xor d
    call c, $ac76
    ld d, d
    xor h
    ld d, d
    xor h
    ld [hl+], a
    call c, $fc02
    dec hl
    ld e, $15
    dec bc
    ld a, [de]
    dec b
    cpl

jr_015_7b48:
    jr jr_015_7bc9

    inc sp
    ccf
    inc b
    rrca
    rlca
    rra
    dec bc
    db $fc

jr_015_7b52:
    nop
    ld d, b
    and b
    ret nc

    jr nz, jr_015_7b48

    jr nz, jr_015_7b52

    sub b
    add sp, $50
    or b
    ld h, b
    ld h, b
    add b
    dec sp
    inc b
    cpl
    inc de
    dec de
    inc c
    dec c
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
    jr nz, jr_015_7b35

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
    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    nop
    jr jr_015_7b90

    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_7b90:
    ccf
    ld [bc], a
    ld [bc], a
    sub d
    sub d
    jp nc, Jump_000_3612

    add $0e
    or $4e
    or $d6
    ld a, [$faee]
    ld a, d
    ccf
    ld h, h
    ccf
    jr c, jr_015_7bbe

    ld [hl], a
    ld [$63df], sp
    ld a, a
    inc [hl]
    inc [hl]
    dec bc
    dec hl
    rla
    cp [hl]
    ld a, [$fa4e]
    ld a, $d6
    sbc $26
    cp $8e
    cp $4e
    ld e, [hl]

jr_015_7bbe:
    xor [hl]
    xor [hl]
    sub $1f
    rlca
    rra
    ld [$073b], sp
    ld e, h
    dec hl

jr_015_7bc9:
    ld l, a
    inc [hl]
    scf
    dec de
    dec de
    rlca
    inc bc
    rlca
    or [hl]
    jp c, Jump_000_2adc

    inc a
    add $74
    xor d

jr_015_7bd9:
    db $e4
    ld e, d
    db $fc
    or [hl]
    ld a, b
    call z, Call_015_5cb8
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
    rlca
    nop
    jr jr_015_7c10

    jr nz, @+$21

    dec h
    rra
    ld d, [hl]
    ccf
    ld l, a

jr_015_7c10:
    ccf
    nop

jr_015_7c12:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_015_7bd9

    ld [$48f0], sp
    ldh a, [$ffd4]
    ld hl, sp-$14
    ld hl, sp+$7a
    ccf
    ld h, h
    ccf
    jr c, jr_015_7c3e

    scf
    ld [$037f], sp
    rst $38
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    rlca
    cp h
    ld hl, sp+$4c
    ld hl, sp+$38
    ret nc

    ret c

    jr nz, @-$0e

    add b
    ldh a, [rLCDC]
    ld d, b

jr_015_7c3e:
    and b
    xor b
    ret nc

    rrca
    rlca
    rra
    ld [$073b], sp
    ld e, h
    dec hl
    ld l, a
    inc [hl]
    inc [hl]
    dec de
    inc e
    inc bc
    inc b
    inc bc
    cp b
    ret nc

    ret c

    jr nz, jr_015_7c8e

    ret nz

    ld [hl], h
    xor b
    db $e4
    ld e, b
    db $fc
    jr nc, jr_015_7c12

    ld c, b
    and h
    ld e, b
    ld b, $03
    dec b
    inc bc
    ld b, $03
    dec b

Call_015_7c68:
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
    ld a, $07
    rrca
    rlca
    rrca
    inc bc
    dec bc
    inc b
    inc e
    rrca
    dec sp
    inc d
    rra

jr_015_7c8e:
    inc c
    dec c
    nop
    ld e, d
    or h
    ld e, d
    or h
    ld [hl-], a
    call z, Call_000_1ce6
    ld a, [hl+]
    call c, $ecd6
    xor d
    ld d, h
    call c, $ba68
    ld c, h
    ld a, h
    nop
    nop
    nop
    nop

Call_015_7ca8:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$60
    db $fc
    ld a, b
    ld a, [hl]
    inc a
    inc sp
    ld e, $03
    ld bc, $020d
    jr @+$11

    dec [hl]
    rra
    dec sp
    ld e, $6f
    dec [hl]
    ld d, l
    ld a, [hl+]
    ld e, d
    dec h
    ld d, $e0
    adc d
    db $f4
    call z, Call_015_5270
    xor h
    ld l, d
    sub h
    sbc [hl]
    ld l, b
    ld [hl], $dc
    ld h, d
    sbc h
    inc l
    inc de
    dec e
    ld [bc], a
    rra
    dec c
    scf
    inc c
    add hl, sp
    ld d, $75
    dec de
    ld e, a
    jr nz, jr_015_7d67

    dec bc
    ldh a, [c]
    ld c, h
    ld a, [$f4d4]
    ret z

    xor b
    ret nc

    ld hl, sp+$00
    ld [hl], h
    sbc b
    cp $cc
    db $ec
    nop
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
    jr nz, @-$3e

    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_015_7d29

jr_015_7d29:
    jr c, @+$12

    inc a
    jr @+$40

    inc e
    ld a, [de]
    inc c
    inc bc
    nop
    inc c
    inc bc
    jr @+$11

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    ld d, l
    ld a, [hl+]
    ld e, [hl]
    ld hl, $0ef9
    dec e
    ld [$f50e], a
    ld c, [hl]
    push af
    cp a
    ldh [c], a
    ld h, l
    sbc d
    sbc [hl]
    ld h, l
    ld h, a
    sbc b
    nop
    nop
    ret nz

    nop

jr_015_7d55:
    and b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    add b
    nop
    ccf
    ld b, $3f
    ld d, $5c
    dec hl

jr_015_7d67:
    ld l, $11
    rla
    ld [$050a], sp
    ld a, [bc]
    dec b
    rra
    nop
    ldh a, [c]
    ld c, h
    ld a, [$b4d4]
    ld c, b
    add sp, -$70
    ld a, b
    ret nz

    cp h
    ld l, b

jr_015_7d7d:
    ld a, d
    adc h
    sbc $e4
    inc a
    dec de
    ld a, $05
    ld h, l
    jr jr_015_7d7d

    ld a, b
    ld h, h
    jr @+$1b

jr_015_7d8c:
    nop
    inc bc
    ld bc, $0001
    db $f4
    nop
    jr nz, jr_015_7d55

    and b
    ld b, b
    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$fff0], a
    nop
    nop
    db $10
    db $10
    jr c, jr_015_7dce

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
    rrca
    add d
    sub [hl]
    xor c
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or [hl]
    ret z

    ld l, a
    sub [hl]
    ld a, [$6c0c]

jr_015_7dce:
    ret nc

    or h
    ret c

    rra
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
    jr c, jr_015_7d8c

    rst $30
    rst $28
    or $c6
    pop hl
    ld c, a
    ldh [c], a
    ld e, $4d
    rra
    ld [bc], a
    rrca
    nop
    ld b, $00
    db $f4
    jr c, jr_015_7dce

    ld h, h
    ld h, d
    sbc h
    ld a, d
    or h
    db $fc
    ld [$e0d8], sp
    add sp, $30
    add sp, $10
    nop
    nop
    inc e
    nop
    inc hl
    inc e
    inc hl
    inc e
    ld [hl], e
    inc c
    ld l, l
    ld [hl-], a
    ld [hl], l
    ld a, [bc]
    ld c, d
    inc [hl]
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
    rrca
    ld [bc], a
    ld d, $09
    ld c, [hl]
    inc [hl]
    adc $74
    call c, $dc68
    ld l, b
    db $fc
    ld l, b
    ld l, h
    jr c, @+$3a

    db $10
    stop
    ld a, [hl-]
    rlca
    rst $08
    ld [hl], $3e
    pop bc
    rst $08
    ld [bc], a
    ld e, $0d
    rra
    ld [bc], a
    rrca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0807], sp
    rlca
    inc e
    inc bc
    dec de
    inc c
    ld e, e
    daa
    cpl
    inc d
    ld e, $05
    rla
    inc c
    adc e
    rlca
    rst $00
    nop
    rst $08
    ld bc, $867f
    ldh [c], a
    cp h
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ld hl, sp+$00
    or h
    ld e, b
    sbc $6c
    dec e
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
    ld c, $4e
    or a
    rst $38

jr_015_7e94:
    nop
    add [hl]

jr_015_7e96:
    inc bc
    add a
    nop
    inc c
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    xor h
    ret nc

    ret z

    jr nc, jr_015_7e96

    nop
    ret c

    ldh [$ffe4], a
    jr jr_015_7e94

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
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
    dec l
    ld [de], a
    ld d, a
    inc l
    ld e, l
    ld l, $2d
    inc de
    ld [de], a
    dec c
    dec bc
    inc b
    rlca
    ld bc, $0207
    sbc $b0
    cp $94

jr_015_7ed5:
    xor $f0
    call c, $fa60
    adc h
    ld l, a
    or $9e
    ld h, b
    ld [hl], b
    add b
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld a, [de]
    rrca
    scf
    rra
    inc a
    rra
    inc sp
    dec e
    daa
    jr @-$1e

    nop
    jr jr_015_7ed5

    inc h
    ld hl, sp-$14
    ld hl, sp+$56
    db $fc
    xor d
    call c, $2cd6
    ld [$0194], a
    nop
    rlca
    nop
    jr jr_015_7f0e

    jr nz, jr_015_7f28

    jr nc, jr_015_7f2a

    ld [hl], b
    ccf
    ld e, d

jr_015_7f0e:
    ccf
    ld l, l
    ccf
    ld a, d
    ccf
    ld a, a
    ccf
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    rra
    nop
    cpl
    dec de
    ld a, e
    inc [hl]
    cp h
    ld hl, sp-$04
    ld hl, sp+$58
    ldh a, [$ffa8]

jr_015_7f28:
    ret nc

    ld d, b

jr_015_7f2a:
    and b
    ldh a, [rP1]
    db $fc
    ret nz

    jp nc, Jump_000_002c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
