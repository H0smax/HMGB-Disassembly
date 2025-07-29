; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld [$02fa], sp
    add $c7
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    pop bc
    ld b, e
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    cp e
    ld b, c
    sbc d
    ld b, d
    inc h
    ld b, [hl]
    inc h
    ld b, [hl]
    inc h
    ld b, [hl]
    inc h
    ld b, [hl]
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    add b
    ld b, l
    add b
    ld b, l
    add b
    ld b, l
    add b
    ld b, l
    sub $45
    sub $45
    sub $45
    sub $45
    add d
    ld c, [hl]
    add d
    ld c, [hl]
    add d
    ld c, [hl]
    add d
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld l, l
    ld c, [hl]
    sub b
    ld c, [hl]
    sub b
    ld c, [hl]
    sub b
    ld c, [hl]
    sub b
    ld c, [hl]
    daa
    ld d, b
    adc l
    ld c, e
    adc l
    ld c, e
    adc l
    ld c, e
    adc l
    ld c, e
    and b
    ld c, b
    and b
    ld c, b
    and b
    ld c, b
    and b
    ld c, b
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    sbc a
    ld b, h
    sbc a
    ld b, h
    sbc a
    ld b, h
    sbc a
    ld b, h
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    ld [hl], d
    ld b, c
    dec de
    ld d, b
    dec de
    ld d, b
    dec de
    ld d, b
    dec de
    ld d, b
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld a, [hl]
    ld b, c
    cp $4f
    cp $4f
    cp $4f
    cp $4f
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld d, d
    ld c, b
    ld d, d
    ld c, b
    ld d, d
    ld c, b
    ld d, d
    ld c, b
    call nc, Call_008_7148
    ld c, d
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    add $51
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    sub a
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    and a
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld h, a
    ld b, h
    ld h, a
    ld b, h
    ld h, a
    ld b, h
    ld h, a
    ld b, h
    rrca
    ld d, b
    rrca
    ld d, b
    rrca
    ld d, b
    rrca
    ld d, b
    sub a
    ld b, c
    ret


    ld a, [$c912]
    cp $08
    ret nz

    ld a, $58
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $62
    jr z, jr_008_418d

    ld a, [$c912]
    cp $01
    jr z, jr_008_4193

    ret


jr_008_418d:
    ld a, $40
    call Call_000_23d8
    ret


jr_008_4193:
    call Call_000_0f40
    ret


    ld a, [$c912]
    cp $01
    ret nz

    xor a
    ld [$cb7c], a
    ld a, $00
    call Call_000_166a
    ret


    ld a, [$cb7c]
    dec a
    ld [$cb7c], a
    cp $00
    ret nz

    xor a
    ld [$cb7c], a
    ld a, $00
    call Call_000_166a
    ret


    ld a, [$c912]
    cp $01
    jr z, jr_008_41d7

    ld a, [$b882]
    cp $06
    jr nz, jr_008_41e1

    ld a, [$c912]
    cp $5f
    jp z, Jump_008_41ee

    cp $40
    jp z, Jump_008_4295

    ret


jr_008_41d7:
    xor a
    ld [$cb7c], a
    ld a, $00
    call Call_000_166a
    ret


jr_008_41e1:
    ld a, [$c912]
    cp $40
    jr z, jr_008_41ee

    cp $1e
    jp z, Jump_008_4295

    ret


Jump_008_41ee:
jr_008_41ee:
    ld a, [$cb8d]
    cp $ff
    jp z, Jump_008_4291

    cp $00
    jr z, jr_008_422a

    cp $01
    ret z

    cp $02
    jr z, jr_008_4245

    cp $03
    ret z

    cp $04
    jr z, jr_008_4260

    cp $06
    jr z, jr_008_427b

    cp $05
    ret z

    ld a, $37
    call $16e3
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $12
    ld [$c64b], a
    ld b, $0a
    call $1ae8
    ret


jr_008_422a:
    ld a, $43
    call $16e3
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $12
    ld [$c64b], a
    ld b, $1e
    call $1ae8
    ret


jr_008_4245:
    ld a, $42
    call $16e3
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $12
    ld [$c64b], a
    ld b, $14
    call $1ae8
    ret


jr_008_4260:
    ld a, $45
    call $16e3
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $12
    ld [$c64b], a
    ld b, $0a
    call $1ae8
    ret


jr_008_427b:
    ld a, $44
    call $16e3
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $12
    ld [$c64b], a
    ret


Jump_008_4291:
    xor a
    ld [$c912], a

Jump_008_4295:
    xor a
    ld [$c640], a
    ret


    ld a, [$c912]
    cp $30
    jr z, jr_008_42c2

    cp $2f
    jr z, jr_008_42c2

    cp $2e
    jr z, jr_008_42c2

    cp $2d
    jr z, jr_008_42c2

    cp $2c
    jr z, jr_008_42c2

    cp $2b
    jr z, jr_008_42c2

    cp $2a
    jr z, jr_008_42c2

    cp $29
    jr z, jr_008_42c2

    cp $28
    jr z, jr_008_42c2

    ret


jr_008_42c2:
    ld a, $01
    ld [$cb75], a
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_008_42dc

    ld b, $1f
    jr jr_008_42e9

jr_008_42dc:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_008_42e2:
    ld a, [hl+]
    cp c
    jr z, jr_008_42e9

    inc b
    jr jr_008_42e2

jr_008_42e9:
    ld a, b
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $1b41
    add hl, de
    ld a, [$c912]
    sub $28
    ld b, a
    ld a, $08
    sub b
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, $92
    ld a, b
    add e
    ld e, a
    ld a, [hl]
    ld c, a
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    call Call_008_4501
    ret


    ld a, [$cb8f]
    or a
    ret z

    dec a
    ld [$cb8f], a
    cp $09
    jp z, Jump_008_43a9

    cp $08
    jr z, jr_008_4350

    cp $07
    jr z, jr_008_4350

    cp $06
    jr z, jr_008_4350

    cp $05
    jr z, jr_008_4350

    cp $04
    jr z, jr_008_4350

    cp $03
    jr z, jr_008_4350

    cp $02
    jr z, jr_008_4350

    cp $01
    jr z, jr_008_4350

    cp $00
    jr z, jr_008_4350

    ret


jr_008_4350:
    ld a, $01
    ld [$cb75], a
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_008_436a

    ld b, $1f
    jr jr_008_4377

jr_008_436a:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_008_4370:
    ld a, [hl+]
    cp c
    jr z, jr_008_4377

    inc b
    jr jr_008_4370

jr_008_4377:
    ld a, b
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $1b41
    add hl, de
    ld a, [$cb8f]
    ld b, a
    ld a, $08
    sub b
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, $92
    ld a, b
    add e
    ld e, a
    ld a, [hl]
    ld c, a
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    call Call_008_4501
    ret


Jump_008_43a9:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $ff
    ld [hl], a
    ld hl, $4501
    ld a, $08
    call Call_000_1f96
    ret


    ld a, [$c0a7]
    cp $05
    jr z, jr_008_43e4

    cp $04
    jr z, jr_008_43d0

    cp $03
    jr z, jr_008_43d0

jr_008_43d0:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_008_43e4

    cp $11
    ret nz

jr_008_43e4:
    ld a, [$c912]
    cp $0f
    jr z, jr_008_440c

    cp $0e
    jr z, jr_008_440c

    cp $0d
    jr z, jr_008_440c

    cp $0c
    jr z, jr_008_440c

    cp $0b
    jr z, jr_008_440c

    cp $0a
    jr z, jr_008_440c

    cp $09
    jr z, jr_008_440c

    cp $08
    jr z, jr_008_440c

    cp $07
    jr z, jr_008_440c

    ret


jr_008_440c:
    ld a, $01
    ld [$cb75], a
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_008_4426

    ld b, $1f
    jr jr_008_4433

jr_008_4426:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_008_442c:
    ld a, [hl+]
    cp c
    jr z, jr_008_4433

    inc b
    jr jr_008_442c

jr_008_4433:
    ld a, b
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $1b41
    add hl, de
    ld a, [$c912]
    sub $07
    ld b, a
    ld a, $08
    sub b
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, $92
    ld a, b
    add e
    ld e, a
    ld a, [hl]
    ld c, a
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    call Call_008_4501
    ret


    ld a, [$c912]
    cp $01
    jr z, jr_008_4473

    cp $10
    jr z, jr_008_4496

    ret


jr_008_4473:
    ld a, [$cb87]
    ld [$c620], a
    ld a, [$c908]
    cp $00
    ret z

    xor a
    ld [$c908], a

jr_008_4483:
    ld a, [$b8db]
    cp $00
    jr z, jr_008_4490

    ld a, $2e
    call Call_000_23d8
    ret


jr_008_4490:
    ld a, $2f
    call Call_000_23d8
    ret


jr_008_4496:
    ld a, [$c908]
    cp $00
    ret z

    jr jr_008_4483

    ret


    ld a, [$cb80]
    or a
    ret z

    ld a, [$c912]
    cp $08
    jr z, jr_008_44b3

    ld a, [$c912]
    cp $04
    jr z, jr_008_44f6

    ret


jr_008_44b3:
    ld a, [$c60d]
    cp $00
    jr z, jr_008_44cb

    cp $01
    jr z, jr_008_44d4

    cp $02
    jr z, jr_008_44e5

    ld a, [$c62b]
    sub $08
    ld [$c62b], a
    ret


jr_008_44cb:
    ld a, [$c62b]
    add $08
    ld [$c62b], a
    ret


jr_008_44d4:
    ld a, [$c62a]
    sub $0c
    ld [$c62a], a
    ld a, [$c62b]
    add $08
    ld [$c62b], a
    ret


jr_008_44e5:
    ld a, [$c62a]
    add $0c
    ld [$c62a], a
    ld a, [$c62b]
    add $08
    ld [$c62b], a
    ret


jr_008_44f6:
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld [$cb80], a
    ret


Call_008_4501:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_008_4516

    ld b, $1f
    jr jr_008_4523

jr_008_4516:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_008_451c:
    ld a, [hl+]
    cp c
    jr z, jr_008_4523

    inc b
    jr jr_008_451c

jr_008_4523:
    ld a, b
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $1b41
    add hl, de
    ld de, $b91b
    ld b, $09

jr_008_4538:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_008_4538

    call Call_000_3d35
    ret


    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_008_4557

    ld b, $1f
    jr jr_008_4564

jr_008_4557:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_008_455d:
    ld a, [hl+]
    cp c
    jr z, jr_008_4564

    inc b
    jr jr_008_455d

jr_008_4564:
    ld a, b
    ld l, a
    ld h, $00
    ld e, a
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $1b41
    add hl, de
    ld de, $b91b
    ld b, $09

jr_008_4579:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_008_4579

    ret


    ld a, [$c912]
    cp $02
    ret nz

    ld a, $37
    call Call_000_23d8
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb45]
    or a
    ret z

    ld a, [$cb45]
    cp $01
    jr nz, jr_008_45af

    ld a, $31
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    xor a
    ld [$cb45], a
    ret


jr_008_45af:
    ld a, [$c611]
    or a
    jr z, jr_008_45bf

    dec a
    ld [$c611], a
    ld a, $2b
    call $16e3
    ret


jr_008_45bf:
    ld a, $30
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    ld a, $06
    ld [$c611], a
    xor a
    ld [$cb45], a
    ret


    ld a, [$c912]
    cp $02
    ret nz

    ld a, [$c0a7]
    cp $01
    jr nz, jr_008_461e

    ld a, [$cb45]
    or a
    jr z, jr_008_461e

    ld a, [$c611]
    or a
    jr z, jr_008_45f6

    dec a
    ld [$c611], a
    jr jr_008_461e

    ret


jr_008_45f6:
    ld a, $34
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    ld a, $06
    ld [$c611], a
    xor a
    ld [$cb45], a
    ld hl, $b938
    ld bc, $0006
    call Call_000_0a27
    call Call_000_0fe5
    ld a, $38
    call Call_000_23d5
    ret


jr_008_461e:
    ld a, $53
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $02
    ret nz

    ld a, $3a
    call Call_000_23d8
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld a, [$c60d]
    cp $00
    jr z, jr_008_4659

    cp $01
    jr z, jr_008_4666

    cp $02
    jr z, jr_008_4673

    ld a, $00
    ldh [$ffad], a
    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    jr jr_008_467e

jr_008_4659:
    ld a, $00
    ldh [$ffad], a
    ld bc, $0080
    ld de, $0040
    add hl, bc
    jr jr_008_467e

jr_008_4666:
    ld a, $01
    ldh [$ffad], a
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    jr jr_008_467e

jr_008_4673:
    ld a, $00
    ldh [$ffad], a
    ld bc, $0002
    ld de, $0002
    add hl, bc

jr_008_467e:
    inc hl
    ld a, [hl-]
    and $40
    jr z, jr_008_46fb

    ld a, [hl]
    cp $49
    jp z, Jump_008_468c

    jr jr_008_46fb

Jump_008_468c:
    ld a, $78
    ldh [$ffa4], a
    call Call_008_6854
    ld a, $67
    call $16e3
    call Call_008_6b6b
    xor a
    ld [$cb45], a
    ld hl, $b93a
    ld bc, $0001
    call Call_000_0a27
    call Call_000_104c
    ld a, [$c60d]
    cp $00
    jr z, jr_008_46c9

    cp $01
    jr z, jr_008_46d9

    cp $02
    jr z, jr_008_46ea

    ld a, [$c60a]
    ld [$c64a], a
    ld a, [$c60b]
    sub $18
    ld [$c64b], a
    ret


jr_008_46c9:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $02
    ld [$c64b], a
    ret


jr_008_46d9:
    ld a, [$c60a]
    sub $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_008_46ea:
    ld a, [$c60a]
    add $0a
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_008_46fb:
    ld a, [$cb45]
    or a
    ret z

    ld a, [$c60d]
    cp $00
    jr z, jr_008_471f

    cp $01
    jr z, jr_008_4730

    cp $02
    jr z, jr_008_4742

    ld a, [$c60a]
    ld [$c64a], a
    ld a, [$c60b]
    sub $18
    ld [$c64b], a
    jr jr_008_4752

jr_008_471f:
    ld a, [$c60a]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $02
    ld [$c64b], a
    jr jr_008_4752

jr_008_4730:
    ld a, [$c60a]
    sub $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    jr jr_008_4752

jr_008_4742:
    ld a, [$c60a]
    add $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a

jr_008_4752:
    ld a, [$cb45]
    cp $01
    jp z, Jump_008_476b

    ld a, $01
    ldh [$ffa4], a
    call Call_008_6918
    ld a, $33
    call $16e3
    xor a
    ld [$cb45], a
    ret


Jump_008_476b:
    ld a, $00
    ldh [$ffa4], a
    call Call_008_6918
    ld a, $33
    call $16e3
    xor a
    ld [$cb45], a
    ret


    ld a, [$c912]
    cp $02
    ret nz

    ld a, $30
    call Call_000_23d8
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $01
    ldh [$ffa4], a
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld a, [$c60d]
    cp $00
    jr z, jr_008_47c6

    cp $01
    jr z, jr_008_47e4

    cp $02
    jr z, jr_008_4803

    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_008_47bc

    cp $0c
    jr z, jr_008_47b9

    ret


jr_008_47b9:
    call Call_008_4821

jr_008_47bc:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    call Call_008_6a1c
    ret


jr_008_47c6:
    ld bc, $0080
    ld de, $0040
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_008_47da

    cp $0c
    jr z, jr_008_47d7

    ret


jr_008_47d7:
    call Call_008_4821

jr_008_47da:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    call Call_008_6a1c
    ret


jr_008_47e4:
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_008_47f8

    cp $0c
    jr z, jr_008_47f5

    ret


jr_008_47f5:
    call Call_008_4821

jr_008_47f8:
    ld a, $01
    ldh [$ffad], a
    call Call_008_6854
    call Call_008_6a1c
    ret


jr_008_4803:
    ld bc, $0002
    ld de, $0002
    add hl, bc
    ld a, [hl]
    cp $00
    jr z, jr_008_4817

    cp $0c
    jr z, jr_008_4814

    ret


jr_008_4814:
    call Call_008_4821

jr_008_4817:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    call Call_008_6a1c
    ret


Call_008_4821:
    push bc
    push de
    push hl
    ld a, $37
    call $16e3
    ld a, $3c
    ld [$c912], a
    ld [$cb8c], a
    ld a, $07
    ld [$cb8d], a
    ld a, $00
    call Call_000_166a
    ld a, [$b904]
    cp $0a
    jr z, jr_008_484e

    inc a
    ld [$b904], a
    ld a, [$b8ee]
    add $0a
    ld [$b8ee], a

jr_008_484e:
    pop hl
    pop de
    pop bc
    ret


    ld a, [$c912]
    cp $14
    jr z, jr_008_489a

    ld a, [$c912]
    cp $02
    ret nz

    ld a, $37
    call Call_000_23d8
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb45]
    or a
    ret z

    ld a, [$cb45]
    cp $01
    jr nz, jr_008_4888

    ld a, $31
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    xor a
    ld [$cb45], a
    ret


jr_008_4888:
    ld a, $30
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    xor a
    ld [$cb45], a
    ret


jr_008_489a:
    ld a, $2b
    call $16e3
    ret


    ld a, [$c912]
    cp $02
    ret nz

    ld a, $38
    call Call_000_23d5
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb45]
    or a
    ret z

    ld a, $34
    call $16e3
    ld hl, $63eb
    ld a, $01
    call Call_000_1f96
    xor a
    ld [$cb45], a
    ld hl, $b938
    ld bc, $0006
    call Call_000_0a27
    call Call_000_0fe5
    ret


    ld a, [$c912]
    cp $30
    jr z, jr_008_48dc

    ret


jr_008_48dc:
    ld a, $3b
    call Call_000_23d8
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, $ff
    ldh [$ffae], a
    ldh [$ffaf], a
    xor a
    ldh [$ffa4], a
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff7e
    ld de, $ffbe
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    xor a
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $01
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff82
    ld de, $ffc2
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $02
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    ld a, $03
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0000
    ld de, $0000
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $04
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    ld de, $0002
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $05
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $007e
    ld de, $003e
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    ld a, $06
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    ld de, $0040
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $07
    ldh [$ffac], a
    call Call_008_49dd
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0082
    ld de, $0042
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $08
    ldh [$ffac], a
    call Call_008_49dd
    ret


    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop

Call_008_49dd:
    push hl
    ldh a, [$ffac]
    ld hl, $49d4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cb93], a
    pop hl
    ld a, [hl]
    cp $02
    jr z, jr_008_4a16

    inc hl
    ld a, [hl-]
    and $40
    ret z

    ld a, [hl]
    cp $49
    jr z, jr_008_4a29

    cp $49
    ret c

    inc hl
    ld a, [hl-]
    and $01
    ret z

    ld a, $01
    ldh [$ffa4], a
    call Call_008_6854
    ldh a, [$ffac]
    call Call_008_63a9
    xor a
    ld [$cb45], a
    ret


jr_008_4a16:
    xor a
    ld [$cb45], a
    xor a
    ldh [$ffa4], a
    call Call_008_6854
    ldh a, [$ffac]
    cp $04
    ret z

    call Call_008_63a9
    ret


jr_008_4a29:
    ldh a, [$ffac]
    cp $00
    jr z, jr_008_4a47

    cp $02
    jr z, jr_008_4a47

    cp $06
    jr z, jr_008_4a47

    cp $08
    jr z, jr_008_4a47

    ldh a, [$ffaf]
    cp $ff
    jr nz, jr_008_4a51

    ldh a, [$ffac]
    ldh [$ffaf], a
    jr jr_008_4a51

jr_008_4a47:
    ldh a, [$ffae]
    cp $ff
    jr nz, jr_008_4a51

    ldh a, [$ffac]
    ldh [$ffae], a

jr_008_4a51:
    xor a
    ld [$cb45], a
    ld a, $78
    ldh [$ffa4], a
    call Call_008_6854
    ld hl, $b93a
    ld bc, $0001
    call Call_000_0a27
    call Call_000_104c
    ldh a, [$ffac]
    cp $04
    ret z

    call Call_008_6410
    ret


    ld a, [$c912]
    cp $28
    jr z, jr_008_4a80

    ld a, [$c912]
    cp $08
    jr z, jr_008_4a97

    ret


jr_008_4a80:
    ld a, $32
    call Call_000_23d8
    ld a, [$c0a7]
    cp $03
    ret z

    ld a, [$c0a7]
    cp $04
    ret z

    ld a, $36
    call $16e3
    ret


jr_008_4a97:
    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff7e
    ld de, $ffbe
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    xor a
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $01
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff82
    ld de, $ffc2
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $02
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    ld a, $03
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0000
    ld de, $0000
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $04
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    ld de, $0002
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $05
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $007e
    ld de, $003e
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    ld a, $06
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    ld de, $0040
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $07
    ldh [$ffac], a
    call Call_008_4f16
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0082
    ld de, $0042
    add hl, bc
    xor a
    ldh [$ffad], a
    ld a, $08
    ldh [$ffac], a
    call Call_008_4f16
    ret


Jump_008_4b81:
    ld a, [$c912]
    cp $10
    ret nz

    ld a, $30
    call Call_000_23d8
    ret


    ld a, [$c0a7]
    cp $01
    jp nz, Jump_008_4b81

    ld a, $01
    ldh [$ffa4], a
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld a, [$c60d]
    cp $00
    jp z, Jump_008_4c5b

    cp $01
    jp z, Jump_008_4d05

    cp $02
    jp z, Jump_008_4dae

    ld a, [$c912]
    cp $10
    jr z, jr_008_4bd4

    cp $0e
    jr z, jr_008_4bec

    cp $0c
    jr z, jr_008_4bf8

    cp $0a
    jr z, jr_008_4c04

    cp $08
    jr z, jr_008_4c11

    cp $06
    jr z, jr_008_4c1d

    cp $01
    jp z, Jump_008_4e56

    ret


jr_008_4bd4:
    push hl
    ld a, $2c
    call $16e3
    ld a, $30
    call Call_000_23d8
    pop hl
    ld a, $01
    ldh [$ffb7], a
    ld bc, $ff80
    ld de, $ffc0
    jr jr_008_4c29

jr_008_4bec:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $ff00
    ld de, $ff80
    jr jr_008_4c29

jr_008_4bf8:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fe80
    ld de, $ff40
    jr jr_008_4c29

jr_008_4c04:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fe00
    ld de, $ff00
    jr jr_008_4c29

    ret


jr_008_4c11:
    ldh a, [$ffb7]

Jump_008_4c13:
    or a
    ret nz

    ld bc, $fd80
    ld de, $fec0
    jr jr_008_4c29

jr_008_4c1d:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fd00
    ld de, $fe80
    jr jr_008_4c29

jr_008_4c29:
    ld a, $01
    ldh [$ffb7], a
    add hl, bc
    ld a, [hl]
    ldh [$ffb6], a
    cp $00
    jr z, jr_008_4c49

    cp $0c
    jr z, jr_008_4c46

    cp $0d
    jr z, jr_008_4c46

    cp $11
    jr z, jr_008_4c49

    cp $12
    jr z, jr_008_4c49

    ret


jr_008_4c46:
    call Call_008_4821

jr_008_4c49:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    xor a
    ldh [$ffb7], a
    ldh a, [$ffb6]
    cp $11
    ret z

    call Call_008_6a1c
    ret


Jump_008_4c5b:
    ld a, [$c912]
    cp $10
    jr z, jr_008_4c7c

    cp $0e
    jr z, jr_008_4c95

    cp $0c
    jr z, jr_008_4ca2

    cp $0a
    jr z, jr_008_4cae

    cp $08
    jr z, jr_008_4cbb

    cp $06
    jr z, jr_008_4cc7

    cp $01
    jp z, Jump_008_4e56

    ret


jr_008_4c7c:
    push hl
    ld a, $2c
    call $16e3
    ld a, $30
    call Call_000_23d8
    pop hl
    ld a, $01
    ldh [$ffb7], a
    ld bc, $0080
    ld de, $0040
    jp Jump_008_4cd3


jr_008_4c95:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0100
    ld de, $0080
    jp Jump_008_4cd3


jr_008_4ca2:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0180
    ld de, $00c0
    jr jr_008_4cd3

jr_008_4cae:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0200
    ld de, $0100
    jr jr_008_4cd3

    ret


jr_008_4cbb:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0280
    ld de, $0140
    jr jr_008_4cd3

jr_008_4cc7:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0300
    ld de, $0180
    jr jr_008_4cd3

Jump_008_4cd3:
jr_008_4cd3:
    ld a, $01
    ldh [$ffb7], a
    add hl, bc
    ld a, [hl]
    ldh [$ffb6], a
    cp $00
    jr z, jr_008_4cf3

    cp $0c
    jr z, jr_008_4cf0

    cp $0d
    jr z, jr_008_4cf0

    cp $11
    jr z, jr_008_4cf3

    cp $12
    jr z, jr_008_4cf3

    ret


jr_008_4cf0:
    call Call_008_4821

jr_008_4cf3:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    xor a
    ldh [$ffb7], a
    ldh a, [$ffb6]
    cp $11
    ret z

    call Call_008_6a1c
    ret


Jump_008_4d05:
    ld a, [$c912]
    cp $10
    jr z, jr_008_4d26

    cp $0e
    jr z, jr_008_4d3e

    cp $0c
    jr z, jr_008_4d4a

    cp $0a
    jr z, jr_008_4d56

    cp $08
    jr z, jr_008_4d63

    cp $06
    jr z, jr_008_4d6f

    cp $01
    jp z, Jump_008_4e56

    ret


jr_008_4d26:
    push hl
    ld a, $2c
    call $16e3
    ld a, $30
    call Call_000_23d8
    pop hl
    ld a, $01
    ldh [$ffb7], a
    ld bc, $fffe
    ld de, $fffe
    jr jr_008_4d7b

jr_008_4d3e:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fffc
    ld de, $fffc
    jr jr_008_4d7b

jr_008_4d4a:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fffa
    ld de, $fffa
    jr jr_008_4d7b

jr_008_4d56:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fff8
    ld de, $fff8
    jr jr_008_4d7b

    ret


jr_008_4d63:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fff6
    ld de, $fff6
    jr jr_008_4d7b

jr_008_4d6f:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $fff4
    ld de, $fff4
    jr jr_008_4d7b

jr_008_4d7b:
    ld a, $01
    ldh [$ffb7], a
    add hl, bc
    ld a, [hl]
    ldh [$ffb6], a
    cp $00
    jr z, jr_008_4d9b

    cp $0c
    jr z, jr_008_4d98

    cp $0d
    jr z, jr_008_4d98

    cp $11
    jr z, jr_008_4d9b

    cp $12
    jr z, jr_008_4d9b

    ret


jr_008_4d98:
    call Call_008_4821

jr_008_4d9b:
    ld a, $01
    ldh [$ffad], a
    call Call_008_6854
    xor a
    ldh [$ffb7], a
    ldh a, [$ffb6]
    cp $11
    ret z

    call Call_008_6a1c
    ret


Jump_008_4dae:
    ld a, [$c912]
    cp $10
    jr z, jr_008_4dcf

    cp $0e
    jr z, jr_008_4de7

    cp $0c
    jr z, jr_008_4df3

    cp $0a
    jr z, jr_008_4dff

    cp $08
    jr z, jr_008_4e0c

    cp $06
    jr z, jr_008_4e18

    cp $01
    jp z, Jump_008_4e56

    ret


jr_008_4dcf:
    push hl
    ld a, $2c
    call $16e3
    ld a, $30
    call Call_000_23d8
    pop hl
    ld a, $01
    ldh [$ffb7], a
    ld bc, $0002
    ld de, $0002
    jr jr_008_4e24

jr_008_4de7:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0004
    ld de, $0004
    jr jr_008_4e24

jr_008_4df3:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0006
    ld de, $0006
    jr jr_008_4e24

jr_008_4dff:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $0008
    ld de, $0008
    jr jr_008_4e24

    ret


jr_008_4e0c:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $000a
    ld de, $000a
    jr jr_008_4e24

jr_008_4e18:
    ldh a, [$ffb7]
    or a
    ret nz

    ld bc, $000c
    ld de, $000c
    jr jr_008_4e24

jr_008_4e24:
    ld a, $01
    ldh [$ffb7], a
    add hl, bc
    ld a, [hl]
    ldh [$ffb6], a
    cp $00
    jr z, jr_008_4e44

    cp $0c
    jr z, jr_008_4e41

    cp $0d
    jr z, jr_008_4e41

    cp $11
    jr z, jr_008_4e44

    cp $12
    jr z, jr_008_4e44

    ret


jr_008_4e41:
    call Call_008_4821

jr_008_4e44:
    xor a
    ldh [$ffad], a
    call Call_008_6854
    xor a
    ldh [$ffb7], a
    ldh a, [$ffb6]
    cp $11
    ret z

    call Call_008_6a1c
    ret


Jump_008_4e56:
    ld a, [$cbe9]
    or a
    ret z

    xor a
    ld [$cbe9], a
    ld a, $80
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    call Call_008_6afd
    ret


    ld a, [$c912]
    cp $40
    jr z, jr_008_4e7c

    ld a, [$c912]
    cp $20
    jr z, jr_008_4e7c

    ret


jr_008_4e7c:
    ld a, $3d
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $24
    jr z, jr_008_4e8a

    ret


jr_008_4e8a:
    ld a, $3c
    call Call_000_23d8
    ret


    ld a, [$b908]
    or a
    ret z

    ld a, [$c912]
    cp $40
    ret nz

    ld a, [$b908]
    dec a
    ld [$b908], a
    ld a, $32
    call Call_000_23d8
    ld a, $35
    call $16e3
    ld a, [$c60d]
    cp $00
    jr z, jr_008_4ed2

    cp $01
    jr z, jr_008_4ee8

    cp $02
    jp z, Jump_008_4eff

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    xor a
    ldh [$ffad], a
    call Call_008_4f16
    ret


jr_008_4ed2:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    ld de, $0040
    add hl, bc
    xor a
    ldh [$ffad], a
    call Call_008_4f16
    ret


jr_008_4ee8:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    ld a, $01
    ldh [$ffad], a
    call Call_008_4f16
    ret


Jump_008_4eff:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    ld de, $0002
    add hl, bc
    ld a, $00

Jump_008_4f10:
    ldh [$ffad], a
    call Call_008_4f16
    ret


Call_008_4f16:
    ld a, [hl]
    cp $11
    jr z, jr_008_4f56

    inc hl
    ld a, [hl-]
    and $40
    ret z

    ld a, [hl]
    and $f0
    cp $40
    ret z

    cp $50
    jr z, jr_008_4f5e

    cp $60
    jr z, jr_008_4f5e

    cp $70
    jr z, jr_008_4f72

    cp $80
    jr z, jr_008_4f72

    cp $90
    jr z, jr_008_4f86

    cp $a0
    jr z, jr_008_4f9a

    cp $b0
    jr z, jr_008_4fae

    cp $c0
    jr z, jr_008_4fc2

    cp $d0
    jp z, Jump_008_4fd6

    cp $e0
    jp z, Jump_008_4fea

    cp $f0
    jp z, Jump_008_4fea

    ret


jr_008_4f56:
    ld a, $02
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4f5e:
    ld a, [hl+]
    cp $60
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $50
    add $04
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4f72:
    ld a, [hl+]
    cp $88
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $70
    add $15
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4f86:
    ld a, [hl+]
    cp $98
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $90
    add $2e
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4f9a:
    ld a, [hl+]
    cp $ac
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $a0
    add $37
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4fae:
    ld a, [hl+]
    cp $b8
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $b0
    add $44
    ldh [$ffa4], a
    call Call_008_6854
    ret


jr_008_4fc2:
    ld a, [hl+]
    cp $cc
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $c0
    add $4d
    ldh [$ffa4], a
    call Call_008_6854
    ret


Jump_008_4fd6:
    ld a, [hl+]
    cp $dc
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $d0
    add $5a
    ldh [$ffa4], a
    call Call_008_6854
    ret


Jump_008_4fea:
    ld a, [hl+]
    cp $f0
    ret z

    ld a, [hl-]
    and $08
    ret nz

    ld a, [hl]
    inc a
    sub $e0
    add $67
    ldh [$ffa4], a
    call Call_008_6854
    ret


    ld a, $1e
    ld [$b908], a
    ld a, [$c912]
    cp $0a
    ret nz

    ld a, $35
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $28
    ret nz

    ld a, $3e
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $28
    ret nz

    ld a, $3f
    call Call_000_23d8
    ret


    ld a, [$c912]
    cp $30
    jp z, Jump_008_51bb

    ld a, [$c0a7]
    cp $01
    ret nz

    ld a, [$c912]
    cp $10
    ret nz

    ld a, [$cb74]
    cp $00
    jr z, jr_008_5063

    cp $01
    jr z, jr_008_5069

    cp $02
    jr z, jr_008_506f

    cp $03
    jr z, jr_008_5075

    cp $04
    jr z, jr_008_507b

    cp $05
    jr z, jr_008_5081

    cp $06
    jr z, jr_008_5087

    cp $07
    jr z, jr_008_508d

    cp $08
    jr z, jr_008_5093

    ret


jr_008_5063:
    ld a, $03
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_5069:
    ld a, $04
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_506f:
    ld a, $15
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_5075:
    ld a, $2e
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_507b:
    ld a, $37
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_5081:
    ld a, $44
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_5087:
    ld a, $4d
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_508d:
    ld a, $5a
    ldh [$ffa4], a
    jr jr_008_5097

jr_008_5093:
    ld a, $67
    ldh [$ffa4], a

jr_008_5097:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff7e
    ld de, $ffbe
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_50b1

    cp $12
    jr z, jr_008_50b1

    jr jr_008_50b8

jr_008_50b1:
    ld a, $01
    ldh [$ffad], a
    call Call_008_6854

jr_008_50b8:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    ld de, $ffc0
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_50d2

    cp $12
    jr z, jr_008_50d2

    jr jr_008_50d8

jr_008_50d2:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_50d8:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff82
    ld de, $ffc2
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_50f2

    cp $12
    jr z, jr_008_50f2

    jr jr_008_50f8

jr_008_50f2:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_50f8:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    ld de, $fffe
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_5112

    cp $12
    jr z, jr_008_5112

    jr jr_008_5119

jr_008_5112:
    ld a, $01
    ldh [$ffad], a
    call Call_008_6854

jr_008_5119:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0000
    ld de, $0000
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_5133

    cp $12
    jr z, jr_008_5133

    jr jr_008_5139

jr_008_5133:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_5139:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    ld de, $0002
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_5153

    cp $12
    jr z, jr_008_5153

    jr jr_008_5159

jr_008_5153:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_5159:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $007e
    ld de, $003e
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_5173

    cp $12
    jr z, jr_008_5173

    jr jr_008_517a

jr_008_5173:
    ld a, $01
    ldh [$ffad], a
    call Call_008_6854

jr_008_517a:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    ld de, $0040
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_5194

    cp $12
    jr z, jr_008_5194

    jr jr_008_519a

jr_008_5194:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_519a:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0082
    ld de, $0042
    add hl, bc
    ld a, [hl]
    cp $11
    jr z, jr_008_51b4

    cp $12
    jr z, jr_008_51b4

    jr jr_008_51ba

jr_008_51b4:
    xor a
    ldh [$ffad], a
    call Call_008_6854

jr_008_51ba:
    ret


Jump_008_51bb:
    ld a, $59
    call $16e3
    ld a, $31
    call Call_000_23d8
    ret


    ld a, [$c603]
    cp $01
    ret nz

    ld a, [$cc73]
    or a
    ret z

    cp $01
    jr z, jr_008_51e2

    cp $02
    jr z, jr_008_51e8

    cp $03
    ret nz

    ld a, $3e
    call $16e3
    ret


jr_008_51e2:
    ld a, $40
    call $16e3
    ret


jr_008_51e8:
    ld a, $3f
    call $16e3
    ret


    ld a, [$cb4b]
    cp $00
    jr z, jr_008_524d

    cp $10
    jp z, Jump_008_5273

    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld d, h
    ld e, l
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_523e

    pop hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_5224

    xor a
    ld [de], a

jr_008_5224:
    dec a
    ld [hl], a
    ld a, [$cb5a]
    ld b, a
    ld a, $0a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld [de], a
    inc de
    ld a, [$cb5b]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


jr_008_523e:
    dec a
    ld [hl], a
    or a
    jr z, jr_008_5245

    pop hl
    ret


jr_008_5245:
    ld a, [$cb4b]
    call Call_008_5293
    pop hl
    ret


jr_008_524d:
    ld a, [$c651]
    or a
    jr nz, jr_008_5258

    xor a
    ld [$c640], a
    ret


jr_008_5258:
    dec a
    ld [$c651], a
    ld a, [$cb5a]
    ld b, a
    ld a, [$c64a]
    add b
    ld [$c64a], a
    ld a, [$cb5b]
    ld b, a
    ld a, [$c64b]
    add b
    ld [$c64b], a
    ret


Jump_008_5273:
    ld a, [$c912]
    cp $01
    ret nz

    xor a
    ld [$c640], a
    ld a, [$c642]
    cp $37
    ret nz

    ld a, $60
    ld [$c912], a
    ld a, $07
    ld [$cb8d], a
    ld a, $20
    call Call_000_152f
    ret


Call_008_5293:
    ld de, $cb94
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ldh [$ffa6], a
    inc de
    ld a, [de]
    ldh [$ffa7], a
    inc de
    ld a, [de]
    ldh [$ffa8], a
    inc de
    ld a, [de]
    ldh [$ffa9], a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa6]
    ld [hl+], a
    ldh a, [$ffa7]
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa8]
    ld [hl+], a
    ldh a, [$ffa9]
    ld [hl], a
    ret


    ld a, [$cb4b]
    cp $00
    jp z, Jump_008_52ef

    cp $02
    jp z, Jump_008_52ef

    cp $06
    jp z, Jump_008_52ef

    cp $08
    jp z, Jump_008_52ef

    jp Jump_008_53b8


Jump_008_52ef:
    ld a, [$cb4b]
    ld b, a
    ldh a, [$ffae]
    cp b
    jp z, Jump_008_5370

    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld d, h
    ld e, l
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_008_53a9

    pop hl
    push hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_5325

    xor a
    ld [de], a

jr_008_5325:
    dec a
    ld [hl], a
    ld a, [$cb5a]
    ld b, a
    ld a, $0a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld [de], a
    inc de
    ld a, [$cb5b]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    pop hl
    push hl
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld h, $00
    ldh a, [$ffae]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld b, h
    ld c, l
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    pop hl
    ld a, [bc]
    ld [hl], a
    ret


Jump_008_5370:
    ld h, $00
    ldh a, [$ffae]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld d, h
    ld e, l
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_538f

    xor a
    ld [de], a
    ret


jr_008_538f:
    dec a
    ld [hl], a
    ld a, [$cb5a]
    ld b, a
    ld a, $0a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld [de], a
    inc de
    ld a, [$cb5b]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


Jump_008_53a9:
    dec a
    ld [hl], a
    or a
    jr z, jr_008_53b0

    pop hl
    ret


jr_008_53b0:
    ld a, [$cb4b]
    call Call_008_5293
    pop hl
    ret


Jump_008_53b8:
    ld a, [$cb4b]
    ld b, a
    ldh a, [$ffaf]
    cp b
    jp z, Jump_008_5439

    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld d, h
    ld e, l
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_008_53a9

    pop hl
    push hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_53ee

    xor a
    ld [de], a

jr_008_53ee:
    dec a
    ld [hl], a
    ld a, [$cb5a]
    ld b, a
    ld a, $0a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld [de], a
    inc de
    ld a, [$cb5b]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    pop hl
    push hl
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld h, $00
    ldh a, [$ffaf]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld b, h
    ld c, l
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    inc a
    ld [de], a
    inc de
    pop hl
    ld a, [bc]
    ld [hl], a
    ret


Jump_008_5439:
    ld h, $00
    ldh a, [$ffaf]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    ld d, h
    ld e, l
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_008_53a9

    pop hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_008_5467

    xor a
    ld [de], a
    ret


jr_008_5467:
    dec a
    ld [hl], a
    ld a, [$cb5a]
    ld b, a
    ld a, $0a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    add b
    ld [de], a
    inc de
    ld a, [$cb5b]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


    ret


    ret


    ret


    ret


    ld a, [$c7d1]
    or a
    jr z, jr_008_5490

    dec a
    ld [$c7d1], a
    ret


jr_008_5490:
    xor a
    ld [$c7c0], a
    ld [$c7e0], a
    ret


    ld a, [$b8a0]
    cp $02
    jr z, jr_008_54b3

    ld a, [$c7ca]
    dec a
    ld [$c7ca], a
    ld a, [$c7cb]
    cp $60
    jr z, jr_008_54b4

    inc a
    inc a
    ld [$c7cb], a
    ret


jr_008_54b3:
    ret


jr_008_54b4:
    ld a, $60
    ld [$c7ca], a
    xor a
    ld [$c7cb], a
    ret


    ld a, [$c780]
    or a
    ret z

    call Call_008_555f
    ld a, [$c786]
    ld l, a
    ld a, [$c787]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_008_54f1

    ld a, c
    cp $f0
    jr c, jr_008_54f1

    jr jr_008_54fc

jr_008_54f1:
    ld a, b
    or a
    jr nz, jr_008_54fa

    ld a, c
    cp $e0
    jr c, jr_008_54fc

jr_008_54fa:
    ld c, $c8

jr_008_54fc:
    ld a, c
    ld [$c78a], a
    ld a, [$c788]
    ld l, a
    ld a, [$c789]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_008_552f

    ld a, c
    cp $f0
    jr c, jr_008_552f

    jr jr_008_553a

jr_008_552f:
    ld a, b
    or a
    jr nz, jr_008_5538

    ld a, c
    cp $e0
    jr c, jr_008_553a

jr_008_5538:
    ld c, $c8

jr_008_553a:
    ld a, c
    ld [$c78b], a
    ret


    nop
    ld bc, $0302
    inc bc
    nop
    ld bc, $0002
    ld bc, $0203
    ld [bc], a
    ld bc, $0300
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001

Call_008_555f:
    ld a, [$c793]
    cp $00
    ret z

    ld a, [$cbfe]
    or a
    jr nz, jr_008_556e

    call Call_008_572c

jr_008_556e:
    ld a, [$cbfe]
    or a
    call nz, Call_008_5763
    ld a, [$c791]
    ld b, a
    ld a, [$c792]
    or b
    jp z, Jump_008_565f

    ld hl, $c791
    ld bc, $ffff
    call Call_000_0a27
    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$c78d]
    cp $00
    jr z, jr_008_55cd

    cp $03
    jp z, Jump_008_55f9

    cp $01
    jp z, Jump_008_562c

    ld bc, $fffc
    ld de, $fffc
    call Call_008_5827
    ld bc, $fffc
    ld de, $0004
    call Call_008_5827
    ret nz

    ld de, $0400
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    ld hl, $c786
    ld a, [$c78c]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


jr_008_55cd:
    ld bc, $fffc
    ld de, $fffc
    call Call_008_5827
    ld bc, $0004
    ld de, $fffc
    call Call_008_5827
    ld de, $0004
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    ld hl, $c788
    ld a, [$c78c]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


Jump_008_55f9:
    ld bc, $fffc
    ld de, $0004
    call Call_008_5827
    ld bc, $0004
    ld de, $0004
    call Call_008_5827
    ld de, $00fc
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    ld a, [$c78c]
    ld b, a
    ld a, [$c788]
    sub b
    ld [$c788], a
    ld a, [$c789]
    sbc $00
    ld [$c789], a
    ret


Jump_008_562c:
    ld bc, $0004
    ld de, $fffc
    call Call_008_5827
    ld bc, $0004
    ld de, $0004
    call Call_008_5827
    ld de, $fc00
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    ld a, [$c78c]
    ld b, a
    ld a, [$c786]
    sub b
    ld [$c786], a
    ld a, [$c787]
    sbc $00
    ld [$c787], a
    ret


Jump_008_565f:
    ldh a, [$ff9c]
    and $0f
    ld hl, $554f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, jr_008_56a8

    cp $01
    jr z, jr_008_5679

    cp $02
    jr z, jr_008_5690

jr_008_5679:
    ld a, $c0
    ld [$c791], a
    xor a
    ld [$c792], a
    ld a, [$c78d]
    ld b, a
    add $00
    call Call_000_160f
    xor a
    ld [$c78c], a
    ret


jr_008_5690:
    ld a, $20
    ld [$c791], a
    xor a
    ld [$c792], a
    ld a, [$c78d]
    ld b, a
    add $08
    call Call_000_160f
    ld a, $02
    ld [$c78c], a
    ret


jr_008_56a8:
    ld a, [$c78d]
    cp $00
    jr z, jr_008_56c8

    cp $01
    jp z, Jump_008_56d7

    cp $02
    jp z, Jump_008_56e6

    ld de, $00fc
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    jr jr_008_56f3

jr_008_56c8:
    ld de, $0004
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    jr jr_008_56f3

Jump_008_56d7:
    ld de, $fc00
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

    jr jr_008_56f3

Jump_008_56e6:
    ld de, $0400
    call Call_008_5894
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5727

jr_008_56f3:
    ld hl, $089f
    ld a, [$c0a8]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $0f
    ld hl, $553f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c78d], a
    ld a, $40
    ld [$c791], a
    xor a
    ld [$c792], a
    ld a, [$c78d]
    ld b, a
    add $04
    call Call_000_160f
    ld a, $01
    ld [$c78c], a
    ret


Jump_008_5727:
    xor a
    ld [$c78c], a
    ret


Call_008_572c:
    call Call_008_639d
    cp $01
    jr z, jr_008_574d

    ld a, [$c602]
    cp $4f
    jr z, jr_008_574d

    cp $50
    jr z, jr_008_574d

    cp $51
    jr z, jr_008_574d

    cp $52
    jr z, jr_008_574d

    ld a, [$c90d]
    or a
    jr nz, jr_008_574d

    ret


jr_008_574d:
    ld a, [$c78d]
    add $00
    call Call_000_160f
    ld a, $3c
    ld [$c791], a
    xor a
    ld [$c792], a
    ld [$c78c], a
    pop hl
    ret


Call_008_5763:
    ld a, [$cbfe]
    dec a
    ld [$cbfe], a
    or a
    ret nz

    ld a, [$c606]
    ld l, a
    ld a, [$c607]
    ld h, a
    ld a, [$c786]
    sub l
    ld l, a
    ld a, [$c787]
    sbc h
    ld h, a
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, [$c788]
    sub c
    ld c, a
    ld a, [$c789]
    sbc b
    ld b, a
    push hl
    push bc
    call Call_008_5810
    call Call_008_581b
    ld a, h
    cp b
    jr z, jr_008_57a0

    jr c, jr_008_57ad

    jr jr_008_57a4

jr_008_57a0:
    ld a, l
    cp c
    jr c, jr_008_57ad

jr_008_57a4:
    pop bc
    pop hl
    ld a, h
    and $80
    jr z, jr_008_57b6

    jr jr_008_57c8

jr_008_57ad:
    pop bc
    pop hl
    ld a, b
    and $80
    jr z, jr_008_57da

    jr jr_008_57ec

jr_008_57b6:
    call Call_008_5810
    ld a, l
    ld [$c791], a
    ld a, h
    ld [$c792], a
    ld a, $01
    ld [$c78d], a
    jr jr_008_57fc

jr_008_57c8:
    call Call_008_5810
    ld a, l
    ld [$c791], a
    ld a, h
    ld [$c792], a
    ld a, $02
    ld [$c78d], a
    jr jr_008_57fc

jr_008_57da:
    call Call_008_581b
    ld a, c
    ld [$c791], a
    ld a, b
    ld [$c792], a
    ld a, $03
    ld [$c78d], a
    jr jr_008_57fc

jr_008_57ec:
    call Call_008_581b
    ld a, c
    ld [$c791], a
    ld a, b
    ld [$c792], a
    ld a, $00
    ld [$c78d], a

jr_008_57fc:
    ld b, a
    add $04
    call Call_000_160f
    ld a, $02
    ld [$c78c], a
    xor a
    ld [$cbfe], a
    xor a
    ld [$c908], a
    ret


Call_008_5810:
    ld a, l
    and $80
    ret z

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

Call_008_581b:
    ld a, c
    and $80
    ret z

    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    inc bc
    ret


Call_008_5827:
    ld a, [$c786]
    ld l, a
    ld a, [$c787]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c788]
    ld l, a
    ld a, [$c789]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_008_5932
    ld a, [$c78d]
    cp $00
    jr z, jr_008_5859

    cp $01
    jr z, jr_008_5863

    cp $02
    jr z, jr_008_586c

    ld d, h
    ld e, l
    ld bc, $ff80
    add hl, bc
    inc hl
    jr jr_008_5873

    ret


jr_008_5859:
    ld d, h
    ld e, l
    ld bc, $0080
    add hl, bc
    inc hl
    jr jr_008_5873

    ret


jr_008_5863:
    ld d, h
    ld e, l
    ld bc, $fffe
    add hl, bc
    inc hl
    jr jr_008_5873

jr_008_586c:
    ld d, h
    ld e, l
    ld bc, $0002
    add hl, bc
    inc hl

jr_008_5873:
    ld a, [hl]
    and $01
    jr nz, jr_008_587e

    ld a, [hl]
    and $02
    jr nz, jr_008_587e

    ret


jr_008_587e:
    ld a, [$c78d]
    add $00
    call Call_000_160f
    ld a, $78
    ld [$c791], a
    xor a
    ld [$c792], a
    ld [$c78c], a
    pop hl
    ret


Call_008_5894:
    xor a
    ld [$cb83], a
    ld a, [$c780]
    or a
    ret z

    ld a, [$c78d]
    cp $01
    jr z, jr_008_58e4

    cp $02
    jr z, jr_008_58e4

    ld a, [$c60a]
    ld b, a
    ld a, [$c78a]
    add d
    sub b
    bit 7, a
    jr z, jr_008_58b7

    cpl
    inc a

jr_008_58b7:
    cp $0e
    ret nc

    ld a, [$c60b]
    ld b, a
    ld a, [$c78b]
    add e
    cp b
    jr nc, jr_008_58d1

    sub b
    bit 7, a
    jr z, jr_008_58cc

    cpl
    inc a

jr_008_58cc:
    cp $20
    ret nc

    jr jr_008_58db

jr_008_58d1:
    sub b
    bit 7, a
    jr z, jr_008_58d8

    cpl
    inc a

jr_008_58d8:
    cp $0d
    ret nc

jr_008_58db:
    ld a, $01
    ld [$cb83], a
    jp Jump_008_591c


    ret


jr_008_58e4:
    ld a, [$c60a]
    ld b, a
    ld a, [$c78a]
    add d
    sub b
    bit 7, a
    jr z, jr_008_58f3

    cpl
    inc a

jr_008_58f3:
    cp $13
    ret nc

    ld a, [$c60b]
    ld b, a
    ld a, [$c78b]
    add e
    cp b
    jr nc, jr_008_590d

    sub b
    bit 7, a
    jr z, jr_008_5908

    cpl
    inc a

jr_008_5908:
    cp $20
    ret nc

    jr jr_008_58db

jr_008_590d:
    sub b
    bit 7, a
    jr z, jr_008_5914

    cpl
    inc a

jr_008_5914:
    cp $07
    ret nc

    ld a, $01
    ld [$cb83], a

Jump_008_591c:
    ld a, [$c78d]
    add $00
    call Call_000_160f
    ld a, $3c
    ld [$c791], a
    xor a
    ld [$c792], a
    ld [$c78c], a
    pop hl
    ret


Call_008_5932:
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, c
    add $09
    ld l, a
    ld a, b
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    nop
    ld bc, $0302
    inc bc
    nop
    ld bc, $0002
    ld bc, $0203
    ld [bc], a
    ld bc, $0300
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    ld a, [$c7a0]
    or a
    ret z

    ld a, [$b8db]
    or a
    jr z, jr_008_59a8

    call Call_008_5e9f
    jr jr_008_59ab

jr_008_59a8:
    call Call_008_5a24

jr_008_59ab:
    ld a, [$c7a6]
    ld l, a
    ld a, [$c7a7]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_008_59d6

    ld a, c
    cp $f0
    jr c, jr_008_59d6

    jr jr_008_59e1

jr_008_59d6:
    ld a, b
    or a
    jr nz, jr_008_59df

    ld a, c
    cp $e0
    jr c, jr_008_59e1

jr_008_59df:
    ld c, $c8

jr_008_59e1:
    ld a, c
    ld [$c7aa], a
    ld a, [$c7a8]
    ld l, a
    ld a, [$c7a9]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_008_5a14

    ld a, c
    cp $f0
    jr c, jr_008_5a14

    jr jr_008_5a1f

jr_008_5a14:
    ld a, b
    or a
    jr nz, jr_008_5a1d

    ld a, c
    cp $e0
    jr c, jr_008_5a1f

jr_008_5a1d:
    ld c, $c8

jr_008_5a1f:
    ld a, c
    ld [$c7ab], a
    ret


Call_008_5a24:
    ld a, [$cb5a]
    or a
    jp nz, Jump_008_5d83

    ld a, [$cb5b]
    or a
    jp nz, Jump_008_5d83

    call Call_008_5d9a
    ld a, [$cbff]
    or a
    call nz, Call_008_5dce
    ld a, [$c7b1]
    ld b, a
    ld a, [$c7b2]
    or b
    jp z, Jump_008_5b25

    ld hl, $c7b1
    ld bc, $ffff
    call Call_000_0a27
    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$c7ad]
    cp $00
    jr z, jr_008_5a93

    cp $03
    jp z, Jump_008_5abf

    cp $01
    jp z, Jump_008_5af2

Jump_008_5a67:
    ld bc, $fffc
    ld de, $fffc
    call Call_008_6253
    ld bc, $fffc
    ld de, $0004
    call Call_008_6253
    ld de, $0400
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld hl, $c7a6
    ld a, [$c7ac]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


jr_008_5a93:
    ld bc, $fffc
    ld de, $fffc
    call Call_008_6253
    ld bc, $0004
    ld de, $fffc
    call Call_008_6253
    ld de, $0004
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld hl, $c7a8
    ld a, [$c7ac]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


Jump_008_5abf:
    ld bc, $fffc
    ld de, $0004
    call Call_008_6253
    ld bc, $0004
    ld de, $0004
    call Call_008_6253
    ld de, $00fc
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld a, [$c7ac]
    ld b, a
    ld a, [$c7a8]
    sub b
    ld [$c7a8], a
    ld a, [$c7a9]
    sbc $00
    ld [$c7a9], a
    ret


Jump_008_5af2:
    ld bc, $0004
    ld de, $fffc
    call Call_008_6253
    ld bc, $0004
    ld de, $0004
    call Call_008_6253
    ld de, $fc00
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld a, [$c7ac]
    ld b, a
    ld a, [$c7a6]
    sub b
    ld [$c7a6], a
    ld a, [$c7a7]
    sbc $00
    ld [$c7a7], a
    ret


Jump_008_5b25:
    ld a, [$c7b3]
    cp $00
    jp z, Jump_008_5bb7

    cp $01
    jp z, Jump_008_5bdd

    cp $02
    jp z, Jump_008_5be5

    cp $03
    jp z, Jump_008_5c0b

    cp $04
    jp z, Jump_008_5c2c

    cp $07
    jp z, Jump_008_5c2e

    ret


    ld bc, $0202
    ld bc, $0201
    ld bc, $0206
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld bc, $0102
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_008_5bb7:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $5b47
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jp z, Jump_008_5c49

    cp $02
    jp z, Jump_008_5cd5

    cp $06
    jp z, Jump_008_5cb7

    ret


Jump_008_5bdd:
    jp Jump_008_5c91


    ret


    jp Jump_008_5cd5


    ret


Jump_008_5be5:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $5b67
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jp z, Jump_008_5d06

    cp $02
    jp z, Jump_008_5cd5

    cp $01
    jp z, Jump_008_5c49

    ret


Jump_008_5c0b:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $5b87
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $04
    jp z, Jump_008_5d2d

    cp $07
    jp Jump_008_5d57


    ret


Jump_008_5c2c:
    jr jr_008_5c91

Jump_008_5c2e:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld hl, $5ba7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, jr_008_5c49

    cp $02
    jp z, Jump_008_5cd5

    ret


Jump_008_5c49:
jr_008_5c49:
    call Call_000_0890
    ld hl, $089f
    ld a, [$c0a8]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ldh a, [$ff9d]
    srl a
    srl a
    srl a
    srl a
    add b
    and $0f
    ld hl, $5978
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c7ad], a
    ld a, $40
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    ld b, a
    add $04
    call Call_000_1634
    ld a, $01
    ld [$c7ac], a
    ld a, $01
    ld [$c7b3], a
    ret


Jump_008_5c91:
jr_008_5c91:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld b, a
    ld a, $40
    add b
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $00
    ld [$c7b3], a
    ret


Jump_008_5cb7:
    ld a, $3e
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $12
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $06
    ld [$c7b3], a
    ret


Jump_008_5cd5:
    call Call_000_0890
    ld a, [$c0a8]
    and $01
    inc a
    ld [$c7ad], a
    ldh a, [$ff9d]
    and $1f
    ld b, a
    ld a, $40
    add b
    ld [$c7b1], a
    ld a, $01
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $08
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $02
    ld [$c7b3], a
    ret


Jump_008_5d06:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld b, a
    ld a, $20
    add b
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $0a
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $03
    ld [$c7b3], a
    ret


Jump_008_5d2d:
    call Call_000_0890
    ldh a, [$ff9d]
    srl a
    and $1f
    ld a, b
    ld a, $60
    add b
    ld [$c7b1], a
    ld a, $01
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $0e
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $04
    ld [$c7b3], a
    ret


Jump_008_5d57:
    call Call_000_0890
    ldh a, [$ff9d]
    srl a
    srl a
    and $0f
    ld b, a
    ld a, $f0
    add b
    ld [$c7b1], a
    ld a, $03
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $14
    call Call_000_1634
    ld a, $00
    ld [$c7ac], a
    ld a, $07
    ld [$c7b3], a
    ret


Jump_008_5d83:
    ld a, [$c7ad]
    add $00
    call Call_000_1634
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7ac], a
    ret


Jump_008_5d95:
    xor a
    ld [$c78c], a
    ret


Call_008_5d9a:
    call Call_008_639d
    cp $01
    jr z, jr_008_5dbb

    ld a, [$c602]
    cp $4f
    jr z, jr_008_5dbb

    cp $50
    jr z, jr_008_5dbb

    cp $51
    jr z, jr_008_5dbb

    cp $52
    jr z, jr_008_5dbb

    ld a, [$c90d]
    or a
    jr nz, jr_008_5dbb

    ret


jr_008_5dbb:
    ld a, [$c7ad]
    add $00
    call Call_000_1634
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7ac], a
    pop hl
    ret


Call_008_5dce:
    ld a, [$c906]
    or a
    jr z, jr_008_5dd9

    dec a
    ld [$c906], a
    ret


jr_008_5dd9:
    ld a, [$c606]
    ld l, a
    ld a, [$c607]
    ld h, a
    ld a, [$c7a6]
    sub l
    ld l, a
    ld a, [$c7a7]
    sbc h
    ld h, a
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, [$c7a8]
    sub c
    ld c, a
    ld a, [$c7a9]
    sbc b
    ld b, a
    push hl
    push bc
    call Call_008_5810
    call Call_008_581b
    ld a, h
    cp b
    jr z, jr_008_5e0d

    jr c, jr_008_5e1a

    jr jr_008_5e11

jr_008_5e0d:
    ld a, l
    cp c
    jr c, jr_008_5e1a

jr_008_5e11:
    pop bc
    pop hl
    ld a, h
    and $80
    jr z, jr_008_5e23

    jr jr_008_5e35

jr_008_5e1a:
    pop bc
    pop hl
    ld a, b
    and $80
    jr z, jr_008_5e47

    jr jr_008_5e59

jr_008_5e23:
    call Call_008_5810
    ld a, l
    ld [$c7b1], a
    ld a, h
    ld [$c7b2], a
    ld a, $01
    ld [$c7ad], a
    jr jr_008_5e69

jr_008_5e35:
    call Call_008_5810
    ld a, l
    ld [$c7b1], a
    ld a, h
    ld [$c7b2], a
    ld a, $02
    ld [$c7ad], a
    jr jr_008_5e69

jr_008_5e47:
    call Call_008_581b
    ld a, c
    ld [$c7b1], a
    ld a, b
    ld [$c7b2], a
    ld a, $03
    ld [$c7ad], a
    jr jr_008_5e69

jr_008_5e59:
    call Call_008_581b
    ld a, c
    ld [$c7b1], a
    ld a, b
    ld [$c7b2], a
    ld a, $00
    ld [$c7ad], a

jr_008_5e69:
    ld b, a
    ld a, [$b8db]
    or a
    jr z, jr_008_5e78

    ld a, b
    add $24
    call Call_000_164f
    jr jr_008_5e7e

jr_008_5e78:
    ld a, b
    add $04
    call Call_000_1634

jr_008_5e7e:
    ld a, $02
    ld [$c7ac], a
    xor a
    ld [$cbff], a
    ld a, $01
    ld [$c908], a
    ld a, [$b8db]
    cp $00
    jr z, jr_008_5e99

    ld a, $2e
    call Call_000_23d8
    ret


jr_008_5e99:
    ld a, $2f
    call Call_000_23d8
    ret


Call_008_5e9f:
    ld a, [$cb5a]
    or a
    jp nz, Jump_008_6207

    ld a, [$cb5b]
    or a
    jp nz, Jump_008_6207

    call Call_008_621c
    ld a, [$cbff]
    or a
    call nz, Call_008_5dce
    ld a, [$c7b1]
    ld b, a
    ld a, [$c7b2]
    or b
    jp z, Jump_008_5f9d

    ld hl, $c7b1
    ld bc, $ffff
    call Call_000_0a27
    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$c7ad]
    cp $00
    jr z, jr_008_5f0b

    cp $03
    jp z, Jump_008_5f37

    cp $01
    jp z, Jump_008_5f6a

    ld bc, $fffc
    ld de, $fffc
    call Call_008_6253
    ld bc, $fffc
    ld de, $0004
    ld de, $0400
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld hl, $c7a6
    ld a, [$c7ac]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


jr_008_5f0b:
    ld bc, $fffc
    ld de, $fffc
    call Call_008_6253
    ld bc, $0004
    ld de, $fffc
    call Call_008_6253
    ld de, $0004
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld hl, $c7a8
    ld a, [$c7ac]
    ld c, a
    ld b, $00
    call Call_000_0a27
    ret


Jump_008_5f37:
    ld bc, $fffc
    ld de, $0004
    call Call_008_6253
    ld bc, $0004
    ld de, $0004
    call Call_008_6253
    ld de, $00fc
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld a, [$c7ac]
    ld b, a
    ld a, [$c7a8]
    sub b
    ld [$c7a8], a
    ld a, [$c7a9]
    sbc $00
    ld [$c7a9], a
    ret


Jump_008_5f6a:
    ld bc, $0004
    ld de, $fffc
    call Call_008_6253
    ld bc, $0004
    ld de, $0004
    call Call_008_6253
    ld de, $fc00
    call Call_008_62e5
    ld a, [$cb83]
    or a
    jp nz, Jump_008_5d95

    ld a, [$c7ac]
    ld b, a
    ld a, [$c7a6]
    sub b
    ld [$c7a6], a
    ld a, [$c7a7]
    sbc $00
    ld [$c7a7], a
    ret


Jump_008_5f9d:
    ld a, [$c7b3]
    cp $00
    jp z, Jump_008_6034

    cp $01
    jp z, Jump_008_6055

    cp $02
    jp z, Jump_008_6059

    cp $03
    jp z, Jump_008_607f

    cp $04
    jp z, Jump_008_60a5

    cp $05
    jp z, Jump_008_60a7

    cp $06
    jp z, Jump_008_60a7

    ret


    ld bc, $0202
    ld bc, $0201
    ld bc, $0202
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld bc, $0102
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $04
    dec b
    inc b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    ld b, $04
    inc b
    dec b
    inc b
    ld b, $04
    inc b
    dec b
    inc b
    inc b
    ld b, $04
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

Jump_008_6034:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $5fc4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jp z, Jump_008_60c2

    cp $02
    jp z, Jump_008_6157

    ret


Jump_008_6055:
    jp Jump_008_610a


    ret


Jump_008_6059:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $5fe4
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $03
    jp z, Jump_008_6188

    cp $02
    jp z, Jump_008_6157

    cp $01
    jp z, Jump_008_60c2

    ret


Jump_008_607f:
    call Call_000_0890
    ldh a, [$ff9d]
    ld b, a
    ld a, [$c0a8]
    add b
    and $1f
    ld hl, $6004
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $06
    jp z, Jump_008_61db

    cp $05
    jp Jump_008_61af


    cp $04
    jp z, Jump_008_6130

    ret


Jump_008_60a5:
    jr jr_008_60c2

Jump_008_60a7:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld hl, $6024
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, jr_008_60c2

    cp $02
    jp z, Jump_008_6157

    ret


Jump_008_60c2:
jr_008_60c2:
    call Call_000_0890
    ld hl, $089f
    ld a, [$c0a8]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ldh a, [$ff9d]
    srl a
    srl a
    srl a
    srl a
    add b
    and $0f
    ld hl, $5978
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$c7ad], a
    ld a, $40
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    ld b, a
    add $24
    call Call_000_164f
    ld a, $01
    ld [$c7ac], a
    ld a, $01
    ld [$c7b3], a
    ret


Jump_008_610a:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld b, a
    ld a, $40
    add b
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $00
    ld [$c7b3], a
    ret


Jump_008_6130:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld b, a
    ld a, $40
    add b
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, $00
    ld [$c7ad], a
    add $2c
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $04
    ld [$c7b3], a
    ret


Jump_008_6157:
    call Call_000_0890
    ld a, [$c0a8]
    and $01
    inc a
    ld [$c7ad], a
    ldh a, [$ff9d]
    and $1f
    ld b, a
    ld a, $40
    add b
    ld [$c7b1], a
    ld a, $01
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $28
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $02
    ld [$c7b3], a
    ret


Jump_008_6188:
    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    ld b, a
    ld a, $20
    add b
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $2a
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $03
    ld [$c7b3], a
    ret


Jump_008_61af:
    call Call_000_0890
    ldh a, [$ff9d]
    srl a
    srl a
    and $0f
    ld b, a
    ld a, $f0
    add b
    ld [$c7b1], a
    ld a, $03
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $2d
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $05
    ld [$c7b3], a
    ret


Jump_008_61db:
    call Call_000_0890
    ldh a, [$ff9d]
    srl a
    srl a
    and $0f
    ld b, a
    ld a, $f0
    add b
    ld [$c7b1], a
    ld a, $03
    ld [$c7b2], a
    ld a, [$c7ad]
    dec a
    ld b, a
    add $2f
    call Call_000_164f
    ld a, $00
    ld [$c7ac], a
    ld a, $06
    ld [$c7b3], a
    ret


Jump_008_6207:
    ld a, [$c7ad]
    add $20
    call Call_000_164f
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld [$c7ac], a
    ret


Call_008_621c:
    call Call_008_639d
    cp $01
    jr z, jr_008_623d

    ld a, [$c602]
    cp $4f
    jr z, jr_008_623d

    cp $50
    jr z, jr_008_623d

    cp $51
    jr z, jr_008_623d

    cp $52
    jr z, jr_008_623d

    ld a, [$c90d]
    or a
    jr nz, jr_008_623d

    ret


jr_008_623d:
    ld a, [$c7ad]
    add $20
    call Call_000_164f
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld [$c7ac], a
    pop hl
    ret


Call_008_6253:
    ld a, [$c7a6]
    ld l, a
    ld a, [$c7a7]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c7a8]
    ld l, a
    ld a, [$c7a9]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_008_5932
    ld a, [$c7ad]
    cp $00
    jr z, jr_008_628b

    cp $01
    jr z, jr_008_629a

    cp $02
    jr z, jr_008_62a3

    ld d, h
    ld e, l
    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    inc hl
    jr jr_008_62aa

jr_008_628b:
    ld d, h
    ld e, l
    ld a, [$b90c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    jr jr_008_62aa

    ret


jr_008_629a:
    ld d, h
    ld e, l
    ld bc, $fffe
    add hl, bc
    inc hl
    jr jr_008_62aa

jr_008_62a3:
    ld d, h
    ld e, l
    ld bc, $0002
    add hl, bc
    inc hl

jr_008_62aa:
    ld a, [hl]
    and $01
    jr nz, jr_008_62b5

    ld a, [hl]
    and $02
    jr nz, jr_008_62b5

    ret


jr_008_62b5:
    ld a, [$b8db]
    cp $00
    jr z, jr_008_62d2

    ld a, [$c7ad]
    add $20
    call Call_000_164f
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld [$c7ac], a
    pop hl
    ret


jr_008_62d2:
    ld a, [$c7ad]
    add $00
    call Call_000_1634
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7ac], a
    pop hl
    ret


Call_008_62e5:
    xor a
    ld [$cb83], a
    ld a, [$c7a0]
    or a
    ret z

    ld a, [$c7ad]
    cp $01
    jr z, jr_008_6335

    cp $02
    jr z, jr_008_6335

    ld a, [$c60a]
    ld b, a
    ld a, [$c7aa]
    add d
    sub b
    bit 7, a
    jr z, jr_008_6308

    cpl
    inc a

jr_008_6308:
    cp $0e
    ret nc

    ld a, [$c60b]
    ld b, a
    ld a, [$c7ab]
    add e
    cp b
    jr nc, jr_008_6322

    sub b
    bit 7, a
    jr z, jr_008_631d

    cpl
    inc a

jr_008_631d:
    cp $20
    ret nc

    jr jr_008_632c

jr_008_6322:
    sub b
    bit 7, a
    jr z, jr_008_6329

    cpl
    inc a

jr_008_6329:
    cp $0d
    ret nc

jr_008_632c:
    ld a, $01
    ld [$cb83], a
    jp Jump_008_636d


    ret


jr_008_6335:
    ld a, [$c60a]
    ld b, a
    ld a, [$c7aa]
    add d
    sub b
    bit 7, a
    jr z, jr_008_6344

    cpl
    inc a

jr_008_6344:
    cp $13
    ret nc

    ld a, [$c60b]
    ld b, a
    ld a, [$c7ab]
    add e
    cp b
    jr nc, jr_008_635e

    sub b
    bit 7, a
    jr z, jr_008_6359

    cpl
    inc a

jr_008_6359:
    cp $20
    ret nc

    jr jr_008_632c

jr_008_635e:
    sub b
    bit 7, a
    jr z, jr_008_6365

    cpl
    inc a

jr_008_6365:
    cp $07
    ret nc

    ld a, $01
    ld [$cb83], a

Jump_008_636d:
    ld a, [$b8db]
    cp $00
    jr z, jr_008_638a

    ld a, [$c7ad]
    add $20
    call Call_000_164f
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    ld [$c7ac], a
    pop hl
    ret


jr_008_638a:
    ld a, [$c7ad]
    add $00
    call Call_000_1634
    ld a, $78
    ld [$c7b1], a
    xor a
    ld [$c7ac], a
    pop hl
    ret


Call_008_639d:
    xor a
    ret


    ret


    nop
    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00

Call_008_63a9:
    ld l, a
    ld b, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    push hl
    ld a, $01
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $33
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    push hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $24
    ld [hl], a
    dec hl
    ld a, b
    ld [hl], a
    dec hl
    dec hl
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, b
    ld de, $63a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    pop hl
    ld a, b
    ld de, $647a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c60a]
    add b
    ld [hl+], a
    ld a, [$c60b]
    add c
    ld [hl+], a
    ret


Call_008_6410:
    ld l, a
    ld b, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c640
    add hl, de
    push hl
    ld a, $01
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $67
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    push hl
    ld a, $11
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $24
    ld [hl], a
    dec hl
    ld a, b
    ld [hl], a
    dec hl
    dec hl
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, b
    ld de, $63a0
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    pop hl
    ld a, b
    ld de, $647a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c60a]
    add b
    ld [hl+], a
    ld a, [$c60b]
    add c
    ld [hl+], a
    call Call_008_6b6b
    ret


    ldh a, [$ffe8]
    nop
    add sp, $10
    add sp, -$10
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp-$10
    ld [$0800], sp
    db $10
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1000
    db $10
    db $10
    stop
    nop
    ld [de], a
    nop
    ld de, $1111
    ld de, $0000
    ld b, b
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    nop
    nop
    ld d, b
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    ld d, c
    ld c, b
    ld de, $1212
    ld de, $0000
    ld d, d
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    ld d, e
    ld c, b
    ld de, $1212
    ld de, $0000
    ld d, h
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    ld d, l
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    ld d, [hl]
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    ld d, a
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    ld e, b
    ld b, c
    call z, $dccd
    db $dd
    nop
    nop
    ld e, c
    ld c, c
    jp z, $dacb

    db $db
    nop
    nop
    ld e, d
    ld b, c
    call z, $dccd
    db $dd
    nop
    nop
    ld e, e
    ld c, c
    jp z, $dacb

    db $db
    nop
    nop
    ld e, h
    ld b, c
    daa
    jr z, jr_008_6548

    jr c, jr_008_6513

jr_008_6513:
    nop
    ld e, l
    ld c, c
    dec hl
    inc l
    dec sp
    inc a
    nop
    nop
    ld e, [hl]
    ld b, c
    daa
    jr z, jr_008_6558

    jr c, jr_008_6523

jr_008_6523:
    nop
    ld e, a
    ld c, c
    dec hl
    inc l
    dec sp
    inc a
    nop
    nop
    ld h, b
    ld b, c
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    ld [hl], b
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    ld [hl], c
    ld c, b
    ld de, $1212
    ld de, $0000
    ld [hl], d
    ld b, b
    db $10
    ld [bc], a

jr_008_6548:
    ld [bc], a
    stop
    nop
    ld [hl], e
    ld c, b
    ld de, $1212
    ld de, $0000
    ld [hl], h
    ld b, b
    db $10
    ld [bc], a

jr_008_6558:
    ld [bc], a
    stop
    nop
    ld [hl], l
    ld c, b
    ld de, $1212
    ld de, $0000
    halt
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    ld [hl], a
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    ld a, b
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    ld a, c
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    ld a, d
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    ld a, e
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    ld a, h
    ld b, c
    db $ec
    db $ed
    db $fc
    db $fd
    nop
    nop
    ld a, l
    ld c, c
    ld [$faeb], a
    ei
    nop
    nop
    ld a, [hl]
    ld b, c
    db $ec
    db $ed
    db $fc
    db $fd
    nop
    nop
    ld a, a
    ld c, c
    ld [$faeb], a
    ei
    nop
    nop
    add b
    ld b, c
    db $ec
    db $ed
    db $fc
    db $fd
    nop
    nop
    add c
    ld c, c
    ld [$faeb], a
    ei
    nop
    nop
    add d
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add e
    ld c, c
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    nop
    nop
    add h
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add l
    ld c, c
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    nop
    nop
    add [hl]
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add a
    ld c, c
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    nop
    nop
    adc b
    ld b, c
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    sub b
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    sub c
    ld c, b
    ld de, $1212
    ld de, $0000
    sub d
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    sub e
    ld c, b
    ld de, $1212
    ld de, $0000
    sub h
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    sub l
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    sub [hl]
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    sub a
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    sbc b
    ld b, c
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    and b
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    and c
    ld c, b
    ld de, $1212
    ld de, $0000
    and d
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    and e
    ld c, b
    ld de, $1212
    ld de, $0000
    and h
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    and l
    ld c, b
    ld de, $1212
    ld de, $0000
    and [hl]
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    and a
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    xor b
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    xor c
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    xor d
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    xor e
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    xor h
    ld b, c
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    or b
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    or c
    ld c, b
    ld de, $1212
    ld de, $0000
    or d
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    or e
    ld c, b
    ld de, $1212
    ld de, $0000
    or h
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    or l
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    or [hl]
    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    or a
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    cp b
    ld b, c
    add hl, hl
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    ret nz

    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    pop bc
    ld c, b
    ld de, $1212
    ld de, $0000
    jp nz, Jump_000_1040

    ld [bc], a
    ld [bc], a
    stop
    nop
    jp $1148


    ld [de], a
    ld [de], a
    ld de, $0000
    call nz, Call_000_1040
    ld [bc], a
    ld [bc], a
    stop
    nop
    push bc
    ld c, b
    ld de, $1212
    ld de, $0000
    add $41
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    rst $00
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    ret z

    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    ret


    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    jp z, $1041

    db $10
    ld l, a
    ld a, a
    nop
    nop
    bit 1, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    call z, $4741
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    ret nc

    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    pop de
    ld c, b
    ld de, $1212
    ld de, $0000
    jp nc, Jump_000_1040

    ld [bc], a
    ld [bc], a
    stop
    nop
    db $d3
    ld c, b
    ld de, $1212
    ld de, $0000
    call nc, Call_000_1040
    ld [bc], a
    ld [bc], a
    stop
    nop
    push de
    ld c, b
    ld de, $1212
    ld de, $0000
    sub $41
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    rst $10
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    ret c

    ld b, c
    db $10
    db $10
    ld c, a
    ld e, a
    nop
    nop
    reti


    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    jp c, $1041

    db $10
    ld c, a
    ld e, a
    nop
    nop
    db $db
    ld c, c
    ld de, $4e11
    ld e, [hl]
    nop
    nop
    call c, Call_000_2941
    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    nop
    nop
    ldh [rLCDC], a
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    pop hl
    ld c, b
    ld de, $1212
    ld de, $0000
    ldh [c], a
    ld b, b
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    db $e3
    ld c, b
    ld de, $1212
    ld de, $0000
    db $e4
    ld b, c
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    push hl
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    and $41
    db $10
    db $10
    ld l, a
    ld a, a
    nop
    nop
    rst $20
    ld c, c
    ld de, $6e11
    ld a, [hl]
    nop
    nop
    add sp, $41
    db $ec
    db $ed
    db $fc
    db $fd
    nop
    nop
    jp hl


    ld c, c
    ld [$faeb], a
    ei
    nop
    nop
    ld [$ec41], a
    db $ed
    db $fc
    db $fd
    nop
    nop
    db $eb
    ld c, c
    ld [$faeb], a
    ei
    nop
    nop
    db $ec
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    db $ed
    ld c, c
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    nop
    nop
    xor $41
    dec l
    ld l, $3d
    ld a, $00
    nop
    rst $28
    ld c, c
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    nop
    nop
    ldh a, [rSTAT]
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    nop
    nop
    ld b, e
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    nop
    nop

Call_008_6854:
    ldh a, [$ffa4]
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld bc, $648c
    add hl, bc
    pop bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    ld a, [hl+]
    ldh [$ffa9], a
    push de
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    add hl, bc
    ldh a, [$ffa4]
    ld [hl+], a
    ldh a, [$ffa5]
    ld [hl+], a
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    and $0f
    cp $03
    jr c, jr_008_689e

    cp $08
    jr c, jr_008_68a2

    ld c, $f8
    jr jr_008_68a6

jr_008_689e:
    ld c, $f0
    jr jr_008_68a6

jr_008_68a2:
    ld c, $00
    jr jr_008_68a6

jr_008_68a6:
    call Call_000_1960
    pop de
    add hl, de
    ld a, l
    and $20
    jr z, jr_008_68bf

    ldh a, [$ffad]
    or a
    jr z, jr_008_68bb

    ld de, $0020
    add hl, de
    jr jr_008_68bf

jr_008_68bb:
    ld de, $ffe0
    add hl, de

jr_008_68bf:
    call Call_000_199c
    ld a, [$cb93]
    cp $00
    jr z, jr_008_68f4

    xor a
    ld [$cb93], a
    ld de, $cb94
    ldh a, [$ffac]
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ldh a, [$ffa6]
    ld [de], a
    inc de
    ldh a, [$ffa7]
    ld [de], a
    inc de
    ldh a, [$ffa8]
    ld [de], a
    inc de
    ldh a, [$ffa9]
    ld [de], a
    pop af
    ldh [$ffa4], a
    ret


jr_008_68f4:
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa6]
    ld [hl+], a
    ldh a, [$ffa7]
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa8]
    ld [hl+], a
    ldh a, [$ffa9]
    ld [hl], a
    pop af
    ldh [$ffa4], a
    ret


Call_008_6918:
    ldh a, [$ffa4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $648c
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [$cb43]
    ld h, a
    ld a, [$cb44]
    ld l, a
    ldh a, [$ffa4]
    ld [hl+], a
    ldh a, [$ffa5]
    ld [hl+], a
    ld a, [$c60d]
    cp $00
    jr z, jr_008_698c

    cp $01
    jp z, Jump_008_69ad

    cp $02
    jp z, Jump_008_69d1

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    and $0f
    cp $0c
    jr z, jr_008_697e

    or $10
    sub $0d
    cp $10
    jr z, jr_008_697e

    cp $11
    jr z, jr_008_697e

    cp $12
    jr z, jr_008_697e

    cp $09
    jr c, jr_008_6980

    sub $08
    jr jr_008_6980

jr_008_697e:
    ld a, $00

jr_008_6980:
    ld c, a
    ld a, $e8
    sub c
    ld c, a
    call Call_000_1960
    jp Jump_008_69ef


    ret


jr_008_698c:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    and $0f
    jr z, jr_008_69a3

    cp $01
    jr z, jr_008_69a3

    ld c, a
    ld a, $10
    sub c

jr_008_69a3:
    add $04
    ld c, a
    call Call_000_1960
    jp Jump_008_69ef


    ret


Jump_008_69ad:
    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
    and $0f
    sub $08
    bit 7, a
    jr z, jr_008_69c6

    cpl
    inc a

jr_008_69c6:
    ld b, a
    ld a, $ec
    sub b
    ld b, a
    call Call_000_1960
    jr jr_008_69ef

    ret


Jump_008_69d1:
    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
    and $0f
    ld b, a
    ld a, $08
    sub b
    add $0c
    ld b, a
    call Call_000_1960
    jr jr_008_69ef

    ret


Jump_008_69ef:
jr_008_69ef:
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa6]
    ld [hl+], a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa7]
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa8]
    ld [hl+], a
    call Call_000_199c
    call Call_000_0d2b
    ldh a, [$ffa9]
    ld [hl], a
    ret


Call_008_6a1c:
    ld hl, $b90f
    ld bc, $0001
    call Call_000_0a27
    ld a, [$b910]
    cp $06
    jr z, jr_008_6a45

    cp $05
    jr z, jr_008_6a51

    cp $04
    jr z, jr_008_6a5e

    cp $03
    jr z, jr_008_6a6a

    cp $02
    jr z, jr_008_6a77

    cp $01
    jr z, jr_008_6a83

    cp $00
    jr z, jr_008_6a8f

    ret


jr_008_6a45:
    ld a, [$b90f]
    cp $00
    jr z, jr_008_6aa7

    cp $7a
    jr z, jr_008_6acf

    ret


jr_008_6a51:
    ld a, [$b90f]
    cp $00
    jp z, Jump_008_6af7

    cp $80
    jr z, jr_008_6acf

    ret


jr_008_6a5e:
    ld a, [$b90f]
    cp $00
    jr z, jr_008_6acf

    cp $80
    jr z, jr_008_6aa7

    ret


jr_008_6a6a:
    ld a, [$b90f]
    cp $00
    jr z, jr_008_6aa7

    cp $80
    jp z, Jump_008_6af7

    ret


jr_008_6a77:
    ld a, [$b90f]
    cp $00
    jr z, jr_008_6af7

    cp $80
    jr z, jr_008_6acf

    ret


jr_008_6a83:
    ld a, [$b90f]
    cp $00
    jr z, jr_008_6acf

    cp $80
    jr z, jr_008_6aa7

    ret


jr_008_6a8f:
    ld a, [$b90f]
    cp $08
    jr z, jr_008_6aa7

    cp $40
    jr z, jr_008_6aa7

    cp $10
    jr z, jr_008_6af7

    cp $80
    jr z, jr_008_6af7

    cp $20
    jr z, jr_008_6acf

    ret


jr_008_6aa7:
    ld hl, $b8ef
    ld bc, $0032
    call Call_000_0a14
    call Call_000_10a0
    ld a, $3c
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c640]
    or a
    jr z, jr_008_6ac9

    ld a, [$c642]
    cp $37
    ret z

jr_008_6ac9:
    ld a, $57
    call $16e3
    ret


jr_008_6acf:
    ld hl, $b8ef
    ld bc, $0064
    call Call_000_0a14
    call Call_000_10a0
    ld a, $3c
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c640]
    or a
    jr z, jr_008_6af1

    ld a, [$c642]
    cp $37
    ret z

jr_008_6af1:
    ld a, $56
    call $16e3
    ret


Jump_008_6af7:
jr_008_6af7:
    ld a, $01
    ld [$cbe9], a
    ret


Call_008_6afd:
    ld a, $99
    ld [$c771], a
    xor a
    ld [$c770], a
    ld a, [$c60d]
    cp $00
    jr z, jr_008_6b2a

    cp $01
    jr z, jr_008_6b3f

    cp $02
    jr z, jr_008_6b55

    ld a, $01
    call Call_000_15c0
    ld a, [$c60a]
    ld [$c76a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c76b], a
    ret


jr_008_6b2a:
    ld a, $04
    call Call_000_15c0
    ld a, [$c60a]
    inc a
    ld [$c76a], a
    ld a, [$c60b]
    add $10
    ld [$c76b], a
    ret


jr_008_6b3f:
    ld a, $03
    call Call_000_15c0
    ld a, [$c60a]
    sub $14
    ld [$c76a], a
    ld a, [$c60b]
    sub $08
    ld [$c76b], a
    ret


jr_008_6b55:
    ld a, $02
    call Call_000_15c0
    ld a, [$c60a]
    add $14
    ld [$c76a], a
    ld a, [$c60b]
    sub $08
    ld [$c76b], a
    ret


Call_008_6b6b:
    ld a, [$c760]
    or a
    ret nz

    ld a, [$cb88]
    or a
    ret nz

    ldh a, [$ff9c]
    and $07
    cp $07
    ret nz

    ld a, $32
    ld [$cb88], a
    ld a, $01
    ld [$c770], a
    ld a, $20
    ld [$c771], a
    ld a, [$c60d]
    cp $00
    jr z, jr_008_6bc2

    cp $01
    jr z, jr_008_6be9

    cp $02
    jp z, Jump_008_6c14

    ld a, [$c606]
    ld [$c766], a
    ld a, [$c607]
    ld [$c767], a
    ld a, [$c608]
    sub $10
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $14
    call Call_000_15f6
    ld a, $01
    ld [$c76c], a
    ret


jr_008_6bc2:
    ld a, [$c606]
    ld [$c766], a
    ld a, [$c607]
    ld [$c767], a
    ld a, [$c608]
    add $10
    ld [$c768], a
    ld a, [$c609]
    adc $00
    ld [$c769], a
    ld a, $14
    call Call_000_15f6
    ld a, $01
    ld [$c76c], a
    ret


jr_008_6be9:
    ld a, [$c606]
    sub $10
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [$c608]
    sub $04
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $13
    call Call_000_15f6
    ld a, $ff
    ld [$c76c], a
    ret


Jump_008_6c14:
    ld a, [$c606]
    add $18
    ld [$c766], a
    ld a, [$c607]
    adc $00
    ld [$c767], a
    ld a, [$c608]
    sub $04
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $14
    call Call_000_15f6
    ld a, $01
    ld [$c76c], a
    ret


    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld [$3ef7], sp
    ret


    ld [hl], a
    and d
    ld d, l
    add b
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$7a87]
    db $10
    ld c, a
    ld de, $134e
    ld c, l
    ld [de], a
    ld c, h
    ld de, $114e
    ld c, [hl]
    ld de, $114e
    ld c, [hl]
    ld d, l
    add b
    ld d, l
    add b
    push de
    nop
    rst $38
    xor d
    ld b, c
    ld bc, $4878
    cp h
    and h
    sbc b
    adc b
    rst $00
    cp d
    ld b, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    cp d
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    reti


    ld e, c
    ld a, a
    cp [hl]
    pop bc
    ld b, c
    ld a, a
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add a
    ld a, d
    rlca
    ld a, [$7a87]
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ccf
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $20
    sbc d
    inc de
    ld c, h
    rla
    ld c, c
    rla
    ld c, d
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ldh a, [$fff0]
    rst $28
    ld l, b
    ld hl, sp-$59
    ldh [$ff5f], a
    ldh a, [$ffaf]
    ld hl, sp+$37
    ld a, h
    sbc e
    ld a, $cd
    ld [hl], a
    ld l, d
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rra
    and $0f
    pop af
    rlca
    ei
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    ld a, [$7a87]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, h
    add e
    jp nz, $aa41

    add hl, hl
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld de, $114e
    ld c, [hl]
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld d, [hl]
    ld d, l
    cp [hl]
    cp l
    db $fc
    ei
    db $fc
    db $e3
    db $fc
    db $db
    cp $cd
    rst $38
    and $ff
    inc bc
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$7a87]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rlca
    ld sp, hl
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    rst $20
    jp c, Jump_000_2af7

    rst $30
    ld l, d
    ld h, a
    sbc d
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    rst $38
    ld e, $00
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, h
    rla
    ld c, e
    rla
    ld c, e
    rla
    ld c, c
    rla
    ld c, b
    inc de
    ld c, h
    db $10
    ld c, a
    db $10
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $ec
    rst $38
    adc $df
    daa
    rrca
    di
    rlca
    ld sp, hl
    add a
    ld a, d
    add a
    ld a, d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    rst $20
    jp c, Jump_008_4f10

    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    ld [$0af7], a
    rst $30
    ld l, d
    ld h, a
    sbc d
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    inc e
    db $e3
    dec de
    add sp, $1d
    db $ed
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$7a87]
    ld de, $134e
    ld c, l
    inc de
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    cp [hl]
    ld e, [hl]
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld l, b
    ld hl, sp-$49
    db $fc
    ld e, e
    ld a, [hl]
    adc l
    rra
    and $c7
    cp d
    ld b, a
    ld a, [hl-]
    and a
    sbc d
    rst $20
    jp c, $1ae7

    rlca
    ld a, [$fa07]
    rlca
    ld a, [$4f10]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rrca
    di
    rlca
    ld hl, sp+$03
    db $fd
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add a
    ld a, d
    rst $00
    cp d
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    inc de
    ld c, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, l
    rla
    ld c, d
    rla
    ld c, d
    rla
    ld c, d
    rla
    ld c, d
    rla
    ld c, d
    rla
    ld c, c
    inc de
    ld c, h
    cp $7d
    rst $38
    ld a, h
    ld a, a
    ld [bc], a
    rrca
    ld c, $1f
    ld e, $1f
    inc e
    rra
    dec de
    sbc a
    sbc e
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$827f]
    rst $18
    ld d, d
    rst $30
    ld a, [bc]
    rst $20
    jp c, $9ae7

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $18
    ld e, b
    rst $38
    inc a
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    ld a, [hl-]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ldh [rNR41], a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $20
    sbc d
    inc de
    ld c, h
    rla
    ld c, c
    dec d
    ld c, b
    ld [de], a
    ld c, h
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    add b
    add b
    adc a
    ld [$a7f8], sp
    ldh [$ff5f], a
    ldh a, [$ffaf]
    ld hl, sp+$37
    ld a, h
    sbc e
    ld a, $cd
    ld [hl], a
    ld l, d
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rra
    and $0f
    pop af
    rlca
    ei
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    ld a, [$7a87]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $114e
    ld c, [hl]
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    add e
    add d
    rla
    ld d, $00
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, l
    inc de
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, l
    inc de
    ld c, l
    ld de, $ab4e
    xor d
    ld d, a
    ld d, [hl]
    xor [hl]
    xor l
    ld a, [hl]
    ld b, l
    cp $b5
    cp $99
    cp $cd
    rst $38
    ld b, $07
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rrca
    di
    rlca
    ld sp, hl
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add a
    ld a, d
    rst $00
    cp d
    rst $20
    ld e, d
    rst $20
    jp c, Jump_000_3ac7

    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    inc de
    ld c, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$3e
    jp nz, Jump_000_31f1

    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$3ac7]
    ld h, a
    ld e, d
    scf
    ld a, [hl+]
    rla
    ld c, e
    inc e
    ld b, h
    jr jr_008_7135

    jr jr_008_7137

    jr jr_008_7139

    inc e
    ld b, h
    rla
    ld c, e
    inc de
    ld c, h
    add c
    add c
    ld bc, $4f01
    ld c, e
    ld a, a
    ld [hl], l
    ld a, e
    ld l, d
    db $fd
    push hl
    cp $c2
    rst $00
    add hl, sp
    sub a
    adc d
    or a
    xor d
    rst $30
    ld [$eaf7], a
    rst $20
    jp c, Jump_000_3ac7

    rst $00
    cp d
    ld h, a
    ld e, d
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    inc bc
    db $fc
    ld bc, $00fe
    rst $38

jr_008_7135:
    nop
    rst $38

jr_008_7137:
    nop
    rst $38

jr_008_7139:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    or a
    xor d
    rst $30
    ld a, [bc]
    rst $30
    ld l, d
    ld h, a
    sbc d
    rlca

Call_008_7148:
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38

jr_008_7163:
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld e, $e1
    rra
    xor $18
    add sp, $00
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    db $10
    ld c, a
    inc de
    ld c, h
    rla
    ld c, e
    rla
    ld c, c
    dec d
    ld c, b
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    jr @-$16

    jr nc, jr_008_7163

    push af
    dec [hl]
    ld [$ffaa], a
    rst $18
    rst $38
    ld l, b
    ld hl, sp-$49
    db $fc
    dec de
    ld h, a
    ld e, d
    daa
    ld a, [de]
    scf
    ld a, [hl+]
    or a
    xor d
    ld [hl], a
    ld l, d
    rst $30
    ld l, d
    ld [hl], a
    adc d
    rlca
    ld a, [$4f10]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld a, $cd
    rra
    and $0f
    pop af
    rlca
    ei
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    add a
    ld a, d
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rla
    ld c, b
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    inc e
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$0af7]
    ld d, $4a
    inc de
    ld c, h
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    ld [hl], $2a
    sub h
    adc b
    ei
    ld [bc], a
    ld a, $cd
    rst $30
    ld [hl+], a
    sbc h
    adc b
    inc e
    inc d
    nop
    nop
    scf
    ld a, [hl+]
    rst $20
    sbc d
    add a
    ld a, d
    rlca
    ld a, [$7a87]
    rst $00
    cp d
    ld h, a
    ld e, d
    ld h, a
    ld e, d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    add b
    add b
    rst $38
    ld a, $3e
    pop bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rla
    ld c, b
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    inc e
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$0af7]
    ld d, $4a
    inc de
    ld c, h
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    halt
    ld l, d
    push af
    jp hl


    rst $38
    ld b, $3e
    call Call_000_2aff
    rst $38
    db $eb
    ccf
    scf
    ccf
    ccf
    ld [hl], a
    ld l, d
    rst $20
    sbc d
    add a
    ld a, d
    rlca
    ld a, [$7a87]
    rst $00
    cp d
    rst $20
    jp c, $dae7

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $28
    rst $28
    rst $38
    ld a, $3e
    pop bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld e, b
    ld d, a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld de, $134e
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, l
    db $ec
    db $eb
    cp $f9
    db $dd
    sub h
    cp $22
    rst $38
    push de
    ld [hl], a
    ld [hl], l
    xor d
    xor d
    ld [hl], a
    ld [hl], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    rst $20
    jp c, Jump_008_5a67

    and a
    sbc d
    ld h, a
    ld e, d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    db $dd
    db $dd
    ld [$3f2a], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld [$0007], sp
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    ld de, $104e
    ld c, a
    ld de, $124e
    ld c, h
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    inc b
    inc bc
    ld b, $01
    ld c, c
    nop
    call c, Call_000_2a00
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    daa
    ld a, [de]
    daa
    ld a, [de]
    daa
    ld a, [de]
    daa
    ld a, [de]
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    nop
    nop
    ret nz

    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld b, a
    ld a, [hl-]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld e, b
    ld d, a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld de, $134e
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, l
    xor h
    xor e
    ld d, [hl]
    ld d, c
    db $eb
    and d
    db $dd
    ld bc, $80aa
    rla
    dec d
    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    and a
    sbc d
    ld h, a
    ld e, d
    and a
    sbc d
    ld h, a
    ld e, d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    xor d
    xor d
    push de
    dec d
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp-$09
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, l
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, l
    db $fc
    ei
    cp $f9
    rst $38
    or [hl]
    rst $38
    inc hl
    rst $38
    push de
    rra
    dec e
    rrca
    rrca
    adc a
    adc a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    rst $20
    jp c, $dae7

    rst $20
    jp c, $dae7

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    sbc b
    sub a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld de, $134e
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld h, h
    ld h, e
    sbc [hl]
    sbc c
    ld l, a
    ld h, $dd
    ld bc, $446e
    dec de
    add hl, de
    ld b, $06
    add hl, de
    add hl, de
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    ld h, a
    ld e, d
    and a
    sbc d
    ld h, a
    ld e, d
    and a
    sbc d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld h, [hl]
    ld h, [hl]
    reti


    add hl, de
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld b, a
    ld a, [hl-]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld [$0007], sp
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, l
    ld [de], a
    ld c, h
    ld de, $104e
    ld c, a
    ld de, $124e
    ld c, h
    inc de
    ld c, l
    inc de
    ld c, l
    db $fc
    ei
    ld b, $01
    rst $38
    or [hl]
    call c, $ff00
    push de
    ld [bc], a
    nop
    rrca
    rrca
    nop
    nop
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    rst $20
    jp c, Jump_000_1a27

    rst $20
    jp c, Jump_008_5a67

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $38
    rst $38
    pop hl
    ld hl, $c03f
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    xor b
    and a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    ld de, $104e
    ld c, a
    ld de, $124e
    ld c, h
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    xor h
    xor e
    xor [hl]
    xor c
    db $eb
    and d
    cp $22
    xor d
    add b
    ld a, [bc]
    ld [$0a0a], sp
    adc d
    adc d
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    and a
    sbc d
    and a
    sbc d
    and a
    sbc d
    and a
    sbc d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    xor d
    xor d
    ld [$3f2a], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld e, b
    ld d, a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    inc de
    ld c, l
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, l
    db $fc
    ei
    ld d, [hl]
    ld d, c
    rst $38
    or [hl]
    db $dd
    ld bc, $d5ff
    rlca
    dec b
    rrca
    rrca
    dec d
    dec d
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    rst $20
    jp c, Jump_008_5a67

    rst $20
    jp c, Jump_008_5a67

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $38
    rst $38
    push de
    dec d
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld e, b
    ld d, a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    ld de, $104e
    ld c, a
    ld de, $124e
    ld c, h
    inc de
    ld c, l
    inc de
    ld c, l
    xor h
    xor e
    xor [hl]
    xor c
    ld e, l
    inc d
    db $dd
    ld bc, $80aa
    ld a, [bc]
    ld [$0505], sp
    dec d
    dec d
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    and a
    sbc d
    and a
    sbc d
    ld h, a
    ld e, d
    ld h, a
    ld e, d
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    xor d
    xor d
    ld [$3f2a], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    cp d
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $01fe
    cp $71
    adc [hl]
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$7a87]
    rst $00
    cp d
    ld h, a
    ld e, d
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $134e
    ld c, l
    inc de
    ld c, l
    ld a, e
    or l
    ld l, $ca
    scf
    push de
    ld h, e
    and d
    call $8e4d
    adc [hl]
    rra
    inc e
    inc a
    dec sp
    ld [hl], a
    ld l, d
    rst $30
    adc d
    add a
    ld a, d
    rlca
    ld a, [$7a87]
    rst $00
    cp d
    rst $00
    cp d
    rst $00
    ld a, [hl-]
    ld de, $134e
    ld c, l
    inc de
    ld c, h
    inc d
    ld c, e
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld hl, sp-$09
    ldh a, [$ff6f]
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, $c1
    db $e3
    ld [hl+], a
    add b
    add b
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    rst $00
    cp d
    inc de
    ld c, l
    ld [de], a
    ld c, h
    ld d, $48
    inc d
    ld c, b
    inc d
    ld c, b
    ld d, $4a
    ld d, $48
    inc de
    ld c, l
    ld a, $08
    db $eb
    nop
    add b
    nop
    push de
    nop
    push de
    add b
    push de
    ld b, c
    db $dd
    ld e, l
    rst $38
    cp [hl]
    ld h, a
    ld e, d
    and a
    ld a, [de]
    or a
    ld a, [bc]
    sub a
    ld a, [bc]
    rla
    ld a, [bc]
    or a
    ld a, [hl+]
    or a
    ld a, [bc]
    rst $20
    jp c, Jump_008_4c13

    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $38
    pop bc
    rst $38
    ld a, a
    rst $38
    inc e
    ld a, $c1
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $20
    sbc d
    rst $00
    ld a, [hl-]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, $c1
    ld b, c
    add b
    cp [hl]
    nop
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$7a87]
    ld de, $134e
    ld c, l
    inc de
    ld c, h
    inc de
    ld c, l
    ld [de], a
    ld c, h
    inc de
    ld c, h
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    cp a
    dec e
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    inc e
    ld [$087f], sp
    rst $00
    ld a, [hl-]
    rst $20
    jp c, $1ae7

    ld h, a
    ld e, d
    daa
    ld a, [de]
    rst $20
    ld a, [de]
    daa
    ld a, [de]
    daa
    ld a, [de]
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld a, a
    ld a, $7f
    ld [$081c], sp
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    daa
    ld a, [de]
    daa
    ld a, [de]
    ld h, a
    ld e, d
    rst $00
    ld a, [hl-]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld [$14f7], sp
    db $e3
    inc d
    db $e3
    inc e
    db $e3
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $114e
    ld c, [hl]
    ld de, $134e
    ld c, h
    ld a, $dd
    ld a, e
    cp d
    ld sp, hl
    add hl, sp
    db $fc
    ld l, h
    db $fc
    ld c, h
    db $fc
    ld c, h
    cp $4e
    ldh [c], a
    ldh [c], a
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    add a
    ld a, d
    rst $00
    cp d
    ld b, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    rst $20
    jp c, $4d13

    inc de
    ld c, h
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld a, a
    ld b, b
    rst $30
    ld h, e
    ei
    ld e, c
    ld a, a
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld h, a
    ld e, d
    rst $20
    ld e, d
    rst $00
    ld a, [hl-]
    rlca
    ld a, [$fa07]
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    ld de, $134e
    ld c, h
    inc de
    ld c, l
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    xor d
    xor d
    ld [hl], a
    ld b, c
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$3ac7]
    rst $20
    sbc d
    ld h, a
    ld e, d
    ld d, $4a
    rla
    ld c, e
    rla
    ld c, d
    rla
    ld c, c
    rla
    ld c, d
    rla
    ld c, c
    ld d, $4a
    rla
    ld c, c
    db $eb
    add b
    add b
    nop
    push de
    ld b, c
    push de
    add b
    push de
    ld b, c
    db $dd
    ld e, l
    rst $38
    cp [hl]
    ld a, a
    ld b, c
    or a
    xor d
    rst $30
    ld l, d
    rst $30
    ld a, [hl+]
    rst $30
    jp z, Jump_000_2af7

    rst $30
    ld c, d
    or a
    xor d
    ld [hl], a
    ld c, d
    rla
    ld c, d
    rla
    ld c, e
    inc de
    ld c, h
    ld de, $104e
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    db $eb
    ld l, e
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    ld a, [hl+]
    rst $30
    ld [$9ae7], a
    rst $00
    ld a, [hl-]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    ld de, $134e
    ld c, h
    inc de
    ld c, l
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    xor d
    xor d
    ld a, l
    ld b, l
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$3ac7]
    rst $20
    sbc d
    ld h, a
    ld e, d
    ld d, $4a
    rla
    ld c, e
    rla
    ld c, d
    rla
    ld c, c
    rla
    ld c, d
    rla
    ld c, c
    ld d, $4a
    rla
    ld c, c
    add $82
    ld d, a
    dec b
    sub c
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, e
    ld [hl+], a
    cp [hl]
    add b
    ld d, l
    ld d, c
    or a
    xor d
    ld [hl], a
    ld l, d
    rst $30
    ld a, [hl+]
    rst $30
    ld c, d
    rst $30
    ld a, [hl+]
    ld [hl], a
    ld c, d
    or a
    xor d
    ld [hl], a
    ld c, d
    rla
    ld c, d
    rla
    ld c, e
    inc de
    ld c, h
    ld de, $104e
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    db $eb
    ld l, e
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    ld a, [hl+]
    rst $30
    ld [$9ae7], a
    rst $00
    ld a, [hl-]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    ld de, $134e
    ld c, l
    ld d, $4a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$07
    inc c
    dec bc
    or $95
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    dec d
    ld c, c
    ld d, $4a
    inc de
    ld c, l
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $104e
    ld c, a
    ld a, [$f609]
    sub l
    inc c
    dec bc
    db $fc
    ei
    dec c
    ld a, [bc]
    rra
    add hl, de
    cp a
    or e
    rst $30
    ld l, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rst $00
    ld a, [hl-]
    rst $20
    jp c, Jump_008_6af7

    ld [hl], a
    xor d
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    or a
    ld a, [hl+]
    rst $30
    ld a, [bc]
    ld a, a
    and d
    ld a, [hl]
    cp l
    inc a
    jp Jump_000_00ff


    rst $38
    rst $38
    rst $38
    nop
    ld [hl], a
    xor d
    rst $38
    ld [hl], d
    sbc a
    ld [de], a
    ld [hl], a
    adc d
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $004e
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    pop bc
    ld b, c
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$3ac7]
    inc de
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, h
    inc de
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, l
    ld de, $114e
    ld c, [hl]
    cp [hl]
    nop
    rst $38
    ld a, $ff
    rst $38
    rst $38
    ld a, $ff
    pop bc
    add b
    add b
    db $e3
    ld h, e
    rst $38
    nop
    rst $20
    ld e, d
    rst $20
    ld e, d
    rst $20
    sbc d
    rst $20
    ld e, d
    rst $20
    jp c, $dae7

    rst $00
    ld a, [hl-]
    rst $00
    ld a, [hl-]
    ld de, $104e
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    rst $38
    ld d, l
    rst $38
    inc d
    ld [hl], $c9
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $00
    ld a, [hl-]
    add a
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    inc e
    ld b, e
    dec de
    ld b, b
    ld d, $4a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld [hl], b
    ld c, a
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    dec d
    ld c, c
    dec d
    ld c, c
    ld d, $4a
    ld [de], a
    ld c, h
    inc de
    ld c, l
    ld de, $114e
    ld c, [hl]
    db $10
    ld c, a
    sbc h
    sub e
    and $e5
    di
    ldh a, [c]
    ld sp, hl
    ld sp, hl
    ld a, h
    ld a, h
    ccf
    ld a, $9f
    sbc [hl]
    rst $08
    ld c, [hl]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$7a87]
    rst $00
    cp d
    rst $00
    ld a, [hl-]
    rst $20
    sbc d
    or a
    ld a, [hl+]
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    ld l, [hl]
    and b
    ccf
    push de
    dec e
    ldh [c], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $10
    ld c, d
    rst $10
    jp z, $eaf7

    rst $20

jr_008_7d56:
    ld a, [de]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$1e
    pop hl
    jr c, jr_008_7d56

    nop
    nop
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$3ac7]
    daa
    jp c, $ea17

    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $114e
    ld c, [hl]
    inc de
    ld c, l
    inc de
    ld c, l
    inc de
    ld c, h
    dec d
    ld c, b
    ld [hl], b
    xor a
    ldh [$ff5f], a
    ret nz

    cp a
    pop bc
    cp [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ld l, [hl]
    ld d, c
    rla
    ld [$ea17], a
    rst $20
    ld a, [de]
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    cp d
    ld d, a
    xor d
    dec d
    ld c, b
    dec d
    ld c, c
    rla
    ld c, e
    inc de
    ld c, h
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    pop af
    adc $d0
    cpl
    adc b
    ld [hl], a
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    adc a
    ld [hl], d
    ld [hl], a
    adc d
    or a
    ld a, [hl+]
    rst $20
    ld a, [de]
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    rra
    ld b, b
    db $10
    ld c, a
    db $10
    ld c, a
    ld de, $124e
    ld c, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    ld hl, sp-$65
    ld h, d
    ld h, [hl]
    ld bc, $0000
    nop
    cp $01
    nop
    rst $38
    ld [bc], a
    rlca
    ld a, [$1ae7]
    add a
    ld a, d
    rlca
    ld a, [$4d13]
    ld de, $114e
    ld c, [hl]
    ld [de], a
    ld c, h
    ld [de], a
    ld c, h
    dec d
    ld c, b
    rla
    ld c, d
    ld d, $49
    sbc h
    inc bc
    jr c, @+$09

    ld c, b
    rlca
    db $e4
    inc hl
    ldh a, [c]
    ld de, $6899
    inc c
    db $f4
    ld b, $fa
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fa07]
    add a
    ld a, d
    ld b, a
    ld a, [hl-]
    inc d
    ld c, e
    inc d
    ld c, e
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    ld c, a
    rra
    ld b, b
    rra
    ld e, a
    ccf
    nop
    inc bc
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    daa
    ld a, [de]
    rst $30
    xor d
    rst $30
    ld l, d
    ld [hl], a
    adc d
    rlca
    ld a, [$02ff]
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
