; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

Jump_01b_4000:
    dec de
    ld hl, $cd6b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4014
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd6b], a
    ld a, h
    ld [$cd6c], a
    ld hl, $cd97
    inc [hl]
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6f], a
    ld a, [hl+]
    ld [$cd70], a
    ld a, [hl+]
    ld [$cd6d], a
    ld a, [hl+]
    ld [$cd6e], a
    ret


    ld h, b
    ld l, c
    push hl
    ld a, [$cd6f]
    ld e, a
    ld a, [$cd70]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_409b

jr_01b_4044:
    push af
    inc de
    ld a, e
    ld [$cd6f], a
    ld a, d
    ld [$cd70], a
    pop af
    ld c, a
    ld a, [$cd6e]
    ld e, a
    push af
    inc a
    ld [$cd6e], a
    ld hl, $4001
    ld d, $11
    call Call_000_0661
    pop af
    ld b, a
    ld de, $99c2
    cp $90
    jr c, jr_01b_406d

    ld de, $99f2

jr_01b_406d:
    sub $80
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_4096

    dec hl
    dec hl
    ret


jr_01b_4096:
    xor a
    ld [$cd97], a
    ret


jr_01b_409b:
    inc de
    ld a, [$cd6e]
    inc a
    ld [$cd6e], a
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_40b3

    ld a, [de]
    cp $af
    jr nz, jr_01b_4044

    jr jr_01b_409b

jr_01b_40b3:
    pop hl
    xor a
    ld [$cd97], a
    ret


    ld h, b
    ld l, c
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    push hl
    ld hl, $4001
    ld d, $11
    call Call_000_0661
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ret


Jump_01b_40e6:
    push bc
    ld hl, $99c2
    ld b, $04

jr_01b_40ec:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01b_40ec

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_01b_40ec

    ld hl, $9a02
    ld b, $04

jr_01b_4101:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01b_4101

    ld a, [$cb5c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_01b_4101

    pop hl
    ret


    ld h, b
    ld l, c
    call Call_01b_4118

Call_01b_4118:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld b, a

jr_01b_4125:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_01b_4125

    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01b_4167

    push hl
    ld de, $9a11

Jump_01b_4140:
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd97]
    bit 4, a
    jr nz, jr_01b_414f

    ld a, [$cd9a]
    ld b, a

Jump_01b_414f:
jr_01b_414f:
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    dec hl
    dec hl
    ret


jr_01b_4167:
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_4199

    bit 1, a
    jr nz, jr_01b_41ac

    bit 4, a
    jr nz, jr_01b_41b7

    bit 5, a
    jr nz, jr_01b_41d7

    push hl
    ld de, $9a02
    ld a, [$cd98]
    or a
    jr z, jr_01b_4188

    ld e, $0d

jr_01b_4188:
    ld a, [$cd99]
    ld b, a
    ld a, [$cd97]
    bit 4, a
    jr z, jr_01b_414f

    ld a, [$cb5c]
    ld b, a
    jr jr_01b_414f

jr_01b_4199:
    ld a, $42
    call Call_000_23d5
    ld a, [$cd98]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_41ac:
    ld a, $51
    call Call_000_23d5
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_41b7:
    ld a, [$cd98]
    or a
    jr nz, jr_01b_41d4

    inc a
    ld [$cd98], a
    xor a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_41d4:
    dec hl
    dec hl
    ret


jr_01b_41d7:
    ld a, [$cd98]
    or a
    jr z, jr_01b_41f4

    dec a
    ld [$cd98], a
    xor a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8
    ld de, $9a0d
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_41f4:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    ld b, a
    ld a, $63
    sub b
    ld [$cd91], a
    ld a, [hl+]
    ld [$cd93], a
    ld a, [hl+]
    ld [$cd94], a
    xor a
    ld [$cd92], a
    ld [$cd95], a
    ld [$cd96], a
    ret


    push bc
    call Call_01b_42b4
    call Call_01b_42e0
    call Call_01b_42f9
    pop hl
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_423b

    bit 1, a
    jr nz, jr_01b_424a

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01b_4284

    bit 5, a
    jr nz, jr_01b_4255

    dec hl
    dec hl
    ret


jr_01b_423b:
    ld a, [$cd92]
    or a
    jr z, jr_01b_424a

    ld a, $42
    call Call_000_23d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_424a:
    ld a, $51
    call Call_000_23d5
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4255:
    ld a, [$cd91]
    ld b, a
    ld a, [$cd92]
    cp b
    jr nc, jr_01b_4281

    inc a
    ld [$cd92], a
    push hl
    ld a, [$cd93]
    ld e, a
    ld a, [$cd94]
    ld d, a
    ld hl, $cd95
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$cd95], a
    ld a, h
    ld [$cd96], a
    ld a, $48
    call Call_000_23d8
    pop hl

jr_01b_4281:
    dec hl
    dec hl
    ret


jr_01b_4284:
    ld a, [$cd92]
    or a
    jr z, jr_01b_42b1

    dec a
    ld [$cd92], a
    push hl
    ld a, [$cd93]
    ld e, a
    ld a, [$cd94]
    ld d, a
    ld hl, $cd95
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    ld [$cd95], a
    ld a, h
    ld [$cd96], a
    ld a, $48
    call Call_000_23d8
    pop hl

jr_01b_42b1:
    dec hl
    dec hl
    ret


Call_01b_42b4:
    ld a, [$cd92]
    or a
    jr z, jr_01b_42c3

    ld bc, $7081
    ld hl, $42db
    call Call_000_1ef5

jr_01b_42c3:
    ld a, [$cd91]
    ld b, a
    ld a, [$cd92]
    cp b
    ret nc

    ld bc, $7060
    ld hl, $42d6
    call Call_000_1ef5
    ret


    nop
    nop
    db $ec
    nop
    add b
    nop
    nop
    db $ed
    nop
    add b

Call_01b_42e0:
    ld a, [$cd92]
    call Call_000_3215
    ld a, [$ccd0]
    ld bc, $7068
    call Call_01b_4330
    ld a, [$ccd1]
    ld bc, $7070
    call Call_01b_4330
    ret


Call_01b_42f9:
    ld hl, $cd95
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_316d
    ld a, [$cccd]
    ld bc, $8050
    call Call_01b_4330
    ld a, [$ccce]
    ld bc, $8058
    call Call_01b_4330
    ld a, [$cccf]
    ld bc, $8060
    call Call_01b_4330
    ld a, [$ccd0]
    ld bc, $8068
    call Call_01b_4330
    ld a, [$ccd1]
    ld bc, $8070
    call Call_01b_4330
    ret


Call_01b_4330:
Jump_01b_4330:
    cp $af
    jr nz, jr_01b_433b

    ld hl, $4386
    call Call_000_1ef5
    ret


jr_01b_433b:
    sub $0a
    cp $10
    jr c, jr_01b_4343

    sub $0a

jr_01b_4343:
    ld l, a
    add a
    add a
    add l
    ld hl, $4354
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1ef5
    ret


    nop
    nop
    ldh [c], a
    nop
    add b
    nop
    nop
    db $e3
    nop
    add b
    nop
    nop
    db $e4
    nop
    add b
    nop
    nop
    push hl
    nop
    add b
    nop
    nop
    and $00
    add b
    nop
    nop
    rst $20
    nop
    add b
    nop
    nop
    add sp, $00
    add b
    nop
    nop
    jp hl


    nop
    add b
    nop
    nop
    ld [$8000], a
    nop
    nop
    db $eb
    nop
    add b
    nop
    nop
    xor $00
    add b
    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    call CompareMoney
    jr nc, jr_01b_43a1

    pop hl
    ld a, $51
    call Call_000_23d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_43a1:
    call DiscountMoney
    ld a, $42
    call Call_000_23d5
    pop hl
    inc hl
    inc hl
    ret


    ld a, [$cd95]
    ld e, a
    ld a, [$cd96]
    ld d, a
    call CompareMoney
    jr nc, jr_01b_43c5

    ld a, $51
    call Call_000_23d5
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_43c5:
    call DiscountMoney
    ld a, $42
    call Call_000_23d5
    ld h, b
    ld l, c
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$cd92]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    or a
    jr nz, jr_01b_43f2

    ld a, [hl+]
    push hl
    call Call_01b_469d
    pop hl
    jr z, jr_01b_43f3

    inc hl
    inc hl
    ret


jr_01b_43f2:
    inc hl

jr_01b_43f3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, $0c
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_01b_469d
    pop hl
    pop de
    ret z

    ld a, $01
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    push hl
    call Call_01b_469d
    jr nz, jr_01b_442e

    ld [hl], $ff

jr_01b_442e:
    pop hl
    pop de
    xor a
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [de]
    add c
    cp $63
    jr c, jr_01b_4443

    ld a, $63

jr_01b_4443:
    ld [de], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    push hl
    push de
    push bc
    ld h, d
    ld l, e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ld a, l
    add c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    pop hl
    jr c, jr_01b_4472

    pop hl
    ld a, $e7
    ld [hl+], a
    ld a, $03
    ld [hl], a
    pop hl
    ret


jr_01b_4472:
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_44b8

    bit 1, a
    jr nz, jr_01b_44cb

    bit 4, a
    jr nz, jr_01b_44d8

    bit 5, a
    jr nz, jr_01b_44f8

    ld b, a
    ld a, [$b8d1]
    or a
    jr z, jr_01b_4499

    bit 2, b
    jr nz, jr_01b_4518

jr_01b_4499:
    push hl
    ld de, $9a02
    ld a, [$cd98]
    or a
    jr z, jr_01b_44a5

    ld e, $0d

jr_01b_44a5:
    ld a, [$cd99]
    ld b, a
    ld a, [$cd97]
    bit 4, a
    jp z, Jump_01b_414f

    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_44b8:
    ld a, $42
    call Call_000_23d5
    ld a, [$cd98]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_44cb:
    ld a, $51
    call Call_000_23d5
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_44d8:
    ld a, [$cd98]
    or a
    jr nz, jr_01b_44f5

    inc a
    ld [$cd98], a
    xor a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8
    ld de, $9a02
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_44f5:
    dec hl
    dec hl
    ret


jr_01b_44f8:
    ld a, [$cd98]
    or a
    jr z, jr_01b_4515

    dec a

Call_01b_44ff:
    ld [$cd98], a
    xor a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8
    ld de, $9a0d
    ld a, [$cb5c]
    ld b, a
    jp Jump_01b_414f


jr_01b_4515:
    dec hl
    dec hl
    ret


jr_01b_4518:
    ld a, $42
    call Call_000_23d5
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cd97], a
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01b_453f

    ld a, [$cd97]
    cp [hl]
    jr z, jr_01b_453f

    dec hl
    dec hl
    ret


jr_01b_453f:
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6a], a
    ret


    ld a, [$cd97]
    and $0f
    ld hl, $4564
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld h, b
    ld l, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    push bc
    ld a, [$b8ee]
    ld d, a
    ld a, [$b8ed]
    add $0a
    cp d
    jr c, jr_01b_4582

    ld a, d

jr_01b_4582:
    ld [$b8ed], a
    ld a, [$b8f2]
    add $0a
    jr nc, jr_01b_458e

    ld a, $ff

jr_01b_458e:
    ld [$b8f2], a
    pop hl
    ret


    ld h, b
    ld l, c
    ret


    push bc
    ld a, [$b8ed]
    sub $0a
    jr nc, jr_01b_459f

    xor a

jr_01b_459f:
    ld [$b8ed], a
    ld a, [$b8f2]
    sub $0a
    jr nc, jr_01b_45aa

    xor a

jr_01b_45aa:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    add $14
    jr nc, jr_01b_45b9

    ld a, $ff

jr_01b_45b9:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    sub $28
    jr nc, jr_01b_45c7

    xor a

jr_01b_45c7:
    ld [$b8f2], a
    pop hl
    ret


    push bc
    ld a, [$b8f2]
    sub $14
    jr nc, jr_01b_45d5

    xor a

jr_01b_45d5:
    ld [$b8f2], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$b8ee]
    ld e, a
    ld d, a
    ld a, [hl+]
    or a
    jr z, jr_01b_45ea

jr_01b_45e5:
    srl e
    dec a
    jr nz, jr_01b_45e5

jr_01b_45ea:
    ld a, [$b8ed]
    add e
    cp d
    jr c, jr_01b_45f2

    ld a, d

jr_01b_45f2:
    ld [$b8ed], a
    ret


    push bc
    ld hl, $b949
    ld b, $04
    ld c, $16

jr_01b_45fe:
    ld a, [hl]
    inc a
    jr z, jr_01b_4611

    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_45fe

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4611:
    pop hl
    inc hl
    inc hl
    ret


    push bc
    ld hl, $b9a7
    ld b, $04
    ld c, $0c
    jr jr_01b_45fe

    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld d, $00
    push hl
    ld bc, $0c40
    ld hl, $a000

jr_01b_462c:
    ld a, [hl+]
    and $f0
    cp $40
    jr nz, jr_01b_463d

    ld a, [hl]
    cp $48
    jr nz, jr_01b_463d

    inc d
    ld a, d
    cp e
    jr nc, jr_01b_4648

jr_01b_463d:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_01b_462c

    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_4648:
    pop hl
    inc hl
    inc hl
    ret


    ld a, $1d
    ld [wNextMapIndex], a
    ld a, $1d
    ld [wTransitionRelated2], a
    ld h, b
    ld l, c
    ret


    ld a, $1e
    ld [wNextMapIndex], a
    ld a, $1d
    ld [wTransitionRelated2], a
    ld h, b
    ld l, c
    ret


    ld a, $1f
    ld [wNextMapIndex], a
    ld a, $1d
    ld [wTransitionRelated2], a
    ld h, b
    ld l, c
    ret


    ld hl, $b9a7
    ld e, $04

jr_01b_4678:
    ld a, [hl]
    inc a
    jr z, jr_01b_468a

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec e
    jr nz, jr_01b_4678

    ld h, b
    ld l, c
    ret


jr_01b_468a:
    ld a, $02
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld h, b
    ld l, c
    ret


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    sub e
    ld b, [hl]
    sbc c
    ld b, [hl]

Call_01b_469d:
    ld hl, $b8f8
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


CompareMoney::
    push bc
    ld hl, sCurrentMoneyL
    ld a, [hl+]
    sub e
    ld a, [hl+]
    sbc d
    ld a, [hl+]
    sbc $00
    pop bc
    ret


DiscountMoney::
    push bc
    ld b, $00
    ld hl, sCurrentMoneyL
    ld a, [hl]
    sub e
    ld [hl+], a
    ld a, [hl]
    sbc d
    ld [hl+], a
    ld a, [hl]
    sbc b
    ld [hl], a
    pop bc
    ret


    ld h, b
    ld l, c
    ld a, $03
    ld [$b8ea], a
    ret


    ld h, b
    ld l, c
    ld b, $04
    ld a, [$b949]
    cp b
    jr z, jr_01b_46ec

    ld a, [$b95f]
    cp b
    jr z, jr_01b_46ec

    ld a, [$b975]
    cp b
    jr z, jr_01b_46ec

    ld a, [$b98b]
    cp b
    jr z, jr_01b_46ec

    inc hl
    inc hl

jr_01b_46ec:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, a
    ld a, [$ba3f]
    or a
    jr nz, jr_01b_4705

    ld a, $01
    ld [$ba3f], a
    ld a, [$cd97]
    and b
    jr z, jr_01b_4707

jr_01b_4705:
    inc hl
    inc hl

jr_01b_4707:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_01b_4711:
    ld a, [hl]
    cp $04
    jr z, jr_01b_4723

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_4711

    pop hl
    ret


jr_01b_4723:
    ld a, $02
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    xor a
    ld [hl], a
    pop hl
    ret


    push bc
    ld b, $04
    ld hl, $b949

jr_01b_4734:
    call Call_01b_4744
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01b_4734

    pop hl
    ret


Call_01b_4744:
    push hl
    ld a, [hl]
    cp $02
    jr nz, jr_01b_4758

    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_01b_4758

    ld [hl], $07

jr_01b_4758:
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$ba3e]
    cp $01
    jr z, jr_01b_4766

    inc hl
    inc hl
    ret


jr_01b_4766:
    ld a, $02
    ld [$ba3e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e
    call Call_01b_6949
    pop hl
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    push hl
    call MusicRelated
    pop hl
    ret


    ld h, b
    ld l, c
    push hl
    push hl
    push af
    ld l, $2f
    ld h, $69
    ld a, $09
    call Call_000_1f96
    pop af
    pop hl
    pop hl
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01b_47b5

    bit 1, a
    jr nz, jr_01b_47c7

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_01b_47cf

    bit 5, a
    jr nz, jr_01b_47df

    dec hl
    dec hl
    ret


jr_01b_47b5:
    push hl
    push hl
    push af
    ld l, $a2
    ld h, $6a
    ld a, $09
    call Call_000_1f96

jr_01b_47c1:
    pop af
    pop hl
    pop hl
    dec hl
    dec hl
    ret


jr_01b_47c7:
    ld a, $51
    call Call_000_23d5
    inc hl
    inc hl
    ret


jr_01b_47cf:
    ld a, [$cb68]
    or a
    jr nz, jr_01b_47d7

    ld a, $28

jr_01b_47d7:
    dec a
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01b_47df:
    ld a, [$cb68]
    inc a
    cp $28
    jr c, jr_01b_47e8

    xor a

jr_01b_47e8:
    ld [$cb68], a
    ld a, [hl+]
    ld h, [hl]

jr_01b_47ed:
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cb68], a
    ld a, $54
    call Call_000_23cf
    ret


    and $40
    ld e, d
    ld b, a
    dec e
    ld c, b
    inc de
    ld b, c
    cp [hl]
    ld c, c
    ld [hl], c
    call $f420
    cp b
    ld [hl], l
    call Call_000_2104
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    add hl, de
    ld c, b
    inc de
    ld b, c
    sbc $49
    ld [hl], c
    call $f420
    cp b
    ld [hl], l
    call $9304
    ld b, [hl]
    dec c

jr_01b_482c:
    ld c, b
    and $40
    ld hl, $fe40
    ld c, c
    jr nz, jr_01b_47b5

    inc [hl]

jr_01b_4836:
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1e40
    ld c, d
    jr nz, jr_01b_47c1

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld c, e
    ld c, b
    or d
    ld c, c
    adc e
    ld b, e
    jr nz, jr_01b_4852

    add l
    ld c, c
    rst $30

jr_01b_4852:
    ld b, e
    xor l
    cp b
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40

jr_01b_485b:
    ld hl, $7e40
    ld c, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_4867:
    ld hl, $9e40
    ld c, d
    jr nz, jr_01b_47ed

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], a
    ld c, b
    or d
    ld c, c
    adc e
    ld b, e
    ld [$8507], sp
    ld c, c
    rst $30
    ld b, e
    xor h
    cp b
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40

jr_01b_4887:
    inc de
    ld b, c
    cp [hl]
    ld c, d
    ld [hl], c
    call $f420
    cp b
    ld [hl], a
    call Call_000_2104
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    db $dd
    ld b, e
    xor [hl]
    cp b
    ld a, [bc]
    or b
    ld c, b
    ld hl, $fe40
    ld c, d
    jr nz, jr_01b_482c

    sub e
    ld b, [hl]
    or [hl]
    ld c, b
    ld hl, $de40

jr_01b_48b3:
    ld c, d
    jr nz, jr_01b_4836

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ret nz

    ld c, b
    or d

jr_01b_48bf:
    ld c, c
    adc e
    ld b, e
    ret nc

    rlca
    add l
    ld c, c
    rst $30
    ld b, e
    xor a
    cp b
    ld e, $44
    xor [hl]
    cp b
    ld a, [bc]
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40
    ld hl, $1e40
    ld c, e
    jr nz, jr_01b_485b

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_48df:
    and $40
    ld hl, $3e40
    ld c, e
    jr nz, jr_01b_4867

    inc [hl]
    ld b, b
    dec l
    ld b, c

jr_01b_48eb:
    ld l, b
    ld b, c
    pop af
    ld c, b
    or d
    ld c, c
    adc e
    ld b, e
    adc b
    inc de
    add l
    ld c, c
    rst $30
    ld b, e
    or b
    cp b
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40
    ld hl, $5e40
    ld c, e
    jr nz, jr_01b_4887

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_490d:
    ld hl, $7e40
    ld c, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    dec e
    ld c, c
    or d
    ld c, c
    adc e
    ld b, e
    jr nc, jr_01b_4996

    add l

jr_01b_4922:
    ld c, c
    rst $30
    ld b, e
    ld b, e
    cp c
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40
    ld hl, $be40
    ld c, e
    jr nz, jr_01b_48b3

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $de40
    ld c, e
    jr nz, jr_01b_48bf

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld c, c
    ld c, c
    or d
    ld c, c
    adc e
    ld b, e
    jr nc, @+$77

    add l
    ld c, c
    rst $30
    ld b, e
    ld b, h
    cp c
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40
    ld hl, $fe40
    ld c, e
    jr nz, jr_01b_48df

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $1e40
    ld c, h
    jr nz, jr_01b_48eb

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl], l
    ld c, c
    or d
    ld c, c
    adc e
    ld b, e
    call nz, $8509
    ld c, c
    rst $30
    ld b, e
    jp nz, $c6b8

    ld b, [hl]
    sub e
    ld b, [hl]
    and [hl]
    ld c, c
    and $40
    ld hl, $5e40
    ld c, h
    jr nz, jr_01b_490d

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l

jr_01b_4996:
    sub e
    ld b, [hl]
    sub [hl]
    ld c, c
    and $40
    ld hl, $7e40
    ld c, h
    jr nz, jr_01b_4922

    sub e
    ld b, [hl]
    adc l
    ld c, c
    and $40
    ld hl, $3e40
    ld c, d
    jr nz, @-$7e

    sub e
    ld b, [hl]
    adc l
    ld c, c
    and $40
    ld hl, $5e40
    ld c, d
    jr nz, @-$7e

    sub e
    ld b, [hl]
    adc l
    ld c, c
    ld [hl], b
    ldh [rOCPS], a
    cp $fe
    cp $fe
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, b
    ld b, c
    db $10
    reti


    db $10
    ld [bc], a
    ld b, h
    ld l, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld [hl], b
    ldh [rOCPS], a
    xor a
    xor a
    xor a
    xor a
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    and b
    db $10
    sub h
    inc hl
    ld bc, $3021
    ld [hl], d
    xor [hl]
    inc h
    add e
    ld d, b
    ld [bc], a
    ld hl, $3241
    db $10
    ld [bc], a
    res 0, l
    ld h, $ba
    ld [hl], d
    jp c, $cdaf

    rla
    ld b, h
    inc [hl]
    ld [de], a
    rst $00
    ld [hl-], a
    inc hl
    ld bc, $40ba
    jp c, $afaf

    xor a
    xor [hl]
    ld b, e
    cp d

Call_01b_4a20:
    sub h
    ld d, b
    inc e
    ld a, [bc]
    ld a, [bc]
    ld l, $bd
    ld bc, $7201
    jp c, $afaf

    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0160
    cp [hl]
    nop
    add c
    ld l, d
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
    jr nc, jr_01b_4a51

    inc hl

jr_01b_4a51:
    ld [hl-], a
    ld b, c
    ld [hl-], a
    db $10
    sub e
    inc sp
    ld [de], a
    add e
    ld [hl], d
    ld b, b
    jp c, $afaf

    ld [bc], a
    sub e
    inc h
    db $e4
    ld a, d
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
    inc hl
    sub e
    db $10
    ld [de], a
    ld d, b
    ld [hl-], a
    ld h, e
    ld bc, $3021
    ld b, h
    ld b, c
    xor h
    xor a
    xor a
    xor a
    inc h
    add e
    ld d, b
    reti


    ld sp, $2131
    ret z

    add c
    ld de, $72ba
    jp c, Jump_000_2102

    ld b, c
    ld [hl-], a
    db $10
    ld [bc], a
    inc [hl]
    reti


    ld h, [hl]
    add a
    rla
    ld [hl], h
    cp d
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    xor [hl]
    dec bc
    inc e
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    inc de
    cp [hl]
    reti


    db $10
    ld [bc], a
    ld b, h
    db $10
    ld l, e
    xor a
    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $2220
    and b
    cp d
    ld b, e
    reti


    cp $fe
    cp $fe
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc h
    add e
    and b
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    cp d
    ld [hl], d
    jp c, $afaf

    xor [hl]
    or [hl]
    sub a
    rlca
    adc c
    inc [hl]
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    inc [hl]
    db $10
    inc bc
    add d
    ld [hl], d
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0a0c
    ld a, [bc]
    ld a, [bc]
    ld l, $bd
    ld [bc], a
    add d
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0124
    ld [hl-], a
    and b
    inc hl
    ld bc, $4411
    cp d
    ld bc, $3250
    ld h, e
    ld bc, $afda
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    inc c
    cp d
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    inc [hl]
    reti


    ld [bc], a
    sub e
    inc sp
    ld h, h
    ld bc, $7201

jr_01b_4b4d:
    jp c, $10af

    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $8324
    ld d, b
    ret


    dec [hl]
    ld a, d
    ld l, b
    ld b, $15
    ld a, d
    cp d
    jp c, $8766

    rla
    ld [hl], h
    sbc a
    add e
    add d
    inc [hl]
    ret


    dec [hl]
    ld a, d
    ld b, c
    ld b, b
    add d
    ld d, b
    or d
    cp d
    ld [hl], d
    jp c, $0dae

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $64
    ld [hl+], a
    add d
    inc de
    cp [hl]
    reti


    db $10
    sub e
    inc sp
    ld l, d
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_4b97:
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $9454
    inc [hl]
    ld l, d
    ld l, e
    nop
    add c
    and b
    inc [hl]
    ld l, d
    inc d
    add e
    db $10
    add b
    ld [hl+], a
    and d
    ld [bc], a
    ld hl, $75a9
    ld b, c
    jr z, jr_01b_4b4d

    add hl, sp
    ld b, c
    ld bc, $7212
    jp c, $afaf

    xor a
    inc h
    add e
    ld d, b
    ld [hl], $7a
    or a
    ld l, b
    ld b, $15
    ld a, d
    cp d
    jp c, $8766

    rla
    ld [hl], h
    sbc a
    add e
    add d
    inc [hl]
    ld [hl], $7a
    or a
    ld b, c
    ld b, b
    add d
    ld d, b
    or d
    cp d
    ld [hl], d
    jp c, $0dae

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $34
    jr nc, jr_01b_4bf7

    ld bc, $be13

jr_01b_4bea:
    reti


    db $10
    ld [bc], a
    ld l, e
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_4bf7:
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $4424
    dec d
    ret


    sbc c
    ld b, c
    jr nz, @+$14

    ld h, h
    ld [hl-], a
    ld [hl], h
    ld bc, $8283
    inc [hl]
    reti


    ld hl, $9391
    db $10
    jr nz, jr_01b_4b97

    add d
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    inc c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    ld b, e
    jp c, $afaf

    xor a
    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0160
    cp [hl]
    nop
    add c
    ld l, d

jr_01b_4c44:
    inc h
    add e
    or c
    sub b
    nop
    reti


    inc d
    add e
    db $10
    add b
    ret z

    ld [de], a

jr_01b_4c50:
    or c
    sub d
    ld [bc], a
    ld h, b
    cp l
    ld h, h
    sub e
    inc sp
    ld bc, $7212
    jp c, $afaf

    inc b
    ld bc, HeaderLogo
    reti


    inc b
    db $10
    ld b, e
    and b
    jr nc, jr_01b_4bea

    ld b, b
    ld bc, $da72

jr_01b_4c6d:
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

jr_01b_4c79:
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    sub h
    reti


    or c
    sub b
    nop
    ld h, b

jr_01b_4c85:
    jr nc, jr_01b_4cca

    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_4c91:
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

jr_01b_4c9d:
    xor a
    and $40
    inc de

jr_01b_4ca1:
    ld b, c
    ld a, [hl-]
    ld c, l
    ld [hl], c
    call $f420
    cp b
    ld [hl], h
    call Call_000_2104

jr_01b_4cad:
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    cp b
    ld c, h
    and $40
    ld hl, $9a40
    ld c, l
    jr nz, jr_01b_4c44

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40

jr_01b_4cca:
    ld hl, $ba40
    ld c, l
    jr nz, jr_01b_4c50

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    jp c, $f14c

    ld c, h
    adc e
    ld b, e
    db $f4
    ld bc, $4d19
    ld b, l
    ld b, h
    jr c, jr_01b_4c9d

    ld [hl-], a
    and $40
    ld hl, $da40
    ld c, l
    jr nz, jr_01b_4c6d

    sub e
    ld b, [hl]
    dec l
    ld c, l
    and $40
    ld hl, $fa40
    ld c, l
    jr nz, jr_01b_4c79

    sub e
    ld b, [hl]
    dec l
    ld c, l
    and $40
    ld hl, $5a40
    ld c, l
    jr nz, jr_01b_4c85

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7a40
    ld c, l
    jr nz, jr_01b_4c91

    rst $30
    ld b, e
    cp $b8
    sub e
    ld b, [hl]
    dec l
    ld c, l
    and $40
    ld hl, $1a40
    ld c, [hl]
    jr nz, jr_01b_4ca1

    sub e
    ld b, [hl]
    dec l
    ld c, l
    and $40
    ld hl, $3a40
    ld c, [hl]
    jr nz, jr_01b_4cad

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld [hl], $4d
    inc b
    ld [bc], a
    reti


    cp $fe
    cp $fe
    or c
    sub b
    ld b, e
    db $e3
    db $10
    jp c, $afaf

    xor a
    sbc l
    sbc h
    ld d, b
    ld b, b
    sub h
    ld b, h
    ld [hl], d
    ld [bc], a
    cp d
    ld l, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    nop
    sub h
    ld l, e
    ld bc, $7403
    or h
    ld [bc], a
    ld sp, $2212
    add d
    ld b, h
    db $10
    ld l, e
    xor a
    inc b
    sub e
    ld hl, $d990
    sbc [hl]
    sbc h
    ld h, c
    ld [hl-], a
    ld h, h
    add c
    ld b, c
    ld bc, $da12
    xor [hl]
    or h
    ld [bc], a
    ld sp, $4112
    db $10
    db $10
    add d
    ld hl, $01b0
    inc [hl]
    db $10
    ld b, e
    ld d, b
    reti


    sbc [hl]
    sbc h
    ld b, h
    ld h, c
    ld [hl-], a
    ld h, h
    add c
    cp l
    inc b
    ld hl, $8203
    db $10
    add b
    ld b, b
    jp c, $b021

    ld bc, $6b10
    inc h
    ld bc, $e032
    jr nz, @+$14

    ld b, c
    ld hl, $8130
    reti


    or h
    ld [bc], a
    ld sp, $4112
    ld [hl-], a

jr_01b_4db0:
    db $10
    ld [bc], a
    ld h, h
    ld b, h
    cp d
    jp c, $afaf

    xor a
    xor [hl]
    rrca
    ld a, [bc]
    add hl, de
    cp l
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    ld b, b
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $9231
    sub e
    inc [hl]
    inc b
    ld h, h
    ld bc, $8010
    ld b, b
    xor h
    inc d
    add e
    db $10
    add b
    xor a
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld b, c
    inc [hl]
    cp [hl]
    inc de
    inc sp

jr_01b_4df4:
    ld [hl], b
    add h
    ld [bc], a
    jp c, $afaf

    sub h
    cp d
    ldh [$ffd9], a
    ld bc, $4380
    db $e3
    ld b, h
    db $10
    jp c, $afaf

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
    xor a
    ld d, b
    ld d, b
    ld d, b
    reti


    or c

jr_01b_4e1f:
    sub d
    ld [bc], a
    cp d
    sub h
    and b
    ld de, $0132
    or h
    jp c, $10af

jr_01b_4e2b:
    ld b, e
    and b
    jr nc, jr_01b_4db0

    inc sp
    ld b, e
    db $e3
    or c
    sub b
    ld b, b
    ld bc, $7210
    jp c, $10af

    add b
    cp d
    ld b, c
    ld de, $3274
    inc de
    inc sp
    reti


    and b
    sub h
    call nz, Call_01b_7283
    jp c, $b194

    sub b
    nop
    reti


    ld h, b
    jr nc, @+$42

    jp c, $afaf

    xor a

jr_01b_4e56:
    xor a
    xor a
    xor a
    xor a
    and $40
    ld hl, $8e40
    ld c, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld l, b
    ld c, [hl]
    and $40
    ld hl, $ae40
    ld c, a
    jr nz, jr_01b_4df4

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_4e77:
    ld b, c
    and $40
    ld hl, $ce40
    ld c, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l

jr_01b_4e83:
    ld b, c
    ld l, b
    ld b, c
    adc d
    ld c, [hl]
    add d
    ld c, a
    adc e
    ld b, e
    inc l
    ld bc, $4f6a
    jp c, $0145

    sub e
    ld b, [hl]
    ld l, d
    ld c, a
    and $40
    ld hl, $2e40
    ld d, b
    jr nz, jr_01b_4e1f

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4e40
    ld d, b
    jr nz, jr_01b_4e2b

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b

jr_01b_4eb0:
    ld b, c
    or l
    ld c, [hl]
    add d
    ld c, a
    adc e
    ld b, e
    db $f4
    ld bc, $4f49
    jp c, $0045

    sub e
    ld b, [hl]
    halt
    ld c, a
    and $40
    ld hl, $8e40
    ld d, b
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ae40
    ld d, b
    jr nz, jr_01b_4e56

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ldh [$ff4e], a
    add d
    ld c, a
    adc e
    ld b, e
    inc l
    ld bc, $4f49

jr_01b_4ee6:
    inc sp
    ld b, h
    jp z, Jump_000_0ab8

    sub e
    ld b, [hl]
    halt
    ld c, a
    and $40
    ld hl, $ce40
    ld d, b
    jr nz, jr_01b_4e77

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ee40
    ld d, b
    jr nz, jr_01b_4e83

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    dec c

jr_01b_4f0a:
    ld c, a
    add d
    ld c, a
    adc e
    ld b, e
    ret z

    nop
    ld c, c
    ld c, a
    inc sp
    ld b, h
    res 7, b
    ld a, [bc]
    sub e
    ld b, [hl]
    ld l, d
    ld c, a
    and $40
    ld hl, $0e40
    ld d, c
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $2e40
    ld d, c
    jr nz, jr_01b_4eb0

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld a, [hl-]
    ld c, a
    add d
    ld c, a
    adc e
    ld b, e
    ld h, h
    nop
    ld c, c
    ld c, a
    inc sp
    ld b, h
    call z, Call_000_0ab8
    sub e
    ld b, [hl]
    ld l, d
    ld c, a
    and $40
    ld hl, $4e40
    ld d, c
    jr nz, @-$7e

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld e, d
    ld c, a
    and $40
    ld hl, $6e40
    ld d, c
    jr nz, jr_01b_4ee6

    sub e
    ld b, [hl]
    ld d, c
    ld c, a
    and $40
    ld hl, $ee40
    ld c, a
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld d, c
    ld c, a
    and $40
    ld hl, $6e40
    ld d, b
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld d, c
    ld c, a
    and $40
    ld hl, $0e40
    ld d, b
    jr nz, jr_01b_4f0a

    sub e
    ld b, [hl]
    ld d, c
    ld c, a
    nop
    add b
    reti


    ld bc, $9380
    ld hl, $0190
    jp c, Jump_01b_4140

    db $10
    ld b, h
    ld h, d
    ld l, e
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
    xor [hl]
    jp z, $877a

    ld d, b
    ld h, b
    ld sp, $3444
    ld [de], a
    jr nz, @-$6a

    ld d, c
    sub h
    ld b, b
    ld b, h
    jp c, $b100

    ld [hl], e
    sub e
    inc sp
    reti


    ld b, h
    sub h
    cp l
    ld b, e
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    inc h
    ld [bc], a
    ld b, e
    xor h
    ld b, e
    cp d
    sub h
    ld d, b
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $72
    jp c, $afaf

    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, Start
    reti


    cp [hl]
    ld [bc], a
    or h
    jp c, $afaf

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
    xor a
    xor a
    xor a
    xor a
    xor a
    nop
    add b
    inc h
    ld [bc], a
    jp c, $0104

    ld hl, $4401
    ld b, c
    xor h
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
    xor a
    xor a
    inc [hl]
    ld [de], a
    inc hl
    ld bc, $0678
    sbc c
    ld b, e
    jp c, Jump_000_1004

    and e
    jr nz, @+$62

    cp l
    reti


    ld [bc], a
    add e
    ld [hl], c
    ld de, $0214
    ld sp, $0292
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    inc h
    ld [bc], a
    ld b, e
    xor h
    ld b, e
    cp d
    sub h
    ld d, b
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $72
    jp c, $afaf

    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, Start
    reti


    cp [hl]
    ld [bc], a
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], e
    add d
    ld [hl], d
    ld bc, $4021
    ld bc, $43bd
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    ld [hl], b
    ld h, b
    add $be
    ld [bc], a
    ld hl, $6b91
    ld d, d
    ld hl, $34a1
    ld sp, $8010
    and b
    ld [hl], e
    ld bc, $1233
    add d
    ld b, h
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    dec bc
    ld a, [bc]
    adc $01
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $72
    jp c, $afaf

    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $b063
    ld h, b
    ld hl, $92a1
    ld [de], a
    add h
    ld b, e
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    dec bc
    adc $01
    ld b, h
    ld h, e
    call nz, Call_01b_63d9
    and b
    jr nz, jr_01b_514c

    add d
    ld [hl], e
    ld [hl], d
    jp c, $43ae

    cp d
    sub h
    ld d, b
    dec bc
    ld a, [bc]
    adc $01
    cp l
    inc c
    ld a, [bc]
    ld a, [bc]
    ld l, $72
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $4414
    ld h, [hl]
    add a
    rla
    ld d, b
    reti


    nop

jr_01b_5116:
    ld b, b
    jr nc, @+$46

    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    cp l
    inc [hl]
    add e
    jr nc, jr_01b_5189

    add a
    rla
    ld [hl], d
    xor a
    xor a

jr_01b_5128:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    dec bc
    ld a, [bc]
    adc $01
    cp l
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld l, $72
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e

jr_01b_514c:
    ld b, b

jr_01b_514d:
    ld bc, $8000
    nop
    add b
    reti


    inc b
    sbc d
    and b
    jr nc, @-$7d

    ld b, b
    ld bc, $4373
    jp c, $afaf

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
    cp [hl]
    inc b
    ld l, e
    ld [hl+], a
    inc d
    ld hl, $a350
    sub h
    ld de, $4041
    sub e
    jr nc, jr_01b_51e8

    xor a
    inc h
    add e
    or c
    sub b
    reti


    ld d, h

jr_01b_5184:
    cp [hl]
    ld d, h
    cp [hl]
    ld b, c
    ld b, e

jr_01b_5189:
    jp c, Jump_01b_5202

    ld d, d
    xor h
    and $40
    ld hl, $ae40
    ld d, h
    jr nz, jr_01b_5116

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    sbc h
    ld d, c
    and $40
    ld hl, $ce40
    ld d, h
    jr nz, jr_01b_5128

jr_01b_51a8:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    or d
    ld d, c
    and d
    ld d, h
    rra
    ld b, [hl]
    ld [hl], $7e
    ld d, h
    or $45
    ld [hl], d
    ld d, h
    adc e
    ld b, e
    adc b
    inc de
    ld d, c
    ld d, h
    ld l, a
    ld b, a
    adc b
    inc de
    and $40
    ld hl, $2e40
    ld d, a

jr_01b_51cb:
    jr nz, jr_01b_514d

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld c, h
    ld b, [hl]
    sub e
    ld b, [hl]
    db $d3
    ld d, c

jr_01b_51d7:
    and $40
    inc de
    ld b, c
    ld c, [hl]
    ld d, a
    ld [hl], c
    call Call_000_2c20
    call $cd71
    inc b
    ld hl, $7140

jr_01b_51e8:
    call $8020
    inc [hl]
    ld b, b
    xor a
    ld b, l
    inc [hl]
    ld b, c
    db $dd
    ld b, e
    or e
    cp b
    ld [bc], a
    ld [$f752], sp
    ld b, e
    or e
    cp b
    and $40
    ld hl, $6e40
    ld d, a

Jump_01b_5202:
    jr nz, jr_01b_5184

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_5207:
    ld b, c
    and $40
    inc de
    ld b, c
    adc [hl]
    ld d, a
    ld [hl], c
    call Call_000_2c20
    call $cd77
    inc b
    ld hl, $7140
    call $8020
    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $0e40
    ld d, l
    jr nz, jr_01b_51a8

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [hl-], a
    ld d, d
    and d
    ld d, h
    rra
    ld b, [hl]
    inc h
    ld a, [hl]
    ld d, h

jr_01b_5237:
    dec d
    ld b, [hl]
    ld [hl], d
    ld d, h
    adc e
    ld b, e
    db $f4
    ld bc, $5451
    ld [hl], e
    ld b, [hl]

jr_01b_5243:
    and $40
    ld hl, $1e40
    ld e, b
    jr nz, jr_01b_51cb

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $ee40
    ld d, l
    jr nz, jr_01b_51d7

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0e40
    ld d, [hl]
    jr nz, @-$7e

jr_01b_5263:
    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld l, l
    ld d, d
    and d
    ld d, h

Jump_01b_526d:
    adc e
    ld b, e

jr_01b_526f:
    cp h
    ld [bc], a
    ld d, c
    ld d, h
    rst $30
    ld b, e
    ret nz

    cp b
    ld bc, $4644
    cp c
    sub e
    ld b, [hl]
    sub [hl]
    ld d, h
    and $40
    ld hl, $2e40
    ld d, [hl]
    jr nz, jr_01b_5207

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4e40
    ld d, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc l
    ld d, d

jr_01b_529b:
    and d
    ld d, h
    adc e
    ld b, e
    db $f4
    ld bc, $5451
    rst $30
    ld b, e
    pop bc
    cp b
    ld bc, $4744
    cp c
    sub e
    ld b, [hl]
    sub [hl]
    ld d, h
    and $40
    ld hl, $4e40
    ld d, l
    jr nz, jr_01b_5237

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_52bb:
    and $40
    ld hl, $6e40
    ld d, l
    jr nz, jr_01b_5243

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    call $a252
    ld d, h
    adc e
    ld b, e
    add sp, $03
    ld d, c
    ld d, h

jr_01b_52d3:
    rst $30
    ld b, e
    xor e
    cp b
    sub e
    ld b, [hl]
    sub [hl]
    ld d, h
    and $40
    ld hl, $ae40
    ld d, l
    jr nz, jr_01b_5263

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ce40
    ld d, l
    jr nz, jr_01b_526f

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld sp, hl
    ld d, d
    and d
    ld d, h
    adc e
    ld b, e
    and b
    rrca
    ld d, c
    ld d, h
    rst $30
    ld b, e
    or d
    cp b
    sub e
    ld b, [hl]
    sub [hl]
    ld d, h
    and $40
    ld hl, $ae40
    ld d, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $ce40
    ld d, [hl]
    jr nz, jr_01b_529b

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    dec h
    ld d, e
    and d
    ld d, h
    adc e
    ld b, e

jr_01b_5327:
    ret nc

    rlca
    ld d, c
    ld d, h
    rst $30
    ld b, e
    or c
    cp b
    sub e
    ld b, [hl]
    sub [hl]
    ld d, h
    and $40
    ld hl, $ae40

jr_01b_5338:
    ld d, a
    jr nz, jr_01b_52bb

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld b, l
    ld d, e
    and d
    ld d, h
    ld e, c
    ld b, [hl]
    sub e
    ld b, [hl]
    ld b, a

jr_01b_534a:
    ld d, e
    and $40
    ld hl, $ce40
    ld d, a
    jr nz, jr_01b_52d3

    ld c, a
    ld l, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld e, c
    ld d, e
    and $40
    inc de
    ld b, c
    sbc [hl]

jr_01b_5362:
    ld e, b
    ld [hl], c
    call $cd20
    call z, $cd86
    ld bc, $68cc
    cp [hl]
    ld e, b
    ld hl, $7140
    call $8020
    ld c, a
    ld l, b
    sub e
    ld b, [hl]
    ld [hl], a
    ld d, e
    and $40
    inc de
    ld b, c
    sbc $58
    ld [hl], c
    call Call_01b_4a20
    cp c
    ld [hl], c
    call $0601
    ld l, c
    ld hl, $7140
    call $8020
    ld c, a
    ld l, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    sbc e
    ld d, e
    or b
    ld d, e
    ld sp, $be69
    ld b, l
    and $40
    ld hl, $ee40
    ld d, a
    jr nz, jr_01b_5327

    ld c, a
    ld l, b
    daa
    ld b, l
    ld l, $45
    rst $38
    call $e669
    ld b, b
    ld hl, $ee40
    ld d, h

jr_01b_53b6:
    jr nz, jr_01b_5338

    sub e
    ld b, [hl]
    and a
    ld d, e
    cp b
    ld l, c
    sub e
    ld b, [hl]
    cp [hl]
    ld d, e
    and $40
    ld hl, $3e40

jr_01b_53c7:
    ld e, b
    jr nz, jr_01b_534a

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    call nc, $a253
    ld d, h
    ld h, [hl]
    ld b, [hl]
    sub e
    ld b, [hl]
    sub $53
    and $40
    ld hl, $5e40
    ld e, b
    jr nz, jr_01b_5362

    ld c, a
    ld l, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    add sp, $53
    and $40

jr_01b_53ee:
    inc de
    ld b, c
    sbc [hl]
    ld e, b
    ld [hl], c
    call $cd20
    call z, $cd86
    ld bc, $69f4
    cp [hl]
    ld e, b
    ld hl, $7140
    call $8020
    ld c, a
    ld l, b

jr_01b_5406:
    sub e
    ld b, [hl]
    ld b, $54
    and $40
    inc de
    ld b, c
    sbc $58
    ld [hl], c
    call $a820
    cp c
    ld [hl], c
    call $2a01
    ld l, d
    ld hl, $7140
    call $8020
    ld c, a
    ld l, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld a, [hl+]
    ld d, h
    ccf
    ld d, h

jr_01b_542a:
    ldh [c], a
    ld l, c
    call z, $e645
    ld b, b
    ld hl, $7e40
    ld e, b
    jr nz, jr_01b_53b6

    ld c, a
    ld l, b
    daa
    ld b, l
    ld l, $45
    rst $38
    call $e669
    ld b, b
    ld hl, $ee40
    ld d, h
    jr nz, jr_01b_53c7

    sub e
    ld b, [hl]
    and a
    ld d, e
    cp b
    ld l, c
    sub e
    ld b, [hl]
    ld c, l
    ld d, h
    and $40
    ld hl, $6e40
    ld d, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld h, d
    ld d, h
    and $40
    ld hl, $8e40
    ld d, [hl]
    jr nz, jr_01b_53ee

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $2e40
    ld d, l
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $ee40
    ld d, [hl]
    jr nz, jr_01b_5406

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0e40
    ld d, a
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $8e40
    ld d, l
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    and $40
    ld hl, $ee40
    ld d, h
    jr nz, jr_01b_542a

    sub e
    ld b, [hl]
    ld e, c
    ld d, h
    ld [hl], d
    ld [bc], a
    jp c, $9c9d

    ld d, b
    cp [hl]
    sub h
    ld b, b
    ld [hl], d
    ld [bc], a
    cp d
    ld bc, $af6b
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

jr_01b_54ca:
    xor a
    xor a
    xor a
    xor [hl]
    ld [bc], a
    ld hl, $0f50
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    and b
    reti


    db $10
    ld [bc], a
    db $10
    ld bc, $af6b
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0224
    db $10
    ld bc, $afda
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld d, b
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    and b
    reti


    db $10
    ld [bc], a
    db $10
    ld l, e
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $9400
    ld h, b
    add c
    jr nc, jr_01b_5546

    jr nz, jr_01b_54ca

    db $10
    ld [bc], a
    inc [hl]
    reti


    cp [hl]
    ld [bc], a
    add $32
    ld b, h
    daa
    add hl, sp
    adc b
    daa
    and b
    jr nc, jr_01b_55a6

jr_01b_5546:
    add d
    or h
    jp c, Jump_01b_6370

    inc [hl]
    inc de
    jp c, $8324

    ld d, b
    ld [bc], a
    ld hl, $1744
    daa
    add [hl]
    cp d
    ld b, b
    jp c, $afaf

    xor a
    xor a
    ld [bc], a
    ld hl, $6241
    db $10
    sub e
    inc sp
    ld [hl-], a
    db $10
    inc bc
    call nz, $3c4a
    cp d
    jp c, $43ae

    cp d
    sub h
    ld d, b
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $8100
    and b
    inc [hl]
    ld [bc], a
    jp c, $afaf

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

jr_01b_55a6:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $4674
    sbc c
    ld h, $99
    jr nz, jr_01b_55da

    add d
    cp [hl]
    ld [bc], a
    and d
    cp d
    ld b, b
    jp c, Jump_01b_4330

    ld [hl-], a
    inc de
    db $10
    ld l, e
    and b
    sub h
    call nz, Call_01b_7283
    jp c, $afaf

    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    and b
    reti


jr_01b_55da:
    db $10
    ld [bc], a
    db $10
    ld l, e
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $0124
    ld [hl-], a
    ldh [rSC], a
    ld hl, $0844
    dec h

jr_01b_55f7:
    cp d
    and b
    reti


    cp l
    ld de, $c483
    dec d
    ld b, $c9
    ld [hl], h
    ld [hl], b
    add e
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    dec de
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $7846
    add hl, sp
    add [hl]
    ld [hl], d
    ld [bc], a
    ld b, h
    ld [$ba25], sp
    and b
    reti


    cp l
    ld de, $c483
    dec d
    ld b, $c9
    ld [hl], h
    ld [hl], b
    add e
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $9342
    ld l, e
    db $10
    ld b, e
    and b
    jr nc, jr_01b_55f7

    ld b, b
    ld bc, JumpTable_10
    cp d
    or h
    jp c, $afaf

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
    inc b
    ld [bc], a
    reti


    or c
    sub b
    nop
    ld b, b
    jp c, $afaf

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
    xor a
    xor a
    xor a
    xor a
    ld [hl], d
    ret z

    ld [bc], a
    ld [hl], b
    ld [de], a
    ld [hl], h
    ld [hl-], a
    db $10
    sub e
    jr nc, @+$04

    ld hl, $af50
    xor a
    xor a
    dec c
    ld a, [bc]
    sbc h
    ld d, b
    push bc
    sub d
    ld [bc], a
    ld de, $4041
    add b
    ld b, b
    ld bc, $dab4
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, HeaderLogo
    inc b
    ld bc, $9dd9
    ld b, h
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld sp, $80a2
    ld bc, $02bd
    add d
    ld [hl], e
    inc de
    ld b, c
    ld d, b
    ld bc, $4010
    ld bc, $dab4
    xor a
    xor a
    xor a
    xor [hl]
    ld h, h
    sub e
    inc [hl]
    reti


    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld sp, $5274
    ld [hl], b
    ld hl, $1033
    add b
    db $10
    ld bc, $1141
    inc sp
    ld [de], a
    add e
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, b
    ld h, b
    inc bc
    ld [hl], h
    ld [hl-], a
    inc de
    inc sp
    ld [hl], b
    sub e
    inc sp
    ld [de], a
    add e
    ld b, b
    ld bc, $da10
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
    xor [hl]
    xor a
    xor a
    xor a
    xor a
    db $10
    reti


    ld bc, $4001
    ld h, b
    inc bc
    cp d
    ld b, b
    jp c, $afaf

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
    xor [hl]
    nop
    ldh [$ffd9], a
    inc h
    add e
    inc [hl]
    call z, Call_01b_7487
    ld [hl], b
    add h
    ld [bc], a
    jp c, $b150

    ld h, e
    inc sp
    ld b, h
    ld [bc], a
    ld hl, $84ba
    ld l, e
    push de
    adc b
    cp b
    sbc c
    add hl, sp
    cp d
    jp c, $aeaf

    inc h
    add e
    or c
    sub b
    nop
    reti


    xor a
    xor a
    xor a
    xor a
    ld [hl], h
    ld [bc], a
    ld hl, $70a4
    ld b, c
    ld [hl-], a
    add e
    inc sp
    inc b
    ld bc, $7033
    add h
    ld [bc], a
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $0274
    add d
    ld b, h
    db $10
    ld l, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add b
    ld b, b
    ld bc, $44be
    ld [bc], a
    ld hl, $01ba
    ld l, e
    ld b, b
    ld h, b
    inc bc
    ld [hl], h
    inc bc
    add b
    sub h
    cp l
    reti


    ld e, $cd
    dec [hl]
    sbc c
    cp l
    ld de, $3363
    ld [de], a
    add e
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    ld [bc], a
    ld hl, $70a4
    db $10
    add b
    reti


    ld [hl-], a
    add e
    cp d
    ld hl, $0433
    ld [de], a
    or h
    jp c, $a0ba

    ld h, h
    ld [bc], a
    reti


    db $10
    ld [hl], e
    inc hl
    ld b, b
    ld bc, $12bd
    add e
    ld [hl], d
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $8324
    or c
    sub b
    nop
    reti


    inc d
    ld bc, $7432
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    and h
    ld [hl], b
    ld b, c
    ld [hl-], a
    add e
    inc sp
    inc b
    ld bc, $7033
    add h
    ld [bc], a
    jp c, $afaf

    xor a
    xor a
    xor a
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld [hl], h
    ld [bc], a
    add d
    ld b, h
    db $10
    ld l, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add b
    ld b, b
    ld bc, $44be
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    cp d
    ld bc, $c46b
    sub h
    and h
    ld [bc], a
    cp l
    inc bc
    add b
    sub h
    cp l
    reti


    ld e, $cd
    dec [hl]
    sbc c
    cp l
    ld de, $3363
    ld [de], a
    add e
    jp c, $aeaf

    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    and h
    ld [hl], b
    db $10
    add b
    ld [hl-], a
    add e
    cp d
    ld hl, $0433
    ld [de], a
    and b
    ld h, h
    ld [bc], a
    db $10
    ld [hl], e
    inc hl
    ld b, b
    ld bc, $12bd
    add e
    ld [hl], d
    jp c, $afaf

    xor a
    xor a

jr_01b_589e:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add c
    ld b, e
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

jr_01b_58b4:
    xor a
    xor a
    xor a
    xor a
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_58c0:
    xor a
    xor a
    db $10
    ld bc, $8134
    cp l
    ld de, $2360
    sub h
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

jr_01b_58dc:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, b
    xor a
    xor a
    xor a
    xor a
    xor a
    ld l, $ba
    jp c, $8202

    db $10
    xor a
    ld [bc], a
    add d

jr_01b_58f1:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add b
    ld b, b

jr_01b_58fd:
    ld bc, $40e6
    inc de
    ld b, c
    ld e, b
    ld e, d
    ld [hl], c
    call $f420
    cp b
    ld [hl], a
    call Call_000_2104
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $7840
    ld e, d
    jr nz, jr_01b_589e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld a, d
    ld b, h
    inc l

jr_01b_5925:
    ld e, c
    or b
    ld e, c
    ld b, e
    ld e, d
    rst $18
    ld e, c
    and $40
    ld hl, $9840
    ld e, d
    jr nz, jr_01b_58b4

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c

jr_01b_5938:
    and $40
    ld hl, $b840
    ld e, d
    jr nz, jr_01b_58c0

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    adc $46
    ld c, l
    ld e, c
    adc b
    ld e, c
    ldh a, [rDMA]
    rrca
    ld h, a
    ld e, c
    ld d, h
    ld e, c
    and $40
    ld hl, $3840
    ld e, h
    jr nz, jr_01b_58dc

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    sub e
    ld b, [hl]
    ld d, $59

jr_01b_5967:
    dec bc
    ld b, a
    and $40
    ld hl, $d840
    ld e, e
    jr nz, jr_01b_58f1

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $f840
    ld e, e
    jr nz, jr_01b_58fd

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    sub e
    ld b, [hl]
    ld d, $59
    ldh a, [rDMA]
    rra
    adc a
    ld e, c
    ld d, h
    ld e, c
    ld l, $47
    and $40
    ld hl, $d840
    ld e, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_599c:
    ld b, c
    and $40
    ld hl, $1840
    ld e, h
    jr nz, jr_01b_5925

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    sub e
    ld b, [hl]
    ld d, $59
    and $40
    ld hl, $d840
    ld e, d
    jr nz, jr_01b_5938

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    inc de

jr_01b_59bf:
    ld b, c
    ld hl, sp+$5a
    ld [hl], c
    call $f420
    cp b
    ld [hl], h
    call Call_000_2104

jr_01b_59cb:
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    add b
    ld c, c
    ld b, l
    ld [de], a
    ld e, d
    daa
    ld e, d
    dec [hl]
    ld e, d
    and $40
    ld hl, $9840
    ld e, e
    jr nz, jr_01b_5967

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld a, l
    ld b, a
    and $40
    adc c
    ld b, a
    ld hl, $7140
    call $8020
    inc [hl]

jr_01b_59f8:
    ld b, b
    sbc e
    ld b, a
    db $ed
    ld e, c
    rst $28
    ld b, a
    and $40
    ld hl, $b840
    ld e, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    sub e
    ld b, [hl]
    ld d, $59
    ld [hl], h
    ld b, l
    and $40
    ld hl, $1840
    ld e, e
    jr nz, jr_01b_599c

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    ret z

    sub e
    ld b, [hl]
    ld d, $59
    sub e
    ld b, l
    and $40
    ld hl, $3840
    ld e, e
    jr nz, @-$7e

    sub e
    ld b, [hl]
    inc e
    ld e, d
    sub [hl]
    ld b, l
    and $40
    ld hl, $5840
    ld e, e
    jr nz, jr_01b_59bf

    sub e
    ld b, [hl]
    inc e
    ld e, d
    and $40
    ld hl, $7840
    ld e, e
    jr nz, jr_01b_59cb

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    add b
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld d, h
    ld e, d
    inc d
    sub h
    ld b, c
    ld sp, $d950
    xor a
    xor a
    xor a
    xor a
    jr nz, jr_01b_59f8

    jp c, $afaf

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

jr_01b_5a74:
    xor a
    xor a
    xor a
    xor [hl]
    sbc l
    sbc h
    ld d, b
    cp [hl]
    ld b, h
    ld [hl], d
    ld [bc], a
    ld b, b
    and h
    ld [hl], d
    ld [bc], a
    cp l
    ld [hl+], a
    db $10
    ld l, e
    xor a
    xor a
    inc b
    ld bc, $8144
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a

jr_01b_5a95:
    add b
    ld b, b
    ld bc, $e060
    ld l, d
    ld bc, $1401
    inc d
    add h
    and b
    inc de
    cp l
    ld [hl+], a
    ld [hl], e
    xor a
    xor a
    xor a
    cp l
    ld d, b
    reti


    inc d
    ld sp, $5380
    cp [hl]
    ld [bc], a
    or h
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    jr nc, jr_01b_5a74

    sbc l
    reti


    inc b
    ld bc, $8144
    ld sp, $0291
    cp l
    ld [hl+], a
    jp c, $afaf

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
    ld [bc], a
    sub h
    inc hl
    ld bc, $0274
    add b
    ld b, b
    ld [bc], a
    ld b, h
    cp l
    ld [hl+], a
    db $10
    ld l, e
    xor a
    xor a
    inc bc
    db $e3
    reti


    ld bc, $bd01
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor [hl]
    sbc l
    sbc h
    ld b, h
    xor a
    xor a
    xor a
    xor a
    jr nz, jr_01b_5a95

    ld b, h
    ld [bc], a
    sub h
    inc hl
    ld bc, $ac50
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
    ld l, l
    inc d
    ld [bc], a
    ld sp, $0292
    ld l, [hl]
    ld b, b
    ld [hl], d
    ld [bc], a
    cp l
    ld [hl+], a
    ld [hl], e
    ld [hl], d
    jp c, $31af

    sub d
    sub e
    inc [hl]
    reti


    ld bc, $7201
    db $10
    sub h
    and b
    ld hl, $2260
    ld b, e
    jp c, Jump_01b_526d

    ld [hl-], a
    ld [bc], a
    ld l, [hl]
    ld b, b
    ld [hl], d
    ld [bc], a
    cp l
    ld [hl+], a
    ld [hl], e
    ld [hl], d
    jp c, $afaf

    xor a
    db $10
    ld [hl], e
    add b
    ld b, b
    ld bc, $0153
    ld [hl], e
    and b
    reti


    ld bc, $bd01
    ld [hl+], a
    ld b, e
    jp c, Jump_01b_526d

    ld sp, $0292
    ld l, [hl]
    ld b, b
    ld [hl], d
    ld [bc], a
    cp l
    ld [hl+], a
    ld [hl], e
    ld [hl], d
    jp c, $afaf

    sbc [hl]
    sbc h
    ld d, b
    ld bc, $1401
    inc [hl]
    nop
    add d
    inc [hl]
    ld bc, $bd01
    ld [hl+], a
    ld b, e
    jp c, Jump_01b_4000

    jr nc, @+$43

    ld h, h
    reti


    ld h, e
    and b
    ld h, c
    jr nz, jr_01b_5be3

    ld b, h
    and h
    db $10
    and h
    and b
    nop
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d
    ld [bc], a
    ld b, c
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, bc
    add a
    and l
    sbc c
    ld [hl], h
    ld de, $3011
    ld bc, $bd44
    ld [hl+], a
    ld b, e
    ld l, e
    xor a
    xor a
    ld de, $94d0
    inc sp
    sub h
    db $10
    sub h
    ld h, h
    ld bc, $bd01
    ld [hl+], a
    ld [hl], d
    xor a
    xor a
    xor [hl]
    ld h, b
    jr nc, jr_01b_5bcc

    ld de, $1141
    inc sp
    ld [de], a
    cp d
    jr nz, jr_01b_5bc4

    ld b, e

jr_01b_5bc4:
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_5bcc:
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
    xor [hl]
    nop
    ld b, b

jr_01b_5bda:
    jr nc, jr_01b_5c20

    ld hl, $1394
    sub h
    ld b, b
    inc b
    ld h, h

jr_01b_5be3:
    ld bc, $21d9
    db $10
    inc [hl]
    inc [hl]
    cp [hl]
    ld de, $2160
    jr nc, @+$74

    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jr nz, jr_01b_5bda

    reti


    ld [bc], a
    ld hl, $70a4
    ld d, e
    ld [hl], c
    ld de, $2040
    ld bc, $afda
    xor a
    ld h, e
    and b

jr_01b_5c0a:
    ld h, c
    ld b, h
    ld de, $1122
    and b
    inc b
    inc d
    sub e
    inc sp
    ld bc, $2260
    ld [hl], d
    ld h, e
    and b
    ld h, c
    ld b, h
    db $10
    and h
    ld [hl], h
    reti


jr_01b_5c20:
    nop
    ld b, b
    jr nc, jr_01b_5c68

    ld [bc], a
    ld hl, $d941
    ld d, h

jr_01b_5c29:
    cp [hl]
    inc d
    ld hl, $0033
    and e
    ld h, b
    ld hl, $0292
    ld l, d
    ld l, d

jr_01b_5c35:
    xor a
    xor a
    xor a
    ld bc, $1032
    ld de, $3493
    reti


    nop
    ld b, b
    jr nc, jr_01b_5c87

    inc b
    ld h, h
    ld bc, $afa0
    ld h, e
    and b
    ld h, c
    ld b, c
    ld [hl-], a
    ld [bc], a
    or c
    add d
    inc [hl]
    inc b
    ld h, h
    ld bc, $2260
    ld [hl], d
    jp c, Jump_01b_40e6

    inc de
    ld b, c
    adc h
    ld e, l
    ld [hl], c
    call $f420
    cp b
    ld [hl], e
    call Call_000_2104
    ld b, b

jr_01b_5c68:
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld [hl], d
    ld e, h
    and $40
    ld hl, $ac40
    ld e, l
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]

jr_01b_5c81:
    ld b, c
    and $40
    ld hl, $cc40

jr_01b_5c87:
    ld e, l
    jr nz, jr_01b_5c0a

    inc [hl]
    ld b, b
    dec l

jr_01b_5c8d:
    ld b, c
    ld l, b
    ld b, c
    sub h
    ld e, h
    add b
    ld e, l
    adc e
    ld b, e
    inc l
    ld bc, $5d53
    jp c, Jump_000_0245

    sub e
    ld b, [hl]
    ld [hl], h
    ld e, l
    and $40
    ld hl, $2c40
    ld e, [hl]
    jr nz, jr_01b_5c29

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $4c40
    ld e, [hl]
    jr nz, jr_01b_5c35

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b

jr_01b_5cba:
    ld b, c
    cp a
    ld e, h
    add b
    ld e, l
    adc e
    ld b, e
    db $f4
    ld bc, $5d53
    jp c, $0145

    sub e
    ld b, [hl]
    ld [hl], h
    ld e, l
    and $40
    ld hl, $6c40
    ld e, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $8c40
    ld e, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld [$805c], a
    ld e, l
    adc e
    ld b, e
    inc l
    ld bc, $5d53

jr_01b_5cf0:
    inc sp
    ld b, h
    push bc
    cp b
    ld a, [bc]
    sub e
    ld b, [hl]
    ld [hl], h
    ld e, l
    and $40
    ld hl, $ac40
    ld e, [hl]
    jr nz, jr_01b_5c81

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $cc40
    ld e, [hl]
    jr nz, jr_01b_5c8d

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    rla
    ld e, l
    add b
    ld e, l
    adc e
    ld b, e
    ret z

    nop
    ld d, e
    ld e, l
    inc sp
    ld b, h
    add $b8
    ld a, [bc]
    sub e
    ld b, [hl]
    ld [hl], h
    ld e, l
    and $40

jr_01b_5d28:
    ld hl, $ec40
    ld e, [hl]
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $0c40
    ld e, a
    jr nz, jr_01b_5cba

    inc [hl]
    ld b, b
    dec l
    ld b, c
    ld l, b
    ld b, c
    ld b, h
    ld e, l
    add b
    ld e, l
    adc e
    ld b, e
    ld h, h
    nop
    ld d, e
    ld e, l
    inc sp
    ld b, h
    rst $00
    cp b
    ld a, [bc]
    sub e
    ld b, [hl]
    ld [hl], h
    ld e, l
    and $40
    ld hl, $2c40
    ld e, a
    jr nz, @-$7e

    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld h, h
    ld e, l
    and $40
    ld hl, $4c40
    ld e, a
    jr nz, jr_01b_5cf0

    sub e
    ld b, [hl]
    ld e, e
    ld e, l
    and $40
    ld hl, $ec40
    ld e, l
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, e
    ld e, l
    and $40
    ld hl, $0c40
    ld e, [hl]
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, e
    ld e, l
    nop
    reti


    xor a
    xor a
    xor a
    xor a
    jr nz, jr_01b_5d28

    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, b
    ld b, c
    db $10
    reti


    jr nc, @-$37

    inc sp
    ld bc, $6011
    ld [hl+], a
    db $10
    ld l, e
    xor a
    xor a
    xor [hl]
    jr jr_01b_5e28

    ld d, $bd
    ld [hl+], a
    ld b, e
    jp c, $9231

    sub e
    inc [hl]
    nop
    ld h, b
    ld [de], a
    inc sp
    reti


    ld [hl-], a
    db $10
    add e
    ld h, h
    ld d, d
    ld de, $c634
    inc b
    ld bc, $2021
    ld [hl], d
    jp c, $aeaf

    ld b, e
    cp d
    sub h
    ld d, b
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $6004
    ld sp, $e4be
    ld a, d
    jr nz, @+$62

    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, b
    ld bc, $bed9
    ld [bc], a
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc bc
    sub e
    ld l, e
    ld bc, $4080
    ld bc, $bd44
    ld [hl+], a
    db $10
    jp c, $afaf

    xor a
    xor a
    ld [hl], e
    db $10
    add c
    ld h, b
    ld hl, $da30
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_5e28:
    xor a
    xor a
    xor a
    xor a
    inc sp
    ld bc, $9221
    ld [de], a
    cp l
    ld [hl+], a
    ld b, e
    jp c, $0104

    ld hl, $9312
    inc sp
    reti


    jr nc, jr_01b_5e3f

    add c

jr_01b_5e3f:
    sub d
    ld [de], a
    ld h, h
    db $10
    ld bc, $1252
    ld hl, $2260
    ld [hl], d
    jp c, $43ae

    cp d
    sub h
    ld d, b
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $4414
    rla
    adc c
    ld a, b
    sbc b
    dec h
    sbc c
    ld d, b
    reti


    ld [hl], e
    jr nc, jr_01b_5e9a

    ld b, h
    xor a
    xor a
    inc sp
    cp h
    ld [de], a
    add c
    ld b, b
    ld b, h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    dec bc
    ld a, [bc]
    add hl, de
    cp l
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d

jr_01b_5e9a:
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $1130
    jr nc, jr_01b_5ee3

    ld b, h
    dec h
    dec h
    ld d, [hl]
    dec d
    add [hl]

jr_01b_5eb6:
    ld [hl], h
    reti


    ld [hl-], a
    db $10
    sub e
    jr nc, jr_01b_5ec1

    ld b, c
    and c
    add c
    cp l

jr_01b_5ec1:
    ld [hl+], a
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    dec bc
    ld a, [bc]
    add hl, de
    cp l
    inc c
    ld a, [bc]
    ld a, [bc]
    ld l, $41
    ld b, b
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a

jr_01b_5ee3:
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $8314
    ld d, b
    reti


    ld b, c
    ld [de], a
    ld h, b
    sub h
    cp l
    ld [hl+], a
    ld [hl], d
    jp c, $11bd

    jr nc, jr_01b_5f2f

    cp d
    db $10
    add b
    ld d, a
    ld a, b
    ld d, a
    ld a, b
    ld b, h
    dec b
    scf
    dec b
    scf
    ld [hl], d
    jp c, $aeaf

    dec bc
    ld a, [bc]
    add hl, de
    cp l
    dec bc
    ld a, [bc]

jr_01b_5f12:
    ld a, [bc]
    ld l, $41
    ld b, b
    add c
    ld h, b
    ld [hl+], a
    ld [hl], d
    jp c, $afaf

    db $10

jr_01b_5f1e:
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $8000
    ld l, e

jr_01b_5f2f:
    inc b
    db $10
    ld b, e
    and b
    jr nc, jr_01b_5eb6

    ld b, b
    ld bc, $22bd
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_5f43:
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_5f48:
    xor a
    xor a
    xor a
    xor a
    and b
    sub h
    call nz, $3393
    ld [de], a
    cp d
    jr nz, jr_01b_5f56

    ld b, e

jr_01b_5f56:
    jp c, $afaf

    xor a
    xor a
    xor a
    nop
    add c
    and b
    inc [hl]
    ld [bc], a
    and h
    or b
    ld bc, $2160
    jr nc, jr_01b_5f48

    ld l, d
    xor a
    xor a
    xor a
    and $40
    inc de
    ld b, c
    or l
    ld h, c
    ld [hl], c
    call $f420
    cp b
    add c
    call Call_000_2104
    ld b, b
    ld [hl], c
    call $8020

jr_01b_5f80:
    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    add [hl]
    ld e, a
    and $40
    ld hl, $d540
    ld h, c
    jr nz, jr_01b_5f12

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, jr_01b_5f1e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    jp nc, Jump_01b_78b8

jr_01b_5fa5:
    nop
    jr jr_01b_5fea

    xor h
    ld e, a
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    jp nc, Jump_000_0bb8

    ld b, h
    or l
    cp b
    inc b
    sub e
    ld b, [hl]
    ld a, b
    ld h, c
    and $40
    ld hl, $3540
    ld h, d
    jr nz, jr_01b_5f43

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    db $d3
    cp b
    sub [hl]

jr_01b_5fd6:
    nop
    jr jr_01b_601b

    db $dd
    ld e, a
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    db $d3

jr_01b_5fe2:
    cp b
    dec bc
    ld b, h
    or [hl]
    cp b
    dec b
    sub e
    ld b, [hl]

jr_01b_5fea:
    ld a, b
    ld h, c
    and $40
    ld hl, $5540
    ld h, d
    jr nz, @-$7e

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, jr_01b_5f80

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    call nc, $c8b8

jr_01b_6007:
    nop
    jr jr_01b_604c

    ld c, $60
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    call nc, Call_000_0bb8
    ld b, h
    or a
    cp b
    ld b, $93
    ld b, [hl]

jr_01b_601b:
    ld a, b
    ld h, c
    and $40
    ld hl, $7540
    ld h, d
    jr nz, jr_01b_5fa5

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, @-$7e

    inc [hl]
    ld b, b

Jump_01b_6033:
    rst $30
    ld b, c
    push de
    cp b
    inc l

jr_01b_6038:
    ld bc, $4218
    ccf
    ld h, b
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    push de

jr_01b_6044:
    cp b
    dec bc
    ld b, h
    cp b
    cp b
    rlca
    sub e
    ld b, [hl]

jr_01b_604c:
    ld a, b
    ld h, c
    and $40
    ld hl, $9540
    ld h, d
    jr nz, jr_01b_5fd6

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, jr_01b_5fe2

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    sub $b8
    sub [hl]

jr_01b_6069:
    nop
    jr jr_01b_60ae

    ld [hl], b
    ld h, b
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    sub $b8
    dec bc
    ld b, h
    cp c
    cp b
    ld c, [hl]
    sub e
    ld b, [hl]
    ld a, b
    ld h, c
    and $40
    ld hl, $b540
    ld h, d
    jr nz, jr_01b_6007

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    rst $10
    cp b
    ret z

jr_01b_609a:
    nop
    jr jr_01b_60df

    and c
    ld h, b
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    rst $10

jr_01b_60a6:
    cp b
    dec bc
    ld b, h
    cp d
    cp b
    ld c, a
    sub e
    ld b, [hl]

jr_01b_60ae:
    ld a, b
    ld h, c
    and $40
    ld hl, $d540
    ld h, d
    jr nz, jr_01b_6038

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, jr_01b_6044

    inc [hl]
    ld b, b
    rst $30

jr_01b_60c7:
    ld b, c
    ret c

    cp b
    inc l
    ld bc, $4218
    jp nc, $a960

    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    ret c

    cp b
    dec bc
    ld b, h
    cp e
    cp b
    ld d, b
    sub e
    ld b, [hl]

jr_01b_60df:
    ld a, b
    ld h, c
    and $40
    ld hl, $f540
    ld h, d
    jr nz, jr_01b_6069

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, @-$7e

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    reti


    cp b
    db $f4
    ld bc, $4218
    inc bc

jr_01b_6100:
    ld h, c
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    reti


    cp b
    dec bc
    ld b, h
    cp h
    cp b
    ld d, c
    sub e
    ld b, [hl]
    ld a, b
    ld h, c
    and $40
    ld hl, $1540
    ld h, e
    jr nz, jr_01b_609a

    inc [hl]
    ld b, b
    inc [hl]
    ld b, c
    and $40
    ld hl, $d540
    ld h, e
    jr nz, jr_01b_60a6

    inc [hl]
    ld b, b
    rst $30
    ld b, c
    jp c, $f4b8

    ld bc, $4218
    inc [hl]

jr_01b_6131:
    ld h, c
    xor c
    ld h, c
    xor l
    ld b, e
    ld c, e
    ld h, c
    jp c, Jump_000_0bb8

    ld b, h
    or h
    cp b
    inc bc
    and $40
    ld hl, $5540
    ld h, e
    jr nz, jr_01b_60c7

    sub e
    ld b, [hl]
    ld e, a
    ld h, c
    and $40
    inc de
    ld b, c
    ld [hl], l
    ld h, e
    ld [hl], c
    call $f420
    cp b
    ld [hl], c
    call Call_000_2104
    ld b, b
    ld [hl], c
    call $8020
    inc [hl]
    ld b, b
    daa
    ld b, l
    ld l, $45
    rst $38
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    ld l, b
    ld h, c
    and $40
    ld hl, $b540
    ld h, e
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, a
    ld h, c
    and $40
    ld hl, $f540
    ld h, c
    jr nz, jr_01b_6100

    inc [hl]
    ld b, b
    db $dd
    ld b, e
    xor [hl]
    cp b
    ld a, [bc]
    ld h, c
    ld h, c
    db $dd
    ld b, e
    xor a
    cp b
    ld [de], a
    ld h, c
    ld h, c
    rst $30
    ld b, e
    xor [hl]
    cp b
    cp c
    ld b, b
    xor [hl]
    sbc a
    ld de, $9f9a
    inc [hl]
    ld b, c
    and $40
    ld hl, $9540
    ld h, e
    jr nz, @-$7e

    sub e
    ld b, [hl]
    ld e, a
    ld h, c
    and $40
    ld hl, $1540
    ld h, d
    jr nz, jr_01b_6131

    sub e
    ld b, [hl]
    ld e, a
    ld h, c
    ld bc, $9380
    ld hl, $0190
    ld h, b
    inc hl
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    cp $fe
    cp $fe
    ld sp, $9490
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    dec d
    bit 0, h
    jr nc, jr_01b_621d

    cp d
    ld [hl], d
    jp c, Jump_01b_7050

    ld [de], a
    inc h
    cp d
    ld [hl-], a
    inc de
    cp [hl]
    ld [bc], a
    add c
    ld b, e
    ld d, b
    ld [hl], b
    ld [hl+], a
    ld bc, $da44
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    inc bc
    ld d, e
    reti


    nop
    add c
    and b
    inc [hl]
    ld [bc], a
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, b
    ld bc, $3141
    adc [hl]
    ld [hl], h
    nop
    and e
    inc sp
    ld b, e
    jp c, $afaf

    xor a
    xor a
    xor a
    inc bc
    db $e3
    ld a, d
    xor h
    xor a
    xor a
    xor a
    xor a

jr_01b_621d:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    sub e
    inc sp
    ld [de], a
    add e
    ld b, b
    ld bc, $e444
    ld a, d
    ld l, e
    xor a
    xor a
    xor a
    xor a
    xor a
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, jr_01b_6280

    cp d
    ld b, e
    jp c, $cb15

    ld [hl], d
    add c
    reti


    ld sp, $9392
    inc [hl]
    inc h
    cp d
    ld [hl-], a
    ld b, h
    and b
    inc b
    inc h
    ld bc, $da72
    xor a
    xor [hl]
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, @+$45

    cp d
    ld [hl], d
    jp c, $b261

    ld [hl], h
    nop
    and e
    add d
    inc [hl]
    ld b, b
    ld [hl-], a
    ld b, h
    nop
    ld bc, $50ba
    db $10
    add e
    ld b, b
    ld bc, $ba94
    ld [hl], d
    jp c, $39ae

    rlca
    ld l, c
    adc c
    add hl, de
    ld h, $ba
    ld b, e
    jp c, $3101

jr_01b_6280:
    call nz, $3394
    ld h, b
    and b
    db $10
    db $10
    add d
    inc de
    cp [hl]
    reti


    inc b
    ld bc, $0121
    sub h
    cp d
    ld [hl], d
    jp c, $aeaf

    ld b, l
    daa
    ld b, h
    jr nc, jr_01b_62dd

    cp d
    ld b, e
    jp c, $cb15

    inc [hl]
    inc b
    sub h
    ld b, b
    or c
    reti


    ld d, b
    ld [hl], b
    ld [de], a
    inc h
    cp d
    ld [hl-], a
    inc de
    cp [hl]
    reti


    ld [hl], b
    ld [hl+], a
    ld bc, $da72
    xor a
    xor [hl]
    add l
    sbc b
    dec d
    jr z, @+$08

    ld b, h
    jr nc, jr_01b_6300

    cp d
    ld [hl], d
    jp c, Jump_000_2745

    ld [hl], d
    add c
    ld h, h
    ld sp, $9392
    inc [hl]
    reti


    inc h
    cp d
    ld [hl-], a
    ld b, h
    ld d, b
    inc b
    inc h
    ld bc, $da72
    xor [hl]
    ld b, [hl]
    sbc c
    or [hl]
    sbc c
    ld b, h
    jr nc, jr_01b_631f

    cp d

jr_01b_62dd:
    ld b, e
    jp c, Jump_000_2745

    ld [hl], d
    add c
    ld h, h
    reti


    ld sp, $9392
    inc [hl]
    inc h
    cp d
    ld [hl-], a
    ld b, h
    ld d, b
    inc b
    inc h
    ld bc, $da72
    xor a
    xor [hl]
    res 1, c
    sbc b
    add hl, de
    add [hl]
    ld a, d
    ld b, h
    jr nc, @+$45

    cp d
    ld b, e

jr_01b_6300:
    jp c, Jump_01b_6033

    ld d, b
    reti


    db $10
    db $10
    add d
    inc de
    cp [hl]
    reti


    ld b, b

jr_01b_630c:
    sub h
    cp [hl]
    ld h, h
    inc [hl]
    add e
    add d
    ld [hl], d
    jp c, $c8ae

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, @+$45

    ld d, b
    ld b, e
    reti


jr_01b_631f:
    cp [hl]
    ld [bc], a
    add $32
    ld b, h
    reti


    xor c
    ld d, l
    sbc c
    ld b, c
    ld b, b
    add d
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld b, e
    cp d
    sub h
    ld d, b
    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    ld l, $ba
    ld [hl], d
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    db $10
    ld [bc], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld b, b
    ld bc, $5303
    reti


    nop
    add c
    and b
    inc [hl]
    ld [bc], a
    jp c, $1230

    jr nz, @-$6a

    db $10
    sub e
    inc sp
    jr nc, jr_01b_6379

    jr nz, @-$6a

    ld [bc], a
    inc bc
    inc sp
    ld b, e
    jp c, $afaf

Jump_01b_6370:
    xor a
    xor a
    xor a
    xor a
    xor a
    cp $fe
    cp $fe

jr_01b_6379:
    ld sp, $9490
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a

jr_01b_6383:
    xor a
    xor a
    inc b
    db $10
    ld b, e
    and b
    jr nc, jr_01b_630c

    inc sp
    ld b, b

jr_01b_638d:
    ld bc, $e472
    jp c, $afaf

    xor a
    xor a
    inc h
    add e

jr_01b_6397:
    inc [hl]
    reti


    ld d, b
    or c
    ld h, e
    inc sp
    db $10
    sub e
    inc sp
    ld [de], a

jr_01b_63a1:
    add e
    jr nc, jr_01b_63b4

    add b
    or [hl]
    sub a
    rlca
    adc c
    ld h, h
    push de

jr_01b_63ab:
    adc b
    cp b
    sbc c
    add hl, sp
    jp c, $afaf

    xor a
    xor a

jr_01b_63b4:
    xor a

jr_01b_63b5:
    or c
    sub b
    reti


    inc d
    add e
    db $10
    add b
    ld h, h
    and b
    sub h

jr_01b_63bf:
    call nz, $3393
    ld b, e
    jp c, $c4af

    ld bc, $7ac4

jr_01b_63c9:
    ld bc, $afda
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_01b_63d3:
    xor a
    xor a
    ld b, b
    sub h
    sbc $10

Call_01b_63d9:
    ld [bc], a
    ld b, h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    sbc $af
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, e
    cp d
    sub h
    ld d, b
    xor a
    xor a
    xor a
    xor a
    xor a
    ld l, $ba
    ld [hl], d
    and $40
    inc [hl]
    ld b, b
    sub e
    ld b, [hl]
    ld sp, hl
    ld h, e
    ld hl, $5740
    ld h, h
    jr nz, jr_01b_6383

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $7740
    ld h, h
    jr nz, jr_01b_638d

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $9740
    ld h, h
    jr nz, jr_01b_6397

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $b740
    ld h, h
    jr nz, jr_01b_63a1

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $d740
    ld h, h
    jr nz, jr_01b_63ab

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $f740
    ld h, h
    jr nz, jr_01b_63b5

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $1740
    ld h, l
    jr nz, jr_01b_63bf

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $3740
    ld h, l
    jr nz, jr_01b_63c9

    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $5740
    ld h, l
    jr nz, jr_01b_63d3

    sub e
    ld b, [hl]
    push af
    ld h, e
    xor a
    xor a
    xor a
    xor a
    xor a
    dec d
    bit 0, h
    jr nc, jr_01b_64a4

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
    dec bc
    sbc $af
    dec bc
    inc c
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, jr_01b_64c6

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    dec bc
    rrca
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, jr_01b_64e5

    xor a
    xor a

jr_01b_64a4:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    inc c
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, sp
    rlca
    ld l, c
    adc c
    add hl, de
    ld h, $44
    jr nc, jr_01b_6506

    xor a
    xor a
    xor a

jr_01b_64c6:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, l
    daa
    ld b, h
    jr nc, jr_01b_6524

    xor a
    xor a
    xor a
    xor a

jr_01b_64e5:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    dec bc
    rrca
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add l
    sbc b
    dec d
    jr z, jr_01b_6506

    ld b, h
    jr nc, jr_01b_6546

    xor a
    xor a
    xor a

jr_01b_6506:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    inc c
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, [hl]
    sbc c
    or [hl]
    sbc c
    ld b, h
    jr nc, jr_01b_6566

    xor a

jr_01b_6524:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    dec c
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    res 1, c
    sbc b
    add hl, de
    add [hl]
    ld a, d
    ld b, h
    jr nc, jr_01b_6586

    xor a
    xor a
    xor a

jr_01b_6546:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, jr_01b_65a5

    xor a
    xor a
    xor a
    xor a

jr_01b_6566:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec bc
    sbc $af
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, $af
    xor a
    xor a
    xor a
    xor a
    ld hl, $8b40
    ld h, l
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $9b40
    ld h, l
    db $10

jr_01b_6586:
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, $01b0
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
    or c
    jr nc, jr_01b_65b4

    ld b, h
    or h
    ld [bc], a

jr_01b_65a5:
    ld sp, $af12
    xor a
    xor a
    xor a
    ld hl, $f140
    ld h, l
    db $10
    add b
    sub e
    ld b, [hl]
    push af

jr_01b_65b4:
    ld h, e
    ld hl, $0140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $1140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $2140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $3140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $4140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $5140
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    xor a
    xor a
    xor a
    xor a
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    inc c
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
    res 0, l
    ld h, $af
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
    ld [bc], a
    ld h, b
    ld b, h
    dec d
    ret


    sbc c
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
    ld sp, $2131
    ret z

    add c
    ld de, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], $7a
    or a
    ld l, b
    ld b, $15
    ld a, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ret


    dec [hl]
    ld a, d
    ld l, b
    ld b, $15
    ld a, d
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, $bb40
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $cb40
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $db40
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $eb40
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $fb40
    ld h, [hl]
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $0b40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $1b40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $2b40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $3b40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $1074
    ld [bc], a
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
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld [hl], h
    db $10
    ld [bc], a
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
    ld [bc], a
    ld hl, $0844
    dec h
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
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld b, h
    ld [$af25], sp
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

Jump_01b_66ff:
    xor a
    ld [bc], a
    ld hl, $1744
    daa
    add [hl]
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
    ld [bc], a
    ld hl, $3044
    ld b, e
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
    ld [hl], d
    ret z

    ld [bc], a
    ld [hl], b
    ld [de], a
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
    ld [bc], a
    ld hl, $0274
    add d
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
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld [hl], h
    ld [bc], a
    add d
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, $7d40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $8d40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $9d40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $ad40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $bd40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jr jr_01b_67ff

    ld d, $af
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
    inc sp
    ld bc, $9221
    ld [de], a
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
    rla
    adc c
    ld a, b
    sbc b
    dec h
    sbc c
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
    inc b
    ld b, c
    and c
    add c
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
    ld b, c
    ld [de], a
    ld h, b
    sub h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, $ff40
    ld h, a
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $0f40
    ld l, b
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $1f40
    ld l, b
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $2f40
    ld l, b
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e
    ld hl, $3f40
    ld l, b
    db $10
    add b
    sub e
    ld b, [hl]
    push af
    ld h, e

jr_01b_67ff:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp z, $877a

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
    inc [hl]
    ld [de], a
    inc hl
    ld bc, $0678
    sbc c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $db
    set 0, e
    rlca
    ld hl, $af91
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, e
    or b
    ld h, b
    ld hl, $92a1
    ld [de], a
    add h
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
    ld h, [hl]
    add a
    rla
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, b
    ld l, c
    push hl
    ld a, [$cd6f]
    ld e, a
    ld a, [$cd70]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_68ae

jr_01b_685f:
    push af
    inc de
    ld a, e
    ld [$cd6f], a
    ld a, d
    ld [$cd70], a
    pop af
    ld c, a
    push bc
    ld a, [$cd6e]
    push af
    inc a
    ld [$cd6e], a
    pop af
    ld de, $99c2
    cp $90
    jr c, jr_01b_687f

    ld de, $99f2

jr_01b_687f:
    sub $80
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    pop bc
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_68a9

    dec hl
    dec hl
    ret


jr_01b_68a9:
    xor a
    ld [$cd97], a
    ret


jr_01b_68ae:
    inc de
    ld a, [$cd6e]
    inc a
    ld [$cd6e], a
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_68c6

    ld a, [de]
    cp $af
    jr nz, jr_01b_685f

    jr jr_01b_68ae

jr_01b_68c6:
    pop hl
    xor a
    ld [$cd97], a
    ret


    push bc
    ld hl, $69a8
    call Call_01b_698a
    ld a, [hl+]
    cp $02
    jr z, jr_01b_68da

    jr jr_01b_68f5

jr_01b_68da:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_01b_6970
    call Call_000_316d
    ld hl, $cccd
    ld de, $cd86
    ld b, $05
    call Call_000_210f
    pop hl
    inc hl
    inc hl
    ret


jr_01b_68f5:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd71
    ld b, $20
    call Call_000_210f
    pop hl
    ret


    push bc
    ld hl, $69a8
    call Call_01b_698a
    inc hl
    ld de, $cd71
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc hl
    ld a, [hl]
    call Call_01b_6970
    call Call_000_316d
    ld hl, $cccd
    ld de, $cd76
    ld b, $05
    call Call_000_210f
    pop hl
    ret


    push bc
    ld hl, $69a8
    call Call_01b_698a
    ld [hl], $ff
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_01b_6970
    call Call_01b_6949
    pop hl
    ret


Call_01b_6949:
    ld b, h
    ld c, l
    ld hl, sCurrentMoneyL
    call Call_000_0a14
    ld a, [sCurrentMoneyH]
    or a
    ret z

    ld hl, sCurrentMoneyL
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $869f
    ld a, l
    sub e
    ld a, h
    sbc d
    ret c

    ld hl, $869f
    ld a, l
    ld [sCurrentMoneyL], a
    ld a, h
    ld [sCurrentMoneyM], a
    ret


Call_01b_6970:
    ld hl, $2ee0
    cp $a0
    ret nc

    ld hl, $1f40
    cp $50
    ret nc

    ld hl, $1388
    ret


Call_01b_6980:
    ld hl, $3a98
    cp $03
    ret z

    ld hl, $01f4
    ret


Call_01b_698a:
    push hl
    ld hl, $cd9b
    ld a, [$cd64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    call Call_01b_699d
    ret


Call_01b_699d:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c
    ld a, $03
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [wNextMapIndex], a
    ld a, $1d
    ld [wTransitionRelated2], a
    ret


    ld a, $02
    ld [$cd2b], a
    ld a, $07
    ld [$cd2a], a
    ld a, $19
    ld [wNextMapIndex], a
    ld a, $1d
    ld [wTransitionRelated2], a
    ret


    push bc
    ld hl, $69b0
    call Call_01b_698a
    ld a, [hl]
    ld [hl], $ff
    call Call_01b_6980
    call Call_01b_6949
    pop hl
    ret


    push bc
    ld hl, $69b0
    call Call_01b_698a
    ld a, [hl+]
    cp $02
    jr z, jr_01b_6a04

    cp $03
    jr nz, jr_01b_6a19

jr_01b_6a04:
    call Call_01b_6980
    call Call_000_316d
    ld hl, $cccd
    ld de, $cd86
    ld b, $05
    call Call_000_210f
    pop hl
    inc hl
    inc hl
    ret


jr_01b_6a19:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld l, e
    ld h, a
    ld de, $cd71
    ld b, $20
    call Call_000_210f
    pop hl
    ret


    push bc
    ld a, [$cd64]
    add a
    add a
    ld hl, $6a61
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd71
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $69b0
    call Call_01b_698a
    ld a, [hl]
    call Call_01b_6980
    call Call_000_316d
    ld hl, $cccd
    ld de, $cd76
    ld b, $05
    call Call_000_210f
    pop hl
    ret


    dec bc
    db $fd
    ld h, e
    xor a
    inc c
    db $fd
    ld h, e
    xor a
    dec c
    db $fd
    ld h, e
    xor a
    ld c, $fd
    ld h, e
    xor a
    ld h, b
    ld l, c
    push hl
    ld a, [$cd6f]
    ld e, a
    ld a, [$cd70]
    ld d, a
    ld a, [de]
    cp $af
    jr z, jr_01b_6ad8

jr_01b_6a81:
    push af
    inc de
    ld a, e
    ld [$cd6f], a
    ld a, d
    ld [$cd70], a
    pop af
    ld c, a
    ld a, [$cd6e]
    ld e, a
    push af
    inc a
    ld [$cd6e], a
    ld hl, $4001
    ld d, $11
    call $0671
    pop af
    ld b, a
    ld de, $99c2
    cp $70
    jr c, jr_01b_6aaa

    ld de, $99f2

jr_01b_6aaa:
    sub $60
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_6ad3

    dec hl
    dec hl
    ret


jr_01b_6ad3:
    xor a
    ld [$cd97], a
    ret


jr_01b_6ad8:
    inc de
    ld a, [$cd6e]
    inc a
    ld [$cd6e], a
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01b_6af0

    ld a, [de]
    cp $af
    jr nz, jr_01b_6a81

    jr jr_01b_6ad8

jr_01b_6af0:
    pop hl
    xor a
    ld [$cd97], a
    ret


    and $40
    ld [hl], c
    ld l, d
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    db $fc
    ld l, d
    ld [hl], c
    ld l, d
    ld b, c
    ld b, l
    sub e
    ld b, [hl]
    inc b
    ld l, e
    ld hl, $3440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $4440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $6440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $8440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $a440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $d440
    ld l, h
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $3440
    ld l, l
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $6440
    ld l, l
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $8440
    ld l, l
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $c440
    ld l, l
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $f440
    ld l, l
    db $10
    ld h, b
    sub e
    ld b, [hl]
    or $6a
    ld hl, $5440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $7440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $9440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $b440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $c440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $e440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $f440
    ld l, h
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $0440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $1440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $2440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $4440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $5440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $7440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $9440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $a440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $b440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $d440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $e440
    ld l, l
    db $10
    ld [hl], b
    sub e
    ld b, [hl]
    nop
    ld l, e
    ld hl, $0440
    ld l, [hl]
    db $10
    ld [hl], b

jr_01b_6c30:
    sub e
    ld b, [hl]
    nop
    ld l, e
    ret c

    ret c

    ret c

    db $10
    ld bc, $3250
    ret c

    ret c

    daa
    dec [hl]
    sbc b
    ld d, a
    ret c

    ret c

    ret c

    ld [$b8a7], sp
    and a
    jr c, jr_01b_6c30

    set 2, l
    adc c
    jp nz, Jump_01b_7a96

    daa
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld de, $d8bc
    inc hl
    ld bc, $3101
    ret c

    ret c

    ret c

    and e
    sub h
    nop
    sub h
    reti


    push de
    adc c
    jp nz, Jump_01b_7a96

    daa
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
    ld [hl], e
    cp d
    ret c

    ld [hl], b
    ld [hl+], a
    ld d, c
    add h
    ret c

    ret c

    ret c

    ld d, $95
    add l
    rla
    dec [hl]
    ld a, d
    ld b, $68
    ld a, d
    or [hl]
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
    ld h, b
    ld [hl-], a
    sub b
    ld h, b
    ld bc, $20a2
    ret c

    ret c

    ret c

    daa
    sub $26
    sub l
    add a
    dec h
    sbc c
    rla
    daa
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
    ld [hl], b
    ld h, b
    jr nc, jr_01b_6cf1

    ret c

    inc [hl]
    ld h, h
    ld h, c
    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, c
    ld [hl], b
    inc d
    ld hl, $23d8
    ld [hl-], a
    inc d
    ret c

    ret c

    push de
    adc c
    ld l, c
    ld a, d
    ld h, $97
    sbc c
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
    inc b
    inc b
    ld b, h
    ret c

    ld [hl], b
    ld [hl+], a
    inc b

jr_01b_6cf1:
    ret c

    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld bc, $1021
    ld [hl], e
    ret c

    ld h, b
    add c
    inc d
    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc hl
    ld de, $d843
    nop
    ld de, $8144
    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [de], a
    ld [hl-], a
    or b
    ld [hl], e
    ret c

    or c
    sub c
    sub h
    ld bc, $af31
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld b, b
    or b
    ld [hl], e
    ret c

    inc [hl]
    ld h, c
    inc b
    ret c

    ret c

    inc d
    ld [bc], a
    ld d, h
    ld [bc], a
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
    jr nz, jr_01b_6d4d

    inc [hl]

jr_01b_6d4d:
    ld [bc], a
    ret c

    inc d
    ld [bc], a
    or c
    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, c
    ld [hl], b
    and c
    ret c

    ld h, c
    ld de, $d8d8
    ret c

    ret c

    add hl, de
    ld a, d
    jp nz, $48e6

    ld a, d
    dec [hl]
    ld a, d
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
    ld b, e
    cp d
    ld sp, $83af
    ld bc, $d870
    ret c

    ret c

    push de
    adc c
    and a
    add l
    ld h, l
    ld a, d
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
    ld c, [hl]
    cpl
    ld a, [hl-]
    ccf
    ret c

    ld c, [hl]
    cpl
    ld a, [hl-]
    ccf
    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc b
    ld b, c
    and b
    ld [hl], e
    add b
    ret c

    ld b, h
    add $70
    ld [hl+], a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld sp, $0291
    inc h
    sub h
    or c
    ret c

    ld de, $3472
    jp nz, Jump_000_06b5

    ld b, l
    ld a, d
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
    ld [hl], c
    ld [bc], a
    ld de, $51d8
    add h
    ret c

    ret c

    ret c

    ret c

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl], d
    ld hl, $0301
    ld h, b
    add d
    ret c

    ret c

    ret c

    ret c

    add hl, de
    sbc c
    rst $10
    ld a, d
    or l
    ld a, d
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
    inc b
    ld de, $af44
    ld [hl], d
    ld [bc], a
    or c
    add h
    ld [bc], a
    ret c

    nop
    inc b
    rst $18
    dec b
    ld b, $05
    ld b, $01
    jr jr_01b_6e1e

jr_01b_6e1e:
    ld d, c
    ld d, d
    rst $30
    ld d, e
    add hl, bc
    xor b
    jr jr_01b_6e26

jr_01b_6e26:
    dec d
    ld d, $15
    ld d, $1e
    add hl, bc
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    add hl, bc
    ld [bc], a
    pop hl
    inc bc
    add hl, bc
    dec b
    rst $08
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec bc
    dec bc
    inc b
    dec bc
    ld [bc], a
    add hl, de
    ld a, [de]
    ld h, e
    dec de
    inc e
    add hl, bc
    ld b, $eb
    inc bc
    ld hl, $0109
    ld bc, $020f
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    pop bc
    jr jr_01b_6e7d

    ld [bc], a
    rrca
    ld [bc], a
    ret nz

    rlca
    ld [bc], a
    pop hl
    dec de
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    add c

jr_01b_6e7d:
    ld e, $03
    inc b
    di
    inc bc
    inc b
    add hl, bc
    jr nz, jr_01b_6e93

    inc b
    inc de
    inc d
    inc de
    inc d
    call z, $020f
    daa
    ld [hl+], a
    jr nz, jr_01b_6ed2

    cpl

jr_01b_6e93:
    nop
    add hl, bc
    inc h
    jr nc, jr_01b_6ee8

    jr jr_01b_6ec9

    nop
    add hl, bc
    ld h, $2f
    add hl, hl
    nop
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
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

jr_01b_6ec9:
    nop
    rra
    nop
    ld bc, $0012
    db $10
    rst $38
    add b

jr_01b_6ed2:
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld d, h
    ld d, l
    nop
    ld a, [bc]
    nop
    rst $38
    ld a, a
    nop
    ccf
    nop
    rra

jr_01b_6ee8:
    nop
    rlca
    nop
    rst $28
    add e
    add d
    xor e
    rst $38
    ld [de], a
    nop
    ld bc, $00ff
    rst $38
    db $fd
    inc bc
    ld [hl], l
    adc e
    scf
    rlc a
    ei
    cp a
    add a
    ld a, e
    ld b, e
    rra
    rst $38
    nop
    jr z, jr_01b_6f07

jr_01b_6f07:
    add b
    xor $b0
    inc bc
    rst $38
    dec a
    db $fd
    sub e
    ld [bc], a
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    ldh a, [$fff0]
    ldh a, [rIF]
    ld a, [$f807]
    cp $24
    nop
    cp $0f
    rst $38
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld a, a
    ld a, a
    rst $18
    rst $18
    ei
    cp a
    ei
    rst $38
    rst $38
    ccf
    ccf
    jr nz, jr_01b_6f47

    inc b
    inc b
    ld c, d
    sub b
    inc bc
    jr nz, jr_01b_6f9e

    nop
    nop
    ret nz

    rlca
    inc bc
    ld [bc], a
    rst $38
    add d
    nop

jr_01b_6f47:
    ld a, l
    db $fd
    and b
    inc b
    inc hl
    db $fc
    inc bc
    db $fc
    rlca
    ld b, b
    nop
    ld e, a
    ld hl, $00fe
    rst $38
    ld [bc], a
    ret nc

    ld b, $fc
    ld hl, $fd00
    cp $20
    nop
    db $fc
    ld hl, sp-$08
    add b
    add b
    push bc
    push af
    call nz, Call_000_0802
    ld bc, $0960
    inc bc
    rst $38
    rlca
    ld a, a
    rst $18
    rst $38
    dec sp
    rst $38
    ldh [$ffe0], a
    rst $00
    inc c
    and h
    add h
    rst $28
    dec [hl]
    ld hl, $1f1f
    push hl
    ld [$ffff], sp
    ld a, e
    ld a, a
    rst $38
    sbc $ff
    ld c, l
    ld c, b
    db $10
    db $10
    add c
    ld c, $f7
    inc b
    inc b
    ld bc, $0ee0
    dec sp
    dec sp
    or a
    rst $38
    pop af
    rst $28
    add d
    dec c

jr_01b_6f9e:
    ret nc

    ld [$0e00], sp
    call nz, Call_01b_75ff
    ld b, c
    cp l
    ld [$1082], sp
    xor h
    ld [$444d], sp
    ldh [rNR10], a
    add b
    db $dd
    cp [hl]
    call nc, $f70c
    rst $38
    cp e
    nop
    db $10
    ld a, a
    rst $38
    rst $28
    inc bc
    rrca
    nop
    inc bc
    add c
    ld [de], a
    inc e
    inc e
    rrca
    ld a, a
    rrca
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    ldh a, [$ff30]
    add hl, bc
    ld l, d
    and b
    ld de, $92e3
    nop
    ld hl, sp+$00
    ld [$c0c0], sp
    push bc
    inc d
    rst $38
    ldh [$ffe0], a
    ld a, h
    ld a, h
    rst $38
    rra
    rst $38
    ccf
    cp $05
    ld de, $ff1f
    add e
    rst $38
    rra
    rra
    dec bc
    rst $28
    dec bc
    rrca
    rrca
    rlca
    ld [de], a
    nop
    dec c
    dec c
    rra
    xor a
    rra
    ldh [rIE], a
    db $f4
    jr nc, jr_01b_7005

    ld hl, sp+$22
    nop
    ldh a, [c]

jr_01b_7005:
    cp $a0
    rla
    ret z

    ret nz

    ldh [$ffe0], a
    ldh a, [$fff0]
    ld l, b
    ld a, a
    ld l, b
    cp $fe
    or a
    or a
    cp $fe
    jr nz, jr_01b_702b

    xor [hl]
    db $10
    inc b
    rrca
    rst $38
    sub a
    ld [hl], b
    rla
    ld c, b
    or c
    rla
    rst $38
    ld l, a
    sbc l
    dec c
    or b
    or b
    and e

jr_01b_702b:
    ld a, [de]
    add c
    add c
    pop bc
    inc d
    rst $10
    ldh a, [c]
    rst $38
    ld c, a
    db $f4
    ld d, $7e
    ld b, b
    inc d
    nop
    rst $38
    rst $38
    ld e, h
    ld e, h
    ldh a, [$fff0]
    ldh [$ffe0], a
    pop af
    pop af
    xor $03
    ld d, $7d
    ld a, l
    and e
    ldh [$ff03], a
    rra
    rst $38
    ld c, $b6

Jump_01b_7050:
    inc b
    ld d, $82
    rst $38
    ld h, e
    ld e, $fc
    db $fc
    add c
    jr @-$23

    sub l
    db $db
    and l
    ld a, [de]
    inc bc
    jp nz, $2403

    pop de
    inc e
    ld b, b
    jr nz, jr_01b_7089

    rst $38
    ld hl, $0000
    ret nz

    ret nz

    db $fc
    db $fc
    cp a
    push hl
    cp a
    ld hl, $ff08
    ld h, b
    inc de
    add c
    ld [$ff03], sp
    ld b, b
    cp $d1
    rra
    nop
    ld [bc], a
    ld [bc], a
    or l
    db $10
    sub $84
    xor [hl]
    pop bc

jr_01b_7089:
    ld [hl+], a
    cp $fe
    rst $28
    ret nc

    inc de
    db $fd
    jr nz, jr_01b_70a6

    ld a, e
    cp $b4
    ld hl, $ff10
    rlca
    rlca
    ld b, $06
    ld h, a
    rst $38
    ld b, a
    adc a
    adc a
    dec sp
    dec sp
    rst $38
    rst $38
    rst $10

jr_01b_70a6:
    rst $38
    rst $10
    cp $fe
    ld hl, sp-$01
    ld sp, hl
    rst $38
    cp b
    dec sp
    rst $38
    ld [hl], b
    and b
    dec d
    nop
    rst $38
    jr z, jr_01b_70ba

    inc b
    ld h, c

jr_01b_70ba:
    ld h, $ff
    ld bc, $1501
    inc d
    ld c, $06
    ld bc, $3b01
    ld bc, $5300
    dec h
    cp $ff
    db $eb
    add b
    ld [bc], a
    ldh a, [$ff0e]
    db $fd
    cp $52
    jr z, jr_01b_70dc

    ld b, a
    ld e, b
    sub c
    and b
    jp $10df


jr_01b_70dc:
    add c
    ld h, b
    nop
    ret nz

    ld d, d
    daa
    ld hl, sp-$41
    rst $38
    ldh [$ff7f], a
    ret nz

    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    rst $38
    ret nz

jr_01b_70ef:
    ld bc, $000f
    rst $38
    ldh [$ff1f], a
    add b
    rst $38
    ld a, a
    inc a
    jp $07d8


    jr nz, jr_01b_711d

    ld b, c
    or c
    ld a, $00
    jr jr_01b_712d

    jr z, jr_01b_7146

    rla
    db $fc
    db $fc
    ld b, c
    inc de
    ld a, a
    jp z, Jump_000_0f82

    add hl, de
    ld d, c
    rla
    inc bc
    ld c, c
    ld a, [hl+]
    ld b, c
    ld l, $05
    dec b
    ld a, a
    ldh a, [$fff0]
    db $fc

jr_01b_711d:
    db $fc
    ld l, c
    rst $38
    and b
    ret nc

    dec hl
    and $51
    dec l
    ld a, [$30ff]
    ld d, $64
    ld [bc], a
    nop

jr_01b_712d:
    nop
    jr nz, jr_01b_70ef

    jr nz, jr_01b_7147

    inc b
    ld b, l
    ld bc, $6012
    ld [hl+], a
    add b
    xor e
    add b
    ld b, b
    nop
    ld [$c0df], sp
    ld hl, $63fe
    ld [hl+], a
    ld a, a
    ei

jr_01b_7146:
    rst $38

jr_01b_7147:
    ccf
    ldh a, [rIF]
    dec b
    nop
    inc b
    dec b
    ld [$03ff], sp
    ld [$110e], sp
    ld c, $11
    inc c
    inc de
    xor d
    db $10
    add hl, hl
    ld sp, hl
    ldh a, [$ff32]
    ldh a, [$ff80]
    jr nz, @-$1e

    ld hl, $1800
    rst $38
    add b
    ld [hl], b
    nop
    pop hl
    ld [$50a0], sp
    ld c, h

jr_01b_716e:
    ld a, a
    and b
    sbc c
    inc b
    cp a
    nop
    or [hl]
    ld [$3140], sp
    rst $00
    nop
    rst $38
    ld [$1190], sp
    sub c
    ld l, $c0
    ld [hl-], a
    and [hl]
    ld e, c
    rst $38
    sbc d

jr_01b_7186:
    ld hl, $0364
    ld c, l
    ld [bc], a
    adc d
    inc b
    cp a

jr_01b_718e:
    dec e
    nop
    dec sp
    nop
    ld h, h
    ld [de], a
    db $eb
    dec bc
    rst $38
    db $fd
    nop
    ld bc, $0831
    rst $30
    jr nc, jr_01b_716e

    ret nc

    rrca
    cp a
    inc h
    dec de
    ld b, [hl]
    add hl, sp
    add c

jr_01b_71a7:
    ld a, h
    dec c
    ld [bc], a
    nop
    rst $38
    rst $38
    jr nz, jr_01b_718e

    ld de, $18ee
    rst $20
    adc h
    ld a, a
    ld [hl], e
    adc $31
    ld h, [hl]
    sbc c
    scf
    ret z

    ld c, $04
    rst $38
    ldh [rNR43], a
    ldh [c], a
    dec d
    push af
    sbc d
    ld a, d
    push de
    rst $38
    dec [hl]
    ld c, b
    cp b
    ld l, b
    sbc b
    jr z, jr_01b_71a7

    rst $38
    rst $38
    rra
    db $fd
    rra
    ld a, [$f50f]
    rrca
    ld a, [$0ff7]
    rst $38
    rlca
    ld hl, $0900
    ld d, $09
    ld [hl], $fb
    inc bc
    inc a
    ld hl, $4600
    ld a, c
    add [hl]
    ld sp, hl
    inc b

jr_01b_71ed:
    push af
    ld a, e
    ret nc

    ld a, $c0
    inc hl
    nop
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    add b
    ld l, d
    inc d
    push de
    jr z, jr_01b_7186

jr_01b_7200:
    ld a, c
    rst $38
    inc c
    di
    jr jr_01b_71ed

    db $10
    rst $28
    ld hl, $fbde
    inc bc
    rst $38
    dec c
    ld a, [bc]
    db $db
    inc h
    ld [hl+], a
    db $dd
    ld c, b
    rst $38
    or a
    ld [hl-], a
    call z, $9844
    xor b
    db $10
    db $10
    rst $30
    jr nz, jr_01b_7200

    ret nz

    dec c
    inc c
    ld hl, $52dc
    adc h
    rst $38
    ld [$0106], sp
    ld b, $04
    inc bc
    nop
    inc bc
    rst $20
    ld [bc], a
    ld bc, $3102
    dec hl
    ld a, [bc]
    ld a, [de]
    cp e
    ld b, h
    rst $30
    rst $38
    ld [$8877], sp
    inc sp
    call z, $cc33
    sub c
    rst $18
    ld l, [hl]
    sub c
    ld l, [hl]
    nop
    ld a, a
    dec c
    db $10
    ld d, $ee
    rst $38
    sub l
    ld l, l
    add [hl]
    ld a, [hl]
    add l
    ld a, l
    ld [bc], a
    cp $7b
    inc bc
    rst $38
    ld b, c
    nop
    db $fd
    inc bc
    cp $03
    ld b, c
    nop
    rst $30

jr_01b_7263:
    rst $38
    ld bc, $60fe
    ld a, $fe
    ld bc, $fb84
    db $fd
    nop
    ld [hl], b
    ld a, [bc]
    ld [bc], a
    ld a, a
    jp nz, Jump_01b_66ff

    ld a, a

jr_01b_7276:
    rst $08
    cp $ff
    ld a, a
    ld a, a
    ld b, c
    dec bc
    ld b, a
    nop
    cp a
    ret nz

    rst $38
    inc c

Call_01b_7283:
    db $fc
    jr jr_01b_7276

    ld sp, $81e0
    ldh [rIE], a
    and d
    pop bc
    add l
    ld b, d
    jp z, $8405

    dec bc
    cp $0a
    ld c, d
    ld bc, $02ff
    and b
    ld h, b
    ld b, b
    add b
    cp $e0
    dec l
    nop
    jr nz, jr_01b_7263

    db $10
    ldh [rNR10], a
    ldh [$ffeb], a
    nop
    ldh [$ff08], a
    ld c, h
    ret nz

    ld de, $0f34
    rrca
    db $10
    ei
    ld de, $b000
    ld b, c
    ld c, $00
    ld de, $220e
    rst $30
    dec e
    ld hl, $0a1e
    ld c, [hl]
    inc c
    rst $38
    ld [de], a
    ld b, b
    rst $38
    ccf
    ret nz

    rst $38
    ld h, c
    ccf
    ld de, $293f
    ld a, a
    rla
    ld bc, $8117
    rla
    ld b, e
    sub a
    dec c
    inc e
    xor $81
    dec bc
    ld b, $fe
    rlca
    ld b, b
    nop
    adc a
    rst $38
    cp $e1
    cp $20
    ld c, h
    add h
    dec bc
    ld bc, $c10c
    inc c
    cp a
    cp h
    ld a, h
    rst $38
    ld a, b
    cp c
    or b
    ld e, d
    ld d, c
    cp d
    or c
    ld e, d
    cp a
    ld d, c
    xor d
    and c
    ld e, d
    ld d, c
    ld a, a
    add c
    rla
    ret nz

    rst $28
    cp a
    ldh [$ff5f], a
    ldh [rLCDC], a
    nop
    ldh a, [$ffaf]
    ldh a, [rIE]
    sub h
    dec bc
    and b
    rra
    ret nc

    rrca
    ret z

    rlca
    cp l
    ld b, b
    jr nz, jr_01b_731b

jr_01b_731b:
    ldh [$ff03], a
    and h
    ld b, e
    ld d, b
    ld c, a
    ld b, $f0
    jr nz, jr_01b_7325

jr_01b_7325:
    db $10
    dec b
    add b
    nop
    and b
    inc l
    add b
    ld h, b
    ret nz

    and b
    cp $21
    nop
    add b
    ld h, b
    nop
    ldh [rP1], a
    jp nz, $f981

    ld b, $0a
    ld e, b
    ret nz

    ld [bc], a
    nop
    rra
    ld [$0c17], sp
    dec l
    dec de
    ld hl, $0800
    rla
    sub b
    ld e, e
    rrca
    jp nz, Start_

    ld d, d
    db $fd
    ld de, $5263
    sub e
    ld b, a
    and e
    ld b, h
    db $10
    db $e4
    rst $38
    ld [hl+], a
    call z, $8a45
    add hl, bc
    add d
    add hl, bc
    add d
    pop hl
    add hl, de
    inc bc
    inc b
    add b
    rra
    ld b, h
    nop
    ld b, b
    dec a
    db $fd

jr_01b_736f:
    db $fd
    ld a, [$7aff]
    ld a, l
    dec a
    ld a, d
    ld a, [hl-]
    ld [hl], l
    dec [hl]
    ld a, d
    ld [hl], a
    ld a, [hl-]
    ld a, l
    dec a
    ld [bc], a
    jr jr_01b_7388

    ld a, [$4007]
    nop
    cp $60
    inc h

jr_01b_7388:
    ldh a, [c]
    rrca
    adc l
    adc b
    ld d, [hl]
    ld b, l
    rst $08
    rst $38
    add [hl]
    ld d, a
    ld d, a
    xor e
    xor e
    ld d, l
    ld d, l
    xor d
    rst $38
    xor d
    ld d, l
    ld d, l
    ld a, a
    ldh a, [$ffbf]
    ld sp, hl
    ld a, a
    rst $38
    ld hl, sp-$55
    db $fc
    ld d, a
    db $fc
    xor e
    cp $55
    rst $38
    rst $38
    xor d
    rst $38
    ld h, b
    nop
    dec h
    add b
    ld a, [hl+]
    ld l, $b0
    add hl, bc
    ldh a, [$ffe0]
    db $fc
    and b
    ld d, c
    ld a, a
    ld bc, $211e
    jr nc, jr_01b_736f

    ld h, $62
    ld [bc], a
    ld bc, $e140
    ld d, a
    ld [$6530], sp
    ld b, $e0
    add c
    jr jr_01b_73d8

    ld h, h
    jp nz, $800c

    inc hl
    ld h, b
    ld h, a
    add c

jr_01b_73d8:
    ld b, b
    nop
    xor $60
    ld a, [de]
    ld bc, $0f00
    ld c, $24
    sub [hl]
    ld [$ff1a], sp
    nop
    sub c
    inc b
    ld d, e
    ld bc, $033f
    ld a, a
    rra
    ccf
    ld a, [$d57a]
    push de
    ld [bc], a
    ld l, b
    or c
    ld h, e
    add c
    ld l, b
    rst $38
    dec b
    cp $2b
    ld l, d
    ld [hl+], a
    db $fd
    ld l, b
    ld a, [$faf7]
    push de
    push de
    pop bc
    add hl, bc
    xor d
    xor d
    ld e, a
    ld d, a
    rst $38
    db $fd
    rra
    rst $30
    rra
    push bc
    ccf
    ld [$ff3f], a
    push de
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    rst $38
    xor d
    xor d
    ld e, l
    ld e, l
    ld a, [hl-]
    ld a, [hl+]
    push bc
    ld b, l
    db $eb
    ld a, [$01ba]
    inc c
    rst $38
    ld b, b
    ld bc, $ffa2
    push de
    xor a
    rst $38
    cp d
    rst $38
    ld b, l
    ret nz

    dec bc
    ld d, l
    ret nc

    ld l, h
    xor a
    rst $38
    xor a
    ld d, a
    ld d, a
    xor d
    xor e
    ld d, h
    ld d, [hl]
    xor b
    rst $38
    xor a
    ld d, b
    ld e, a
    pop hl
    rst $38
    ret nc

    rst $28
    ld a, l
    rst $38
    jp nc, $edba

    ld d, l
    cp $aa
    db $fd
    ld d, e
    rst $38
    db $fc
    and c
    cp $03
    db $fc
    inc bc
    db $ec
    ld hl, sp-$01
    ret nz

    rlca
    ld a, b
    nop
    rst $18
    ld c, $60
    add b
    ld a, a
    rra
    ld h, e
    nop
    inc a
    ret nz

    add e
    ld hl, sp+$61
    ld l, a
    cp a

Call_01b_7476:
    rst $18
    jr nz, jr_01b_74d9

    sbc a
    rra
    ldh [$ffe0], a
    ld l, e
    ccf
    rst $38
    ld hl, sp+$07
    ld [hl], d
    rrca
    add c
    ld a, h
    ld h, b

Call_01b_7487:
    ld b, $ff
    add hl, bc
    ldh [c], a
    ld h, c
    rrca
    add e
    scf
    ld b, $cf
    rst $38
    ld [bc], a
    ccf
    rst $38
    nop
    db $fc
    inc bc
    ld b, $f9
    rst $38
    ldh [c], a
    dec e
    rrca
    ldh a, [$ff37]
    ret z

    adc $31
    rst $38
    ld a, $c1
    ld [hl+], a
    cp $80
    daa
    ld c, h
    and c
    rst $38
    nop
    ld l, a
    and c
    rst $10
    db $10
    ret


    ld e, b
    and l
    rst $38
    ld h, h
    sub e
    db $fd
    inc bc
    daa
    ret c

    and c
    ld e, [hl]
    rst $38
    ld l, a
    sub b
    sub $29
    ld c, c
    or [hl]
    dec h
    sbc d
    rst $38
    inc de
    adc h
    or d
    and d
    ld d, a
    ld d, l
    dec sp
    cp e
    xor [hl]
    ld h, c
    ld e, a
    rst $30
    rst $30
    ld a, a
    nop
    ld h, a
    ld e, l

jr_01b_74d9:
    ld b, b
    dec d
    call nz, Call_01b_7fdf
    ret nz

    ccf
    ldh [$ff1f], a
    or b
    ld b, h
    ld a, a
    add b
    rst $38
    ld a, a
    cp $fe
    rst $30
    rst $30
    cp $fe
    cp a
    or a
    cp a
    db $eb
    db $eb
    and d
    ld c, e
    ei
    ld bc, $45d0
    ld bc, $a0fa
    ld e, c
    inc d
    sub h
    db $10
    sbc c
    and $a3
    call c, $ffb3
    call z, $5c23
    and a
    ret c

    ld h, a
    sbc b
    ld b, a
    rst $38
    cp b
    rst $00
    jr c, jr_01b_7516

    db $e4
    rlca
    ret c

jr_01b_7516:
    rlca
    rst $38
    ret z

    add a
    ret c

    rrca
    ret nc

    rrca
    sub b
    rrca
    rst $30
    or b
    rrca
    jr nc, jr_01b_7516

    ld c, b
    call c, $af63
    ld [hl], b
    ei
    xor $31
    inc hl
    nop
    sbc a
    ld h, b
    add b
    ld a, a
    ret nz

    rst $28
    inc hl
    ldh [rNR10], a
    pop hl
    inc h
    nop
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $38
    rst $30
    ld a, [de]
    rst $20
    cp c
    ld b, a
    ld a, l
    add e
    db $fd
    cp $f0
    ld c, $fc
    inc bc
    sbc $21
    ld e, $e1
    ld a, $fb
    pop bc
    ld a, a
    ld h, [hl]
    ld a, [hl]
    ld d, b
    xor h
    ld [$1df7], sp
    rst $38
    db $e3
    dec a
    jp $c33d


    ld a, $c1
    adc [hl]
    rst $38
    pop af
    adc [hl]
    pop af
    inc c
    and e
    inc bc
    db $f4
    nop
    rst $30
    db $e3
    nop
    jp $0020


    pop bc
    add b
    ld [hl], c
    add b
    rst $38
    ld [hl], c
    cpl
    rst $28
    ld e, $fe
    ei
    ei
    ld a, $ff
    ld a, $ef
    rst $28
    db $fd
    db $fd
    cp a
    cp a
    ld a, a
    rst $38
    rst $38
    ret nc

    ccf
    pop hl
    rra
    inc b

Jump_01b_7590:
    rst $38
    pop bc
    ldh a, [c]
    and b
    ld h, c
    ld [bc], a
    nop
    ld h, h
    ld bc, $dd7c
    rst $18
    db $fc
    rst $38
    rst $38
    ld a, c
    ld a, a
    add sp, -$11
    cp e
    cp a
    db $ed
    xor $ff
    ei
    ld hl, sp+$00
    db $fd
    ld hl, $01fd
    db $fd
    ld a, a
    add c
    ld sp, hl
    inc de
    ei
    ld b, e
    ei
    ld de, $7ea0
    ld e, a
    ld bc, $88fe
    rst $38
    ld c, h
    jr nz, jr_01b_7631

    add hl, hl
    ret nc

    ld [hl], $fd
    adc $80
    ld e, c
    rrca
    ldh a, [$ff8f]
    ldh a, [$ffcf]
    ret nz

    db $eb
    rst $28
    ldh [rNR42], a
    nop
    rst $08
    ldh [rDMA], a
    xor $31
    dec h
    rst $38
    ei
    ld c, d
    push af
    ld c, h

Jump_01b_75df:
    di
    call nz, $c0fb
    or $60
    adc d
    db $fd
    rst $38
    add b
    dec bc
    ld a, [de]
    ret nz

    dec [hl]
    ret nz

    rst $38
    inc sp
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    rlca
    call c, $1cff
    ld h, h

jr_01b_75fa:
    sbc e
    nop
    rst $38
    adc b

jr_01b_75fe:
    rst $38

Call_01b_75ff:
    ret z

    db $e3
    rst $38
    db $ec
    pop hl
    ld h, h
    ld hl, $0c8b
    ld d, [hl]
    add c
    rst $38
    ld b, [hl]
    xor a
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    ld [hl], b
    ld a, e
    call z, $80e0
    rst $00
    sbc a
    ld hl, sp-$7f
    ld a, a
    rst $00
    ccf
    jr nz, jr_01b_7699

    ld b, b
    nop
    rst $08
    rst $38
    rrca
    sbc $1e
    rst $00
    nop
    cp a

jr_01b_7629:
    rst $38
    ld a, $ff
    cp $97
    rst $30
    ld e, a
    rst $38

jr_01b_7631:
    ld e, a
    rst $38
    cp a
    rst $28
    rst $38
    db $fd

jr_01b_7637:
    ld a, l
    rst $38
    jr nc, jr_01b_7680

    add c
    cp a
    adc b
    rst $38
    sbc a
    ld b, b
    ld e, a
    ret nz

    rst $18
    add b
    cp a
    add d
    cp $00
    jr jr_01b_7629

    call c, Call_01b_7476
    db $fc
    ld hl, sp-$24
    rst $38
    ret c

    cp h
    cp b
    push af
    ldh a, [$ffd3]
    call c, $fec4
    nop
    adc d
    adc e
    db $fc
    rlca
    ld hl, sp+$27
    ld hl, sp+$47
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$23
    ldh a, [rDIV]
    call nz, $ffff
    rrca
    ld a, a
    nop
    ld h, e
    nop
    ld b, c
    jr jr_01b_7637

    rst $38
    jr c, jr_01b_75fa

    jr c, jr_01b_75fe

    nop
    sbc a
    nop
    di
    sbc l

jr_01b_7680:
    inc c
    ld [hl+], a
    sub d
    jr @+$01

    jr c, jr_01b_76a7

    nop
    pop bc
    sub d
    pop bc
    rst $30
    jp $8180


    ret nz

    ld bc, $3081
    add [hl]
    ld bc, $dfe5
    ret nz

    sub e

jr_01b_7699:
    cp $20
    sub [hl]
    jp nz, $3001

    cp $01
    jp hl


    ld hl, sp+$30
    dec a
    ld d, c
    sub [hl]

jr_01b_76a7:
    db $fc
    add b
    ld h, [hl]
    cp $1f
    scf
    rst $38
    rst $18
    dec sp
    rst $08

jr_01b_76b1:
    sub c
    ld l, a
    rst $38
    nop
    ldh a, [rIE]
    nop
    ldh [$ff60], a
    ld hl, sp+$38
    db $fc
    inc e
    ld a, $ff
    sbc $3f
    rst $08
    rla
    ld h, a
    rst $38
    ret nz

    ldh a, [rIE]
    ret nz

    ldh a, [$ffc3]
    jr nc, jr_01b_76b1

    ld hl, sp-$0f
    jr c, @-$3f

    pop af
    ld hl, sp-$0f
    call c, $3ff8
    nop
    sbc d
    ccf
    rst $38
    inc bc
    rra
    inc bc
    ld c, a
    ld b, c
    cpl
    ld hl, $ff6f
    ld h, c
    rlca
    nop
    rst $18
    ld e, a
    db $fd
    ld a, l
    ld l, a
    rst $38
    cpl
    ld a, a
    ccf
    ld a, l
    dec a
    ld a, a
    ccf
    ld [hl], a
    rst $38
    scf
    rra
    ld a, a
    and b
    ld a, a
    add d
    ld a, a
    ret nc

    rst $28
    ccf
    ret nz

    ccf
    jp nz, VBlankInterrupt

    ret z

    ccf
    add b
    rst $38
    rra
    rst $30
    rst $30
    db $fc
    rst $38
    jp c, Jump_01b_75df

    ei
    ld a, a
    add sp, $20
    ld [de], a
    ret nc

    call c, $f8f8
    ld [$10fe], sp
    ld a, [hl+]
    inc hl
    ei
    add a
    rst $30
    ld c, $ee
    inc c
    rst $28
    db $ec
    inc hl
    di
    rlca
    jr nz, @-$6a

    adc [hl]
    rst $38
    rrca

jr_01b_7730:
    rst $18
    cp $1d
    cp $8d
    cp $90
    ld l, e
    db $e3
    nop
    rst $28
    ld bc, $3b3b
    cp $10
    nop
    inc e
    ld e, $fc
    rst $38
    cp $e0
    db $e3
    dec e
    ld e, $ff
    cp $fd
    rst $38
    ld [bc], a
    call z, $0c33
    di
    inc hl

jr_01b_7754:
    rst $18
    add c
    rst $38
    ld a, a
    ld bc, $19c7
    jp $d709


    pop hl
    rst $38
    ld [bc], a
    jr nc, jr_01b_7796

    ldh a, [$fff3]
    rst $18
    ret nz

    ld a, a
    rst $38
    nop
    rst $00
    jr c, jr_01b_7730

    inc a
    rst $10
    jr c, jr_01b_7754

    rst $38
    inc e
    add $39
    sbc b
    ld h, b
    ld h, [hl]
    sub b
    nop
    rst $38
    and $82
    ldh a, [$ff81]
    ldh a, [c]
    ret nz

    ld hl, sp-$24
    rst $38
    inc e
    cp c
    jr c, jr_01b_77e8

    ld h, a
    db $10
    adc a
    ld h, $fb
    rst $18
    ldh a, [$ffe0]
    ld b, e
    ld hl, sp+$07
    sbc c
    ld l, a
    ld a, c

jr_01b_7796:
    ei
    rst $38
    ld a, l
    jr nz, jr_01b_779b

jr_01b_779b:
    dec a
    ld a, a
    dec sp
    ld a, a
    jr c, jr_01b_7820

    ld a, a
    jr jr_01b_7823

    rla
    ld h, a
    di
    inc bc
    ld hl, $3f00
    ld a, e
    add e
    ld a, e
    add e
    ld a, b
    add b
    jr nz, jr_01b_77b3

jr_01b_77b3:
    ldh [c], a
    halt
    cp $01
    sub a
    ld [hl], e
    rst $30
    ld [hl], c
    di
    ldh [$ffe1], a
    nop
    cp a
    nop
    add e
    add e
    add [hl]
    add [hl]
    add a
    stop
    dec bc
    cp a
    dec bc
    dec c
    dec c
    ld e, $1e
    ld b, a
    ldh [$ff84], a
    ld a, a
    cp [hl]
    ld h, b
    and b
    rst $00
    rst $38
    adc c
    rst $38
    jp nz, Jump_01b_7590

    ld b, b
    rst $38
    ld b, a
    cp b
    cp b
    ld a, a
    ld a, a
    db $fc
    db $fc
    rst $00
    rst $38

jr_01b_77e8:
    rst $00
    ld sp, hl
    ld sp, hl
    cp $fe
    ld c, $0e
    ld a, [bc]
    rst $30
    add hl, bc
    sub d
    add d
    ld b, c
    add b
    xor $ee
    cp $fe
    ld a, a
    rst $20
    push hl
    ld l, e
    ld h, d
    rst $30
    cp $7d
    ld [hl-], a
    add b
    cp $f1
    ld c, a

jr_01b_7807:
    ld e, $ff
    cp l
    rst $38
    db $10
    rst $00
    jr @+$01

    rst $20
    nop
    db $eb
    ld [$00f3], sp
    di
    adc b
    rst $38
    pop hl
    and c
    di
    db $10
    ld c, c
    rst $00
    jr c, jr_01b_7807

jr_01b_7820:
    rst $38
    jr @-$13

jr_01b_7823:
    inc e
    di
    inc c
    di
    inc c
    ld h, c
    ld a, a
    sbc [hl]
    ld [hl], e
    adc h
    ret


    cp [hl]
    pop bc
    db $fc

jr_01b_7831:
    sub c
    ld c, e
    rst $38
    ld [hl], b
    rst $38
    ld l, c
    db $ec
    ld [hl], b
    rst $30
    ldh a, [$fff6]
    ei
    ld [hl], b
    or $41
    jr nc, jr_01b_7831

    nop
    rst $28
    nop
    db $f4
    rst $38
    inc de
    rst $38
    ld [$09fe], sp
    cp $09
    dec e
    rst $38
    ld a, a
    rrca
    ccf
    ld c, a
    sbc a
    ld h, l
    rlca
    cp c

jr_01b_7858:
    rst $38
    ld a, a
    ld [hl+], a
    ld b, a
    add b
    rra
    nop
    ld bc, $ff7c
    add b
    ld a, $c0
    sbc a
    ld h, b
    rlca
    ld hl, sp+$7f
    ld a, a
    add b
    ld b, a
    ld hl, sp+$1f
    ldh [rSB], a
    cp $01
    and b
    ld a, a
    add c
    add c
    ld d, [hl]
    ld d, d
    adc e
    add c
    ret nz

    stop
    rst $38
    ld b, b
    ret nz

    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    add a
    xor l
    rst $38
    cp $c0
    add e
    add c
    ld h, $90
    ld h, l
    ldh [$ff8f], a
    and l
    rst $38
    dec h
    ccf
    cpl
    or [hl]
    or [hl]
    ccf
    ccf
    rla

jr_01b_789d:
    rst $30
    rla
    pop af
    pop af
    pop hl
    adc a
    jp c, $d8ff

    rst $38
    db $fd
    ld c, c
    and b
    or a
    add sp, -$01
    cp d
    sbc b
    rst $30
    rst $30
    rst $30
    cp a
    cp [hl]
    or $60
    ld a, [de]
    cp h

Jump_01b_78b8:
    cp [hl]
    ld sp, hl
    db $fc
    ld [hl], a
    ld hl, sp-$03
    ld h, a

jr_01b_78bf:
    ret nc

    add e
    ld b, c
    rst $38
    add hl, bc
    ret nz

    ld b, a
    rst $38
    ld b, d
    db $fd
    inc b
    ei
    dec b
    ei
    add h
    ld [hl], b
    cp $e0
    ld [hl], $c5
    jr nc, jr_01b_7858

    ld h, b
    inc bc
    ldh [rSB], a

Jump_01b_78d9:
    rst $38
    jr nc, jr_01b_789d

    jr jr_01b_78bf

    ldh a, [$ff8f]
    db $e3
    inc e
    rst $18
    push bc
    ld a, [hl-]
    add e
    ld a, h
    inc bc
    and b
    inc sp
    pop bc
    cp $7f

jr_01b_78ed:
    pop hl
    cp $38
    ld a, [$fa18]

jr_01b_78f3:
    ld [$0020], sp
    rst $38
    jr c, jr_01b_78f3

    jr nc, jr_01b_78ed

    ld h, b
    pop hl
    ld b, b
    pop bc
    db $eb
    cp $05
    ld h, $00
    dec c
    db $10
    db $10
    ld a, $80
    rlca
    db $fd
    ret nz

    add b
    ld h, $86
    ld a, b
    add d
    ld a, h
    ld b, d

jr_01b_7913:
    inc a
    db $ed
    inc a
    or c
    sub [hl]
    ld hl, sp+$01
    and b
    or l
    ld a, b
    rst $38
    ld a, h
    ei
    rst $38
    inc a
    or d
    cp h
    ld h, b
    ldh [rNR41], a
    ldh [$ff37], a
    rst $30
    push af
    db $10
    ld [hl], b
    ld hl, $3000
    ld [hl], b
    jr nz, jr_01b_7913

    call z, $ac00
    nop
    add h
    ld a, a
    adc a
    inc hl
    nop
    ldh a, [$ffab]
    rra
    jp c, $9a7f

    dec bc
    ld [$80a4], sp
    add hl, bc
    add hl, bc
    ld b, h
    xor [hl]
    cp e
    rst $38
    ld h, l
    ret nz

    or c
    ld a, a
    rst $38
    or $54
    cp a
    ld sp, hl
    rst $38
    db $fc
    add sp, -$14

jr_01b_7959:
    ld hl, sp-$02
    ld a, h
    ld a, a
    call c, $dcfd
    ld h, c
    ld c, d
    ei
    ei
    inc b
    ei
    inc d
    ei
    rst $18
    ld b, $f9
    add e
    db $fc
    inc hl
    ld h, d
    ld c, d
    inc b
    rst $38
    cp $20
    dec bc
    inc bc
    ld bc, $0307
    rst $38
    inc e
    db $fc
    ld e, [hl]
    add b
    sbc b
    inc b
    ret nz

    ret nz

    pop hl
    ld h, b
    ld d, l
    rlca
    ld h, c
    ld d, h
    xor d
    or b
    add [hl]
    ei
    or b
    or d
    ld b, b
    ld [hl], b
    inc de
    add b
    jr nz, @+$7c

    ld [bc], a
    ld a, a
    nop
    xor e
    add d
    xor e
    adc b
    inc d
    db $10
    jp nz, $dd39

    ld a, a
    or c
    rst $00
    ld a, l
    rst $38
    ld [hl], a
    ret nz

    cp d
    nop
    jp $01ef


    ld a, a
    rlca
    rra
    ld h, b
    sbc d
    nop
    adc c
    adc b
    cp a
    ld h, h
    jr nz, jr_01b_7959

    ld bc, $3cc3
    ld h, e
    rst $00
    rst $38
    ld a, [$01e0]
    rst $18
    add b
    and h
    ld h, d
    ldh [$ffd2], a
    jp nc, $ee19

    inc sp
    cp h
    nop
    sub b
    sub b
    ldh a, [$ff92]
    rra
    db $ed
    ccf
    dec b
    rst $30
    inc d
    ret


    ld l, a
    sub h
    ret


    ld h, b
    cp d
    ld b, d
    adc $f2
    ld b, c
    ld b, b
    rst $08
    di
    rra
    rra
    add b
    ld l, d
    pop hl
    cp l
    ld a, a
    rrca
    rrca
    rst $38
    adc e
    rst $38
    jp $cd32


    ld a, h
    ld h, b
    or a
    inc bc
    ld [bc], a
    rlca
    call nz, Call_01b_44ff
    ldh [$ffc5], a
    ld d, c
    ret nc

    rrca
    ld d, d
    rst $08
    db $f4
    ld b, l
    ld [$1f02], sp
    add b
    add hl, bc
    ld [hl-], a
    ld d, e
    jp nc, $d03f

    sub [hl]
    dec b
    ld [bc], a
    nop
    nop
    pop hl
    and [hl]
    ld h, b
    dec a
    pop bc
    db $fc
    and c
    pop bc
    ld d, e
    call nc, $a2d1
    sub b
    rra
    inc b
    ld [$0f0f], sp
    db $eb
    ccf
    ccf
    and b
    adc h
    ld a, a
    ld bc, $bf04
    cp a
    rst $38
    rst $38
    rst $38
    db $ed
    db $ed
    ld a, [$5bf8]
    ld c, d
    db $fc
    ld e, a
    db $fc
    rst $30
    rst $30
    cp e
    cp e
    ld b, c
    ld d, e
    ld [de], a
    ld b, b
    cp [hl]
    rst $30
    or l
    rst $38
    dec bc
    ld [hl], b
    and h
    ld b, h
    rst $38
    ld [hl], a
    ld [hl], a
    rst $38
    call c, $f2dc
    ldh a, [$ff97]
    sub [hl]
    inc l
    inc l
    rst $38
    cp d
    adc b
    push de
    push bc
    db $ed
    db $ed
    adc b
    rst $38
    ld a, a
    inc hl
    rst $38
    adc a
    rst $38
    ld l, c
    rst $38
    rst $10
    ldh [rNR11], a
    db $fd
    cp d
    and b
    ld [bc], a
    set 1, e
    ld e, h
    ld e, h
    and l
    add l
    rst $38
    scf
    rlca
    ld e, l
    ld d, l
    cp d
    jr jr_01b_7ada

    dec c
    ld a, a
    xor $ce
    inc [hl]
    rst $38
    and e
    rst $38
    ld a, d
    ld h, b
    db $d3
    rst $30
    xor d
    rst $38
    rst $20
    nop
    add $31
    rst $38
    ld l, $2e
    rst $38
    db $db
    db $db
    db $ed

Jump_01b_7a96:
    db $ed
    push af
    pop af
    add hl, hl
    add hl, bc
    ld a, a
    sub e
    add e
    ld l, l
    ld l, l
    or a
    or a
    pop de
    ld h, b
    cp a
    rst $10
    sub d
    rst $38
    ld l, $20
    cp b
    ld a, h
    add b
    nop
    ld c, b
    rst $38
    rst $30
    db $dd
    db $dd
    rst $38
    ld b, d
    nop
    ld l, d
    ld [hl+], a
    ld l, a
    ld l, a
    ld e, a
    db $dd
    db $dd
    ld a, d
    ld a, d
    ld [hl+], a
    db $10
    sbc $22
    add c
    ld bc, $f0ce
    or a
    ld [hl+], a
    rst $38
    add l
    ret nz

    db $db
    ld h, c
    dec e
    xor $ee
    xor a
    cp a
    cp a
    rst $30
    rst $30
    pop bc
    ld [bc], a
    inc b
    ld h, d

jr_01b_7ada:
    dec e
    ld de, $c0e2
    pop bc
    ld [UD2], sp
    pop af
    cp h
    ld h, c
    db $db
    rst $28
    rst $28
    ld a, a
    ld a, a
    ld a, a
    db $fd
    db $fd
    rst $18
    rst $18
    rst $30
    rst $30
    ld h, e
    db $db
    dec d
    db $10
    or b
    pop hl
    ld [bc], a
    ld b, b
    sbc $08
    or h
    pop hl
    add c
    jp $de83


    jp nz, $e3f3

    db $10
    halt
    ld a, h
    dec e
    nop
    db $fc
    or c
    ld b, d
    add sp, -$45
    rst $38
    ld c, c
    xor $e0

jr_01b_7b12:
    ret c

    pop hl
    add [hl]
    ld d, l
    ld c, $03
    dec bc
    ld [bc], a
    ld d, a
    jp nz, Jump_01b_78d9

    daa
    ldh [$ff81], a
    jr jr_01b_7b2a

    inc b
    ld a, [$e707]
    jr jr_01b_7b12

    dec e

jr_01b_7b2a:
    ei
    rlca
    rlca
    ldh [c], a
    ld e, $fe
    cp d
    db $fd
    add sp, -$09
    ld a, a
    or b
    rst $28
    ld h, c
    sbc $c3
    cp l
    ldh [$ffc0], a
    db $db
    pop af
    cp $c0
    and $41
    push de
    add c
    dec a
    ccf
    ccf
    rst $38
    add a
    rst $30
    ccf
    pop bc
    ld a, a
    jr nz, jr_01b_7bcf

    rst $18
    jr nz, @-$2f

    jr nc, jr_01b_7b94

    rrca
    db $fc
    nop
    rst $38
    add a
    add a
    ld d, b
    call z, $f3c4
    db $fc
    db $e3
    dec b
    nop
    xor $3f
    cp [hl]
    ld c, a
    db $db
    daa
    call z, $335f
    and $19
    pop hl
    sbc [hl]
    ldh [c], a
    jr nz, jr_01b_7bb2

    ld hl, $00df
    ldh [c], a
    push af
    ret nz

    and a
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
    ld c, $c5
    inc c
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7b94:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7bb2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7bcf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01b_7fdf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
