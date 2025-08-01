; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    rla
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
    cpl
    ld de, $142b
    ldh [rP1], a
    db $18, $e0
    inc b
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc
    xor [hl]
    call c, Call_000_2cf2
    ld [$3014], a
    rrca
    dec [hl]
    ld a, [bc]
    add hl, de
    ld b, $09
    rlca
    dec de
    rlca
    dec h
    dec de
    dec sp
    inc d
    jr c, jr_017_4040

    ld b, $f8
    ld d, [hl]
    xor b
    ld c, [hl]
    or b
    rst $08
    or $ee
    ld [hl], b
    ld d, d
    db $ec
    xor $14
    adc [hl]

jr_017_4040:
    ld hl, sp+$1d
    inc bc
    add hl, bc
    rlca
    ld [$0407], sp
    inc bc
    rrca
    ld [bc], a
    rra
    inc c
    ld e, $00
    nop
    nop
    call c, $c8e0
    ldh a, [$ff88]
    ldh a, [$ff90]
    ld h, b
    ld hl, sp+$20
    ld [hl], h
    jr jr_017_409a

    nop
    nop
    nop
    dec e
    inc bc
    add hl, bc
    rlca
    ld [$0c07], sp
    inc bc
    rra
    dec c
    dec e
    ld [bc], a
    ld c, $00
    nop
    nop
    call c, $c8e0
    ldh a, [$ff88]
    ldh a, [$ff90]
    ld h, b
    ldh a, [rNR41]
    ld l, b
    db $10
    jr nc, jr_017_407f

jr_017_407f:
    nop
    nop
    dec e
    inc bc
    add hl, bc
    rlca
    ld [$0407], sp
    inc bc
    rlca
    ld [bc], a
    dec bc
    inc b
    ld b, $00
    nop
    nop
    call c, $c8e0
    ldh a, [$ff88]
    ldh a, [$ff98]
    ld h, b
    db $fc

jr_017_409a:
    ld e, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    nop
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
    nop
    nop
    nop
    nop
    or b
    nop
    ld d, b
    and b

jr_017_40c1:
    daa
    jr @+$3a

    rlca
    jr nz, jr_017_40e6

    jr nz, @+$21

    ld d, b
    ccf
    ld [hl], h
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ret z

    jr nc, jr_017_410c

    ret nz

jr_017_40d5:
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

jr_017_40e6:
    dec bc
    ld e, $01
    ccf
    dec de
    ld l, e
    inc [hl]
    ld a, a
    rlca
    ccf
    rlca
    ld e, b
    ldh a, [$ffa8]
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    ld hl, sp-$40
    call c, $a428
    ret c

    jr c, jr_017_40c1

    rrca
    nop
    ld [$0b07], sp
    inc b
    dec e
    ld c, $2b
    inc d
    ld a, [de]

jr_017_410c:
    inc c
    inc c
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, jr_017_40d5

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
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc [hl]
    dec bc
    ld a, [hl]
    ld sp, $1b2f
    ld a, e
    inc h
    ld c, a
    scf
    ccf
    rlca
    rrca
    nop
    ld [$1b07], sp
    inc c
    ld l, $11
    inc de
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

    ldh [$ffc0], a
    ldh a, [rNR41]
    ld h, b
    ret nz

    or b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    dec [hl]
    rra
    ld a, [hl+]
    rla
    inc d
    dec bc
    ld a, $01
    ld a, a
    dec sp
    ld a, e
    inc b
    ld c, a
    scf
    ccf
    rlca
    rrca
    nop
    ld [$0f07], sp
    ld b, $1e
    add hl, bc
    dec c
    ld b, $1b
    inc c
    ld e, $00
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

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
    nop
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
    add hl, hl
    ld d, $03
    nop
    inc c
    inc bc
    jr jr_017_41a6

    dec [hl]
    rra
    ccf
    ld a, [de]
    rst $28
    inc [hl]
    ld [hl], l
    adc e
    dec de
    rst $20
    ldh [rP1], a
    db $10
    ldh [rNR23], a

jr_017_41a6:
    ldh a, [$ff4c]
    ld hl, sp-$44
    ld hl, sp+$6e
    db $fc

jr_017_41ad:
    sub $7c
    ldh [c], a
    cp h
    add hl, de
    ld b, $2c
    rra
    ld a, $0f
    cpl
    rra
    ld d, $0f
    rrca
    nop
    dec de
    dec c
    rrca
    ld [bc], a
    rra
    db $e4
    ld a, [hl]
    add l
    scf
    call z, $e71b
    adc a
    ld [hl], b
    rra
    ldh [$ff3d], a
    db $db
    cp b
    ld e, a
    or d
    call z, $d4fa
    or h
    ret z

    ld l, b
    sub b
    ldh a, [rP1]
    jr c, jr_017_41ad

    cp h
    ret z

    add sp, $00
    rlca
    inc bc
    ld c, $03
    dec de
    inc c
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ldh [$ff9d], a
    ld h, d
    cpl
    push de

MoveToHouse::
    ld d, l
    add d
    adc c
    ld b, $0f
    ld bc, $0003
    nop
    nop
    and b
    ret nz

    ldh [rP1], a
    ret nc

    ldh [$ffa0], a
    ld b, b
    ld d, b
    ldh [$ffd0], a
    ldh [$ffe0], a
    nop
    nop
    nop
    rra
    ldh [$ff9b], a

jr_017_4214:
    ld l, h
    add hl, hl
    sub $57
    xor b
    and d
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    ldh a, [rNR41]
    ret nc

    ldh [$ffe8], a
    db $10
    ld h, h
    jr c, jr_017_4214

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rra
    ldh [$ff9f], a
    ld h, h
    cpl
    db $d3
    ld a, l
    add d
    cp e
    inc e
    dec d
    ld c, $0e
    nop
    nop
    nop
    and b
    ret nz

    ldh a, [rP1]

jr_017_4245:
    sbc h
    ld [hl], b
    ldh a, [c]
    inc l
    ld [hl-], a
    inc c
    inc h
    jr jr_017_4266

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld c, $04
    nop
    nop
    nop
    nop
    nop

jr_017_4266:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ldh [rLCDC], a
    rrca
    nop
    jr jr_017_427c

    jr nz, jr_017_4296

    jr nz, jr_017_4298

    ld d, b
    ccf
    ld [hl], h

jr_017_427c:
    ccf
    ld a, d
    ccf
    ld l, a
    ccf
    ldh [rP1], a
    jr nc, jr_017_4245

    ld [$08f0], sp
    ldh a, [rNR14]
    ld hl, sp+$5c
    ld hl, sp-$44
    ld hl, sp-$14
    ld hl, sp+$00
    nop
    nop
    nop
    nop

jr_017_4296:
    nop
    nop

jr_017_4298:
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    dec c
    nop
    inc bc
    nop
    inc c
    inc bc
    jr jr_017_42b6

    dec [hl]
    rra
    dec sp
    ld e, $6f
    inc [hl]
    push de
    dec hl
    db $db
    and a
    dec bc
    inc b
    dec c
    rlca
    rrca

jr_017_42b6:
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    dec b
    ld b, $03
    rlca
    nop
    dec c
    ld b, $6f
    call nc, $c5be
    rst $30
    ld c, h
    db $eb
    rst $00
    scf
    ldh [rIE], a
    jr nz, jr_017_434b

    db $db
    db $ec
    sbc a
    dec b
    inc bc
    inc bc
    ld bc, $0307
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld h, b
    sbc e
    db $f4
    rst $28
    ld [hl], h
    db $fd
    ld [hl], d
    jp hl


    or [hl]
    rst $18
    ld h, c
    ld h, e
    nop
    nop
    nop
    rst $38
    ld h, b
    sbc e

jr_017_42f4:
    db $f4
    rst $28
    ld [hl], h
    rst $38
    ld [hl], b
    ld [$dcb4], a
    ld h, b
    ld h, b
    nop
    nop
    nop
    and b
    ret nz

    ldh a, [rNR41]
    ret nc

    ldh [$ffe8], a
    db $10
    ld h, h
    jr c, jr_017_42f4

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rst $38
    ld h, b
    sbc e
    db $f4
    rst $28
    ld [hl], l
    db $fd
    ld [hl], d
    db $eb
    or h
    db $dd
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    and b
    ret nz

    ldh a, [rP1]

jr_017_4325:
    sbc h
    ld [hl], b
    ldh a, [c]
    inc l
    ld [hl-], a
    inc c
    inc h
    jr jr_017_4346

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
    ld [hl], $19
    daa
    ld a, [de]
    dec h
    dec de
    ldh [rP1], a
    jr jr_017_4325

    inc b

jr_017_4346:
    ld hl, sp-$74
    ld hl, sp+$56
    db $fc

jr_017_434b:
    cp [hl]
    call z, Call_000_2cf2
    jp c, $3f64

    inc bc
    ccf
    db $10
    rra
    ld [bc], a
    add hl, de
    rlca
    ld [hl], a
    add hl, bc
    ld a, e
    inc h
    ld a, a
    dec h
    ccf
    inc de
    cp $e0
    cp $84
    db $fc
    and b
    call z, $f670
    ret z

    ld [$fe14], a
    call nc, $ecfe
    dec a
    inc de
    dec sp
    rla
    ld d, $0b
    rrca
    inc b
    rrca
    ld [bc], a
    rra
    inc c
    ld e, $00
    nop
    nop
    call c, $e8e0
    ldh a, [$ffb0]
    ldh [$fff8], a
    db $10
    ld hl, sp+$20
    ld [hl], h
    jr jr_017_43ca

    nop
    nop
    nop
    dec a
    inc de
    dec sp
    rla
    ld d, $0b
    rrca
    inc b
    rra
    ld a, [bc]
    rra
    nop
    ld c, $00
    nop
    nop
    call c, $e8e0
    ldh a, [$ffb0]
    ldh [$fff8], a
    db $10
    ldh a, [rNR41]
    ld l, b
    db $10
    jr c, jr_017_43af

jr_017_43af:
    nop
    nop
    dec a
    inc de
    dec sp
    rla
    ld d, $0b
    rrca
    inc b
    rlca
    ld [bc], a
    dec bc
    inc b
    ld c, $00
    nop
    nop
    call c, $e8e0
    ldh a, [$ffb8]
    ldh [$fff8], a
    db $10
    db $fc

jr_017_43ca:
    jr z, jr_017_4448

    nop
    jr c, jr_017_43cf

jr_017_43cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_4448:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

MoveToToolRoom::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_4ffd:
    nop
    nop
    nop
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
    inc b
    inc bc
    ld [$0a07], sp
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff28]
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0a00
    ld bc, $0304
    ld a, [bc]
    dec b
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
    jr nz, jr_017_4ffd

    db $10
    ldh [$ff28], a
    ret nc

    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$0a07], sp
    dec b
    inc c
    inc bc
    ld [$0007], sp
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff28]
    ret nc

    jr @-$1e

jr_017_505f:
    ld [$06f0], sp
    nop
    add hl, bc
    ld b, $09
    ld b, $08
    rlca
    ld [$0a07], sp
    dec b
    inc c
    inc bc
    ld [$3007], sp
    nop
    ret z

    jr nc, @+$4a

    or b
    ld [$08f0], sp
    ldh a, [$ff28]
    ret nc

    jr jr_017_505f

    ld [$01f0], sp
    ld bc, $0000
    jr z, jr_017_5087

jr_017_5087:
    ld e, $00
    ld hl, $481e
    scf
    ld d, h
    cpl
    ld [hl], b
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_017_50b9

    nop
    nop

jr_017_509b:
    ldh [rP1], a
    sbc b
    ld h, b
    ld h, h
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr z, jr_017_50a9

jr_017_50a9:
    ld e, $00
    ld hl, $401e
    ccf
    ld c, h
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_017_50b9:
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    add h
    ld a, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add c
    add b
    ld [bc], a
    ld bc, $0304
    inc b
    inc bc
    add hl, bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_017_509b

    sub b
    ldh [rNR10], a
    ldh [$ffc8], a
    ldh a, [rP1]
    nop
    db $10
    db $10
    ld b, c
    ld b, b
    ld [bc], a
    ld bc, $030c
    dec d
    dec bc
    db $10
    rrca
    add hl, bc
    rlca
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_017_50b9

    sbc b
    ldh [$ffd4], a
    add sp, $04
    ld hl, sp-$38
    ldh a, [$ff0d]
    ld b, $18
    rlca
    dec h
    dec de
    daa
    jr jr_017_5122

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    or b
    inc c
    ldh a, [$ffd2]
    db $ec
    ldh a, [c]
    adc h
    adc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a

jr_017_5122:
    ld b, $48
    scf
    dec l
    inc de
    dec de
    inc b
    jr nc, jr_017_513a

    jr z, jr_017_5144

    dec h
    ld a, [de]
    ld e, $00
    ld e, [hl]
    or b
    add hl, bc
    or $da
    db $e4
    db $ec
    sub b
    add [hl]

jr_017_513a:
    ld a, b
    ld a, [bc]
    db $f4
    jp nc, Jump_000_3c2c

    nop
    ld [$0e07], sp

jr_017_5144:
    dec b
    add hl, bc
    ld b, $0d
    inc bc
    dec bc
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$38f0], sp
    ret nc

    ld c, b
    or b
    ret c

    ldh [$ffe8], a
    sub b
    or b
    nop
    nop
    nop
    nop
    nop
    ld [$0e07], sp
    dec b
    ld de, $150e
    dec bc
    inc de
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    ld [$38f0], sp
    ret nc

    ld b, h
    cp b
    call nc, $e4e8
    sbc b
    cp b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ff7f]
    ld h, b
    rra
    jr jr_017_518e

    ld hl, $1e1e
    nop
    nop
    nop
    nop

jr_017_518e:
    nop
    nop
    nop
    ld [hl-], a
    db $fc
    add hl, de
    cp $02
    db $fc
    add c
    ld a, [hl]
    ld [hl], c
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld l, $70
    ccf
    ldh a, [$ff7f]
    ld [hl], b
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    ld [hl-], a
    db $fc
    ld a, [de]
    db $fc
    add hl, bc
    cp $02
    db $fc
    inc b
    ld hl, sp-$38
    jr nc, jr_017_51ee

    nop
    nop
    nop
    dec bc
    rlca
    inc de
    rrca
    ld de, $100f
    rrca
    add hl, bc
    ld b, $04
    inc bc
    inc bc
    nop
    nop
    nop
    add sp, -$10
    db $e4
    ld hl, sp-$3c
    ld hl, sp-$7c
    ld a, b
    ld c, b
    or b
    sub b
    ld h, b

jr_017_51dd:
    ld h, b
    nop
    nop
    nop
    dec bc
    rlca
    inc de
    rrca
    ld [de], a
    rrca
    add hl, bc
    ld b, $08

jr_017_51ea:
    rlca
    inc b
    inc bc
    inc bc

jr_017_51ee:
    nop
    nop
    nop
    add sp, -$10
    db $e4
    ld hl, sp-$5c
    ld a, b
    ld c, b
    or b
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
    nop
    inc bc
    nop
    inc b
    inc bc
    ld [$0807], sp
    rlca
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
    jr nz, jr_017_51dd

    db $10
    ldh [$ff08], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$6000], sp
    ld bc, $0360
    ld bc, $0000
    nop
    nop
    jr nz, jr_017_5257

jr_017_5257:
    ld [hl], b
    jr nz, jr_017_51ea

    ld h, b
    ld h, b
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
    nop
    ld [$6000], sp
    nop
    ld h, b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_5277:
    nop
    nop
    nop
    jr nz, jr_017_527c

jr_017_527c:
    nop
    nop
    nop
    inc c
    nop
    rlca
    nop
    ld [$1c07], sp
    dec bc
    add hl, de
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    add b
    nop
    ld h, b
    add b
    sbc b
    ldh [$ffe4], a
    ld hl, sp+$18
    ldh [$ffe0], a

jr_017_529e:
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $030c
    ld de, $140f
    dec bc
    add hl, de
    ld c, $1f
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_017_5277

    add sp, -$10
    sub b
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    jr c, jr_017_52c5

jr_017_52c5:
    ld d, h
    jr c, jr_017_529e

    ld a, h
    add $7c
    xor d
    ld d, h
    ld d, h
    jr c, jr_017_5308

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rrca
    dec b
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    sbc h
    nop
    ld h, h
    sbc b
    ld [$98f0], sp
    ldh [$ffc8], a
    ldh a, [$ff30]
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc
    dec de
    dec b
    cpl
    inc de
    ld l, e

jr_017_5308:
    dec [hl]
    ld d, c
    ld l, $28
    rla
    dec h
    ld a, [de]
    ld e, $00
    ld c, b
    or b

jr_017_5313:
    adc h
    ld [hl], b
    xor d
    call nc, $36cb
    dec b
    ld a, [$f40a]
    jp nc, Jump_000_3c2c

    nop
    add hl, bc
    ld b, $38
    rlca
    ld l, d
    dec [hl]
    add hl, hl
    ld d, $10
    rrca
    jr z, jr_017_5344

    dec h
    ld a, [de]
    ld e, $00
    jr jr_017_5313

    xor $50
    ei
    and $ea
    ld d, h
    ld b, h
    cp b
    ld a, [bc]
    db $f4
    jp nc, Jump_000_3c2c

    nop
    dec c
    inc bc
    db $10

jr_017_5344:
    ld c, a
    jr nz, @+$21

    jr nz, jr_017_5368

    nop
    ccf
    nop
    rlca
    nop
    nop
    nop
    nop
    ld b, b
    add b
    and b
    ret nz

    ld d, b
    ldh [rOBP0], a
    ldh a, [$ff08]
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rlca
    ld b, c
    ld [$1007], sp

jr_017_5368:
    rrca
    nop
    rra
    nop
    rrca
    nop
    ld [bc], a
    nop
    nop
    ld [de], a
    inc c
    call z, $a000
    ret nz

    ld d, b
    ldh [rLCDC], a
    ldh a, [rP1]
    ret nz

    nop
    nop

jr_017_537f:
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    rrca
    dec b
    inc b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    add b
    nop
    ld b, b
    add b

jr_017_5395:
    and b
    ret nz

    ret c

    ldh [rBCPS], a
    ldh a, [rSVBK]
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $1e00
    ld bc, $1e39
    ld l, $1f
    ld [de], a
    dec c
    ld c, $01
    ld bc, $0000
    nop
    ret nz

    nop
    inc a
    ret nz

    ld c, [hl]
    cp h
    cp d
    db $fc
    and h
    ld e, b

jr_017_53bd:
    jr c, jr_017_537f

    ret nz

    nop
    ld bc, $0200
    ld bc, $0205
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    dec bc
    ld b, $05
    ld [bc], a
    ld [bc], a
    nop
    ret nz

    nop
    jr nz, jr_017_5395

    ld d, b
    and b
    xor b
    ldh a, [$ffa8]
    ld [hl], b
    ld l, b
    or b
    ret nc

    jr nz, jr_017_5400

    nop
    dec a
    nop
    ld a, [hl+]
    dec e
    rla
    rrca
    ld [$0507], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $de00
    nop
    xor d
    call c, $f8f4
    sbc b
    ldh [$ff50], a
    and b
    jr nz, jr_017_53bd

    and b
    ret nz

    ret nz

jr_017_5400:
    nop
    ld bc, $0200
    ld bc, $0305
    ld b, $03
    dec bc
    ld b, $0e
    dec b
    ld a, [bc]
    dec b
    dec b
    nop
    ret nz

    nop
    and b
    ret nz

    ret nc

    ldh [$ffb0], a
    ldh [rBCPS], a
    or b
    jr c, @-$2e

    xor b
    ret nc

    ret nc

    nop
    nop
    nop
    ld bc, $1f00
    ld bc, $1e3d
    cpl
    rra
    ld [de], a
    dec c
    rrca
    ld bc, $0001
    nop
    nop
    ret nz

    nop
    db $fc
    ret nz

    sbc $bc
    ld a, [$a47c]
    ret c

    ld hl, sp-$40
    ret nz

    nop
    ld bc, $0300
    ld bc, $0205
    dec bc
    rlca
    ld c, $07
    rrca
    ld b, $07
    ld [bc], a
    ld [bc], a
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ret nc

    and b
    add sp, $70
    cp b
    ldh a, [$fff8]
    or b
    ldh a, [rNR41]
    jr nz, jr_017_5461

jr_017_5461:
    rlca
    nop
    ld c, $07
    rra
    dec bc
    rrca
    rlca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    db $10
    ldh [$ffd8], a
    ldh a, [$ffb0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    dec b
    rlca
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    cp h
    nop
    db $fc
    cp b
    ld hl, sp+$70
    cp b
    ldh [$ffd8], a
    ldh a, [$ffb0]
    ret nz

    ret nz

    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    dec b
    ld b, $03
    dec b
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0001
    add b
    nop
    ret nz

    add b
    ldh [$ffc0], a
    ret c

    ldh [$ffb8], a
    ldh a, [$fff0]
    add b
    add b
    nop
    add b
    nop
    dec a
    nop
    ld a, [hl-]
    dec e
    rra
    rrca
    dec bc
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $de00
    nop
    xor [hl]
    call c, $f8fc
    add sp, -$10
    ret nc

    and b
    and b
    ret nz

    ldh [$ffc0], a
    ret nz

    nop
    ld bc, $0200
    ld bc, $0305
    rlca
    inc bc
    rrca
    ld b, $0e
    dec b
    rrca
    dec b
    dec b
    nop
    ret nz

    nop
    and b
    ret nz

    ret nc

    ldh [$fff0], a
    ldh [$fff8], a
    or b
    cp b
    ret nc

    ld hl, sp-$30
    ret nc

    nop
    nop
    nop
    jr jr_017_5505

jr_017_5505:
    ld d, $08
    ld de, $080e
    rlca
    inc b
    inc bc
    dec b
    ld [bc], a
    add hl, bc
    ld b, $00
    nop
    ld b, $00
    ld a, [de]
    inc b
    ldh [c], a
    inc e
    inc b
    ld hl, sp+$07
    ld hl, sp+$20
    rst $18
    inc h
    db $db
    nop
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
    ld h, b
    add b
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop

jr_017_5537:
    nop
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
    inc b
    inc bc
    ld [bc], a
    ld bc, $0304
    ld [$0a07], sp
    dec b
    ld [hl-], a
    dec c
    ld l, [hl]
    dec a
    nop
    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    ld d, b
    and b
    dec bc
    ldh a, [$ff0c]
    di
    ret z

    rst $30
    dec c
    nop
    inc de
    inc c
    dec c
    ld [bc], a
    db $10
    rrca
    inc d
    dec bc
    ld h, h
    dec de
    db $dd
    ld a, e
    ld l, a
    rra
    add b
    nop
    ld b, b
    add b
    jr nz, jr_017_5537

    and b
    ld b, b
    rra
    ldh [rNR10], a
    rst $28
    add b
    rst $38
    ld b, b
    cp a
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
    ld h, b
    add b
    db $10
    ldh [rIF], a
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0304
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc b
    ld h, b
    ld c, l
    or b
    ld h, $d9
    inc b
    ei
    nop
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
    ld [$07f0], sp
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    dec bc
    ld b, $37
    ld c, $cf
    ld a, $0e
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

jr_017_55f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld c, $0b
    rlca
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    db $dd
    db $f4
    ei
    ld hl, sp-$39
    jr nz, jr_017_55f8

    pop bc
    ld a, $f6
    ld c, b
    ld a, h
    ld [$000c], sp
    ld c, $f0
    ld bc, $08fe
    rst $30
    inc d
    db $e3
    ld [de], a
    pop hl
    pop de
    jr nz, jr_017_569e

    jr nz, @+$32

    nop
    nop
    nop
    add b
    nop
    ld a, a
    add b
    rrca
    cp $1e
    db $fc
    sbc h
    ld a, b
    ld a, b
    nop
    nop
    nop
    scf
    rrca
    inc e
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    rst $18
    ld h, b
    rst $18
    ret nz

    ccf
    nop
    rst $38
    add c
    ld a, [hl]
    or $48
    ld a, h
    ld [$000c], sp
    jr c, jr_017_566a

    rrca
    nop
    rrca
    inc b
    dec b
    nop
    nop

jr_017_566a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    cp a

jr_017_5673:
    add b
    ld a, a
    ldh [$ff1f], a
    add a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$1ff7], sp
    ldh [$ff86], a
    ld a, b
    ld [hl], e
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    jr jr_017_5673

    inc c
    ld hl, sp-$72
    ld a, h
    ld [hl], a
    ld c, $0f
    ld [bc], a
    inc bc
    nop
    nop

jr_017_569e:
    nop
    nop
    nop
    add hl, de
    ld b, $37
    ld e, $1b
    rlca
    ld c, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    ei
    ld h, b
    rst $38
    ret nc

    rst $28
    jr nc, @-$0f

    ldh [$ff1f], a
    add hl, sp
    ld d, $17
    ld [bc], a
    inc bc
    nop
    nop
    rst $38
    inc b
    ei
    dec bc
    ldh a, [$ff08]
    ldh a, [$ffc8]
    jr nc, jr_017_573c

    jr nz, jr_017_56fe

    nop
    nop
    nop
    inc b
    ld hl, sp+$38
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_56fe:
    nop
    nop
    nop
    ld [hl], l
    ld [bc], a
    ld c, h
    inc sp
    inc h
    dec de
    ld d, $09
    jr nz, jr_017_572a

    jr z, @+$19

    ld c, b
    scf
    ld a, [hl]
    ccf
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
    add b
    nop
    ret nz

    nop
    nop
    nop
    ld b, $00
    ld [hl], l
    ld [bc], a
    ld c, h
    inc sp
    inc h

jr_017_572a:
    dec de
    ld d, $09
    jr nz, jr_017_574e

    jr z, jr_017_5748

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
    add b

jr_017_573c:
    nop
    adc h
    nop
    cp [hl]
    inc c
    inc c
    nop
    ld [$9904], a
    ld h, [hl]
    ld c, c

jr_017_5748:
    ld [hl], $2d
    ld [de], a
    ld b, c
    ld a, $51

jr_017_574e:
    ld l, $91
    ld l, [hl]
    nop
    nop
    nop
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
    ld a, $c0
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [$ffc0], a
    ldh a, [rNR41]
    or b
    nop
    nop

jr_017_5772:
    nop
    inc c
    nop
    ld [$9904], a
    ld h, [hl]
    ld c, c
    ld [hl], $2d
    ld [de], a
    ld b, c
    ld a, $51
    ld l, $00
    nop
    nop
    nop
    inc c
    nop
    ld e, $0c
    ccf
    inc b
    ld b, l
    dec sp
    add e
    ld a, h
    ld c, $f1
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_017_579b

jr_017_579b:
    rla
    ld [$0d12], sp
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $00
    ld c, l
    add [hl]
    ld e, c
    adc [hl]
    sbc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$0c33], sp
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_017_57d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    ld [$0c32], sp
    ld b, [hl]
    jr c, jr_017_5772

    nop
    ld h, b
    add b
    ld d, b
    ldh [$ff28], a
    ldh a, [$ff98]
    ld [hl], b
    ld c, b
    jr nc, @+$32

    nop
    nop
    nop
    ccf
    ld c, $0e
    ld bc, $0708
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    rlca
    nop
    inc bc
    ld bc, $0003
    jr nz, jr_017_57d3

    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    ldh a, [rNR32]
    add sp, -$44
    ld e, b
    ret c

    ldh [$ffe0], a
    nop
    ld c, b
    scf
    ld a, [hl]
    ccf
    ccf
    ld c, $0e
    ld bc, $0304
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    adc $34
    add [hl]
    ld a, b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    and h
    ld e, b
    or d
    ld c, h
    db $fd
    ld e, $be
    nop
    db $fd
    ld a, [hl]
    ld a, [hl]
    dec e
    inc a
    inc bc
    ld c, c
    ld [hl], $32
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    rrca
    or $07
    ld a, [$d826]
    ld b, e
    cp h
    pop bc
    ccf
    ld h, $19
    add hl, de
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
    ret nz

    add b

jr_017_586d:
    ret nz

jr_017_586e:
    add b
    ret nz

    nop
    sub c
    ld l, [hl]
    db $fd
    ld a, [hl]
    ld a, [hl]
    dec e
    inc a
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    nop
    nop
    rst $38
    nop
    rst $38
    ld de, $6eee
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    rlca
    rrca
    dec b
    dec d
    ld a, [bc]
    ld a, [bc]
    dec b
    ld de, $0a0e
    dec b
    ld d, $09
    add hl, de
    nop
    and d
    inc e
    and h
    jr @+$6a

    sub b
    ret z

    jr nc, jr_017_58fa

    and b
    jr nz, jr_017_586d

    ld b, b
    add b
    ret nz

    nop
    ld b, [hl]
    add hl, sp
    sbc b
    ld a, a
    ld e, b
    scf
    dec a
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    daa
    ret nz

    jr @-$17

    add [hl]
    ld a, c
    add hl, bc
    ldh a, [rNR10]
    ldh [$ffd0], a
    jr nz, jr_017_586e

    ld b, b
    ld b, b
    nop
    inc e
    nop
    ld [$321c], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    ld a, [hl]
    ld a, b
    rla
    db $10
    rrca
    cpl
    db $10

jr_017_58e9:
    ld d, c
    jr nz, jr_017_590c

    nop
    nop
    nop
    nop
    nop
    rst $28
    nop
    db $10
    rst $28
    inc b
    ei
    dec de
    ldh [$ff0c], a

jr_017_58fa:
    ldh a, [$fff4]
    ld [$0814], sp
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

jr_017_590c:
    nop
    ld [$1400], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    ld [hl], a
    ld [$7088], sp
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_017_58e9

jr_017_5929:
    jr c, @-$0e

    inc c
    ld hl, sp-$3c
    jr c, @+$3a

    nop
    rlca
    nop
    jr jr_017_593c

    ld [de], a
    dec c
    add hl, bc
    rlca
    inc b
    inc bc
    ld [bc], a

jr_017_593c:
    ld bc, $0102
    ld bc, $0000
    nop
    ldh [rP1], a
    sub b
    ldh [$ffc8], a
    ldh a, [rBCPS]
    or b
    sub b
    ld h, b
    add sp, $10
    ld [hl], b
    nop
    inc e
    nop
    inc hl
    inc e
    ld c, d
    scf
    daa
    rra
    ld sp, $4e0e
    ld sp, $0031
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [$ff80], a
    jr nc, jr_017_5929

    adc b
    ld [hl], b
    ld [hl], h
    ld [$000c], sp
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
    inc sp
    inc c
    ld b, [hl]
    add hl, sp
    sbc b
    ld a, a
    ld a, b
    rla
    inc d
    dec bc
    dec c
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    nop
    ld [$0cf0], sp
    ldh a, [rSC]
    db $fc
    adc c
    halt
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_017_6001:
    ld bc, $85ff
    ld h, b
    ld bc, $8bff
    ld h, b
    ld bc, $99ff
    ld h, b
    ld bc, $a7ff
    ld h, b
    ld bc, $b5ff
    ld h, b
    ld bc, $c3ff
    ld h, b
    ld bc, $b5ff
    ld h, c
    ld bc, $b9ff
    ld h, c
    ld bc, $bdff
    ld h, c
    ld bc, $bfff
    ld h, c
    ld bc, $c1ff
    ld h, c
    ld bc, $c3ff
    ld h, c
    ld bc, $cdff
    ld h, d
    ld bc, $d3ff
    ld h, d
    ld bc, $d9ff
    ld h, d
    ld bc, $dbff
    ld h, d
    ld bc, $7dff
    ld h, e
    ld bc, $83ff
    ld h, e
    ld bc, $89ff
    ld h, e
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    ld bc, $12ff
    ld h, h
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$c760]
    ld h, b
    jp hl


    ld h, b
    ld a, [$fa60]
    ld h, b
    jp hl


    ld h, b
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$0b60]
    ld h, c
    inc e
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$2d60]
    ld h, c
    ld a, $61
    sub e
    ld h, c
    and h
    ld h, c
    rst $00
    ld h, b
    jp hl


    ld h, b
    ld a, [$4f60]
    ld h, c
    ld h, b
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    sub e
    ld h, c
    and h
    ld h, c
    nop
    nop
    ld de, $0000
    ld hl, sp+$10
    nop

jr_017_60cf:
    ld hl, sp+$00
    ld bc, $f800
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    inc de
    nop
    nop
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    add b
    nop
    nop
    dec d
    nop
    nop
    ld hl, sp+$14
    nop
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    add b
    nop
    nop
    rla
    nop
    nop
    ld hl, sp+$16
    nop
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    add b
    nop
    nop
    add hl, de
    nop
    nop
    ld hl, sp+$18
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$8000], sp
    nop
    nop
    dec de
    nop
    nop
    ld hl, sp+$1a
    nop
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add b
    nop
    ld hl, sp+$19
    jr nz, jr_017_6132

jr_017_6132:
    nop
    jr @+$22

    ld hl, sp-$08
    add hl, bc
    jr nz, jr_017_6132

    nop
    ld [$8020], sp
    nop

jr_017_613f:
    ld hl, sp+$1b
    jr nz, jr_017_6143

jr_017_6143:
    nop
    ld a, [de]
    jr nz, jr_017_613f

    ld hl, sp+$0b
    jr nz, jr_017_6143

    nop
    ld a, [bc]
    jr nz, jr_017_60cf

    nop
    nop
    dec e
    nop
    nop
    ld hl, sp+$1c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    add b
    nop
    nop
    rra
    nop
    nop
    ld hl, sp+$1e
    nop
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld c, $00
    add b
    nop
    nop
    ld sp, $0000
    ld hl, sp+$30
    nop
    ld hl, sp+$00
    ld hl, $f800
    ld hl, sp+$20
    nop
    add b
    nop
    nop
    inc sp
    nop
    nop
    ld hl, sp+$32
    nop
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    add b
    nop
    nop
    dec [hl]
    nop
    nop
    ld hl, sp+$34
    nop
    ld hl, sp+$00
    dec h
    nop
    ld hl, sp-$08
    inc h
    nop
    add b
    nop
    nop
    scf
    nop
    nop
    ld hl, sp+$36
    nop
    ld hl, sp+$00
    daa
    nop
    ld hl, sp-$08
    ld h, $00
    add b
    rlca
    ld h, d
    jr z, jr_017_621b

    adc e
    ld h, d
    xor h
    ld h, d
    and $61
    ld l, d
    ld h, d
    push bc
    ld h, c
    ld c, c
    ld h, d
    nop
    ld [$0063], sp
    nop
    nop
    ld h, d
    nop
    nop
    ld hl, sp+$61
    nop
    nop
    ldh a, [$ff60]
    nop
    ld hl, sp+$08
    ld d, e
    nop
    ld hl, sp+$00
    ld d, d
    nop
    ld hl, sp-$08
    ld d, c
    nop
    ld hl, sp-$10
    ld d, b
    nop
    add b
    nop
    ld [$0063], sp
    nop
    nop
    ld h, d
    nop
    ld hl, sp+$08
    ld d, e
    nop
    ld hl, sp+$00
    ld d, d
    nop
    nop
    ld hl, sp+$65
    nop
    nop
    ldh a, [$ff64]
    nop
    ld hl, sp-$08
    ld d, l
    nop
    ld hl, sp-$10
    ld d, h
    nop
    add b
    nop
    ld [$0069], sp
    nop
    nop
    ld l, b
    nop
    nop
    ld hl, sp+$67
    nop
    nop
    ldh a, [$ff66]
    nop
    ld hl, sp+$08
    ld e, c
    nop

jr_017_621b:
    ld hl, sp+$00
    ld e, b
    nop
    ld hl, sp-$08
    ld d, a
    nop
    ld hl, sp-$10
    ld d, [hl]
    nop
    add b
    nop
    ld [$006d], sp
    nop
    nop
    ld l, h
    nop
    nop
    ld hl, sp+$6b
    nop
    nop
    ldh a, [rOCPS]
    nop
    ld hl, sp+$08
    ld e, l
    nop
    ld hl, sp+$00
    ld e, h
    nop
    ld hl, sp-$08
    ld e, e
    nop
    ld hl, sp-$10
    ld e, d
    nop
    add b
    nop
    ldh a, [$ff63]
    jr nz, jr_017_624e

jr_017_624e:
    ld hl, sp+$62
    jr nz, jr_017_6252

jr_017_6252:
    nop
    ld h, c
    jr nz, jr_017_6256

jr_017_6256:
    ld [$2060], sp
    ld hl, sp-$10
    ld d, e
    jr nz, jr_017_6256

jr_017_625e:
    ld hl, sp+$52
    jr nz, @-$06

    nop
    ld d, c
    jr nz, jr_017_625e

    ld [$2050], sp
    add b
    nop

jr_017_626b:
    ldh a, [$ff63]
    jr nz, jr_017_626f

jr_017_626f:
    ld hl, sp+$62
    jr nz, jr_017_626b

    ldh a, [rHDMA3]
    jr nz, jr_017_626f

    ld hl, sp+$52
    jr nz, jr_017_627b

jr_017_627b:
    nop
    ld h, l
    jr nz, jr_017_627f

jr_017_627f:
    ld [$2064], sp
    ld hl, sp+$00
    ld d, l
    jr nz, jr_017_627f

    ld [$2054], sp
    add b
    nop
    ldh a, [rBCPD]
    jr nz, jr_017_6290

jr_017_6290:
    ld hl, sp+$68
    jr nz, jr_017_6294

jr_017_6294:
    nop
    ld h, a
    jr nz, jr_017_6298

jr_017_6298:
    ld [$2066], sp
    ld hl, sp-$10
    ld e, c
    jr nz, jr_017_6298

jr_017_62a0:
    ld hl, sp+$58
    jr nz, @-$06

    nop
    ld d, a
    jr nz, jr_017_62a0

    ld [$2056], sp
    add b
    nop
    ldh a, [$ff6d]
    jr nz, jr_017_62b1

jr_017_62b1:
    ld hl, sp+$6c
    jr nz, jr_017_62b5

jr_017_62b5:
    nop
    ld l, e
    jr nz, jr_017_62b9

jr_017_62b9:
    ld [$206a], sp
    ld hl, sp-$10
    ld e, l
    jr nz, jr_017_62b9

jr_017_62c1:
    ld hl, sp+$5c
    jr nz, @-$06

    nop
    ld e, e
    jr nz, jr_017_62c1

    ld [$205a], sp
    add b
    inc bc
    ld h, e
    jr jr_017_6334

    ldh a, [c]
    ld h, d

jr_017_62d3:
    ld d, e
    ld h, e
    ld l, b
    ld h, e
    ld b, d
    ld h, e
    db $dd
    ld h, d
    dec l
    ld h, e
    ldh a, [$fff8]
    ld l, [hl]
    nop
    nop
    nop
    add c
    nop
    nop
    ld hl, sp-$80

jr_017_62e8:
    nop
    ld hl, sp+$00
    ld [hl], c
    nop
    ld hl, sp-$08
    ld [hl], b
    nop
    add b
    nop
    nop
    add e
    nop
    nop
    ld hl, sp-$7e
    nop
    ld hl, sp+$00
    ld [hl], e

jr_017_62fd:
    nop
    ld hl, sp-$08
    ld [hl], d
    nop
    add b
    nop
    ld [$0086], sp
    nop
    nop
    add l
    nop
    nop
    ld hl, sp-$7c
    nop
    ld hl, sp+$00
    ld [hl], l
    nop
    ld hl, sp-$08
    ld [hl], h
    nop
    add b
    ld a, [$7608]
    nop
    nop
    nop
    adc b
    nop
    nop
    ld hl, sp-$79
    nop
    ld hl, sp+$00
    ld a, b
    nop
    ld hl, sp-$08
    ld [hl], a
    nop
    add b
    ldh a, [rP1]
    ld l, [hl]
    jr nz, jr_017_6332

jr_017_6332:
    ld hl, sp-$7f

jr_017_6334:
    jr nz, jr_017_6336

jr_017_6336:
    nop
    add b
    jr nz, jr_017_6332

    ld hl, sp+$71
    jr nz, jr_017_6336

    nop
    ld [hl], b
    jr nz, @-$7e

    nop

jr_017_6343:
    ld hl, sp-$7d
    jr nz, jr_017_6347

jr_017_6347:
    nop
    add d
    jr nz, jr_017_6343

    ld hl, sp+$73
    jr nz, jr_017_6347

    nop
    ld [hl], d
    jr nz, jr_017_62d3

    nop
    ldh a, [$ff86]
    jr nz, jr_017_6358

jr_017_6358:
    ld hl, sp-$7b
    jr nz, jr_017_635c

jr_017_635c:
    nop
    add h
    jr nz, jr_017_6358

    ld hl, sp+$75
    jr nz, jr_017_635c

    nop
    ld [hl], h
    jr nz, jr_017_62e8

    ld a, [$76f0]
    jr nz, jr_017_636d

jr_017_636d:
    ld hl, sp-$78
    jr nz, jr_017_6371

jr_017_6371:
    nop
    add a
    jr nz, jr_017_636d

    ld hl, sp+$78
    jr nz, jr_017_6371

    nop
    ld [hl], a
    jr nz, jr_017_62fd

jr_017_637d:
    or c
    ld h, e
    jp nz, $9c63

    ld h, e
    db $ec
    ld h, e
    db $fd
    ld h, e
    rst $10
    ld h, e
    adc e
    ld h, e
    nop
    nop
    adc d
    nop
    nop
    ld hl, sp-$77

jr_017_6392:
    nop
    ld hl, sp+$00
    ld a, d
    nop
    ld hl, sp-$08
    ld a, c
    nop
    add b
    nop
    ld [$008d], sp
    nop
    nop
    adc h
    nop
    nop
    ld hl, sp-$75
    nop
    ld hl, sp+$00
    ld a, h
    nop
    ld hl, sp-$08
    ld a, e
    nop
    add b
    cp $08
    ld a, a
    nop
    cp $00
    adc a
    nop
    cp $f8
    adc [hl]
    nop
    or $f8
    ld a, [hl]
    nop
    add b
    ld sp, hl
    ld [$0092], sp
    nop
    nop
    and c
    nop
    nop
    ld hl, sp-$60
    nop
    ld hl, sp+$00
    sub c
    nop
    ld hl, sp-$08
    sub b
    nop
    add b
    nop
    ldh a, [$ff8d]
    jr nz, jr_017_63dc

jr_017_63dc:
    ld hl, sp-$74
    jr nz, jr_017_63e0

jr_017_63e0:
    nop
    adc e
    jr nz, jr_017_63dc

    ld hl, sp+$7c
    jr nz, jr_017_63e0

    nop
    ld a, e
    jr nz, @-$7e

    cp $f0
    ld a, a

jr_017_63ef:
    jr nz, jr_017_63ef

    ld hl, sp-$71

jr_017_63f3:
    jr nz, jr_017_63f3

    nop
    adc [hl]
    jr nz, jr_017_63ef

    nop
    ld a, [hl]
    jr nz, jr_017_637d

    ld sp, hl
    ldh a, [$ff92]
    jr nz, jr_017_6402

jr_017_6402:
    ld hl, sp-$5f
    jr nz, jr_017_6406

jr_017_6406:
    nop
    and b
    jr nz, jr_017_6402

    ld hl, sp-$6f
    jr nz, jr_017_6406

    nop
    sub b
    jr nz, jr_017_6392

    ld d, [hl]
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld e, l
    ld h, h
    ld l, h
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    add b
    ld h, h
    add b
    ld h, h
    add e
    ld h, h
    add e
    ld h, h
    adc d
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    adc l
    ld h, h
    cpl
    nop
    rrca
    ld bc, $020f
    rst $38
    cpl
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rra
    ld b, $ff
    rrca
    nop
    rra
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    ldh a, [rP1]
    rst $38
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l

jr_017_64cd:
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $19ff
    ld h, l
    ld bc, $21ff
    ld h, l
    ld bc, $5fff
    ld h, l
    ld bc, $63ff
    ld h, l
    ld bc, $67ff
    ld h, l
    ld bc, $6bff
    ld h, l
    ld bc, $6fff
    ld h, l
    ld bc, $73ff
    ld h, l
    ld bc, $77ff
    ld h, l
    ld bc, $f3ff
    ld h, l
    ld bc, $f7ff
    ld h, l
    ld bc, $fbff
    ld h, l
    ld bc, $ffff
    ld h, l
    ld bc, $03ff
    ld h, [hl]
    ld bc, $07ff
    ld h, [hl]
    ld bc, $7bff
    ld h, l
    ld [hl-], a
    ld h, l
    dec sp
    ld h, l
    ld [hl-], a
    ld h, l
    add hl, hl
    ld h, l

jr_017_6521:
    ld c, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld c, l
    ld h, l
    ld b, h
    ld h, l
    db $fc
    nop
    sub h
    nop
    db $fc
    ld hl, sp-$6d
    nop
    add b
    db $fc
    ld [bc], a
    sub [hl]
    nop
    ld a, [$95fa]
    nop
    add b
    ld sp, hl
    ld [bc], a
    sub [hl]
    nop
    rst $30
    ld a, [$0095]
    add b
    db $fc

jr_017_6545:
    ld hl, sp-$6c
    jr nz, jr_017_6545

    nop
    sub e
    jr nz, jr_017_64cd

    db $fc
    or $96
    jr nz, @-$04

jr_017_6552:
    cp $95
    jr nz, @-$7e

    ld sp, hl
    or $96
    jr nz, jr_017_6552

    cp $95
    jr nz, @-$7e

    and c
    ld h, l
    and [hl]
    ld h, l
    ld a, l
    ld h, l
    add [hl]
    ld h, l
    adc a
    ld h, l
    sbc b
    ld h, l
    rst $08
    ld h, l
    ret c

    ld h, l
    xor e
    ld h, l
    or h
    ld h, l
    cp l
    ld h, l
    add $65
    pop hl
    ld h, l
    ld [$7d65], a
    ld h, l
    db $fc
    nop
    add hl, hl
    nop
    db $fc
    ld hl, sp+$28
    nop
    add b
    db $fc
    nop
    dec hl
    nop
    db $fc
    ld hl, sp+$2a
    nop
    add b
    db $fc

jr_017_6590:
    ld hl, sp+$29
    jr nz, jr_017_6590

    nop
    jr z, jr_017_65b7

    add b
    db $fc

jr_017_6599:
    ld hl, sp+$2b
    jr nz, jr_017_6599

    nop
    ld a, [hl+]
    jr nz, jr_017_6521

    db $fc
    db $fc
    inc l
    nop
    add b

jr_017_65a6:
    ei
    db $fc
    inc l
    nop
    add b
    db $fc
    nop
    ld l, $00

jr_017_65af:
    db $fc
    ld hl, sp+$2d
    nop
    add b
    db $fc
    nop
    add hl, sp

jr_017_65b7:
    nop
    db $fc
    ld hl, sp+$38
    nop
    add b
    db $fc

jr_017_65be:
    ld hl, sp+$2e
    jr nz, jr_017_65be

    nop
    dec l
    jr nz, @-$7e

    db $fc

jr_017_65c7:
    ld hl, sp+$39
    jr nz, jr_017_65c7

    nop
    jr c, jr_017_65ee

    add b
    db $fc
    nop
    dec sp
    nop
    db $fc
    ld hl, sp+$3a
    nop
    add b
    db $fc
    nop
    dec a
    nop

jr_017_65dc:
    db $fc
    ld hl, sp+$3c
    nop
    add b
    db $fd
    nop
    ccf
    nop

jr_017_65e5:
    db $fd
    ld hl, sp+$3e
    nop
    add b
    db $fc
    nop
    ld b, c
    nop

jr_017_65ee:
    db $fc
    ld hl, sp+$40
    nop
    add b
    dec bc
    ld h, [hl]
    inc d
    ld h, [hl]
    dec e
    ld h, [hl]
    ld h, $66
    cpl
    ld h, [hl]
    jr c, jr_017_6665

    ld b, c
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld e, h
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld l, [hl]
    ld h, [hl]
    db $fd
    nop
    ld b, a
    nop
    db $fd
    ld hl, sp+$46
    nop
    add b
    db $fc
    nop
    ld b, a
    nop
    db $fc
    ld hl, sp+$46
    nop
    add b
    db $fd
    ld hl, sp+$47
    jr nz, @-$01

    nop
    ld b, [hl]
    jr nz, jr_017_65a6

    db $fc

jr_017_6627:
    ld hl, sp+$47
    jr nz, jr_017_6627

    nop
    ld b, [hl]
    jr nz, jr_017_65af

    db $fc
    nop
    ld b, e
    nop
    db $fc
    ld hl, sp+$42
    nop
    add b
    db $fc
    nop
    ld b, l
    nop
    db $fc
    ld hl, sp+$44
    nop
    add b
    db $fc
    nop
    ld c, c
    nop
    db $fc
    ld hl, sp+$48
    nop
    add b
    db $fc
    nop
    ld c, e
    nop
    db $fc
    ld hl, sp+$4a
    nop
    add b
    db $fc

jr_017_6654:
    ld hl, sp+$49
    jr nz, jr_017_6654

    nop
    ld c, b
    jr nz, jr_017_65dc

    db $fc

jr_017_665d:
    ld hl, sp+$4b
    jr nz, jr_017_665d

    nop
    ld c, d
    jr nz, jr_017_65e5

jr_017_6665:
    db $fd
    nop
    ld c, l
    nop
    db $fd
    ld hl, sp+$4c
    nop
    add b
    db $fc
    nop
    ld c, a
    nop
    db $fc
    ld hl, sp+$4e
    nop
    add b
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    add $66
    add $66
    add $66
    add $66
    add $66
    add $66
    add $66
    bit 4, [hl]
    bit 4, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    ret nc

    ld h, [hl]
    push de
    ld h, [hl]
    ld [$0a00], sp
    ld bc, $0208
    ld a, [bc]
    inc bc
    rst $38
    rrca
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0aff
    nop
    ld a, [bc]
    ld bc, $f0ff
    nop
    rst $38
    nop
    ld [$2f00], sp
    ld bc, $001f
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

jr_017_66eb:
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

jr_017_66ff:
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
    cp $1f
    nop
    ldh [rP1], a
    db $10
    ldh [$ff08], a
    ldh a, [$fff8]
    rst $38
    nop
    jr z, jr_017_66eb

    inc b
    ld hl, sp+$54
    xor b
    ld c, h
    rst $38
    or b
    ret z

    ldh a, [$ffe8]
    ld [hl], b
    ld d, h
    add sp, -$1c
    rst $28
    jr @+$3a

    db $10
    jr jr_017_66ff

    ld [bc], a
    rlca
    nop
    ld a, [bc]
    rst $38
    dec b
    db $10
    rrca
    dec d
    ld a, [bc]
    add hl, bc
    ld b, $09
    rst $38
    rlca
    dec bc
    rlca
    dec e
    dec bc
    dec bc
    inc b
    add hl, bc
    rst $38
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    rlca
    ld [bc], a
    inc bc
    cp $b6
    inc b
    ld c, h
    nop
    ld l, [hl]
    inc b
    ld e, e
    ld h, $6d
    rst $38
    ld a, $7f
    ld [de], a
    ld a, [hl]
    rla
    nop
    nop
    jr @+$01

    nop
    jr c, jr_017_6775

    ld [hl], b
    jr nz, @+$72

    jr nz, @+$3a

    rst $18
    db $10
    inc e
    ld [$04fe], sp
    ret


    ld bc, $2f79
    rst $38

jr_017_6775:
    ld [hl], $1d
    nop
    nop
    inc c
    nop
    ld c, $04
    rst $38
    ld c, $04
    rlca
    ld [bc], a
    add a
    ld [bc], a
    ld h, a
    add d
    ei
    ld e, a
    ldh [c], a
    inc bc
    add hl, bc
    sbc b
    nop
    call c, $b608
    rst $38
    ld c, h
    jp c, $fe7c

    inc h
    nop
    nop
    inc bc
    rst $18
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, c
    ld [bc], a

jr_017_67a1:
    ld c, $04
    db $eb
    ld a, h
    ld [$0b01], sp
    ld b, $20
    ld bc, $0305
    rlca
    ei
    inc bc
    rlca
    and b
    ld bc, $0000
    ld [bc], a
    nop
    scf
    rst $38
    ld [bc], a
    ld a, [hl]
    inc h
    sbc $64
    ld a, [hl]
    db $e4
    db $fc
    rst $30
    adc b
    db $fc
    xor b
    ret


    ld bc, $0107
    dec bc
    ld b, $ff
    jr nc, jr_017_67ce

jr_017_67ce:
    ld [hl], b
    jr nz, jr_017_67a1

    ld h, b
    ld [hl], b
    ldh [rIE], a
    ldh a, [$ff80]
    ldh a, [$ffa0]
    ldh a, [rLCDC]
    add sp, -$50
    jp c, $0f01

    ld bc, $0020
    rlca
    ld bc, $0443
    ld h, b
    nop
    rst $38
    ldh a, [c]
    ld h, b
    rst $38
    sub d
    sbc $0c
    db $fc
    ret nz

    inc hl
    ldh a, [$ffa0]
    add c
    ld [bc], a
    ld bc, $2711
    dec bc
    call c, $0702
    ld b, $0d
    ld [hl], a
    jr jr_017_6881

    inc de
    ld a, [bc]
    ld c, $1e
    ld a, a
    db $10
    inc bc
    inc bc
    ei
    inc e
    ld [$0c43], sp
    rst $00
    ld [bc], a
    ld a, c
    cpl
    scf
    ld [hl], a
    dec e
    dec e
    inc bc
    and b
    rlca
    dec b
    ld c, $03
    ld hl, $ff11
    ld d, [hl]
    db $fc
    ld d, h
    ld hl, sp-$44
    ld hl, sp+$74
    cp b
    rst $18
    db $fc
    db $10
    add sp, $30
    ld [hl], b
    ret nc

    ld d, $1f
    inc bc
    rst $30
    rra
    ld a, [bc]
    ld c, $58
    rla
    sub $fc
    db $f4
    cp b
    rst $38
    db $fc
    jr c, @-$40

    ld e, h
    ld d, [hl]
    inc l
    inc a
    ld [$d1fe], sp
    dec c
    db $fd
    ld l, $f2
    ld e, a
    ld l, [hl]
    dec sp
    ccf
    ei
    rlca
    rrca
    ld b, b
    ld de, $081c
    jr jr_017_6859

jr_017_6859:
    xor d
    rst $38
    ld [hl], b
    and a
    ld a, [$fedf]
    xor a
    jp c, $f6db

    sub h
    ld a, [de]
    ld bc, $a307
    dec bc
    ld b, $03
    dec b
    ld [bc], a
    rst $38
    dec c
    ld b, $06
    nop
    ret z

    ld [hl], b
    ld hl, sp-$40
    rst $38
    ld hl, sp+$20
    ret nc

    ldh [$ffb0], a
    ldh [$ffd0], a
    jr nz, @+$01

jr_017_6881:
    ld e, b
    jr nc, @+$32

    nop
    rrca
    inc b
    dec b
    inc bc
    db $db
    dec b
    inc bc
    ld bc, $0719
    ld [bc], a
    ret nc

    ld de, $f800
    rst $38
    db $10
    call c, $dfe0
    db $ec
    cp a
    ld h, d
    ld [hl], d
    ei
    jr nz, jr_017_68c0

    or d
    ld e, $0f
    nop
    rra
    ld a, [bc]
    add hl, de
    rst $28
    rrca
    rrca
    ld bc, $0505
    ld [bc], a
    add b
    db $fc
    xor b
    sbc a
    call z, $f878
    ret nz

    ret nc

    jr nz, jr_017_68d3

    ld hl, $7e02
    rst $38
    call nz, $f45e

jr_017_68c0:
    call nc, $ecf8
    jr c, @-$4a

    rst $30
    ld e, b
    ld hl, sp+$20
    ld bc, $7b0b
    dec l
    scf
    dec e
    ld a, a
    rra
    nop
    dec b

jr_017_68d3:
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    or d
    ld [hl+], a
    ld b, e
    ld a, [hl]
    dec hl
    nop
    ld bc, $03e0
    dec b
    ld bc, $1f0a
    ld a, $03
    ld [de], a
    ld a, [hl]
    ld b, e
    dec h
    add hl, de
    nop
    dec sp
    db $10
    ld l, l
    ld [hl-], a
    dec bc
    ld h, $f5
    ret nz

    db $ec
    nop
    ld [hl], b
    db $10
    ld bc, $001c
    ccf
    inc e
    rst $38
    ld a, a
    inc hl
    db $e3
    ld b, b
    ld b, a
    ld [bc], a
    rlca
    inc bc
    db $eb
    dec bc
    rlca
    add l
    ld [bc], a
    ldh [rSB], a
    dec de
    ld h, b
    add sp, -$10
    cp $01
    ld a, [hl+]
    ld d, $00
    ccf
    ld [de], a
    ld e, $0b
    dec e
    sbc a
    dec bc
    rrca
    dec b
    rrca
    inc b
    ld bc, $412b
    dec e
    or b
    ld a, a
    ld h, b
    ld d, b
    ldh [$fff0], a
    ldh [rSVBK], a
    and b
    pop bc

jr_017_692f:
    jr nz, jr_017_692f

    ret nz

    db $10
    inc bc
    rrca
    inc bc
    ld c, $03
    rrca
    dec b
    ei
    ld b, $03
    push bc
    ld bc, $e0f8
    cp b
    ldh [$ff78], a
    rst $30
    ret nc

    or b
    ld h, b
    inc bc
    ld l, $3e
    nop
    ld b, c
    ld a, $bf
    and h
    ld e, e
    ld h, h
    dec de
    or c
    ld a, [hl]
    dec b
    cpl
    add b
    ld a, a
    nop
    ld [hl], b
    add b
    ld c, [hl]
    or b
    add l
    ld a, d
    rst $00
    ld bc, $b0bf
    ld a, a
    ld sp, hl
    ld a, $bc
    ld a, a
    jp Jump_017_6001


    rst $38
    add b
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
    ld b, $fd
    ld hl, sp+$03
    ld [hl-], a
    ld b, c
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    rst $28
    ld h, h
    dec de
    ld h, l
    ld a, [de]
    push hl
    inc bc
    ld h, [hl]
    add b
    ld e, d
    rst $18
    and h
    ld b, h
    cp b
    add h

jr_017_698e:
    ld a, b
    ld bc, $042a
    inc bc
    rst $10
    ld [$0f07], sp
    add h
    ld sp, $605b
    db $10
    ld a, a
    inc h
    ld a, a
    ld c, a
    ld a, [hl-]
    ld [hl], a
    dec e
    rst $38
    ld h, e
    ld h, e
    ret nc

    dec [hl]
    rst $38
    ld [hl], b
    ret nz

    xor h
    ldh a, [$ffae]
    ld hl, sp-$11
    cp d
    rst $38
    rst $38
    ld [hl], d
    cp $0c
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    ld a, a
    xor b
    ldh a, [$ffac]
    ld hl, sp-$12
    ld hl, sp-$01
    ld b, $01
    sbc a
    dec de
    ld c, $1e
    add hl, bc
    dec c
    nop
    ld l, $05
    inc [hl]
    db $ec
    rst $38
    cp b
    inc a
    ret z

    ret c

    jr nz, @+$72

    and b
    ldh a, [$ffa1]
    jr nz, jr_017_698e

    dec bc
    ld h, c
    inc l
    ret nz

    ld a, [de]
    ld b, b
    dec e
    rlca
    ld [bc], a
    rra
    ldh a, [$ff9b]
    ld b, b
    ret nc

    add b
    ld a, [hl+]
    ldh a, [$ffe0]
    ld b, b
    dec l
    ld [bc], a
    rra
    dec b
    rst $38
    ld [bc], a
    rra
    ld [bc], a
    ld a, a
    add hl, de
    rst $38
    ld h, [hl]
    ld l, a
    rst $38
    ld bc, $060d
    ld c, $04
    inc b
    nop
    ret nc

    db $fd
    and b
    add c
    inc l
    xor b
    ldh a, [$fff8]
    ld h, b
    ld e, b
    jr nc, @+$01

    jr c, @+$12

    stop
    ld hl, sp+$3f
    cp h
    ld a, a
    ld a, a
    ld e, d
    dec a
    ld a, $01
    dec bc
    inc b
    dec b
    or d
    ld a, $fb
    ld [bc], a
    db $fc
    inc hl
    nop
    inc h
    ret c

    call c, $d888
    cp $d0
    ccf
    ld e, e
    inc a
    ld a, $01
    ld d, $0b
    dec bc
    ld a, [hl]
    halt
    ld b, b
    inc c
    ldh a, [rDIV]
    ld hl, sp-$0a
    inc c
    rst $00
    dec e
    ei
    or b
    ld a, a
    dec h
    inc b
    ld c, $05
    rlca
    ld bc, $ff01
    nop
    ld c, $f0
    ld b, $fc
    inc b
    ld hl, sp+$18
    cp a
    ldh [$ff60], a
    add b
    ld b, b
    add b
    add b
    ld h, b
    inc d
    add hl, de
    ld a, [hl]
    add b
    ld b, b
    dec de
    rlca
    dec d
    dec bc

jr_017_6a64:
    inc de
    inc c
    pop hl
    rlca
    or a
    nop
    nop
    ldh a, [$ff8a]

jr_017_6a6d:
    ld b, e
    ld e, h
    add sp, $01
    inc a
    inc c
    rst $38
    inc bc
    inc de
    inc c
    ld [hl+], a
    dec e
    jr c, jr_017_6a82

    add hl, bc
    rst $30
    ld b, $19
    ld b, $01
    ld b, [hl]

jr_017_6a82:
    jr jr_017_6a64

    db $e4
    jr @+$81

    ld [hl+], a
    call c, $f00e
    ld c, b
    or b
    ld c, h
    ld [bc], a
    add hl, sp
    cp [hl]
    inc bc
    add hl, de
    ld b, b
    add b
    ld h, b
    add b
    sub b
    nop
    dec de
    ld bc, $00ff
    ld b, $01
    ld [$1107], sp
    ld c, $15
    di
    ld a, [bc]
    add hl, de
    jr nz, jr_017_6aef

    ld b, c
    inc hl
    jr nc, jr_017_6a6d

    ld [$eff0], sp
    ld b, h
    cp b
    ld d, h
    xor b
    and c
    ld c, b
    ld l, b
    ldh a, [$ffd2]
    rst $38
    ldh [$ffed], a
    ld [de], a
    ld a, [bc]
    db $f4
    ld d, h
    xor b
    sub h
    rst $30
    ld l, b
    add sp, $50
    ld hl, $0035
    nop
    dec c
    nop
    ccf
    ld [de], a
    dec c
    jr nz, jr_017_6af0

    ld e, $01
    add c
    jr jr_017_6ad7

    ld c, l

jr_017_6ad7:
    rst $38
    ret c

    nop

jr_017_6ada:
    inc h
    ret c

    ld [bc], a
    db $fc
    inc a
    ret nz

    rst $10
    db $10
    ldh [$ff88], a
    ld [de], a
    ld [bc], a
    dec c
    ld b, d
    ld c, e
    inc d
    dec bc
    ld [hl], c
    ld c, $20
    ld [bc], a

jr_017_6aef:
    inc bc

jr_017_6af0:
    ld [bc], a
    pop bc
    ld c, l
    inc d
    add sp, $38
    jr nz, jr_017_6afa

    cp $c5

jr_017_6afa:
    ld bc, $030c
    ld a, [bc]
    dec b
    ld [$0807], sp
    db $fd
    rlca
    push bc
    ld bc, $e018
    jr z, jr_017_6ada

    ld [$a1f0], sp
    ld [$2802], sp
    ld b, l
    ld d, d
    ld h, c
    inc h
    dec bc
    ld d, e
    add b
    ld a, [$0c53]
    rst $38
    nop
    adc d
    inc b
    add sp, $10
    ret z

    ldh a, [$ffc8]
    di
    ldh a, [$ff90]
    ldh [rNR24], a
    or e
    daa
    add hl, sp
    rla
    dec hl
    rla
    rst $20
    dec e
    inc bc
    dec bc
    nop
    ld c, [hl]
    pop hl
    jr c, jr_017_6b37

jr_017_6b37:
    nop
    adc $3f
    db $f4
    ld [$5c74], a
    ldh [$ffe8], a
    jr nz, jr_017_6b93

    inc bc
    add hl, sp
    rst $38
    ld [$0ef0], sp
    ldh a, [rTIMA]
    ld a, [$f806]
    rst $18
    inc h
    ret c

    ld hl, sp-$70
    ret nc

    ret nc

    ld e, b
    dec bc
    rlca
    db $fd
    dec b
    ldh [rSC], a
    jr jr_017_6b64

    dec d
    ld a, [bc]
    inc d
    dec bc
    rst $38
    dec bc
    dec b

jr_017_6b64:
    rlca
    nop
    ld l, b
    ldh a, [$ffd0]
    ldh [$ff9f], a
    xor $10
    add hl, bc
    or $56
    ld [$030f], sp
    dec l
    add b
    ld a, a
    ld a, a
    ld l, h
    inc de
    or c
    ld a, [hl]
    add hl, bc
    ld b, $61
    dec bc
    ei
    add hl, bc
    ld b, $05
    ccf
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ef], sp
    ret c

    jr nz, jr_017_6bde

    jr nz, jr_017_6bb4

    ld [hl], b
    jr nz, jr_017_6bc3

jr_017_6b93:
    ld a, l
    nop
    ld b, c
    dec c
    ld [$0507], sp
    ld [bc], a
    inc b
    nop
    ld b, e
    ld a, b
    and b
    ld [hl-], a
    nop
    rlca
    ld h, c
    dec c
    ld d, b
    and b
    sub b
    ld h, b
    ld hl, $cc3f
    ld bc, $a002
    ld e, h
    ld b, $04
    inc h
    ld b, e

jr_017_6bb4:
    ld bc, $4802
    or b
    rrca
    ld c, b
    or b
    sub b
    ld h, b
    ld hl, $010c
    inc b
    ld h, e
    inc sp

jr_017_6bc3:
    ld h, e
    inc h
    rst $38
    cp $43
    rst $20
    nop
    ld a, [hl]
    add b
    ld b, l
    cp d
    rst $38
    add d
    ld a, l
    inc bc
    db $fc
    ld b, $f8
    inc bc
    db $fc
    rst $38
    ld [hl], e
    adc [hl]
    adc [hl]
    nop
    ld a, d
    add h

jr_017_6bde:
    ld b, [hl]
    cp b
    rlca
    add d
    ld a, h
    ld [bc], a
    ld b, $01
    nop
    nop
    and $6d
    nop
    nop
    add sp, $6d
    nop
    nop
    ld [$006d], a
    nop
    db $ec
    ld l, l
    nop
    nop
    xor $6d
    nop
    nop
    db $f4
    ld l, l
    nop
    nop
    ld a, [$006d]
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld b, $6e
    nop
    nop
    ld [$006e], sp
    nop
    ld a, [bc]
    ld l, [hl]
    nop
    nop
    inc c
    ld l, [hl]
    nop
    nop
    ld c, $6e
    nop
    nop
    db $10
    ld l, [hl]
    nop
    nop
    ld [de], a
    ld l, [hl]
    nop
    nop
    ld d, $6e
    nop
    nop
    ld a, [de]
    ld l, [hl]
    nop
    nop
    ld e, $6e
    nop
    nop
    ld [hl+], a
    ld l, [hl]
    nop
    nop
    ld h, $6e
    nop
    nop
    ld a, [hl+]
    ld l, [hl]
    nop
    nop
    ld l, $6e
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    jr nc, jr_017_6cda

    nop
    nop
    ld [hl-], a
    ld [hl], b
    nop
    nop
    inc [hl]
    ld [hl], b
    nop
    nop
    ld [hl], $70
    nop
    nop
    jr c, @+$72

    nop
    nop
    ld a, $70
    nop
    nop
    ld b, h
    ld [hl], b
    nop
    nop
    ld c, d
    ld [hl], b
    nop
    nop
    ld d, b
    ld [hl], b
    nop
    nop
    ld d, d
    ld [hl], b
    nop
    nop
    ld d, h
    ld [hl], b
    nop
    nop
    ld d, [hl]
    ld [hl], b
    nop
    nop
    ld e, b
    ld [hl], b
    nop
    nop
    ld e, h
    ld [hl], b
    nop
    nop
    ld e, [hl]
    ld [hl], b
    nop
    nop
    ld h, b
    ld [hl], b
    nop
    nop
    ld h, h
    ld [hl], b
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d

jr_017_6cda:
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    ld [$0072], sp
    nop
    ld a, [bc]
    ld [hl], d
    nop
    nop
    inc c
    ld [hl], d
    nop
    nop
    ld c, $72
    nop
    nop
    db $10
    ld [hl], d
    nop
    nop
    ld d, $72
    nop
    nop
    inc e
    ld [hl], d
    nop
    nop
    ld [hl+], a
    ld [hl], d
    nop
    nop
    jr z, jr_017_6d7c

    nop
    nop
    ld a, [hl+]
    ld [hl], d
    nop
    nop
    inc l
    ld [hl], d
    nop
    nop
    ld l, $72
    nop
    nop
    jr nc, jr_017_6d8c

    nop
    nop
    ld [hl-], a
    ld [hl], d
    nop
    nop
    inc [hl]
    ld [hl], d
    nop
    nop
    jr c, jr_017_6d98

    nop
    nop
    inc a
    ld [hl], d
    nop
    nop
    ld b, b
    ld [hl], d
    nop
    nop
    ld b, h
    ld [hl], d
    nop
    nop
    ld c, b
    ld [hl], d
    nop
    nop
    ld c, h
    ld [hl], d
    nop
    nop
    ld d, b
    ld [hl], d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    ld d, d
    ld [hl], h
    nop
    nop
    ld d, h
    ld [hl], h
    nop
    nop
    ld d, [hl]
    ld [hl], h
    nop
    nop
    ld e, b
    ld [hl], h
    nop
    nop
    ld e, d
    ld [hl], h
    nop
    nop

jr_017_6d7c:
    ld h, b
    ld [hl], h
    nop
    nop
    ld h, [hl]
    ld [hl], h
    nop
    nop
    ld l, h
    ld [hl], h
    nop
    nop
    ld [hl], d
    ld [hl], h
    nop
    nop

jr_017_6d8c:
    ld [hl], h
    ld [hl], h
    nop
    nop
    halt
    ld [hl], h
    nop
    nop
    ld a, b
    ld [hl], h
    nop
    nop

jr_017_6d98:
    ld a, d
    ld [hl], h
    nop
    nop
    ld a, [hl]
    ld [hl], h
    nop
    nop
    add b
    ld [hl], h
    nop
    nop
    add d
    ld [hl], h
    nop
    nop
    add [hl]
    ld [hl], h
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    nop
    nop
    and $6d
    add [hl]
    ld l, a
    ld [hl-], a
    ld l, [hl]
    ld h, l
    ld l, [hl]
    cp c
    ld l, a
    sub a
    ld l, a
    xor b
    ld l, a
    add [hl]
    ld l, a
    ld b, e
    ld l, [hl]
    ld d, h
    ld l, [hl]
    ld [hl-], a
    ld l, [hl]
    halt
    ld l, [hl]
    add a
    ld l, [hl]
    ld h, l
    ld l, [hl]
    jp z, $db6f

    ld l, a
    cp c
    ld l, a
    xor c

jr_017_6e07:
    ld l, [hl]
    cp $6e
    bit 5, [hl]
    jr nz, jr_017_6e7d

    sbc b
    ld l, [hl]
    db $ed
    ld l, [hl]
    cp d
    ld l, [hl]
    xor c
    ld l, [hl]
    rrca
    ld l, a

jr_017_6e18:
    cp $6e
    call c, $cb6e
    ld l, [hl]
    ld sp, $206f
    ld l, a
    ld b, d
    ld l, a
    ld d, e
    ld l, a
    ld h, h
    ld l, a
    ld [hl], l
    ld l, a
    db $ec
    ld l, a
    db $fd
    ld l, a
    ld c, $70
    rra
    ld [hl], b
    nop
    nop
    ld sp, $0010
    ld hl, sp+$30
    db $10
    ld hl, sp+$00
    ld hl, $f810
    ld hl, sp+$20
    db $10
    add b
    nop
    nop
    inc sp
    stop
    ld hl, sp+$32
    db $10
    ld hl, sp+$00
    inc hl
    db $10
    ld hl, sp-$08
    ld [hl+], a
    db $10
    add b
    rst $38
    nop
    dec [hl]
    db $10
    rst $38
    ld hl, sp+$34
    db $10
    rst $30
    nop
    dec h
    db $10
    rst $30
    ld hl, sp+$24
    db $10
    add b
    nop
    ld hl, sp+$31
    jr nc, jr_017_6e6a

jr_017_6e6a:
    nop
    jr nc, jr_017_6e9d

    ld hl, sp-$08
    ld hl, $f830
    nop
    jr nz, @+$32

    add b
    nop

jr_017_6e77:
    ld hl, sp+$33
    jr nc, jr_017_6e7b

jr_017_6e7b:
    nop
    ld [hl-], a

jr_017_6e7d:
    jr nc, jr_017_6e77

    ld hl, sp+$23
    jr nc, jr_017_6e7b

    nop
    ld [hl+], a
    jr nc, jr_017_6e07

jr_017_6e87:
    rst $38
    ld hl, sp+$35
    jr nc, @+$01

    nop
    inc [hl]
    jr nc, jr_017_6e87

    ld hl, sp+$25
    jr nc, @-$07

    nop
    inc h
    jr nc, jr_017_6e18

    ld hl, sp-$08
    ccf
    stop

jr_017_6e9d:
    nop
    ld sp, $0010
    ld hl, sp+$30
    db $10
    ld hl, sp+$00
    ld hl, $8010
    nop
    nop
    inc a
    db $10
    ld hl, sp+$00
    inc l
    stop
    ld hl, sp+$30
    db $10
    ld hl, sp-$08
    jr nz, @+$12

    add b
    ld hl, sp+$00
    cpl
    stop
    nop
    inc a
    stop
    ld hl, sp+$30
    db $10
    ld hl, sp-$08
    jr nz, jr_017_6eda

    add b
    ld hl, sp-$08
    ccf
    stop
    nop
    inc a
    db $10
    ld hl, sp+$00
    inc l
    stop
    ld hl, sp+$30

jr_017_6eda:
    db $10
    add b
    ld hl, sp-$08
    ccf
    db $10
    ld hl, sp+$00
    cpl
    stop
    nop
    inc a
    stop
    ld hl, sp+$30
    db $10
    add b
    ld hl, sp+$00
    ccf
    jr nc, jr_017_6ef2

jr_017_6ef2:
    ld hl, sp+$31
    jr nc, jr_017_6ef6

jr_017_6ef6:
    nop
    jr nc, jr_017_6f29

    ld hl, sp-$08

jr_017_6efb:
    ld hl, $8030
    nop
    ld hl, sp+$3c
    jr nc, jr_017_6efb

    ld hl, sp+$2c
    jr nc, jr_017_6f07

jr_017_6f07:
    nop
    jr nc, jr_017_6f3a

    ld hl, sp+$00
    jr nz, jr_017_6f3e

    add b
    ld hl, sp-$08
    cpl
    jr nc, jr_017_6f14

jr_017_6f14:
    ld hl, sp+$3c
    jr nc, jr_017_6f18

jr_017_6f18:
    nop
    jr nc, jr_017_6f4b

    ld hl, sp+$00
    jr nz, @+$32

    add b
    ld hl, sp+$00
    ccf
    jr nc, jr_017_6f25

jr_017_6f25:
    ld hl, sp+$3c
    jr nc, @-$06

jr_017_6f29:
    ld hl, sp+$2c
    jr nc, jr_017_6f2d

jr_017_6f2d:
    nop

jr_017_6f2e:
    jr nc, @+$32

    add b
    ld hl, sp+$00
    ccf
    jr nc, jr_017_6f2e

    ld hl, sp+$2f
    jr nc, jr_017_6f3a

jr_017_6f3a:
    ld hl, sp+$3c
    jr nc, jr_017_6f3e

jr_017_6f3e:
    nop
    jr nc, jr_017_6f71

    add b
    nop
    ld hl, sp+$3d
    db $10
    ld hl, sp-$08
    dec l
    stop

jr_017_6f4b:
    nop
    inc a
    db $10
    ld hl, sp+$00
    inc l
    db $10
    add b
    nop
    ld hl, sp+$3e
    db $10
    ld hl, sp-$08
    ld l, $10
    nop
    nop
    inc a
    db $10
    ld hl, sp+$00

jr_017_6f61:
    inc l
    db $10
    add b
    nop
    nop
    dec a
    jr nc, jr_017_6f61

jr_017_6f69:
    nop
    dec l
    jr nc, jr_017_6f6d

jr_017_6f6d:
    ld hl, sp+$3c
    jr nc, jr_017_6f69

jr_017_6f71:
    ld hl, sp+$2c
    jr nc, @-$7e

    nop
    nop
    ld a, $30
    ld hl, sp+$00
    ld l, $30
    nop
    ld hl, sp+$3c
    jr nc, @-$06

    ld hl, sp+$2c
    jr nc, @-$7e

    rst $38
    nop
    scf
    db $10
    rst $38
    ld hl, sp+$36
    db $10
    rst $30
    nop
    daa
    db $10
    rst $30
    ld hl, sp+$26
    db $10
    add b
    rst $38
    nop
    add hl, sp
    db $10
    rst $38
    ld hl, sp+$38
    db $10

jr_017_6f9f:
    rst $30
    nop
    add hl, hl
    db $10
    rst $30
    ld hl, sp+$28
    db $10
    add b
    nop
    nop
    dec sp
    stop
    ld hl, sp+$3a
    db $10

jr_017_6fb0:
    ld hl, sp+$00
    dec hl
    db $10
    ld hl, sp-$08
    ld a, [hl+]
    db $10
    add b
    rst $38
    nop
    ld d, [hl]
    db $10
    rst $38
    ld hl, sp+$55
    db $10
    rst $30
    nop
    ld b, [hl]
    db $10
    rst $30
    ld hl, sp+$45
    db $10
    add b
    rst $38
    nop
    ld e, b
    db $10
    rst $38
    ld hl, sp+$57
    db $10
    rst $30
    nop
    ld c, b
    db $10
    rst $30
    ld hl, sp+$47
    db $10
    add b
    nop
    nop
    ld d, h
    stop
    ld hl, sp+$53
    db $10
    ld hl, sp+$00
    ld b, h
    db $10
    ld hl, sp-$08
    ld b, e
    db $10
    add b
    nop
    nop
    ld d, c
    stop
    ld hl, sp+$50
    db $10
    ld hl, sp+$00
    ld b, c
    db $10
    ld hl, sp-$08
    ld b, b
    db $10
    add b
    nop
    nop
    ld d, d
    db $10
    ld hl, sp+$00
    ld b, d
    stop
    ld hl, sp+$50
    db $10
    ld hl, sp-$08
    ld b, b
    db $10
    add b
    nop

jr_017_700f:
    ld hl, sp+$51
    jr nc, jr_017_7013

jr_017_7013:
    nop
    ld d, b
    jr nc, jr_017_700f

    ld hl, sp+$41
    jr nc, jr_017_7013

    nop

jr_017_701c:
    ld b, b
    jr nc, jr_017_6f9f

    nop
    ld hl, sp+$52
    jr nc, jr_017_701c

jr_017_7024:
    ld hl, sp+$42
    jr nc, jr_017_7028

jr_017_7028:
    nop
    ld d, b
    jr nc, jr_017_7024

jr_017_702c:
    nop
    ld b, b
    jr nc, jr_017_6fb0

    inc [hl]
    ld [hl], c
    ld l, b
    ld [hl], b
    sbc e
    ld [hl], b
    adc c
    ld [hl], c
    ld b, l
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    inc [hl]

jr_017_703d:
    ld [hl], c
    ld a, c
    ld [hl], b
    adc d
    ld [hl], b
    ld l, b
    ld [hl], b
    xor h
    ld [hl], b
    cp l
    ld [hl], b
    sbc e
    ld [hl], b
    sbc d
    ld [hl], c
    xor e
    ld [hl], c

jr_017_704e:
    adc c
    ld [hl], c
    rst $18
    ld [hl], b
    ld [de], a
    ld [hl], c
    ldh a, [rSVBK]
    inc hl
    ld [hl], c
    ld h, a
    ld [hl], c
    ld a, b
    ld [hl], c
    cp h
    ld [hl], c
    ldh [c], a
    ld [hl], c
    pop de
    ld [hl], c
    cp h
    ld [hl], c
    rst $30
    ld [hl], c
    ldh [c], a
    ld [hl], c
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$59
    nop
    ld hl, sp+$00
    ld c, d
    nop
    ld hl, sp-$08
    ld c, c
    nop
    add b
    nop
    nop
    ld e, h
    nop
    nop
    ld hl, sp+$5b
    nop
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    ld c, e
    nop
    add b
    rst $38
    nop
    ld e, [hl]
    nop
    rst $38
    ld hl, sp+$5d
    nop

jr_017_7092:
    rst $30
    nop
    ld c, [hl]
    nop
    rst $30
    ld hl, sp+$4d
    nop
    add b
    nop

jr_017_709c:
    ld hl, sp+$5a
    jr nz, jr_017_70a0

jr_017_70a0:
    nop
    ld e, c
    jr nz, jr_017_709c

    ld hl, sp+$4a
    jr nz, jr_017_70a0

    nop
    ld c, c
    jr nz, jr_017_702c

    nop

jr_017_70ad:
    ld hl, sp+$5c
    jr nz, jr_017_70b1

jr_017_70b1:
    nop
    ld e, e
    jr nz, jr_017_70ad

    ld hl, sp+$4c
    jr nz, jr_017_70b1

    nop
    ld c, e
    jr nz, jr_017_703d

jr_017_70bd:
    rst $38
    ld hl, sp+$5e
    jr nz, @+$01

    nop
    ld e, l
    jr nz, jr_017_70bd

    ld hl, sp+$4e
    jr nz, @-$07

    nop
    ld c, l
    jr nz, jr_017_704e

    ld hl, sp-$08
    halt
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld hl, sp+$59
    nop
    ld hl, sp+$00
    ld c, d
    nop
    add b
    nop
    nop
    ld [hl], e
    nop
    ld hl, sp+$00
    ld h, e
    nop
    nop
    ld hl, sp+$59
    nop
    ld hl, sp-$08
    ld c, c
    nop
    add b
    ld hl, sp-$08
    halt
    nop
    nop
    nop
    ld [hl], e
    nop
    ld hl, sp+$00
    ld h, e
    nop
    nop
    ld hl, sp+$59
    nop
    add b
    ld hl, sp+$00
    halt
    jr nz, jr_017_7106

jr_017_7106:
    ld hl, sp+$5a
    jr nz, jr_017_710a

jr_017_710a:
    nop
    ld e, c
    jr nz, jr_017_7106

    ld hl, sp+$4a
    jr nz, jr_017_7092

    nop
    ld hl, sp+$73
    jr nz, @-$06

jr_017_7117:
    ld hl, sp+$63
    jr nz, jr_017_711b

jr_017_711b:
    nop
    ld e, c
    jr nz, jr_017_7117

    nop
    ld c, c
    jr nz, @-$7e

    ld hl, sp+$00
    halt
    jr nz, jr_017_7128

jr_017_7128:
    ld hl, sp+$73
    jr nz, @-$06

    ld hl, sp+$63
    jr nz, jr_017_7130

jr_017_7130:
    nop
    ld e, c
    jr nz, @-$7e

    nop
    nop
    dec e
    nop
    ld hl, sp+$00
    inc e
    nop
    nop
    ld hl, sp+$5f
    nop
    ld hl, sp-$08
    ld c, a
    nop
    add b
    nop
    ld hl, sp+$1f
    nop
    ld hl, sp-$08
    ld e, $00
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld h, b
    nop
    add b
    nop
    nop
    ld [hl], d
    nop
    nop
    ld hl, sp+$71
    nop
    ld hl, sp+$00
    ld h, d
    nop
    ld hl, sp-$08
    ld h, c
    nop
    add b
    rst $38
    nop
    ld [hl], l
    nop
    rst $38
    ld hl, sp+$74
    nop
    rst $30
    nop
    ld h, l
    nop
    rst $30
    ld hl, sp+$64
    nop

jr_017_7177:
    add b
    rst $38
    nop
    ld h, [hl]
    nop
    rst $38
    ld hl, sp+$74
    nop
    rst $30
    nop
    ld h, l
    nop
    rst $30
    ld hl, sp+$64
    nop

jr_017_7188:
    add b
    rst $38
    nop
    ld a, d
    nop
    rst $38
    ld hl, sp+$79
    nop
    rst $30
    nop
    ld l, d
    nop
    rst $30
    ld hl, sp+$69
    nop
    add b
    rst $38
    nop
    ld a, h
    nop
    rst $38
    ld hl, sp+$7b
    nop
    rst $30
    nop
    ld l, h
    nop
    rst $30
    ld hl, sp+$6b
    nop
    add b
    rst $38
    nop
    ld a, b
    nop
    rst $38
    ld hl, sp+$77
    nop
    rst $30
    nop
    ld l, b
    nop
    rst $30
    ld hl, sp+$67
    nop
    add b
    ld a, [$6e08]
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    ld hl, sp+$7d
    nop
    rst $30
    nop
    ld l, [hl]
    nop
    rst $30
    ld hl, sp+$6d
    nop
    add b
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    ld l, a
    nop
    rst $38
    ld hl, sp+$7d
    nop
    rst $30
    ld hl, sp+$6d
    nop
    add b
    ld a, [$6ef0]
    jr nz, @+$01

    ld hl, sp+$7e
    jr nz, @+$01

    nop
    ld a, l
    jr nz, @-$07

    ld hl, sp+$6e
    jr nz, @-$07

jr_017_71f3:
    nop
    ld l, l
    jr nz, jr_017_7177

    rst $38
    ld hl, sp+$7f
    jr nz, jr_017_71f3

    ld hl, sp+$6f
    jr nz, @+$01

    nop
    ld a, l
    jr nz, @-$07

    nop
    ld l, l
    jr nz, jr_017_7188

    xor b
    ld [hl], e
    ld d, h
    ld [hl], d
    add a
    ld [hl], d
    db $db
    ld [hl], e
    cp c
    ld [hl], e
    jp z, $a873

    ld [hl], e
    ld h, l
    ld [hl], d

jr_017_7218:
    halt
    ld [hl], d
    ld d, h
    ld [hl], d
    sbc b
    ld [hl], d
    xor c
    ld [hl], d
    add a
    ld [hl], d
    db $ec
    ld [hl], e
    db $fd
    ld [hl], e
    db $db
    ld [hl], e
    bit 6, d
    jr nz, jr_017_729f

    db $ed
    ld [hl], d
    ld b, d
    ld [hl], e
    cp d
    ld [hl], d
    rrca
    ld [hl], e
    call c, $cb72
    ld [hl], d
    ld sp, $2073
    ld [hl], e
    cp $72
    db $ed
    ld [hl], d
    ld d, e
    ld [hl], e
    ld b, d
    ld [hl], e
    ld h, h
    ld [hl], e
    ld [hl], l
    ld [hl], e
    add [hl]
    ld [hl], e
    sub a
    ld [hl], e
    ld c, $74
    rra
    ld [hl], h
    jr nc, jr_017_72c6

    ld b, c
    ld [hl], h
    nop
    nop
    ld [hl], c
    stop
    ld hl, sp+$70
    db $10
    ld hl, sp+$00
    ld h, c
    db $10
    ld hl, sp-$08
    ld h, b
    db $10
    add b
    nop
    nop
    ld [hl], e
    stop
    ld hl, sp+$72
    db $10
    ld hl, sp+$00
    ld h, e
    db $10
    ld hl, sp-$08
    ld h, d
    db $10
    add b
    nop
    nop
    ld [hl], l
    stop
    ld hl, sp+$74
    db $10
    ld hl, sp+$00
    ld h, l
    db $10
    ld hl, sp-$08
    ld h, h
    db $10
    add b
    nop

jr_017_7288:
    ld hl, sp+$71
    jr nc, jr_017_728c

jr_017_728c:
    nop
    ld [hl], b
    jr nc, jr_017_7288

    ld hl, sp+$61
    jr nc, jr_017_728c

    nop
    ld h, b
    jr nc, jr_017_7218

    nop

jr_017_7299:
    ld hl, sp+$73
    jr nc, jr_017_729d

jr_017_729d:
    nop
    ld [hl], d

jr_017_729f:
    jr nc, jr_017_7299

    ld hl, sp+$63
    jr nc, jr_017_729d

    nop
    ld h, d
    jr nc, @-$7e

    nop

jr_017_72aa:
    ld hl, sp+$75
    jr nc, jr_017_72ae

jr_017_72ae:
    nop
    ld [hl], h
    jr nc, jr_017_72aa

    ld hl, sp+$65
    jr nc, jr_017_72ae

    nop
    ld h, h
    jr nc, @-$7e

    ld hl, sp-$08
    ld a, a
    nop
    nop
    nop
    ld [hl], c
    nop

jr_017_72c2:
    nop
    ld hl, sp+$70
    nop

jr_017_72c6:
    ld hl, sp+$00
    ld h, c
    nop
    add b
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld l, h
    nop

jr_017_72d3:
    nop
    ld hl, sp+$70
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    ld hl, sp+$00
    ld l, a
    nop
    nop
    nop
    ld a, h
    nop

jr_017_72e4:
    nop
    ld hl, sp+$70
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    ld hl, sp-$08
    ld a, a
    nop
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld l, h
    nop
    nop
    ld hl, sp+$70
    nop
    add b
    ld hl, sp-$08
    ld a, a
    nop
    ld hl, sp+$00
    ld l, a
    stop
    nop
    ld a, h
    stop
    ld hl, sp+$70
    db $10
    add b
    ld hl, sp+$00
    ld a, a
    jr nz, jr_017_7314

jr_017_7314:
    ld hl, sp+$71
    jr nz, jr_017_7318

jr_017_7318:
    nop
    ld [hl], b
    jr nz, jr_017_7314

    ld hl, sp+$61
    jr nz, @-$7e

    nop
    ld hl, sp+$7c
    jr nz, @-$06

jr_017_7325:
    ld hl, sp+$6c
    jr nz, jr_017_7329

jr_017_7329:
    nop
    ld [hl], b
    jr nz, jr_017_7325

    nop
    ld h, b
    jr nz, @-$7e

    ld hl, sp-$08
    ld l, a
    jr nz, jr_017_7336

jr_017_7336:
    ld hl, sp+$7c
    jr nz, jr_017_733a

jr_017_733a:
    nop
    ld [hl], b
    jr nz, jr_017_7336

    nop
    ld h, b
    jr nz, jr_017_72c2

    ld hl, sp+$00
    ld a, a
    jr nz, jr_017_7347

jr_017_7347:
    ld hl, sp+$7c
    jr nc, @-$06

    ld hl, sp+$6c
    jr nc, jr_017_734f

jr_017_734f:
    nop

jr_017_7350:
    ld [hl], b
    jr nc, jr_017_72d3

    ld hl, sp+$00
    ld a, a
    jr nz, jr_017_7350

    ld hl, sp+$6f
    jr nc, jr_017_735c

jr_017_735c:
    ld hl, sp+$7c
    jr nc, jr_017_7360

jr_017_7360:
    nop
    ld [hl], b
    jr nc, jr_017_72e4

    nop
    ld hl, sp+$7d
    nop
    ld hl, sp-$08
    ld l, l
    nop
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld l, h
    nop
    add b
    nop
    ld hl, sp+$7e
    nop
    ld hl, sp-$08
    ld l, [hl]
    nop
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00

jr_017_7383:
    ld l, h
    nop
    add b
    nop
    ld hl, sp+$7c
    jr nz, jr_017_7383

jr_017_738b:
    ld hl, sp+$6c
    jr nz, jr_017_738f

jr_017_738f:
    nop
    ld a, l
    jr nz, jr_017_738b

    nop

jr_017_7394:
    ld l, l
    jr nz, @-$7e

    nop
    nop
    ld a, [hl]
    jr nz, jr_017_7394

jr_017_739c:
    nop
    ld l, [hl]
    jr nz, jr_017_73a0

jr_017_73a0:
    ld hl, sp+$7c
    jr nz, jr_017_739c

    ld hl, sp+$6c
    jr nz, @-$7e

    nop
    nop
    ld [hl], a
    nop
    nop
    ld hl, sp+$76
    nop
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    add b
    nop
    nop
    ld a, c
    nop
    nop
    ld hl, sp+$78
    nop

jr_017_73c1:
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    add b
    nop
    nop
    ld a, e
    nop
    nop
    ld hl, sp+$7a
    nop

jr_017_73d2:
    ld hl, sp+$00
    ld l, e
    nop
    ld hl, sp-$08
    ld l, d
    nop
    add b
    nop
    nop
    rst $18
    nop
    nop
    ld hl, sp-$22
    nop
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    add b
    nop
    nop
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    add b
    nop
    nop
    cp a
    nop
    nop
    ld hl, sp-$42
    nop
    ld hl, sp+$00
    xor a
    nop
    ld hl, sp-$08
    xor [hl]
    nop
    add b
    nop
    nop
    ld e, l
    nop
    ld hl, sp+$00
    ld e, h
    nop
    nop
    ld hl, sp+$5b
    nop
    ld hl, sp-$08
    ld e, d
    nop
    add b
    nop
    nop
    ld e, a
    nop
    ld hl, sp+$00
    ld e, [hl]
    nop
    nop
    ld hl, sp+$5b
    nop
    ld hl, sp-$08

jr_017_742d:
    ld e, d
    nop
    add b
    nop
    ld hl, sp+$5d
    jr nz, jr_017_742d

jr_017_7435:
    ld hl, sp+$5c
    jr nz, jr_017_7439

jr_017_7439:
    nop
    ld e, e
    jr nz, jr_017_7435

    nop

jr_017_743e:
    ld e, d
    jr nz, jr_017_73c1

    nop
    ld hl, sp+$5f
    jr nz, jr_017_743e

jr_017_7446:
    ld hl, sp+$5e
    jr nz, jr_017_744a

jr_017_744a:
    nop
    ld e, e
    jr nz, jr_017_7446

jr_017_744e:
    nop
    ld e, d
    jr nz, jr_017_73d2

    ld d, [hl]
    ld [hl], l
    adc d
    ld [hl], h
    cp l
    ld [hl], h
    xor e
    ld [hl], l
    ld h, a
    ld [hl], l
    ld a, b
    ld [hl], l
    ld d, [hl]

jr_017_745f:
    ld [hl], l
    sbc e
    ld [hl], h
    xor h
    ld [hl], h
    adc d
    ld [hl], h
    adc $74
    rst $18
    ld [hl], h
    cp l
    ld [hl], h
    cp h
    ld [hl], l
    call $ab75
    ld [hl], l
    ld bc, $3475
    ld [hl], l
    ld [de], a
    ld [hl], l
    ld b, l
    ld [hl], l
    adc c
    ld [hl], l
    sbc d
    ld [hl], l
    sbc $75
    inc b
    halt
    di
    ld [hl], l
    sbc $75
    add hl, de
    halt
    inc b
    halt
    nop
    nop
    ld [hl], c
    nop
    nop
    ld hl, sp+$70
    nop
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    nop
    nop
    ld [hl], e
    nop
    nop
    ld hl, sp+$72
    nop
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    add b
    nop
    nop
    ld [hl], l
    nop
    nop
    ld hl, sp+$74
    nop

jr_017_74b4:
    ld hl, sp+$00
    ld h, l
    nop
    ld hl, sp-$08
    ld h, h
    nop
    add b
    nop

jr_017_74be:
    ld hl, sp+$71
    jr nz, jr_017_74c2

jr_017_74c2:
    nop
    ld [hl], b
    jr nz, jr_017_74be

    ld hl, sp+$61
    jr nz, jr_017_74c2

    nop
    ld h, b
    jr nz, jr_017_744e

    nop

jr_017_74cf:
    ld hl, sp+$73
    jr nz, jr_017_74d3

jr_017_74d3:
    nop
    ld [hl], d
    jr nz, jr_017_74cf

    ld hl, sp+$63
    jr nz, jr_017_74d3

    nop
    ld h, d
    jr nz, jr_017_745f

    nop

jr_017_74e0:
    ld hl, sp+$75
    jr nz, jr_017_74e4

jr_017_74e4:
    nop
    ld [hl], h
    jr nz, jr_017_74e0

    ld hl, sp+$65
    jr nz, jr_017_74e4

    nop
    ld h, h
    jr nz, @-$7e

    ld hl, sp-$08
    ld a, a
    nop
    nop
    nop
    ld [hl], c
    nop
    nop
    ld hl, sp+$70
    nop
    ld hl, sp+$00
    ld h, c
    nop
    add b
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld l, h
    nop
    nop
    ld hl, sp+$70
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    ld hl, sp-$08
    ld a, a
    nop
    nop
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld l, h
    nop
    nop
    ld hl, sp+$70
    nop
    add b
    ld hl, sp+$00
    ld a, a
    jr nz, jr_017_7528

jr_017_7528:
    ld hl, sp+$71
    jr nz, jr_017_752c

jr_017_752c:
    nop
    ld [hl], b
    jr nz, jr_017_7528

    ld hl, sp+$61
    jr nz, jr_017_74b4

    ld hl, sp+$00
    ld h, b
    jr nz, jr_017_7539

jr_017_7539:
    ld hl, sp+$7c
    jr nz, @-$06

    ld hl, sp+$6c
    jr nz, jr_017_7541

jr_017_7541:
    nop
    ld [hl], b
    jr nz, @-$7e

    ld hl, sp+$00
    ld a, a
    jr nz, jr_017_754a

jr_017_754a:
    nop
    ld [hl], b
    jr nz, jr_017_754e

jr_017_754e:
    ld hl, sp+$7c
    jr nz, jr_017_754a

    ld hl, sp+$6c
    jr nz, @-$7e

    nop
    nop
    ld [hl], a
    nop
    nop
    ld hl, sp+$76
    nop
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    add b
    nop
    nop
    ld a, c
    nop
    nop
    ld hl, sp+$78
    nop
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    add b
    nop
    nop
    ld a, e
    nop
    nop
    ld hl, sp+$7a
    nop
    ld hl, sp+$00
    ld l, e
    nop
    ld hl, sp-$08
    ld l, d
    nop
    add b
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld hl, sp+$7d
    nop
    ld hl, sp+$00
    ld l, [hl]
    nop
    ld hl, sp-$08
    ld l, l
    nop

jr_017_7599:
    add b
    nop
    nop
    ld l, a
    nop
    nop
    ld hl, sp+$7d
    nop
    ld hl, sp+$00
    ld l, [hl]
    nop
    ld hl, sp-$08
    ld l, l
    nop

jr_017_75aa:
    add b
    nop
    nop
    rst $18
    nop
    nop
    ld hl, sp-$22
    nop
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    add b
    nop
    nop
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    add b
    nop
    nop
    cp a
    nop
    nop
    ld hl, sp-$42
    nop
    ld hl, sp+$00
    xor a
    nop
    ld hl, sp-$08
    xor [hl]
    nop
    add b
    ei
    ld [$005b], sp
    nop
    nop
    ld e, l
    nop
    nop
    ld hl, sp+$5c
    nop
    ld hl, sp+$00
    ld e, e
    nop
    ld hl, sp-$08
    ld e, d
    nop
    add b
    ld hl, sp+$00
    ld e, [hl]
    nop
    nop
    nop
    ld e, a
    nop
    nop
    ld hl, sp+$5c
    nop
    ld hl, sp-$08
    ld e, d
    nop
    add b
    ei
    ldh a, [$ff5b]
    jr nz, jr_017_7609

jr_017_7609:
    ld hl, sp+$5d
    jr nz, jr_017_760d

jr_017_760d:
    nop
    ld e, h
    jr nz, jr_017_7609

    ld hl, sp+$5b
    jr nz, jr_017_760d

    nop

jr_017_7616:
    ld e, d
    jr nz, jr_017_7599

    nop
    ld hl, sp+$5f
    jr nz, jr_017_7616

jr_017_761e:
    ld hl, sp+$5e
    jr nz, jr_017_7622

jr_017_7622:
    nop
    ld e, h
    jr nz, jr_017_761e

    nop
    ld e, d
    jr nz, jr_017_75aa

    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    inc [hl]
    ld [hl], a
    inc [hl]
    ld [hl], a
    scf
    ld [hl], a
    scf
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld c, h
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld c, h
    ld [hl], a
    ld c, h
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    dec l
    ld [hl], a
    inc [hl]
    ld [hl], a
    inc [hl]
    ld [hl], a
    scf
    ld [hl], a
    scf
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    dec a
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld c, h
    ld [hl], a
    ld b, d
    ld [hl], a
    ld b, d
    ld [hl], a
    ld c, h
    ld [hl], a
    ld c, h
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    rra
    nop
    rra
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
