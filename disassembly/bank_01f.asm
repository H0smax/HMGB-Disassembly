; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    rra
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    call Call_01f_4092
    ld hl, $76bd
    ld c, $1d
    ld de, $8000
    call Call_000_2f41
    ld hl, $7ab1
    ld c, $05
    ld de, $9800

Call_01f_4020:
    call Call_000_2f41
    ld hl, $4665
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $5b88
    ld a, l
    ld [$cd6b], a
    ld a, h
    ld [$cd6c], a
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cd9a], a
    ld a, $ad
    ld [$cd99], a
    xor a
    ld [$cdad], a
    ld [$cdb3], a
    ld [$cdb4], a
    ld [$cdb5], a
    ld hl, $cdbe
    ld bc, $0121
    call ClearMem
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [TimePaused], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $1d
    ld [TransitionRelated], a
    ld a, $22
    call Call_000_23cf
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rSB], a
    ldh [rSC], a
    xor a
    ldh [rIF], a
    ld a, $0d
    ldh [rIE], a
    ret


Call_01f_4092:
    ld hl, $4001
    ld a, $11
    ld de, $9000
    ld bc, $0800
    call Call_000_211f
    ld hl, $4801
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call Call_000_211f
    ret


    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$c0a3]
    ld [$c0a4], a
    ld hl, $cedf
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, l
    ld [$cedf], a
    ld a, h
    ld [$cee0], a
    call Call_01f_6335
    call Call_000_32d5
    ld hl, $cdad
    inc [hl]
    inc hl
    inc [hl]
    ld hl, $d607
    inc [hl]
    call Call_01f_4a88
    push hl
    push af
    ld l, $62
    ld h, $5b
    ld a, $1f
    call Call_000_1f96
    pop af
    pop hl
    call Call_01f_42e4
    call Call_01f_41b7
    ld a, [$d605]
    or a
    jr z, jr_01f_4112

    call Call_01f_433f
    call Call_01f_4560
    call Call_01f_45e9
    ld a, [$ce04]
    cp $02
    jr z, jr_01f_410f

    call Call_01f_64d6

jr_01f_410f:
    call Call_01f_6441

jr_01f_4112:
    call Call_01f_4196
    ret


Call_01f_4116:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    call Call_000_0629
    ld a, $0d
    ld a, $9a
    ld [hl+], a
    ld a, $23
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld a, [$cd29]
    push af
    swap a
    and $0f
    call Call_01f_6318
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6318
    ld [hl+], a
    ld a, [$cd28]
    push af
    swap a
    and $0f
    call Call_01f_6318
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6318
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld a, [$cd61]
    push af
    swap a
    and $0f
    call Call_01f_6318
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6318
    ld [hl+], a
    ld a, [$d635]
    push af
    swap a
    and $0f
    call Call_01f_6318
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6318
    ld [hl+], a
    ld a, [$d607]
    push af
    swap a
    and $0f
    call Call_01f_6318
    ld [hl+], a
    pop af
    and $0f
    call Call_01f_6318
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$ff97]
    add $0e
    ldh [$ff97], a
    ret


Call_01f_4196:
    ld a, [$d605]
    or a
    ret z

    ld a, [$d607]
    cp $ff
    ret nz

    xor a
    ld [$cdb3], a
    ld [$d605], a
    call Call_01f_6422
    ld hl, $4a5e
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Call_01f_41b7:
    ld a, [$cdae]
    and $0f
    jr nz, jr_01f_41cc

    ld hl, $cdba
    ld b, $04
    call Call_01f_4116
    inc hl
    ld b, $03
    call Call_01f_4116

jr_01f_41cc:
    ld a, [$cdb4]
    or a
    ret z

    dec a
    rst $00
    db $dd
    ld b, c
    ld a, [bc]
    ld b, d
    ccf
    ld b, d
    ld l, d
    ld b, d
    add e
    ld b, d
    ld c, $30
    ld b, $1c
    ld hl, $4295
    call Call_01f_4284
    ld c, $70
    ld b, $1c
    ld hl, $42b5
    call Call_01f_4284
    ld c, $30
    ld b, $44
    ld a, [$cec7]
    or a
    jr z, jr_01f_4203

    ld hl, $42de
    call Call_01f_42cd
    jr jr_01f_4209

jr_01f_4203:
    ld hl, $42c5
    call Call_01f_4284

jr_01f_4209:
    ret


    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call $4fe5
    ld a, $15
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    and $03
    add a
    add a
    add a
    ld c, $70
    ld b, $4c
    ld hl, $4295
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_01f_4284
    ret


    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call Call_01f_5157
    ld a, [hl]
    cp $ff
    ret z

    and $0f
    ld hl, $42bd
    cp $03
    jr z, jr_01f_4262

    ld hl, $42b5

jr_01f_4262:
    ld c, $70
    ld b, $3c
    call Call_01f_4284
    ret


    ld c, $48
    ld b, $44
    ld a, [$cec7]
    or a
    jr z, jr_01f_427c

    ld hl, $42de
    call Call_01f_42cd
    jr jr_01f_4282

jr_01f_427c:
    ld hl, $42c5
    call Call_01f_4284

jr_01f_4282:
    ret


    ret


Call_01f_4284:
    ld a, [$cdba]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef5
    ret


    ld b, d
    ld h, l
    ld de, $7365
    ld h, l
    ld de, $0665
    ld h, [hl]
    push de
    ld h, l
    scf
    ld h, [hl]
    push de
    ld h, l
    jp z, $9966

    ld h, [hl]
    ei
    ld h, [hl]
    sbc c
    ld h, [hl]
    adc [hl]
    ld h, a
    ld e, l
    ld h, a
    cp a
    ld h, a
    ld e, l
    ld h, a
    ld b, d
    ld l, b
    ld b, d
    ld l, b
    ld hl, $2168
    ld l, b
    adc $68
    adc $68
    xor l
    ld l, b
    xor l
    ld l, b
    xor $69
    inc de
    ld l, d
    xor $69
    ret


    ld l, c

Call_01f_42cd:
    ld a, [$cdbb]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef5
    ret


    ld e, d
    ld l, c
    ld a, a
    ld l, c
    add hl, sp
    ld l, c

Call_01f_42e4:
    ld a, [$cd97]
    bit 4, a
    ret nz

    ld a, [$cdb3]
    or a
    ret z

    ld hl, $4315
    dec a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cd98]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4310
    call Call_000_1ef5
    ret


    nop
    nop
    xor l
    nop
    add b
    jr jr_01f_432f

    ld e, b
    jr jr_01f_4332

    ld b, b
    ld e, b
    ld b, b
    db $10
    ld [hl], b
    ld l, b
    ld [hl], b
    db $10
    add b
    ld l, b
    add b
    db $10
    add b
    ld [hl], b
    add b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    inc d

jr_01f_432f:
    ld a, [hl-]
    inc d
    ld l, d

jr_01f_4332:
    inc d
    ld a, [bc]
    inc l
    ld a, [hl-]
    inc l
    ld l, d
    inc l
    ld a, [bc]
    ld b, h
    ld a, [hl-]
    ld b, h
    ld l, d
    ld b, h

Call_01f_433f:
    ld a, [$cdff]
    or a
    ret nz

    ld a, [$ce04]
    cp $02
    ret nz

    ld a, [$ce06]
    or a
    jr nz, jr_01f_4396

    ld a, [$ce03]
    and $1f
    rst $00
    sbc d
    ld b, e
    and e
    ld b, e
    and a
    ld b, e
    and e
    ld b, e
    or b
    ld b, e
    rst $08
    ld b, e
    db $d3
    ld b, e
    di
    ld b, e
    ld a, [$5b43]
    ld b, h
    ld e, a
    ld b, h
    push af
    ld b, h
    ei
    ld b, h
    ld a, [bc]
    ld b, l
    ld c, $45
    dec h
    ld b, l
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    cpl
    ld b, l
    add hl, sp
    ld b, l

jr_01f_4396:
    call Call_01f_4542
    ret


    call Call_01f_4542
    ld a, $01
    call Call_01f_454a
    ret


    call Call_01f_4542
    ret


    call Call_01f_4542
    ld a, $03
    call Call_01f_454a
    ret


    call Call_01f_43bc
    call Call_01f_4542
    ld a, $05
    call Call_01f_454a
    ret


Call_01f_43bc:
    ld hl, $cddf
    ld de, $cdaf
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
    inc de
    ret


    call Call_01f_4542
    ret


    call Call_01f_4542
    ld hl, $b8f4
    ld de, $cdbe
    ld a, $05
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
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $07
    ld b, $05
    call Call_01f_4553
    ret


    call Call_01f_43bc
    call Call_01f_4542
    ret


    call Call_01f_4542
    ld a, $09
    call Call_01f_454a

Jump_01f_4402:
    ld a, [$cddf]
    rst $00
    ld c, $44
    cpl
    ld b, h
    ld b, e
    ld b, h
    ld c, a
    ld b, h
    ld hl, $cde0
    ld de, $ce0a
    ld b, $0b
    call Call_000_210f
    ld a, $09
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$ce0a]
    res 7, a
    ld [$ce0a], a
    ret


    ld hl, $cde0
    ld de, $ce24
    ld b, $03
    call Call_000_210f
    ld a, [$ce24]
    res 7, a
    ld [$ce24], a
    ret


    ld hl, $cde0
    ld de, $ce30
    ld b, $06
    call Call_000_210f
    ret


    ld hl, $cde0
    ld de, $ce36
    ld b, $02
    call Call_000_210f
    ret


    call Call_01f_4542
    ret


    call Call_01f_4542
    ld hl, $4472
    push hl
    ld a, [$cddf]
    rst $00
    ld a, b
    ld b, h
    and a
    ld b, h
    jp z, $e044

    ld b, h
    ld a, $0b
    call Call_01f_4553
    ret


    ld de, $cdbe
    ld a, $0f
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $4fe5
    ld b, $0b
    call Call_000_210f
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld b, $0f
    ret


    ld de, $cdbe
    ld a, $05
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_01f_5157
    ld b, $03
    call Call_000_210f
    ld b, $05
    ret


    ld de, $cdbe
    ld a, $08
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld hl, $cec7
    ld b, $06
    call Call_000_210f
    ld b, $08
    ret


    ld de, $cdbe
    xor a
    ld [de], a
    inc de
    ld a, $03
    ld [de], a
    inc de
    ld a, [$cdb5]
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld b, $04
    ret


    call Call_01f_4542
    jp Jump_01f_4402


    ld a, $0d
    call Call_01f_454a
    ld a, [$cdde]
    ld [$cd98], a
    call Call_01f_4542
    ret


    call Call_01f_4542
    ret


    ld a, [$cdb7]
    ld [$cdbe], a
    ld a, $0f
    ld b, $01
    call Call_01f_4553
    ld a, [$cdde]
    ld [$cdb6], a
    call Call_01f_4542
    ret


    ld a, [$cdde]
    ld [$cdb6], a
    call Call_01f_4542
    ret


    ld a, $01
    ld [$ce09], a
    call Call_01f_4542
    ret


    ret


    call Call_01f_4542
    ld a, $01
    ld [$ce08], a
    ret


Call_01f_4542:
    xor a
    ld [$ce04], a
    ld [$ce07], a
    ret


Call_01f_454a:
    ld c, a
    ld a, $01
    ld [$cdbe], a
    ld a, c
    ld b, $01

Call_01f_4553:
    ld [$cdfe], a
    ld a, b
    ld [$ce01], a
    ld a, $02
    ld [$cdff], a
    ret


Call_01f_4560:
    ld a, [$cdff]
    or a
    jr z, jr_01f_45de

    cp $01
    jr z, jr_01f_4599

    xor a
    ld [$ce00], a
    inc a
    ld [$cdff], a
    ld a, [$ce01]
    or a
    jr z, jr_01f_4599

    ld b, a
    ld hl, $cdbe
    xor a

jr_01f_457d:
    add [hl]
    inc hl
    dec b
    jr nz, jr_01f_457d

    ld b, a
    ld hl, $cdbe
    ld a, [$ce01]
    ld c, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], b
    ld a, c
    inc a
    ld [$ce01], a
    ld [$ce02], a

jr_01f_4599:
    ld d, $80
    ld a, [$d601]
    or a
    jr nz, jr_01f_45a3

    ld d, $40

jr_01f_45a3:
    ld a, [$cdfe]
    or d
    ld [$d62d], a
    ld hl, $cdbe
    ld a, [$ce00]
    ld c, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    and $0f
    or d
    ld [$d62e], a
    ld a, b
    swap a
    and $0f
    or d
    ld [$d62f], a
    ld a, c
    inc a
    ld [$ce00], a
    ld a, [$ce01]
    dec a
    jr nz, jr_01f_45da

    ld [$ce01], a
    ld [$cdff], a
    ret


jr_01f_45da:
    ld [$ce01], a
    ret


jr_01f_45de:
    xor a
    ld [$d62d], a
    ld [$d62e], a
    ld [$d62f], a
    ret


Call_01f_45e9:
    ld hl, $d627
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    or b
    jr nz, jr_01f_4633

    or [hl]
    jr nz, jr_01f_4633

    ld a, [$ce04]
    cp $01
    ret nz

    ld a, [$ce03]
    cp $1f
    jr z, jr_01f_4619

    ld a, [$ce07]
    dec a
    ld b, a
    ld hl, $cdde
    xor a
    ld e, a

jr_01f_460c:
    add [hl]
    ld d, a
    ld a, e
    or [hl]
    ld e, a
    ld a, d
    inc hl
    dec b
    jr nz, jr_01f_460c

    cp [hl]
    jr nz, jr_01f_4626

jr_01f_4619:
    ld a, $02
    ld [$ce04], a
    ld [$ce05], a
    xor a
    ld [$ce06], a
    ret


jr_01f_4626:
    ld a, $02
    ld [$ce04], a
    ld [$ce05], a
    dec a
    ld [$ce06], a
    ret


jr_01f_4633:
    ld a, $01
    ld [$ce04], a
    ld a, [$d627]
    and $1f
    ld [$ce03], a
    ld a, [$ce07]
    ld c, a
    ld hl, $cdde
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$d628]
    and $0f
    ld b, a
    ld a, [$d629]
    swap a
    and $f0
    or b
    ld [hl], a
    ld a, c
    cp $1f
    ret z

    inc a
    ld [$ce07], a
    ret


    ld l, $5b
    and h
    ld c, d
    or l
    call Call_01f_4cb2
    sbc [hl]
    ld c, h
    and l
    ld c, h
    inc b
    cp l
    ld c, l
    or l
    call Call_01f_6b14
    ld b, [hl]
    ld bc, $6c5b
    ld c, d
    inc de
    ld e, e
    ld a, d
    ld c, d
    pop de
    ld c, l
    ld e, $5e
    ldh [rKEY1], a
    inc hl
    ld e, e
    adc b
    ld d, e
    and [hl]
    ld d, e
    ld d, b
    ld c, d
    ld l, c
    ld d, [hl]
    sbc e
    ld b, [hl]
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    sub e
    ld b, [hl]
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    sub e
    ld b, [hl]
    bit 2, [hl]
    inc b
    sbc [hl]
    ld c, h
    db $ec
    ld d, [hl]
    dec b
    and d
    ld b, [hl]
    sub e
    ld b, [hl]
    ld h, $57
    ld d, b
    ld d, a
    ld b, $9e
    ld c, h
    ld e, c
    ld d, a
    rlca
    or d
    ld b, [hl]
    sub e
    ld d, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    inc d
    pop de
    ld c, l
    inc [hl]
    ld e, [hl]
    sub a
    ld d, e
    ldh [rKEY1], a
    ldh [c], a
    ld d, e
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld d, b
    ld hl, sp+$4d
    rst $38
    ld c, l
    and h
    ld c, d
    or l
    call Call_01f_4dd1
    and h
    ld e, [hl]
    ldh [rKEY1], a
    xor l
    ld c, d
    ret c

    ld c, e
    or $4a
    ld bc, $4e08
    pop de
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    pop af
    ld b, [hl]
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    pop af
    ld b, [hl]
    and e
    ld e, d
    inc c
    sbc [hl]
    ld c, h
    db $ec
    ld d, [hl]
    dec c
    nop
    ld b, a
    pop af
    ld b, [hl]
    sub a
    ld d, e
    push de
    ld e, d
    ld e, $47
    db $fd
    ld b, a
    rst $00
    ld c, b
    ld c, d
    ld c, c
    ld b, $4a
    xor l
    ld c, d
    db $f4
    ld c, e
    ld b, d
    ld c, e

jr_01f_4724:
    ld [bc], a
    pop af
    ld c, l
    and d
    ld c, [hl]
    ret c

    ld e, b
    add hl, sp
    ld b, a
    cpl
    ld b, a
    pop de
    ld c, l
    inc c
    ld e, a
    ldh [rKEY1], a
    ld l, c
    ld d, [hl]
    ld d, e
    ld b, a
    pop de
    ld c, l
    ld e, h
    ld e, [hl]
    ldh [rKEY1], a
    db $eb
    ld c, [hl]
    ei
    ld c, a
    inc d
    ld d, d
    ccf
    ld b, a
    pop de
    ld c, l
    add b
    ld e, [hl]
    ldh [rKEY1], a
    pop af
    ld c, l
    xor c
    ld d, c
    ld d, e
    ld b, a
    pop de
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    ld e, c
    ld b, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    ld e, c
    ld b, a
    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    ld l, b
    ld b, a
    ld e, c
    ld b, a
    db $ec
    ld e, d
    db $e4
    ld b, a
    pop de
    ld c, l
    xor $5e
    sbc [hl]
    ld c, h
    and l
    ld c, h
    jr z, jr_01f_4724

    ld c, h
    ld l, a
    ld d, [hl]
    add a
    ld b, a
    xor $57
    ld [$4c9e], sp
    db $ec
    ld d, [hl]
    add hl, bc
    add a
    ld b, a
    add a
    ld b, a
    ld h, $57
    dec h
    ld e, b
    ld a, [bc]
    sbc [hl]
    ld c, h
    ld e, c
    ld d, a
    dec bc
    sub a
    ld b, a
    sub e
    ld d, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    ld [hl], $58
    halt
    ld e, b
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    or b
    ld b, a
    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    or b
    ld b, a
    or b
    ld b, a
    db $ec
    ld e, d
    rst $10
    ld b, a
    cp c
    ld e, b
    sub a
    ld d, e
    pop de
    ld c, l
    ld hl, sp+$5e
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]
    ld l, c
    ld d, [hl]
    sub $46
    pop de
    ld c, l
    ld c, [hl]
    ld e, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld a, b
    ld l, c
    ld d, [hl]
    db $e4
    ld b, a
    pop de
    ld c, l
    ld [bc], a
    ld e, a
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]
    sub a
    ld d, e
    ld l, c
    ld d, [hl]
    sub $46
    pop de
    ld c, l
    ld b, h
    ld e, a
    ld l, c
    ld d, [hl]
    add sp, $47
    xor l
    ld c, d
    ld d, $4c
    scf
    ld c, e
    inc bc
    pop af
    ld c, l
    ldh [$ff4e], a
    ret c

    ld e, b
    jr jr_01f_4854

    ld c, $48
    pop de
    ld c, l
    ld e, $5f
    ldh [rKEY1], a
    ld l, c
    ld d, [hl]
    ld [hl], $48
    pop de
    ld c, l
    ld l, [hl]
    ld e, [hl]
    ldh [rKEY1], a
    adc d
    ld d, b
    ld c, $51
    inc d
    ld d, d
    ld e, $48
    ld b, c
    ld e, c
    ld e, $48
    pop de
    ld c, l
    sub d
    ld e, [hl]
    ldh [rKEY1], a
    pop af
    ld c, l
    xor c
    ld d, c
    ld [hl], $48
    pop de
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    inc a
    ld c, b
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    inc a
    ld c, b
    or h
    ld e, d
    ld c, $9e
    ld c, h

jr_01f_4854:
    db $ec
    ld d, [hl]
    rrca
    ld c, e
    ld c, b
    inc a
    ld c, b
    db $ec
    ld e, d
    db $e4
    ld b, a
    pop de
    ld c, l
    xor $5e
    sbc [hl]
    ld c, h
    and l
    ld c, h
    jr z, @-$60

    ld c, h
    ld l, a
    ld d, [hl]
    ld l, d
    ld c, b
    inc b
    ld e, c
    ld [$4c9e], sp
    db $ec
    ld d, [hl]
    add hl, bc
    ld l, d
    ld c, b
    ld l, d
    ld c, b
    ld h, $57
    cpl
    ld e, c
    ld a, [bc]
    sbc [hl]
    ld c, h
    ld e, c
    ld d, a
    dec bc
    ld a, d
    ld c, b
    sub e
    ld d, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    ld h, e
    ld e, c
    and e
    ld e, c
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    sub e
    ld c, b
    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    sub e
    ld c, b
    sub e
    ld c, b
    db $ec
    ld e, d
    cp d
    ld c, b
    ret nz

    ld e, c
    sub a
    ld d, e
    pop de
    ld c, l

jr_01f_48ad:
    ld hl, sp+$5e
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]
    ld l, c
    ld d, [hl]
    sub $46
    pop de
    ld c, l
    jr nc, jr_01f_491d

    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld a, b
    ld l, c
    ld d, [hl]
    db $e4
    ld b, a
    xor l
    ld c, d
    dec l
    ld c, h
    ld b, d
    ld c, e
    inc b
    ld l, l
    ld d, c
    pop de
    ld c, l
    xor [hl]
    ld e, [hl]
    ldh [rKEY1], a
    pop af
    ld c, l
    xor c
    ld d, c
    call c, $d148
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    ldh [c], a
    ld c, b
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    ldh [c], a
    ld c, b
    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    pop af
    ld c, b
    ldh [c], a
    ld c, b
    db $ec
    ld e, d
    db $e4
    ld b, a
    pop de
    ld c, l
    xor $5e
    sbc [hl]
    ld c, h
    and l
    ld c, h
    jr z, jr_01f_48ad

    ld c, h
    ld l, a
    ld d, [hl]
    db $10
    ld c, c
    rst $18
    ld e, c
    ld [$4c9e], sp
    db $ec
    ld d, [hl]
    add hl, bc
    db $10

jr_01f_491d:
    ld c, c
    db $10
    ld c, c
    ld h, $57
    db $fd
    ld e, c
    ld a, [bc]
    sbc [hl]
    ld c, h
    ld e, c
    ld d, a
    dec bc
    jr nz, jr_01f_4975

    sub e
    ld d, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    db $10
    ld e, d
    dec e
    ld e, d
    sub a
    ld d, e
    ld l, l
    ld d, c
    pop de
    ld c, l
    ld hl, sp+$5e
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]

jr_01f_4946:
    ld l, c
    ld d, [hl]
    sub $46
    xor l
    ld c, d
    ld l, $4c
    ld d, h
    ld c, e
    dec b
    ld [$a24d], a
    ld d, d
    db $eb
    ld e, b
    ld h, l
    ld c, c
    ld e, e
    ld c, c
    pop de
    ld c, l
    ld e, b
    ld e, a
    ldh [rKEY1], a
    ld l, c
    ld d, [hl]
    ld [hl], l
    ld c, c
    ret nc

    ld d, d
    ld d, e
    ld c, c
    pop de
    ld c, l
    cp [hl]
    ld e, [hl]
    ldh [rKEY1], a
    pop af
    ld c, l
    xor c
    ld d, c
    ld [hl], l
    ld c, c

jr_01f_4975:
    pop de
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    ld a, e
    ld c, c
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    ld a, e
    ld c, c
    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    adc d
    ld c, c
    ld a, e
    ld c, c
    db $ec
    ld e, d
    db $e4
    ld b, a
    pop de
    ld c, l
    xor $5e
    sbc [hl]
    ld c, h
    and l
    ld c, h
    jr z, jr_01f_4946

    ld c, h
    ld l, a
    ld d, [hl]
    xor c
    ld c, c
    dec hl
    ld e, d
    ld [$4c9e], sp
    db $ec
    ld d, [hl]
    add hl, bc
    xor c
    ld c, c
    xor c
    ld c, c
    ld h, $57
    ld b, [hl]
    ld e, d
    ld a, [bc]
    sbc [hl]
    ld c, h
    ld e, c
    ld d, a
    dec bc
    cp c
    ld c, c
    sub e
    ld d, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    ld e, c
    ld e, d
    ld [hl], e
    ld e, d
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    jp nc, $b449

    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    jp nc, $d249

    ld c, c
    db $ec
    ld e, d
    ld sp, hl
    ld c, c
    add c
    ld e, d
    sub a
    ld d, e
    pop de

Call_01f_49eb:
    ld c, l
    ld hl, sp+$5e
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]
    ld l, c
    ld d, [hl]
    sub $46
    pop de
    ld c, l
    ld a, [hl-]
    ld e, a
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld a, b
    ld l, c
    ld d, [hl]
    db $e4
    ld b, a
    pop de
    ld c, l
    ret nc

    ld e, [hl]
    ldh [rKEY1], a
    pop af
    ld c, l
    xor c
    ld d, c
    ld [de], a
    ld c, d
    pop de
    ld c, l
    db $e4
    ld e, [hl]
    ldh [rKEY1], a
    sbc [hl]
    ld c, h
    adc b
    ld d, e
    and [hl]
    ld d, e
    jr jr_01f_4a6a

    sbc [hl]
    ld c, h
    and l
    ld c, h
    db $10
    sbc [hl]
    ld c, h
    ld l, a
    ld d, [hl]
    jr @+$4c

    or h
    ld e, d
    ld c, $9e
    ld c, h
    db $ec
    ld d, [hl]
    rrca
    daa
    ld c, d
    jr @+$4c

    db $ec
    ld e, d
    push af
    ld b, a
    sub a
    ld d, e
    ld de, $d154
    ld c, l
    jp c, $e05e

    ld c, l
    sbc [hl]
    ld c, h
    and l
    ld c, h
    ld b, [hl]
    call nz, Call_01f_6953
    ld d, [hl]
    ld c, h
    ld c, d
    sub a
    ld d, e
    pop de
    ld c, l
    ld c, d
    ld e, [hl]
    ldh [rKEY1], a
    call nz, Call_01f_6953
    ld d, [hl]
    ld c, h
    ld c, d
    sub a
    ld d, e
    pop de
    ld c, l
    ld c, d
    ld e, [hl]
    ldh [rKEY1], a
    call nz, Call_01f_6953
    ld d, [hl]

jr_01f_4a6a:
    ld l, b
    ld c, d
    sub a
    ld d, e
    pop de
    ld c, l
    ld l, d
    ld e, a
    ldh [rKEY1], a
    call nz, Call_01f_6953
    ld d, [hl]
    halt
    ld c, d
    sub a
    ld d, e
    pop de
    ld c, l
    ld a, h
    ld e, a
    ldh [rKEY1], a
    call nz, Call_01f_6953
    ld d, [hl]
    add h
    ld c, d

Call_01f_4a88:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4a9b
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    ret


    push bc
    call Call_000_2071
    ld b, $0b
    ld hl, $9822

jr_01f_4ab6:
    push bc
    ld b, $11
    ld a, $af

jr_01f_4abb:
    ld [hl+], a
    dec b
    jr nz, jr_01f_4abb

    pop bc
    ld a, $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_4ab6

    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, d
    ld l, e

jr_01f_4ad3:
    ld a, [hl+]
    or a
    jr z, jr_01f_4ae1

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    call Call_000_210f
    jr jr_01f_4ad3

jr_01f_4ae1:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    push hl
    ld bc, $4aed
    push bc
    ld l, e
    ld h, a
    jp hl


    pop hl
    ld a, [hl+]
    ld [$cdb4], a
    call Call_000_208a
    ret


    ld hl, $76bd
    ld c, $1d
    ld de, $8000
    call Call_000_2f41
    ld hl, $7af6
    ld c, $0b
    ld de, $8ec0
    call Call_000_2f41
    ld hl, $7b34
    ld c, $0b
    ld de, $8f80
    call Call_000_2f41
    ld hl, $98ec
    ld a, $ec
    call Call_01f_4b2e
    ld hl, $990c
    ld a, $f8
    call Call_01f_4b2e
    ld hl, $992c
    call Call_01f_4b2e
    ret


Call_01f_4b2e:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ret


    ld hl, $7bb3
    ld c, $0b
    ld de, $8380
    call Call_000_2f41
    call Call_01f_4092
    ld hl, $4f01
    ld a, $11
    ld de, $8f00
    ld bc, $0100
    call Call_000_211f
    ret


    ld hl, $5823
    ld c, $1c
    ld de, $8000
    call Call_000_2f41
    ld hl, $8000

jr_01f_4b62:
    ld bc, $4ba4

jr_01f_4b65:
    ld a, [bc]
    or a
    jr z, jr_01f_4b77

    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    push bc
    ld b, $40
    call Call_000_210f
    pop bc
    jr jr_01f_4b65

jr_01f_4b77:
    ld bc, $cecd
    ld hl, $4bb7

jr_01f_4b7d:
    ld a, [hl+]
    or a
    jr z, jr_01f_4b90

    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld a, [bc]
    inc bc
    push bc
    call Call_01f_4bca
    pop bc
    pop hl
    jr jr_01f_4b7d

jr_01f_4b90:
    ld hl, $90a0
    ld de, $8000
    ld b, $60
    call Call_000_210f
    ld hl, $91a0
    ld b, $40
    call Call_000_210f
    ret


    ret nz

    adc a
    ret nz

    sub h
    ret nz

    sub l
    ret nz

    sub [hl]
    ret nz

    sub a
    ret nz

    adc b
    ret nz

    adc c
    ret nz

    adc [hl]
    add b
    adc a
    nop
    ld h, h
    sbc b
    ld l, d
    sbc b
    ld [hl], b
    sbc b
    call nz, $ca98
    sbc b
    ret nc

    sbc b
    inc h
    sbc c
    ld a, [hl+]
    sbc c
    jr nc, jr_01f_4b62

    nop

Call_01f_4bca:
    push hl
    call Call_000_3215
    pop hl
    ld a, [$ccd0]
    ld [hl+], a
    ld a, [$ccd1]
    ld [hl+], a
    ret


    and l
    sbc b
    dec bc
    ld [bc], a
    ld hl, $afaf
    xor a
    xor a
    xor a
    ld b, c
    ld [hl], e
    inc [hl]
    add c
    ld b, l
    sbc c
    ld a, [bc]
    sub $98
    add hl, sp
    xor a
    xor a
    xor a
    xor a
    xor a
    jr nc, jr_01f_4c36

    nop
    ld b, d
    sbc b
    ld [$8010], sp
    cp d
    ld b, h
    dec h
    ld b, $b7
    xor h
    add d
    sbc b
    ld [$0130], sp
    ld sp, $0292
    xor h
    xor h
    xor h
    jp nz, $0898

    ld h, [hl]
    add a
    rla
    ld b, h
    dec h
    ld b, $b7
    xor h
    nop
    ld b, d
    sbc b
    ld [$8010], sp
    cp d
    ld b, h
    dec h
    ld b, $b7
    xor h
    add d
    sbc b
    ld [$0130], sp
    ld sp, $0292
    xor h
    xor h
    xor h
    nop
    nop
    ld b, d
    sbc b
    ld c, $4c
    ld c, l
    xor a
    xor a
    xor a

jr_01f_4c36:
    xor a
    ld e, h
    ld e, l
    xor a
    xor a
    xor a
    xor a
    ld l, h
    ld l, l
    ld h, d
    sbc b
    ld de, $4f4e
    call c, $dedc
    xor a
    ld e, [hl]
    ld e, a
    call c, $dedc
    xor a
    ld l, [hl]
    ld l, a
    call c, $dedc
    and d
    sbc b
    ld c, $7c
    ld a, l
    xor a
    xor a
    xor a
    xor a
    adc h
    adc l
    xor a
    xor a
    xor a
    xor a
    sbc h
    sbc l
    jp nz, $1198

    ld a, [hl]
    ld a, a
    call c, $dedc
    xor a
    adc [hl]
    adc a
    call c, $dedc
    xor a
    sbc [hl]
    sbc a
    call c, $dedc
    ld [bc], a
    sbc c
    ld c, $ec
    db $ed
    xor a
    xor a
    xor a
    xor a
    ld hl, sp-$07
    xor a
    xor a
    xor a
    xor a
    db $ec
    db $ed
    ld [hl+], a
    sbc c
    ld de, $efee
    call c, $dedc
    xor a
    ld a, [$dcfb]
    call c, $afde
    xor $ef
    call c, $dedc
    nop
    ld h, b
    ld l, c
    xor a
    ld [$cdad], a
    ret


    ld h, b
    ld l, c
    ld a, [$cdad]
    cp [hl]
    jr c, jr_01f_4caf

    inc hl
    ret


jr_01f_4caf:
    dec hl
    dec hl
    ret


Call_01f_4cb2:
    push bc
    ld hl, $4cd5
    ld a, [$cdb5]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    push bc
    call $0635
    call Call_000_210f
    pop bc
    ldh a, [$ff97]
    add b
    dec a
    ldh [$ff97], a
    pop hl
    ret


    ld bc, $0b4d
    ld c, l
    dec d
    ld c, l
    rra
    ld c, l
    add hl, hl
    ld c, l
    cpl
    ld c, l
    dec [hl]
    ld c, l
    dec sp
    ld c, l
    ld b, c
    ld c, l
    ld b, a
    ld c, l
    ld c, l
    ld c, l
    ld d, e
    ld c, l
    ld e, l
    ld c, l
    ld h, a
    ld c, l
    ld [hl], c
    ld c, l
    ld [hl], a
    ld c, l
    add c
    ld c, l
    adc e
    ld c, l
    sub l
    ld c, l
    sbc a
    ld c, l
    xor c
    ld c, l
    or e
    ld c, l
    add hl, bc
    sbc b
    ld b, e
    ld bc, $9872
    db $e3
    ld bc, $005c
    add hl, bc
    sbc b
    ld b, h
    ld bc, $9802
    db $e4
    ld bc, $002c
    add hl, bc
    sbc b
    ld b, l
    ld bc, $9814
    push hl
    ld bc, $003d
    add hl, bc
    sbc b
    ld b, [hl]
    ld bc, $9824
    and $01
    ld a, [hl+]
    nop
    dec b
    sbc b
    rst $20
    ld bc, $004a
    dec b
    sbc b
    add sp, $01
    ld a, $00
    dec b
    sbc b
    jp hl


    ld bc, $002c
    dec b
    sbc b
    db $eb
    ld bc, $004f
    dec b
    sbc b
    db $ec
    ld bc, $004a
    dec b
    sbc c
    inc h
    ld bc, $00af
    dec b
    sbc c
    dec h
    ld bc, $002d
    add hl, bc
    sbc c
    ld h, $01
    ld e, $98
    add [hl]
    ld bc, $00c8
    add hl, bc
    sbc c
    daa
    ld bc, $984d
    add a
    ld bc, $0012
    add hl, bc
    sbc c
    jr z, @+$03

    ld a, $98
    adc b
    ld bc, $00b1
    dec b
    sbc b
    adc c
    ld bc, $0092
    add hl, bc
    sbc c
    ld a, [hl+]
    ld bc, $982a
    adc d
    ld bc, $0002
    add hl, bc
    sbc c
    dec hl
    ld bc, $982c
    adc e
    ld bc, $0028
    add hl, bc
    sbc c
    inc l
    ld bc, $983f
    adc h
    ld bc, $0099
    add hl, bc
    sbc c
    dec l
    ld bc, $984f
    adc l
    ld bc, $0035
    add hl, bc
    sbc c
    ld l, $01
    inc l
    sbc b
    adc [hl]
    ld bc, $007a
    add hl, bc
    sbc c
    cpl
    ld bc, $984d
    adc a
    ld bc, $0053
    add hl, bc
    sbc c
    jr nc, jr_01f_4db8

    ld l, d

jr_01f_4db8:
    sbc b
    sub b
    ld bc, $006a
    ld h, b
    ld l, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    cp [hl]
    inc hl
    jr nc, jr_01f_4dce

    inc a
    ld [bc], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_4dce:
    inc hl
    inc hl
    ret


Call_01f_4dd1:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6b], a
    ld a, [hl+]
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6a]
    or a
    ret nz

    dec hl
    dec hl
    ret


    xor a
    ld [$cdbc], a
    ld [$cdbd], a
    ld h, b
    ld l, c
    xor a
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cdb9], a
    ret


    ld h, b
    ld l, c
    ld a, [$cdb9]

Call_01f_4e04:
    ld [$cd98], a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$cdb6], a
    ld a, $01
    ld [$cdb3], a
    ld a, [$cd98]
    ld [$cdb9], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01f_4e39

    bit 1, a
    jr nz, jr_01f_4e43

    ld bc, $cd98
    bit 4, a
    jr nz, jr_01f_4e52

    bit 5, a
    jr nz, jr_01f_4e66

    bit 6, a
    jr nz, jr_01f_4e7a

    bit 7, a
    jr nz, jr_01f_4e8e

    dec hl
    dec hl
    ret


jr_01f_4e39:
    xor a
    ld [$cdb3], a
    ld a, $42
    call Call_000_23d5
    ret


jr_01f_4e43:
    xor a
    ld [$cdb3], a
    ld a, $04
    ld [$cd98], a
    ld a, $51
    call Call_000_23d5
    ret


jr_01f_4e52:
    ld a, [bc]
    bit 0, a
    jr nz, jr_01f_4e63

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a

jr_01f_4e63:
    dec hl
    dec hl
    ret


jr_01f_4e66:
    ld a, [bc]
    bit 0, a
    jr z, jr_01f_4e77

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a

jr_01f_4e77:
    dec hl
    dec hl
    ret


jr_01f_4e7a:
    ld a, [bc]
    bit 1, a
    jr z, jr_01f_4e8b

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a

jr_01f_4e8b:
    dec hl
    dec hl
    ret


jr_01f_4e8e:
    ld a, [bc]
    bit 1, a
    jr nz, jr_01f_4e9f

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a

jr_01f_4e9f:
    dec hl
    dec hl
    ret


    push bc
    xor a
    ld [$cdb6], a
    ld hl, $ce3f
    ld c, $16
    call Call_01f_4eb1
    pop hl
    ret


Call_01f_4eb1:
    push hl
    ld hl, $cd9e
    ld a, $ff
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    xor a
    ld [$cd9f], a
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_01f_4ec4:
    ld a, [hl]
    cp $ff
    jr z, jr_01f_4ed5

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cd9f]
    inc a
    ld [$cd9f], a

jr_01f_4ed5:
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_4ec4

    ret


    push bc
    ld hl, $ce97
    ld c, $0c
    call Call_01f_4eb1
    pop hl
    ret


    push bc
    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_01f_4f3b

    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $4fe5
    ld a, [hl]
    res 7, a
    add a
    push af
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add [hl]
    ld b, a
    add a
    add a
    add a
    add a
    sub b
    ld hl, $4f4f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_01f_4f2b:
    call $0635
    ld b, $0f
    call Call_000_210f
    ldh a, [$ff97]
    add $0e
    ldh [$ff97], a
    pop hl
    ret


jr_01f_4f3b:
    ld hl, $4f40
    jr jr_01f_4f2b

    sbc b
    ld c, h
    inc b
    call c, $dcdc
    call c, $8c98
    inc b
    call c, $dcdc
    call c, $9800
    ld c, h
    inc b
    inc d
    ld [bc], a
    ld hl, $98af
    adc h
    inc b
    inc de
    sub h
    inc d
    ld [bc], a
    nop
    sbc b
    ld c, h
    inc b
    inc d
    ld [bc], a
    ld hl, $98af
    adc h
    inc b
    ld d, d
    ld de, $94a3
    nop
    sbc b
    ld c, h
    inc b
    ld b, b
    db $10
    ld [bc], a
    ld hl, $8c98
    inc b
    inc de
    sub h
    inc d
    ld [bc], a
    nop
    sbc b
    ld c, h
    inc b
    ld b, b
    db $10
    ld [bc], a
    ld hl, $8c98
    inc b
    ld d, d
    ld de, $94a3
    nop
    sbc b
    ld c, h
    inc b
    inc b
    inc b
    ld [bc], a
    ld hl, $8c98
    inc b
    inc de
    sub h
    inc d
    ld [bc], a
    nop
    sbc b
    ld c, h
    inc b
    inc b
    inc b
    ld [bc], a
    ld hl, $8c98
    inc b
    ld d, d
    ld de, $94a3
    nop
    sbc b
    ld c, h
    inc b
    ld b, c
    sub h
    ld hl, $9894
    adc h
    inc b
    inc de
    sub h
    inc d
    ld [bc], a
    nop
    sbc b
    ld c, h
    inc b
    ld b, c
    sub h
    ld hl, $9894
    adc h
    inc b
    ld d, d
    ld de, $94a3
    nop
    sbc b
    ld c, h
    inc b
    inc b
    inc b
    ld [bc], a
    ld hl, $8c98
    inc b
    push bc
    sub d
    ld [bc], a
    ld de, $9800
    ld c, h
    inc b
    inc b
    inc b
    ld [bc], a
    ld hl, $8c98
    inc b
    push bc
    sub d
    ld [bc], a
    ld de, $8700
    ld hl, $4ff3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ccf
    adc $55
    adc $6b
    adc $81
    adc $c5
    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_01f_5065

    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $4fe5
    ld a, [hl]
    res 7, a
    cp $02
    ld b, $00
    jr nz, jr_01f_5048

    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    or a
    jr nz, jr_01f_5048

    ld a, c
    ld b, $03
    cp $a0
    jr nc, jr_01f_5048

    dec b
    cp $50
    jr nc, jr_01f_5048

    dec b
    cp $0a
    jr nc, jr_01f_5048

    dec b

jr_01f_5048:
    ld hl, $506a
    ld a, b
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_01f_5055:
    call $0635
    ld b, $08
    call Call_000_210f
    ldh a, [$ff97]
    add $07
    ldh [$ff97], a
    pop hl
    ret


jr_01f_5065:
    ld hl, $506a
    jr jr_01f_5055

    sbc b
    call z, $dc04
    call c, $dcdc
    nop
    sbc b
    call z, Call_01f_4e04
    ld h, [hl]
    add a
    rla
    nop
    sbc b
    call z, Call_000_3e04
    ld h, [hl]
    add a
    rla
    nop
    sbc b
    call z, $3d04
    ld h, [hl]
    add a
    rla
    nop
    push bc
    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_01f_50c2

    call Call_01f_5157
    ld a, [hl]
    cp $ff
    jr z, jr_01f_50c2

    ld hl, $50e6
    add a
    ld b, a
    add a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call $0635
    ld b, $0a
    call Call_000_210f
    ldh a, [$ff97]
    add $09
    ldh [$ff97], a
    pop hl
    ret


jr_01f_50c2:
    ld hl, $50d5
    call $0635
    ld b, $11
    call Call_000_210f
    ldh a, [$ff97]
    add $10
    ldh [$ff97], a
    pop hl
    ret


    sbc b
    ld c, h
    ld b, $dc
    call c, $dcdc
    call c, $98dc
    adc h
    inc b
    call c, $dcdc
    call c, $9800
    ld c, h
    ld b, $35
    ld h, l
    xor c
    xor a
    xor a
    xor a
    nop
    sbc b
    ld c, h
    ld b, $56
    ld [hl], a
    add hl, de
    xor a
    xor a
    xor a
    nop
    sbc b
    ld c, h
    ld b, $46
    ld a, b
    add hl, sp
    add [hl]
    xor a
    xor a
    nop
    sbc b
    ld c, h
    ld b, $9a
    ld b, h
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    nop
    push bc
    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_01f_5145

    call Call_01f_5157
    ld a, [hl]
    cp $ff
    jr z, jr_01f_5145

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $5147
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call $0635
    ld b, $08
    call Call_000_210f
    ldh a, [$ff97]
    add $07
    ldh [$ff97], a

jr_01f_5145:
    pop hl
    ret


    sbc b
    adc h
    inc b
    inc de
    sub h
    inc d
    ld [bc], a
    nop
    sbc b
    adc h
    inc b
    ld d, d
    ld de, $94a3
    nop

Call_01f_5157:
    add a
    ld hl, $5165
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    sub a
    adc $a3
    adc $af
    adc $bb
    adc $c5
    call $0635
    ld hl, $519a
    ld b, $03
    call Call_000_210f
    ld hl, $cec8
    ld b, $04
    call Call_000_210f
    ld hl, $519d
    ld a, [$cec7]
    or a
    jr z, jr_01f_518d

    ld hl, $51a3

jr_01f_518d:
    ld b, $06
    call Call_000_210f
    ldh a, [$ff97]
    add $0c
    ldh [$ff97], a
    pop hl
    ret


    sbc b
    ld h, a
    inc b
    sbc b
    xor b
    ld [bc], a
    ld b, e
    inc d
    nop
    sbc b
    xor b
    ld [bc], a
    ld bc, $0042
    ld a, $03
    ld [$cdb3], a
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01f_51c5

    bit 1, a
    jr nz, jr_01f_51d7

    bit 4, a
    jr nz, jr_01f_51e9

    bit 5, a
    jr nz, jr_01f_51ff

    dec hl
    dec hl
    ret


jr_01f_51c5:
    xor a
    ld [$cdb3], a
    ld a, $42
    call Call_000_23d5
    ld a, [$cd98]
    ld [$cdb7], a
    inc hl
    inc hl
    ret


jr_01f_51d7:
    xor a
    ld [$cdb3], a
    ld a, $51
    call Call_000_23d5
    ld a, $01
    ld [$cdb7], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_51e9:
    ld a, [$cd98]
    or a
    jr nz, jr_01f_51fc

    inc a
    ld [$cd98], a
    xor a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8

jr_01f_51fc:
    dec hl
    dec hl
    ret


jr_01f_51ff:
    ld a, [$cd98]
    or a
    jr z, jr_01f_5211

    xor a
    ld [$cd98], a
    ld [$cd97], a
    ld a, $48
    call Call_000_23d8

jr_01f_5211:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $02
    ld [$cdb3], a
    ld a, [$cd98]
    ld [$cdb5], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01f_5241

    bit 1, a
    jr nz, jr_01f_5269

    ld bc, $cd98
    bit 4, a
    jr nz, jr_01f_526c

    bit 5, a
    jr nz, jr_01f_5284

    bit 6, a
    jr nz, jr_01f_528e

    bit 7, a
    jr nz, jr_01f_5298

    dec hl
    dec hl
    ret


jr_01f_5241:
    push hl
    ld a, [$cd98]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr z, jr_01f_5260

    xor a
    ld [$cdb3], a
    ld a, $42
    call Call_000_23d5
    pop hl
    inc hl
    inc hl
    ret


jr_01f_5260:
    ld a, $51
    call Call_000_23d5
    pop hl
    dec hl
    dec hl
    ret


jr_01f_5269:
    dec hl
    dec hl
    ret


jr_01f_526c:
    ld a, [bc]
    bit 0, a
    jr nz, jr_01f_5281

    set 0, a
    ld [bc], a

jr_01f_5274:
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_5281:
    dec hl
    dec hl
    ret


jr_01f_5284:
    ld a, [bc]
    bit 0, a
    jr z, jr_01f_5281

    res 0, a
    ld [bc], a
    jr jr_01f_5274

jr_01f_528e:
    ld a, [bc]
    bit 1, a
    jr z, jr_01f_5281

    res 1, a
    ld [bc], a
    jr jr_01f_5274

jr_01f_5298:
    ld a, [bc]
    bit 1, a
    jr nz, jr_01f_5281

    set 1, a
    ld [bc], a
    jr jr_01f_5274

    ld a, [$cd98]
    add a
    ld hl, $52be
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6b], a
    ld a, [hl+]
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ld h, b
    ld l, c
    ret


    ld l, $62
    jr c, @+$64

    ld b, d
    ld h, d
    ld c, h
    ld h, d
    ld d, [hl]
    ld h, d
    ld h, b
    ld h, d
    ld l, d
    ld h, d
    ld [hl], h
    ld h, d
    ld a, [hl]
    ld h, d
    ld h, b
    ld l, c
    ld a, $04
    ld [$cdb3], a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_01f_52fb

    bit 1, a
    jr nz, jr_01f_531f

    ld bc, $cdbc
    bit 4, a
    jr nz, jr_01f_5322

    bit 5, a
    jr nz, jr_01f_533c

    inc bc
    bit 6, a
    jr nz, jr_01f_5344

    bit 7, a
    jr nz, jr_01f_534c

    call Call_01f_5355
    dec hl
    dec hl
    ret


jr_01f_52fb:
    push hl
    ld a, [$cd98]

Jump_01f_52ff:
    ld b, a
    ld hl, $cecd
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_01f_531a

    ld a, b
    ld [$cdb5], a
    ld a, $42
    call Call_000_23d5
    inc hl
    inc hl
    ret


jr_01f_531a:
    ld a, $51
    call Call_000_23d5

jr_01f_531f:
    dec hl
    dec hl
    ret


jr_01f_5322:
    ld a, [bc]
    cp $02
    jr z, jr_01f_5339

    inc a
    ld [bc], a

jr_01f_5329:
    call Call_01f_5355
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd97], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_5339:
    dec hl
    dec hl
    ret


jr_01f_533c:
    ld a, [bc]
    or a
    jr z, jr_01f_5339

    dec a
    ld [bc], a
    jr jr_01f_5329

jr_01f_5344:
    ld a, [bc]
    or a
    jr z, jr_01f_5339

    dec a
    ld [bc], a
    jr jr_01f_5329

jr_01f_534c:
    ld a, [bc]
    cp $02
    jr z, jr_01f_5339

    inc a
    ld [bc], a
    jr jr_01f_5329

Call_01f_5355:
    ld a, [$cdbd]
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$cdbc]
    add b
    ld [$cd98], a
    ret


    ld hl, $cecd
    ld a, [$cdb5]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cd91], a
    xor a
    ld [$cd92], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $01
    jr nz, jr_01f_5387

    dec hl
    dec hl
    ret


jr_01f_5387:
    ret


    push bc
    ld a, $4d
    call Call_000_23cf
    call Call_01f_63e3
    xor a
    ld [$cdb8], a
    pop hl
    ret


    push bc
    call Call_01f_6422
    xor a
    ld [$d605], a
    ld a, $22
    call Call_000_23cf
    pop hl
    ret


    ld h, b
    ld l, c
    call Call_01f_6435
    ld a, [$d605]
    jr nz, jr_01f_53bd

    ld a, [$cdad]
    cp $ff
    jr z, jr_01f_53c0

    call Call_01f_642c
    dec hl
    dec hl
    ret


jr_01f_53bd:
    inc hl
    inc hl
    ret


jr_01f_53c0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [$d605], a
    ldh [rSTAT], a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $04
    ld [$c910], a
    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


    push bc
    ld hl, $b949
    ld de, $ce3f
    ld b, $58
    call Call_000_210f
    ld hl, $b9a7
    ld de, $ce97
    ld b, $30
    call Call_000_210f
    ld hl, $b8db
    ld de, $cec7
    ld b, $06
    call Call_000_210f
    ld hl, $b8d2
    ld de, $cecd
    ld b, $09
    call Call_000_210f
    pop hl
    ret


    push bc
    ld b, $04
    ld hl, $ce3f

jr_01f_5417:
    push bc
    call Call_01f_54e7
    pop bc
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5417

    call Call_01f_5526
    call Call_01f_553e
    ld hl, $ce3f
    ld de, $b949
    ld b, $58
    call Call_000_210f
    ld a, [$b949]
    cp $ff
    jr z, jr_01f_5444

    and $07
    ld [$b949], a

jr_01f_5444:
    ld a, [$b95f]
    cp $ff
    jr z, jr_01f_5450

    and $07
    ld [$b95f], a

jr_01f_5450:
    ld a, [$b975]
    cp $ff
    jr z, jr_01f_545c

    and $07
    ld [$b975], a

jr_01f_545c:
    ld a, [$b98b]
    cp $ff
    jr z, jr_01f_5468

    and $07
    ld [$b98b], a

jr_01f_5468:
    call Call_01f_5586
    call nc, Call_01f_55a1
    call Call_01f_55c1
    ld b, $04
    ld hl, $ce97

jr_01f_5476:
    push bc
    call Call_01f_55f7
    pop bc
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5476

    ld hl, $ce97
    ld de, $b9a7
    ld b, $30
    call Call_000_210f
    ld a, [$b9a7]
    cp $ff
    jr z, jr_01f_549d

    and $07
    ld [$b9a7], a

jr_01f_549d:
    ld a, [$b9b3]
    cp $ff
    jr z, jr_01f_54a9

    and $07
    ld [$b9b3], a

jr_01f_54a9:
    ld a, [$b9bf]
    cp $ff
    jr z, jr_01f_54b5

    and $07
    ld [$b9bf], a

jr_01f_54b5:
    ld a, [$b9cb]
    cp $ff
    jr z, jr_01f_54c1

    and $07
    ld [$b9cb], a

jr_01f_54c1:
    ld hl, $cec7
    ld de, $b8db
    ld b, $06
    call Call_000_210f
    ld hl, $cecd
    ld de, $b8d2
    ld b, $09
    call Call_000_210f
    ld b, $09
    ld c, $00

jr_01f_54db:
    ld a, c
    push bc
    call Call_01f_55fe
    pop bc
    inc c
    dec b
    jr nz, jr_01f_54db

    pop hl
    ret


Call_01f_54e7:
    ld a, [hl]
    cp $ff
    ret z

    bit 7, [hl]
    ret z

    res 7, [hl]
    ld a, [hl]
    cp $02
    jr nc, jr_01f_54f7

    inc a
    ld [hl], a

jr_01f_54f7:
    push hl
    ld a, $15
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]

Jump_01f_5501:
    cp $03
    jr z, jr_01f_5507

    inc a
    inc [hl]

jr_01f_5507:
    pop hl
    ld a, [hl]
    cp $03
    ret nz

    push hl
    ld hl, $ce3f
    ld c, $16
    call Call_01f_4eb1
    pop hl
    ld a, [$cd9f]
    cp $04
    ret nc

    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], $15
    pop hl
    ret


Call_01f_5526:
    ld b, $04
    ld hl, $ce3f

jr_01f_552b:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_555d

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_552b

    ret


Call_01f_553e:
    ld b, $04
    ld hl, $ce3f

jr_01f_5543:
    push hl
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    bit 7, [hl]
    pop hl
    jr nz, jr_01f_5564

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5543

    ret


jr_01f_555d:
    ld b, $04
    ld hl, $ce3f
    jr jr_01f_556e

jr_01f_5564:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    ret z

jr_01f_556e:
    push hl
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    res 7, [hl]
    pop hl
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_556e

    ret


Call_01f_5586:
    ld b, $04
    ld hl, $ce97

jr_01f_558b:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_559f

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_558b

    or a
    ret


jr_01f_559f:
    scf
    ret


Call_01f_55a1:
    ld a, [$cdae]
    and $3f
    or a
    ret nz

    ld b, $04
    ld hl, $ce97

jr_01f_55ad:
    ld a, [hl]
    cp $82
    jr z, jr_01f_55be

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_55ad

    ret


jr_01f_55be:
    ld [hl], $03
    ret


Call_01f_55c1:
    ld b, $03
    ld hl, $ce97

jr_01f_55c6:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_55d9

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_55c6

    ret


jr_01f_55d9:
    push hl
    ld de, $ce24
    ld b, $0c
    call Call_000_210f
    ld hl, $cebb
    pop de
    ld b, $0c
    call Call_000_210f
    ld hl, $ce24
    ld de, $cebb
    ld b, $0c
    call Call_000_210f
    ret


Call_01f_55f7:
    ld a, [hl]
    cp $ff
    ret z

    res 7, [hl]
    ret


Call_01f_55fe:
    ld b, a
    add a
    add a
    add b
    ld hl, $5631
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    or a
    jr z, jr_01f_5622

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    push hl
    call Call_01f_565e
    pop hl
    ret z

    ld a, $01
    ld [de], a
    ret


jr_01f_5622:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    xor a
    ld [de], a
    ld a, [hl+]
    call Call_01f_565e
    ret nz

    ld a, $ff
    ld [hl], a
    ret


    jp nc, $b5b8

    cp b
    inc b
    db $d3
    cp b
    or [hl]
    cp b
    dec b
    call nc, $b7b8
    cp b
    ld b, $d5
    cp b
    cp b
    cp b
    rlca
    sub $b8
    cp c
    cp b
    ld c, [hl]
    rst $10
    cp b
    cp d
    cp b
    ld c, a
    ret c

    cp b
    cp e
    cp b
    ld d, b
    reti


    cp b
    cp h
    cp b
    ld d, c
    jp c, $b4b8

    cp b
    inc bc

Call_01f_565e:
    ld hl, $b8f8
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_5689

    call Call_01f_5ac5
    jr nz, jr_01f_5686

    inc hl
    inc hl
    ld a, [hl+]

Call_01f_567f:
    ld e, a
    ld a, [hl+]
    ld b, h
    ld c, l
    ld l, e
    ld h, a
    jp hl


jr_01f_5686:
    dec hl
    dec hl
    ret


jr_01f_5689:
    call Call_01f_5acf
    jr nz, jr_01f_56b5

    xor a
    ld [$ce05], a
    ld a, [$ce06]
    or a
    jr nz, jr_01f_56ad

    inc hl
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce03]
    cp b
    jr nz, jr_01f_56a9

    xor a
    ld [$cdb8], a
    inc hl
    ret


jr_01f_56a9:
    dec hl
    dec hl
    dec hl
    dec hl

jr_01f_56ad:
    ld a, $1f
    call Call_01f_454a
    dec hl
    dec hl
    ret


jr_01f_56b5:
    ld a, [$cdad]
    cp $ff
    jr nz, jr_01f_5686

    ld a, [$cdb8]
    inc a
    ld [$cdb8], a
    cp $03
    jr nz, jr_01f_5686

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld hl, $b8f4
    ld de, $cdbe
    ld a, $05
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
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $04
    ld b, $05
    call Call_01f_4553
    pop hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_5720

    call Call_01f_5acf
    jr z, jr_01f_5703

    ld a, [$cdad]
    cp $3f
    jr z, jr_01f_570e

    dec hl
    dec hl
    ret


jr_01f_5703:
    xor a
    ld [$ce05], a
    ld b, [hl]
    ld a, [$ce03]
    cp b
    jr z, jr_01f_5720

jr_01f_570e:
    ld a, [$cdb8]
    inc a
    ld [$cdb8], a
    cp $03
    jr c, jr_01f_571b

    inc hl
    inc hl

jr_01f_571b:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_5720:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_5740

    call Call_01f_5ac5
    jr nz, jr_01f_573d

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, h
    ld c, l
    ld l, e
    ld h, a
    jp hl


jr_01f_573b:
    dec hl
    dec hl

jr_01f_573d:
    dec hl
    dec hl
    ret


jr_01f_5740:
    call Call_01f_5acf
    jr nz, jr_01f_573d

    inc hl
    inc hl
    ld b, [hl]
    ld a, [$ce03]
    cp b
    jr nz, jr_01f_573b

    inc hl
    ret


    push bc
    ld a, $06
    call Call_01f_454a
    pop hl
    inc hl
    ret


    xor a
    ld [$ce09], a
    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    jr z, jr_01f_578a

    call Call_01f_5acf
    jr z, jr_01f_5774

    ld a, [$cdad]
    cp $3f
    jr z, jr_01f_578e

    dec hl
    dec hl
    ret


jr_01f_5774:
    xor a
    ld [$ce05], a
    ld b, [hl]
    ld a, [$ce03]
    cp b
    jr nz, jr_01f_578e

    ld a, [$ce06]
    or a
    jr nz, jr_01f_578e

    ld a, $1e
    call Call_01f_454a

jr_01f_578a:
    inc hl
    inc hl
    inc hl
    ret


jr_01f_578e:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$d601]
    or a
    ret nz

    ld a, [$ce09]
    or a
    ret nz

    dec hl
    dec hl
    ret


    push bc
    call Call_01f_5ac5
    jr nz, jr_01f_57af

    ld a, $0e
    call Call_01f_454a
    pop hl
    ret


jr_01f_57af:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb6]
    or a
    jr z, jr_01f_57c5

    dec a
    jr nz, jr_01f_57c1

    inc hl
    inc hl
    ret


jr_01f_57c1:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_01f_57c5:
    ld a, [$cdad]
    cp $3f
    jr nz, jr_01f_57ce

    dec hl
    dec hl

jr_01f_57ce:
    dec hl
    dec hl
    ret


    push bc
    call Call_01f_5ac5
    jr nz, jr_01f_57de

    ld a, $10
    call Call_01f_454a
    pop hl
    ret


jr_01f_57de:
    pop hl
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [$cdb6]
    or a
    jr z, jr_01f_57eb

    ret


jr_01f_57eb:
    dec hl
    dec hl
    ret


    push bc
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $4fe5
    ld de, $cdbe
    ld a, $0f
    ld [de], a
    xor a
    inc de
    ld [de], a
    inc de
    ld b, $0b
    call Call_000_210f
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $08
    ld b, $0f
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbe
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$ce0a]
    cp $03
    jr nz, jr_01f_5855

    ld b, $04
    ld hl, $ce3f

jr_01f_5843:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_585b

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5843

jr_01f_5855:
    xor a
    ld [$cdb7], a
    pop hl
    ret


jr_01f_585b:
    ld a, $04
    sub b
    ld b, a
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr z, jr_01f_5855

    ld a, $01
    ld [$cdb7], a
    pop hl
    ret


    push bc
    ld hl, $ce0a
    ld a, [hl+]
    cp $ff
    jr z, jr_01f_58ac

    res 7, a
    cp $05
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $ea
    jr nc, jr_01f_58b2

    inc hl
    inc hl
    ld a, [hl+]
    cp $03
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $03
    jr nc, jr_01f_58b2

    ld a, [hl+]
    cp $02
    jr nc, jr_01f_58b2

    pop hl
    ret


jr_01f_58ac:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


jr_01f_58b2:
    ld a, $01
    ld [$cdb7], a
    pop hl
    ret


    push bc
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call $4fe5
    ld d, h
    ld e, l
    ld hl, $ce0a
    set 7, [hl]
    ld b, $16
    call Call_000_210f
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$cd9f]
    or a
    jr nz, jr_01f_58e7

    ld a, $01
    ld [$cdb7], a
    inc hl
    inc hl

jr_01f_58e7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld hl, $b8d2
    ld e, $09

jr_01f_58f0:
    ld a, [hl+]
    or a
    jr nz, jr_01f_58fe

    dec e
    jr nz, jr_01f_58f0

    ld a, $01
    ld [$cdb7], a
    inc bc
    inc bc

jr_01f_58fe:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_01f_5157
    ld de, $cdbe
    ld a, $05
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de
    ld b, $03
    call Call_000_210f
    ld a, $08
    ld b, $05
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbe
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_01f_5157
    ld a, [hl]
    pop hl
    or a
    jr z, jr_01f_595a

    inc hl
    inc hl
    ret


jr_01f_595a:
    ld a, $51
    call Call_000_23d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    ld a, [$ce24]
    cp $03
    jr nz, jr_01f_5982

    ld b, $04
    ld hl, $ce97

jr_01f_5970:
    ld a, [hl]
    res 7, a
    cp $03
    jr z, jr_01f_5988

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_01f_5970

jr_01f_5982:
    xor a
    ld [$cdb7], a
    pop hl
    ret


jr_01f_5988:
    ld a, $04
    sub b
    ld b, a
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp b
    jr z, jr_01f_5982

    ld a, $01
    ld [$cdb7], a
    pop hl
    ret


    push bc
    ld hl, $ce24
    ld a, [hl+]
    cp $ff
    jr z, jr_01f_59b8

    res 7, a
    cp $04
    jr nc, jr_01f_59ba

    inc hl
    ld a, [hl+]
    cp $02
    jr nc, jr_01f_59ba

jr_01f_59b8:
    pop hl
    ret


jr_01f_59ba:
    ld a, $01
    ld [$cdb7], a
    ret


    push bc
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_01f_5157
    ld d, h
    ld e, l
    ld hl, $ce24
    set 7, [hl]
    ld b, $0c
    call Call_000_210f
    pop hl
    ret


    push bc
    ld de, $cdbe
    ld a, $08
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de
    ld hl, $cec7
    ld b, $06
    call Call_000_210f
    ld a, $08
    ld b, $08
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbe
    xor a
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_01f_4553
    pop hl
    inc hl
    ret


    ld h, b
    ld l, c
    ld a, [$cec7]
    or a
    ret z

    ld a, $01
    ld [$cec7], a
    ret


    push bc
    ld de, $cec7
    ld hl, $ce30
    ld b, $06
    call Call_000_210f
    pop hl
    ret


    push bc
    ld hl, $cdbe
    ld a, $03
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, [$cdb5]
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, $08
    ld b, $0e
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cdbe
    xor a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $0a
    ld b, $02
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld hl, $cecd
    ld a, [$ce36]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $63
    ld a, $00
    jr c, jr_01f_5a6e

    inc a

jr_01f_5a6e:
    ld [$cdb7], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [$ce36]
    cp $0a
    ret c

    ld a, $01
    ld [$cdb7], a
    ret


    push bc
    ld hl, $cecd
    ld a, [$cdb5]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $cecd
    ld a, [$ce36]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_01f_5aa1

    inc [hl]

jr_01f_5aa1:
    pop hl
    ret


    push bc
    ld a, [$cd98]
    ld [$cdbe], a
    ld a, $0c
    ld b, $01
    call Call_01f_4553
    pop hl
    inc hl
    ret


    push bc
    ld a, [$cdb7]
    ld [$cdbe], a
    ld a, $0e
    ld b, $01
    call Call_01f_4553
    pop hl
    inc hl
    ret


Call_01f_5ac5:
    ld a, [$cdff]
    or a
    ret nz

    ld a, [$ce01]
    or a
    ret


Call_01f_5acf:
    ld a, [$ce05]
    cp $02
    ret


    ld h, b
    ld l, c
    ld a, [$cd98]
    cp $04
    jr z, jr_01f_5ae1

    ld [$cdb9], a

jr_01f_5ae1:
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


    ld h, b
    ld l, c
    ld a, [$cdb6]
    or a
    jr nz, jr_01f_5afd

    ld a, [$cdb7]
    or a
    jr nz, jr_01f_5afd

    inc hl
    inc hl
    ret


jr_01f_5afd:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr nz, jr_01f_5b0f

    inc hl
    inc hl
    ret


jr_01f_5b0f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$b9a1]
    and $f0
    jr nz, jr_01f_5b1f

    inc hl
    inc hl
    ret


jr_01f_5b1f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    push bc
    call Call_000_2331
    ld a, $46
    call Call_000_23d5
    pop hl
    ret


    push bc
    ld a, $03
    ld [$d602], a
    xor a
    ld [$d600], a
    ld [$d605], a
    ld [$d601], a
    ld [$d604], a
    ld [$d603], a
    ld [$d633], a
    ld [$d638], a
    ld [$d635], a
    ld [$d63a], a
    ld [$d637], a
    ld [$d63c], a
    ld a, $eb
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    pop hl
    ret


    ld hl, $cd6b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $5b75
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


    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    ld h, a
    ret


    add d
    ld e, e
    adc b
    ld e, e
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
    jr z, jr_01f_5bfe

jr_01f_5baf:
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
    jr c, jr_01f_5bcf

    ld de, $99f2

jr_01f_5bcf:
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
    jr z, jr_01f_5bf9

    dec hl
    dec hl
    ret


jr_01f_5bf9:
    xor a
    ld [$cd97], a
    ret


jr_01f_5bfe:
    inc de
    ld a, [$cd6e]
    inc a
    ld [$cd6e], a
    ld a, [$cd6d]
    dec a
    ld [$cd6d], a
    jr z, jr_01f_5c16

    ld a, [de]
    cp $af
    jr nz, jr_01f_5baf

    jr jr_01f_5bfe

jr_01f_5c16:
    pop hl
    xor a
    ld [$cd97], a
    ret


    ld h, b
    ld l, c
    call Call_01f_5c21

Call_01f_5c21:
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
    or a
    jr z, jr_01f_5c37

jr_01f_5c31:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_01f_5c31

jr_01f_5c37:
    pop hl
    ret


    push bc
    ld hl, $99c2
    ld b, $10

jr_01f_5c3f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5c3f

    ld a, [$cb5c]
    ld [hl], a

jr_01f_5c49:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5c49

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_01f_5c3f

    ld hl, $9a02
    ld b, $10

jr_01f_5c5b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5c5b

    ld a, [$cb5c]
    ld [hl], a

jr_01f_5c65:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_5c65

    ld a, [$cb5c]
    ld [hl+], a
    dec b
    jr nz, jr_01f_5c5b

    pop hl
    ret


    ld h, b
    ld l, c
    ld a, $01
    ld [$cd6a], a
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
    jr nz, jr_01f_5c94

    ld a, [$cd97]
    cp [hl]
    jr z, jr_01f_5c94

    dec hl
    dec hl
    ret


jr_01f_5c94:
    inc hl
    ret


    push bc
    ld a, [$cd9b]
    cp $ff
    jr z, jr_01f_5ccb

    ld de, $cd72
    call Call_01f_5ccd
    ld a, [$cd9c]
    cp $ff
    jr z, jr_01f_5ccb

    ld de, $cd7d
    call Call_01f_5ccd
    ld a, [$cd9d]
    cp $ff
    jr z, jr_01f_5ccb

    ld de, $cd82
    call Call_01f_5ccd
    ld a, [$cd9e]
    cp $ff
    jr z, jr_01f_5ccb

    ld de, $cd8d
    call Call_01f_5ccd

jr_01f_5ccb:
    pop hl
    ret


Call_01f_5ccd:
    push de
    call Call_01f_5cd9
    inc hl
    pop de
    ld b, $04
    call Call_000_210f
    ret


Call_01f_5cd9:
    add a
    ld hl, $5ce7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ccf
    adc $55
    adc $6b
    adc $81
    adc $c5
    ld a, [$cdb5]
    ld hl, $cd9b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    call Call_01f_5cd9
    inc hl
    ld de, $cd71
    ld b, $04
    call Call_000_210f
    pop hl
    ret


    push bc
    ld a, [$cdb5]
    add a
    add a
    ld hl, $5dda
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd71
    ld b, $04
    call Call_000_210f
    pop hl
    ret


    push bc
    ld a, [$cdb5]
    ld b, a
    add a
    add a
    add a
    add b
    ld hl, $5d40
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cd71
    ld b, $09
    call Call_000_210f
    pop hl
    ret


    dec d
    bit 0, h
    jr nc, jr_01f_5d88

    xor a
    xor a
    xor a
    xor a
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, @+$45

    xor a
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, @+$45

    xor a
    xor a
    xor a
    add hl, sp
    rlca
    ld l, c
    adc c
    add hl, de
    ld h, $44
    jr nc, jr_01f_5da7

    ld b, l
    daa
    ld b, h
    jr nc, jr_01f_5dac

    xor a
    xor a
    xor a
    xor a
    add l
    sbc b
    dec d
    jr z, jr_01f_5d78

    ld b, h
    jr nc, @+$45

    xor a
    ld b, [hl]
    sbc c

jr_01f_5d78:
    or [hl]
    sbc c
    ld b, h
    jr nc, @+$45

    xor a
    xor a
    res 1, c
    sbc b
    add hl, de
    add [hl]
    ld a, d
    ld b, h
    jr nc, @+$45

jr_01f_5d88:
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, jr_01f_5dd2

    xor a
    xor a
    push bc
    ld a, [$cd9b]
    cp $ff
    jr z, jr_01f_5dd2

    ld de, $cd72
    ld hl, $5dda
    call Call_01f_5dd4
    ld a, [$cd9c]
    cp $ff

jr_01f_5da7:
    jr z, jr_01f_5dd2

    ld de, $cd7d

jr_01f_5dac:
    ld hl, $5dde
    call Call_01f_5dd4
    ld a, [$cd9d]
    cp $ff
    jr z, jr_01f_5dd2

    ld de, $cd82
    ld hl, $5de2
    call Call_01f_5dd4
    ld a, [$cd9e]
    cp $ff
    jr z, jr_01f_5dd2

    ld de, $cd8d
    ld hl, $5de6
    call Call_01f_5dd4

jr_01f_5dd2:
    pop hl
    ret


Call_01f_5dd4:
    ld b, $04
    call Call_000_210f
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
    ldh a, [$ff8b]
    and $03
    jr nz, jr_01f_5e1d

    push hl
    ld de, $9a11
    ld a, [$cd9a]
    ld b, a
    ld a, [$cd97]
    bit 4, a
    jr nz, jr_01f_5e05

    ld a, [$cd9a]
    ld b, a

jr_01f_5e05:
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


jr_01f_5e1d:
    ret


    add hl, sp
    ld e, h
    adc h
    ld e, e
    sbc $60
    jr nz, @-$7e

    sbc a
    ld e, e
    ld [$8c5d], a
    ld e, e
    cp $60
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    inc e
    ld e, h
    cp [hl]
    ld e, a
    ld [hl], c
    call $af20
    call $cd71
    inc b
    adc h
    ld e, e
    ld [hl], c
    call $8020
    add d
    ld e, e
    sub h
    ld e, a
    add hl, sp
    ld e, h
    adc h
    ld e, e
    sbc [hl]
    ld e, a
    jr nz, jr_01f_5dd2

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    ld e, b
    ld e, [hl]
    inc e
    ld e, h
    sbc [hl]
    ld h, b

jr_01f_5e60:
    ld [hl], c
    call Call_01f_4020
    adc $71
    call $9600
    ld e, h
    add d
    ld e, e
    adc [hl]
    ld e, a
    inc e
    ld e, h
    sbc [hl]
    ld h, b
    ld [hl], c
    call $9820
    adc $72
    call $9100
    ld e, l
    add d
    ld e, e

jr_01f_5e7e:
    adc [hl]
    ld e, a
    inc e
    ld e, h
    cp $5f
    ld [hl], c
    call Call_01f_4020
    adc $71
    call $ef00
    ld e, h
    add d
    ld e, e
    adc [hl]
    ld e, a
    inc e
    ld e, h

jr_01f_5e94:
    cp $5f
    ld [hl], c
    call Call_01f_4020
    adc $71
    call $0b00
    ld e, l
    add d
    ld e, e
    adc [hl]
    ld e, a
    adc h
    ld e, e

jr_01f_5ea6:
    sbc $5f
    jr nz, @-$7e

    add d
    ld e, e
    sub h
    ld e, a
    inc e
    ld e, h
    cp $5f
    ld [hl], c
    call $c820

jr_01f_5eb6:
    adc $71
    call $8204
    ld e, e
    adc [hl]
    ld e, a
    inc e
    ld e, h

jr_01f_5ec0:
    cp $5f
    ld [hl], c
    call Call_01f_4020
    adc $71
    call Call_000_2400
    ld e, l
    add d
    ld e, e
    adc [hl]
    ld e, a
    adc h
    ld e, e
    ld e, [hl]
    ld h, b

jr_01f_5ed4:
    jr nz, @-$7e

    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld a, [hl]
    ld h, b
    jr nz, jr_01f_5e60

jr_01f_5ee0:
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    cp $60
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld e, $60

jr_01f_5ef2:
    jr nz, @-$7e

    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld a, $60
    jr nz, jr_01f_5e7e

    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e

jr_01f_5f04:
    ld c, $61
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    add hl, sp
    ld e, h
    adc h
    ld e, e
    ld e, $61
    jr nz, jr_01f_5e94

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    ld a, [de]
    ld e, a
    add hl, sp
    ld e, h
    adc h
    ld e, e
    ld a, $61
    jr nz, jr_01f_5ea6

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    inc l
    ld e, a
    adc h
    ld e, e
    ld e, [hl]
    ld h, c
    jr nz, jr_01f_5eb6

    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld a, [hl]
    ld h, c
    jr nz, jr_01f_5ec0

    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    sbc [hl]
    ld h, c
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    xor [hl]
    ld h, c
    jr nz, jr_01f_5ed4

    add d
    ld e, e
    sub h
    ld e, a

jr_01f_5f58:
    add hl, sp
    ld e, h
    adc h
    ld e, e
    adc $61
    jr nz, jr_01f_5ee0

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    ld h, [hl]
    ld e, a
    add hl, sp
    ld e, h
    adc h
    ld e, e
    xor $61
    jr nz, jr_01f_5ef2

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    ld a, b
    ld e, a
    add hl, sp
    ld e, h
    adc h
    ld e, e
    ld c, $62
    jr nz, jr_01f_5f04

    sbc a
    ld e, e
    ld [$745d], a
    ld e, h
    add d
    ld e, e
    adc d
    ld e, a
    adc h
    ld e, e
    ld [hl], c
    call $8020
    add hl, sp
    ld e, h
    sbc a
    ld e, e
    ld [hl], h
    ld e, h
    add d
    ld e, e
    sbc d
    ld e, a
    db $10
    ld bc, $9423
    and b
    xor a
    inc d
    ld h, c
    nop
    sub e

jr_01f_5fa8:
    inc sp
    ld bc, $2260
    ld l, d
    ld l, d
    cp l
    sub h
    ld [hl], e
    ld [hl], h
    db $10
    inc de
    ld b, b
    inc b
    ld hl, $1233
    cp d
    jr nz, jr_01f_5fbd

    ld b, e

jr_01f_5fbd:
    xor [hl]
    xor a
    xor a
    xor a
    xor a
    jr nz, jr_01f_5f58

    inc [hl]

jr_01f_5fc5:
    dec b
    rla
    jr z, @+$29

    ld hl, $2160
    jr nc, jr_01f_5fa8

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
    ld l, b
    ld b, [hl]
    sub [hl]
    ld a, d
    ld [hl], h
    inc bc
    add b

jr_01f_5fe5:
    sub h
    cp l
    ld [de], a
    cp d
    jr nz, jr_01f_5fec

    ld b, e

jr_01f_5fec:
    jp c, Jump_000_1faf

    call $9935
    cp l
    ld hl, $0291
    add c
    sub d
    ld [bc], a
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    cp l
    ld [hl], d
    ld bc, $22bd
    db $10
    ld l, e
    xor a
    ld d, b
    ld bc, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld bc, $0301
    inc d
    ld [bc], a
    db $10
    sub h
    jr nz, jr_01f_5fc5

    sub d
    ld [bc], a
    xor a
    ld [hl], h
    ld d, b
    or c
    ld h, e
    ld h, b
    ld [hl+], a
    jp c, $9221

    ld [bc], a
    ld hl, $0292
    xor a
    inc b
    ld h, b
    ld sp, $ba12
    jr nz, jr_01f_603d

    xor h

jr_01f_603d:
    xor a
    inc d
    ld [bc], a

Jump_01f_6040:
    db $10
    sub h
    jr nz, jr_01f_5fe5

    sub d
    ld [bc], a
    xor a
    ld d, b
    inc b
    ld [hl], e
    add c
    ld h, b
    ld hl, $af30
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
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl], h
    ld hl, $0291
    add c
    sub d

jr_01f_6068:
    ld [bc], a
    ld hl, $2260
    db $10
    ld l, e
    xor a
    ld d, b
    ld bc, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld bc, $0301
    and h
    add c
    ld [hl], d
    ld [bc], a
    nop
    add c
    and b
    inc [hl]
    ld [bc], a
    and h
    or b
    ld bc, $2160
    jr nc, jr_01f_6068

    xor a
    xor a
    xor a
    xor a
    xor a
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld c, b
    sbc b
    add hl, sp
    ld a, b

jr_01f_609c:
    ld a, d
    rla
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $dcaf
    call c, $dcdc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, Call_000_0214
    db $10
    sub h
    ld hl, $7233
    add h
    ld hl, $bd01
    ld [hl+], a
    db $10
    ld l, e
    xor a
    xor a
    xor a
    ld d, b
    ld bc, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld bc, $0301
    inc b
    inc [hl]
    ld h, h
    cp d
    ld sp, $2074
    and b
    ld hl, $6133
    ld h, b
    ld [hl+], a
    jp c, $afaf

    call $9935
    ld [hl], h
    inc b
    ld hl, $1233
    cp d
    jr nz, jr_01f_60fa

    xor a

jr_01f_60fa:
    xor a
    xor a
    xor a
    xor [hl]
    ld [hl-], a
    ld [bc], a
    ld hl, $3094
    ld bc, $3111
    sub c
    ld [bc], a
    cp l
    ld [hl+], a
    xor h
    xor h
    xor h
    jp c, Jump_000_0214

    db $10
    sub h
    ld d, b
    reti


    inc [hl]
    add c
    inc de
    jr nz, jr_01f_609c

    ld h, b
    ld hl, $da30
    xor a
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl+], a
    add d
    ld [bc], a
    ld hl, $01a0
    ld h, b
    inc hl
    sub h
    jp c, $afaf

    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl], h
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl+], a
    add d
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    and b
    ld bc, $2360
    sub h
    jp c, Jump_000_0214

    db $10
    sub h
    ld [hl], h
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    sbc d
    ld b, h
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld d, b
    dec bc
    db $fd
    ld h, b
    cp l
    cp l
    ld [hl+], a
    jp c, $afaf

    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl], h
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    jr nc, jr_01f_61c3

    ld d, b
    dec e
    dec e
    sbc $60
    cp l
    ld hl, $6410
    inc sp
    ld h, b
    inc hl
    sub h
    xor a
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl], h
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl], h
    ld [hl-], a
    cp h
    inc de
    ld h, b
    ld [hl+], a
    jp c, $afaf

    xor a
    xor a
    xor a
    ld b, c
    sub h
    ld hl, $0294
    ld hl, $0b50
    inc [hl]
    ld [bc], a
    ld h, b
    cp l
    cp l
    ld [hl+], a
    jp c, $14af

    ld [bc], a
    db $10
    sub h
    ld [hl], h

jr_01f_61c3:
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl+], a
    add d
    jr nc, jr_01f_6219

    and b
    nop
    add c
    ld h, b
    inc hl
    sub h
    jp c, $14af

    ld [bc], a
    db $10
    sub h
    ld [hl], h
    inc [hl]
    add c
    inc de
    ld hl, $2260
    jp c, $afaf

    xor a
    xor a
    inc d
    ld [bc], a
    ld hl, $02a0
    ld h, b
    add e
    ld h, b
    ld hl, $4330
    jp c, Jump_01f_6040

    inc bc
    ld [hl], h
    ld [hl-], a
    inc de
    inc sp
    nop
    and e
    inc sp
    db $10
    add b
    reti


    ld de, $1233
    cp d
    jr nz, jr_01f_620e

    xor [hl]

jr_01f_620e:
    jr nc, jr_01f_6211

    ld d, e

jr_01f_6211:
    sub h
    cp l
    ld [hl+], a
    ld l, d
    ld bc, $be31
    reti


jr_01f_6219:
    ld [bc], a
    ld hl, $70a4
    ld b, c
    ld bc, $3393
    ld h, c
    inc sp
    ld [de], a
    cp d
    jr nz, jr_01f_6228

    xor a

jr_01f_6228:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    adc h
    ld e, e
    adc b
    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    sbc b
    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    xor b
    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    cp b
    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ret z

    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ret c

    ld h, d
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    add sp, $62
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld hl, sp+$62
    db $10
    add b
    add d
    ld e, e
    sub h
    ld e, a
    adc h
    ld e, e
    ld [$1063], sp
    add b
    add d
    ld e, e
    sub h
    ld e, a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec d
    bit 0, h
    jr nc, jr_01f_62d5

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
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, jr_01f_62e7

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
    jr nc, jr_01f_62f6

    xor a
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
    jr nc, jr_01f_6307

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
    jr nc, jr_01f_6315

    xor a
    xor a
    xor a

jr_01f_62d5:
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
    jr z, jr_01f_62e7

    ld b, h
    jr nc, jr_01f_6327

    xor a
    xor a
    xor a

jr_01f_62e7:
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
    jr nc, @+$45

    xor a
    xor a

jr_01f_62f6:
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
    jr nc, jr_01f_6347

    xor a
    xor a
    xor a

jr_01f_6307:
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
    jr nc, jr_01f_6356

    xor a
    xor a

jr_01f_6315:
    xor a
    xor a
    xor a

Call_01f_6318:
    push hl
    ld hl, $6325
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


    ld a, [bc]
    dec bc

jr_01f_6327:
    inc c
    dec c
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [hl+]
    dec hl
    inc l
    dec l

Call_01f_6335:
    ld a, [$d605]
    and a
    ret z

    ld a, [$d604]
    and a
    ret nz

    ld a, [$d600]
    and a
    ret z

    ld a, [$d604]

jr_01f_6347:
    and a
    ret nz

    ld a, $81
    ldh [rSC], a
    ret


    xor a
    ld [$d607], a
    ld a, [$d605]
    and a

jr_01f_6356:
    jr nz, jr_01f_6395

    ld a, [$d606]
    and a
    jr z, jr_01f_638b

    ldh a, [rSB]
    cp $5e
    jr z, jr_01f_6377

    cp $fe
    jr z, jr_01f_637f

    xor a
    ld [$d600], a
    ld a, $5e
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_01f_63e2


jr_01f_6377:
    ld a, $01
    ld [$d600], a
    ld [$d601], a

jr_01f_637f:
    ld a, $01
    ld [$d605], a
    ld a, [$d602]
    inc a
    ld [$d602], a

jr_01f_638b:
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    jp Jump_01f_63e2


jr_01f_6395:
    ld a, $01
    ld [$d604], a
    ld a, [$d600]
    xor $01
    ld [$d600], a
    ld hl, $d610
    ld a, [$d603]
    ld e, a
    xor a
    ld d, a
    add hl, de
    ldh a, [rSB]
    ld [hl], a
    ld hl, $d620
    add hl, de
    ld a, [hl]
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ld a, [$d603]
    inc a
    ld [$d603], a
    ld b, a
    ld a, [$d602]
    cp b
    jp nz, Jump_01f_63d8

    xor a
    ld [$d603], a
    ld [$d604], a
    call Call_01f_64ac
    call Call_01f_6475
    jr jr_01f_63e2

Jump_01f_63d8:
    ld a, [$d600]
    and a
    jr z, jr_01f_63e2

    ld a, $06
    ldh [rTAC], a

Jump_01f_63e2:
jr_01f_63e2:
    ret


Call_01f_63e3:
    ld a, $03
    ld [$d602], a
    xor a
    ld [$d600], a
    ld [$d605], a
    ld [$d601], a
    ld [$d604], a
    ld [$d603], a
    ld [$d633], a
    ld [$d638], a
    ld [$d635], a
    ld [$d63a], a
    ld [$d637], a
    ld [$d63c], a
    ld a, $eb
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, $02
    ldh [rTAC], a
    ld b, $80
    ld hl, $d606
    ld a, $5e
    ldh [rSB], a
    ld [hl], a
    ld a, b
    ldh [rSC], a
    ret


Call_01f_6422:
    xor a
    ldh [rSB], a
    ld [$d606], a
    ld [$d601], a
    ret


Call_01f_642c:
    ld a, $fe
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_01f_6435:
    ld a, [$d605]
    and a
    ret z

    ret


jr_01f_643b:
    dec bc
    ld a, b
    or c
    jr nz, jr_01f_643b

    ret


Call_01f_6441:
    di
    ld a, $01
    ld [$d637], a
    ld a, [$d633]
    ld l, a
    ld h, $d4
    ld b, $00
    ld de, $d62d
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    jr nz, jr_01f_6468

    jr c, jr_01f_6468

    ei
    ret


jr_01f_6468:
    ld a, l
    ld [$d633], a
    xor a
    ld hl, $d62d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


Call_01f_6475:
    ld a, [$d637]
    and a
    jr z, jr_01f_64a4

    xor a
    ld [$d637], a
    ld a, [$d635]
    ld l, a
    ld h, $d4
    ld b, $00
    ld de, $d620
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    jr nz, jr_01f_649f

    jr c, jr_01f_649f

    ret


jr_01f_649f:
    ld a, l
    ld [$d635], a
    ret


jr_01f_64a4:
    xor a
    ld hl, $d620
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_01f_64ac:
    ld a, $01
    ld [$d63c], a
    ld a, [$d638]
    ld l, a
    ld h, $d5
    ld b, $00
    ld de, $d611
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    ld b, a
    inc de
    ld a, [de]
    ld [hl], a
    inc l
    add b
    jr nz, jr_01f_64d1

    jr c, jr_01f_64d1

    ret


jr_01f_64d1:
    ld a, l
    ld [$d638], a
    ret


Call_01f_64d6:
    di
    ld a, [$d63c]
    and a
    jr z, jr_01f_6508

    xor a
    ld [$d63c], a
    ld a, [$d63a]
    ld l, a
    ld h, $d5
    ld b, $00
    ld de, $d627
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    ld b, a
    inc de
    ld a, [hl]
    inc l
    ld [de], a
    add b
    jr nz, jr_01f_6502

    jr c, jr_01f_6502

    ei
    ret


jr_01f_6502:
    ld a, l
    ld [$d63a], a
    ei
    ret


jr_01f_6508:
    xor a
    ld hl, $d627
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ei
    ret


    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld [$0007], sp
    db $fc
    nop
    ld b, $00
    db $f4
    ld [$0003], sp
    db $f4
    nop
    ld [bc], a
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $f4
    ld [$0075], sp
    db $f4
    nop
    ld [hl], h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $f4
    ld [$0079], sp
    db $f4
    nop
    ld a, b
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000e], sp
    inc b
    nop
    dec c
    nop
    inc b
    ld hl, sp+$0c
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$0011], sp
    inc b
    nop
    stop
    inc b
    ld hl, sp+$0f
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$05
    nop
    db $fc
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$01
    nop
    db $f4
    ldh a, [rP1]
    nop
    add b
    db $fc
    ld [$007f], sp
    db $fc
    nop
    ld a, [hl]
    nop
    db $f4
    ld [$007d], sp
    db $f4
    nop
    ld a, h
    nop
    inc b
    ld [$000b], sp
    inc b
    nop
    ld a, [bc]
    nop
    inc b
    ld hl, sp+$09
    nop
    inc b
    ldh a, [$ff08]
    nop
    db $fc
    ld hl, sp+$15
    nop
    db $fc
    ldh a, [rNR14]
    nop
    db $f4
    ld hl, sp+$13
    nop
    db $f4
    ldh a, [rNR12]
    nop
    add b
    ld [bc], a
    inc b
    dec e
    nop
    ld [bc], a
    db $fc
    inc e
    nop
    ld [bc], a
    db $f4
    dec de
    nop
    ld a, [$1a04]
    nop
    ld a, [$19fc]
    nop
    ld a, [$18f4]
    nop
    ldh a, [c]
    db $fc
    rla
    nop
    ldh a, [c]
    db $f4
    ld d, $00
    add b
    ld [bc], a
    inc b
    dec h
    nop
    ld [bc], a
    db $fc
    inc h
    nop
    ld [bc], a
    db $f4
    inc hl
    nop
    ld a, [$2204]
    nop
    ld a, [$21fc]
    nop
    ld a, [$20f4]
    nop
    ldh a, [c]
    db $fc
    rra
    nop
    ldh a, [c]
    db $f4
    ld e, $00
    add b
    ld [bc], a
    inc b
    ld l, $00
    ld [bc], a
    db $fc
    dec l
    nop
    ld [bc], a
    db $f4
    inc l
    nop
    ld a, [$2b04]
    nop
    ld a, [$2afc]
    nop
    ld a, [$29f4]
    nop
    ldh a, [c]
    inc b
    jr z, jr_01f_687f

jr_01f_687f:
    ldh a, [c]
    db $fc
    daa
    nop
    ldh a, [c]
    db $f4
    ld h, $00
    add b
    ld [bc], a
    inc b
    scf
    nop
    ld [bc], a
    db $fc
    ld [hl], $00
    ld [bc], a
    db $f4
    dec [hl]
    nop
    ld a, [$3404]
    nop
    ld a, [$33fc]
    nop
    ld a, [$32f4]
    nop
    ldh a, [c]
    inc b
    ld sp, $f200
    db $fc
    jr nc, jr_01f_68a8

jr_01f_68a8:
    ldh a, [c]
    db $f4
    cpl
    nop
    add b
    ld [bc], a
    inc b
    ccf
    nop
    ld [bc], a
    db $fc
    ld a, $00
    ld [bc], a
    db $f4
    dec a
    nop
    ld a, [$3c04]
    nop
    ld a, [$3bfc]
    nop
    ld a, [$3af4]
    nop
    ldh a, [c]
    db $fc
    add hl, sp
    nop
    ldh a, [c]
    db $f4
    jr c, jr_01f_68cd

jr_01f_68cd:
    add b
    ld [bc], a
    inc b
    ld b, a
    nop
    ld [bc], a
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    db $f4
    ld b, l
    nop
    ld a, [$4404]
    nop
    ld a, [$43fc]
    nop
    ld a, [$42f4]
    nop
    ldh a, [c]
    db $fc
    ld b, c
    nop
    ldh a, [c]
    db $f4
    ld b, b
    nop
    add b
    ld [bc], a
    inc b
    ld d, b
    nop
    ld [bc], a
    db $fc
    ld c, a
    nop
    ld [bc], a
    db $f4
    ld c, [hl]
    nop
    ld a, [$4d04]
    nop
    ld a, [$4cfc]
    nop
    ld a, [$4bf4]
    nop
    ldh a, [c]
    inc b
    ld c, d
    nop
    ldh a, [c]
    db $fc
    ld c, c
    nop
    ldh a, [c]
    db $f4
    ld c, b
    nop
    add b
    ld [bc], a
    inc b
    ld e, c
    nop
    ld [bc], a
    db $fc
    ld e, b
    nop
    ld [bc], a
    db $f4
    ld d, a
    nop
    ld a, [$5604]
    nop
    ld a, [$55fc]
    nop
    ld a, [$54f4]
    nop
    ldh a, [c]
    inc b
    ld d, e
    nop
    ldh a, [c]
    db $fc
    ld d, d
    nop
    ldh a, [c]
    db $f4
    ld d, c
    nop
    add b
    ld [bc], a
    inc b
    ccf
    nop
    ld [bc], a
    db $fc
    ld a, $00
    ld [bc], a
    db $f4
    dec a
    nop
    ld a, [$3c04]
    nop
    ld a, [$3bfc]
    nop
    ld a, [$3af4]
    nop
    ldh a, [c]
    db $fc

Call_01f_6953:
    add hl, sp
    nop
    ldh a, [c]
    db $f4
    jr c, jr_01f_6959

jr_01f_6959:
    add b
    ld [bc], a
    inc b
    ld c, b
    nop
    ld [bc], a
    db $fc
    ld b, a
    nop
    ld [bc], a
    db $f4
    ld b, [hl]
    nop
    ld a, [$4504]
    nop
    ld a, [$44fc]
    nop
    ld a, [$43f4]
    nop
    ldh a, [c]
    inc b
    ld b, d
    nop
    ldh a, [c]
    db $fc
    ld b, c
    nop
    ldh a, [c]
    db $f4
    ld b, b
    nop
    add b
    ld [bc], a
    inc b
    ld d, c
    nop
    ld [bc], a
    db $fc
    ld d, b
    nop
    ld [bc], a
    db $f4
    ld c, a
    nop
    ld a, [$4e04]
    nop
    ld a, [$4dfc]
    nop
    ld a, [$4cf4]
    nop
    ldh a, [c]
    inc b
    ld c, e
    nop
    ldh a, [c]
    db $fc
    ld c, d
    nop
    ldh a, [c]
    db $f4
    ld c, c
    nop
    add b
    ld a, [$53ee]
    nop
    ld [bc], a
    ld b, $5a
    nop
    ld [bc], a
    cp $59
    nop
    ld [bc], a
    or $58
    nop
    ld [bc], a
    xor $57
    nop
    ld a, [$5606]
    nop
    ld a, [$55fe]
    nop
    ld a, [$54f6]
    nop
    ldh a, [c]
    rst $30
    ld d, d
    nop
    add b
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $fc
    ld h, d
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6004]
    nop
    ld a, [$5ffc]
    nop
    ld a, [$5ef4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    inc b
    ld h, a
    nop
    ld [bc], a
    db $fc
    ld h, [hl]
    nop
    ld [bc], a
    db $f4
    ld h, l
    nop
    ld a, [$6404]
    nop
    ld a, [$5ffc]
    nop
    ld a, [$5ef4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    inc b
    ld l, l
    nop
    ld [bc], a
    db $fc
    ld l, h
    nop
    ld [bc], a
    db $f4
    ld l, e
    nop
    ld a, [$6a04]
    nop
    ld a, [$69fc]
    nop
    ld a, [$68f4]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    db $fc
    ld [hl], b
    nop
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6ffc]
    nop
    ld a, [$6ef4]
    nop
    ld a, [$6004]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    ld [bc], a
    db $fc
    ld [hl], e
    nop
    ld a, [$72fc]
    nop
    ld a, [$71f4]
    nop
    ld [bc], a
    inc b
    ld h, e
    nop
    ld [bc], a
    db $f4
    ld h, c
    nop
    ld a, [$6004]
    nop
    ldh a, [c]
    inc b
    ld e, l
    nop
    ldh a, [c]
    db $fc
    ld e, h
    nop
    ldh a, [c]
    db $f4
    ld e, e
    nop
    add b
    inc b
    ld [$007f], sp
    inc b
    nop
    ld a, [hl]
    nop
    inc b
    ld hl, sp+$7d
    nop
    inc b
    ldh a, [$ff7c]
    nop
    db $fc
    ld [$007b], sp
    db $fc
    nop
    ld a, d
    nop
    db $fc
    ld hl, sp+$79
    nop
    db $fc
    ldh a, [$ff78]
    nop
    db $f4
    ld [$0077], sp
    db $f4
    nop
    halt
    nop
    db $f4
    ld hl, sp+$75
    nop
    db $f4
    ldh a, [$ff74]
    nop
    add b
    inc b
    ld [$008b], sp
    inc b
    nop
    adc d
    nop
    inc b
    ld hl, sp-$77
    nop
    inc b
    ldh a, [$ff88]
    nop
    db $fc
    ld [$0087], sp
    db $fc
    nop
    add [hl]
    nop
    db $fc
    ld hl, sp-$7b
    nop
    db $fc
    ldh a, [$ff84]
    nop
    db $f4
    ld [$0083], sp
    db $f4
    nop
    add d
    nop
    db $f4
    ld hl, sp-$7f
    nop
    db $f4
    ldh a, [$ff80]
    nop
    add b
    inc b
    ld [$0097], sp
    inc b
    nop
    sub [hl]
    nop
    inc b
    ld hl, sp-$6b
    nop
    inc b
    ldh a, [$ff94]
    nop
    db $fc
    ld [$0093], sp
    db $fc
    nop
    sub d
    nop
    db $fc
    ld hl, sp-$6f
    nop
    db $fc
    ldh a, [$ff90]
    nop
    db $f4
    ld [$008f], sp
    db $f4
    nop
    adc [hl]
    nop
    db $f4
    ld hl, sp-$73
    nop
    db $f4
    ldh a, [$ff8c]
    nop

Call_01f_6b14:
    add b
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
    ld [$ccd2], a
    ld [$cb68], a
    ld a, [CurrentYear]
    ld [$ccd3], a
    ld a, [CurrentSeason]
    ld [$ccd4], a
    ld a, [CurrentDay]
    ld [$ccd5], a
    ld a, $01
    ld [$ccd6], a
    ld hl, $d400
    ld a, [$b8a3]
    ld [hl+], a
    ld a, [$b8a4]
    ld [hl+], a
    ld a, [$b8a5]
    ld [hl+], a
    ld a, [$b8a6]
    ld [hl+], a
    ld a, [$b8a7]
    ld [hl+], a
    ld a, [$b8a8]
    ld [hl+], a
    ld a, [$b8a9]
    ld [hl+], a
    ld a, [$b8aa]
    ld [hl+], a
    ld a, [$b8ab]
    ld [hl+], a
    ld a, [$b8ac]
    ld [hl+], a
    ld a, [$b8ad]
    ld [hl+], a
    ld a, [$b8ae]
    ld [hl+], a
    ld a, [$b8b1]
    ld [hl+], a
    ld a, [$b8b2]
    ld [hl+], a
    ld a, [$b8b3]
    ld [hl+], a
    ld a, [$b8b4]
    ld [hl+], a
    ld a, [$b8b5]
    ld [hl+], a
    ld a, [$b8b6]
    ld [hl+], a
    ld a, [$b8b7]
    ld [hl+], a
    ld a, [$b8b8]
    ld [hl+], a
    ld a, [$b8b9]
    ld [hl+], a
    ld a, [$b8ba]
    ld [hl+], a
    ld a, [$b8bb]
    ld [hl+], a
    ld a, [$b8bc]
    ld [hl+], a
    ld a, [$b8bd]
    ld [hl+], a
    ld a, [$b8be]
    ld [hl+], a
    ld a, [$b8bf]
    ld [hl+], a
    ld a, $4f
    ld [$9804], a
    ld a, $4b
    ld [$9805], a
    ld a, $5b
    ld [$9806], a
    ld a, $40
    ld [$9807], a
    ld a, $2c
    ld [$9808], a
    ld a, $5f
    ld [$9824], a
    ld a, $2d
    ld [$9825], a
    ld a, $1f
    ld [$9826], a
    ld a, $4e
    ld [$9827], a
    ld a, $3f
    ld [$9844], a
    ld a, $4b
    ld [$9845], a
    ld a, $40
    ld [$9846], a
    ld a, $50
    ld [$9847], a
    ld a, $30
    ld [$9848], a
    ld a, $2c
    ld [$9864], a
    ld a, $1f
    ld [$9865], a
    ld a, $5f
    ld [$9866], a
    ld hl, $9881
    ld de, $714e
    call Call_01f_70f3
    ld hl, $98a1
    ld de, $7157
    call Call_01f_70f3
    ld hl, $98c1
    ld de, $7160
    call Call_01f_70f3
    ld hl, $98e1
    ld de, $7169
    call Call_01f_70f3
    ld hl, $9901
    ld de, $7172
    call Call_01f_70f3
    ld hl, $9921
    ld de, $717b
    call Call_01f_70f3
    ld hl, $9941
    ld de, $7184
    call Call_01f_70f3
    ld hl, $9961
    ld de, $718d
    call Call_01f_70f3
    ld hl, $9981
    ld de, $7196
    call Call_01f_70f3
    ld hl, $99a1
    ld de, $719f
    call Call_01f_70f3
    ld hl, $99c1
    ld de, $71a8
    call Call_01f_70f3
    ld hl, $99e1
    ld de, $71b1
    call Call_01f_70f3
    ld hl, $9a01
    ld de, $71ba
    call Call_01f_70f3
    ld hl, $9a21
    ld de, $71c3
    call Call_01f_70f3
    ld hl, $988b
    ld de, $71cc
    call Call_01f_70f3
    ld hl, $98ab
    ld de, $71d5
    call Call_01f_70f3
    ld hl, $98cb
    ld de, $71de
    call Call_01f_70f3
    ld hl, $98eb
    ld de, $71e7
    call Call_01f_70f3
    ld hl, $990b
    ld de, $71f0
    call Call_01f_70f3
    ld hl, $992b
    ld de, $71f9
    call Call_01f_70f3
    ld hl, $994b
    ld de, $7202
    call Call_01f_70f3
    ld hl, $996b
    ld de, $720b
    call Call_01f_70f3
    ld hl, $998b
    ld de, $7214
    call Call_01f_70f3
    ld hl, $99ab
    ld de, $721d
    call Call_01f_70f3
    ld hl, $99cb
    ld de, $7226
    call Call_01f_70f3
    ld hl, $99eb
    ld de, $722f
    call Call_01f_70f3
    ld hl, $9a0b
    ld de, $7238
    call Call_01f_70f3
    ld hl, $9a2b
    ld de, $7241
    call Call_01f_70f3
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_01f_709b
    ld a, [$ccd3]
    ld hl, $982a
    call Call_01f_7066
    ld a, [$ccd4]
    ld hl, $984a
    call Call_01f_7066
    ld a, [$ccd5]
    ld hl, $986a
    call Call_01f_7066
    ld a, $04
    ld b, $1c

jr_01f_6d54:
    ld [$ccd2], a
    push af
    push bc
    call Call_01f_6ff0
    pop bc
    pop af
    inc a
    dec b
    jr nz, jr_01f_6d54

    xor a
    ld [$ccd2], a
    ret


    ld a, [$ccd2]
    cp $00
    call z, Call_01f_6ea1
    cp $01
    call z, Call_01f_6f27
    cp $02
    call z, Call_01f_6f57
    cp $03
    call z, Call_01f_6f87
    ld a, [$ccd2]
    cp $04
    call nc, Call_01f_6fb7
    ld a, [$c0a8]
    and $07
    cp $07
    jr nz, jr_01f_6d9d

    ldh a, [$ff8a]
    cp $40
    jp z, Jump_01f_6e7f

    ldh a, [$ff8a]
    cp $80
    jp z, Jump_01f_6e90

jr_01f_6d9d:
    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $00
    ld [$c910], a
    xor a
    ld [$c911], a
    ld a, [$ccd3]
    ld [CurrentYear], a
    ld a, [$ccd4]
    ld [CurrentSeason], a
    ld a, [$ccd5]
    ld [CurrentDay], a
    call Call_000_054a
    call Call_000_05e2
    ld hl, $d400
    ld a, [hl+]
    ld [$b8a3], a
    ld a, [hl+]
    ld [$b8a4], a
    ld a, [hl+]
    ld [$b8a5], a
    ld a, [hl+]
    ld [$b8a6], a
    ld a, [hl+]
    ld [$b8a7], a
    ld a, [hl+]
    ld [$b8a8], a
    ld a, [hl+]
    ld [$b8a9], a
    ld a, [hl+]
    ld [$b8aa], a
    ld a, [hl+]
    ld [$b8ab], a
    ld a, [hl+]
    ld [$b8ac], a
    ld a, [hl+]
    ld [$b8ad], a
    ld a, [hl+]
    ld [$b8ae], a
    ld a, [hl+]
    ld [$b8af], a
    ld a, [hl+]
    ld [$b8b1], a
    ld a, [hl+]
    ld [$b8b2], a
    ld a, [hl+]
    ld [$b8b3], a
    ld a, [hl+]
    ld [$b8b4], a
    ld a, [hl+]
    ld [$b8b5], a
    ld a, [hl+]
    ld [$b8b6], a
    ld a, [hl+]
    ld [$b8b7], a
    ld a, [hl+]
    ld [$b8b8], a
    ld a, [hl+]
    ld [$b8b9], a
    ld a, [hl+]
    ld [$b8ba], a
    ld a, [hl+]
    ld [$b8bb], a
    ld a, [hl+]
    ld [$b8bc], a
    ld a, [hl+]
    ld [$b8bd], a
    ld a, [hl+]
    ld [$b8be], a
    ld a, [hl+]
    ld [$b8bf], a
    ld a, $ff
    ld [$b8f8], a
    ld [$b8f9], a
    ld a, [$b8b4]
    ld [$b8da], a
    ld a, [$b8b5]
    ld [$b8d2], a
    ld a, [$b8b6]
    ld [$b8d3], a
    ld a, [$b8b7]
    ld [$b8d4], a
    ld a, [$b8b8]
    ld [$b8d5], a
    ld a, [$b8b9]
    ld [$b8d6], a
    ld a, [$b8ba]
    ld [$b8d7], a
    ld a, [$b8bb]
    ld [$b8d8], a
    ld a, [$b8bc]
    ld [$b8d9], a
    ret


Jump_01f_6e7f:
    ld a, [$ccd2]
    cp $00
    ret z

    ld [$ccd6], a
    dec a
    ld [$ccd2], a
    call Call_01f_709b
    ret


Jump_01f_6e90:
    ld a, [$ccd2]
    cp $1f
    ret z

    ld [$ccd6], a
    inc a
    ld [$ccd2], a
    call Call_01f_709b
    ret


Call_01f_6ea1:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_6ead

    cp $10
    jr z, jr_01f_6ec1

    jr jr_01f_6ed3

jr_01f_6ead:
    ld a, [$cb68]
    cp $00
    jr z, jr_01f_6eba

    dec a
    ld [$cb68], a
    jr jr_01f_6ed3

jr_01f_6eba:
    ld a, $26
    ld [$cb68], a
    jr jr_01f_6ed3

jr_01f_6ec1:
    ld a, [$cb68]
    cp $26
    jr z, jr_01f_6ece

    inc a
    ld [$cb68], a
    jr jr_01f_6ed3

jr_01f_6ece:
    ld a, $00
    ld [$cb68], a

jr_01f_6ed3:
    ldh a, [$ff8b]
    and $01
    jr z, jr_01f_6f12

    call Call_000_2331
    ld hl, $70fe
    ld a, [$cb68]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $01
    jr nz, jr_01f_6ef6

    ld a, b
    call Call_000_23d8
    jr jr_01f_6f12

jr_01f_6ef6:
    cp $02
    jr nz, jr_01f_6f00

    ld a, b
    call Call_000_23d5
    jr jr_01f_6f12

jr_01f_6f00:
    cp $03
    jr nz, jr_01f_6f0a

    ld a, b
    call Call_000_23d2
    jr jr_01f_6f12

jr_01f_6f0a:
    cp $04
    jr nz, jr_01f_6f12

    ld a, b
    call Call_000_23cf

jr_01f_6f12:
    ld hl, $70fe
    ld a, [$cb68]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld hl, $980a
    call Call_01f_7035
    ret


Call_01f_6f27:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_6f33

    cp $10
    jr z, jr_01f_6f40

    jr jr_01f_6f4b

jr_01f_6f33:
    ld a, [$ccd3]
    cp $00
    jr z, jr_01f_6f54

    dec a
    ld [$ccd3], a
    jr jr_01f_6f4b

jr_01f_6f40:
    ld a, [$ccd3]
    cp $63
    jr z, jr_01f_6f54

    inc a
    ld [$ccd3], a

jr_01f_6f4b:
    ld a, [$ccd3]
    ld hl, $982a
    call Call_01f_7066

jr_01f_6f54:
    ld a, $63
    ret


Call_01f_6f57:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_6f63

    cp $10
    jr z, jr_01f_6f70

    jr jr_01f_6f7b

jr_01f_6f63:
    ld a, [$ccd4]
    cp $00
    jr z, jr_01f_6f84

    dec a
    ld [$ccd4], a
    jr jr_01f_6f7b

jr_01f_6f70:
    ld a, [$ccd4]
    cp $03
    jr z, jr_01f_6f84

    inc a
    ld [$ccd4], a

jr_01f_6f7b:
    ld a, [$ccd4]
    ld hl, $984a
    call Call_01f_7066

jr_01f_6f84:
    ld a, $63
    ret


Call_01f_6f87:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_6f93

    cp $10
    jr z, jr_01f_6fa0

    jr jr_01f_6fab

jr_01f_6f93:
    ld a, [$ccd5]
    cp $00
    jr z, jr_01f_6fb4

    dec a
    ld [$ccd5], a
    jr jr_01f_6fab

jr_01f_6fa0:
    ld a, [$ccd5]
    cp $1d
    jr z, jr_01f_6fb4

    inc a
    ld [$ccd5], a

jr_01f_6fab:
    ld a, [$ccd5]
    ld hl, $986a
    call Call_01f_7066

jr_01f_6fb4:
    ld a, $63
    ret


Call_01f_6fb7:
    ldh a, [$ff8b]
    cp $20
    jr z, jr_01f_6fc2

    cp $10
    jr z, jr_01f_6fc2

    ret


jr_01f_6fc2:
    ld a, [$ccd2]
    sub $04
    ldh [$ffa4], a
    ld hl, $d400
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ld a, [hl]
    push af
    ldh a, [$ffa4]
    add a
    ld hl, $724a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, a
    pop af
    call Call_01f_7066
    ld a, $63
    ret


Call_01f_6ff0:
    ld a, [$ccd2]
    sub $04
    ldh [$ffa4], a
    ld hl, $d400
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    and $01
    ld [hl], a
    ld a, [hl]
    push af
    ldh a, [$ffa4]
    add a
    ld hl, $724a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld h, [hl]
    ld l, a
    pop af
    call Call_01f_7066
    ld a, $63
    ret


    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01f_7055

    inc l
    dec l
    ld l, $2f
    jr nc, @+$3d

    inc a
    dec a
    ld a, $3f
    ld b, b

Call_01f_7035:
    push hl
    ld b, a
    srl a
    srl a
    srl a
    srl a
    ld hl, $701d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ffae], a
    ld a, b
    and $0f
    ld hl, $701d
    add l
    ld l, a
    ld a, $00

jr_01f_7055:
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ffaf], a
    ld a, $ff
    ldh [$ffb0], a
    pop hl
    ld de, $ffae
    call Call_000_07ec
    ret


Call_01f_7066:
    ld b, a
    ld a, [$ccd2]
    cp $04
    jr nc, jr_01f_706f

    inc b

jr_01f_706f:
    ld a, b
    push hl
    ld h, $00
    ld l, a
    call Call_000_316d
    pop hl
    ld a, [$ccd0]
    cp $af
    jr nz, jr_01f_7084

    ld a, $ff
    ld [$ccd0], a

jr_01f_7084:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7084

    ld a, [$ccd0]
    inc a
    ld [hl+], a

jr_01f_708f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_708f

    ld a, [$ccd1]
    inc a
    ld [hl], a
    ret


Call_01f_709b:
    ld a, [$ccd2]
    cp $12
    jr nc, jr_01f_70b0

    ld a, [$ccd2]
    ld c, $20
    call Call_000_071e
    ld bc, $9800
    add hl, bc
    jr jr_01f_70be

jr_01f_70b0:
    ld a, [$ccd2]
    sub $12
    ld c, $20
    call Call_000_071e
    ld bc, $988a
    add hl, bc

jr_01f_70be:
    ldh a, [rSTAT]
    and $02

Jump_01f_70c2:
    jr nz, jr_01f_70be

    ld a, $7e
    ld [hl], a
    ld a, [$ccd6]
    cp $12
    jr nc, jr_01f_70dc

    ld a, [$ccd6]
    ld c, $20
    call Call_000_071e
    ld bc, $9800
    add hl, bc
    jr jr_01f_70ea

jr_01f_70dc:
    ld a, [$ccd6]
    sub $12
    ld c, $20
    call Call_000_071e
    ld bc, $988a
    add hl, bc

jr_01f_70ea:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_70ea

    xor a
    ld [hl], a
    ret


Call_01f_70f3:
    ld b, $08

jr_01f_70f5:
    ld a, [de]
    inc de
    inc a
    ld [hl+], a
    dec b
    or a
    jr nz, jr_01f_70f5

    ret


    nop
    inc b
    inc b
    inc b
    ld [$0b03], sp
    inc bc
    rrca
    inc b
    inc de
    inc b
    rla
    inc b
    dec de
    inc bc
    ld e, $04
    ld [hl+], a
    inc b
    ld h, $04
    ld a, [hl+]
    inc b
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0133
    inc [hl]
    ld bc, $0135
    ld [hl], $01
    scf
    ld bc, $0238
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $013d
    ld a, $01
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0242
    ld b, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld c, b
    ld bc, $044d
    ld d, c
    ld [bc], a
    ld d, e
    ld bc, $0454
    ld d, h
    inc b
    dec d
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    sbc c
    ld h, l
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld c, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    ld a, d
    db $d3
    ld a, d
    dec d
    ld h, l
    rst $38
    rst $38
    rst $38
    daa
    ld a, d
    db $d3
    ld a, d
    rla
    ld a, b
    rst $38
    rst $38
    rst $38
    daa
    ld a, d
    db $d3
    ld a, d
    ld d, l
    sbc c
    ld h, l
    ld a, d
    rst $38
    ld h, $7a
    db $d3
    ld a, d
    add hl, bc
    ld c, c
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld hl, $1744
    daa
    add [hl]
    rst $38
    rst $38
    rst $38
    ld sp, $2131
    ret z

    add c
    ld de, $ffff
    rst $38
    res 0, l
    ld h, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or [hl]
    sub a
    rlca
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    rst $38
    rst $38
    ld [hl], d
    ret z

    ld [bc], a
    ld [hl], b
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld hl, $3044
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $ff87
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, jr_01f_7228

    rst $38
    rst $38
    dec d
    bit 0, h
    jr nc, jr_01f_722f

    rst $38
    rst $38
    rst $38
    rst $38
    or [hl]
    sub l
    and b
    ld b, $69
    ld b, h
    jr nc, jr_01f_723b

    rst $38
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, jr_01f_7242

    rst $38
    rst $38
    rst $38
    add hl, sp
    rlca
    ld l, c
    adc c
    add hl, de
    ld h, $30
    ld b, e
    rst $38
    ld b, l
    daa
    ld b, h
    jr nc, @+$45

    rst $38
    rst $38
    rst $38
    rst $38
    add l
    sbc b
    dec d
    jr z, jr_01f_721f

    ld b, h
    jr nc, jr_01f_725f

    rst $38
    ld b, [hl]
    sbc c

jr_01f_721f:
    or [hl]
    sbc c
    ld b, h
    jr nc, jr_01f_7267

    rst $38
    rst $38
    res 1, c

jr_01f_7228:
    sbc b
    add hl, de
    add [hl]
    ld a, d
    jr nc, jr_01f_7271

    rst $38

jr_01f_722f:
    ld [hl-], a
    add d
    ld d, b
    ld hl, $ffff
    rst $38
    rst $38
    rst $38
    nop
    ld h, e
    ld d, d

jr_01f_723b:
    add c
    ld b, h
    db $10
    jr nz, @+$01

    rst $38
    ld [hl-], a

jr_01f_7242:
    add c
    or b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    sbc b
    xor b
    sbc b
    ret z

    sbc b
    add sp, -$68
    ld [$2899], sp
    sbc c
    ld c, b
    sbc c
    ld l, b
    sbc c
    adc b
    sbc c
    xor b
    sbc c
    ret z

jr_01f_725f:
    sbc c
    add sp, -$67
    ld [$289a], sp
    sbc d
    sub d

jr_01f_7267:
    sbc b
    or d
    sbc b
    jp nc, $f298

    sbc b
    ld [de], a
    sbc c
    ld [hl-], a

jr_01f_7271:
    sbc c
    ld d, d
    sbc c
    ld [hl], d
    sbc c
    sub d
    sbc c
    or d
    sbc c
    jp nc, $f299

    sbc c
    ld [de], a
    sbc d
    ld [hl-], a
    sbc d

jr_01f_7282:
    ldh a, [rLY]
    cp $67
    jr z, jr_01f_728c

    jr nc, jr_01f_729f

    jr jr_01f_7282

jr_01f_728c:
    ldh a, [rLCDC]
    bit 5, a
    jr z, jr_01f_729e

jr_01f_7292:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_7292

    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a

jr_01f_729e:
    ret


jr_01f_729f:
    ret


    ldh a, [rLY]
    cp $8f
    jr z, jr_01f_72a9

    ret nc

    jr jr_01f_729f

jr_01f_72a9:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_01f_72a9

    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, $66
    ldh [rLYC], a
    ret


    nop
    db $10
    call nz, $012f
    ld c, e
    nop
    rst $38
    inc e
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, h
    ld b, h
    ccf
    nop
    nop
    ld de, $4411
    ld b, h
    ld b, c
    nop
    dec c
    ld [bc], a
    rst $28
    xor d
    xor d
    ld d, l
    ld d, l
    ld b, l
    nop
    cp e
    cp e
    xor $bd
    xor $0d
    inc b
    cp e
    cp e
    rst $38
    rst $38
    ld l, l
    ld bc, $3bbb
    rst $38
    xor $40
    nop

jr_01f_72ef:
    ld d, l
    rst $38
    xor d
    ld b, b
    nop
    ld c, $07
    ld a, [$0022]
    inc bc
    add b
    nop
    ld a, $f1
    ld hl, sp+$07
    jr nc, jr_01f_72ef

    rst $08
    rlca
    add hl, bc
    ldh a, [$fff0]
    pop hl
    inc c
    rrca
    ld hl, sp+$1f
    rst $38
    ldh a, [$ff74]
    set 0, b
    ccf
    ld [hl], b
    rst $28
    nop

jr_01f_7315:
    rst $38
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp-$08
    ld hl, sp-$10

jr_01f_731e:
    rst $38
    ldh a, [$ffc0]
    ret nz

    nop
    nop
    ldh [$ffe0], a
    rlca
    db $fd
    rlca
    pop hl
    inc c
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld a, [hl]
    ld h, c
    nop
    jr nz, jr_01f_7315

    nop
    rst $38
    ldh a, [$ff7f]
    ld b, d
    inc bc
    ei
    rrca
    ld a, a
    add b
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    adc h
    ld [hl], a
    rra
    ldh [$ff82], a
    ld a, l

jr_01f_734e:
    ld [$f7ff], sp
    ld bc, $03fe
    db $fc
    jr c, jr_01f_734e

    add c
    rst $00
    ld a, [hl]
    rlca
    rlca
    ld b, c
    ld [de], a
    jp Jump_000_2105


    ld b, $27
    ld hl, sp-$01
    pop hl
    ld e, $78
    add a
    ldh a, [rIF]

jr_01f_736b:
    ret nz

    ccf
    rst $38
    add e
    ld a, h
    ld b, $f9
    adc b
    ld [hl], a
    ldh [$ffe0], a
    cp $4b
    inc d
    ld hl, sp+$07
    add c
    ld a, [hl]
    rra
    ldh [rNR23], a
    ccf
    rst $20
    jr jr_01f_736b

    db $10
    rst $28
    db $10
    ld b, b
    ld [$162d], sp
    ld a, e
    ld b, b
    cp a
    and c
    dec b
    rlca
    ld hl, sp+$0c
    di
    add c
    ld [$82fb], sp
    ld a, l
    dec hl
    jr jr_01f_731e

    add d
    dec b
    ld a, [$df83]
    ld a, h
    add d
    ld a, l
    ld bc, $83fe
    ld c, $04
    ei
    cp $2b
    ld a, [de]
    inc b
    inc b
    and b
    ld e, a
    ld b, b
    cp a
    add b
    rst $38

jr_01f_73b5:
    ld a, a
    ld b, b

jr_01f_73b7:
    cp a
    nop
    rst $38
    adc b
    ld [hl], a
    jr jr_01f_73b5

    rst $20
    inc d
    db $e3
    daa
    inc e
    ld [$1808], sp
    jr jr_01f_73b7

    inc e
    inc e
    inc bc
    db $fc
    inc hl
    ld [de], a
    nop
    rst $38
    ld de, $eedf
    cp a
    ld b, c
    rst $28
    inc b
    daa
    ld e, $11
    ld de, $beff
    cp a
    ei
    rst $38
    inc d
    db $eb
    ld [$fff7], sp
    db $10
    rst $28
    ld [bc], a
    db $fd
    add l
    ld a, b
    ld l, e
    ld [de], a
    rst $20
    ld a, d
    ld [$a05d], sp
    dec de
    ld b, c
    jr nz, jr_01f_73f8

    ld [bc], a
    add a

jr_01f_73f8:
    rst $08
    add a
    db $ed
    rst $28
    rst $30
    and b
    rla
    inc bc
    ld d, $05
    ld a, [$1dff]

jr_01f_7405:
    ldh [c], a
    xor [hl]
    ld c, b
    rst $30
    nop
    db $dd
    add b
    ld a, [hl]
    inc hl
    ld [hl+], a
    dec b
    dec b
    dec e
    dec e
    or a
    cp a
    nop
    ld [de], a
    rst $38
    rst $38
    ld b, l
    jr c, jr_01f_7405

    ld d, c
    dec a
    nop
    xor d
    cp a
    jr nz, jr_01f_747a

    inc b
    cp d
    nop
    ld [hl], l
    ret nc

    jr @-$37

    rst $38
    rst $00
    xor [hl]
    rst $28
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    cp $94
    ld hl, $639c
    rst $28
    ld [$00d4], sp
    rst $38
    rst $18
    ld b, d
    ld d, [hl]
    nop
    rst $38
    sub b
    pop de
    ld a, [de]
    sbc h
    sbc h
    push de
    rst $30
    jr nc, jr_01f_746e

    cp l
    ld [hl], b
    inc hl
    ld l, a
    or d
    inc hl
    db $ed
    ld [$aa5f], sp
    nop
    sub a
    nop
    halt
    ld d, l
    ld a, [bc]
    nop
    pop hl
    ld bc, $49fe
    dec h
    ld e, d
    ld d, b
    and d
    jr nz, jr_01f_74d5

    ld a, [bc]
    add $a8
    ld [hl], b
    ld e, $f0
    add hl, de
    ret nc

jr_01f_746e:
    ld e, $af
    ret nz

    dec b
    push af
    ld e, b
    daa
    rst $10
    rst $38
    ld [bc], a
    cp e
    add b

jr_01f_747a:
    xor l
    inc b
    rst $30
    nop
    db $fd
    ldh [c], a
    ld [hl], h
    ld c, $fd
    ld b, b
    add hl, bc
    push bc
    rlca
    pop bc
    add hl, hl
    ld [hl], $12
    db $ec
    cp a
    nop
    rst $10
    nop
    ld [$f700], a
    sub d
    ld [hl+], a
    cp l
    db $db
    nop
    db $ed
    rra
    inc h
    nop
    db $dd
    nop
    ld [bc], a
    ld d, l
    nop
    cp c
    xor d
    rrca
    dec l
    ret nc

    dec l
    ld [hl], a
    nop
    xor e
    jp nz, Jump_01f_5501

    inc l
    rrca
    cpl
    inc bc
    ld [$ee00], sp
    jp nz, $4003

    rrca
    ld [bc], a
    or d
    ld sp, $f6e7
    nop
    cp e
    add $05
    rrca
    ld [bc], a
    rst $38
    rst $38
    push de
    ldh [$ffc8], a
    dec b
    rrca
    ld [bc], a
    ld bc, $0f06
    ld [bc], a
    ld c, c
    scf
    dec c
    ldh a, [c]
    add hl, de
    rst $38

jr_01f_74d5:
    and $23
    call c, $974b
    sub [hl]
    dec hl
    dec [hl]
    rra
    ld c, e
    adc a
    ld a, a
    xor [hl]
    inc de
    inc hl
    inc a
    ld d, b
    dec l
    ld [hl], h
    rra
    rst $38
    call nz, $873f
    ld a, b
    dec c
    ldh a, [c]
    ld a, [bc]
    push af
    rst $38
    sub l
    ld [$fd42], a
    push bc
    ld a, [$f54a]
    adc h
    inc bc
    inc l
    add b
    cpl
    nop
    ret nz

    ld [hl+], a
    nop
    rra
    nop
    ld c, e
    nop
    inc bc
    ld a, a
    rst $38
    sub a
    ld c, c
    inc bc
    rst $38
    xor [hl]
    inc de
    add l
    nop
    db $fc
    add l
    ld a, [de]
    dec b
    dec de
    call nc, Call_01f_49eb
    and $c1
    rst $38
    rst $38
    ld c, d
    push af
    push bc
    ld [$f74a], a
    push bc
    ld [$48e3], a
    rst $30
    ld h, e
    ld a, [de]
    ld h, a
    ld [bc], a
    ld bc, $c03a
    rst $38
    ld b, b
    ld c, h
    jr nz, jr_01f_7536

jr_01f_7536:
    ld h, c
    nop
    ld e, h
    and e
    add l
    rlca
    db $e3
    rlca
    db $fc
    ld b, $06
    rst $10
    ld bc, $96ff
    add b
    ld b, $ec
    ld c, $06
    call nz, $ffeb
    ld b, c
    cp $c2
    db $ed
    pop bc
    cp $d5
    ld [$cbbf], a
    cp $d3
    xor $e7
    sbc $0c
    ld [$ff20], sp
    xor [hl]
    ld d, c
    ld d, a
    adc b
    adc e
    inc b
    inc b
    inc bc
    rst $38
    inc bc
    nop
    ld [hl], c
    nop
    ld [hl], c
    jr nc, @+$73

jr_01f_7570:
    jr nc, jr_01f_7570

    dec c

jr_01f_7573:
    ld a, [bc]
    scf
    ldh a, [$ff1f]
    db $fc
    xor a
    ld a, [hl]
    rra
    rst $38
    rst $38
    rst $08
    ccf
    add hl, sp
    add $3d
    jp nc, $57f1

    ld e, $ef
    rra
    ret nc

    ld b, d
    ld bc, $4372
    ld bc, $0021
    ld a, a
    rlca
    rst $38
    sbc c
    ld h, a
    rst $00
    ccf
    ld e, a
    ld h, $1a
    ldh a, [c]
    db $10
    ld b, l
    add b
    sub b
    ld b, d
    ld [hl], a
    ld c, l
    ret nz

    push af
    add b
    ei
    cp c
    nop
    ld h, c
    ld a, [de]
    inc b
    jr jr_01f_75eb

    rst $38
    ld a, [hl]
    ld c, c
    ld c, a
    ld [hl], c
    adc a
    jr nc, jr_01f_7573

jr_01f_75b5:
    ld [hl], c
    rst $38
    jr z, jr_01f_75d3

    ld [de], a
    ld c, c
    ld e, b
    ld d, c
    rrca
    xor a
    ldh a, [rIE]
    nop
    ld a, [$25e0]
    ld [bc], a
    dec b
    inc e
    rrca

jr_01f_75c9:
    ld hl, sp+$0f
    ld d, e
    rrca
    ld d, l
    ld [$1502], sp
    nop
    ld a, [hl+]

jr_01f_75d3:
    ld [$fd10], sp
    nop
    ld hl, $1d00
    nop
    jr nz, jr_01f_75ec

    jr nz, jr_01f_75c9

    ld [$4c60], a
    ldh [rNR50], a
    nop
    ret nz

    ld hl, $784d
    ld b, b
    sub b

jr_01f_75eb:
    rst $38

jr_01f_75ec:
    ld b, e
    jr nz, jr_01f_75f3

    inc hl
    db $10
    daa
    nop

jr_01f_75f3:
    rst $30
    rst $18
    dec b
    ld [hl-], a
    sub b
    ld [hl+], a
    add b
    dec e
    ld a, [de]
    ret nz

    ld b, b
    rst $38
    jr nz, jr_01f_7601

jr_01f_7601:
    db $10
    sub b
    ld [$c800], sp
    adc b
    rst $38
    inc b
    inc b
    ld a, [bc]
    db $10
    ld a, [bc]
    ccf
    rst $38
    rra
    ldh a, [c]
    jr nc, jr_01f_761b

    rlca
    jr nz, jr_01f_7616

jr_01f_7616:
    ld [hl], c
    db $10
    ld bc, $80ff

jr_01f_761b:
    ld a, d
    rst $38
    ld [$0825], sp
    db $10
    add b
    db $10
    jr nz, jr_01f_75b5

    ld a, a
    nop
    cp [hl]
    add b
    jr nc, @+$29

    db $10
    dec b
    dec e
    ld e, $f7
    and b
    nop
    ld d, b
    jr nz, jr_01f_7639

    jr nz, @+$03

    jr nz, jr_01f_7640

jr_01f_7639:
    cp a
    ldh [rIF], a
    inc de
    rst $18
    rrca
    ld e, a

jr_01f_7640:
    db $10
    inc c

jr_01f_7642:
    rra
    cp $40
    inc b
    ld e, $fe
    jr jr_01f_7642

    inc bc
    di
    rrca
    dec a
    rst $28
    inc hl
    inc hl
    ld a, $01
    rst $38
    jr nc, jr_01f_768a

    add hl, bc
    ld d, e
    inc de
    rst $28
    ret nz

    jr nc, jr_01f_768d

    ldh [rNR10], a
    nop
    ret nz

    ret nz

    rrca
    rst $38
    stop
    rrca
    rlca
    nop
    add hl, de
    ldh [rTAC], a
    rst $38
    ld hl, sp-$7f
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    ldh [$fffb], a
    rst $38
    ldh a, [$ff30]
    ld h, e
    rra
    rra
    rlca
    rlca
    ld bc, $01fd
    pop hl
    ld h, $a1
    ld b, d
    ld c, [hl]
    sub c
    add c
    ld a, [hl]
    rst $30

jr_01f_768a:
    rst $38
    nop
    ccf

jr_01f_768d:
    nop
    add hl, hl
    ldh a, [rP1]
    ld a, b
    add b
    ldh a, [c]
    ld bc, $815d
    ld d, [hl]
    ld h, l
    add b
    ld e, b
    dec e
    sub l
    ld a, [bc]
    ld c, $d3
    ldh a, [$fffc]
    ret nz

    ld bc, $1215
    dec b
    ld a, [hl-]
    inc d
    rla
    ld [$c8ff], sp
    daa
    rlca
    ld hl, sp-$03
    nop
    pop af
    nop
    cp a
    inc bc
    ld bc, $4143
    sub a
    inc bc
    ld bc, $0761
    ei
    rst $38
    cp $10
    nop
    db $fd
    db $fd
    cp l
    db $fd
    ei
    ld e, a
    ei
    rst $38
    rra
    ld a, a
    or a
    or b
    ld b, [hl]
    rst $28
    jr nc, @+$4b

    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rra
    rst $18
    scf
    cp a
    or a
    ld l, a
    ld l, a
    rst $28
    rst $28
    rst $18
    stop
    sbc a
    db $fc
    stop
    ld d, d
    inc d
    add b
    rst $38
    add b
    ld hl, sp-$79
    ret nz

    cp a
    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    ret nz

    stop
    add b
    ld l, [hl]
    stop
    add a
    add b
    ccf
    ld h, b
    inc [hl]
    ld a, a
    ld bc, $0b20
    db $fd
    rra
    ld hl, $0400
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, c
    cp $42
    dec bc
    ld h, c
    ld [hl-], a
    db $fc
    inc b
    cp $02
    jr nz, jr_01f_771d

jr_01f_771d:
    rst $18
    cp $3c
    ret nz

    ld a, $c0
    ld [de], a
    ld [bc], a
    ldh [rIF], a
    ld d, l
    ldh a, [rNR42]
    nop
    ccf
    stop
    rra
    ld [de], a
    nop
    rrca
    ld [de], a
    nop
    ld e, a
    inc d
    db $10
    and l
    add h
    dec bc
    and b
    ld c, $80
    inc h
    scf
    rst $18
    rst $28
    rst $38
    ld a, e
    rst $38
    cp $58
    ld [hl], e
    rst $08
    adc e
    rst $38
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld e, a
    ld d, [hl]
    cp e
    xor a
    and [hl]
    ld b, b
    nop
    and h
    ld [hl], e
    ei
    ld de, $f700
    rst $38
    rst $30
    and [hl]
    or $56
    or $a6
    or $54
    db $fd
    db $f4
    ld b, b
    dec bc
    inc e
    cp [hl]
    ld e, c
    cp [hl]
    ld d, c
    ld a, $ff
    pop bc
    ld a, $c1
    inc [hl]
    jp z, $e618

    sbc a
    rst $38
    sbc a
    inc e
    inc e
    jr @+$1a

    db $10
    db $10
    ld bc, $00ff
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    jr @-$60

    rst $38
    ld h, c
    ldh [$ff1f], a
    add b
    ld a, a
    ld bc, $3afe
    rst $38
    call nz, Call_000_04c0
    inc b
    nop
    ld l, b
    db $10
    ld a, [hl]
    rst $38
    ld e, $e0
    ldh [rSVBK], a
    nop
    adc c
    ld bc, $793f
    ld a, [hl-]
    ldh a, [$ff6e]
    inc b
    jr c, jr_01f_77ad

jr_01f_77ad:
    rst $38
    ei
    inc b
    or b
    ld h, d
    rrca
    nop
    ld bc, $0200
    ld b, b
    rla
    ld h, b
    nop
    db $10
    ld bc, $5705
    ei
    rlca
    ld hl, sp+$21
    nop
    add a
    ld a, b
    ld l, a
    db $10
    rlca
    rst $28
    ld [$816a], sp
    ld de, $7160
    rst $00
    rlca
    daa
    rst $20
    rlca
    sub a
    add a
    ldh a, [$ff59]
    ld d, c
    ld [hl], l
    nop
    push de
    dec d
    rst $38
    ld [$e10a], a
    dec e
    ldh [$ff1f], a
    ld hl, sp+$1f

jr_01f_77e7:
    ld a, a
    cp $0f
    rst $38
    rrca
    ccf
    rst $08
    ld [$57e0], a
    db $eb
    cp $e3
    ld [hl-], a
    jr z, jr_01f_77e7

    or b
    inc e
    jr nc, jr_01f_7859

    ld d, l
    rst $38
    xor [hl]
    and l
    ld e, l
    ld d, [hl]
    xor d
    and l
    ld d, h
    ld e, e
    rst $38
    cp b
    and a
    ld l, b
    ld d, a
    call z, $a4f3
    db $f4
    rst $38
    ld d, h
    db $f4
    and l
    push af
    ld d, e
    ldh a, [c]
    and a
    db $f4
    rst $38
    ld c, a
    add sp, -$71
    ret z

    ld c, a
    call z, $9862
    ld a, a
    adc b
    ld [hl], b
    ld bc, $10f0
    pop hl
    nop
    jr nz, jr_01f_782a

jr_01f_782a:
    ccf
    ld hl, $01c0
    ret nz

    ld a, a
    ld h, b
    nop

jr_01f_7832:
    ld [hl], $48
    ld b, h
    rst $38
    add h

jr_01f_7837:
    ld a, b
    ld b, b
    cp h

jr_01f_783a:
    nop
    db $fc
    sub b
    ld l, h
    rst $08
    jr @-$1a

    jr jr_01f_7837

    ld hl, $1000
    ld a, l
    jr nc, @+$01

    cp c
    ld h, b
    ldh a, [c]
    ld b, d
    pop af
    dec l
    ldh [rP1], a
    inc bc
    sub b
    dec e
    ld [bc], a
    jp z, RST_20

    inc bc

jr_01f_7859:
    ld [hl+], a
    nop
    ld [bc], a
    ld a, [bc]
    ld c, b
    ldh [rP1], a
    jr nz, jr_01f_7832

    rst $38
    ld [$10f0], sp
    add sp, -$80
    ld a, b
    add b
    ld a, b
    cp a
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    add b
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld h, b
    di
    rst $38
    jr nz, jr_01f_7859

    jr z, jr_01f_789f

    nop
    rra
    rst $28
    adc a
    ld a, a
    rst $38
    ld c, a
    ccf
    ld l, d
    ld e, $45
    ccf
    ld b, [hl]
    ccf
    cp a
    di
    rrca
    ret


    inc bc
    rst $38
    db $10
    ld h, d
    ld h, d
    inc bc
    db $fd
    cp $43
    ld b, b
    inc b
    rst $18
    and b
    cp b
    ld b, b
    ld a, e
    xor a
    add b

jr_01f_789f:
    ldh a, [$ff03]
    db $f4
    jr nz, jr_01f_78a4

jr_01f_78a4:
    ldh a, [c]
    jr nz, jr_01f_78cf

    sbc a
    rst $18
    sbc b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld [hl], $36
    ldh [rP1], a
    rst $38
    ret nz

    add b
    ld b, b
    ld h, b
    nop
    jr nz, jr_01f_783a

    jr nz, @+$81

    add b
    db $10
    add b
    sub b
    ld b, b
    sub c
    ld h, b
    dec c
    ld d, b
    rst $28
    jr @-$1a

    db $10
    db $ec
    ret nc

    jr nz, jr_01f_7945

    sbc b
    ld h, b

jr_01f_78cf:
    push bc
    nop
    or b
    ld [hl-], a
    ld d, e
    ld d, c
    add [hl]
    ld [hl], c
    add hl, sp
    add [hl]
    ld [bc], a
    ld bc, $fe02
    sub b
    ld a, [de]
    ld hl, $6011
    db $10
    jr nz, jr_01f_78e5

jr_01f_78e5:
    nop
    ld c, a
    rra
    nop
    ldh [rTMA], a
    ld h, e
    ld c, e
    ld b, $02
    ld b, $50
    cpl
    rst $38
    ldh [rP1], a
    ldh [$ff91], a
    ld h, b
    ld bc, $5100
    adc a
    nop
    dec hl
    nop
    sub l
    pop hl
    rrca
    rst $20
    ld bc, $8dd0
    and h
    rst $38
    ld bc, $6296
    sub l
    ld h, c
    sub [hl]
    ld h, d
    ld h, l
    rst $38
    add c
    ld h, $82
    adc l
    dec b
    ld a, [de]
    ld a, [bc]
    rst $38
    push af
    ld [bc], a
    ret nz

    dec bc
    inc bc
    ld b, e
    nop
    ld a, [$f507]
    rrca
    rst $38
    ret c

    ld de, $28ac
    ld a, a
    ld a, b
    ld a, [$ffea]
    db $eb
    ld b, b
    or a
    and d
    ld e, l
    ld e, l
    xor d
    xor d
    rst $38
    rst $28
    pop af
    rst $10
    ld hl, sp-$79
    db $fc
    dec d
    rst $38
    rst $18
    cp a
    rst $38
    ld e, l
    rst $38
    and d

jr_01f_7945:
    ld b, b
    sub e
    ld c, d
    nop
    rst $38
    ld [$08e0], sp
    nop
    ld hl, sp+$00
    db $f4
    ld [hl], b
    db $d3
    db $eb
    add sp, -$5f
    sub a
    db $10
    sub e
    ldh [rHDMA1], a
    sub e
    adc a
    ld hl, sp-$05
    rla
    db $fc
    ld bc, $8495
    ld bc, $0700
    nop
    rst $28
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ldh a, [$ff38]
    ldh [rP1], a
    sbc [hl]
    ld sp, hl
    ldh [$ffc3], a
    ld d, c
    db $e4
    ld de, $7f00
    add b
    nop
    ei
    rst $38
    nop
    add a
    ld a, b
    inc bc
    db $fc
    ld bc, $0279
    ld a, a
    add d
    ld c, h
    ld c, b
    jr nc, jr_01f_7993

    nop
    rst $38
    ret nz

    ld [hl+], a
    db $f4
    ldh a, [rP1]

jr_01f_7993:
    ldh [$ff90], a
    rst $08
    jp nz, $0156

    add b
    ld bc, $fd80
    add c
    add b
    dec h
    inc c
    inc bc
    inc [hl]
    ld bc, $39c2
    ei
    ld [bc], a
    push de
    rlca
    ld h, d
    pop af
    ld c, $f9
    ld b, $d5
    rst $38
    ld a, [hl+]
    dec [hl]
    dec d
    ret nz

    ccf
    ld bc, $02e5
    rst $38
    adc [hl]
    dec b
    ld [hl], l
    ld a, [hl+]
    xor d
    dec d
    push de
    ld a, [bc]
    rst $38
    ld a, [$1fea]
    rst $38
    nop
    and $1b
    adc l
    rst $38
    ld [hl], e
    ld a, d
    adc a
    push de
    ld a, a
    ld [$f53f], a
    pop bc
    rrca
    rst $20
    and b
    and c
    and c
    nop
    and d
    add h
    sbc [hl]
    add e
    nop
    nop
    rst $38
    rst $38
    ld d, l
    ld b, l
    ld hl, sp-$5d
    or b
    rra
    add sp, -$41
    rst $18
    ld d, b
    ld e, a
    cp e
    cp a
    db $fd
    add b
    and b
    cp d
    rst $38
    rst $38
    ld e, h
    db $fc
    db $e3
    di
    ld c, a
    rst $28
    or a
    rst $30
    rst $38
    ld e, e
    ei
    dec e
    db $fd
    ld a, $fe
    ld bc, $bffe
    add b
    db $e3
    ld b, [hl]
    ldh a, [$ffc3]
    ld hl, sp-$80
    ld b, l
    db $fc
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ld a, a
    nop
    db $e3
    sbc h
    rst $38
    ldh a, [$ffcf]
    ld hl, sp-$39
    rst $18
    ret nz

    call z, $fdc3
    jp $3cd0


    ld hl, sp+$07
    inc bc
    ld hl, sp+$0c
    pop hl
    rst $38
    add b
    inc e
    rrca
    ldh [$fffe], a
    nop
    nop
    add c
    db $fd
    ld bc, $5710
    ld hl, sp+$07
    pop hl
    ld e, $1c
    db $e3
    ei
    ldh [$ff1f], a
    add b
    ld b, [hl]
    ld a, [hl]
    rst $38
    ld bc, $3388
    rst $38
    nop
    ld c, a
    jr nz, jr_01f_7a6e

    ret z

    rra
    sbc l
    ccf
    rst $38
    ld a, $7f
    ld e, [hl]
    rst $38
    ld c, a
    rst $38
    inc sp
    call z, $4eff
    or b
    db $10
    ldh [rNR10], a
    ldh [rNR42], a
    pop bc
    ei
    ld b, b
    add b
    ld b, b
    dec sp
    add b
    ld bc, $201d

jr_01f_7a6e:
    adc [hl]
    rst $30
    ld de, $00c7
    ldh [$ff99], a
    rst $00
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld h, e
    rst $38
    ld e, $e3
    adc a
    ld [hl], c
    ld b, [hl]
    add hl, sp
    rst $38
    inc sp
    inc c
    rrca
    nop
    ret nz

    rst $00
    ld [hl], b
    ld [hl], a
    rst $38
    ld a, b
    ld a, e
    db $fd
    db $fd
    db $db
    db $db
    ld a, [$fff0]
    rst $30
    or $df
    rst $18
    ld [hl], l
    ld [hl], l
    rst $18
    rst $18
    ld e, a
    db $fd
    db $fd
    ld [bc], a
    rst $38
    ld h, $20
    ld d, [hl]
    add hl, bc
    jr nc, jr_01f_7ad0

    rst $30
    adc d
    rst $38
    ld hl, $a980
    db $e4
    rst $38
    db $e4
    ld a, a
    rst $38
    call nz, Call_01f_567f
    ld a, a
    jp nc, Jump_01f_52ff

    ld a, a
    db $fd
    inc hl
    add b
    ld [hl], b
    inc a
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    rst $30
    cp $fe
    ld a, [hl]
    jr nc, jr_01f_7b15

    cpl
    cpl
    rst $08
    rst $08
    rst $30

jr_01f_7ad0:
    ld b, c
    rst $38
    ld b, e
    ld [hl+], a
    nop
    add e
    rst $38
    xor d
    rst $18
    adc a
    call nc, $b4af
    rst $08
    nop
    ld a, [hl-]
    ld [de], a
    nop
    and b
    ld a, b
    db $10
    ld a, a
    jr nz, jr_01f_7b10

    nop
    ld c, b
    ld b, $ff
    ld [$0020], sp
    rst $30
    rst $38
    rst $38
    ld hl, sp-$5e
    xor [hl]
    rra
    rst $38
    rst $30
    rst $30
    halt
    ld de, $f842
    ld hl, sp-$5b
    ld a, d
    ld b, a
    rst $38
    db $e3
    ld h, b
    rrca
    ld a, a
    push hl
    ei
    ld a, [de]
    push af
    ld d, $f9
    add hl, de
    ld [hl], b
    ld c, [hl]
    ei

jr_01f_7b10:
    add b
    add b
    ld hl, $004c

jr_01f_7b15:
    ld [bc], a
    inc b
    dec b
    nop
    rst $38
    add hl, bc
    nop
    ld b, $00
    nop
    ld h, e
    rst $38
    halt
    cp a
    cp $a7
    rst $38
    and e
    ei
    and a
    jr nz, jr_01f_7b31

    add c
    rst $38
    rst $38
    and c
    rst $38
    ld a, b

jr_01f_7b31:
    ld a, e
    ld [hl], c
    ld [hl], a
    jr nc, @+$01

    scf
    inc [hl]
    scf
    jr nc, jr_01f_7b72

    nop
    inc bc
    inc c
    rst $38
    dec c
    inc a
    dec a
    rst $30
    rst $30
    cp [hl]
    cp a
    xor $ff
    rst $28
    ld a, d
    dec sp
    cp $d7
    rst $38
    dec sp
    cp e
    xor a
    sub d
    rst $38
    ld a, [hl]
    add hl, bc
    nop
    add hl, bc
    inc de
    ret nz

    ld c, $ab
    rst $38
    rst $38
    push de
    rst $38
    ld l, l
    cp $81
    cp $12
    rst $28
    rst $38
    inc b
    rst $38
    add hl, de
    ld b, d
    ld d, l
    jp $f0ff


    rst $38
    ccf
    ld a, h
    inc bc

jr_01f_7b72:
    di
    di

jr_01f_7b74:
    db $fc
    db $fc
    rst $18
    rst $30
    rst $18
    ldh [$ffe0], a

jr_01f_7b7b:
    ld [hl+], a
    or [hl]
    jr nc, jr_01f_7b7b

    nop
    adc a
    rst $38
    rst $38
    ld a, [$87ff]
    rst $38
    add d
    rst $38
    ld b, c
    ld a, [de]
    ret nz

    inc de
    ld [hl], b
    jr nz, jr_01f_7b90

jr_01f_7b90:
    nop
    jr nc, jr_01f_7b74

    and c
    ld h, e
    or h
    and d
    or d
    rst $38
    rst $38
    ld sp, $c8ff
    rst $38
    ld b, $ff
    pop bc
    rst $28
    rst $38
    ld h, [hl]
    rst $38
    sbc b
    nop
    and e
    nop
    nop
    ccf
    rst $30
    ccf
    ld hl, sp-$08
    pop bc
    or a
    ld h, a
    ld h, a
    ld e, $1e
    ld e, a
    nop
    nop
    rla
    rst $38
    ret nc

    add b
    inc bc
    ld [hl], $00
    and e
    sbc a
    ccf
    rst $38
    db $fd
    rst $38
    or $00
    ld [hl], c
    pop hl
    cp c
    or $ff
    or $f8
    ld hl, sp-$20
    ldh [rSB], a
    ld bc, $ff06
    ld b, $a9
    rst $38
    or c
    rst $38
    ld d, e
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    jp $e15f


    rst $18
    pop hl
    rst $38
    rst $38
    pop bc
    jr c, jr_01f_7c23

    inc [hl]
    dec [hl]
    jr jr_01f_7c09

    inc b
    rst $38
    inc bc
    inc a
    inc bc
    ld e, [hl]

jr_01f_7bf4:
    ld b, c
    sbc $c1
    ld a, $ff
    ld bc, $dedf
    ld a, d
    ld a, b
    xor $ec
    cp $ff
    db $fc
    or [hl]
    or h
    rst $38
    ldh [$ffe3], a
    ret nz

jr_01f_7c09:
    jp nz, $81ff

    ld hl, $87fe
    db $fc
    inc de
    db $fc
    inc bc
    rst $38
    db $fc
    ld c, e
    db $fc
    rra
    ldh [$ff3f], a
    ret nz

    ld a, a
    rst $38
    add b
    ccf
    ld bc, $011f
    dec e

jr_01f_7c23:
    ld bc, $ff1f
    inc bc
    rra
    inc bc
    ld a, $87
    jr c, jr_01f_7bf4

    ld d, $d1
    rst $28
    db $10
    inc hl
    or c
    cp h
    jr nz, jr_01f_7c36

jr_01f_7c36:
    ld sp, hl
    ld d, c
    ld [hl], b
    rrca
    ld a, l
    jp hl


    ld a, a
    jp nz, Jump_01f_70c2

    call z, $f00e
    ld b, h
    ld sp, hl
    rst $38
    add c
    reti


    add c
    or b
    sub c
    ld [hl], b
    sub b
    ld bc, $6101
    ld a, [de]
    ei
    ei
    rst $20
    rst $18
    rst $38
    or e
    add e
    ld a, h
    add b
    ld d, $30
    rst $38
    dec bc
    db $fc
    and d
    ld l, l
    ld h, e
    sub d
    ldh [$ffe0], a
    jr nc, jr_01f_7c97

    ld [$fe08], sp
    dec d
    rst $00
    cp $ff
    cp h
    rst $38
    sbc h
    rst $38
    sbc d
    xor [hl]
    ld c, $7d
    db $f4
    rst $08
    add sp, $70
    ld h, a
    ld sp, $1200
    add d
    cp $32
    add a
    scf
    rlca
    rrca
    rrca
    rra
    rra
    ld sp, $31df
    ld b, c
    ld b, c
    add d
    add d
    pop hl
    sub [hl]
    dec sp
    ei
    xor $e1
    ld a, b
    db $d3

jr_01f_7c97:
    rst $38
    ld a, b
    db $10
    ld [hl], h
    add c
    rst $38
    adc $fb
    pop af
    call nz, $1ea0
    db $fc
    rst $38
    di
    di
    ld a, b
    rst $28
    ld a, b
    jr nc, jr_01f_7cdc

    ld c, $20
    ld b, e
    rst $38
    db $fc
    ld e, h
    rst $38
    ld e, b
    ld hl, sp-$10
    ret c

    ret nc

    ld [hl], b
    ldh [$fff1], a
    rst $38
    ldh [$ffd3], a
    ldh [$ffdf], a
    ldh [$ff03], a
    db $fc
    and a
    rst $38
    ld hl, sp+$0f
    ldh a, [$ff2f]
    ldh a, [$ff1f]
    ld h, b
    rra
    ei
    jr nz, jr_01f_7d0f

    ld h, b
    ld [hl], e
    db $eb
    rla
    ld d, a
    cpl
    cpl
    rst $38
    ld e, a
    cp a
    ld e, a
    rst $18

jr_01f_7cdc:
    ccf
    rst $38
    ccf
    cp a
    ld sp, hl
    ld a, a
    ld de, $2c16
    sbc d
    rst $38
    rst $18
    rst $18
    push af
    push de
    rst $38
    jp z, $ddc0

    call z, $caee
    or a
    or a
    ld a, a
    db $db
    db $db
    nop
    rst $38
    and b
    ld a, a
    db $eb
    ret nz

    ld [bc], a
    rst $38
    rst $30
    ccf
    push af
    ccf
    ret z

    ld a, a
    and h
    ld a, a
    rst $38
    call nz, $ff83
    nop
    rst $28
    rra
    cp a

jr_01f_7d0f:
    ld a, a
    add sp, $72
    db $10
    ld hl, $1c77
    add h
    ld [$d620], sp
    ld b, a
    cp a
    add a
    cp $00
    inc e
    and $f9
    and $f9
    db $f4
    ei
    ld hl, sp-$25
    ld [$80f0], sp
    ld a, d
    ld hl, sp+$00
    inc d
    ret


    nop
    ld sp, hl
    xor a
    rst $38
    inc a
    rst $38
    inc e
    ld [hl-], a
    sub e
    ld hl, sp+$40
    inc c
    ld [hl], b
    ld a, a
    rst $38
    ld sp, hl
    ld sp, hl
    inc a
    inc a
    inc e
    inc e
    ld b, l
    and [hl]
    rst $10
    add b
    nop
    add c
    ldh a, [$ff94]
    ld e, h
    add b
    dec [hl]
    rlca
    rst $38
    push af
    dec de
    add b
    nop
    ld e, a
    nop
    ld a, [hl+]
    add b
    add b
    ld d, b
    ld d, b
    rst $20
    ld c, b
    ld c, b
    inc b
    jr nc, jr_01f_7daa

    pop hl
    and [hl]
    adc h
    rst $38
    res 5, a
    rst $38
    ld b, [hl]
    rst $38
    ld c, l
    ld h, b
    nop
    rst $08
    jr nz, jr_01f_7d72

jr_01f_7d72:
    ld c, a
    ld a, [hl+]
    ld c, $91
    pop hl
    ld b, b
    dec hl
    pop af
    jr nz, jr_01f_7d7c

jr_01f_7d7c:
    ld sp, hl
    ldh [rNR42], a
    rrca
    sub e
    rst $38
    nop
    nop
    rst $10
    ldh [$ffb1], a
    ret nz

    or b
    ret nz

    pop hl
    jr c, jr_01f_7def

    ld a, b
    add c
    ld c, c
    ld h, d
    ld a, e
    ld c, b
    xor d
    ccf
    ret nz

    cpl
    ccf
    ret nz

    ld c, a
    add b
    rst $08
    nop
    adc $e2
    sbc [hl]
    and h
    sbc a
    sbc h
    ld c, b
    xor h
    add l
    rrca
    rst $38
    rst $38
    db $fd

jr_01f_7daa:
    stop
    dec d
    push hl
    cp $bb
    ld bc, $e0fc
    ld d, l
    ld a, [$f007]
    ldh [$ff9a], a
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $28
    rst $28
    ld a, e
    ld a, e
    db $dd
    db $ed
    db $dd
    pop bc
    xor $80
    ld a, a
    add c
    inc e
    db $10
    rst $38
    add h
    ei
    rst $38
    ld [hl+], a
    cp d
    sbc [hl]
    rst $18
    rst $18
    ld a, a
    ld a, a
    db $ec
    db $e3
    rst $28
    db $fc
    nop
    inc d
    ld b, b
    daa
    jr nz, @-$7d

    cpl
    ldh a, [$ff8f]
    dec de
    ldh a, [rNR22]
    ret nz

    ld [hl], l
    db $f4
    ei
    ld b, b
    inc de
    ldh [$ff3b], a

jr_01f_7def:
    ld b, c
    nop
    adc c
    inc b
    ret nz

    inc [hl]
    dec c
    or h
    jr nc, jr_01f_7df9

jr_01f_7df9:
    ld [hl-], a
    or b
    dec de
    ld b, h
    nop
    ld a, h
    cp l
    db $fc
    jp hl


    or c
    ret nz

    nop
    add e
    inc bc
    rst $20
    db $ec
    add c
    ld b, $c0
    rst $10
    inc sp
    ld de, $ba25
    ld b, c
    ld [$f2a0], a
    ld [hl], d
    adc l
    push bc
    xor $8f
    inc de
    ld bc, $226a
    push hl
    ld bc, $2943
    ld [hl-], a
    dec bc
    rst $38
    ld a, e
    rrca
    rrca
    pop bc
    sub [hl]
    inc hl
    ld [bc], a
    dec c
    add hl, bc
    jr nc, jr_01f_7e7d

    ld [hl-], a
    ldh [c], a
    db $eb
    cp $30
    adc b
    pop hl
    ld [hl], $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01f_7e7d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
