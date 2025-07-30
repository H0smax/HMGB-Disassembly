; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    ld b, $a5
    ld b, c
    push bc
    ld b, c
    push hl
    ld b, c
    dec b
    ld b, d
    dec h
    ld b, d
    ld b, l
    ld b, d
    dec h
    ld b, d
    ld h, l
    ld b, d
    add l
    ld b, d
    and l
    ld b, d
    push bc
    ld b, d
    push hl
    ld b, d
    dec b
    ld b, e
    dec h
    ld b, e
    ld b, l
    ld b, e
    ld h, l
    ld b, d
    ld h, l
    ld b, e
    add l
    ld b, e
    push bc
    ld b, b
    push hl
    ld b, b
    dec b
    ld b, c
    push hl
    ld b, b
    dec h
    ld b, c
    ld b, l
    ld b, c
    ld h, l
    ld b, c
    add l
    ld b, c
    and l
    ld b, l
    push bc
    ld b, l
    push hl
    ld b, l
    dec b
    ld b, [hl]
    dec h
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld b, [hl]
    add l
    ld b, [hl]
    push hl
    ld b, e
    dec b
    ld b, h
    dec h
    ld b, l
    ld b, l
    ld b, l
    ld h, l
    ld b, l
    add l
    ld b, l
    push hl
    ld b, h
    dec b
    ld b, l
    and l
    ld b, e
    push bc
    ld b, e
    ld h, l
    ld b, h
    add l
    ld b, h
    dec h
    ld b, h
    ld b, l
    ld b, h
    and l
    ld b, h
    push bc
    ld b, h
    and l
    ld b, [hl]
    push bc
    ld b, [hl]
    and l
    ld b, [hl]
    push hl
    ld b, [hl]
    dec b
    ld b, a
    dec h
    ld b, a
    ld b, l
    ld b, a
    ld h, l
    ld b, a
    add l
    ld b, a
    and l
    ld b, a
    dec h
    ld c, b
    ld b, l
    ld c, b
    ld h, l
    ld c, b
    add l
    ld c, b
    and l
    ld c, b
    push bc
    ld c, b
    push hl
    ld c, b
    dec b
    ld c, c
    dec h
    ld c, c
    ld b, l
    ld c, c
    ld h, l
    ld c, c
    add l
    ld c, c
    ld h, l
    ld c, d
    add l
    ld c, d
    dec h
    ld c, d
    ld b, l
    ld c, d
    and l
    ld c, c
    push bc
    ld c, c
    push hl
    ld c, c
    dec b
    ld c, d
    push hl
    ld b, a
    push bc
    ld b, a
    push hl
    ld b, a
    dec b
    ld c, b
    and l
    ld c, d
    push bc

jr_006_40ac:
    ld c, d
    dec h
    ld c, e
    ld b, l
    ld c, e
    ld h, l
    ld c, e
    add l
    ld c, e
    and l
    ld c, e
    push bc
    ld c, e
    push hl
    ld c, e
    dec b
    ld c, h
    push hl
    ld c, e
    dec h
    ld c, h
    ld b, l
    ld c, h
    ld h, l
    ld c, h
    dec d
    ld h, l
    ld d, b
    or b
    sub e
    inc h
    ld [bc], a
    inc [hl]
    ret z

    ld [de], a
    inc h
    ld [bc], a
    reti


    inc h
    add e
    ld b, c
    jr nz, jr_006_40e9

    ld h, h
    ld [hl-], a
    ld h, h
    db $10
    add c
    inc [hl]
    sub e
    inc sp
    ld hl, $0360
    add d
    jp c, $bdae

    ld h, h
    reti


    cp [hl]

jr_006_40e9:
    ld [bc], a
    add $32
    ld [hl], b
    add hl, de
    adc c
    call $1798
    add a
    ld b, c
    xor a
    ld [hl-], a
    db $10
    ld [bc], a
    ld b, h
    ld d, b
    cp a
    ld l, b
    cp d
    or h
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rla
    ld a, b
    cp l
    sbc e
    ld [hl], h
    jr nc, jr_006_40ac

    ld [hl], b
    ld [hl+], a
    inc [hl]
    reti


    jr nz, jr_006_4124

    ld h, h
    ld [hl-], a

Call_006_4114:
    inc [hl]
    jp nc, Jump_000_2412

    ld [bc], a
    ld b, h
    jr nc, jr_006_415f

    and b
    ld h, b
    inc de
    add d
    or h
    jp c, $afaf

jr_006_4124:
    xor [hl]
    ld de, $1081
    add $74
    add hl, bc
    ld c, c
    cp l
    jr nc, jr_006_415f

    ld de, $8373
    call nz, $afd9
    ld a, [de]
    sbc $44
    ld hl, $01b0
    ld b, c
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    inc b
    ld b, b
    or c
    inc [hl]
    inc d
    add h
    ld [hl], h
    or d
    ld [bc], a
    sub e
    inc [hl]
    jr nc, jr_006_4182

    inc de
    call nz, Call_006_4ad9
    inc a
    cp d
    or h
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_415f:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    or c
    sub b
    ld h, b
    ld b, b
    ld bc, $5021
    ld d, l
    sbc c
    ld h, l
    ld a, d
    cp l
    jr nc, jr_006_41a3

    inc de
    call nz, Call_006_7314
    add e
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_4182:
    xor a
    xor a
    xor [hl]
    inc b
    inc b
    ld de, $0140
    ld hl, $64bd
    reti


    or d
    ld [bc], a
    sub e
    inc [hl]
    inc b
    ld b, b
    or c
    inc [hl]
    inc d
    add h
    ld [hl], h
    ld b, b
    sub h
    cp [hl]
    ld h, h
    jr nc, jr_006_41cf

    inc de
    call nz, $3c4a

jr_006_41a3:
    cp d
    ld l, d
    ld d, b
    add d
    ld b, h
    adc h
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, jr_006_41f6

    cp l
    reti


    inc hl
    ld bc, $9231
    ld [bc], a
    and b
    dec bc
    ret


    sbc c
    ld d, b
    ld [hl], b
    ld bc, $dab4
    xor a
    xor [hl]
    cp d
    inc de
    cp [hl]
    reti


    ld hl, $9391
    db $10
    and b
    ld [de], a

jr_006_41cf:
    ld d, b
    ld a, [de]
    ld a, [bc]
    ld l, $bd
    reti


    ld sp, $9392
    inc [hl]
    ld [hl+], a
    ld [de], a
    ld b, b
    ld bc, $dab4
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, b
    add d
    ld b, h
    adc h
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, @+$45

    cp l
    reti


    dec d

jr_006_41f6:
    bit 6, d
    add c
    ld [hl+], a
    inc d
    ld hl, $10b1
    sub h
    and b
    db $10
    db $10
    add d
    jp c, $02ae

    add c
    ld b, e
    ld d, b
    dec d
    bit 6, d
    add c
    reti


    ld sp, $0192
    jr nc, jr_006_4223

    ld h, e
    ld b, h
    inc e
    ld a, [bc]
    ld l, $41
    ld b, b
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a

jr_006_4223:
    xor a
    xor a
    ld b, b
    ld [hl-], a
    ld b, h
    adc h
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, jr_006_4276

    cp l
    reti


    ld hl, $0291
    db $10
    ld [de], a
    ld hl, $6433
    db $10
    add e
    ld b, b
    ld bc, $dab4
    xor a
    xor [hl]
    ld hl, $0291
    db $10
    ld [de], a
    ld h, b
    cp l
    or c
    db $10
    sub h
    and b
    db $10
    db $10
    add d
    inc de
    cp [hl]
    ld [bc], a
    add c
    ld b, e
    ld d, b
    dec bc
    inc c
    ld a, [bc]

jr_006_425c:
    ld l, $34
    jr nc, jr_006_4270

    ld bc, $dab4
    xor a
    xor a
    inc hl
    ld bc, $9231
    ld [bc], a
    ld [hl+], a
    add d
    ld h, b
    cp l
    and b
    ld b, b

jr_006_4270:
    and b
    ld bc, $be13
    reti


    ld [bc], a

jr_006_4276:
    add c
    ld b, e
    ld d, b
    ld b, b
    sub h
    inc [hl]
    dec bc
    rrca
    ld a, [bc]
    ld l, $ba
    or h
    jp c, $afaf

    nop
    ld de, $8c44
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, jr_006_42d6

    cp l
    reti


    dec d
    swap h
    inc b
    ld b, b
    or c
    ld d, b
    ld [hl], b
    jr nz, jr_006_425c

    inc h
    cp d
    ld [hl-], a
    or h
    jp c, $bdae

    ld h, h
    ld hl, $9391
    db $10
    and b
    ld [de], a
    ld d, b
    dec d
    swap h
    inc b
    ld b, b
    or c
    cp l
    ld a, [de]
    ld a, [bc]
    ld l, $34
    reti


    ld sp, $9392
    inc [hl]
    ld [hl], b
    ld [hl+], a
    ld bc, $dab4
    xor a
    xor a
    nop
    ld de, $8c44
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, jr_006_4316

    cp l
    reti


    ld b, l

jr_006_42d6:
    daa
    ld [hl], d
    add c
    ld [hl+], a
    inc d
    ld hl, $10b1
    sub h
    and b
    db $10
    db $10
    add d
    jp c, Jump_000_21ae

    sub c
    sub e
    db $10
    and b
    ld [de], a
    ld d, b
    reti


    ld b, l
    daa
    ld [hl], d
    add c
    ld h, h
    jr nc, jr_006_4304

    ld [de], a
    inc e
    ld a, [bc]
    ld l, $ba
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_4304:
    xor a
    ld d, d
    ld [hl], c
    ld b, h
    adc h
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, @+$45

    cp l
    reti


    ld b, l

jr_006_4316:
    daa
    ld [hl], d
    add c
    ld [hl+], a
    inc d
    ld hl, $10b1
    sub h
    and b
    db $10
    db $10
    add d
    jp c, Jump_000_21ae

    sub c
    ld [bc], a
    db $10
    ld [de], a
    ld h, b
    cp l
    or c
    db $10
    sub h
    and b
    db $10
    db $10
    add d
    and b
    reti


jr_006_4335:
    ld hl, $9391
    db $10
    and b
    ld [de], a
    ld d, b
    dec bc
    rrca
    ld a, [bc]
    ld l, $ba
    or h
    jp c, $afaf

    ld d, d
    ld [hl], c
    ld b, h
    adc h
    ld b, c
    ld h, b
    inc de
    add d
    ld [hl], l
    dec h
    ld b, $44
    jr nc, @+$45

    cp l
    reti


    ld hl, $0291
    db $10
    ld [de], a
    ld hl, $6433
    reti


    db $10
    add e
    ld b, b
    ld bc, $dab4
    xor [hl]
    ld d, b
    add d
    inc [hl]
    ld b, b
    ld [hl-], a
    reti


    nop
    ld de, $8c44
    ld b, c
    ld h, b
    inc d
    ld [bc], a
    ld l, d
    xor a
    ld h, h
    ld sp, $9484
    reti


    ld d, b
    jr nc, jr_006_4390

    ld b, c
    cp d
    or h
    ld l, d
    ld l, d
    xor a
    xor a
    xor [hl]
    inc hl
    ld bc, $9231
    ld [bc], a
    ld [hl+], a
    add d
    inc [hl]
    reti


    cp [hl]
    ld [bc], a

jr_006_4390:
    add $32
    jr nc, jr_006_43c5

    ld b, h
    ld [$4125], sp
    ld b, b
    add d
    db $10
    add b
    reti


    jr nc, jr_006_43b1

    jr nz, jr_006_4335

    ld bc, $b482
    ld l, d
    inc hl
    ld bc, $9231
    ld [bc], a
    ld hl, $c830
    ld [de], a
    inc h
    ld [bc], a
    ld [hl], h

jr_006_43b1:
    reti


    dec d
    ld h, l
    cp l
    db $10
    add c
    inc [hl]
    add d
    inc [hl]
    reti


    dec d
    ld b, $c9
    ld b, c
    ld b, b
    add d
    or h
    ld l, d
    xor a
    xor [hl]

jr_006_43c5:
    or c
    cp [hl]
    ld [bc], a
    cp l
    dec h
    ld b, $89
    ld b, c
    sbc a
    add d
    db $10
    add b
    reti


    dec h
    ld b, $89
    ld b, h
    db $10
    sub h
    call nz, $bd94
    reti


    ld b, h
    inc d
    add c
    ld [hl], h
    ld [hl], $e8
    sbc b
    rla
    ld l, d
    jr nz, jr_006_43f9

    ld b, c
    ld [hl-], a
    db $10
    sub e
    jr nc, @-$7d

    reti


    ld bc, $4403
    or h
    ld [bc], a
    ld sp, $4112
    ld [hl-], a
    db $10
    sub e

jr_006_43f9:
    jr nc, @-$7d

    cp l
    ld de, $b482
    jp c, $afaf

    xor a
    xor a
    xor [hl]
    ld de, $1081
    add $74
    or e
    sub h
    add $73
    sub e
    inc sp
    ld hl, $9360
    inc sp

Jump_006_4414:
    ld h, h
    cp d
    ld bc, $2012
    sub h
    and b
    reti


    ld [bc], a
    sub e
    inc sp
    ld [de], a
    add e
    add d
    or h
    jp c, $02af

    ld hl, $3144
    ld sp, $2174
    ret z

    sub e
    inc sp
    reti


    ld h, [hl]
    add a
    rla
    ld [hl], h
    xor a
    ld hl, $9391
    db $10
    cp l
    ld de, $b482
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    cp l
    ld h, h
    dec bc
    sbc h
    dec bc
    db $10
    ld bc, $1021
    ld h, [hl]
    add a
    rla
    ld d, b
    cp l
    ld b, b
    ld bc, $8010
    reti


    inc d
    ret z

    ld [hl+], a
    inc [hl]
    ld [de], a
    ld [hl], b
    ld hl, $b401
    ld l, d
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $cb41
    add l
    sbc b
    ld h, $99
    and a
    ld hl, $0033
    and e
    ld [hl], d
    ld [bc], a
    jp c, Logo

    or c
    sub d
    ld [bc], a
    inc d
    ld h, e
    inc sp
    reti


    ld h, b
    ld bc, $3141
    ld b, b
    jp c, $24ae

    ld b, h
    ld [bc], a
    ld sp, $8766
    rla
    ld b, h
    add c
    sub d
    ld [bc], a
    and b
    reti


    and a
    sbc c
    inc [hl]
    ld d, d
    inc bc
    add d
    jp c, $0160

    ld b, c
    ld sp, $73d9
    ld [hl+], a
    add e
    add d
    ld b, b
    ld l, d
    xor a
    ld [bc], a
    ld hl, $7274
    add $be
    ld [bc], a
    and d
    cp d
    jp c, Jump_000_3424

    ld b, c
    ld [hl-], a
    add e
    inc sp
    nop
    and e
    add d
    inc [hl]
    ld de, $d941
    ld [hl-], a

Call_006_44bd:
    db $10
    ld [bc], a
    inc [hl]
    ld bc, $b401
    jp c, $ccae

    add a
    ld [hl], h
    ld h, h
    sub e
    inc sp
    ld bc, $c483
    reti


    ld d, e
    ld [hl], b
    ld b, h
    db $10
    cp [hl]
    ld b, c
    ld [bc], a
    ld hl, $01a0
    sub e
    inc sp
    ld h, h
    cp d
    ld bc, $92b1
    ld [bc], a
    add $ba
    ld b, e
    ld l, d
    ld [bc], a
    ld h, b
    ld b, c
    inc [hl]
    add c
    ld [hl-], a
    inc de
    add d
    dec d
    ret


    sbc c
    cp d
    or h
    jp c, $afaf

    ld hl, $9391
    db $10
    ld h, h
    cp l
    ld de, $d982
    ld [hl+], a
    and d
    add e
    ld h, h
    ld b, h
    ld l, d
    xor [hl]
    cp l
    ld h, h
    reti


    jr nc, jr_006_456a

    ld b, c
    ld d, b
    ld hl, $9391
    db $10
    call nz, Call_006_4114
    ld h, h
    reti


    ld hl, $0291
    db $10
    ld [de], a
    add $32
    ld [hl], h
    sbc a
    add e
    inc sp
    ld [de], a
    add e
    ld [hl], d
    jp c, $50af

    add e
    jr nc, @-$62

    ld d, b
    reti


    ld d, b
    jr nc, jr_006_4541

    ld b, h
    ld [hl], b
    jr nz, jr_006_4533

    ld b, c

jr_006_4533:
    adc [hl]
    ld [hl], h
    nop
    and e
    ld b, b
    ld bc, $bf34
    ld l, b
    cp d
    jp c, $afaf

    xor a

jr_006_4541:
    xor a
    xor a
    xor a
    xor [hl]
    nop
    ld h, e
    ld b, h
    sbc h
    ld d, b
    ld bc, $4080
    ld bc, $be13
    ld b, e
    jp c, $8324

    inc [hl]
    or [hl]
    sub a
    rlca
    adc c
    ld b, h
    adc [hl]
    ld d, b
    reti


    ld bc, $bd13
    ld [de], a
    ld h, e
    add d
    or h
    jp c, $97b6

    rlca

jr_006_4568:
    adc c
    inc [hl]

jr_006_456a:
    ld d, c
    ld de, $0310
    cp l
    reti


    db $10
    inc bc
    add d
    or h
    jp c, $c6b1

    sub h

jr_006_4578:
    ld b, h
    ld h, b
    ld [hl], e
    add c
    ld b, c
    adc [hl]
    ld [hl], h
    ld h, b
    inc de
    add d
    db $10
    add b
    xor [hl]
    inc d
    add e
    cp l
    ld d, b
    jr nc, jr_006_459e

    ld b, h
    adc [hl]
    ld [hl], b
    add c
    and b
    reti


    ld [hl+], a
    inc d
    ld hl, $8550
    rla
    ld b, c
    ld b, b
    add d
    ld d, b
    or d
    jr nc, jr_006_4578

jr_006_459e:
    xor a
    xor h
    jr nc, jr_006_4568

    sub h
    ld b, e
    jp c, $8919

jr_006_45a7:
    call $1798
    add a
    and b
    reti


    db $10
    sub h
    ld hl, $7490
    inc d
    ld h, e
    inc sp
    dec d
    ld h, l
    ld [hl], h
    db $d3
    ld a, b
    ld a, d
    dec b

jr_006_45bc:
    sbc b
    push de
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    db $10
    sub e
    inc sp
    db $10
    sub e
    inc sp
    reti


    db $10
    add c
    ld h, b
    ld [de], a
    add h
    ld [bc], a
    ld l, d
    cp l
    ld h, h
    jr nz, @+$14

    ld h, h
    ld [hl-], a
    ld [hl], h
    reti


    db $10
    sub e
    inc sp

jr_006_45de:
    ld d, b
    cp a
    ld l, b
    cp d
    ld [hl], d
    jp c, Jump_000_19af

    adc c
    call $1798
    add a
    and b
    reti


    db $10
    sub h
    ld hl, $7490
    inc d
    ld h, e
    inc sp
    rla
    ld a, b
    ld [hl], h
    db $d3
    ld a, b
    ld a, d
    dec b
    sbc b
    push de
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    jr nc, jr_006_45a7

    ld [hl], b
    ld hl, $0133
    ld b, b
    ld bc, $a09b
    nop
    add d
    ld b, b
    add b
    call nz, Call_000_20d9
    sub e
    inc h
    ld [de], a

jr_006_4619:
    reti


    jr nc, jr_006_45bc

    ld [hl], b
    ld hl, $1232
    inc h
    ld [bc], a
    ld l, d
    xor a
    xor a
    ld h, e
    and b
    ld h, c
    ld b, h
    ld hl, $6432
    sub h
    ld b, c
    reti


    ld hl, $0292
    or c
    ld de, $1441
    jr nc, jr_006_463b

    jr nc, jr_006_45de

    ld d, h

jr_006_463b:
    ld [bc], a
    push bc
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor [hl]
    cp l
    ld h, h
    reti


    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld b, c
    ld de, $1081
    add $93
    inc sp
    reti


    ld h, b
    cp d
    ld b, h
    inc d
    sub e
    inc sp
    add d
    db $10

jr_006_465d:
    ld bc, $af6b
    xor a
    xor a
    xor a
    xor a
    xor a
    jp nz, $9885

    rla
    daa
    adc a
    ld b, h
    ld bc, $4103
    reti


    or c
    jr nc, jr_006_4685

    and b
    xor a
    or h
    ld [bc], a
    ld sp, $2012
    add e
    jr nc, jr_006_4619

    ld b, c
    ld h, h
    add b
    sub e
    jr nc, jr_006_465d

    xor a
    xor [hl]

jr_006_4685:
    cp l
    sub e
    inc de
    ld a, d
    ld bc, $6421
    dec bc
    xor b
    ld d, $bd
    inc d
    ld [hl], e
    ld [hl+], a
    ld l, d
    ld l, d
    cp l
    ld h, h
    ld h, b
    cp d
    nop
    add d
    db $10
    ld l, e
    cp l
    sub e
    inc de
    ld a, d
    ld bc, $da21
    xor a
    dec d
    ld b, $c9
    ld b, h
    ld [hl], $e8
    sbc b
    rla
    ld [hl], h
    ld [hl], e
    ld [hl+], a
    add e
    inc sp
    reti


    xor a
    xor a
    dec d
    ld b, $c9
    and b
    ld b, b
    ld [de], a
    ld b, b
    add d
    inc [hl]
    reti


    jr nc, jr_006_46c2

    ld d, e

jr_006_46c2:
    sub h
    ld l, d
    xor [hl]
    cp l
    ld h, h
    reti


    ld [bc], a
    ld hl, $0844
    dec h
    and b
    nop
    add e
    call nz, $afd9
    xor a
    xor a
    ld sp, $9392
    inc [hl]
    nop
    sub h
    ld hl, $4494
    dec bc
    inc c
    db $10
    ld bc, $819f
    jp c, $64bd

    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld b, h
    ld [$a025], sp
    nop
    add e
    call nz, $afd9
    xor a
    ld [hl+], a
    inc d
    ld hl, $0050
    sub h
    ld hl, $4494
    dec bc
    inc c
    db $10
    ld bc, $819f
    jp c, $9111

    ld [bc], a
    ld b, b
    push bc
    sub d
    ld [bc], a
    ld de, $d950
    jr nc, jr_006_4712

    ld d, e

jr_006_4712:
    sub h
    cp d
    ld l, d
    cp l
    ld h, h
    reti


    inc d
    add e
    ld [hl], h
    nop
    and e
    add e
    call nz, $9400
    ld hl, $da94
    xor [hl]
    ld hl, $0272
    or c
    sub d
    ld [bc], a
    ld b, h
    ld sp, $0291
    ld bc, $d974
    ld [hl], d
    ld a, d
    ld [de], a
    ld de, $3301
    db $10
    add b
    reti


    ld [hl-], a
    db $10
    sub e
    inc sp
    ld [de], a
    cp d
    jr nz, @+$03

    jp c, $04af

    inc b
    ld [bc], a
    ld hl, $4174
    sub h
    ld hl, $2094
    inc hl

jr_006_4750:
    add d
    or h
    jp c, $afaf

    push bc
    sub d
    ld [bc], a
    ld de, $1164
    and e
    sub h
    ld h, h
    ld b, b
    inc b
    add d
    or h
    ld l, d
    xor a
    xor [hl]
    inc c
    dec bc
    sbc h
    and h
    and b
    reti


    jr nc, @+$46

    ld hl, $6a61
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, c
    and c
    ld [hl], b
    db $10
    ld b, b
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld b, c
    ld hl, $1233
    add e
    jp c, Jump_000_0a0d

    sbc h
    ld b, h
    nop
    sub h
    ld hl, $da94
    jr nc, jr_006_4791

    or c

jr_006_4791:
    ld b, b
    ld [bc], a
    ld hl, $c574
    sub d
    ld [bc], a
    ld de, $8010
    ld h, b
    ld h, h
    add c
    ld h, b
    ld [hl+], a
    jp c, $afaf

    xor a
    xor [hl]
    inc b
    ld h, h
    inc [hl]
    ld h, e
    ld d, b
    reti


    nop
    ld b, b
    jr nc, jr_006_47f3

    ld h, b
    ld sp, $d944
    xor a
    xor a
    cp [hl]
    ld [bc], a
    add $32
    ld [hl], b
    jr nz, jr_006_4750

    cp l
    cp [hl]
    ld [bc], a
    or h
    jp c, $afaf

    xor a
    xor a
    or e

jr_006_47c6:
    sub h
    or c
    cp [hl]
    ld [bc], a
    cp l
    ld [hl], $7a
    or a
    ld b, h
    cp l
    ld de, $a000
    add c
    jp c, $0114

    ld [hl-], a
    ldh [$ff27], a
    xor c
    ld b, $b3
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec b
    sbc c
    and b
    ld [hl-], a
    ld [de], a
    sub e
    jr nc, jr_006_47c6

    ld d, b
    ld [hl-], a
    ld h, e
    ld bc, $9451

jr_006_47f3:
    jp c, $66af

    add a
    rla
    ld [hl], h
    sbc a
    add e
    add d
    inc [hl]
    xor h
    xor a
    xor a
    xor a
    xor a

jr_006_4802:
    xor a
    xor a
    xor [hl]
    or e
    sub h
    or c
    cp [hl]
    ld [bc], a
    cp l
    ret


    dec [hl]
    ld a, d

jr_006_480e:
    ld b, h
    cp l
    ld de, $a000
    add c
    jp c, $0114

    ld [hl-], a
    ldh [$ff27], a
    xor c
    ld b, $b3
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jr nc, jr_006_4887

    and h
    inc [hl]
    ld h, [hl]
    add a
    rla
    and b
    dec [hl]

jr_006_482e:
    sbc b
    push de
    add [hl]
    sbc a
    sub e
    jr nc, jr_006_480e

    nop
    ld h, b
    ld a, d
    ld bc, $7a18
    ld d, $da
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld [$9988], sp
    and b
    inc d
    inc d
    add h
    ld [hl], h

jr_006_484d:
    inc d
    ld h, e
    inc sp
    ld [hl-], a
    ld [de], a
    sub e
    jr nc, jr_006_482e

    ld hl, $0214
    ld b, h
    dec bc
    rst $08
    sub h
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [$9988], sp
    ld b, h
    inc b
    stop
    jr nz, jr_006_4802

    and b
    ld [hl-], a
    ld [de], a
    sub e
    jr nc, jr_006_484d

    xor a
    ld b, c
    sub h
    ld de, $3344
    ld bc, $9221
    ld [de], a
    cp d
    or h
    ld l, d
    xor a
    xor a
    xor a
    xor [hl]
    jr nc, jr_006_4888

jr_006_4887:
    add c

jr_006_4888:
    sub d
    ld [de], a
    ld h, h
    db $10
    ld bc, $1252
    ld hl, $2133
    ld h, b
    ld [bc], a
    reti


    ld de, $0291
    ld de, $1292
    ld b, h
    dec bc
    rst $08
    sub h
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    db $10
    ld [hl], e
    ld d, b
    dec h
    rla
    sbc b
    inc [hl]
    reti


    ld b, b
    db $10
    ld d, b
    ld d, d
    sub h
    ld [hl], e
    add c
    ld l, d
    inc d
    ld [bc], a
    call nz, $0121
    db $10
    inc b
    add c
    and b
    jr nc, jr_006_4920

    add b
    ld b, b
    ld bc, $aeda
    ld [$9988], sp
    ld b, h
    inc sp
    cp h
    ld [de], a
    add c
    rla
    adc c
    ld a, b
    sbc b
    dec h
    sbc c
    ld d, b
    reti


    ld h, b
    ld sp, $6144
    sub h
    ld b, b
    ld b, c
    reti


    cp d
    ld bc, $0214
    ld d, c
    sub d
    ld [bc], a
    jp c, Jump_000_2525

    ld d, [hl]
    dec d
    add [hl]
    cp l
    ld [hl-], a
    ld [de], a
    sub e
    jr nc, jr_006_48f4

    ld b, c
    and c
    add c
    ld d, b

jr_006_48f4:
    reti


    or e
    sub e
    rst $08
    sub h
    cp d
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    ld hl, $6410
    reti


    ld [bc], a
    ld h, e
    reti


    db $10
    ld [hl-], a
    inc b
    reti


    inc d
    sub h
    add $44
    dec c
    ld hl, $8291
    ld bc, $28a0
    sbc b
    add hl, sp
    cp d
    ld l, d
    xor a

jr_006_4920:
    xor a
    xor a
    xor a
    xor a
    xor a
    ld e, c
    dec d
    ld e, c
    dec d
    cp l
    dec b
    scf
    dec b
    scf
    cp d
    db $10
    add b
    reti


    ld [hl+], a
    and h
    ld [de], a
    inc b
    ld bc, $0121
    sub e

jr_006_493a:
    ld l, d
    ld l, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor [hl]
    cp l
    ld h, h
    reti


    nop
    sub h
    ld h, b
    add c
    ld bc, $0124
    cp l
    jr nc, @-$37

    add d
    inc [hl]
    reti


    ld [de], a
    ld sp, $4044
    db $10
    ld [hl], h
    ld [hl], b
    inc de
    cp [hl]
    ld hl, $2133
    ld h, b
    ld [bc], a
    or h
    jp c, Jump_006_4414

    ld h, b
    ld sp, $32bd
    ld [de], a
    add b
    add e
    jr nc, jr_006_493a

    ld a, d
    add a
    cp d
    or h
    jp c, $a014

    ld b, e
    ld bc, $a084
    reti


    ld [hl+], a
    and h
    ld [de], a
    ld de, $0183
    ld l, d
    xor a
    xor [hl]
    cp l
    ld h, h
    reti


    nop
    sub h
    ld h, b
    add c
    ld b, h
    ld h, c
    ld [hl+], a
    and c
    add d
    inc [hl]
    reti


    ld [hl], e
    add d
    ld [hl], d
    ld bc, $8222
    db $10
    add b
    ld d, h
    cp [hl]
    ld d, h
    cp [hl]
    ld b, c
    ld hl, $0272
    ld l, d
    xor a
    inc b
    ld sp, $4490
    ld b, b
    db $10
    cp l
    ld h, h
    reti


    inc d
    ld [bc], a
    ld de, $5191
    sub h
    ld b, h
    ld h, e
    or b
    ld h, b
    ld hl, $92a1
    ld [de], a
    add h
    cp d
    or h
    jp c, $64bd

    xor h
    xor a
    xor [hl]
    ld b, h
    ld h, c
    ld [hl+], a
    and c
    add d
    inc [hl]
    reti


    ld h, e
    and b
    jr nz, @+$05

    inc sp
    ld hl, $9360
    inc sp
    ld b, e
    ld h, d
    add e
    ld b, b
    ld bc, $6410
    ld hl, $4083
    ld bc, $dab4
    xor a
    xor a
    xor a
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    cp l
    ld hl, $9391
    db $10
    ld hl, $6630
    add a
    rla
    and b
    ld h, b
    ld sp, $2044
    db $10
    call nz, Call_006_44bd
    ld h, e
    add d
    ld b, h
    cp d
    jp c, $afaf

    xor [hl]
    ld [de], a
    add h
    ld [bc], a

jr_006_4a08:
    ld hl, $2133
    sub c
    sub e
    db $10
    ld hl, $0430
    ld h, h
    ld bc, $d9a0
    ld [hl+], a
    inc d
    ld hl, $6250
    ld [de], a
    ld [hl], e
    add e
    jr nc, jr_006_4a2f

    ld b, b
    ld l, e
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    add b
    db $db
    cp l
    inc [hl]
    add e
    jr nc, jr_006_4a08

    set 0, e

jr_006_4a2f:
    rlca
    ld [hl], h
    reti


    ld b, $cb
    and b
    inc sp
    ld bc, $0143
    ld b, c
    ld [hl-], a
    ld [de], a
    sub e
    jr nc, jr_006_4a43

    jr nz, jr_006_4a54

    cp d
    or h

jr_006_4a43:
    jp c, Jump_006_54ae

    add h
    ld [hl], d
    ld bc, $a310
    sub h
    cp l
    reti


    ld [hl-], a
    db $10
    add e
    ld b, b
    sub h
    db $10

jr_006_4a54:
    ld h, h
    ld d, d
    ld de, $c634
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
    db $db
    set 0, e
    rlca
    ld hl, $7491
    call z, Call_000_277a
    ld b, c
    reti


    ld bc, $0184
    add h
    ld b, b
    db $10
    or c
    ld [hl-], a
    ld [hl], h
    ld h, [hl]
    sbc b
    rla
    daa
    ld hl, $0430
    jr nz, jr_006_4a96

    jp c, Jump_006_52ae

    ld hl, $40a1
    nop
    or c
    and b
    ld [hl+], a
    add d
    inc de
    add e
    cp [hl]
    reti


    ld d, d
    ld hl, $34a1

jr_006_4a96:
    reti


    jr nc, jr_006_4a9a

    add c

jr_006_4a9a:
    sub d
    ld [de], a
    ld h, h
    db $10
    ld bc, $1252
    ld [hl+], a
    add d
    or h
    jp c, $b104

    ld bc, $9420
    ld b, h
    ld l, l
    ld bc, $9420
    ld l, [hl]
    ld b, h
    dec bc
    ld [hl-], a
    jp c, Jump_000_01af

    or d
    ld h, c
    cp l
    jr nz, jr_006_4acb

    ld b, b
    ld [hl-], a
    add c
    and b
    cp l
    ld de, $b482
    jp c, Jump_000_31ae

    inc sp
    ld bc, HeaderNewLicenseeCode
    or d

jr_006_4acb:
    ld h, c
    cp l
    reti


    jr nz, jr_006_4ae0

    ld b, b
    ld [hl-], a
    add c
    cp d
    ld l, d
    cp l
    ld h, h
    reti


    ld h, e

Call_006_4ad9:
    and b
    ld h, c
    jr nz, jr_006_4b3d

    ld d, b
    ld [hl-], a
    add e

jr_006_4ae0:
    ld b, b
    ld bc, $6ab4
    ld l, d
    inc b
    or c
    ld bc, $9420
    ld b, h
    ld l, l
    ld bc, $9420
    ld l, [hl]
    ld b, h
    dec bc
    ld [hl-], a
    jp c, Jump_000_0baf

    sbc h
    dec bc
    ld [hl-], a
    reti


    sbc d
    ld b, h
    jr nc, jr_006_4b5e

    and h
    ld [hl], h
    ld [bc], a
    ld h, d
    or h
    jp c, Jump_000_31ae

    sub d
    sub e
    inc [hl]
    reti


    ld bc, $a084
    ld sp, $02a0
    db $10
    ld b, b
    ld l, e
    xor a
    xor a
    inc [hl]
    inc b
    ld h, h
    inc bc
    add d
    ld b, h
    and b
    sbc d
    ld b, h
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    cp d

jr_006_4b23:
    or h
    jp c, $b104

    ld bc, $9420
    ld b, h
    ld l, l
    ld bc, $9420
    ld l, [hl]
    ld b, h
    dec bc
    ld [hl-], a
    jp c, $9aaf

    db $db
    ld [hl], h
    ld d, h
    add c
    ld [hl+], a
    ld [hl+], a
    ld h, e

jr_006_4b3d:
    add d
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor c
    ld a, d
    add a
    jp $9885


    ld h, $96
    cp l
    reti


    inc b
    sbc d
    ld h, h
    ld sp, $6aba
    ld h, e
    or b
    inc hl
    ld l, d
    ld l, $44
    ld d, a
    add a
    dec d

jr_006_4b5e:
    rlca
    sbc c
    add hl, sp
    ld l, d
    ld l, d
    xor a
    xor a
    inc b
    or c
    ld bc, $9420
    ld b, h
    ld l, l
    ld bc, $9420
    ld l, [hl]
    ld b, h
    dec bc
    ld [hl-], a
    jp c, $32af

    and c
    ld b, h
    sbc h
    ld d, b
    reti


    nop
    ld h, e
    and b
    ld d, d
    add d
    or h
    jp c, $afaf

    xor [hl]
    jr nz, jr_006_4b99

    ld h, h
    ld [hl-], a
    ld h, h
    reti


    db $10
    sub h
    jr nc, jr_006_4b23

    ld b, c

jr_006_4b90:
    inc h
    cp d
    ld [hl-], a
    or h
    ld l, d
    ld h, b
    jr nz, @+$43

    reti


jr_006_4b99:
    jr nz, jr_006_4b9c

    and h

jr_006_4b9c:
    ld b, h
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    ld l, e
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld [hl], b
    ld b, $cc
    sbc c
    add hl, sp
    ld b, b
    cp [hl]
    cp l
    reti


    xor a
    xor a
    inc sp
    ld b, c
    sbc a
    add d
    adc a
    ld b, h
    ld h, c
    cp d
    or h
    jp c, $afaf

    xor a
    xor a
    xor a
    xor [hl]
    ld de, $4461
    jr nz, jr_006_4bcb

    cp d

jr_006_4bcb:
    ld bc, $0130
    add c
    sub d
    ld [de], a
    and b
    reti


    xor a
    xor a
    inc b
    inc b
    ld d, b
    call nz, $d341
    ld a, b
    ld a, d
    dec b
    sbc b
    push de
    ld [hl+], a
    add d
    or h
    ld l, d
    xor a
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld [hl], h
    rla
    ld a, b
    cp l
    jr nc, jr_006_4b90

    ld [hl], b
    ld [hl+], a
    inc [hl]
    reti


    xor a
    and h
    ld [de], a
    ld h, b
    add e
    ld b, c
    ld hl, $3291
    and e
    sub h
    ld [hl+], a
    add d
    or h
    jp c, $aeaf

    ld bc, $2393

jr_006_4c08:
    ld [hl-], a
    ld b, c
    ld [hl], d
    add d
    inc [hl]
    reti


    ld hl, $3291
    and e
    sub h
    ld [hl+], a
    add d
    ld d, h
    ld [bc], a
    inc h
    ld [de], a
    and b
    nop
    add d
    add b
    ld hl, $6a01
    ld l, e
    xor a
    xor a
    xor a
    xor a
    ld d, h
    ld [bc], a
    inc h
    ld [de], a
    ld [hl], h
    jr nz, @-$5e

    ld hl, $6133
    jr nc, jr_006_4c75

    ld l, e
    or c
    ld [hl-], a
    ld d, b
    add l
    sbc c
    cp a
    ld h, a
    ld b, b
    ld b, h
    cp d
    ld [hl], d
    jp c, $afaf

    jr nc, jr_006_4c08

    sub h
    ld b, e
    xor h
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a

jr_006_4c4a:
    ld h, l
    daa
    dec [hl]
    ld a, d
    ld b, h
    xor e
    inc [hl]
    ld d, b
    reti


    xor a
    xor a
    ld bc, $01ba
    ld b, b
    reti


    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld b, d
    ld hl, $ab44
    jp c, Jump_000_00ae

    inc d
    and b
    add e
    ld b, h
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld h, l
    daa
    dec [hl]
    ld a, d
    ld d, b
    reti


jr_006_4c75:
    ld h, c
    sub h
    ld b, b
    db $10
    add b
    inc h
    sub h
    inc de
    ld bc, $8320
    add d
    xor h
    jr nc, jr_006_4c4a

    sub h
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
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
    ld hl, $7ab1
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    ld hl, $9980
    ld de, $9c00
    ld b, $c0
    call Call_000_210f
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call Call_000_210f
    ld hl, $5540
    call Call_006_54b3
    ld a, $af
    ld [$cb5c], a
    ld hl, $4e0a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd63], a
    ld [$cd6c], a
    ld [$cd6b], a
    ld [$cd6e], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [$cb56], a
    xor a
    ldh [$ff91], a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $60
    ldh [$ff95], a
    ld a, $1d
    ld [$cb4e], a
    ld a, $22
    call Call_000_23cf
    ld a, $e3
    ld [$c0a2], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld a, $68
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    call Call_000_0ae9
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    call Call_000_32d5
    call Call_006_4f86
    call Call_006_4d50
    call Call_006_4db1
    call Call_006_4d87
    ret


Call_006_4d50:
    ld hl, $cd6d
    inc [hl]
    ld a, [$cd6e]
    bit 0, a
    jr z, jr_006_4d5e

    bit 4, [hl]
    ret nz

jr_006_4d5e:
    ld hl, $5506
    ld a, [$cd63]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cd6c]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $4d82
    call Call_000_1ef5
    ret


    nop
    nop
    xor l
    nop
    add b

Call_006_4d87:
    ld a, [$cd6e]
    bit 1, a
    ret z

    ld de, $9c91
    ld b, $ae
    ld a, [$cd6d]
    bit 4, a
    jr nz, jr_006_4d9c

    ld a, $ae
    ld b, a

jr_006_4d9c:
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
    ret


Call_006_4db1:
    ld a, [$cd63]
    add a
    ld hl, $4de2
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $06
    ret c

    push hl
    ld a, [$cd65]
    or a
    jr z, jr_006_4dd2

    ld bc, $1047
    ld hl, $4df0
    call Call_000_1ef5

jr_006_4dd2:
    pop hl
    ld a, [$cd65]
    cp [hl]
    ret z

    ld bc, $5b48
    ld hl, $4df9
    call Call_000_1ef5
    ret


    dec b
    nop
    ld [$0818], sp
    jr @+$05

    nop
    ld [$0918], sp
    jr nz, @+$0a

    jr jr_006_4df1

jr_006_4df1:
    nop
    ld a, [$0000]
    ld [$00fb], sp
    add b
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00f9], sp
    add b
    and d
    ld c, a
    ld b, b
    ld d, l
    ld [$9c05], sp
    ld d, c
    add sp, $53
    rst $38
    ld d, e
    ret nz

    ld d, l
    ld d, $50
    ld e, $4e
    ld e, d
    ld c, [hl]
    sub [hl]
    ld c, [hl]
    jp nc, Jump_000_0e4e

    ld c, a
    ld c, d
    ld c, a
    and d
    ld c, a
    rst $18
    ld d, l
    dec bc
    ld [bc], a
    sbc l
    ld d, c
    add sp, $53
    rst $38
    ld d, e
    adc a
    ld d, [hl]
    db $eb
    ld d, b
    ld [$bb00], sp
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    ld bc, $5740
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    ld bc, $5740
    ld d, h
    ld l, c
    call Call_006_53b5
    inc l
    ld c, [hl]
    and d
    ld c, a
    xor [hl]
    ld d, [hl]
    dec bc
    ld [bc], a
    ld d, $52
    add sp, $53
    rst $38
    ld d, e
    ld e, [hl]
    ld d, a
    db $eb
    ld d, b
    ld [$bb01], sp
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    dec h
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    dec h
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_53b5
    ld l, b
    ld c, [hl]
    and d
    ld c, a
    sbc a
    ld d, a
    dec b
    ld [$52a5], sp
    add sp, $53
    rst $38
    ld d, e
    ld e, [hl]
    ld d, a
    db $eb
    ld d, b
    ld [bc], a
    ld [bc], a
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    ld c, c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    ld c, c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_53b5
    and h
    ld c, [hl]
    and d
    ld c, a
    rst $28
    ld d, a
    dec bc
    ld [bc], a
    call z, $e852
    ld d, e
    rst $38
    ld d, e
    ld e, [hl]
    ld d, a
    db $eb
    ld d, b
    ld [$bb03], sp
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    ld d, l
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    ld d, l
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_53b5
    ldh [$ff4e], a
    and d
    ld c, a
    sbc a
    ld e, b
    inc c
    ld bc, $52fa
    add sp, $53
    rst $38
    ld d, e
    ld a, [hl]
    ld d, a
    db $eb
    ld d, b
    add hl, bc
    inc b
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    ld a, c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    ld a, c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_53b5
    inc e
    ld c, a
    and d
    ld c, a
    ld e, a
    ld e, c
    dec bc
    ld [bc], a
    ld d, h
    ld d, e
    add sp, $53
    rst $38
    ld d, e
    ld e, [hl]
    ld d, a
    db $eb
    ld d, b
    ld [$bb05], sp
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    sbc d
    ld d, b
    and c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_50d6
    cp e
    ld d, e
    ld b, d
    sbc h
    cp e
    ld d, e
    add d
    sbc h
    add sp, $53
    or a
    ld d, b
    and c
    ld b, b
    ld d, a
    ld d, h
    ld l, c
    call Call_006_53b5
    ld e, b
    ld c, a

Call_006_4f86:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $4f99
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
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, d
    push hl
    call Call_000_2071
    pop hl
    ld de, $9822
    call Call_006_54b8
    pop hl
    ld a, [hl+]
    ld b, a
    push hl
    or a
    jr z, jr_006_4fc3

    ld l, e
    ld h, d
    call Call_006_4fe1

jr_006_4fc3:
    ld hl, $9c42
    ld b, $03
    call Call_006_4fe1
    ld a, $74
    ldh [rLYC], a
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld bc, $4fdc
    push bc
    ld h, d
    ld l, e
    jp hl


    call Call_000_208a
    pop hl
    ret


Call_006_4fe1:
jr_006_4fe1:
    ld c, $10
    ld a, [$cb5c]

jr_006_4fe6:
    ld [hl+], a
    dec c
    jr nz, jr_006_4fe6

    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_006_4fe1

    ret


    cp c
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
    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_006_5068

    bit 1, a
    jr nz, jr_006_507d

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_006_504f

    bit 7, a
    jr nz, jr_006_5035

    ret


jr_006_5035:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    inc a
    cp $06
    jr c, jr_006_5047

    dec a
    ld [hl], a
    pop hl
    ret


jr_006_5047:
    ld [hl], a
    ld a, $48
    call Call_000_23d8
    pop hl
    ret


jr_006_504f:
    push hl
    xor a
    ld [$cd6d], a
    ld hl, $cd6c
    ld a, [hl]
    sub $01
    jr nc, jr_006_5060

    inc a
    ld [hl], a
    pop hl
    ret


jr_006_5060:
    ld [hl], a
    ld a, $48
    call Call_000_23d8
    pop hl
    ret


jr_006_5068:
    push hl
    ld a, $42
    call Call_000_23d5
    pop hl
    ld a, [$cd6c]
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


jr_006_507d:
    push hl
    ld a, $51
    call Call_000_23d5
    pop hl
    dec hl
    dec hl
    ld a, $05
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cb56], a
    ld a, $01
    ld [$c910], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld a, [$cd6b]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd69], a
    ld a, [hl]
    ld [$cd6a], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld a, [$cd6b]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cd69], a
    ld a, [hl]
    ld [$cd6a], a
    pop hl
    ret


Call_006_50d6:
    ld hl, $cd6e
    set 1, [hl]
    ldh a, [$ff8b]
    and $03
    jr nz, jr_006_50e6

    ld h, b
    ld l, c
    dec hl
    dec hl
    ret


jr_006_50e6:
    res 1, [hl]
    ld h, b
    ld l, c
    ret


    ld hl, $cd6e
    set 0, [hl]
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    ld c, [hl]
    bit 0, a
    jp nz, Jump_006_517a

    bit 1, a
    jr nz, jr_006_5163

    dec hl
    dec hl
    ld a, [$cd24]
    bit 6, a
    jr nz, jr_006_5138

    bit 7, a
    jr nz, jr_006_510c

    ret


jr_006_510c:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    cp c
    jr nc, jr_006_5137

    inc a
    push af
    ld a, [$cd6c]
    cp $05
    jr c, jr_006_5129

    ld a, [$cd65]
    add $08
    ld [$cd65], a
    jr jr_006_512d

jr_006_5129:
    inc a
    ld [$cd6c], a

jr_006_512d:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_23d8
    ret


jr_006_5137:
    ret


jr_006_5138:
    xor a
    ld [$cd6d], a
    ld a, [$cd6b]
    or a
    jr z, jr_006_5162

    dec a
    push af
    ld a, [$cd6c]
    or a
    jr nz, jr_006_5154

    ld a, [$cd65]
    sub $08
    ld [$cd65], a
    jr jr_006_5158

jr_006_5154:
    dec a
    ld [$cd6c], a

jr_006_5158:
    pop af
    ld [$cd6b], a
    ld a, $48
    call Call_000_23d8
    ret


jr_006_5162:
    ret


jr_006_5163:
    inc hl
    ld a, [hl]
    ld [$cd6c], a
    ld a, $51
    call Call_000_23d5
    ld a, $00
    ld [$cd63], a
    xor a
    ld [$cd65], a
    ld hl, $4e02
    ret


Jump_006_517a:
    push hl
    ld a, [$cd6b]
    ld hl, $cd6f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr nz, jr_006_5194

    inc hl
    inc hl
    ld a, $42
    call Call_000_23d5
    ret


jr_006_5194:
    ld a, $51
    call Call_000_23d5
    dec hl
    dec hl
    ret


    ret


    call Call_006_520c
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $01
    ld [$cd63], a
    ld a, [$b8d2]
    ld hl, $986d
    call Call_006_51fe
    ld a, [$b8d3]
    ld hl, $988d
    call Call_006_51fe
    ld a, [$b8d4]
    ld hl, $98ad
    call Call_006_51fe
    ld a, [$b8d5]
    ld hl, $98cd
    call Call_006_51fe
    ld a, [$b8d6]
    ld hl, $98ed
    call Call_006_51fe
    ld a, [$b8d7]
    ld hl, $990d
    call Call_006_51fe
    ld a, [$b8d8]
    ld hl, $992d
    call Call_006_51fe
    ld a, [$b8d9]
    ld hl, $994d
    call Call_006_51fe
    ld a, [$b8da]
    ld hl, $996d
    call Call_006_51fe
    ret


Call_006_51fe:
    push hl
    call Call_000_3215
    pop hl
    ld a, [$ccd0]
    ld [hl+], a
    ld a, [$ccd1]
    ld [hl+], a
    ret


Call_006_520c:
    ld hl, $cd6f
    ld bc, $000a
    call ClearMem
    ret


    call Call_006_520c
    ld a, [$b8a7]
    or a
    jr nz, jr_006_522b

    ld a, $13
    call Call_006_54fb
    jr z, jr_006_522b

    ld a, $04
    call Call_006_526e

jr_006_522b:
    ld a, [$b8a8]
    or a
    jr nz, jr_006_523d

    ld a, $14
    call Call_006_54fb
    jr z, jr_006_523d

    ld a, $05
    call Call_006_526e

jr_006_523d:
    ld a, [$b8aa]
    or a
    jr nz, jr_006_524f

    ld a, $15
    call Call_006_54fb
    jr z, jr_006_524f

    ld a, $06
    call Call_006_526e

jr_006_524f:
    ld a, [$b8a9]
    or a
    jr nz, jr_006_5261

    ld a, $16
    call Call_006_54fb
    jr z, jr_006_5261

    ld a, $07
    call Call_006_526e

jr_006_5261:
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $02
    ld [$cd63], a
    ret


Call_006_526e:
    push af
    ld hl, $cd6f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], $01
    pop af
    add a
    ld hl, $5291
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $dc
    ld b, $0e

jr_006_528c:
    ld [hl+], a
    dec b
    jr nz, jr_006_528c

    ret


    ld h, e
    sbc b
    add e
    sbc b
    and e
    sbc b
    jp $e398


    sbc b
    inc bc
    sbc c
    inc hl
    sbc c
    ld b, e
    sbc c
    ld h, e
    sbc c
    add e
    sbc c
    call Call_006_520c
    ld a, [$b898]
    or a
    jr nz, jr_006_52b3

Jump_006_52ae:
    ld a, $01
    call Call_006_526e

jr_006_52b3:
    ld a, [$b8ea]
    cp $02
    jr nc, jr_006_52bf

    ld a, $02
    call Call_006_526e

jr_006_52bf:
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $03
    ld [$cd63], a
    ret


    call Call_006_520c
    ld a, [$b8b3]
    or a
    jr nz, jr_006_52e1

    ld a, $02
    call Call_006_54fb
    jr z, jr_006_52e1

    ld a, $03
    call Call_006_526e

jr_006_52e1:
    ld a, [$b945]
    cp $08
    jr nc, jr_006_52ed

    ld a, $08
    call Call_006_526e

jr_006_52ed:
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $04
    ld [$cd63], a
    ret


    call Call_006_520c
    call Call_006_531f
    jr nc, jr_006_5307

    ld a, $06
    call Call_006_526e

jr_006_5307:
    ld a, [$b942]
    or a
    jr nz, jr_006_5312

    ld a, $09
    call Call_006_526e

jr_006_5312:
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $05
    ld [$cd63], a
    ret


Call_006_531f:
    push hl
    push de
    push bc
    ld a, [$b885]
    ld hl, $0000
    or a
    jr z, jr_006_5333

    ld b, a
    ld de, $0078

jr_006_532f:
    add hl, de
    dec b
    jr nz, jr_006_532f

jr_006_5333:
    ld d, h
    ld e, l
    ld a, [$b884]
    ld c, $1e
    call Call_000_071e
    ld a, [NextDay]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    ld de, $0086
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop bc
    pop de
    pop hl
    ret


    call Call_006_520c
    ld a, [$b942]
    cp $c7
    jr nc, jr_006_5367

    xor a
    call Call_006_526e
    ld a, $01
    call Call_006_526e

jr_006_5367:
    ld a, [$b8bf]
    or a
    jr nz, jr_006_5379

    ld a, $55
    call Call_006_54fb
    jr z, jr_006_5379

    ld a, $02
    call Call_006_526e

jr_006_5379:
    ld a, [$b8bd]
    or a
    jr nz, jr_006_538b

    ld a, $53
    call Call_006_54fb
    jr z, jr_006_538b

    ld a, $03
    call Call_006_526e

jr_006_538b:
    ld a, [$b8be]
    or a
    jr nz, jr_006_539d

    ld a, $54
    call Call_006_54fb
    jr z, jr_006_539d

    ld a, $04
    call Call_006_526e

jr_006_539d:
    ld a, [$b8d1]
    or a
    jr nz, jr_006_53a8

    ld a, $08
    call Call_006_526e

jr_006_53a8:
    xor a
    ld [$cd6c], a
    ld [$cd6b], a
    ld a, $06
    ld [$cd63], a
    ret


Call_006_53b5:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    call Call_000_0629
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld a, $10
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ldh a, [$ff97]
    add $13
    ldh [$ff97], a
    pop hl
    ret


    xor a
    ld [$cd6e], a
    push bc
    ld a, $ff
    ld [$cd66], a
    ld hl, $9c42
    ld a, l
    ld [$cd67], a
    ld a, h
    ld [$cd68], a
    pop hl
    ret


    push bc

jr_006_5400:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    ld a, [$cd66]
    inc a
    ld [$cd66], a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $af
    jr z, jr_006_5445

    cp $ff
    jr z, jr_006_5453

    ld c, a
    call Call_000_0629
    ld a, [$cd67]
    ld e, a
    ld a, [$cd68]
    ld d, a
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    inc de
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    ld a, $01
    ld [hl+], a
    ld [hl], c
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


jr_006_5445:
    ld de, $9c82
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    dec bc
    jr jr_006_5400

jr_006_5453:
    pop hl
    inc hl
    inc hl
    ret


    push bc
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cd66]
    inc a
    ld [$cd66], a
    cp $10
    jr z, jr_006_5471

    cp $20
    jr z, jr_006_54af

    jr jr_006_547e

jr_006_5471:
    ld c, a
    ld de, $9c82
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    ld a, c

jr_006_547e:
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld c, a
    call Call_000_0629
    ld a, [$cd67]
    ld e, a
    ld a, [$cd68]
    ld d, a
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    inc de
    ld a, e
    ld [$cd67], a
    ld a, d
    ld [$cd68], a
    ld a, $01
    ld [hl+], a
    ld [hl], c
    inc hl
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    pop hl
    dec hl
    dec hl

Jump_006_54ae:
    ret


jr_006_54af:
    pop hl
    inc hl
    inc hl
    ret


Call_006_54b3:
    ld de, $9822
    ld b, $0b

Call_006_54b8:
jr_006_54b8:
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
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_006_54b8

    ret


    ld de, $99c2
    ld b, $03
    jr jr_006_54b8

Call_006_54fb:
    ld hl, $b8f8
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    inc d
    ld d, l
    jr nz, jr_006_555f

    inc l
    ld d, l
    jr c, jr_006_5563

    jr nz, @+$57

    inc l
    ld d, l
    inc l
    ld d, l
    db $10
    jr jr_006_5527

    inc h
    db $10
    jr nc, jr_006_552b

    inc a
    db $10
    ld c, b
    db $10
    ld d, h
    db $10
    jr jr_006_5533

    inc h
    db $10
    jr nc, jr_006_5537

jr_006_5527:
    inc a
    db $10
    ld c, b
    db $10

jr_006_552b:
    ld d, h
    db $10
    jr jr_006_553f

    inc h
    db $10
    jr nc, jr_006_5543

jr_006_5533:
    inc a
    db $10
    ld c, b
    db $10

jr_006_5537:
    ld d, h
    db $10
    jr jr_006_554b

    inc h
    db $10
    jr nc, jr_006_554f

jr_006_553f:
    inc a
    xor a
    xor a
    inc b

jr_006_5543:
    or c
    ld bc, $9420
    ld b, h
    cp [hl]
    ld [bc], a
    and d

jr_006_554b:
    or c
    inc sp
    sub h
    xor a

jr_006_554f:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_555f:
    xor a
    xor a
    jr nc, jr_006_55a6

jr_006_5563:
    ld b, h
    sub $7a
    or [hl]
    xor a
    xor a
    xor a

jr_006_556a:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $10
    ld bc, $1230
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]
    xor a
    xor a
    xor a
    xor a
    xor a
    jr nz, jr_006_5595

    ld h, h
    ld [hl-], a
    ld b, c
    ld [hl-], a
    db $10
    ld [bc], a
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]
    xor a
    cp [hl]
    ld [bc], a
    add $32

jr_006_5595:
    ld b, c
    ld [hl-], a
    db $10
    ld [bc], a
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]
    xor a
    jr nc, jr_006_556a

    ld h, h
    ld b, h
    ld b, h

jr_006_55a6:
    sub $7a
    or [hl]
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc h
    ld b, h
    jr nc, jr_006_55f9

    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]
    xor a
    xor a
    xor a
    xor a
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]
    ld b, c
    reti


    dec d
    ld a, d
    add hl, hl
    add a
    ld [hl], h
    xor a
    nop
    ld [hl], e
    inc hl
    inc sp
    reti


    ld e, $d7
    dec [hl]
    sbc c
    ld [hl], h
    inc b
    ld hl, $4333
    jp c, $afff

    xor a
    xor a
    xor a
    xor a
    jr nc, jr_006_5629

    ld b, h
    sub $7a
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
    xor a
    xor a
    xor a

jr_006_55f9:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec d
    bit 0, h
    jr nc, jr_006_5648

    xor h
    xor h
    xor h
    xor h
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, jr_006_565b

    xor h
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, jr_006_5669

    xor h
    xor h
    xor h

jr_006_5629:
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    add hl, sp
    rlca
    ld l, c
    adc c
    add hl, de
    ld h, $44
    jr nc, jr_006_567c

    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    ld b, l
    daa
    ld b, h
    jr nc, jr_006_5688

    xor h
    xor h
    xor h

jr_006_5648:
    xor h
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    add l
    sbc b
    dec d
    jr z, jr_006_565b

    ld b, h
    jr nc, jr_006_569b

    xor h
    xor h
    ld a, [bc]

jr_006_565b:
    ld a, [bc]
    sbc $af
    xor a
    xor a
    ld b, [hl]
    sbc c
    or [hl]
    sbc c
    ld b, h
    jr nc, @+$45

    xor h
    xor h

jr_006_5669:
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    xor a
    res 1, c
    sbc b
    add hl, de
    add [hl]
    ld a, d
    ld b, h
    jr nc, jr_006_56bc

    xor h
    ld a, [bc]
    ld a, [bc]

jr_006_567c:
    sbc $af
    xor a
    xor a
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, jr_006_56ca

    xor h

jr_006_5688:
    xor h
    xor h
    ld a, [bc]
    ld a, [bc]
    sbc $af
    xor a
    ld hl, $c780
    jr nc, @+$03

    jr nc, jr_006_56d9

    ld b, c
    reti


    dec d
    ld a, d
    add hl, hl

jr_006_569b:
    add a
    ld [hl], h
    xor a
    nop
    ld [hl], e
    inc hl
    inc sp
    reti


    ld e, $d7
    dec [hl]
    sbc c
    ld [hl], h
    inc b
    ld hl, $4333
    jp c, $afff

    xor a
    xor a
    db $10
    ld bc, $1230
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
    or [hl]

jr_006_56bc:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_56ca:
    xor a
    xor a
    xor a
    xor a
    xor a
    dec d
    ld h, l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_56d9:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rla
    ld a, b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, bc
    ld c, c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, l
    sbc c
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
    daa
    ld a, d
    db $d3
    ld a, d
    dec d
    ld h, l
    xor a
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
    ld a, d
    db $d3
    ld a, d
    rla
    ld a, b
    xor a
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
    ld a, d
    db $d3
    ld a, d
    add hl, bc
    ld c, c
    xor a
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
    ld a, d
    db $d3
    ld a, d
    ld d, l
    sbc c
    ld h, l
    ld a, d
    xor a
    xor a
    xor a
    xor a
    xor a

jr_006_574c:
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
    xor a
    ld hl, $c780
    jr nc, jr_006_5764

    cp [hl]

jr_006_5764:
    ld [bc], a
    and d
    ld b, c
    reti


    dec d
    ld a, d
    add hl, hl
    add a
    ld [hl], h
    xor a
    nop
    ld [hl], e
    inc hl
    inc sp
    reti


    ld e, $d7
    dec [hl]
    sbc c
    ld [hl], h
    inc b
    ld hl, $4333
    jp c, $21ff

    add b
    rst $00
    jr nc, @+$03

    jr nc, jr_006_574c

    ld h, h
    ld b, h
    ld b, c
    reti


    dec d
    ld a, d
    add hl, hl
    add a
    ld [hl], h
    xor a
    nop
    ld [hl], e
    inc hl
    inc sp
    reti


    ld e, $d7
    dec [hl]
    sbc c
    ld [hl], h
    inc b
    ld hl, $4333
    jp c, Jump_000_20ff

    ld [de], a
    ld h, h
    ld [hl-], a
    ld b, c
    ld [hl-], a
    db $10
    ld [bc], a
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    or c
    sub d
    ld [bc], a
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
    cp [hl]
    ld [bc], a
    add $32
    ld b, c
    ld [hl-], a
    db $10
    ld [bc], a
    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec d
    ld b, $c9
    xor a
    xor a
    xor a
    xor a
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
    xor a
    rst $00
    add a
    xor a
    xor a
    xor a
    xor a
    xor a
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

jr_006_586c:
    xor a
    xor a
    xor a
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
    xor a
    xor a
    xor a
    jr nc, jr_006_586c

    ld h, h
    ld b, h
    ld b, h
    sub $7a
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jr jr_006_593c

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

jr_006_593c:
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
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc h
    ld b, h
    jr nc, jr_006_59a8

    cp [hl]
    ld [bc], a
    and d
    ld b, h
    sub $7a
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

jr_006_5976:
    xor a
    xor a
    xor a
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
    xor a
    xor a
    xor a
    xor a
    ld [hl-], a
    add c
    or b
    inc b
    xor a
    xor a
    xor a
    xor a

jr_006_59a8:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl-], a
    add d
    ld d, b
    ld hl, $afaf
    xor a
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
    ld h, e
    ld d, d
    add c
    db $10
    jr nz, jr_006_5976

    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld sp, $8010
    ld b, h
    adc a
    ld b, h
    ld h, c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, de
    ld b, $99
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    jp $c687


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
    xor a
    ret z

    ld [de], a
    or c
    sub d
    ld [bc], a
    ld h, l
    daa
    dec [hl]
    ld a, d
    ld b, h
    xor e
    xor a
    xor a
    xor a
    xor a
    ldh a, [rLY]
    cp $68
    jr nc, jr_006_5a46

    ld hl, $5a53
    ld a, [$cd64]
    cp $07
    jr nc, jr_006_5a46

    add a
    add a
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld b, [hl]
    inc hl

jr_006_5a28:
    ldh a, [rLY]
    cp b
    jr nz, jr_006_5a28

jr_006_5a2d:
    ld a, [hl+]
    ldh [rSCY], a
    ld b, [hl]
    inc hl

jr_006_5a32:
    ldh a, [rLY]
    cp b

jr_006_5a35:
    jr nz, jr_006_5a32

    ld a, [$cd65]
    add [hl]
    ldh [rSCY], a
    inc hl
    ld a, [hl]
    ldh [rLYC], a
    ld hl, $cd64
    inc [hl]
    ret


jr_006_5a46:
    xor a
    ld [$cd64], a
    ldh a, [$ff91]
    ldh [rSCY], a
    ld a, $12
    ldh [rLYC], a
    ret


    inc d
    add sp, $18
    nop
    ld e, $00
    nop
    nop
    jr nz, jr_006_5a35

    inc h
    db $fc

jr_006_5a5f:
    ld a, [hl+]
    nop
    nop
    nop
    inc l
    ret nc

    jr nc, jr_006_5a5f

    ld [hl], $00
    nop
    nop
    jr c, jr_006_5a2d

    inc a
    db $f4
    ld b, d
    nop
    nop
    nop
    ld b, h
    cp b
    ld c, b
    ldh a, [$ff4e]
    nop
    nop
    nop
    ld d, b
    xor b
    ld d, h
    db $ec
    ld e, d
    nop
    nop
    nop
    ld e, h
    and b
    ld h, b
    nop
    ld l, b
    nop
    nop
    nop
    ld a, [$cb4a]
    or a
    jr nz, jr_006_5ace

    ld a, [$cb7c]
    or a
    ret nz

    ld a, [$cb84]
    or a
    jr nz, jr_006_5aa4

    ld a, [GrabbingDog3?]
    or a
    jr nz, jr_006_5ab6

    jr jr_006_5aad

jr_006_5aa4:
    ld a, [$c60d]
    add $a9
    call Call_000_152f
    ret


jr_006_5aad:
    ld a, [$c60d]
    add $47
    call Call_000_152f
    ret


jr_006_5ab6:
    ld a, [$b8db]
    or a
    jr nz, jr_006_5ac5

    ld a, [$c60d]
    add $78
    call Call_000_152f
    ret


jr_006_5ac5:
    ld a, [$c60d]
    add $70
    call Call_000_152f
    ret


jr_006_5ace:
    ld a, [$c60d]
    add $4b
    call Call_000_152f
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_006_5b15

    ld a, [$cb84]
    or a
    jr nz, jr_006_5aeb

    ld a, [GrabbingDog3?]
    or a
    jr nz, jr_006_5afd

    jr jr_006_5af4

jr_006_5aeb:
    ld a, [$c60d]
    add $a1
    call Call_000_152f
    ret


jr_006_5af4:
    ld a, [$c60d]
    add $00
    call Call_000_152f
    ret


jr_006_5afd:
    ld a, [$b8db]
    or a
    jr nz, jr_006_5b0c

    ld a, [$c60d]
    add $74
    call Call_000_152f
    ret


jr_006_5b0c:
    ld a, [$c60d]
    add $6c
    call Call_000_152f
    ret


jr_006_5b15:
    ld a, [$c60d]
    add $14
    call Call_000_152f
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_006_5b3c

    ld a, [$cb84]
    or a
    jr z, jr_006_5b33

    ld a, [$c60d]
    add $a1
    call Call_000_152f
    ret


jr_006_5b33:
    ld a, [$c60d]
    add $04
    call Call_000_152f
    ret


jr_006_5b3c:
    ld a, [$c60d]
    add $18
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $08
    call Call_000_152f
    ret


    ld a, [$cb4a]
    or a
    jr nz, jr_006_5b6c

    ld a, [$cb84]
    or a
    jr z, jr_006_5b63

    ld a, [$c60d]
    add $a5
    call Call_000_152f
    ret


jr_006_5b63:
    ld a, [$c60d]
    add $0c
    call Call_000_152f
    ret


jr_006_5b6c:
    ld a, [$c60d]
    add $10
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $1c
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $22
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $26
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $2a
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $2e
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $32
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $36
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $3a
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $3f
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $43
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $80
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $a1
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $a5
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $a9
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $ad
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $b1
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $4f
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $57
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $5b
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $5f
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $64
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $8f
    call Call_000_152f
    ret


    ld a, [$c60d]
    add $93
    call Call_000_152f
    ret


    ld a, $97
    call Call_000_152f
    ret


    ld a, $98
    call Call_000_152f
    ret


    ld a, $86
    call Call_000_152f
    ret


    ld a, $87
    call Call_000_152f
    ret


    ld a, $88
    call Call_000_152f
    ret


    ld a, $89
    call Call_000_152f
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $00
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $01
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $02
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $03
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $04
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $05
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $06
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $07
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $08
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $09
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $08
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0a
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0b
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0c
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0d
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0e
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $0f
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $10
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $11
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $12
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $13
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $0c
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $15
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $16
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $17
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld bc, $0001
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
    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $18
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $19
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1a
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1b
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_61ea

    cp $01
    jr z, jr_006_61fa

    cp $02
    jr z, jr_006_620b

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_61ea:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_61fa:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_620b:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $67
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6268

    cp $01
    jr z, jr_006_6278

    cp $02
    jr z, jr_006_6289

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6268:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6278:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6289:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_62e6

    cp $01
    jr z, jr_006_62f6

    cp $02
    jr z, jr_006_6307

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_62e6:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_62f6:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6307:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $1e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6364

    cp $01
    jr z, jr_006_6374

    cp $02
    jr z, jr_006_6385

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6364:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6374:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6385:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $1f
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $20
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6419

    cp $01
    jr z, jr_006_6429

    cp $02
    jr z, jr_006_643a

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6419:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6429:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_643a:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $21
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $22
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_64ce

    cp $01
    jr z, jr_006_64de

    cp $02
    jr z, jr_006_64ef

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_64ce:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_64de:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_64ef:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $23
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $24
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6583

    cp $01
    jr z, jr_006_6593

    cp $02
    jr z, jr_006_65a4

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6583:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6593:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_65a4:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $25
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $26
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6638

    cp $01
    jr z, jr_006_6648

    cp $02
    jr z, jr_006_6659

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6638:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6648:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6659:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $27
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $28
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_66ed

    cp $01
    jr z, jr_006_66fd

    cp $02
    jr z, jr_006_670e

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_66ed:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_66fd:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_670e:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $29
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$cb80], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_67a6

    cp $01
    jr z, jr_006_67b6

    cp $02
    jr z, jr_006_67c7

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_67a6:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_67b6:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_67c7:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $2b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_682a

    cp $01
    jr z, jr_006_683a

    cp $02
    jr z, jr_006_684b

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_682a:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_683a:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_684b:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $ff
    ld [$c643], a
    ld a, $10
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_68ae

    cp $01
    jr z, jr_006_68c3

    cp $02
    jr z, jr_006_68d9

    ld a, $2f
    ld [$c642], a
    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_68ae:
    ld a, $2c
    ld [$c642], a
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $08
    ld [$c64b], a
    ret


jr_006_68c3:
    ld a, $2d
    ld [$c642], a
    ld a, [PlayerXPosition]
    sub $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_68d9:
    ld a, $2e
    ld [$c642], a
    ld a, [PlayerXPosition]
    add $08
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $30
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1a
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_693e

    cp $01
    jr z, jr_006_694e

    cp $02
    jr z, jr_006_695f

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_693e:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_694e:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_695f:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $31
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $19
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_69bc

    cp $01
    jr z, jr_006_69cc

    cp $02
    jr z, jr_006_69dd

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $1c
    ld [$c64b], a
    ret


jr_006_69bc:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0a
    ld [$c64b], a
    ret


jr_006_69cc:
    ld a, [PlayerXPosition]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_69dd:
    ld a, [PlayerXPosition]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $32
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $1c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6a35

    cp $01
    jr z, jr_006_6a45

    cp $02
    jr z, jr_006_6a56

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6a35:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6a45:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6a56:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $33
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6ab3

    cp $01
    jr z, jr_006_6ac3

    cp $02
    jr z, jr_006_6ad4

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6ab3:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6ac3:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6ad4:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $34
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $35
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6b31

    cp $01
    jr z, jr_006_6b41

    cp $02
    jr z, jr_006_6b52

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6b31:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6b41:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6b52:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $35
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6bb5

    cp $01
    jr z, jr_006_6bc5

    cp $02
    jr z, jr_006_6bd6

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $18
    ld [$c64b], a
    ret


jr_006_6bb5:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $0c
    ld [$c64b], a
    ret


jr_006_6bc5:
    ld a, [PlayerXPosition]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6bd6:
    ld a, [PlayerXPosition]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $36
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $20
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c650], a
    ld [$c645], a
    ld [$c644], a
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $37
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6c73

    cp $01
    jr z, jr_006_6c83

    cp $02
    jr z, jr_006_6c94

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6c73:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $06
    ld [$c64b], a
    ret


jr_006_6c83:
    ld a, [PlayerXPosition]
    sub $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6c94:
    ld a, [PlayerXPosition]
    add $0c
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ret


    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3c
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $3d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6d2c

    cp $01
    jr z, jr_006_6d3c

    cp $02
    jr z, jr_006_6d4d

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6d2c:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6d3c:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6d4d:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3e
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $3f
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $40
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $41
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6e4c

    cp $01
    jr z, jr_006_6e5c

    cp $02
    jr z, jr_006_6e6d

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6e4c:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6e5c:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6e6d:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $42
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $43
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $44
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $45
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $80
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    ld a, $10
    ld [$c650], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $48
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $49
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_6fad

    cp $01
    jr z, jr_006_6fbd

    cp $02
    jr z, jr_006_6fce

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_6fad:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_6fbd:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_6fce:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_702a

    cp $01
    jr z, jr_006_703a

    cp $02
    jr z, jr_006_704b

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_702a:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_703a:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_704b:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $4d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $36
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_70a5

    cp $01
    jr z, jr_006_70b5

    cp $02
    jr z, jr_006_70c6

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_70a5:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_70b5:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_70c6:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4e
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $4f
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $50
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $51
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $07
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $52
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $53
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $54
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $01
    ld [$c630], a
    ld a, $55
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $56
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $28
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7286

    cp $01
    jr z, jr_006_7296

    cp $02
    jr z, jr_006_72a7

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7286:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7296:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_72a7:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $57
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7301

    cp $01
    jr z, jr_006_7311

    cp $02
    jr z, jr_006_7322

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7301:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7311:
    ld a, [PlayerXPosition]

Call_006_7314:
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7322:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $59
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $37
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [PlayerXPosition]
    ld [$c64a], a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


    ld a, [MapLocation]
    cp $01
    ret nz

    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5a
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $40
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_73b8

    cp $01
    jr z, jr_006_73c8

    cp $02
    jr z, jr_006_73d9

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $10
    ld [$c64b], a
    ret


jr_006_73b8:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_73c8:
    ld a, [PlayerXPosition]
    sub $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_73d9:
    ld a, [PlayerXPosition]
    add $10
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5b
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7436

    cp $01
    jr z, jr_006_7446

    cp $02
    jr z, jr_006_7457

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7436:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7446:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7457:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5c
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_74b4

    cp $01
    jr z, jr_006_74c4

    cp $02
    jr z, jr_006_74d5

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_74b4:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_74c4:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_74d5:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7532

    cp $01
    jr z, jr_006_7542

    cp $02
    jr z, jr_006_7553

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7532:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7542:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7553:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_75b0

    cp $01
    jr z, jr_006_75c0

    cp $02
    jr z, jr_006_75d1

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_75b0:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_75c0:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_75d1:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $5f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_762e

    cp $01
    jr z, jr_006_763e

    cp $02
    jr z, jr_006_764f

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_762e:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_763e:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_764f:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $60
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_76ac

    cp $01
    jr z, jr_006_76bc

    cp $02
    jr z, jr_006_76cd

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_76ac:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_76bc:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_76cd:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $61
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $62
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $63
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $64
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $65
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $06
    ld [hl+], a
    ld a, [$c60b]
    sub $18
    ld [hl+], a
    ld a, $00
    ld [$c630], a
    ld a, $66
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $69
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6a
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6b
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $6c
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6d
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_790e

    cp $01
    jr z, jr_006_791e

    cp $02
    jr z, jr_006_792f

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_790e:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_791e:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_792f:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6e
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_798c

    cp $01
    jr z, jr_006_799c

    cp $02
    jr z, jr_006_79ad

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_798c:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_799c:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_79ad:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $6f
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7a0a

    cp $01
    jr z, jr_006_7a1a

    cp $02
    jr z, jr_006_7a2b

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7a0a:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7a1a:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7a2b:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $70
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $3c
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7a88

    cp $01
    jr z, jr_006_7a98

    cp $02
    jr z, jr_006_7aa9

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7a88:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7a98:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7aa9:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $71
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld a, $00
    ld [$c620], a
    ld a, $01
    ld [$c640], a
    ld a, $02
    ld [$c641], a
    ld a, $72
    ld [$c642], a
    ld a, $ff
    ld [$c643], a
    ld a, $32
    ld [$c651], a
    ld a, $01
    ld [$c64e], a
    xor a
    ld [$c645], a
    ld [$c644], a
    ld [$c650], a
    ld a, [$c60d]
    cp $00
    jr z, jr_006_7b3d

    cp $01
    jr z, jr_006_7b4d

    cp $02
    jr z, jr_006_7b5e

    ld a, [PlayerXPosition]
    ld [$c64a], a
    inc a
    ld a, [$c60b]
    sub $20
    ld [$c64b], a
    ret


jr_006_7b3d:
    ld a, [PlayerXPosition]
    inc a
    ld [$c64a], a
    ld a, [$c60b]
    add $10
    ld [$c64b], a
    ret


jr_006_7b4d:
    ld a, [PlayerXPosition]
    sub $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


jr_006_7b5e:
    ld a, [PlayerXPosition]
    add $18
    ld [$c64a], a
    ld a, [$c60b]
    sub $08
    ld [$c64b], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $73
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $74
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


    ld de, $c620
    ld hl, $609e
    ld b, $20
    call Call_000_210f
    ld hl, $c626
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [PlayerXPosition]
    sub $01
    ld [hl+], a
    ld a, [$c60b]
    sub $1a
    ld [hl+], a
    ld a, $75
    ld hl, CurrentTool
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
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
    and b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    and l
    nop
    rst $38
    ld de, $8000
    rrca
    rst $38
    ld a, a
    ret nz

    ld b, b
    inc hl
    nop
    ld [bc], a
    ld bc, $0160
    and l
    ld [bc], a
    cp e
    ldh a, [$ffd0]
    jr nz, jr_006_7c6a

jr_006_7c6a:
    db $10
    ldh a, [$fff0]
    and l
    inc bc
    rlca
    dec e
    dec b
    jr nz, jr_006_7c74

jr_006_7c74:
    inc b
    rlca
    rlca
    ld a, [bc]
    inc b
    ld [$0203], sp
    dec b
    sbc a
    ld bc, $feff
    inc bc
    ld [bc], a
    inc hl
    nop
    ld h, h
    dec b
    ld a, a
    ld hl, sp+$40
    ld b, $b3
    dec b
    ld h, e
    rlca
    cp $fe
    ld bc, $f7f8
    rst $28
    ldh a, [$ffe7]
    ldh [$ffc7], a
    ld hl, $3f09
    nop
    ret nz

    db $e3
    ccf
    nop
    ld d, b
    rlca
    ld b, d
    nop
    jr nc, jr_006_7cb1

    ld hl, sp+$00
    rlca
    ld sp, hl
    ld hl, sp+$09
    ld bc, $0a62
    nop

jr_006_7cb1:
    ccf
    rst $18
    rra
    rst $08
    sbc e
    rrca
    rst $00
    add e
    dec b
    rst $38
    cp $40
    ld b, $19
    nop
    cp $fa
    jr nz, jr_006_7cc9

    db $fc
    ld hl, $c000
    add e

jr_006_7cc9:
    add b
    nop
    add c
    rst $38
    nop
    ld b, $00
    ld [$1000], sp
    nop
    inc hl
    rst $38
    nop
    ld c, h
    inc bc
    nop
    rst $38
    rra
    ldh [$ffe0], a
    sbc h
    ld [hl], d
    rrca
    ld h, l
    ld b, $f0
    ld c, $0f
    ld [hl], d
    db $10
    ld h, e
    ld b, $07
    rst $38
    add e
    inc bc
    ld bc, $0103
    pop bc
    nop
    ld hl, $004e
    inc bc
    adc b
    nop
    ld h, h
    ld h, h
    ld a, [bc]
    ld h, d
    ld de, $217f
    nop
    rst $18
    db $fc
    ld hl, sp-$04
    ld hl, sp-$03
    ld [hl+], a
    nop
    ld sp, hl
    ldh a, [$fffe]
    jr nz, jr_006_7d0e

jr_006_7d0e:
    db $f4
    sub b
    inc c
    and b
    rra
    inc hl
    inc e
    rst $38
    ld c, a
    inc sp
    ld e, h
    inc l
    cp b
    ld e, b
    or b
    ld d, b
    rst $38
    ld [hl], b
    or b
    nop
    rrca
    nop
    add b
    add b
    ld [hl], b
    rst $28
    ldh a, [$ff8f]
    rra
    db $10
    call nz, $e015
    nop
    inc bc
    rst $18
    inc bc
    inc e
    rra
    db $e3
    ldh a, [rDIV]
    ld bc, $6012
    rst $38
    ld a, [bc]
    ldh a, [$ff89]
    ld [hl], b
    push hl
    sbc b
    ld [hl], l
    ld l, b
    rst $38
    dec sp
    inc [hl]
    dec de
    inc d
    dec e
    ld a, [de]
    ld a, a
    ccf
    or $23
    nop
    ccf
    rra
    jr nz, jr_006_7d54

jr_006_7d54:
    ld e, a
    ccf
    rst $18
    ld sp, hl
    rst $30
    or $f8
    rst $30
    dec h
    nop
    pop af
    xor $f3
    db $ed
    rst $18
    ld [hl], c
    or b
    ld [hl], d
    or b
    ld [hl], b
    jr nz, jr_006_7d6a

jr_006_7d6a:
    add hl, sp

jr_006_7d6b:
    reti


    rst $38
    rst $38
    ld e, $ff
    ret c

    ld a, a
    db $10
    ldh a, [rNR10]
    ei
    jr nc, jr_006_7da8

    add d
    jr jr_006_7d6b

    ld hl, sp+$08
    ld hl, sp+$00
    cp a
    ldh a, [rP1]
    rra
    db $10
    jr jr_006_7d9e

    ld h, c
    inc e
    rra
    rst $38
    rra
    ccf
    jr nz, jr_006_7dcd

    nop
    rra
    nop
    dec e
    rst $28
    ld a, [de]
    sbc h
    dec de
    inc e
    jr nz, jr_006_7d99

jr_006_7d99:
    jr c, jr_006_7dd2

    cp $7f
    pop af

jr_006_7d9e:
    rst $38
    ld [hl], $fd
    ld de, $df3f
    dec h
    nop
    rst $38
    rra

jr_006_7da8:
    rst $28
    rra
    rst $28
    sbc a
    ld l, a
    di
    db $ed
    sbc $21
    nop
    pop af
    xor $f0
    rst $28
    inc hl
    nop
    ld a, h
    jr nz, @+$01

    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    cp b
    adc b
    db $fc
    ld l, h
    rst $38
    ld a, h
    or h
    ld a, $c6
    ld d, $ea
    ldh a, [rP1]
    db $fd

jr_006_7dcd:
    ld [hl], b
    ld h, b
    dec b
    ld h, b
    nop

jr_006_7dd2:
    ld bc, $0301
    inc bc
    ld a, a
    nop
    nop
    inc b
    nop
    ld e, $00
    ld c, $40
    nop
    db $fd
    inc c
    sub b
    ld [hl+], a
    add b
    add b
    nop
    nop
    ld b, b
    nop
    rst $38
    ld a, l
    add hl, bc
    dec e
    dec c
    dec e
    dec c
    dec sp
    ld [hl+], a
    rst $38
    ld a, [hl]
    ld l, l
    ld a, h
    ld e, e
    db $fc
    jp $8bf4


    add e
    sbc a
    ld l, a
    ld hl, $c100
    dec b
    ld b, e
    nop
    add l
    dec b
    dec b
    ld b, $17
    rst $38
    jp hl


    rla
    add sp, $03
    db $fc
    ld [bc], a
    db $fd
    ld [de], a
    rst $38
    db $ed
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    ld [hl], a
    adc b
    inc bc
    cp $f0
    ld de, $20e0
    rst $38
    rlca
    ld a, a
    add b

jr_006_7e25:
    ld a, a
    rst $38
    add a
    rlc e
    jr @+$0a

    add c
    ld bc, $df03
    ld [bc], a
    rrca
    ld [$c0ff], sp
    ld b, b
    ld h, $c0
    and a
    rst $38

jr_006_7e3a:
    add b
    ld sp, $f020
    rrca
    ldh [$ff1f], a
    and b
    rst $38
    ld e, a
    jr nz, jr_006_7e25

    inc [hl]
    res 6, h
    ld c, e

jr_006_7e4a:
    or [hl]
    rst $20
    ld c, c
    cp $01
    and a
    dec b
    and e
    ld b, $f2
    db $ed
    ldh a, [c]
    or a

jr_006_7e57:
    db $ed
    ld a, [$21e5]
    nop
    ei
    db $e4
    jr nz, jr_006_7e60

jr_006_7e60:
    inc [hl]
    db $fd
    db $fc
    db $10
    ld d, $d0
    nop
    add sp, $10
    call nz, $ff38
    ldh a, [c]
    inc c
    adc c
    halt
    and b
    ld a, a
    jr jr_006_7e7c

    push de
    jr jr_006_7e57

    ld a, [bc]
    rrca
    ld [hl], b
    jr @+$08

jr_006_7e7c:
    ldh [$ff0b], a
    add [hl]
    nop
    rst $10
    jr nc, jr_006_7ea3

    jr nc, @-$1e

    inc c
    ldh [rSVBK], a
    jr jr_006_7e4a

    nop
    rst $18
    ld b, c
    nop
    jp nz, Jump_006_7f01

    db $10
    ld a, [de]
    rla
    nop
    rst $38
    cpl
    db $10
    ld b, a
    jr c, jr_006_7e3a

    ld h, b
    inc hl
    call c, $8bdb
    ld a, h
    inc bc
    inc c

jr_006_7ea3:
    cp a
    ld c, a
    inc h
    nop
    ld c, [hl]
    ld a, a
    ld a, a
    or b
    ld a, a
    or b
    rst $38
    jr nc, @+$01

    ldh a, [rNR51]
    nop
    rst $38
    or c
    ld a, [hl]
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], c
    rst $38
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    inc e
    rst $38
    adc h
    ld a, a
    rst $38
    ld b, d
    add b
    and e
    ld b, b
    ld d, e
    and b
    ld c, c
    or b
    rst $38
    push hl
    jr jr_006_7f35

    sbc h
    add hl, hl
    sbc $1c
    rst $28
    rst $38
    add l
    ld [bc], a
    adc d
    dec b
    sub h
    dec bc
    dec h
    dec de
    rst $38
    ld b, [hl]
    add hl, sp
    add l
    ld a, e
    ld [$28f7], sp
    rst $30
    rst $38
    dec c
    cp $1d
    cp $fd
    cp $3d
    cp $df
    ld a, l
    cp $fb
    db $fc
    db $e3
    jr nz, jr_006_7efa

jr_006_7efa:
    rst $38
    ld e, $eb
    cp a
    ld e, [hl]
    and b
    dec de

Jump_006_7f01:
    rra
    ld h, $00
    ldh a, [$ffdf]
    ldh a, [rIE]
    ld a, a
    ldh a, [$ffdf]
    ld hl, sp-$51
    ld hl, sp+$57
    ld hl, sp-$01
    xor a
    ld a, [$00ff]
    adc [hl]
    ld a, a
    adc a
    ld a, a
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    rst $20
    rra
    db $e3
    rra
    rst $38
    pop af
    rrca
    rst $38
    nop
    ld d, $ef
    sub a
    rst $28
    rst $38
    adc b
    rst $30
    adc e
    db $f4
    rlca
    ld hl, sp-$39
    ld hl, sp-$02

jr_006_7f35:
    ldh [$ff03], a
    nop
    ldh a, [$ffef]
    di
    rst $28
    inc de
    rst $28
    rst $38
    and e
    ld e, a
    rst $20
    rra
    rst $00
    ccf
    adc a
    ld a, a
    rst $18
    rst $38
    nop
    jp $c7fc


    and b
    ld bc, $f8c7
    cp a
    rst $08
    ldh a, [$ff8f]
    ldh a, [$ff1f]
    ldh [$ffa0], a
    add hl, sp
    rra
    rst $38
    ei
    rra
    xor $3f
    ei
    ccf
    push de
    ccf
    rst $30
    ld [$d53f], a
    nop
    ld [bc], a
    cp $00
    cp $7c
    rst $38
    ld a, h
    jr c, jr_006_7fee

    jr c, jr_006_7fac

    db $10
    jr c, jr_006_7f87

    ld bc, $4010
    cpl
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

jr_006_7f87:
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

jr_006_7fac:
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
    ld b, $1f
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

jr_006_7fee:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
