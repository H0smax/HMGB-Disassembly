; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [bc], a
    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0e5a
    call Call_000_0a7b
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $4001
    ld a, $11
    ld de, $9010
    ld bc, $07f0
    call Call_000_211f
    ld hl, $47f1
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call Call_000_211f
    ld hl, $c0a3
    ld a, $6c
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld [$cbe2], a
    ld [$cbe3], a
    ld [$ccc2], a
    ld [$ccc3], a
    ld [$ccc4], a
    ld [$cbe6], a
    ld [$cbe7], a
    ld hl, $48df
    ld de, $9822
    call Call_002_41c7
    ld hl, $48f1
    ld de, $9862
    call Call_002_41c7
    ld hl, $4903
    ld de, $98a2
    call Call_002_41c7
    ld hl, $4915
    ld de, $98e2
    call Call_002_41c7
    ld hl, $4927
    ld de, $9922
    call Call_002_41c7
    ld hl, $4939
    ld de, $9962
    call Call_002_41c7
    ld hl, $494b
    ld de, $99a2
    call Call_002_41c7
    ld hl, $495d
    ld de, $99e2
    call Call_002_41c7
    call Call_002_4896
    ld a, [$b884]
    ld hl, $9822
    call Call_002_41d1
    ld hl, $9826
    ld a, [$b883]
    inc a
    call Call_002_41ec
    ld a, [CurrentTime]
    ld hl, $9829
    call Call_002_41ff
    ld a, [$b884]
    ld [$cbde], a
    ld a, [$b883]
    ld [$cbdf], a
    ld a, [CurrentTime]
    ld [$cbe0], a
    ld a, [$b881]
    ld [$cbe1], a
    ld a, [$b885]
    ld [$cbdd], a
    call Call_002_4370
    call Call_000_0a2e
    call Call_002_43d5
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    push hl
    ld b, h
    ld c, l
    ld hl, $ba10
    call Call_000_0a27
    pop hl
    push hl
    call Call_000_316d
    ld a, [$ccce]
    inc a
    ld [$9864], a
    ld a, [$cccf]
    inc a
    ld [$9865], a
    ld a, [$ccd0]
    inc a
    ld [$9866], a
    ld a, [$ccd1]
    inc a
    ld [$9867], a
    pop hl
    call Call_002_4885
    call Call_002_4468
    call Call_002_44bc
    call Call_002_44a4
    call Call_002_45f5
    call Call_002_427b
    call Call_002_42e3
    ld a, [$b884]
    ld hl, $98a2
    call Call_002_41d1
    ld hl, $98a6
    ld a, [$b883]
    inc a
    call Call_002_41ec
    ld a, [CurrentTime]
    ld hl, $98a9
    call Call_002_41ff
    call Call_002_496f
    call Call_002_4e3a
    call Call_002_4d88
    call Call_002_4dab
    call Call_002_4dc9
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ret


    call Call_000_0ae9
    ld a, [$cb4f]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    call Call_000_0491
    call Call_000_054a
    call Call_000_05e2
    ld a, [$ccc2]
    ld b, a
    ld a, [CurrentMoneyL]
    add b
    ld [CurrentMoneyL], a
    ld a, [$ccc3]
    ld b, a
    ld a, [CurrentMoneyM]
    adc b
    ld [CurrentMoneyM], a
    ld a, [$ccc4]
    ld b, a
    ld a, [CurrentMoneyH]
    adc b
    ld [CurrentMoneyH], a
    call Call_000_10a0
    ld a, [$b88d]
    cp $13
    ret nz

    xor a
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    ret


Call_002_41c7:
    ld b, $10

jr_002_41c9:
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_41c9

    ret


Call_002_41d1:
    ld de, $41e4
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ret


    ld d, b
    add d
    ld b, b
    ld [hl-], a
    nop
    ld de, $7152

Call_002_41ec:
    push hl
    ld l, a
    ld h, $00
    call Call_000_316d
    pop hl
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl+], a
    ret


Call_002_41ff:
    ld de, $421b
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    ret


    ld e, $3e
    xor a
    ld a, [bc]
    ld e, $3e
    xor a
    dec bc
    ld e, $3e
    xor a
    inc c
    ld e, $3e
    xor a
    dec c
    ld e, $3e
    xor a
    ld c, $1e
    ld a, $af
    rrca
    ld e, $3e
    xor a
    ld a, [de]
    ld e, $3e
    rst $38
    dec de
    ld e, $3e
    xor a
    inc e
    ld e, $3e
    xor a
    dec e
    ld e, $3e
    dec bc
    ld a, [bc]
    ld e, $3e
    dec bc
    dec bc
    ld c, e
    ld a, $af
    ld a, [bc]
    ld c, e
    ld a, $af
    dec bc
    ld c, e
    ld a, $af
    inc c
    ld c, e
    ld a, $af
    dec c
    ld c, e
    ld a, $af
    ld c, $4b
    ld a, $af
    rrca
    ld c, e
    ld a, $af
    ld a, [de]
    ld c, e
    ld a, $af
    dec de
    ld c, e
    ld a, $af
    inc e
    ld c, e
    ld a, $af
    dec e
    ld c, e
    ld a, $0b
    ld a, [bc]
    ld c, e
    ld a, $0b
    dec bc

Call_002_427b:
    ld a, [$ba0c]
    bit 7, a
    call nz, Call_002_431a
    ld a, [$ba0c]
    bit 6, a
    call nz, Call_002_4345
    ld a, [$ba0d]
    bit 0, a
    ret z

    bit 2, a
    ret nz

    bit 1, a
    ret nz

    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld a, h
    or l
    jr z, jr_002_42c2

jr_002_42a8:
    ld a, [$ba0d]
    set 2, a
    ld [$ba0d], a
    ld a, [$b9d7]
    cp $0a
    jr c, jr_002_42bd

    sub $0a
    ld [$b9d7], a
    ret


jr_002_42bd:
    xor a
    ld [$b9d7], a
    ret


jr_002_42c2:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld b, a
    ld a, [CurrentTime]
    cp $06
    jr c, jr_002_42dd

    add b
    cp $20
    jr nc, jr_002_42a8

    ret


jr_002_42dd:
    add b
    cp $06
    jr nc, jr_002_42a8

    ret


Call_002_42e3:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld a, h
    or l
    jr z, jr_002_42f9

jr_002_42f4:
    xor a
    ld [$ba4e], a
    ret


jr_002_42f9:
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld b, a
    ld a, [CurrentTime]
    cp $06
    jr c, jr_002_4314

    add b
    cp $20
    jr nc, jr_002_42f4

    ret


jr_002_4314:
    add b
    cp $06
    jr nc, jr_002_42f4

    ret


Call_002_431a:
    ld a, [$ba38]

Call_002_431d:
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_002_433a

    ld a, [$cbe5]
    ld l, a
    cp $0c
    jr nc, jr_002_433a

    ld a, [$ba38]
    add l
    cp $0c
    jr nc, jr_002_433a

    ld [$ba38], a
    ret


jr_002_433a:
    ld a, $01
    ld [$b8a7], a
    ld a, $ff
    ld [$ba38], a
    ret


Call_002_4345:
    ld a, [$ba39]
    cp $ff
    ret z

    ld a, [$cbe4]
    or a
    jr nz, jr_002_4365

    ld a, [$cbe5]
    ld l, a
    cp $18
    jr nc, jr_002_4365

    ld a, [$ba39]
    add l
    cp $18
    jr nc, jr_002_4365

    ld [$ba39], a
    ret


jr_002_4365:
    ld a, $01
    ld [$b8a8], a
    ld a, $ff
    ld [$ba39], a
    ret


Call_002_4370:
    call Call_002_47b4
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld b, a
    ld a, [$b883]
    add l
    ld [$b883], a
    ld a, [CurrentTime]
    add b
    ld [CurrentTime], a
    cp $18
    jr c, jr_002_439f

    sub $18
    ld [CurrentTime], a
    ld a, [$b883]
    inc a
    ld [$b883], a

jr_002_439f:
    ld a, [$b883]
    ld l, a
    ld h, $00
    ld a, $1e
    call Call_000_06ce
    ld [$b883], a
    ld a, [$b884]
    add l
    ld [$b884], a
    ld l, a
    ld h, $00
    ld a, $04
    call Call_000_06ce
    ld [$b884], a
    ld a, [$b885]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, l
    ld [$b885], a
    cp $63
    ret c

    ld a, $63
    ld [$b885], a
    ret


Call_002_43d5:
    ld a, [$cbdd]
    ld b, a
    ld a, [$b885]
    cp b
    jr nz, jr_002_43f3

    ld a, [$b884]
    cp $03
    ret nz

    ld a, [$b883]
    cp $1d
    ret nz

    ld a, [CurrentTime]
    cp $06
    ret c

    jr jr_002_4446

jr_002_43f3:
    ld a, [$b884]
    ld hl, $02d0
    call Call_000_099f
    push hl
    ld a, [$b883]
    ld c, $18
    call Call_000_071e
    pop de
    add hl, de
    ld a, [CurrentTime]
    sub $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $18
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cbe5]
    sub l
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc h
    ld [$cbe4], a
    ld a, [$b885]
    dec a
    ld [$b885], a
    ld a, $03
    ld [$b884], a
    ld a, $1d
    ld [$b883], a
    ld a, $06
    ld [CurrentTime], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


jr_002_4446:
    ld a, [CurrentTime]
    sub $06
    ld b, a
    ld a, [$cbe5]
    sub b
    ld [$cbe5], a
    ld a, [$cbe4]
    sbc $00
    ld [$cbe4], a
    ld a, $06
    ld [CurrentTime], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


Call_002_4468:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_4477

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_4477

    ret


jr_002_4477:
    ld a, [$b885]
    cp $00
    ret nz

    ld a, [$b8ea]
    cp $00
    ret z

    cp $01
    ret nz

    ld a, [$b884]
    cp $00
    ret z

    cp $02
    jr nc, jr_002_4499

    ld a, [$b8eb]
    ld b, a
    ld a, [$b883]
    cp b
    ret c

jr_002_4499:
    ld a, $02
    ld [$b8ea], a
    ld a, $80
    ld [$b8eb], a
    ret


Call_002_44a4:
    ld a, [$b884]
    cp $03
    ret nz

    ld a, [$b883]
    cp $1d
    ret nz

    ld a, [CurrentTime]
    cp $06
    ret c

    ld a, $11
    ld [$b88d], a
    ret


Call_002_44bc:
    ld a, [$b8fe]
    cp $02
    ret c

    ld a, [$cbe4]
    or a
    jp nz, Jump_002_45c9

    ld a, [$b8fe]
    cp $02
    jr z, jr_002_44e8

    ld a, [$b8fe]
    cp $03
    jr z, jr_002_453a

    ld a, [$b8fe]
    cp $04
    jp z, Jump_002_457b

    ld a, [$b8fe]
    cp $05
    jp z, Jump_002_45ac

    ret


jr_002_44e8:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_44fb

    ld a, $18
    add b
    ld b, a

jr_002_44fb:
    call Call_002_45ea
    ld a, $48
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jp nc, Jump_002_45c9

    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4528

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_452e

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4534

    ret


jr_002_4528:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_452e:
    ld a, $04
    ld [$b8fe], a
    ret


jr_002_4534:
    ld a, $03
    ld [$b8fe], a
    ret


jr_002_453a:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_454d

    ld a, $18
    add b
    ld b, a

jr_002_454d:
    call Call_002_45ea
    ld a, $30
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c9

    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_456f

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_4575

    ret


jr_002_456f:
    ld a, $05
    ld [$b8fe], a
    ret


jr_002_4575:
    ld a, $04
    ld [$b8fe], a
    ret


Jump_002_457b:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_458e

    ld a, $18
    add b
    ld b, a

jr_002_458e:
    call Call_002_45ea
    ld a, $18
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45c9

    ld a, $00
    add b
    ld c, a
    ld a, [$cbe5]
    cp c
    jr nc, jr_002_45a6

    ret


jr_002_45a6:
    ld a, $05
    ld [$b8fe], a
    ret


Jump_002_45ac:
    ld a, [$cbe0]
    ld b, a
    ld a, $06
    sub b
    ld b, a
    ld a, [$cbe0]
    cp $06
    jr c, jr_002_45bf

    ld a, $18
    add b
    ld b, a

jr_002_45bf:
    call Call_002_45ea
    ld a, [$cbe5]
    cp b
    jr nc, jr_002_45c9

    ret


Jump_002_45c9:
jr_002_45c9:
    xor a
    ld [$b8fe], a
    ld a, [$b911]
    cp $00
    jr z, jr_002_45df

    ld a, $0a
    call Call_000_0fb9
    ld a, $02
    ld [$b911], a
    ret


jr_002_45df:
    ld a, $0a
    call Call_000_0fb9
    ld a, $01
    ld [$b911], a
    ret


Call_002_45ea:
    ld a, b
    and $80
    jr nz, jr_002_45f0

    ret


jr_002_45f0:
    ld a, b
    add $18
    ld b, a
    ret


Call_002_45f5:
    xor a
    ld [$b88e], a
    ld [$b890], a
    ld [$b891], a
    ld [$b893], a
    ld [$b896], a
    ld [$b899], a
    ld [$b89a], a
    ld a, $80
    ld [$b894], a
    ld [$b895], a
    ld [$b89b], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    call Call_002_4627
    call Call_002_46ae
    ret


Call_002_4627:
    ld a, [$b885]
    or a
    jr nz, jr_002_4695

    ld a, [$b884]
    cp $02
    jr z, jr_002_4695

    ld a, [$b884]
    cp $03
    jr z, jr_002_4695

    ld a, [$b8a2]
    cp $80
    ret z

    ld a, [$b8a2]
    cp $ff
    jr z, jr_002_4650

    ld a, [$b884]
    cp $00
    ret z

    jr jr_002_465c

jr_002_4650:
    ld a, [$b884]
    cp $00
    jr z, jr_002_4669

    ld a, $09
    ld [$b8a2], a

jr_002_465c:
    ld a, [$b8a2]
    ld b, a
    ld a, [$b883]
    cp b
    jr z, jr_002_4675

    jr nc, jr_002_4695

    ret


jr_002_4669:
    ld a, [$b883]
    cp $1d
    ret nz

    ld a, $09
    ld [$b8a2], a
    ret


jr_002_4675:
    ld a, $00
    ld [$b8a0], a
    ld [$b89f], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_002_4695:
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [$ba0d]
    set 0, a
    ld [$ba0d], a
    ld a, $80
    ld [$b8a2], a
    ret


Call_002_46ae:
    ld a, [$b884]
    cp $02
    jr z, jr_002_472f

    ld a, [$b884]
    cp $03
    jr z, jr_002_472f

    ld a, [$b8a1]
    cp $80
    jr z, jr_002_4735

    ld a, [$b8a1]
    cp $ff
    jr z, jr_002_46d2

    ld a, [$b884]
    cp $00
    ret z

    jr jr_002_46e8

jr_002_46d2:
    ld a, [$b884]
    cp $00
    jr z, jr_002_46f5

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a

jr_002_46e8:
    ld a, [$b8a1]
    ld b, a
    ld a, [$b883]
    cp b
    jr z, jr_002_470b

    jr nc, jr_002_472f

    ret


jr_002_46f5:
    ld a, [$b883]
    cp $1d
    ret nz

    ld a, $18
    ld [$b8a1], a
    ld a, $18
    ld [$ba4c], a
    ld a, $17
    ld [$ba4d], a
    ret


jr_002_470b:
    ld a, $03
    ld [$b8a0], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, $00
    ld [$b89f], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_472f:
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_4735:
    ld a, [$b8a0]
    cp $03
    jr z, jr_002_4744

    ld a, [$b89f]
    cp $03
    jr z, jr_002_477b

    ret


jr_002_4744:
    ld a, [$ba4c]
    ld b, a
    ld a, [$b883]
    cp b
    ret z

    ld a, [$ba4c]
    inc a
    ld b, a
    ld a, [$b883]
    cp b
    jr z, jr_002_475a

    jr jr_002_4760

jr_002_475a:
    ld a, [CurrentTime]
    cp $06
    ret c

jr_002_4760:
    ld a, $00
    ld [$b8a0], a
    ld [$b89f], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ret


jr_002_477b:
    ld a, [$ba4d]
    ld b, a
    ld a, [$b883]
    cp b
    ret z

    ld a, [$ba4c]
    ld b, a
    ld a, [$b883]
    cp b
    jr z, jr_002_478f

    ret


jr_002_478f:
    ld a, [CurrentTime]
    cp $06
    ret c

    ld a, $03
    ld [$b8a0], a
    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    ld a, $00
    ld [$b89f], a
    ret


Call_002_47b4:
    ld a, [$b886]
    ld hl, $05a0
    call Call_000_099f
    ld a, l
    ldh [$ffae], a
    ld a, h
    ldh [$ffaf], a
    ld a, c
    ldh [$ffb0], a
    ld a, [$b887]
    ld c, $3c
    call Call_000_071e
    ld a, [$b888]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffae
    call Call_000_0a14
    ld a, [$c902]
    ld hl, $05a0
    call Call_000_099f
    ld a, l
    ldh [$ffb2], a
    ld a, h
    ldh [$ffb3], a
    ld a, c
    ldh [$ffb4], a
    ld a, [$c903]
    ld c, $3c
    call Call_000_071e
    ld a, [$c904]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld hl, $ffb2
    call Call_000_0a14
    ldh a, [$ffae]
    ld b, a
    ldh a, [$ffb2]
    sub b
    ld l, a
    ldh a, [$ffaf]
    ld b, a
    ldh a, [$ffb3]
    sbc b
    ld h, a
    ldh a, [$ffb0]
    ld b, a
    ldh a, [$ffb4]
    sbc b
    cp $00
    jr z, jr_002_4825

    ld hl, $ffff

jr_002_4825:
    ld a, [$ba41]
    cp $00
    jr z, jr_002_484c

    ld a, h
    cp $55
    jr nc, jr_002_483a

    cp $54
    jr c, jr_002_483d

    ld a, l
    cp $61
    jr c, jr_002_483d

jr_002_483a:
    ld hl, $5460

jr_002_483d:
    add hl, hl
    ld a, $0f
    call Call_000_06ce
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


jr_002_484c:
    ld a, h
    cp $a9
    jr nc, jr_002_485a

    cp $a8
    jr c, jr_002_485d

    ld a, l
    cp $c1
    jr c, jr_002_485d

jr_002_485a:
    ld hl, $a8c0

jr_002_485d:
    ld a, $0f
    call Call_000_06ce
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


    ld a, h
    cp $0c
    jr nc, jr_002_4879

    cp $0b
    jr c, jr_002_487c

    ld a, l
    cp $41
    jr c, jr_002_487c

jr_002_4879:
    ld hl, $0b40

jr_002_487c:
    ld a, h
    ld [$cbe4], a
    ld a, l
    ld [$cbe5], a
    ret


Call_002_4885:
    ld a, h
    or a
    jr nz, jr_002_488f

    ld a, l
    cp $18
    jr nc, jr_002_488f

    ret


jr_002_488f:
    ld a, [$b8ee]
    ld [$b8ed], a
    ret


Call_002_4896:
    ld a, $f1
    ld [$9800], a
    ld b, $12
    ld a, $f2
    ld hl, $9801

jr_002_48a2:
    ld [hl+], a
    dec b
    jr nz, jr_002_48a2

    ld a, $f3
    ld [$9813], a
    ld a, $f4
    ld [$9a20], a
    ld b, $12
    ld a, $f5
    ld hl, $9a21

jr_002_48b7:
    ld [hl+], a
    dec b
    jr nz, jr_002_48b7

    ld a, $f6
    ld [$9a33], a
    ld b, $10
    ld de, $0020
    ld hl, $9820
    ld a, $f7

jr_002_48ca:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_48ca

    ld b, $10
    ld de, $0020
    ld hl, $9833
    ld a, $f8

jr_002_48d9:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_48d9

    ret


    xor a

jr_002_48e0:
    xor a
    ld b, h
    adc h
    xor a
    xor a
    sbc h
    xor a
    ld a, $af
    xor a
    or c
    db $10
    add b
    reti


    xor a
    xor a
    xor a
    xor a
    xor a

jr_002_48f3:
    xor a
    xor a
    xor a
    xor a
    or c
    db $10
    sub h
    and b
    ld [hl+], a
    and c
    jr nc, jr_002_490f

    add b
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, h
    adc h
    xor a
    xor a
    sbc h
    xor a
    ld a, $af
    xor a
    or c

jr_002_490f:
    cp a
    ld [hl], a
    ld l, d
    xor a
    xor a
    xor a
    inc b
    inc sp
    ld [hl-], a
    cp d
    ld bc, $1344
    sub e
    db $10
    ld d, b
    xor h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    and h
    ld [bc], a
    inc de
    ld bc, $9121
    sub e
    db $10
    ld [hl+], a
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    sbc $af
    xor a
    jr nz, jr_002_494d

    ld h, h
    ld [hl-], a
    ld b, c
    adc [hl]
    ld [hl], h
    nop
    and e
    jr nc, jr_002_48e0

    xor a
    xor a
    xor a
    xor a
    sbc h
    xor a
    xor a
    cp [hl]
    ld [bc], a

jr_002_494d:
    add $32
    ld b, c
    ld [$7425], sp
    nop
    and e
    jr nc, jr_002_48f3

    xor a
    xor a
    xor a
    sbc h
    xor a
    xor a
    xor a
    xor a
    xor a
    sbc l
    sbc h
    ld h, h
    inc b
    ld hl, $34a4
    and l
    sbc c
    ret


    sub e
    inc sp
    ld b, e
    xor a
    xor a

Call_002_496f:
    call Call_002_4e01
    ld a, [$cbe4]
    ld h, a
    ld a, [$cbe5]
    ld l, a
    ld a, $18
    call Call_000_06ce
    ld a, l
    ld [$cbdc], a
    or a
    ret z

    call Call_002_4f5b
    ld a, [$cbde]
    ldh [$ffa6], a
    ld a, [$cbdf]
    ldh [$ffa7], a
    ld a, [$cbdc]
    or a
    ret z

    ld e, a
    jr jr_002_49bb

Jump_002_499a:
    ldh a, [$ffa7]
    inc a
    ldh [$ffa7], a
    cp $1e
    jr nz, jr_002_49ad

    xor a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    and $03
    ldh [$ffa6], a

jr_002_49ad:
    ld a, [$ccc6]
    dec a
    ld [$ccc6], a
    cp $ff
    jr nz, jr_002_49bb

    call Call_002_4f5b

jr_002_49bb:
    xor a
    ldh [$ffa8], a
    push de
    ld hl, $a000
    ld bc, $0c40

Jump_002_49c5:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_002_4a44

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_49d9

    call Call_002_4a74
    jr jr_002_4a44

jr_002_49d9:
    ld a, [$ccc6]
    or a
    jr z, jr_002_4a44

    ld a, e
    and $f0
    cp $50
    jr z, jr_002_49ec

    cp $60
    jr z, jr_002_49ec

    jr jr_002_49f1

jr_002_49ec:
    call Call_002_4b5f
    jr jr_002_4a44

jr_002_49f1:
    cp $70
    jr z, jr_002_49fb

    cp $80
    jr z, jr_002_49fb

    jr jr_002_4a00

jr_002_49fb:
    call Call_002_4bbd
    jr jr_002_4a44

jr_002_4a00:
    cp $90
    jr z, jr_002_4a06

    jr jr_002_4a0b

jr_002_4a06:
    call Call_002_4ab2
    jr jr_002_4a44

jr_002_4a0b:
    cp $a0
    jr z, jr_002_4a11

    jr jr_002_4a16

jr_002_4a11:
    call Call_002_4b06
    jr jr_002_4a44

jr_002_4a16:
    cp $b0
    jr z, jr_002_4a1c

    jr jr_002_4a21

jr_002_4a1c:
    call Call_002_4c23
    jr jr_002_4a44

jr_002_4a21:
    cp $c0
    jr z, jr_002_4a27

    jr jr_002_4a2c

jr_002_4a27:
    call Call_002_4c78
    jr jr_002_4a44

jr_002_4a2c:
    cp $d0
    jr z, jr_002_4a32

    jr jr_002_4a37

jr_002_4a32:
    call Call_002_4cd1
    jr jr_002_4a44

jr_002_4a37:
    cp $e0
    jr z, jr_002_4a41

    cp $f0
    jr z, jr_002_4a41

    jr jr_002_4a44

jr_002_4a41:
    call Call_002_4d2a

jr_002_4a44:
    dec bc
    ld a, b
    or c
    cp $00
    jp nz, Jump_002_49c5

    ldh a, [$ffa8]
    ld b, a
    ld a, [$cbe6]
    add b
    ld [$cbe6], a
    ld a, [$cbe7]
    adc $00
    ld [$cbe7], a
    pop de
    dec e
    jp nz, Jump_002_499a

    ld hl, $6caa
    ld a, $12
    call Call_000_1f96
    ld hl, $6c85
    ld a, $12
    call Call_000_1f96
    ret


Call_002_4a74:
    push hl
    push bc
    dec hl
    dec hl
    push de
    ldh a, [$ffa6]
    cp $03
    jp z, Jump_002_4a9e

    ld a, [hl]
    cp $49
    jr z, jr_002_4a8b

    inc a
    ld [hl], a

jr_002_4a87:
    pop de
    pop bc
    pop hl
    ret


jr_002_4a8b:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    ld hl, $b93a
    ld bc, $0001
    call Call_000_0a27
    pop hl
    jr jr_002_4a87

Jump_002_4a9e:
    push hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop hl
    jr jr_002_4a87

    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4ab2:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $98
    jr z, jr_002_4aef

    inc a
    ld [hl], a
    sub $90
    push hl
    ld hl, $4aa9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4adb

    ld a, [hl]
    jr jr_002_4ae8

jr_002_4adb:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $90
    push hl
    inc bc
    ld a, [bc]

jr_002_4ae8:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4aef:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_11ac
    pop de
    pop bc
    pop hl
    ret


Jump_002_4afe:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4b06:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $00
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $ac
    jr z, jr_002_4b43

    inc a
    ld [hl], a
    sub $a0
    push hl
    ld hl, $4b52
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4b2f

    ld a, [hl]
    jr jr_002_4b3c

jr_002_4b2f:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $a0
    push hl
    inc bc
    ld a, [bc]

jr_002_4b3c:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4b43:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0050
    call Call_000_11ac
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4b5f:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $60
    jr z, jr_002_4b9c

    inc a
    ld [hl], a
    sub $50
    push hl
    ld hl, $4bac
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4b88

    ld a, [hl]
    jr jr_002_4b95

jr_002_4b88:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $50
    push hl
    inc bc
    ld a, [bc]

jr_002_4b95:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4b98:
    pop de
    pop bc
    pop hl
    ret


jr_002_4b9c:
    push hl
    ld a, $5c
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0064
    call Call_000_11ac
    pop hl
    jr jr_002_4b98

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4bbd:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $01
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $88
    jr z, jr_002_4bfa

    inc a
    ld [hl], a
    sub $70
    push hl
    ld hl, $4c0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4be6

    ld a, [hl]
    jr jr_002_4bf3

jr_002_4be6:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $70
    push hl
    inc bc
    ld a, [bc]

jr_002_4bf3:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4bf6:
    pop de
    pop bc
    pop hl
    ret


jr_002_4bfa:
    push hl
    ld a, $82
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_11ac
    pop hl
    jr jr_002_4bf6

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4c23:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $b8
    jr z, jr_002_4c60

    inc a
    ld [hl], a
    sub $b0
    push hl
    ld hl, $4c6f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4c4c

    ld a, [hl]
    jr jr_002_4c59

jr_002_4c4c:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $b0
    push hl
    inc bc
    ld a, [bc]

jr_002_4c59:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4c60:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_11ac
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4c78:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $02
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $cc
    jr z, jr_002_4cb5

    inc a
    ld [hl], a
    sub $c0
    push hl
    ld hl, $4cc4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4ca1

    ld a, [hl]
    jr jr_002_4cae

jr_002_4ca1:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $c0
    push hl
    inc bc
    ld a, [bc]

jr_002_4cae:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4cb5:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $003c
    call Call_000_11ac
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4cd1:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $dc
    jr z, jr_002_4d0e

    inc a
    ld [hl], a
    sub $d0
    push hl
    ld hl, $4d1d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4cfa

    ld a, [hl]
    jr jr_002_4d07

jr_002_4cfa:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $d0
    push hl
    inc bc
    ld a, [bc]

jr_002_4d07:
    pop hl
    inc hl
    ld [hl-], a
    pop de
    pop bc
    pop hl
    ret


jr_002_4d0e:
    ld a, $11
    ld [hl+], a
    xor a
    ld [hl], a
    ld bc, $0078
    call Call_000_11ac
    pop de
    pop bc
    pop hl
    ret


    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4d2a:
    push hl
    push bc
    dec hl
    dec hl
    ldh a, [$ffa6]
    cp $03
    jp nz, Jump_002_4afe

    push de
    ld a, [hl]
    cp $f0
    jr z, jr_002_4d67

    inc a
    ld [hl], a
    sub $e0
    push hl
    ld hl, $4d77
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, h
    ld c, l
    ld a, [hl]
    and $08
    jr nz, jr_002_4d53

    ld a, [hl]
    jr jr_002_4d60

jr_002_4d53:
    ld a, $01
    ldh [$ffa8], a
    pop hl
    ld a, [hl]
    inc a
    ld [hl], a
    sub $e0
    push hl
    inc bc
    ld a, [bc]

jr_002_4d60:
    pop hl
    inc hl
    ld [hl-], a

jr_002_4d63:
    pop de
    pop bc
    pop hl
    ret


jr_002_4d67:
    push hl
    ld a, $ec
    ld [hl+], a
    ld a, $41
    ld [hl], a
    ld bc, $0078
    call Call_000_11ac
    pop hl
    jr jr_002_4d63

    ld b, b
    ld c, b
    ld b, b
    ld c, b
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    ld c, c
    ld b, c

Call_002_4d88:
    ld a, [$cbe2]
    ld l, a
    ld a, [$cbe3]
    ld h, a
    call Call_000_316d
    ld hl, $992d
    ld a, [$ccce]
    inc a
    ld [hl+], a
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_002_4dab:
    ld a, [$cbe6]
    ld l, a
    ld a, [$cbe7]
    ld h, a
    call Call_000_316d
    ld hl, $996e
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_002_4dc9:
    ld a, [$ccc7]
    ld l, a
    ld h, $00
    call Call_000_316d
    ld hl, $99ae
    ld a, [$cccf]
    inc a
    ld [hl+], a
    ld a, [$ccd0]
    inc a
    ld [hl+], a
    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


    push hl
    inc hl
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    cp $28
    jr nc, jr_002_4dfa

    cp $27
    jr c, jr_002_4e00

    ld a, [hl]
    cp $10
    jr nc, jr_002_4dfa

    jr jr_002_4e00

jr_002_4dfa:
    ld a, $0f
    ld [hl], a
    ld a, $27
    ld [bc], a

jr_002_4e00:
    ret


Call_002_4e01:
    ld a, [$cbe4]
    or a
    jr nz, jr_002_4e24

    ld a, [$cbe5]
    ld b, a
    or a
    ret z

    cp $18
    jr nc, jr_002_4e24

    ld a, [CurrentTime]
    cp $06
    jr c, jr_002_4e1e

    add b
    cp $1e
    jr nc, jr_002_4e24

    ret


jr_002_4e1e:
    add b
    cp $06
    jr nc, jr_002_4e24

    ret


jr_002_4e24:
    ld a, [$b93d]
    ld c, a
    ld a, [$b93e]
    ld b, a
    ld hl, CurrentMoneyL
    call Call_000_0a14
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ret


Call_002_4e3a:
    ld hl, $a000
    ld bc, $0c40

jr_002_4e40:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_002_4eb6

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_4e54

    call Call_002_4ef4
    jr jr_002_4eb6

jr_002_4e54:
    cp $50
    jr z, jr_002_4e5e

    cp $60
    jr z, jr_002_4e5e

    jr jr_002_4e63

jr_002_4e5e:
    call Call_002_4f09
    jr jr_002_4eb6

jr_002_4e63:
    cp $70
    jr z, jr_002_4e6d

    cp $80
    jr z, jr_002_4e6d

    jr jr_002_4e72

jr_002_4e6d:
    call Call_002_4f11
    jr jr_002_4eb6

jr_002_4e72:
    cp $90
    jr z, jr_002_4e78

    jr jr_002_4e7d

jr_002_4e78:
    call Call_002_4f1a
    jr jr_002_4eb6

jr_002_4e7d:
    cp $a0
    jr z, jr_002_4e83

    jr jr_002_4e88

jr_002_4e83:
    call Call_002_4f23
    jr jr_002_4eb6

jr_002_4e88:
    cp $b0
    jr z, jr_002_4e8e

    jr jr_002_4e93

jr_002_4e8e:
    call Call_002_4f2c
    jr jr_002_4eb6

jr_002_4e93:
    cp $c0
    jr z, jr_002_4e99

    jr jr_002_4e9e

jr_002_4e99:
    call Call_002_4f35
    jr jr_002_4eb6

jr_002_4e9e:
    cp $d0
    jr z, jr_002_4ea4

    jr jr_002_4ea9

jr_002_4ea4:
    call Call_002_4f3e
    jr jr_002_4eb6

jr_002_4ea9:
    cp $e0
    jr z, jr_002_4eb3

    cp $f0
    jr z, jr_002_4eb3

    jr jr_002_4eb6

jr_002_4eb3:
    call Call_002_4f47

jr_002_4eb6:
    call Call_002_4ec1
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_4e40

    ret


Call_002_4ec1:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_4ee2

    cp $03
    jr z, jr_002_4ee2

    cp $02
    jr z, jr_002_4ee2

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_4ef1

    ld a, [hl]
    cp $12
    jr nz, jr_002_4ef1

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_002_4ee2:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_4ef1

    ld a, [hl]
    cp $11
    jr nz, jr_002_4ef1

    inc a
    ld [hl], a

jr_002_4ef1:
    pop bc
    pop hl
    ret


Call_002_4ef4:
    ld a, [$b884]
    cp $03
    jr z, jr_002_4efc

    ret


jr_002_4efc:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4f09:
    ld a, [$b884]
    cp $01
    jr nz, jr_002_4f50

    ret


Call_002_4f11:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_4f50

    ret


Call_002_4f1a:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_4f50

    ret


Call_002_4f23:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_4f50

    ret


Call_002_4f2c:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_4f50

    ret


Call_002_4f35:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_4f50

    ret


Call_002_4f3e:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_4f50

    ret


Call_002_4f47:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_4f50

    ret


Jump_002_4f50:
jr_002_4f50:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_4f5b:
    ld a, [$b9d7]
    cp $5a
    jr nc, jr_002_4f6f

    cp $3c
    jr nc, jr_002_4f76

    cp $1e
    jr nc, jr_002_4f7c

    xor a
    ld [$ccc6], a
    ret


jr_002_4f6f:
    ld a, [$cbdc]
    ld [$ccc6], a
    ret


jr_002_4f76:
    ld a, $1d
    ld [$ccc6], a
    ret


jr_002_4f7c:
    ld a, $06
    ld [$ccc6], a
    ret


    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    di
    ld a, [$cb92]
    cp $ff
    call z, Call_000_0e5a
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c880], a
    ld [$c860], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c8c0], a
    ld [$c820], a
    ld hl, $6ebe
    ld c, $02
    ld de, $8800
    call Call_000_2f41
    ld hl, $785b
    ld c, $11
    ld de, $9000
    call Call_000_2f41
    ld hl, $66d8
    ld c, $17
    ld de, $8000
    call Call_000_2f41
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$cb56], a
    ld [$cb52], a
    ld [$cb76], a
    ld [$cb78], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb89], a
    ld [$cb4a], a
    ld [$c620], a
    ld [$c90d], a
    ld [$cb91], a
    ld [$cb85], a
    ld [$cb8e], a
    di
    call Call_002_5eb1
    xor a
    ld [$c780], a
    ld a, [$b911]
    ld [$cbe8], a
    ld a, $01
    ld [$cb81], a
    ld a, [$cbe8]
    cp $00
    jr z, jr_002_504c

    cp $01
    jr z, jr_002_5059

    ld hl, $7cc3
    ld c, $07
    ld de, $9800
    call Call_000_2f41
    jr jr_002_5064

jr_002_504c:
    ld hl, $7392
    ld c, $12
    ld de, $9800
    call Call_000_2f41
    jr jr_002_5064

jr_002_5059:
    ld hl, $7b22
    ld c, $07
    ld de, $9800
    call Call_000_2f41

jr_002_5064:
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $ff
    ld [$cb77], a
    call Call_000_120c
    call Call_002_655c
    call Call_002_63e3
    call $62bf
    call Call_000_0491
    ld a, $83
    ld [$c0a2], a
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
    call Call_000_3d18
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_000_0f40
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_002_50f5
    call Call_002_5175
    call Call_002_5757
    call Call_000_3c1d
    call Call_002_5c7e
    call Call_002_5250
    call Call_000_2b71
    call Call_000_362c
    call Call_002_64c1
    call Call_000_0f37
    ret


Call_002_50f5:
    ld a, [$b89c]
    cp $01
    jr z, jr_002_5108

    ld a, [$b8ea]
    cp $00
    jr z, jr_002_5108

    ld a, $01
    ld [$b88d], a

jr_002_5108:
    ld a, [$ba43]
    cp $02
    jr z, jr_002_5114

    ld a, $11
    ld [$b88d], a

jr_002_5114:
    ld a, [$b88d]
    or a
    ret z

    ld a, [$b88d]
    cp $11
    jr z, jr_002_5134

    ld a, [$c912]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    xor a
    ld [$c90f], a
    ld a, $01
    ld [$c912], a
    ret


jr_002_5134:
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$b88d], a
    ld a, $18
    ld [$c911], a
    ld a, $03
    ld [$c90f], a
    ld a, $01
    ld [$c912], a
    ret


    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop

Call_002_5175:
    ld a, [$cb73]
    or a
    ret z

    dec a
    ld [$cb73], a
    ld a, [$cb73]
    cp $4f
    jr z, jr_002_5197

    cp $3c
    jr nc, jr_002_519d

    cp $3b
    jr z, jr_002_51dc

    cp $2e
    jr nc, jr_002_5204

    cp $00
    jp z, Jump_002_5229

    ret


jr_002_5197:
    ld a, $01
    call Call_000_152f
    ret


jr_002_519d:
    ld a, [$c60b]
    cp $45
    jr z, jr_002_51b7

    cp $44
    jr z, jr_002_51b7

    cp $43
    jr z, jr_002_51b7

    dec a
    ld [$c60b], a
    ld a, [$c608]
    dec a
    ld [$c608], a

jr_002_51b7:
    ld a, [$cb73]
    sub $3c
    ld hl, $514d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, $c606
    call Call_000_0a27
    ret


jr_002_51dc:
    ld a, $53
    call Call_000_152f
    ld a, [$c60a]
    add $ff
    ld [$c60a], a
    ld a, [$c60b]
    add $f3
    ld [$c60b], a
    ld hl, $c606
    ld bc, $ffff
    call Call_000_0a27
    ld hl, $c608
    ld bc, $fff3
    call Call_000_0a27
    ret


jr_002_5204:
    ld a, [$cb73]
    sub $2e
    ld hl, $5165
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c60a]
    add b
    ld [$c60a], a
    ld a, b
    or a
    ret z

    ld a, b
    ld c, a
    ld b, $ff
    ld hl, $c606
    call Call_000_0a27
    ret


Jump_002_5229:
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $01
    ld [$c910], a
    ld a, $01
    ld [$c60d], a
    ld a, [$b883]
    ld [$b901], a
    ld a, [CurrentTime]
    ld [$b902], a
    ld a, [$b881]
    ld [$b903], a
    ret


Call_002_5250:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    call Call_002_56c2
    call Call_000_0ec6
    ld a, [$cb73]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr z, jr_002_527f

    ld hl, $5231
    ld a, $01
    call Call_000_1f96
    ret


jr_002_527f:
    ldh a, [$ff8a]
    and $02
    jr z, jr_002_5289

    call Call_002_53d2
    ret


jr_002_5289:
    ldh a, [$ff8b]
    and $08
    jr z, jr_002_5293

    call Call_000_1925
    ret


jr_002_5293:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_002_52ba

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_002_5300

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_002_5346

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_002_538c

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


Jump_002_52ba:
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld de, $0004
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_52fc

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5530

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5543

    ret


jr_002_52fc:
    call Call_002_557c
    ret


Jump_002_5300:
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld de, $00fc
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_5342

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5530

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5543

    ret


jr_002_5342:
    call Call_002_55ca
    ret


Jump_002_5346:
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld de, $fc00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_5388

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5556

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5569

    ret


jr_002_5388:
    call Call_002_55f8
    ret


Jump_002_538c:
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld de, $0400
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_53ce

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5556

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5569

    ret


jr_002_53ce:
    call Call_002_5664
    ret


Call_002_53d2:
    ld a, [$c603]
    and $01
    jr z, jr_002_53e5

    ld a, [$c605]
    cp $08
    jr nz, jr_002_53e5

    ld a, $34
    call Call_000_23d8

jr_002_53e5:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_002_53ff

    ldh a, [$ff8a]
    and $20
    jr nz, jr_002_5403

    ldh a, [$ff8a]
    and $10
    jr nz, jr_002_5407

    ldh a, [$ff8a]
    and $40
    jr nz, jr_002_540b

    jr jr_002_541a

jr_002_53ff:
    ld a, $00
    jr jr_002_540d

jr_002_5403:
    ld a, $01
    jr jr_002_540d

jr_002_5407:
    ld a, $02
    jr jr_002_540d

jr_002_540b:
    ld a, $03

jr_002_540d:
    ld [$c60d], a
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a

jr_002_541a:
    ld a, [$c60d]
    cp $00
    jp z, Jump_002_546d

    cp $01
    jp z, Jump_002_54ae

    cp $02
    jp z, Jump_002_54ef

    ld a, [$cb8b]
    or a
    jp nz, Jump_002_5300

    ld a, $02
    call Call_000_166a
    ld de, $00fc
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_5466

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5530

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5543

    ret


jr_002_5466:
    call Call_002_55ca
    call Call_002_55ca
    ret


Jump_002_546d:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_52ba

    ld a, $02
    call Call_000_166a
    ld de, $0004
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_54a7

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5530

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5543

    ret


jr_002_54a7:
    call Call_002_557c
    call Call_002_557c
    ret


Jump_002_54ae:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_5346

    ld a, $02
    call Call_000_166a
    ld de, $fc00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_54e8

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5556

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5569

    ret


jr_002_54e8:
    call Call_002_55f8
    call Call_002_55f8
    ret


Jump_002_54ef:
    ld a, [$cb8b]
    or a
    jp nz, Jump_002_538c

    ld a, $02
    call Call_000_166a
    ld de, $0400
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_002_5529

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_002_5556

    ld a, [$cb32]
    and $01
    jp z, Jump_002_5569

    ret


jr_002_5529:
    call Call_002_5664
    call Call_002_5664
    ret


Jump_002_5530:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_151d
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_55f8
    ret


Jump_002_5543:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1526
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_5664
    ret


Jump_002_5556:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_55ca
    ret


Jump_002_5569:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_002_557c
    ret


Call_002_557c:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $83
    jr nc, jr_002_55a4

    ld a, [$c608]
    cp $5c
    jr nc, jr_002_5590

    jr jr_002_559d

jr_002_5590:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_002_5598:
    ld hl, $c608
    inc [hl]
    ret


jr_002_559d:
    ld hl, $c60b
    inc [hl]
    jr jr_002_5598

    ret


jr_002_55a4:
    ld a, [$b8a0]
    cp $03
    jr z, jr_002_55bf

    ld a, $18
    ld [$c911], a
    xor a
    ld [$c90f], a
    ld a, [$cb8b]
    or a
    ret z

    ld a, $01
    ld [$b8e1], a
    ret


jr_002_55bf:
    ld a, $44
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Call_002_55ca:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_002_55e4

    ld a, [$c608]
    cp $08
    jr c, jr_002_55f1

    jr jr_002_55f1

jr_002_55e4:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_002_55ec:
    ld hl, $c608
    dec [hl]
    ret


jr_002_55f1:
    ld hl, $c60b
    dec [hl]
    jr jr_002_55ec

    ret


Call_002_55f8:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_5636

    cp $01
    jr z, jr_002_563f

    ld a, [$c606]
    cp $b9
    jr nc, jr_002_562f

    ld a, [$c607]
    cp $00
    jr nz, jr_002_5622

    ld a, [$c606]
    cp $59
    jr c, jr_002_562f

jr_002_5622:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_002_562a:
    ld hl, $c606
    dec [hl]
    ret


jr_002_562f:
    ld hl, $c60a
    dec [hl]
    jr jr_002_562a

    ret


jr_002_5636:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_002_563f:
    ld a, [$c606]
    cp $99
    jr nc, jr_002_565d

    ld a, [$c607]
    cp $00
    jr nz, jr_002_5654

    ld a, [$c606]
    cp $59
    jr c, jr_002_565d

jr_002_5654:
    ld hl, $ff93
    dec [hl]

jr_002_5658:
    ld hl, $c606
    dec [hl]
    ret


jr_002_565d:
    ld hl, $c60a
    dec [hl]
    jr jr_002_5658

    ret


Call_002_5664:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cbe8]
    cp $00
    jr z, jr_002_569b

    cp $01
    jr z, jr_002_56a4

    ld a, [$c606]
    cp $b8
    jr nc, jr_002_5694

    ld a, [$c606]
    cp $58
    jr c, jr_002_5694

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_002_568f:
    ld hl, $c606
    inc [hl]
    ret


jr_002_5694:
    ld hl, $c60a
    inc [hl]
    jr jr_002_568f

    ret


jr_002_569b:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_002_56a4:
    ld a, [$c606]
    cp $98
    jr nc, jr_002_56bb

    ld a, [$c606]
    cp $58
    jr c, jr_002_56bb

    ld hl, $ff93
    inc [hl]

jr_002_56b6:
    ld hl, $c606
    inc [hl]
    ret


jr_002_56bb:
    ld hl, $c60a
    inc [hl]
    jr jr_002_56b6

    ret


Call_002_56c2:
    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_002_56d1

    pop hl
    ret


jr_002_56d1:
    ld a, [$c90f]
    cp $02
    jr z, jr_002_570f

    ld a, [$c90f]
    cp $03
    jr z, jr_002_572e

    cp $ff
    jr z, jr_002_5743

    ld a, [$c90f]
    or a
    jr z, jr_002_56fa

    ld a, $1b
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    pop hl
    ret


jr_002_56fa:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $00
    ld [$c910], a
    xor a
    ld [$c911], a
    pop hl
    ret


jr_002_570f:
    pop hl
    ld a, $22
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    xor a
    ld [$c911], a
    ld a, [$cb8b]
    or a
    ret z

    ld a, $01
    ld [$b8e1], a
    ret


jr_002_572e:
    ld a, $0d
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    pop hl
    ret


jr_002_5743:
    ld a, $00
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $03
    ld [$c910], a
    xor a
    ld [$c911], a
    ret


Call_002_5757:
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb8b]
    or a
    ret nz

    ld a, [$c90e]
    or a
    ret z

    ld a, [$cb34]
    and $02
    ret z

    ld a, [$cb56]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$cb33]
    cp $0a
    jr z, jr_002_57b5

    cp $02
    jr z, jr_002_57ce

    cp $03
    jr z, jr_002_57d9

    cp $04
    jp z, Jump_002_582b

    ret z

    cp $05
    jr z, jr_002_57c0

    cp $06
    jr z, jr_002_57fa

    cp $07
    jr z, jr_002_57fa

    cp $08
    jr z, jr_002_57fa

    cp $09
    jr z, jr_002_5805

    cp $0b
    jp z, Jump_002_5845

    cp $99
    jp z, Jump_002_585a

    ret


    ld a, $18
    ld [$c911], a
    ld a, $ff
    ld [$c90f], a
    ret


jr_002_57b5:
    ld a, $05
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_002_57c0:
    ld a, $01
    ld [$c911], a
    ld a, $01
    ld [$c90f], a
    call Call_000_0f81
    ret


jr_002_57ce:
    ld a, $07
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_002_57d9:
    ld a, [$b885]
    inc a
    ld l, a
    ld h, $00
    call Call_000_316d
    ld a, [$ccd0]
    ld [$cbec], a
    ld a, [$ccd1]
    ld [$cbed], a
    ld a, $1d
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_002_57fa:
    ld a, $08
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_002_5805:
    ld a, [$b8ff]
    or a
    jr nz, jr_002_5820

    ld a, $01
    ld [$b8ff], a
    ld hl, CurrentMoneyL
    ld bc, $03e8
    call Call_000_0a14
    call Call_000_10a0
    ld a, $09
    jr jr_002_5822

jr_002_5820:
    ld a, $0a

jr_002_5822:
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_002_582b:
    ld a, $00
    call Call_000_166a
    ld a, [$cb78]
    or a
    ret nz

    ld a, $80
    ld [$cb76], a
    ld a, $01
    ld [$cb78], a
    ld a, $10
    ld [$c912], a
    ret


Jump_002_5845:
    ld a, [$b904]
    or a
    jr nz, jr_002_584f

    ld a, $45
    jr jr_002_5851

jr_002_584f:
    ld a, $46

jr_002_5851:
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_002_585a:
    ld a, [$c60d]
    cp $02
    jr z, jr_002_586e

    cp $00
    jr z, jr_002_587e

    cp $03
    jr z, jr_002_588e

    cp $01
    jr z, jr_002_589e

    ret


jr_002_586e:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_153c
    ld a, $31
    call Call_000_3e80
    ret


jr_002_587e:
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_153c
    ld a, $31
    call Call_000_3e80
    ret


jr_002_588e:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_153c
    ld a, $31
    call Call_000_3e80
    ret


jr_002_589e:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_153c
    ld a, $31
    call Call_000_3e80
    ret


    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

Call_002_592e:
    call Call_002_5a54
    ld a, [$b883]
    ld [$b88b], a
    ld a, [$b884]
    ld [$b88a], a
    ld a, [$b883]
    inc a
    ld [$b88b], a
    cp $1e
    jr nz, jr_002_5955

    xor a
    ld [$b88b], a
    ld a, [$b88a]
    inc a
    and $03
    ld [$b88a], a

jr_002_5955:
    call Call_002_5a0d
    ld a, [$b8a0]
    cp $03
    jr nz, jr_002_5965

    ld a, $00
    ld [$b89f], a
    ret


jr_002_5965:
    ld a, [$b88a]
    cp $01
    jr nz, jr_002_597c

    ld a, [$b8a2]
    ld b, a
    ld a, [$b88b]
    cp b
    jr nz, jr_002_597c

    ld a, $00
    ld [$b89f], a
    ret


jr_002_597c:
    ld a, [$b8a2]
    ld b, a
    ld a, [$b883]
    cp b
    jr nz, jr_002_598c

    ld a, $00
    ld [$b89f], a
    ret


jr_002_598c:
    ld a, [$b88a]
    cp $00
    jp z, Jump_002_59b3

    cp $01
    jp z, Jump_002_59c8

    cp $02
    jp z, Jump_002_59f8

    call Call_000_0890
    ldh a, [$ff9d]
    and $1f
    ld hl, $590e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_59b3:
    call Call_000_0890
    ldh a, [$ff9d]
    and $1f
    ld hl, $58ae
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_59c8:
    ld a, [$b8a1]
    ld b, a
    ld a, [$b88b]
    cp b
    jr nz, jr_002_59e3

    ld a, $03
    ld [$b89f], a
    ld a, [$b883]
    ld [$ba4d], a
    ld a, $80
    ld [$b8a1], a
    ret


jr_002_59e3:
    call Call_000_0890
    ldh a, [$ff9d]
    and $1f
    ld hl, $58ce
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Jump_002_59f8:
    call Call_000_0890
    ldh a, [$ff9d]
    and $1f
    ld hl, $58ee
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b89f], a
    ret


Call_002_5a0d:
    ld a, [$b893]
    or a
    jr nz, jr_002_5a4d

    ld a, [$b88a]
    cp $01
    jr z, jr_002_5a29

    ld a, [$b88a]
    cp $02
    jr z, jr_002_5a31

    ld a, [$b88a]
    cp $03
    jr z, jr_002_5a39

    ret


jr_002_5a29:
    ld a, [$b88b]
    cp $13
    jr z, jr_002_5a46

    ret


jr_002_5a31:
    ld a, [$b88b]
    cp $09
    jr z, jr_002_5a46

    ret


jr_002_5a39:
    ld a, [$b885]
    or a
    ret nz

    ld a, [$b88b]
    cp $13
    jr z, jr_002_5a46

    ret


jr_002_5a46:
    ld a, $00
    ld [$b89f], a
    pop hl
    ret


jr_002_5a4d:
    ld a, $00
    ld [$b8a0], a
    pop hl
    ret


Call_002_5a54:
    ld a, [$b884]
    or a
    ret nz

    ld a, [$b883]
    cp $1b
    call z, Call_002_5a6b
    ld a, [$b883]
    cp $1c
    call z, Call_002_5a81
    ret


    ret


Call_002_5a6b:
    ld a, [$b885]
    or a
    ret nz

    call Call_000_0890
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $0a
    call Call_000_06ce
    ld [$b8a2], a
    ret


Call_002_5a81:
    call Call_000_0890
    ldh a, [$ff9d]
    ld l, a
    ld h, $00
    ld a, $1e
    call Call_000_06ce
    ld b, a
    ld a, [$b8a2]
    cp b
    jr nz, jr_002_5a96

    inc b

jr_002_5a96:
    ld a, b
    ld [$b8a1], a
    ld [$ba4c], a
    ret


    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    jr nz, jr_002_5b10

    ld hl, $2441
    ld b, d
    dec h
    ld b, e
    jr nc, jr_002_5b28

    ld sp, $3451
    ld d, d
    dec [hl]
    ld d, e
    ld [hl+], a
    ld b, b
    inc hl
    ld b, c
    inc h
    ld b, d
    dec h
    ld b, e
    ld [hl-], a
    ld d, b
    inc sp
    ld d, c
    inc [hl]
    ld d, d
    dec [hl]
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b

jr_002_5b10:
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b

jr_002_5b28:
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld b, d
    ld b, b
    ld b, e
    ld b, c
    ld h, $42
    daa
    ld b, e
    ld d, d
    ld d, b
    ld d, e
    ld d, c
    ld [hl], $52
    scf
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    ld h, b
    ld b, b
    ld h, c
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, a
    ld b, e
    ld [hl], b
    ld d, b
    ld [hl], c
    ld d, c
    ld d, [hl]
    ld d, d
    ld d, a
    ld d, e
    nop
    ld b, b
    ld bc, $0241
    ld b, d
    inc bc
    ld b, e
    db $10
    ld d, b
    ld de, $1251
    ld d, d
    inc de
    ld d, e
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    dec b
    ld b, e
    db $10
    ld d, b
    ld de, $1451
    ld d, d
    dec d
    ld d, e
    nop
    ld b, b
    ld bc, $0641
    ld b, d
    rlca
    ld b, e
    db $10
    ld d, b
    ld de, $1651
    ld d, d
    rla
    ld d, e
    ld h, d
    ld b, b
    ld h, e
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], d
    ld d, b
    ld [hl], e
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld h, h
    ld b, b
    ld h, l
    ld b, c
    ld h, [hl]
    ld b, d
    ld h, a
    ld b, e
    ld [hl], h
    ld d, b
    ld [hl], l
    ld d, c
    halt
    ld d, d
    ld [hl], a
    ld d, e
    ld e, b
    ld b, b
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_002_5c78

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_002_5c70

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr jr_002_5c98

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    jr z, jr_002_5c90

    add hl, hl
    ld b, c
    ld a, [hl+]
    ld b, d
    dec hl
    ld b, e
    jr c, @+$52

    add hl, sp
    ld d, c
    ld a, [hl-]
    ld d, d
    dec sp
    ld d, e
    ld [$0940], sp
    ld b, c
    ld a, [bc]
    ld b, d
    dec bc
    ld b, e
    jr @+$52

    add hl, de
    ld d, c
    ld a, [de]
    ld d, d
    dec de
    ld d, e
    ld e, b
    ld b, b

jr_002_5c70:
    ld e, c
    ld b, c
    ld e, d
    ld b, d
    ld e, e
    ld b, e
    ld l, b
    ld d, b

jr_002_5c78:
    ld l, c
    ld d, c
    ld l, d
    ld d, d
    ld l, e
    ld d, e

Call_002_5c7e:
    ld a, [$cb76]
    or a
    ret z

    ld a, [$cb78]
    or a
    jr nz, jr_002_5c96

    ld a, $ff
    ld [$cb77], a
    ld a, $00

jr_002_5c90:
    ld [$cb76], a
    jp Jump_002_5d1e


jr_002_5c96:
    ld a, $10

jr_002_5c98:
    ld [$c912], a
    ld a, [$b8a0]
    cp $03
    jr nz, jr_002_5ca7

    ld hl, $5c1e
    jr jr_002_5cd1

jr_002_5ca7:
    ld a, [$b89f]
    cp $00
    jr nz, jr_002_5cb3

    ld hl, $5a9e
    jr jr_002_5cd1

jr_002_5cb3:
    cp $01
    jr nz, jr_002_5cbc

    ld hl, $5afe
    jr jr_002_5cd1

jr_002_5cbc:
    cp $02
    jr nz, jr_002_5cc5

    ld hl, $5b5e
    jr jr_002_5cd1

jr_002_5cc5:
    cp $04
    jr nz, jr_002_5cce

    ld hl, $5bbe
    jr jr_002_5cd1

jr_002_5cce:
    ld hl, $5c1e

jr_002_5cd1:
    ld a, [$cb77]
    ld b, a
    ld a, [$cb76]
    add b
    ld [$cb76], a
    cp $7f
    jr z, jr_002_5cf1

    cp $60
    jr z, jr_002_5cf3

    cp $50
    jr z, jr_002_5cf9

    cp $40
    jr z, jr_002_5d08

    cp $38
    jr z, jr_002_5d13

    ret


jr_002_5cf1:
    jr jr_002_5d27

jr_002_5cf3:
    ld bc, $0010
    add hl, bc
    jr jr_002_5d27

jr_002_5cf9:
    xor a
    ld [$c912], a
    push hl
    call Call_002_5d5e
    pop hl
    ld bc, $0020
    add hl, bc
    jr jr_002_5d27

jr_002_5d08:
    ld a, $ff
    ld [$cb77], a
    ld bc, $0030
    add hl, bc
    jr jr_002_5d27

jr_002_5d13:
    ld a, $01
    ld [$cb77], a
    ld bc, $0040
    add hl, bc
    jr jr_002_5d27

Jump_002_5d1e:
    xor a
    ld [$cb78], a
    ld hl, $5aee
    jr jr_002_5d27

jr_002_5d27:
    ld d, h
    ld e, l
    ld c, $08

jr_002_5d2b:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9000
    add hl, bc
    ld b, h
    ld c, l
    dec de
    ld a, [de]
    push de
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $740c
    add hl, de
    ld e, c
    ld d, b
    ld b, $10

jr_002_5d4d:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_5d4d

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_002_5d2b

    ret


Call_002_5d5e:
    ld a, [$b8a0]
    cp $03
    jp z, Jump_002_5dd5

    ld a, [$b88a]
    cp $00
    jr z, jr_002_5d88

    cp $01
    jr z, jr_002_5d9b

    cp $02
    jr z, jr_002_5dc2

    ld a, [$b89f]
    cp $00
    jr z, jr_002_5d82

    ld a, $13
    call Call_000_3e80
    ret


jr_002_5d82:
    ld a, $12
    call Call_000_3e80
    ret


jr_002_5d88:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5d95

    ld a, $0d
    call Call_000_3e80
    ret


jr_002_5d95:
    ld a, $0c
    call Call_000_3e80
    ret


jr_002_5d9b:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5db0

    cp $03
    jr z, jr_002_5db6

    cp $04
    jr z, jr_002_5dbc

    ld a, $0f
    call Call_000_3e80
    ret


jr_002_5db0:
    ld a, $0e
    call Call_000_3e80
    ret


jr_002_5db6:
    ld a, $15
    call Call_000_3e80
    ret


jr_002_5dbc:
    ld a, $14
    call Call_000_3e80
    ret


jr_002_5dc2:
    ld a, [$b89f]
    cp $00
    jr z, jr_002_5dcf

    ld a, $11
    call Call_000_3e80
    ret


jr_002_5dcf:
    ld a, $10
    call Call_000_3e80
    ret


Jump_002_5dd5:
    ld a, $47
    call Call_000_3e80
    ret


    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    nop

Call_002_5dee:
    ldh a, [$ff9c]
    and $0f
    ld hl, $5ddb
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, jr_002_5e15

    cp $01
    jr z, jr_002_5e25

    cp $02
    jr z, jr_002_5e35

    cp $03
    jr z, jr_002_5e45

    cp $04
    jr z, jr_002_5e55

    cp $05
    jr z, jr_002_5e65

    ret


Jump_002_5e15:
jr_002_5e15:
    ld a, [$b8c5]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8c5], a
    ld a, $00
    ld [$cb8d], a
    ret


Jump_002_5e25:
jr_002_5e25:
    ld a, [$b8ca]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8ca], a
    ld a, $01
    ld [$cb8d], a
    ret


Jump_002_5e35:
jr_002_5e35:
    ld a, [$b8c6]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8c6], a
    ld a, $02
    ld [$cb8d], a
    ret


Jump_002_5e45:
jr_002_5e45:
    ld a, [$b8cb]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8cb], a
    ld a, $03
    ld [$cb8d], a
    ret


Jump_002_5e55:
jr_002_5e55:
    ld a, [$b8c7]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8c7], a
    ld a, $04
    ld [$cb8d], a
    ret


Jump_002_5e65:
jr_002_5e65:
    ld a, [$b8cc]
    or a
    jr z, jr_002_5e75

    dec a
    ld [$b8cc], a
    ld a, $05
    ld [$cb8d], a
    ret


jr_002_5e75:
    ld a, [$b8c5]
    or a
    jr z, jr_002_5e7e

    jp Jump_002_5e15


jr_002_5e7e:
    ld a, [$b8ca]
    or a
    jr z, jr_002_5e87

    jp Jump_002_5e25


jr_002_5e87:
    ld a, [$b8c6]
    or a
    jr z, jr_002_5e90

    jp Jump_002_5e35


jr_002_5e90:
    ld a, [$b8cb]
    or a
    jr z, jr_002_5e99

    jp Jump_002_5e45


jr_002_5e99:
    ld a, [$b8c7]
    or a
    jr z, jr_002_5ea2

    jp Jump_002_5e55


jr_002_5ea2:
    ld a, [$b8cc]
    or a
    jr z, jr_002_5eab

    jp Jump_002_5e65


jr_002_5eab:
    ld a, $ff
    ld [$cb8d], a
    ret


Call_002_5eb1:
    call Call_002_624e
    ld a, [$cb92]
    or a
    jr nz, jr_002_5ecb

    ld a, $01
    ld [$cb92], a
    ld a, [$b900]
    cp $01
    jr nz, jr_002_5ed8

    ld a, $01
    ld [$c910], a

jr_002_5ecb:
    ld a, [$c910]
    cp $01
    jr nz, jr_002_5ed8

    call Call_002_5dee
    call $65ce

jr_002_5ed8:
    ld a, [$b911]
    cp $00
    jp z, Jump_002_5fa4

    cp $01
    jp z, Jump_002_6060

    ld a, [$c910]
    or a
    jp z, Jump_002_5f8b

    cp $01
    jr z, jr_002_5f15

    cp $03
    jr z, jr_002_5f4d

    cp $04
    jr z, jr_002_5f63

    ld hl, $613e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ld a, $60
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_5f15:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_5f4d

    ld hl, $612e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_5f85

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_5f7c

    ld a, $e6
    ld [$c912], a
    ld a, $8e
    call Call_000_152f
    call Call_000_1b00
    ret


jr_002_5f4d:
    ld hl, $612e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_5f63:
    ld hl, $615e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $11
    ldh [$ff91], a
    ld a, $50
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_5f7c:
    ld a, $b5
    call Call_000_152f
    call Call_000_1b00
    ret


jr_002_5f85:
    ld a, $20
    call Call_000_152f
    ret


Jump_002_5f8b:
    ld hl, $611e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $00
    call Call_000_166a
    ld a, $24
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ret


Jump_002_5fa4:
    ld a, [$c910]
    or a
    jp z, Jump_002_6047

    cp $01
    jr z, jr_002_5fd4

    cp $03
    jr z, jr_002_600c

    cp $04
    jr z, jr_002_6022

    ld hl, $61de
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $11
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_5fd4:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_600c

    ld hl, $61ce
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_6041

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_6038

    ld a, $e6
    ld [$c912], a
    ld a, $8e
    call Call_000_152f
    call Call_000_1b00
    ret


jr_002_600c:
    ld hl, $61ce
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_6022:
    ld hl, $61fe
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_6038:
    ld a, $b5
    call Call_000_152f
    call Call_000_1b00
    ret


jr_002_6041:
    ld a, $20
    call Call_000_152f
    ret


Jump_002_6047:
    ld hl, $61be
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $00
    call Call_000_166a
    ld a, $24
    ldh [$ff91], a
    ld a, $00
    ldh [$ff93], a
    ret


Jump_002_6060:
    ld a, [$c910]
    or a
    jp z, Jump_002_6105

    cp $01
    jr z, jr_002_6091

    cp $03
    jr z, jr_002_60cb

    cp $04
    jr z, jr_002_60e3

    ld hl, $618e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $11
    ldh [$ff91], a
    ld a, $30
    ldh [$ff93], a
    ld a, $1e
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_6091:
    ld a, [$cb8d]
    cp $ff
    jr z, jr_002_60cb

    ld hl, $617e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_002_60ff

    ld a, [$cb8d]
    cp $01
    jr nz, jr_002_60f9

    ld a, $e6
    ld [$c912], a
    ld a, $8e
    call Call_000_152f
    call Call_000_1b00
    ret


jr_002_60cb:
    ld hl, $617e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_60e3:
    ld hl, $61ae
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $00
    call Call_000_166a
    ret


jr_002_60f9:
    ld a, $b5
    call Call_000_152f
    ret


jr_002_60ff:
    ld a, $20
    call Call_000_152f
    ret


Jump_002_6105:
    ld hl, $616e
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $00
    call Call_000_166a
    ld a, $24
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0088], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$00f6], sp
    ld c, l
    nop
    adc [hl]
    ld d, l
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$00a8], sp
    ld l, l
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    ld b, b
    nop
    ld d, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0088], sp
    ld l, l
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    dec a
    nop
    ld b, b
    ld b, l
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0058], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0080], sp
    ld b, b
    nop
    ld a, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0086], sp
    ld l, l
    nop
    ld a, [hl]
    ld h, h
    nop
    inc bc
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0048], sp
    dec a
    nop
    ld b, b
    ld b, l
    nop
    inc bc
    ld bc, $0100
    dec b
    ld [bc], a
    nop
    nop
    ld [$002d], sp
    add b
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
    nop
    nop
    nop
    ld bc, $2205
    nop
    nop
    ld [$002d], sp
    add b
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
    nop
    nop
    nop

Call_002_624e:
    ld a, [$b8e1]
    or a
    jr nz, jr_002_628a

    ld a, [$cb8b]
    or a
    jr nz, jr_002_628a

    ld a, [$b8db]
    or a
    jr z, jr_002_6275

    ld hl, $622e
    ld de, $c7a0
    ld b, $20
    call Call_000_210f
    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ret


jr_002_6275:
    ld hl, $620e
    ld de, $c7a0
    ld b, $20
    call Call_000_210f
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_1634
    ret


jr_002_628a:
    xor a
    ld [$c7a0], a
    ret


    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0058], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $020b
    nop
    nop
    ld [$0068], sp
    ld d, a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$c820]
    call nz, $6374
    ld a, [$b911]
    cp $00
    jr z, jr_002_62fa

    cp $01
    jr z, jr_002_631f

    ld hl, $62af
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_002_62fa:
    ld hl, $628f
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    ld a, $99
    ld [$d8d8], a
    ld [$d8b6], a
    ld a, $03
    ld [$d8d9], a
    ld [$d8b7], a
    ret


jr_002_631f:
    ld hl, $629f
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    ld a, $99
    ld [$d8d6], a
    ld [$d8b4], a
    ld a, $03
    ld [$d8d7], a
    ld [$d8b5], a
    ret


    ld bc, $0209
    nop
    nop
    ld [$0058], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0078], sp
    and e
    nop
    ld d, b
    xor h
    nop
    inc bc
    ld bc, $0100
    add hl, bc
    ld [bc], a
    nop
    nop
    ld [$0088], sp
    and e
    nop
    add b
    xor h
    nop
    inc bc
    ld bc, $fa00
    sbc d
    cp b
    or a
    ret z

    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [$b883]
    cp b
    ret nz

    ld a, [$b911]
    cp $00
    jr z, jr_002_63ab

    cp $01
    jr z, jr_002_63c7

    ld hl, $6364
    ld de, $c820
    ld b, $10
    call Call_000_210f
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_157d
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_002_63ab:
    ld hl, $6344
    ld de, $c820
    ld b, $10
    call Call_000_210f
    ld a, [$c82d]
    ld b, a
    add $08
    call Call_000_157d
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


jr_002_63c7:
    ld hl, $6354
    ld de, $c820
    ld b, $10
    call Call_000_210f
    ld a, [$c82d]
    ld b, a
    add $04
    call Call_000_157d
    xor a
    ld [$c831], a
    ld [$c832], a
    ret


Call_002_63e3:
    ld a, [$b904]
    or a
    ret z

    cp $01
    jp z, Jump_002_64af

    cp $02
    jp z, Jump_002_649e

    cp $03
    jp z, Jump_002_648d

    cp $04
    jp z, Jump_002_647c

    cp $05
    jp z, Jump_002_646b

    cp $06
    jr z, jr_002_645a

    cp $07
    jr z, jr_002_6449

    cp $08
    jr z, jr_002_6438

    cp $09
    jr z, jr_002_6427

    cp $0a
    jr nc, jr_002_6416

    ret


jr_002_6416:
    ld de, $75dc
    ld hl, $8db0
    ld c, $10

jr_002_641e:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_641e

jr_002_6427:
    ld de, $75cc
    ld hl, $8da0
    ld c, $10

jr_002_642f:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_642f

jr_002_6438:
    ld de, $75dc
    ld hl, $97b0
    ld c, $10

jr_002_6440:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6440

jr_002_6449:
    ld de, $75cc
    ld hl, $97a0
    ld c, $10

jr_002_6451:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6451

jr_002_645a:
    ld de, $75dc
    ld hl, $96b0
    ld c, $10

jr_002_6462:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6462

Jump_002_646b:
    ld de, $75cc
    ld hl, $96a0
    ld c, $10

jr_002_6473:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6473

Jump_002_647c:
    ld de, $75dc
    ld hl, $95b0
    ld c, $10

jr_002_6484:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6484

Jump_002_648d:
    ld de, $75cc
    ld hl, $95a0
    ld c, $10

jr_002_6495:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_6495

Jump_002_649e:
    ld de, $74dc
    ld hl, $94b0
    ld c, $10

jr_002_64a6:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_64a6

Jump_002_64af:
    ld de, $74cc
    ld hl, $94a0
    ld c, $10

jr_002_64b7:
    call Call_000_0d2b
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_64b7

    ret


Call_002_64c1:
    ld a, [$cb8e]
    or a
    jr nz, jr_002_64f8

    ld a, [$b885]
    or a
    ret nz

    ld a, [$b884]
    cp $01
    ret nz

    ld a, [CurrentTime]
    cp $06
    ret nz

    ld a, [$b881]
    cp $00
    ret nz

    ld a, [$b880]
    cp $00
    ret nz

    ld a, [$b883]
    ld b, a
    ld a, [$b8a2]
    cp b
    ret nz

    ld a, $b4
    ld [$cb8e], a
    ld a, $80
    ld [$b8a2], a
    ret


jr_002_64f8:
    ld a, [$cb8e]
    and $02
    jr z, jr_002_6537

    ldh a, [$ff93]
    inc a
    inc a
    ldh [$ff93], a
    ld hl, $c606
    ld bc, $0002
    call Call_000_0a27
    ld a, [$c60a]
    inc a
    inc a
    ld [$c60a], a
    ld hl, $c7a6
    ld bc, $0002
    call Call_000_0a27
    ld hl, $cb8e
    dec [hl]
    ld a, $01
    ld [$ba08], a
    ld [$ba09], a
    ld [$ba0a], a
    ld a, [$ba0d]
    set 0, a
    ld [$ba0d], a
    ret


jr_002_6537:
    ldh a, [$ff93]
    dec a
    dec a
    ldh [$ff93], a
    ld a, [$c60a]
    dec a
    dec a
    ld [$c60a], a
    ld hl, $c606
    ld bc, $fffe
    call Call_000_0a27
    ld hl, $c7a6
    ld bc, $fffe
    call Call_000_0a27
    ld hl, $cb8e
    dec [hl]
    ret


Call_002_655c:
    ld hl, $9c00
    ld de, $656a
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


    ld sp, hl
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ei
    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    rst $38
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp hl


    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $cd
    ld b, c
    ld h, a
    call Call_002_6b19
    xor a
    ld [$b900], a
    ld hl, CurrentMoneyL
    ld a, [$b8fc]
    ld c, a
    ld a, [$b8fd]
    ld b, a
    call Call_000_0a14
    ld hl, CurrentMoneyL
    ld a, [$b93d]
    ld c, a
    ld a, [$b93e]
    ld b, a
    call Call_000_0a14
    call Call_000_10a0
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, [$b884]
    ld b, a
    ld a, [$b883]
    or b
    jr z, jr_002_6626

    ld hl, $6373
    ld a, $03
    call Call_000_1f96
    ld hl, $6cf6
    ld a, $04
    call Call_000_1f96
    ld hl, $61d6
    ld a, $0f
    call Call_000_1f96

jr_002_6626:
    call Call_002_6b9a
    ld a, [$b89f]
    ld [$b8a0], a
    cp $00
    jr nz, jr_002_6648

    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jr jr_002_66af

jr_002_6648:
    cp $01
    jp nz, Jump_002_6663

    ld a, $00
    ld [$b924], a
    ld a, $63
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_66af


Jump_002_6663:
    cp $02
    jp nz, Jump_002_667e

    ld a, $71
    ld [$b924], a
    ld a, $11
    ld [$b925], a
    ld a, [$cb5c]
    ld [$b926], a
    ld [$b927], a
    jp Jump_002_66af


Jump_002_667e:
    cp $03
    jp nz, Jump_002_669a

    ld a, $30
    ld [$b924], a
    ld a, $01
    ld [$b925], a
    ld a, $52
    ld [$b926], a
    ld a, $02
    ld [$b927], a
    jp Jump_002_66af


Jump_002_669a:
    ld a, $b1
    ld [$b924], a
    ld a, $21
    ld [$b925], a
    ld a, $94
    ld [$b926], a
    ld a, [$cb5c]
    ld [$b927], a

Jump_002_66af:
jr_002_66af:
    ld a, [$b8a0]
    cp $03
    call z, Call_002_6af1
    call Call_002_592e
    ld hl, $a000
    ld bc, $0c40

jr_002_66c0:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and $40
    jr z, jr_002_6736

    ld a, e
    and $f0
    cp $40
    jr nz, jr_002_66d4

    call Call_002_67db
    jr jr_002_6736

jr_002_66d4:
    cp $50
    jr z, jr_002_66de

    cp $60
    jr z, jr_002_66de

    jr jr_002_66e3

jr_002_66de:
    call Call_002_67fe
    jr jr_002_6736

jr_002_66e3:
    cp $70
    jr z, jr_002_66ed

    cp $80
    jr z, jr_002_66ed

    jr jr_002_66f2

jr_002_66ed:
    call Call_002_68f4
    jr jr_002_6736

jr_002_66f2:
    cp $90
    jr z, jr_002_66f8

    jr jr_002_66fd

jr_002_66f8:
    call Call_002_695f
    jr jr_002_6736

jr_002_66fd:
    cp $a0
    jr z, jr_002_6703

    jr jr_002_6708

jr_002_6703:
    call Call_002_69a2
    jr jr_002_6736

jr_002_6708:
    cp $b0
    jr z, jr_002_670e

    jr jr_002_6713

jr_002_670e:
    call Call_002_69e5
    jr jr_002_6736

jr_002_6713:
    cp $c0
    jr z, jr_002_6719

    jr jr_002_671e

jr_002_6719:
    call Call_002_6a28
    jr jr_002_6736

jr_002_671e:
    cp $d0
    jr z, jr_002_6724

    jr jr_002_6729

jr_002_6724:
    call Call_002_6a6b
    jr jr_002_6736

jr_002_6729:
    cp $e0
    jr z, jr_002_6733

    cp $f0
    jr z, jr_002_6733

    jr jr_002_6736

jr_002_6733:
    call Call_002_6aae

jr_002_6736:
    call Call_002_67a8
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_66c0

    ret


    ld a, [$b900]
    or a
    jr nz, jr_002_6794

    ld a, [$b902]
    cp $06
    jr c, jr_002_6794

    xor a
    ld [$b880], a
    ld [$b881], a
    ld a, $06
    ld [CurrentTime], a
    call Call_000_0491
    ld a, [$b883]
    inc a
    ld [$b883], a
    cp $1e
    jr nc, jr_002_676c

    call Call_000_054a
    ret


jr_002_676c:
    xor a
    ld [$b883], a
    ld a, [$b884]
    inc a
    ld [$b884], a
    call Call_000_054a
    call Call_000_05e2
    ld a, [$b884]
    cp $04
    jr nc, jr_002_6785

    ret


jr_002_6785:
    xor a
    ld [$b884], a
    call Call_000_05e2
    ld a, [$b885]
    inc a
    ld [$b885], a
    ret


jr_002_6794:
    xor a
    ld [$b880], a
    ld [$b881], a
    ld a, $06
    ld [CurrentTime], a
    call Call_000_0491
    xor a
    ld [$ba40], a
    ret


Call_002_67a8:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_67c9

    cp $03
    jr z, jr_002_67c9

    cp $02
    jr z, jr_002_67c9

    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_67d8

    ld a, [hl]
    cp $12
    jr nz, jr_002_67d8

    dec a
    ld [hl], a
    pop bc
    pop hl
    ret


jr_002_67c9:
    push hl
    push bc
    dec hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_67d8

    ld a, [hl]
    cp $11
    jr nz, jr_002_67d8

    inc a
    ld [hl], a

jr_002_67d8:
    pop bc
    pop hl
    ret


Call_002_67db:
    ld a, [$b884]
    cp $03
    jp z, Jump_002_67f1

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $49
    jr z, jr_002_67ee

    inc a
    ld [hl], a

jr_002_67ee:
    pop bc
    pop hl
    ret


Jump_002_67f1:
    push hl
    push bc
    dec hl
    dec hl
    ld a, $43
    ld [hl+], a
    ld a, $48
    ld [hl], a
    pop bc
    pop hl
    ret


Call_002_67fe:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_6829

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6827

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $60
    jr z, jr_002_6827

    inc a
    ld [hl+], a
    cp $54
    jr c, jr_002_6827

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6827:
    pop bc
    pop hl

jr_002_6829:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_6835

    cp $03
    jr z, jr_002_6835

    ret


jr_002_6835:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $60
    jr z, jr_002_6844

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6844:
    pop bc
    pop hl
    ld a, [$b8a0]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6874
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Jump_002_6869:
    push hl
    push bc
    dec hl
    xor a
    ld [hl-], a
    ld a, $11
    ld [hl], a
    pop bc
    pop hl
    ret


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_68f4:
    ld a, [$b884]
    cp $01
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_691f

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_691d

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $88
    jr z, jr_002_691d

    inc a
    ld [hl+], a
    cp $76
    jr c, jr_002_691d

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_691d:
    pop bc
    pop hl

jr_002_691f:
    ld a, [$b8a0]
    cp $01
    jr z, jr_002_692b

    cp $03
    jr z, jr_002_692b

    ret


jr_002_692b:
    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $88
    jr z, jr_002_693a

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_693a:
    pop bc
    pop hl
    ld a, [$b8a0]
    cp $03
    ret nz

    push hl
    ld a, [$c0a8]
    and $7f
    ld hl, $6874
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    ret z

    push hl
    dec hl
    dec hl
    ld a, $12
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Call_002_695f:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_698a

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6988

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $98
    jr z, jr_002_6988

    inc a
    ld [hl+], a
    cp $94
    jr c, jr_002_6988

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6988:
    pop bc
    pop hl

jr_002_698a:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $98
    jr z, jr_002_699f

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_699f:
    pop bc
    pop hl
    ret


Call_002_69a2:
    ld a, [$b884]
    cp $00
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_69cd

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_69cb

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $ac
    jr z, jr_002_69cb

    inc a
    ld [hl+], a
    cp $a6
    jr c, jr_002_69cb

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_69cb:
    pop bc
    pop hl

jr_002_69cd:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $ac
    jr z, jr_002_69e2

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_69e2:
    pop bc
    pop hl
    ret


Call_002_69e5:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_6a10

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6a0e

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $b8
    jr z, jr_002_6a0e

    inc a
    ld [hl+], a
    cp $b4
    jr c, jr_002_6a0e

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6a0e:
    pop bc
    pop hl

jr_002_6a10:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $b8
    jr z, jr_002_6a25

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6a25:
    pop bc
    pop hl
    ret


Call_002_6a28:
    ld a, [$b884]
    cp $02
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_6a53

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6a51

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $cc
    jr z, jr_002_6a51

    inc a
    ld [hl+], a
    cp $c6
    jr c, jr_002_6a51

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6a51:
    pop bc
    pop hl

jr_002_6a53:
    ld a, [$b8a0]
    cp $01
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $cc
    jr z, jr_002_6a68

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6a68:
    pop bc
    pop hl
    ret


Call_002_6a6b:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_6a96

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6a94

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $dc
    jr z, jr_002_6a94

    inc a
    ld [hl+], a
    cp $d6
    jr c, jr_002_6a94

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6a94:
    pop bc
    pop hl

jr_002_6a96:
    ld a, [$b8a0]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $dc
    jr z, jr_002_6aab

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6aab:
    pop bc
    pop hl
    ret


Call_002_6aae:
    ld a, [$b884]
    cp $03
    jp nz, Jump_002_6869

    ld a, d
    and $08
    jr z, jr_002_6ad9

    push hl
    push bc
    dec hl
    ld a, [hl]
    ld e, a
    and $08
    jr z, jr_002_6ad7

    ld a, e
    and $f7
    ld [hl-], a
    ld a, [hl]
    cp $f0
    jr z, jr_002_6ad7

    inc a
    ld [hl+], a
    cp $e4
    jr c, jr_002_6ad7

    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6ad7:
    pop bc
    pop hl

jr_002_6ad9:
    ld a, [$b8a0]
    cp $02
    ret nz

    push hl
    push bc
    dec hl
    dec hl
    ld a, [hl]
    cp $f0
    jr z, jr_002_6aee

    inc a
    ld [hl+], a
    ld a, [hl]
    or $08
    ld [hl], a

jr_002_6aee:
    pop bc
    pop hl
    ret


Call_002_6af1:
    ld hl, $a000
    ld bc, $0c40

jr_002_6af7:
    inc hl
    ld a, [hl-]
    cp $00
    jr nz, jr_002_6b0f

    ld a, [hl]
    cp $12
    jr nz, jr_002_6b0f

    call Call_000_0890
    ldh a, [$ff9d]
    and $3f
    cp $3f
    jr nz, jr_002_6b0f

    xor a
    ld [hl], a

jr_002_6b0f:
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    cp $00
    jr nz, jr_002_6af7

    ret


Call_002_6b19:
    ld a, [$b900]
    or a
    jp nz, Jump_002_6b8d

    ld a, [$b8ee]
    ld l, a
    ld h, $00
    ld a, $05
    call Call_000_06ce
    ld b, l
    call $1ae8
    ld a, [$b8ee]
    ld l, a
    ld h, $00
    ld a, $0a
    call Call_000_06ce
    ld a, l
    ldh [$ffa4], a
    ld a, [$b902]
    cp $16
    jr z, jr_002_6b65

    cp $17
    jr z, jr_002_6b69

    cp $00
    jr z, jr_002_6b6d

    cp $01
    jr z, jr_002_6b71

    cp $02
    jr z, jr_002_6b75

    cp $03
    jr z, jr_002_6b79

    cp $04
    jr z, jr_002_6b7d

    cp $05
    jr z, jr_002_6b81

    cp $16
    jr c, jr_002_6b65

    ret


jr_002_6b65:
    ld c, $08
    jr jr_002_6b83

jr_002_6b69:
    ld c, $07
    jr jr_002_6b83

jr_002_6b6d:
    ld c, $06
    jr jr_002_6b83

jr_002_6b71:
    ld c, $05
    jr jr_002_6b83

jr_002_6b75:
    ld c, $04
    jr jr_002_6b83

jr_002_6b79:
    ld c, $03
    jr jr_002_6b83

jr_002_6b7d:
    ld c, $02
    jr jr_002_6b83

jr_002_6b81:
    ld c, $01

jr_002_6b83:
    ldh a, [$ffa4]
    call Call_000_071e
    ld b, l
    call $1ae8
    ret


Jump_002_6b8d:
    ld a, $06
    ld [CurrentTime], a
    xor a
    ld [$b881], a
    ld [$b880], a
    ret


Call_002_6b9a:
    ld a, [$b89f]
    cp $03
    jr nz, jr_002_6bad

    ld a, [$b885]
    cp $02
    ret nz

    ld a, $01
    ld [$b89e], a
    ret


jr_002_6bad:
    ld a, [$b88d]
    cp $01
    jr nz, jr_002_6bbb

    ld a, [$b883]
    cp $13
    jr c, jr_002_6bbf

jr_002_6bbb:
    xor a
    ld [$b88d], a

jr_002_6bbf:
    xor a
    ld [$b88c], a
    call Call_002_6dda
    ld a, [$b893]
    or a
    call nz, Call_002_6d01
    ld a, [$b883]
    ld b, a
    ld a, [$b8a2]
    cp b
    call z, Call_002_6d29
    ld a, [$b884]
    cp $00
    call z, Call_002_6c08
    ld a, [$b884]
    cp $01
    call z, Call_002_6c2c
    ld a, [$b884]
    cp $02
    call z, Call_002_6c38
    ld a, [$b884]
    cp $03
    call z, Call_002_6c49
    call Call_002_6c5a
    call Call_002_6c90
    call Call_002_6e2f
    call Call_002_6df8
    call Call_002_6e0e
    ret


Call_002_6c08:
    ld a, [$b883]
    cp $00
    call z, Call_002_6e70
    call Call_002_6cad
    ld a, [$b91a]
    cp $9b
    call z, Call_002_6cf2
    ld a, [$b883]
    cp $09
    call z, Call_002_6d54
    ld a, [$b883]
    cp $0e
    call z, Call_002_6db6
    ret


Call_002_6c2c:
    call Call_002_6cca
    ld a, [$b89e]
    cp $01
    call z, Call_002_6d3c
    ret


Call_002_6c38:
    ld a, [$b883]
    cp $00
    call z, Call_002_6dc3
    ld a, [$b883]
    cp $09
    call z, Call_002_6d22
    ret


Call_002_6c49:
    ld a, [$b883]
    cp $13
    call z, Call_002_6d30
    ld a, [$b883]
    cp $1d
    call z, Call_002_6e23
    ret


Call_002_6c5a:
    ld a, [$b898]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    call Call_002_6e8e
    ld a, [$cc9c]
    or a
    jr nz, jr_002_6c73

    ld a, [$cc9b]
    cp $80
    ret c

jr_002_6c73:
    ld a, [$b8af]
    cp $01
    ret z

    ld a, [$b8f8]
    cp $12
    ret z

    ld a, [$b8f9]
    cp $12
    ret z

    ld a, $01
    ld [$b898], a
    ld a, $0a
    ld [$b88d], a
    ret


Call_002_6c90:
    ld a, [$b89f]
    cp $03
    ret z

    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b911]
    cp $02
    ret z

    ld a, [$b8fe]
    cp $01
    ret nz

    ld a, $0b
    ld [$b88d], a
    ret


Call_002_6cad:
    ld a, [$b885]
    or a
    ret nz

    ld a, [$b883]
    cp $09
    ret c

    ld a, [$b883]
    cp $13
    ret nc

    ld a, [$b8ea]
    cp $00
    ret nz

    ld a, $01
    ld [$b88d], a
    ret


Call_002_6cca:
    ld a, [$b885]
    or a
    ret nz

    ld a, [$b884]
    cp $01
    ret nz

    ld a, [$b8ea]
    or a
    ret z

    ld a, [$b883]
    ld b, a
    ld a, [$b8eb]
    cp b
    ret nz

    ld a, $80
    ld [$b8eb], a
    ld a, [$b8c2]
    ld b, a
    add $02
    ld [$b8ea], a
    ret


Call_002_6cf2:
    ld a, [$b883]
    add $07
    cp $1e
    ret c

    ld a, $03
    ld [$b88d], a
    pop hl
    ret


Call_002_6d01:
    ld a, [$b883]
    ld b, a
    ld a, [$b894]
    cp b
    ret nz

    ld a, [$b884]
    ld b, a
    ld a, [$b895]
    cp b
    ret nz

    ld a, $ff
    ld [$b894], a
    ld [$b895], a
    ld a, $04
    ld [$b88d], a
    pop hl
    ret


Call_002_6d22:
    ld a, $05
    ld [$b88d], a
    pop hl
    ret


Call_002_6d29:
    ld a, $02
    ld [$b88d], a
    pop hl
    ret


Call_002_6d30:
    ld a, [$b885]
    or a
    ret nz

    ld a, $06
    ld [$b88d], a
    pop hl
    ret


Call_002_6d3c:
    ld a, [$b885]
    cp $02
    ret nz

    ld a, [$b89e]
    cp $02
    ret z

    ld a, $02
    ld [$b89e], a
    ld a, $07
    ld [$b88d], a
    pop hl
    ret


Call_002_6d54:
    ld a, [$b896]
    cp $01
    ret nz

    ld a, $08
    ld [$b88d], a
    ld a, $02
    ld [$b896], a
    pop hl
    ret


    ld a, [$b911]
    cp $00
    ret z

    ld a, [$ba42]
    cp $01
    ret z

    xor a
    ld [$b897], a
    ld a, $01
    ld [$ba42], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_002_6d95

    ld a, [$b8f8]
    cp $0d
    jr z, jr_002_6d9a

    ld a, [$b8f9]
    cp $0d
    jr z, jr_002_6da8

    ret


jr_002_6d95:
    xor a
    ld [$b8a5], a
    ret


jr_002_6d9a:
    ld a, $ff
    ld [$b8f8], a
    ld a, $0a
    ld [$cb8f], a
    call Call_002_431d
    ret


jr_002_6da8:
    ld a, $ff
    ld [$b8f9], a
    ld a, $0a
    ld [$cb8f], a
    call Call_002_431d
    ret


Call_002_6db6:
    ld a, [$b885]
    cp $01
    ret nz

    ld a, $0c
    ld [$b88d], a
    pop hl
    ret


Call_002_6dc3:
    ld a, [$b885]
    cp $02
    ret nz

    ld a, [$b899]
    or a
    ret z

    ld a, [$b8ec]
    or a
    ret z

    ld a, $0d
    ld [$b88d], a
    pop hl
    ret


Call_002_6dda:
    ld a, [$b89b]
    add $03
    ld b, a
    ld a, [$b883]
    cp b
    ret nz

    ld a, $0e
    ld [$b88d], a
    call $6374
    ld a, $80
    ld [$b89b], a
    xor a
    ld [$b88d], a
    pop hl
    ret


Call_002_6df8:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b89d]
    or a
    ret nz

    ld a, [$b88f]
    or a
    ret z

    ld a, $0f
    ld [$b88d], a
    pop hl
    ret


Call_002_6e0e:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b88e]
    or a
    ret z

    xor a
    ld [$b88e], a
    ld a, $10
    ld [$b88d], a
    pop hl
    ret


Call_002_6e23:
    ld a, $01
    ld [$ba43], a
    ld a, $11
    ld [$b88d], a
    pop hl
    ret


Call_002_6e2f:
    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b8fe]
    cp $00
    ret z

    cp $01
    ret z

    cp $05
    jr nz, jr_002_6e68

    xor a
    ld [$b8fe], a
    ld a, [$b911]
    cp $02
    ret z

    inc a
    ld [$b911], a
    ld a, $12
    ld [$b88d], a
    ld a, [$b911]
    cp $01
    jr z, jr_002_6e62

    ret


    ld a, $0a
    call Call_000_0fb9
    ret


jr_002_6e62:
    ld a, $0a
    call Call_000_0fb9
    ret


jr_002_6e68:
    ld a, [$b8fe]
    inc a
    ld [$b8fe], a
    ret


Call_002_6e70:
    ld a, [$b885]
    cp $00
    ret z

    ld a, [$b884]
    cp $00
    ret nz

    ld a, $13
    ld [$b88d], a
    ld a, $ff
    ld [$b8a1], a
    ld [$ba4c], a
    ld [$ba4d], a
    pop hl
    ret


Call_002_6e8e:
    xor a
    ld b, a
    ld c, a
    ld hl, $a000

jr_002_6e94:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_002_6ea9

    or a
    jr nz, jr_002_6eaa

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_002_6ea9

    cp $12
    jr z, jr_002_6ea9

    jr jr_002_6eaa

jr_002_6ea9:
    inc bc

jr_002_6eaa:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_002_6e94

    ld a, l
    cp $80
    jr c, jr_002_6e94

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
    ret


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
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    ld e, c
    cp c
    ld d, b
    rst $38
    or b
    ld d, a
    or a
    ld e, d
    cp [hl]
    ld b, h
    cp h
    ld c, c
    rst $18
    cp c
    ld a, l
    add [hl]
    ld c, [hl]
    adc c
    inc hl
    ld [bc], a
    rrca
    rrca
    rst $38
    ld h, b
    ld a, a
    ld a, a
    add b
    and b
    ld h, b
    add b
    add b
    cp $23
    inc bc
    ldh a, [$fff0]
    ld b, $fe

jr_002_6f24:
    cp $01
    dec b
    rst $38
    ld b, $01
    ld bc, $0d0e
    ld b, $04
    rlca
    rst $38
    dec b
    halt
    ld [hl], h
    rla
    dec e
    adc d
    adc h
    cp [hl]
    rst $38
    ld h, c
    ld h, [hl]
    add h
    adc d
    ld a, a
    add l
    ld a, a
    ret nz

    rst $38
    cpl
    xor d
    ld d, l
    rst $38
    nop
    add d
    ld l, a
    add l
    rst $38
    ld a, a
    add d
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    and a
    rst $38
    nop
    rst $38
    ld sp, $a100
    nop
    cp a
    nop
    ld bc, $ffbf
    ret nz

    jr nz, jr_002_6f24

    add sp, $0f
    ldh [$ffc0], a
    ld l, b
    rst $38
    rst $08
    and b
    ret nz

    ld e, l
    ld e, h
    ld a, c
    ld hl, sp-$01
    rst $38
    ld c, $53
    ld h, [hl]
    sbc a
    and b
    ld d, l
    ld h, h
    sbc l
    rst $38
    xor h
    ld e, l
    ld l, h
    rst $38
    ld a, a
    ldh [$ff7f], a
    ret z

    rst $38
    ld a, b
    rst $28
    ld e, a
    rst $28
    ld e, a
    ldh [$ff5f], a
    rst $18
    rst $38
    ld h, b
    ld a, a
    add b
    and c
    and b
    ld bc, $05f8
    rst $38
    nop
    add a
    add d
    or l
    ret nz

    rlca
    ld a, [$fffb]
    ld b, $fe
    ld bc, $40ff
    ld [$e055], a
    rst $28
    ld e, a
    ld [$ff5f], a
    jr nz, jr_002_6faf

jr_002_6faf:
    push hl
    ld e, a
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    xor d
    ld d, l
    nop
    rst $38
    xor c
    cp a
    cp $55
    cp $fa
    rst $38
    ld e, l
    ld h, b
    ld b, $c3
    rst $38
    inc a
    cp l
    ld a, [hl]
    and l
    ld h, [hl]
    jp $993c


    rst $38
    ld a, [hl]
    rst $38
    nop
    ld a, [hl+]
    push de
    rst $38
    nop
    ld [hl], l
    rst $38
    ld hl, sp-$71
    ld [hl], d
    xor l
    ld [hl], b
    adc l
    ld d, b
    xor a
    rst $38
    ld [hl], d
    adc a
    ld [hl], d
    db $fd
    nop
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $f2
    ld b, b
    nop
    ldh [$ffc0], a
    nop
    dec l
    db $10
    ld c, l
    adc e
    ld h, [hl]
    ld a, [hl-]
    rst $38
    ld a, h
    ld bc, $9bde
    ld d, h
    dec de
    call c, $9d9b
    ld d, h
    ld h, b
    nop
    jr nc, jr_002_704c

    add b
    ldh [$ff0b], a
    ld hl, $0f00

jr_002_7013:
    rst $38
    ldh a, [$ff1f]
    add sp, $1c
    db $e4
    inc c
    db $fc
    ld bc, $04fe
    ld bc, $0ff0
    ld hl, sp+$17
    jr c, jr_002_704c

    and [hl]
    rst $38
    push bc
    ld [hl], d
    ld e, h
    cp a
    add c
    ld l, [hl]
    call z, $ff2b
    call $cc2e
    ld a, [hl+]
    call $cc2a
    pop bc
    cp a
    ccf
    xor d
    ld b, l

jr_002_703c:
    rst $38
    nop
    add e
    jp nz, $c00f

    rst $20
    cpl
    ld a, [$9005]
    db $10
    add $0f
    nop
    rst $38

jr_002_704c:
    xor d
    rst $38
    ld d, l
    jr z, @-$2f

    jr nz, jr_002_7013

    ldh [rP1], a
    rst $38
    cp a
    rst $18
    ld h, b
    rst $18
    cp a
    ret nz

    dec b
    add b
    ld de, $ff9f
    xor [hl]
    ld d, a
    ld h, [hl]
    rra
    jr nz, jr_002_703c

    db $e4
    dec e
    rst $38
    db $ec
    ld sp, hl
    ld [$fe5f], sp
    inc hl
    or $7f
    rst $38
    add b
    xor b
    ld d, a
    jp nc, $a02f

    ld e, l
    ret nz

    rst $38
    dec a
    call nz, $8c3d
    ld a, l
    and b
    ld h, c
    cp $ff
    ld bc, $ae51
    and e
    ld e, [hl]
    ld b, c
    cp h
    add c
    ld a, a
    ld a, h
    add l
    ld a, h
    dec c
    db $fc
    ld b, c
    ret nz

    ld b, b
    add hl, bc
    rst $38
    sbc e
    ld l, a
    or b
    ld [hl], d
    adc a
    ld a, c
    adc c
    ld d, c
    rst $38
    or c
    ld h, e
    and e
    ld a, l
    cp [hl]
    ld d, b
    or b
    and b
    ei
    ld h, b
    ldh [rNR43], a
    nop
    or c
    ld [hl], c
    ld a, a
    add b
    sbc h
    ld a, a
    ld a, h
    ld a, [de]
    dec e
    dec c
    ld c, $05
    ld b, $21
    nop
    cp a
    jp z, $ffcd

    nop
    inc e
    rra
    ld b, c
    add hl, bc
    di
    rst $38
    dec c
    ld l, d
    db $f4
    sub a
    sbc c
    adc [hl]
    adc b
    xor [hl]
    rst $38
    ld l, c
    cp $18
    rst $38
    nop
    add l
    ld l, a
    xor d
    ld a, a
    ld a, a
    sub c
    ld a, a
    jp z, $a03f

    ld c, a
    pop bc
    nop
    ldh a, [c]
    nop
    inc d
    xor d
    push hl
    add hl, bc
    ld [hl], c
    ld a, [de]
    ld d, h
    sbc e
    ld b, h
    sbc e
    rst $38
    ld d, a
    sbc b
    ld h, a
    cp e
    ld b, h
    cp e
    ld h, a
    cp b
    ccf
    ld b, l
    cp e
    ld a, l
    push bc
    rrca
    ldh a, [$ffc1]
    dec de
    add b
    ld [hl+], a
    ld a, [hl]
    jr nz, jr_002_7122

    ld b, [hl]
    rst $00
    inc a
    inc a
    ldh a, [rIF]
    dec bc
    ld bc, $2aff
    call $cc22
    db $eb
    dec c
    ldh a, [c]
    call c, $23ff
    db $dd
    ldh a, [c]
    inc e
    ld h, d
    db $dd
    ld a, $22
    rst $38
    push de

jr_002_7122:
    ld a, a
    rst $38
    nop
    xor c
    ld l, [hl]
    rst $38
    nop
    rst $38
    ld d, d
    cp l
    jp nc, $3dbd

    jp $dfdc


    ld sp, hl
    ld d, l
    pop hl
    inc bc
    nop
    jr nz, jr_002_7179

    rst $38
    inc e
    rst $38
    ld b, c
    rst $18
    ld a, a
    ld [hl-], a
    di
    ld d, l
    cp $03
    ld [bc], a
    ld e, d
    cp l
    rst $38
    ld e, e
    cp l
    cp l
    jp $f939


    rst $38
    nop
    rst $38
    add $42
    or l

jr_002_7154:
    ld [hl], e
    add h
    ld a, e
    rst $38
    nop
    rst $18
    ret nz

    ld b, b
    cp [hl]
    ld a, [hl]
    add b
    ldh [$ff03], a
    inc c
    inc b
    rst $38
    db $eb
    rst $20
    ld [$fff7], sp
    nop
    add c
    ld bc, $befb
    ccf
    ld bc, $1901
    ld [$ccd5], sp
    ld de, $eeff
    rst $38

jr_002_7179:
    nop
    pop bc
    ld b, b
    cp l
    ld a, h
    add c
    rst $38
    ld a, [hl]
    ld d, h
    cp e
    ld a, d
    ld b, $74
    inc c
    rst $28
    rst $38
    sbc a
    ld h, d
    ld e, $c4
    cp h
    ld c, h
    cp h
    ld e, b
    rst $30
    jr c, jr_002_7154

    ret nz

    ld b, a
    inc l
    jr c, jr_002_71d1

    ldh a, [$fff0]
    or $c1
    add hl, hl
    ld a, $3e
    add a

jr_002_71a1:
    dec l
    sbc $e1
    ld e, $10
    rst $38
    rrca
    add hl, bc
    ld [bc], a
    inc b
    rst $20
    push hl
    ld a, [hl]
    ld a, h
    rst $38
    ld [de], a
    dec e
    ld a, [bc]
    inc c
    rst $38
    nop

jr_002_71b6:
    and b
    and b
    rst $30
    ld a, a
    ld a, a
    ld e, l
    ld b, h
    add hl, hl

jr_002_71be:
    db $fd
    db $fd
    rst $38
    nop
    rst $38
    dec b
    inc d
    cp l
    cp h
    db $ed

jr_002_71c8:
    db $fc
    rst $38
    cp $ff
    rlca
    or $ff
    nop
    ld b, l

jr_002_71d1:
    ld d, h
    nop
    rst $38
    rst $38
    ld d, a
    rst $38
    jr z, jr_002_71c8

    ld b, [hl]

jr_002_71da:
    add $28
    rst $28
    rst $38
    ld d, l
    rst $38
    ld d, d
    rst $38
    ld b, l
    rst $28
    nop
    rst $38
    ld a, a
    rst $20
    rst $38
    jr @+$01

jr_002_71eb:
    ld h, [hl]
    ld h, [hl]
    jr @-$7c

    inc l
    cp $e1
    inc e
    ld [$14ff], a
    rst $30
    ld h, d
    ld h, e
    inc d
    db $eb
    rst $30
    ld c, d
    add b
    dec l
    ld b, d
    add b
    ld a, [bc]
    jr jr_002_71eb

    rst $20
    rst $38
    jr jr_002_71a1

    rst $38
    rst $20
    jr jr_002_71b6

    ld d, l
    ld d, l

jr_002_720e:
    db $fd
    xor d
    add c
    cpl
    dec d
    ld [$1ceb], a
    sbc l
    cp $ff
    db $eb
    inc e
    or l
    ld c, d
    ld d, l
    xor d
    cp l
    ld c, d
    rst $38
    rst $38
    nop
    adc b
    ld a, b
    ld hl, sp+$38
    sub h
    ld [hl], h
    rst $38
    ret c

    jr c, jr_002_71da

    ld a, h
    ret c

    jr c, jr_002_71be

    ld a, h
    cp $00
    dec c
    ld e, $17
    inc e
    add hl, hl
    ld l, $1b
    inc e
    rst $38
    dec [hl]
    ld a, $1b
    inc e
    ld sp, $ff3e
    nop
    rst $18
    ret c

    ld c, b
    or a
    ld l, a
    sub b
    add b
    jr jr_002_720e

    ld a, a
    ld a, h
    pop hl
    rrca
    nop
    dec b
    ld [$cfd7], sp
    db $10
    rst $28
    rlca
    ld bc, $05ee
    db $10
    cp a
    ld a, [hl]
    add c
    ld b, b
    dec l
    ret z

    cp a
    db $e4
    cp a
    cp a
    ret nz

    cp a
    jp z, $d0bf

    ld h, h
    nop
    rlca
    cp a
    ld a, [$fa4f]
    rlca
    ld a, [$4017]
    nop
    adc a
    cp $80
    nop
    daa
    ld a, [$cf30]
    jp nz, Jump_002_7ffe

    rst $38
    nop
    ld a, l
    cp l
    ld l, d
    dec [hl]
    ld [hl], c
    xor a
    ld h, a
    rst $38
    ld a, [hl-]
    ldh a, [c]
    dec hl
    ld [hl], b
    adc a
    ld h, e
    ld a, a
    db $fc
    rst $38
    ld [bc], a
    add d

jr_002_729a:
    add c
    ld e, d
    and b
    ld e, e
    and c
    and e
    ei
    ld a, c
    jp nc, Jump_000_1700

    rst $20
    ld h, b
    sbc a
    ld a, b
    add a
    cp a
    ld a, b
    rst $38
    nop
    or a
    ld [hl], b
    add a
    add d
    nop
    ld sp, hl
    ld e, a
    jr jr_002_729a

    ld e, $e1
    ld e, $85
    nop
    ld b, d
    add d
    rrca
    ld b, a
    dec l
    rst $28
    ld a, [hl+]
    inc b
    db $10
    inc bc
    inc a
    ld b, a
    nop
    and d
    add d
    rrca
    rst $00
    ld d, h
    rst $30
    or h
    inc b
    db $10
    ld b, c
    rrca
    ld c, c
    nop
    ld e, l
    xor d
    sbc $81
    rrca
    xor e
    ld e, h
    ld c, e
    cp h
    inc bc
    db $10
    call c, $f63c
    dec bc
    db $10
    dec sp
    inc a
    dec c
    db $10
    ld d, h
    adc d
    and d
    ld d, h
    rst $38
    dec c
    xor c
    nop
    rst $38
    ld a, e
    ld a, e
    ld l, c
    ld a, e
    rst $38
    ld b, c
    ld d, e
    rst $38
    nop
    ld d, l
    xor d
    dec hl
    ld b, h
    rst $38
    dec d
    jr nc, jr_002_7307

    db $fc
    ld e, e
    ld e, e

jr_002_7307:
    add e
    set 5, a
    sub d
    jp c, $0615

    dec hl
    nop
    rst $38
    add b
    rst $38
    ret c

    inc h
    dec h
    ld h, c
    add hl, sp
    sub b
    ld b, l
    ld [bc], a
    rst $38
    jr nz, jr_002_7343

    ld bc, $fefe
    inc hl
    nop
    rst $38
    nop
    ld a, e
    xor a
    ldh [c], a
    or a
    ld [hl], l
    rst $38
    ld l, $6a
    or l
    ld [hl], l
    ccf
    ld a, a
    add b
    adc [hl]
    rst $38
    adc a
    add $39
    cp [hl]
    push af
    sub e
    ld sp, hl
    ld l, $ff
    db $f4
    sbc [hl]
    ld h, l
    ld a, [hl]
    db $fc
    rst $38

jr_002_7343:
    ld bc, $770f
    rst $38
    add $39
    rlca

jr_002_734a:
    db $10
    cp a
    ld a, [hl]
    add e
    ld [hl+], a

jr_002_734f:
    dec d
    and $05
    db $10
    pop af
    ld [hl], b
    ld bc, $0301
    db $10
    jr z, jr_002_734a

    ld b, a
    rst $08
    rst $00
    jr z, jr_002_734f

    ld d, a
    ld hl, $023b
    ld c, h
    jr @+$01

    db $f4
    ld d, b
    ld e, $a0
    jr nz, jr_002_736d

jr_002_736d:
    inc b
    db $10
    inc d
    rst $30
    ldh [c], a
    db $e3
    ld h, a
    inc d
    rst $30
    ld [$4d80], a
    inc bc
    db $10
    rst $20
    jr jr_002_739e

    ld [bc], a
    ld [hl], e
    jr jr_002_739a

    db $10
    ld [bc], a
    inc bc
    db $10
    db $eb
    inc e
    dec e
    jr nz, jr_002_73ab

    pop af
    dec d
    db $10
    ld [bc], a
    ld h, c
    rra
    and c
    rra
    sbc b
    ld a, b
    db $f4
    inc [hl]
    pop af
    sbc b
    ld h, b

jr_002_739a:
    rla
    ld h, c
    rra
    and c

jr_002_739e:
    rra

jr_002_739f:
    add hl, de
    ld e, $2f
    inc l
    db $fd
    add hl, de
    ld h, b
    rla
    rst $38
    nop
    adc [hl]
    ld [hl], c

jr_002_73ab:
    xor [hl]

jr_002_73ac:
    ld [hl], c
    rst $38
    xor d
    ld [hl], l

jr_002_73b0:
    adc d
    ld d, l
    adc [hl]
    ld d, l
    ei
    adc [hl]
    cp $e1
    ld [hl-], a
    ld [hl], c
    adc [hl]
    pop af
    adc [hl]
    ld d, l
    ld l, $71
    rst $38
    ld a, [hl+]
    ld d, c
    ld a, [hl+]
    xor [hl]
    ld [hl], c
    ld d, l
    rst $38
    ccf
    rst $38
    nop
    ld b, b
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jp $a830


    ld [hl+], a
    nop
    pop bc
    jr c, jr_002_73ac

    ld d, h
    or h
    ld e, e
    db $fc
    nop
    ld a, a
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    add h
    ld [de], a
    cp $63
    ld [bc], a
    xor a
    jr nc, jr_002_739f

    jr nc, jr_002_73b0

    ccf
    ld b, b
    db $e3
    ccf
    ccf
    inc d
    ld e, [hl]
    ld h, a
    inc bc
    inc bc
    dec d
    push af
    ld b, $0d
    ld a, a
    ld c, $fd
    cp $02
    db $fc
    db $fc
    nop
    ld h, e
    dec b
    nop
    ld h, a
    nop
    sub b
    ld l, a
    xor d
    ld e, e
    xor c
    ld e, c
    xor b
    ld e, d
    xor b
    ld e, e
    and b
    ld e, a
    and h
    ld e, h
    xor b
    ld e, e
    nop
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld [bc], a
    ei
    inc b
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp [hl]
    ld [hl], c
    ei
    ld l, d
    pop af
    ld d, b
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $eadf

    rst $38
    ld [$eaff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp a
    ld a, a
    ei
    or $ff
    ld a, [$faff]
    rst $38
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp e
    ld h, a
    rst $30
    ld d, e
    and $01
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$eaff], a
    sub b
    ld l, a
    and b
    ld e, a
    and c
    ld e, c
    and b
    ld b, a
    and b
    ld e, [hl]
    and b
    ld e, a
    and b
    ld e, a
    and [hl]
    ld b, [hl]
    nop
    rst $38
    nop
    ld hl, sp-$68
    sbc a
    nop
    rst $38
    nop
    rra
    ld b, $fe
    nop
    rst $38
    ld h, b
    ld a, a
    nop
    rst $38
    ld b, $67
    nop
    rst $38
    nop

jr_002_74b3:
    pop hl
    nop
    rst $38
    nop
    ld a, a
    jr jr_002_74b3

    nop
    rst $38
    dec bc
    or $07
    ld a, [$fa7f]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$8207]
    rlca
    ld a, [$80ff]
    sbc a
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    rst $38
    nop
    sub a
    nop
    sbc e
    ld [de], a
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    nop
    add hl, sp
    nop
    add hl, hl
    add d
    add e
    ld b, h
    rst $10
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    db $fd
    add l
    ldh a, [$ff90]
    ret c

    xor b
    rst $18
    and b
    ret nc

    xor a
    ldh [$ffdf], a
    ldh [c], a
    db $dd
    rst $38
    ld l, d
    rst $38
    ld a, [hl+]
    ld e, a
    ld l, d
    rst $18
    xor d
    rst $18
    ld a, [hl+]
    ld a, a
    sbc d
    ccf
    jp c, $d63b

    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $08
    or b
    ret c

    xor b
    rst $18
    and b
    ret nc

    xor a
    ldh [c], a
    db $dd
    rst $18
    ld [$eaff], a
    rst $18
    ld [$eadf], a
    sbc a
    ld l, d
    sbc a
    ld l, d
    ld e, a
    xor d
    dec sp
    sub $e5
    add b
    db $e4
    add b
    ldh [$ffa8], a
    pop af
    reti


    rst $38
    ldh [$fff0], a
    rst $28
    ldh [$ffdf], a
    ldh [c], a
    db $dd
    rst $38
    ld l, d
    ld a, a
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and [hl]
    ld b, [hl]
    and b
    ld e, a
    ld hl, sp+$19

jr_002_7598:
    and b
    ld e, a
    ret nc

    jr z, jr_002_759d

jr_002_759d:
    rst $38
    jr jr_002_7598

    nop
    rst $38
    nop
    ld h, a
    nop
    rst $38
    nop
    pop hl
    nop
    rst $38
    ld a, b
    ld a, a
    ld b, $fe
    nop
    ld a, a
    ld h, [hl]
    rst $20
    nop
    rst $38
    ld bc, $00ff
    sbc c
    nop
    rst $38
    nop
    cp $07
    ld h, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$9a87]
    rlca
    ld a, [$fa07]
    dec bc
    ld d, $e1
    sbc a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ld h, b
    and b
    ld b, b
    and c
    ld b, e
    and d
    ld b, e
    and b
    ld b, b
    and [hl]
    ld b, [hl]
    and b
    ld b, [hl]
    and [hl]
    ld b, [hl]
    nop
    nop
    ld d, b
    ld [hl], b
    ld d, h
    halt
    ld [bc], a
    ld b, $70
    ld [hl], b
    adc e
    ei
    adc b
    ei
    adc e
    ei
    sub b
    ld h, b
    and [hl]
    ld b, [hl]
    and h
    ld b, [hl]
    and b
    ld b, b
    and c
    ld b, c
    xor h
    ld c, l
    xor b
    ld c, l
    xor h
    ld c, l
    ld [hl], b
    ld [hl], b
    ld d, [hl]
    halt
    ld [hl+], a
    ld h, $88
    ld hl, sp+$04
    db $fc
    ld bc, $00fd
    db $fd
    ld bc, $fffd
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    ld a, [$f369]
    ld d, d
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$ea7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp a
    ld [hl], c
    ei
    ld l, c
    di
    ld d, b
    ei
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    rst $18
    ld [$eaff], a
    sub b
    ld l, a
    and b
    ld c, h
    and b
    ld e, a
    and b
    ld e, h
    and b
    ld e, a
    and b
    ld c, a
    and e
    ld e, a
    and b
    ld e, a
    nop
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    jr nc, jr_002_76ab

jr_002_76ab:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    call z, Call_000_3f00
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    inc sp
    inc sp
    dec bc
    or $07
    jp nz, $fac7

    rlca
    ld a, [$fa07]
    scf
    ldh a, [c]
    rlca
    ld a, [$fa07]
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, b
    and d
    ld b, e
    and c
    ld b, e
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    cp a
    ld e, a
    rst $18
    cpl
    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld b, $54
    halt
    ld d, b
    ld [hl], b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and c
    ld b, c
    and b
    ld b, b
    and h
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and b
    ld b, b
    ldh [rP1], a
    cp a
    ld e, a
    rst $18
    cpl
    inc b
    db $fc
    adc b
    ld hl, sp+$22
    ld h, $56
    halt
    ld [hl], b
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    ld c, b
    ldh [$ffa0], a
    ldh [$ffae], a
    pop af
    push de
    rst $38
    ldh [$fff0], a
    rrca
    and b
    ccf
    ld h, d
    dec e
    cp a
    ld l, d
    ld a, a
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    ei
    ld d, c
    pop af
    add b
    ldh [$ffa0], a
    or c
    pop de
    rst $18
    ldh [$fff0], a
    rst $28
    db $e3
    call c, $d3f2
    rst $38
    ld l, d
    rst $38
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    rst $38
    ld l, d
    rst $18
    ld l, d
    cp a
    ld e, d
    ld a, a
    cp d
    ld a, e
    or [hl]
    and b
    ld e, a
    and b
    ld c, a
    xor h
    ld e, h
    and b
    ld e, a
    and b
    ld e, a
    ldh [rNR13], a
    and b

jr_002_7799:
    ld e, a
    ret nc

    cpl
    ret nz

    call z, $ff00
    ret nz

    rst $38
    nop
    rst $38
    jr nc, jr_002_7799

    nop
    ccf
    nop
    rst $38
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    jr nc, jr_002_77e7

    nop
    rst $38
    ret nz

    rst $08
    nop
    rst $38
    inc bc
    jp $fa07


    rst $00
    jp nz, $fa07

    rlca
    ld a, [hl-]
    rlca
    ld a, [$0a07]
    rlca
    ld a, [$f6cb]
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd

jr_002_77e7:
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    ld l, a
    and d
    ld e, a
    and b
    ld e, e
    and e
    ld d, h
    and a
    ld c, b
    xor a
    ld d, b
    and c
    ld e, [hl]
    and b
    ld e, a
    ld bc, $02ff
    rst $38
    ldh [rNR31], a
    ldh a, [rTAC]
    db $ec
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $817c
    sub b
    ld l, l
    and b
    ld e, e
    and b
    ld e, a
    and e
    ld e, h
    and a
    ld e, b
    xor a
    ld d, b
    and c
    ld e, [hl]
    and d
    ld e, a
    nop
    db $fd
    nop
    ei
    ldh a, [$ff1f]
    ld hl, sp+$27
    cp h
    inc bc
    ld a, h
    inc bc
    cp $01
    ld a, [hl]
    add c
    sbc a
    ld h, b
    cp h
    ld b, e
    and b
    ld e, a
    and e
    ld e, a
    cp b
    ld e, b
    cp a
    ld e, a
    or e
    ld d, e
    and h
    ld b, a
    rst $38
    nop
    nop
    rst $38
    ld a, h
    rst $38
    pop de
    rst $38
    ccf
    ccf
    ret nz

    ret nz

    add hl, de
    ld sp, hl
    ld b, $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    cp $6d
    ld [$fb6a], a
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    cp a
    jp c, $daff

    ld e, a
    ld [$aaff], a
    rst $38
    nop
    ret nz

    cp a
    jr z, jr_002_78aa

    rra
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $fe01
    dec b
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_002_78aa:
    nop
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ret nz

    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_002_78bb:
    rst $38
    rst $38
    nop
    inc bc
    db $fd
    inc d
    jr jr_002_78bb

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$ff9f], a
    sub [hl]
    add hl, bc
    sbc e
    ld [de], a
    rst $30
    add b
    jp z, $dd81

    ld d, h
    rst $38
    ld h, [hl]
    and $99
    ld h, a
    sbc d
    sub a
    ld [$129b], sp
    ld [hl], a
    add b
    ld c, e
    add b
    db $dd
    ld d, h
    rst $38
    ld h, [hl]
    ld h, a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld e, a
    and l
    ld e, d
    and e
    ld e, h
    and b
    ld e, a
    and b
    ld e, [hl]
    rst $38
    rra
    cp a
    ld e, a
    push de
    cpl
    jp c, $a621

    ld [hl], c
    ld b, d
    db $fd
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    and b
    ld e, e
    and l
    ld d, d
    and e
    ld e, h
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    sbc $21
    add [hl]
    ld a, c
    inc bc
    db $fd
    nop
    db $fd
    nop
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    ld e, a
    cp b
    ld e, a
    or e
    ld e, h
    and a
    ld e, b
    cp a
    ld b, b
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    pop hl
    rra
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    ld b, b
    ld [$d1aa], a
    cp a
    pop af
    adc [hl]
    sbc a
    nop
    or c
    ld l, $e0
    sbc a
    ldh a, [$ffef]
    ld a, a
    ld a, [hl+]
    rst $28
    or d
    ld a, a
    or d
    rst $28
    ld [hl-], a
    ccf
    ld a, [bc]
    cp a
    sbc d
    rst $38
    ld a, [hl-]
    ld a, e
    or [hl]
    sbc a
    ld h, b
    cp c
    ld b, [hl]
    or a
    ld c, h
    cp a
    ld c, b
    cp a
    ld c, b
    cp a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_002_79ba:
    rst $38
    nop
    ei
    ld b, $df
    ld [hl+], a
    rst $28
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $18
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld l, c
    or c
    ld e, b
    xor d
    ld e, h
    and [hl]
    ld c, b
    xor h
    ld c, c
    or h
    ld e, c
    xor [hl]
    ld e, b
    cp a
    ld d, a
    cp [hl]
    db $e3
    db $e3
    dec e
    ld [hl-], a
    dec c
    inc l
    nop
    jr jr_002_79ba

    dec e
    sub a
    ld a, b
    ld [hl], l
    db $ed
    db $eb
    sub h
    ld h, h
    xor d
    ld c, d
    or c
    ld b, l
    xor b
    ld b, d
    or h
    ld d, c
    xor l
    ld e, c
    cp a
    ld b, e
    xor d
    ld d, d
    db $10
    inc d
    inc hl
    jr z, jr_002_7a88

    ld d, e
    dec c
    daa
    dec de
    ld c, a
    scf
    sbc a
    ld l, a
    ccf
    rst $18
    ld a, a
    sbc b
    ld l, b
    or h
    ld d, h
    xor d
    ld c, d
    or c
    ld b, l
    xor b
    ld b, d
    or h
    ld d, c
    xor l
    ld e, c
    cp a
    ld b, e
    ld [$100a], sp
    inc d
    inc hl
    jr z, jr_002_7aaa

    ld d, e
    dec c
    daa
    dec de
    ld c, a
    scf
    sbc a
    ld l, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fff7]
    rst $08
    rst $18
    cp a
    cp l
    ld [hl], e
    cp $6d
    ld [$fb6a], a
    or $ff
    ld a, [$7aff]
    ld a, a
    cp d
    rst $38
    jp c, $daff

jr_002_7a88:
    ld a, a
    ld [$eabf], a
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or e
    ld c, h
    cp e
    ld c, h
    push af
    ld c, $ba
    ld b, a
    rst $18
    jr nz, @+$01

    nop
    rst $38
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
    ei

jr_002_7aaa:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    ld c, a
    cp a
    rst $38
    nop
    rst $18
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    sbc a
    ld d, d
    ld e, a
    jp nc, $b2bf

    rst $28
    ldh a, [c]
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, h
    or b
    ld c, h
    xor [hl]
    ld b, [hl]
    and a
    ld b, e
    and e
    ld b, b
    rst $38
    rra
    cp a
    ld e, a
    rst $18

jr_002_7b1b:
    cpl
    ld c, h
    ld a, b
    ld c, h
    ld a, b
    inc e
    jr jr_002_7b1b

    ldh a, [$fff0]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld d, b
    cp c
    ld d, [hl]
    cp e
    ld d, [hl]
    cp l
    ld d, [hl]
    cp e
    ld d, [hl]
    rst $38
    rra
    cp a
    ld e, a
    rst $18
    cpl
    rst $38
    nop
    sbc a
    adc a
    jr nc, jr_002_7b62

    sub b
    add b
    jr nc, jr_002_7b66

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld d, d
    cp [hl]
    ld d, b
    cp c
    ld d, [hl]
    cp l
    ld d, [hl]
    cp e
    ld d, [hl]
    rst $38

jr_002_7b57:
    rra
    cp a
    ld e, a
    rst $18
    cpl
    rst $18
    ld a, a
    rst $38
    nop
    sbc a
    adc a

jr_002_7b62:
    jr nc, jr_002_7b84

    sub b
    add b

jr_002_7b66:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    ld b, b
    ld [$f1aa], a
    sub c
    sbc a
    ld c, $bf
    jr nz, jr_002_7b57

    sbc a
    ldh [$ffdf], a
    ldh a, [$ffef]
    ld l, a
    ld [hl-], a
    rst $38
    or d
    rst $38
    ld [hl-], a
    ccf
    ld [de], a

jr_002_7b84:
    cp a
    adc d
    rst $38
    ld a, [de]
    ld a, a
    cp d
    ld a, e
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7ffe:
    rst $38
    rst $38
