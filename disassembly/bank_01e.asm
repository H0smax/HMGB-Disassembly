; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    ld e, $32

Jump_01e_4002:
    nop
    ld l, c
    ld b, c
    ld c, e
    ld bc, $4218
    ld h, h
    ld [bc], a
    cpl
    ld b, e
    ld a, l
    inc bc
    ld l, b
    ld b, e
    ld [hl-], a
    nop
    rst $10
    ld b, e
    ld c, e
    ld bc, $443c
    ld h, h
    ld [bc], a
    adc e
    ld b, h
    ld a, l
    inc bc
    ldh [c], a
    ld b, h
    ld [hl-], a
    nop
    ld d, a
    ld b, l
    ld c, e
    ld bc, $4668
    ld h, h
    ld [bc], a
    ccf
    ld b, a
    ld [hl-], a
    nop
    or $47
    ld c, e
    ld bc, $48e1
    ld h, h
    ld [bc], a
    adc [hl]
    ld c, c
    ld a, l
    inc bc
    cp a
    ld c, c
    ld [hl-], a

Jump_01e_403e:
    nop
    ld b, b
    ld c, d
    ld c, e
    ld bc, $4af5
    ld h, h
    ld [bc], a
    add [hl]
    ld c, e
    ld a, l
    inc bc
    rra
    ld c, h
    ld [hl-], a
    nop
    ld a, [$4b4c]
    ld bc, $4ddb
    ld h, h
    ld [bc], a
    ld b, $4f
    ld a, l
    inc bc
    add e
    ld c, a
    ld [hl-], a
    nop
    adc b
    ld c, a
    ld c, e
    ld bc, $5085
    ld h, h
    ld [bc], a
    ld [$7d51], a
    inc bc
    xor e
    ld d, d
    ld [hl-], a
    nop
    cp $52
    ld c, e
    ld bc, $53b1
    ld h, h
    ld [bc], a
    inc d
    ld d, h
    ld [hl-], a
    nop
    adc c
    ld d, h
    ld c, e
    ld bc, $5568
    ld h, h
    ld [bc], a
    cpl
    ld d, [hl]
    ld a, l
    inc bc
    adc b
    ld d, [hl]
    ld [hl-], a
    nop
    bit 2, [hl]
    ld c, e
    ld bc, $57a2
    ld h, h
    ld [bc], a
    dec sp
    ld e, b
    ld a, l
    inc bc
    xor $58
    ld [hl-], a
    nop
    ld a, a
    ld e, c
    ld c, e
    ld bc, $5a24
    ld h, h
    ld [bc], a
    jp hl


    ld e, d
    ld a, l
    inc bc
    jr jr_01e_4104

    ld [hl-], a
    nop
    ld h, a
    ld e, e
    ld c, e
    ld bc, $5c28
    ld h, h
    ld [bc], a
    rst $30
    ld e, h
    ld a, l
    inc bc
    ld d, d
    ld e, l
    nop
    nop
    ld a, l
    ld e, [hl]
    nop
    nop
    sub b
    ld e, [hl]
    nop
    inc bc
    cp e
    ld e, [hl]
    nop
    inc bc
    call z, $005e
    nop
    ei
    ld e, [hl]
    nop
    nop
    ld [hl+], a
    ld e, a
    nop
    inc bc
    inc sp
    ld e, a
    nop
    nop
    ld b, h
    ld e, a
    nop
    nop
    ld d, l
    ld e, a
    nop
    inc bc
    ld h, h
    ld e, a
    nop
    nop
    ld [hl], l
    ld e, a
    add hl, de
    inc bc
    adc b
    ld e, a
    nop
    inc bc
    sub l
    ld e, a
    nop
    inc bc
    and [hl]
    ld e, a
    nop
    nop
    rst $00
    ld e, a
    nop
    inc bc
    nop
    ld h, b
    nop
    nop
    dec c
    ld h, b
    nop
    nop
    jr jr_01e_4161

    ld [hl-], a
    inc bc
    dec l

jr_01e_4104:
    ld h, b
    ld [hl-], a
    inc bc
    jr c, jr_01e_4169

    nop
    nop
    ld c, l
    ld h, b
    add hl, de
    ld bc, $605e
    nop
    nop
    ld l, a
    ld h, b
    add hl, de
    ld bc, $608a
    nop
    nop
    and l
    ld h, b
    add hl, de
    ld bc, $60b0
    nop
    nop
    cp e
    ld h, b
    ld [hl-], a
    nop
    ret z

    ld h, b
    ld c, e
    ld bc, $60cd
    ld h, h
    ld [bc], a
    jp nc, Jump_01e_7d60

    inc bc
    rst $10

jr_01e_4134:
    ld h, b
    ld [hl-], a
    nop
    call c, Call_01e_4b60
    ld bc, $60dc
    ld h, h
    ld [bc], a
    call c, Call_01e_7d60

jr_01e_4142:
    inc bc
    call c, JoypadTransitionInterrupt
    nop
    pop hl
    ld h, b
    add hl, de
    inc bc
    ldh a, [c]
    ld h, b
    nop

jr_01e_414e:
    nop
    db $fd
    ld h, b
    ld [hl-], a
    nop
    inc c
    ld h, c
    ld c, e
    ld bc, $6283
    ld h, h

jr_01e_415a:
    ld [bc], a
    ld e, d
    ld h, e
    ld a, l
    inc bc
    cp e
    ld h, e

jr_01e_4161:
    nop
    inc bc
    jp c, Jump_000_0064

jr_01e_4166:
    inc bc
    jp hl


    ld h, h

jr_01e_4169:
    ld [$0d01], sp
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    ld d, b
    and b
    dec c
    add hl, de
    inc c
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr @-$5e

    dec c

jr_01e_4181:
    add hl, de
    inc c
    ld d, $0c
    and b
    dec b
    ld d, $18
    and b
    dec c
    add hl, de
    inc c

jr_01e_418d:
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr jr_01e_4134

    dec c
    add hl, de
    inc c
    ld d, $0c

jr_01e_4199:
    and b
    dec b
    ld d, $18
    and b
    dec c
    add hl, de
    jr jr_01e_4142

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b

jr_01e_41a8:
    dec c
    ld [hl+], a
    inc bc

jr_01e_41ab:
    add hl, de
    jr jr_01e_414e

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    ld [de], a
    inc bc
    add hl, de
    jr jr_01e_415a

    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    jr jr_01e_41c6

    add hl, de
    jr jr_01e_4166

jr_01e_41c6:
    dec b
    add hl, de
    inc c
    and a
    add hl, bc
    and b
    dec c
    ld [de], a
    inc bc
    or c
    ld a, [de]
    pop bc
    ld d, b
    dec de
    inc c
    and b
    dec b
    dec de
    jr jr_01e_4181

    add hl, bc
    and b
    dec c
    dec de
    inc bc
    ld [hl+], a
    inc c
    and b
    dec b
    ld [hl+], a
    jr jr_01e_418d

    add hl, bc
    and b
    dec c
    ld [hl+], a
    inc bc
    add hl, hl
    inc c
    and b
    dec b
    add hl, hl
    jr jr_01e_4199

    add hl, bc
    and b
    dec c
    add hl, hl
    inc bc
    ld [hl+], a
    jr nc, jr_01e_41ab

jr_01e_41fa:
    inc [hl]
    and b
    dec c
    ld [hl+], a
    add hl, bc
    add hl, de
    inc bc
    and a
    inc c
    and b
    dec b
    add hl, de
    jr jr_01e_41a8

    dec c
    inc h
    add hl, bc
    ld h, $03
    and a
    inc c
    and b
    dec b
    ld h, $18
    or c
    ld c, c
    or b
    nop
    rst $38
    ld [$0c01], sp
    nop
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_01e_4255

    add hl, bc
    ld sp, $3203
    add hl, bc
    scf
    inc bc
    ld [hl], $0c

jr_01e_422c:
    inc [hl]
    add hl, bc
    ld sp, $3203
    inc c

jr_01e_4232:
    add hl, hl
    inc c
    pop bc
    jr nc, jr_01e_4270

    jr jr_01e_41fa

    jr nz, jr_01e_426d

    add hl, bc
    ld sp, $3203
    add hl, bc
    scf
    inc bc
    ld [hl], $0c
    inc [hl]
    add hl, bc
    ld sp, $3203
    inc c
    add hl, hl
    inc c
    pop bc
    jr nc, jr_01e_4285

    jr @-$5e

    dec c
    pop bc
    jr nz, jr_01e_4287

jr_01e_4255:
    inc c
    pop bc
    ld b, b
    ld b, d
    add hl, bc
    ld b, b
    inc bc
    and a
    jr @-$3d

    jr nz, jr_01e_4291

    inc c
    pop bc
    ld b, b
    ld b, b
    add hl, bc
    dec sp
    inc bc
    and a
    jr jr_01e_422c

    jr nz, jr_01e_429f

jr_01e_426d:
    inc c
    pop bc
    ld b, b

jr_01e_4270:
    ld b, d
    add hl, bc
    ld b, b
    inc bc
    and a
    jr @-$3d

    jr nz, jr_01e_42ab

    inc c
    pop bc
    ld b, b
    ld b, b
    inc c
    add hl, sp
    jr jr_01e_4232

    inc e
    and b
    inc c
    pop bc

jr_01e_4285:
    jr nz, @+$39

jr_01e_4287:
    add hl, bc
    ld [hl], $03
    scf
    add hl, bc
    pop bc
    jr nc, @+$3b

    inc bc
    and a

jr_01e_4291:
    inc c
    scf
    inc c
    pop bc
    jr nz, jr_01e_42cd

    add hl, bc
    dec [hl]
    inc bc
    ld [hl], $09
    pop bc
    jr nc, jr_01e_42d6

jr_01e_429f:
    inc bc
    and a
    inc c
    ld [hl], $0c
    pop bc
    jr nz, jr_01e_42db

    add hl, bc
    inc sp
    inc bc
    inc [hl]

jr_01e_42ab:
    add hl, bc
    pop bc
    jr nc, jr_01e_42e5

    inc bc
    and a
    inc c
    inc [hl]
    inc c
    pop bc
    jr nz, jr_01e_42e9

    inc c
    add hl, hl
    inc c
    pop bc
    jr nc, jr_01e_42f6

    jr @-$3d

    jr nz, jr_01e_42f8

    add hl, bc
    ld [hl], $03
    scf
    add hl, bc
    pop bc
    jr nc, jr_01e_4302

    inc bc
    and a
    inc c
    scf

jr_01e_42cd:
    inc c
    pop bc
    jr nz, jr_01e_4307

    add hl, bc
    dec [hl]
    inc bc
    ld [hl], $09

jr_01e_42d6:
    pop bc
    jr nc, jr_01e_4310

    inc bc
    and a

jr_01e_42db:
    inc c
    ld [hl], $0c
    pop bc
    jr nz, jr_01e_4315

    add hl, bc
    inc sp
    inc bc
    inc [hl]

jr_01e_42e5:
    add hl, bc
    pop bc
    jr nc, jr_01e_431f

jr_01e_42e9:
    inc bc
    and a
    inc c
    inc [hl]
    inc c
    pop bc
    jr nz, jr_01e_4323

    add hl, bc
    inc [hl]
    inc bc
    ld [hl], $09

jr_01e_42f6:
    scf
    inc bc

jr_01e_42f8:
    add hl, sp
    add hl, bc
    dec sp
    inc bc
    ld b, c
    add hl, bc
    ld b, d
    inc bc
    ld [hl-], a
    inc b

jr_01e_4302:
    dec [hl]
    inc b
    ld [hl-], a
    inc b
    dec [hl]

jr_01e_4307:
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    ld [hl-], a
    inc b
    scf
    inc b

jr_01e_4310:
    ld [hl-], a
    inc b
    scf
    inc b
    ld [hl-], a

jr_01e_4315:
    inc b
    scf
    inc b
    ld [hl-], a
    inc b
    add hl, sp
    inc b
    ld [hl-], a
    inc b
    add hl, sp

jr_01e_431f:
    inc b
    ld [hl-], a
    inc b
    add hl, sp

jr_01e_4323:
    inc b
    dec sp
    ld [$083b], sp
    ld b, b
    ld [$74b1], sp
    or b
    nop
    rst $38
    ld [$040f], sp
    dec bc
    cp $fe
    db $fd
    cp $32
    ld [$0429], sp
    dec hl
    inc b
    jr nc, @+$06

    dec hl
    inc b
    ld [hl-], a
    ld [$0429], sp
    ld [hl-], a
    inc b
    add hl, hl
    inc b
    ld [hl-], a
    inc b
    cp e
    inc b
    and d
    dec d
    ld [hl+], a
    ld [$0429], sp
    dec hl
    inc b
    jr nc, @+$06

    dec hl
    inc b
    ld [hl+], a
    ld [$0429], sp
    ld [hl-], a
    inc b
    add hl, hl
    inc b
    ld [hl-], a
    inc b
    cp e
    rrca
    or b
    nop
    rst $38
    ld [$0a00], sp
    nop
    cp $fe
    db $fd
    cp $a0
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    ld b, $13
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld b, $13
    ld bc, $0112
    rra
    ld [bc], a
    inc de
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld a, [bc]
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    and b
    rlca
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld b, $13
    ld bc, $0112
    rra
    ld [bc], a
    inc de
    ld bc, $0112
    rra
    ld b, $a0
    ld a, [bc]
    ld de, $1f01
    inc bc
    cp e
    inc b
    or b
    nop
    rst $38
    inc b
    ld bc, $000e
    cp $fe
    db $fd
    cp $c1
    jr nz, @-$5e

    dec c
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    add hl, de
    ld [$0819], sp
    or d
    inc b
    pop bc
    jr nc, jr_01e_4435

    ld [$0836], sp
    scf
    ld [$40c1], sp
    add hl, sp
    ld [$10a7], sp
    and b
    ld b, $39

jr_01e_440c:
    db $10
    pop bc
    jr nz, @-$5e

    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    ld [hl+], a
    ld [$06a0], sp
    ld [hl+], a
    db $10
    and b
    inc c
    add hl, de
    ld [$0819], sp
    or d
    dec de
    pop bc
    jr nc, @+$39

    ld [$0836], sp
    inc [hl]

jr_01e_442e:
    ld [$50c1], sp
    ld [hl-], a
    ld [$10a7], sp

jr_01e_4435:
    and b
    dec b
    ld [hl-], a
    db $10
    or b
    nop

jr_01e_443b:
    rst $38
    inc b
    ld bc, $000d
    cp $fe
    db $fd
    cp $c1
    dec [hl]
    rra
    ld [$0832], sp
    inc [hl]
    ld [$0836], sp
    scf
    ld [$0836], sp
    inc [hl]
    ld [$30c1], sp
    ld [hl-], a
    db $10
    scf
    db $10
    pop bc
    dec [hl]
    ld [hl], $08
    scf
    ld [$75c1], sp
    add hl, sp
    jr jr_01e_440c

    add b
    pop bc
    dec [hl]
    rra
    ld [$0832], sp
    inc [hl]
    ld [$0836], sp
    scf
    ld [$0836], sp
    inc [hl]
    ld [$30c1], sp
    ld [hl-], a
    db $10
    scf
    db $10
    pop bc
    dec [hl]
    ld [hl], $08
    scf
    ld [$75c1], sp
    ld [hl-], a
    jr jr_01e_442e

    add b
    or b
    nop
    rst $38
    inc b
    dec h
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $a2
    jr nz, jr_01e_443b

    rst $38
    and b
    ld [bc], a
    ld [hl], $18
    ld [hl], $18
    ld [hl-], a
    ld [$0832], sp
    or d
    inc b
    and b
    inc b
    and l
    ld bc, NextHour
    ld b, a
    ld [$0846], sp
    ld b, a
    ld [$50a2], sp
    ld c, c
    db $10
    and b
    ld b, $49
    db $10
    rra
    inc b
    and d
    jr nz, @-$59

    rst $38
    and b
    ld [bc], a
    ld [hl], $18
    ld [hl], $18
    ld [hl-], a
    ld [$0832], sp
    or d
    rla
    and b
    inc b
    and l
    ld bc, NextHour
    ld b, a
    ld [$0846], sp
    ld b, h
    ld [$50a2], sp
    ld b, d
    db $10
    and b
    ld b, $42
    db $10
    rra
    inc b
    or b
    nop
    rst $38
    inc b
    nop
    ld a, [bc]
    nop
    cp $fe
    db $fd
    cp $a0
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld b, $a0
    ld [Start], sp
    sbc c
    ld bc, $061f
    and b
    ld a, [bc]
    ld b, b
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $1f
    db $10
    ld b, b
    ld bc, $0111
    rra
    ld b, $a0
    ld [$0140], sp
    ld de, $1f01
    ld b, $b2
    inc b

jr_01e_451a:
    and b
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld b, $a0
    ld [Start], sp
    sbc c
    ld bc, $061f
    and b

jr_01e_452b:
    ld a, [bc]
    ld b, b
    ld bc, $0111

jr_01e_4530:
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $1f
    ld [$0aa0], sp
    ld b, b
    ld bc, $0111
    rra

jr_01e_4541:
    ld b, $a0
    inc c
    ld b, b

jr_01e_4545:
    ld bc, $0111
    rra
    ld b, $a0
    add hl, bc
    ld b, b
    ld bc, $0111
    rra
    ld b, $b1
    nop
    or b
    ld [bc], a
    rst $38

jr_01e_4557:
    ld b, $01
    add hl, bc
    nop

jr_01e_455b:
    db $fd
    cp $a0
    ld [$60c1], sp
    and e
    rla
    and d
    ld bc, $3027
    dec hl
    jr nc, jr_01e_452b

    jr nc, @+$38

    jr @-$3d

    ld h, b
    scf
    ld [$0836], sp
    scf
    ld [$05a0], sp
    ld [hl-], a
    jr nc, jr_01e_451a

    ld [$3027], sp
    dec hl
    jr nc, jr_01e_4541

    jr nc, @+$2b

    jr jr_01e_4545

    ld h, b
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$05a0], sp
    dec hl
    jr nc, jr_01e_4530

    ld [$3027], sp
    dec hl
    jr nc, jr_01e_4557

    jr nc, @+$38

    jr jr_01e_455b

    ld h, b
    scf
    ld [$0836], sp
    scf
    ld [$05a0], sp
    ld [hl-], a
    jr nc, @-$5e

    ld [$3027], sp
    dec hl
    jr nc, @-$3d

    jr nc, jr_01e_45d7

    jr @-$3d

    ld h, b
    ld [hl-], a
    ld [$1026], sp
    daa
    jr nc, @-$3d

    dec h
    and b
    dec b
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp

jr_01e_45d7:
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    scf
    ld [$0839], sp
    and b
    ld b, $c1
    ld h, b
    and d
    ld [bc], a
    and e
    ld a, [de]
    add hl, sp

jr_01e_4654:
    jr nz, jr_01e_4688

    db $10
    and b
    ld a, [bc]
    ld b, b
    db $10
    ld b, d
    db $10
    add hl, sp
    db $10
    daa
    jr nc, jr_01e_4699

    jr nz, jr_01e_4683

    db $10
    or b
    nop
    rst $38
    ld b, $02
    dec bc
    nop
    db $fd
    cp $c1
    ld b, b
    and b
    ld a, [bc]
    and e
    rra
    dec sp
    db $10
    and b
    inc bc

jr_01e_4678:
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    inc bc
    ld b, d

jr_01e_4683:
    db $10
    and b

Jump_01e_4685:
    dec bc
    scf
    db $10

jr_01e_4688:
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    pop bc
    ld h, l
    dec sp
    jr nc, jr_01e_4654

    ld b, b
    and b
    dec bc
    dec sp
    db $10
    and b

jr_01e_4699:
    inc bc

jr_01e_469a:
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    dec bc
    scf
    db $10
    and b
    inc bc
    scf
    db $10
    and b
    dec bc
    ld b, b
    db $10
    dec sp
    db $10
    ld b, b
    db $10
    pop bc

jr_01e_46b3:
    ld h, l
    ld b, d
    jr nc, jr_01e_4678

    ld b, b
    and b
    dec bc
    dec sp
    db $10

jr_01e_46bc:
    and b
    inc bc
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    and b
    inc bc
    ld b, d
    db $10
    and b
    dec bc
    scf

jr_01e_46cd:
    db $10
    ld b, h
    db $10
    ld b, b
    db $10
    ld b, d
    db $10
    pop bc
    ld h, l
    dec sp
    jr nc, jr_01e_469a

    ld b, b
    and b
    dec bc
    dec sp
    db $10
    and b
    inc bc
    dec sp
    db $10
    and b
    dec bc
    ld b, b
    db $10
    ld b, d
    db $10
    scf
    db $10
    and b
    inc bc
    scf
    db $10
    and b
    dec bc
    ld b, b
    db $10
    dec sp
    db $10
    add hl, sp
    db $10
    pop bc
    ld h, l
    scf
    jr nc, jr_01e_46bc

    ld b, b
    and b
    dec bc
    ld b, d

Jump_01e_46ff:
    db $10
    add hl, sp
    db $10
    add hl, sp
    db $10

jr_01e_4704:
    ld b, d
    db $10
    add hl, sp
    db $10
    ld b, d
    db $10
    pop bc
    ld [hl], b
    dec sp
    db $10
    and b
    inc b
    dec sp
    jr nz, jr_01e_46b3

    ld [$1037], sp
    and b
    inc b
    scf
    jr nz, jr_01e_46cd

    ld c, c
    and b
    dec bc
    ld b, d
    db $10

jr_01e_4720:
    add hl, sp
    db $10
    add hl, sp
    db $10
    and b
    ld b, $42
    db $10
    add hl, sp
    db $10
    ld [hl], $10
    and b
    dec bc
    scf
    db $10
    dec sp
    db $10
    ld b, d
    db $10
    ld b, a
    db $10
    and b
    inc b
    ld b, a
    db $10

jr_01e_473a:
    rra
    db $10
    or b
    nop
    rst $38
    ld b, $35
    inc b
    ld [bc], a
    db $fd
    cp $a2
    dec d
    and b
    inc b
    daa
    db $10
    ld [hl+], a

jr_01e_474c:
    db $10
    dec hl
    db $10
    daa
    db $10
    ld [hl+], a
    db $10

jr_01e_4753:
    dec hl
    db $10
    and d
    db $10
    jr nc, jr_01e_4769

    add hl, hl
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_01e_4704

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10

jr_01e_4769:
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    and d
    jr nz, jr_01e_47a2

    db $10
    and d
    dec d
    daa
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_01e_4720

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10
    and d
    db $10
    jr nc, jr_01e_479f

    add hl, hl
    db $10
    add hl, hl
    db $10
    and d
    ld b, l
    dec hl
    jr nc, jr_01e_473a

    dec d
    daa
    db $10
    ld [hl+], a
    db $10
    dec hl
    db $10

jr_01e_479f:
    daa
    db $10
    ld [hl+], a

jr_01e_47a2:
    db $10
    dec hl

jr_01e_47a4:
    db $10
    and d
    jr nc, jr_01e_47d8

    jr nz, jr_01e_474c

    jr nz, jr_01e_47de

    db $10
    and d
    ld b, l
    daa
    jr nc, jr_01e_4753

    ld [bc], a
    and d
    ld d, b
    ld h, $20
    ld h, $10
    ld h, $10
    daa
    db $10
    add hl, hl
    db $10
    daa
    jr nz, jr_01e_47e6

    db $10
    ld [hl+], a
    jr nc, jr_01e_47ec

    jr nz, jr_01e_47ee

    db $10
    ld h, $10
    daa
    db $10
    add hl, hl
    db $10
    dec hl
    jr nz, jr_01e_47fb

    db $10
    daa
    jr nc, @+$28

    jr nz, @+$28

jr_01e_47d8:
    db $10
    ld h, $10
    daa
    db $10
    add hl, hl

jr_01e_47de:
    db $10
    daa
    jr nz, @+$26

    db $10
    ld [hl+], a
    jr nc, @+$28

jr_01e_47e6:
    jr nz, jr_01e_480e

    db $10
    ld h, $10
    daa

jr_01e_47ec:
    db $10
    add hl, hl

jr_01e_47ee:
    db $10
    daa
    jr nc, @+$29

    jr nc, jr_01e_47a4

    nop
    rst $38
    inc bc
    ld bc, $0008
    db $fd

jr_01e_47fb:
    cp $c1
    jr nz, jr_01e_47a2

    dec h
    daa
    ld [$082b], sp
    scf
    ld [$0832], sp
    and b
    dec b
    ld [hl-], a
    ld [$08a0], sp

jr_01e_480e:
    dec [hl]
    jr @-$5e

    inc bc
    dec [hl]
    ld [$08a0], sp
    dec [hl]
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0830], sp
    daa
    ld [$0827], sp
    dec hl
    ld [$0837], sp
    ld [hl-], a
    ld [$05a0], sp
    ld [hl-], a
    ld [$08a0], sp
    dec [hl]
    jr @-$5e

    inc bc
    dec [hl]
    ld [$08a0], sp
    dec [hl]
    ld [$0834], sp
    ld [hl-], a
    ld [$0834], sp
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$03b1], sp
    pop bc
    dec h
    jr nc, jr_01e_4856

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_01e_4856:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0829], sp
    and b
    dec b
    add hl, hl
    ld [$08a0], sp
    jr nc, jr_01e_487e

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_01e_487e:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0832], sp
    ld [hl+], a
    ld [$08a0], sp
    jr nc, jr_01e_48a4

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_01e_48a4:
    dec hl
    ld [$0829], sp
    daa
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp
    dec hl
    ld [$05a0], sp

jr_01e_48b4:
    dec hl
    ld [$08a0], sp
    ld [hl+], a
    ld [$0829], sp
    and b
    dec b
    add hl, hl
    ld [$08a0], sp
    jr nc, jr_01e_48cc

    dec hl
    ld [$0829], sp
    daa
    ld [$0829], sp

jr_01e_48cc:
    dec hl
    ld [$06a0], sp
    ld b, l
    ld [$0844], sp
    and b
    ld [$0832], sp
    and b
    dec b
    ld [hl-], a
    ld [$301f], sp
    or b
    nop
    rst $38
    inc bc
    ld bc, $000a
    db $fd
    cp $c1
    ld b, b

jr_01e_48e9:
    and d
    ld [bc], a
    and b
    rlca
    and e
    daa
    daa
    ld [$0826], sp
    and b
    inc bc
    ld [hl-], a
    db $10
    and d
    ld [bc], a
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    dec [hl]
    ld [$0836], sp
    scf
    ld [$083a], sp
    and b
    dec b
    ld a, [hl-]
    ld [$0aa0], sp
    ld a, [hl-]
    db $10
    and b
    dec b
    ld a, [hl-]
    jr jr_01e_48b4

    ld [bc], a
    and b
    rlca
    daa
    ld [$0826], sp
    and b
    inc bc
    ld [hl-], a
    db $10
    and d
    ld [bc], a
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld a, [hl-]
    ld [$0839], sp
    jr c, jr_01e_4931

    scf
    ld [$05a0], sp
    scf
    ld [$0aa0], sp

jr_01e_4931:
    scf
    db $10
    and b
    dec b
    scf
    jr jr_01e_48e9

    inc bc
    pop bc
    jr nc, @-$5e

    ld a, [bc]
    and d
    ld [bc], a
    rra
    db $10
    ld b, b
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    ld b, d
    ld [$05a0], sp
    ld b, d
    ld [$101f], sp
    and b
    ld a, [bc]
    ld b, b
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    ld b, d
    ld [$05a0], sp
    ld b, d
    db $10
    and b
    ld a, [bc]
    add hl, sp
    ld [$05a0], sp
    add hl, sp
    db $10
    and b
    ld a, [bc]
    ld b, d
    ld [$05a0], sp
    ld b, d
    ld [$2cb1], sp
    or b
    nop
    rst $38
    inc bc
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    db $fd
    cp $27
    jr jr_01e_49b9

    jr jr_01e_49be

    db $10
    or [hl]
    inc bc
    daa
    jr jr_01e_49c4

    jr @+$24

    db $10
    and d
    jr nz, @+$22

    jr @+$22

    jr jr_01e_49c9

    db $10
    ld [hl+], a
    jr jr_01e_49cf

    jr jr_01e_49d1

    db $10
    or d
    ld a, [bc]
    jr nz, jr_01e_49cc

    jr nz, jr_01e_49ce

    jr nz, @+$12

    ld [hl+], a

jr_01e_49b9:
    db $10
    rra
    jr nc, @-$4e

    nop

jr_01e_49be:
    rst $38
    inc bc
    nop
    ld [$fd00], sp

jr_01e_49c4:
    cp $1f
    ld [$08a0], sp

jr_01e_49c9:
    dec d
    ld [bc], a
    db $10

jr_01e_49cc:
    ld [bc], a
    rra

jr_01e_49ce:
    inc b

jr_01e_49cf:
    and b
    dec b

jr_01e_49d1:
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    rlca
    rra
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10

jr_01e_49eb:
    or e
    inc bc
    rra
    ld [$07a0], sp
    dec d
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    ld b, $1f
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    inc b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10
    or e
    rla
    rra
    ld [$08a0], sp
    dec d
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    dec b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    and b
    rlca
    rra
    ld [$0215], sp
    db $10
    ld [bc], a
    rra
    inc b
    and b
    dec b
    ld [de], a
    ld [bc], a
    db $10
    ld [bc], a
    rra
    inc b
    rra
    db $10
    or a
    dec hl
    or b
    nop
    rst $38
    dec b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_01e_49eb

    ld a, [bc]
    rra
    dec b
    jr nc, jr_01e_4a55

    add hl, hl
    dec b
    jr nc, jr_01e_4a59

    rra

jr_01e_4a55:
    dec b
    jr nc, jr_01e_4a5d

    add hl, hl

jr_01e_4a59:
    dec b
    jr nc, jr_01e_4a61

    rra

jr_01e_4a5d:
    dec b
    jr nc, jr_01e_4a65

    add hl, hl

jr_01e_4a61:
    dec b
    jr nc, jr_01e_4a69

    rra

jr_01e_4a65:
    dec b
    jr nc, jr_01e_4a6d

    add hl, hl

jr_01e_4a69:
    dec b
    jr nc, jr_01e_4a71

    and b

jr_01e_4a6d:
    inc bc
    rra
    dec b
    ld b, b

jr_01e_4a71:
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld b, b
    dec b
    add hl, sp
    ld a, [bc]
    pop bc
    ld b, b
    dec [hl]
    ld e, $1f
    ld a, [bc]
    and b
    ld a, [bc]
    pop bc
    jr nz, jr_01e_4aa2

    dec b
    jr nc, jr_01e_4a8b

    add hl, hl
    dec b
    jr nc, jr_01e_4a8f

    rra

jr_01e_4a8b:
    dec b
    jr nc, jr_01e_4a93

    add hl, hl

jr_01e_4a8f:
    dec b
    jr nc, jr_01e_4a97

    rra

jr_01e_4a93:
    dec b
    jr nc, jr_01e_4a9b

    add hl, hl

jr_01e_4a97:
    dec b
    jr nc, jr_01e_4a9f

    rra

jr_01e_4a9b:
    dec b
    jr nc, jr_01e_4aa3

    add hl, hl

jr_01e_4a9f:
    dec b
    jr nc, jr_01e_4aa7

jr_01e_4aa2:
    and b

jr_01e_4aa3:
    ld [bc], a
    rra
    dec b
    ld b, b

jr_01e_4aa7:
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld b, b
    dec b
    dec sp
    ld a, [bc]
    pop bc
    ld b, b
    ld b, b
    ld e, $1f
    ld a, [bc]
    or c
    inc b
    pop bc
    ld b, b
    rra
    rrca
    ld b, l
    ld a, [bc]
    ld b, b
    ld a, [bc]
    and b
    dec b
    ld b, b
    dec b
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    rrca
    rra
    rrca

jr_01e_4ad4:
    ld b, l
    ld a, [bc]
    ld b, b
    ld a, [bc]
    and b
    dec b
    ld b, b
    dec b
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    ld a, [bc]
    dec [hl]
    dec b
    and b
    inc b
    dec [hl]
    ld a, [bc]
    pop bc
    cpl
    ld a, [hl-]
    ld a, [bc]
    or c
    dec sp
    or b
    nop
    rst $38
    dec b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    jr nz, jr_01e_4aa2

    inc c
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    inc c
    scf
    ld a, [bc]
    and b
    inc b
    scf
    ld a, [bc]
    and b
    inc c
    add hl, sp
    ld a, [bc]
    and b
    inc b
    add hl, sp
    ld a, [bc]
    and b
    inc c
    ld a, [hl-]
    ld a, [bc]
    and b
    inc b
    ld a, [hl-]
    ld a, [bc]
    and b
    inc c
    ld b, b
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld b, b
    dec b
    add hl, sp
    ld a, [bc]
    pop bc
    jr nc, jr_01e_4b63

    inc hl
    rra
    ld a, [bc]
    pop bc
    jr nz, jr_01e_4ad4

jr_01e_4b34:
    inc c
    dec [hl]
    ld a, [bc]
    and b
    inc b
    dec [hl]
    ld a, [bc]
    and b
    inc c
    scf
    ld a, [bc]
    and b
    inc b
    scf
    ld a, [bc]
    and b
    inc c
    add hl, sp
    ld a, [bc]
    and b
    inc b
    add hl, sp
    ld a, [bc]
    and b
    inc c
    ld a, [hl-]
    ld a, [bc]
    and b
    inc b
    ld a, [hl-]
    ld a, [bc]
    and b
    inc c
    ld b, b
    ld a, [bc]
    ld b, b
    ld a, [bc]
    ld b, b
    dec b
    dec sp
    ld a, [bc]
    pop bc
    jr nc, jr_01e_4ba0

Call_01e_4b60:
    inc hl
    rra
    ld a, [bc]

jr_01e_4b63:
    or c
    dec b
    and b
    inc c
    pop bc
    jr nc, jr_01e_4b89

    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, b
    inc d
    ld b, e
    rrca
    ld b, d
    add hl, de
    rra
    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, b
    inc d
    ld b, e
    rrca
    ld b, d
    rrca
    pop bc
    jr nz, jr_01e_4bba

    ld a, [bc]
    or c
    jr c, jr_01e_4b34

    nop
    rst $38
    dec b
    jr nz, @+$04

jr_01e_4b89:
    ld [$fefe], sp
    db $fd
    cp $a1
    ld [$20a2], sp
    rra
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    scf
    dec b
    add hl, sp
    ld a, [bc]
    dec [hl]
    dec b
    add hl, sp
    inc d
    rra
    dec b

jr_01e_4ba0:
    dec [hl]
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    and d
    ld d, b
    jr c, jr_01e_4bfa

    or d
    inc b
    and d
    jr nz, jr_01e_4bce

    ld a, [bc]
    add hl, sp
    ld a, [bc]
    scf
    dec b
    add hl, sp
    ld a, [bc]
    dec [hl]
    dec b
    add hl, sp
    inc d

jr_01e_4bba:
    rra
    dec b
    dec [hl]
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    and d
    ld d, b
    jr c, jr_01e_4bee

    and a
    ld a, [bc]
    scf
    inc d
    jr c, jr_01e_4bd6

    and c
    dec bc

jr_01e_4bce:
    and d
    rra
    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_01e_4bdb

jr_01e_4bd6:
    jr nc, @+$07

    inc sp
    dec b
    rra

jr_01e_4bdb:
    ld a, [bc]
    jr z, jr_01e_4bed

    ld a, [hl+]
    rrca
    jr z, jr_01e_4bec

    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_01e_4bed

    jr nc, @+$07

    inc sp
    dec b

jr_01e_4bec:
    rra

jr_01e_4bed:
    ld a, [bc]

jr_01e_4bee:
    jr z, jr_01e_4bff

    ld a, [hl+]
    rrca
    ld [hl-], a
    ld a, [bc]
    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_01e_4bff

jr_01e_4bfa:
    jr nc, @+$07

    inc sp
    dec b
    rra

jr_01e_4bff:
    ld a, [bc]
    jr z, jr_01e_4c11

    ld a, [hl+]
    rrca
    jr z, jr_01e_4c10

    rra
    ld a, [bc]
    dec h
    dec b
    jr z, jr_01e_4c11

    jr nc, jr_01e_4c13

    inc sp
    dec b

jr_01e_4c10:
    rra

jr_01e_4c11:
    ld a, [bc]
    dec [hl]

jr_01e_4c13:
    dec b
    jr nc, jr_01e_4c20

    dec [hl]
    dec b
    jr nc, @+$0c

    ld [hl-], a
    ld a, [bc]
    or b
    nop
    rst $38
    dec b

jr_01e_4c20:
    nop
    add hl, bc
    nop
    cp $fe
    db $fd
    cp $a0
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    rlca
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    inc b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    ld b, $50
    ld bc, $0296
    rra
    ld [bc], a
    ld d, b
    ld [bc], a
    sub [hl]
    ld [bc], a
    rra
    ld bc, $051f
    and b
    dec b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    rra
    dec b
    and b
    inc bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    add hl, bc
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    and b
    dec b
    ld d, b
    ld bc, $0296
    rra
    ld [bc], a
    or l
    inc b
    or b
    nop
    rst $38
    ld [$0a01], sp
    nop
    cp $fe
    db $fd
    cp $c1
    jr nc, @-$5e

    ld a, [bc]

jr_01e_4d06:
    add hl, hl
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    jr z, jr_01e_4d22

    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]

jr_01e_4d21:
    db $10

jr_01e_4d22:
    and b
    ld a, [bc]
    ld h, $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    jr z, jr_01e_4d4a

    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    dec b
    inc [hl]
    db $10
    inc [hl]
    db $10

jr_01e_4d4a:
    and b
    ld a, [bc]
    ld h, $10
    pop bc
    ld b, b
    and b
    inc b
    inc [hl]
    jr nz, jr_01e_4d06

    inc b
    and b
    ld a, [bc]
    add hl, de
    db $10
    and b
    dec b
    add hl, de
    jr nz, @-$5e

jr_01e_4d5f:
    ld a, [bc]
    jr nz, jr_01e_4d72

    and b
    dec b
    jr nz, jr_01e_4d86

    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    add hl, de
    db $10

jr_01e_4d72:
    jr nz, jr_01e_4d84

    and b
    dec b
    jr nz, @+$22

    and b
    ld a, [bc]
    add hl, de
    db $10
    and b
    dec b
    add hl, de
    jr nz, jr_01e_4d21

    ld a, [bc]
    jr nz, jr_01e_4d94

jr_01e_4d84:
    and b
    dec b

jr_01e_4d86:
    jr nz, jr_01e_4da8

    and b

jr_01e_4d89:
    ld a, [bc]
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    dec h
    db $10

jr_01e_4d94:
    inc h
    jr nz, jr_01e_4dbd

    ld [$0828], sp
    add hl, hl
    db $10
    and b
    dec b
    add hl, hl
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    daa
    db $10
    and b
    dec b

jr_01e_4da8:
    daa
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    ld h, $10
    ld [hl+], a
    db $10
    and b
    dec b
    ld [hl+], a
    db $10
    and b
    ld a, [bc]
    dec h
    db $10
    and b
    dec b
    dec h

jr_01e_4dbd:
    jr nz, jr_01e_4d5f

    ld a, [bc]
    inc h
    db $10
    ld [hl+], a
    db $10
    jr nz, jr_01e_4dd6

    inc h
    db $10
    ld h, $10
    jr z, @+$12

    add hl, hl
    db $10
    inc h
    db $10
    jr nz, jr_01e_4de2

    add hl, de
    db $10
    and b
    inc bc

jr_01e_4dd6:
    add hl, de
    jr nz, jr_01e_4d89

    nop
    rst $38
    ld [$0a01], sp
    nop
    cp $fe
    db $fd

jr_01e_4de2:
    cp $c1
    ld d, b
    and b
    ld a, [bc]
    jr nc, jr_01e_4df1

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_01e_4df1:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    jr nc, @+$12

    dec hl
    db $10
    jr nc, @+$12

    dec hl
    db $10
    add hl, hl
    db $10
    jr nc, jr_01e_4e0f

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_01e_4e0f:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, jr_01e_4e27

    ld [hl-], a
    db $10
    jr nc, jr_01e_4e2b

    dec hl
    db $10
    pop bc
    ld d, b
    jr nc, @+$12

    and b
    inc bc
    jr nc, jr_01e_4e45

    and b
    ld a, [bc]

jr_01e_4e27:
    pop bc
    ld d, b
    jr nc, jr_01e_4e33

jr_01e_4e2b:
    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_01e_4e33:
    ld [hl-], a
    ld [$1034], sp
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, jr_01e_4e55

jr_01e_4e45:
    dec hl
    db $10
    jr nc, jr_01e_4e51

    ld [hl-], a
    ld [$0830], sp
    ld [hl-], a
    ld [$0830], sp

jr_01e_4e51:
    ld [hl-], a

jr_01e_4e52:
    ld [$1034], sp

jr_01e_4e55:
    add hl, hl
    jr nz, jr_01e_4e83

    db $10
    rra
    ld [$082b], sp
    ld [hl-], a
    ld [$0830], sp
    pop bc
    ld d, b
    dec hl
    db $10
    and b
    inc bc
    dec hl
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    ld b, b
    add hl, hl
    ld [$0830], sp
    inc [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0832], sp
    scf
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, @+$12

jr_01e_4e83:
    ld [hl-], a
    db $10
    pop bc
    ld d, b
    inc [hl]
    db $10
    and b
    inc bc
    inc [hl]
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    ld b, b
    add hl, hl
    ld [$0830], sp
    inc [hl]
    ld [$0832], sp
    inc [hl]
    ld [$0832], sp
    scf
    db $10
    dec [hl]
    db $10
    inc [hl]
    db $10
    ld [hl-], a
    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    pop bc
    ld d, b
    dec hl
    db $10
    and b
    inc bc
    dec hl
    jr nz, jr_01e_4e52

    ld a, [bc]
    pop bc

jr_01e_4eb4:
    ld b, b
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, h
    ld [$0845], sp
    ld b, h
    ld [$0842], sp
    add hl, sp
    ld [$0837], sp
    add hl, sp
    ld [$083b], sp
    ld b, b
    ld [$0842], sp
    ld b, h
    ld [$0842], sp
    ld b, b
    ld [$0842], sp
    ld b, b
    ld [$083b], sp
    pop bc
    ld h, b
    add hl, sp
    ld b, b
    rra
    jr nz, jr_01e_4eb4

    nop
    rst $38
    ld [$0450], sp
    ld [bc], a
    cp $fe
    db $fd
    cp $a0
    inc b
    jr nc, jr_01e_4f32

    jr nc, @+$12

    dec hl
    jr nz, @+$2d

    db $10
    add hl, hl
    jr nz, jr_01e_4f44

    db $10
    dec hl
    jr nc, jr_01e_4f4f

    jr nz, jr_01e_4f51

    db $10
    dec hl
    jr nz, @+$2d

    db $10
    jr nc, @+$12

    ld [hl-], a
    db $10
    inc [hl]
    db $10
    add hl, hl
    jr nc, jr_01e_4f5f

    jr nz, @+$32

    db $10

jr_01e_4f32:
    dec hl
    jr nz, @+$2d

    db $10
    add hl, hl
    jr nz, jr_01e_4f62

    db $10
    dec hl
    jr nc, jr_01e_4f6d

    jr nz, @+$32

    db $10
    dec hl
    jr nz, jr_01e_4f6e

    db $10

jr_01e_4f44:
    jr nc, @+$12

    rra
    db $10
    inc [hl]
    db $10
    add hl, hl
    jr nc, jr_01e_4f71

    jr nc, jr_01e_4f71

jr_01e_4f4f:
    jr nc, jr_01e_4f71

jr_01e_4f51:
    jr nc, jr_01e_4f6c

    jr nc, jr_01e_4f79

    jr nc, jr_01e_4f79

    jr nc, jr_01e_4f80

    jr jr_01e_4f80

    ld [$0827], sp
    dec h

jr_01e_4f5f:
    ld [$3024], sp

jr_01e_4f62:
    add hl, hl
    db $10
    daa
    db $10
    add hl, hl
    db $10
    dec hl
    db $10
    add hl, hl
    db $10

jr_01e_4f6c:
    dec hl

jr_01e_4f6d:
    db $10

jr_01e_4f6e:
    jr nc, @+$22

    inc [hl]

jr_01e_4f71:
    db $10
    add hl, hl
    jr nc, jr_01e_4fa5

    jr nz, @+$32

    db $10
    ld [hl-], a

jr_01e_4f79:
    db $10
    jr nc, jr_01e_4f8c

    dec hl
    db $10
    add hl, hl
    ld h, b

jr_01e_4f80:
    or b
    nop
    rst $38
    ld [$0000], sp
    nop
    rst $38
    add hl, bc
    ld bc, $000a

jr_01e_4f8c:
    cp $fe
    db $fd
    cp $a0
    ld a, [bc]
    pop bc
    ld d, b
    and e
    inc bc
    dec h
    inc c
    and b
    dec b
    dec h
    jr jr_01e_4f44

    ld [$0aa0], sp
    dec d
    inc b
    jr nz, @+$0e

    and b

jr_01e_4fa5:
    dec b
    jr nz, jr_01e_4fcc

    and b
    ld a, [bc]
    dec h
    inc c
    and b
    dec b
    dec h
    jr @-$57

    ld [$0aa0], sp
    dec h
    inc b
    db $10
    ld [$0419], sp
    and a
    inc c
    and b
    dec b
    add hl, de
    jr @-$5e

    dec b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b

jr_01e_4fcc:
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    add hl, sp
    inc b
    pop bc
    rra
    ld b, l
    ld [$20c1], sp
    ld b, b
    inc b
    ld a, [hl-]
    inc b
    ld b, b
    inc b
    add hl, sp
    inc b
    or e
    dec e
    pop bc
    ld [hl], b
    and d
    ld [bc], a
    and b
    ld a, [bc]
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    inc c
    and a
    ld [$0429], sp
    and a
    inc c
    dec h
    inc h
    rra
    inc c
    jr nc, jr_01e_5020

    ld a, [hl+]
    ld [$0425], sp
    and b
    dec b
    dec h
    ld [$0aa0], sp
    inc hl
    inc c

jr_01e_5020:
    ld [hl+], a
    inc b
    jr nz, jr_01e_502c

    ld a, [de]
    inc b
    and a
    jr @+$21

    inc c
    ld a, [hl+]
    inc c

jr_01e_502c:
    ld a, [hl+]
    inc c
    and a
    ld [$0429], sp
    and a
    inc c
    dec h
    inc h
    rra
    inc c
    daa
    inc c
    dec h
    ld [$0c27], sp
    ld a, [hl+]
    inc b
    and a
    inc h
    inc hl
    inc c
    and b
    inc c
    rra
    ld [$0c23], sp
    inc hl
    inc h
    ld [hl+], a
    inc b
    dec h
    ld [$0c32], sp
    ld a, [hl+]
    inc c
    dec h
    inc b
    jr nc, jr_01e_5060

    daa
    inc b
    jr nc, @+$0a

    daa
    inc c
    daa

jr_01e_505f:
    inc b

Call_01e_5060:
jr_01e_5060:
    and a
    inc h
    dec h
    jr @-$4d

    ld e, [hl]
    and b
    dec b
    and a
    inc c
    and d
    ld bc, $0aa0
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    ld a, [hl+]
    inc b
    add hl, hl
    inc b
    daa
    inc b
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    or e
    ld l, a
    or b
    nop
    rst $38
    add hl, bc
    ld [bc], a
    ld c, $00
    cp $fe
    db $fd
    cp $c1
    jr nc, @-$5e

    ld c, $a3
    inc h
    rra
    inc c
    inc sp
    inc c
    pop bc
    ld d, b
    inc sp
    ld [NextHour], sp
    jr nc, jr_01e_50a7

    dec h
    inc b
    and a
    inc c
    and b
    rlca
    dec h
    inc c

jr_01e_50a7:
    and a
    ld [$0ea0], sp
    dec h
    inc b
    daa
    ld [$0429], sp
    ld a, [hl+]
    inc c
    and b
    rlca
    ld a, [hl+]
    jr jr_01e_505f

    ld [$0ea0], sp
    jr nc, jr_01e_50c1

    add hl, hl
    ld [$0425], sp

jr_01e_50c1:
    and a
    jr @-$5e

    dec b
    dec h
    ld [$0ea0], sp
    jr nc, @+$06

    pop bc
    jr nc, jr_01e_50f8

    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_01e_5106

    inc b
    ld a, [hl+]
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_01e_5110

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_01e_511a

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, jr_01e_5124

    inc b
    or d
    inc hl
    ld a, [hl+]

jr_01e_50f8:
    ld [$20c1], sp
    dec h
    inc c
    pop bc
    jr nc, @+$32

    inc b
    ld a, [hl+]
    ld [$20c1], sp
    dec h

jr_01e_5106:
    inc c
    pop bc
    jr nc, jr_01e_513a

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h

jr_01e_5110:
    inc c
    pop bc
    jr nc, jr_01e_5144

    inc b
    add hl, hl
    ld [$20c1], sp
    dec h

jr_01e_511a:
    inc b
    and a
    inc c
    and d
    ld [bc], a
    rra
    inc c
    pop bc
    dec h
    dec [hl]

jr_01e_5124:
    inc c
    pop bc
    ld d, b
    inc sp
    ld [$30c1], sp
    ld [hl-], a
    inc c
    pop bc
    ld d, b
    jr nc, jr_01e_513d

    and b

jr_01e_5132:
    rlca
    jr nc, jr_01e_514d

    and b
    ld c, $30
    inc b
    ld [hl-], a

jr_01e_513a:
    ld [$0430], sp

jr_01e_513d:
    and a
    inc b
    rra
    ld [$25c1], sp
    inc sp

jr_01e_5144:
    inc c
    pop bc
    ld d, b
    ld [hl-], a
    ld [$30c1], sp
    jr nc, jr_01e_5159

jr_01e_514d:
    pop bc
    ld d, b
    ld a, [hl+]
    inc b
    and a
    inc c
    and b
    rlca
    ld a, [hl+]
    inc h
    rra
    inc c

jr_01e_5159:
    and b
    ld c, $c1
    dec h
    dec [hl]
    inc c
    pop bc
    ld d, b
    inc sp
    ld [$30c1], sp
    ld [hl-], a
    inc c
    pop bc
    ld d, b
    jr nc, jr_01e_5177

    and b
    rlca
    jr nc, jr_01e_5187

    and b
    ld c, $30
    inc b

jr_01e_5173:
    ld [hl-], a
    ld [$0430], sp

jr_01e_5177:
    and a
    inc b
    rra
    ld [$25c1], sp
    inc sp
    inc c
    pop bc
    ld d, b
    ld [hl-], a
    ld [$30c1], sp
    inc sp
    inc c

jr_01e_5187:
    pop bc
    ld d, b
    inc sp
    inc c
    dec [hl]
    inc c
    scf
    inc b
    and a
    jr jr_01e_5132

    ld c, $1f
    ld [$043a], sp
    add hl, sp
    ld [$043a], sp
    and a
    inc c

jr_01e_519d:
    and b
    rlca
    ld a, [hl-]
    inc c

jr_01e_51a1:
    and b
    ld c, $1f
    ld [$043a], sp
    add hl, sp

Jump_01e_51a8:
    ld [$0c3a], sp
    dec [hl]
    inc b

jr_01e_51ad:
    and a
    inc c
    pop bc
    jr nc, @+$42

    inc c
    ld b, b
    inc c

jr_01e_51b5:
    pop bc
    ld d, b
    ld b, b
    ld [$043a], sp
    add hl, sp
    ld [$0437], sp
    scf
    inc c
    and b
    rlca
    scf
    inc h
    or c
    add [hl]
    and b
    ld c, $c1
    jr nc, jr_01e_5173

    ld [$041f], sp

jr_01e_51cf:
    and b
    ld c, $3a
    inc b

jr_01e_51d3:
    add hl, sp
    inc b
    scf
    inc b

jr_01e_51d7:
    pop bc

jr_01e_51d8:
    jr nz, @+$42

    ld [$30c1], sp
    ld a, [hl-]
    inc b

jr_01e_51df:
    add hl, sp
    ld [$20c1], sp

jr_01e_51e3:
    dec [hl]
    inc b
    or e
    and d

jr_01e_51e7:
    or b
    nop
    rst $38
    add hl, bc

jr_01e_51eb:
    ld h, b
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $a3

jr_01e_51f3:
    inc d
    and b
    ld [bc], a
    jr nz, @+$1a

    and b
    ld b, $20

jr_01e_51fb:
    jr jr_01e_519d

    ld [bc], a
    add hl, hl

jr_01e_51ff:
    jr jr_01e_51a1

    ld b, $29
    jr @-$5e

    ld [bc], a
    jr nz, jr_01e_5220

    and b
    ld b, $20

jr_01e_520b:
    jr jr_01e_51ad

    ld [bc], a
    dec h

jr_01e_520f:
    jr @-$5e

    ld b, $25

jr_01e_5213:
    jr jr_01e_51b5

    ld [bc], a
    jr nz, jr_01e_5230

    and b
    ld b, $20

jr_01e_521b:
    jr @-$5e

    ld [bc], a
    jr nz, jr_01e_5238

jr_01e_5220:
    and b
    ld b, $20

jr_01e_5223:
    jr jr_01e_51d8

    dec d
    and b
    ld [bc], a
    daa
    jr @-$5e

    ld b, $27

jr_01e_522d:
    jr jr_01e_51cf

    ld [bc], a

jr_01e_5230:
    add hl, hl

jr_01e_5231:
    jr jr_01e_51d3

    ld b, $29

jr_01e_5235:
    jr jr_01e_51d7

    ld [bc], a

jr_01e_5238:
    ld a, [hl+]

jr_01e_5239:
    jr @-$5e

    ld b, $2a

jr_01e_523d:
    jr jr_01e_51df

    ld [bc], a
    ld a, [de]

jr_01e_5241:
    jr jr_01e_51e3

    ld b, $1a

jr_01e_5245:
    jr jr_01e_51e7

    ld [bc], a
    daa
    jr jr_01e_51eb

    ld b, $27
    jr @-$5e

    ld [bc], a
    add hl, hl
    jr jr_01e_51f3

    ld b, $29
    jr @-$5e

    ld [bc], a
    ld a, [hl+]

jr_01e_5259:
    jr jr_01e_51fb

    ld b, $2a
    jr jr_01e_51ff

    ld [bc], a
    jr nc, @+$1a

    and b
    ld b, $30
    jr @-$5e

    ld [bc], a
    daa
    jr jr_01e_520b

    ld b, $27
    jr jr_01e_520f

    ld [bc], a
    dec h
    jr jr_01e_5213

    ld b, $25
    jr @-$5e

    ld [bc], a
    inc hl
    jr jr_01e_521b

    ld b, $23
    jr @-$5e

    ld [bc], a
    ld [hl+], a
    jr jr_01e_5223

    ld b, $22
    jr jr_01e_5238

    ld a, $a0
    ld [bc], a
    dec h
    jr jr_01e_522d

    ld b, $25
    jr jr_01e_5231

    ld [bc], a
    dec h
    jr jr_01e_5235

    ld b, $25
    jr jr_01e_5239

    ld [bc], a
    dec h
    jr jr_01e_523d

    ld b, $25
    jr jr_01e_5241

    ld [bc], a
    dec h
    jr jr_01e_5245

    ld b, $25
    jr jr_01e_5259

    nop
    rst $38

jr_01e_52ab:
    add hl, bc
    nop
    dec c
    nop
    cp $fe
    db $fd
    cp $a0
    ld [$0160], sp
    ld h, e
    ld bc, $0a1f
    rra
    add hl, bc
    and b
    inc b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    rra
    add hl, bc
    and b
    inc b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    rra
    add hl, bc
    and b
    dec b
    ld h, b
    ld bc, $0163
    rra
    ld bc, $08a0
    ld h, b
    ld bc, $0163
    rra
    ld a, [bc]
    and b
    ld b, $32
    ld bc, $0113
    rra
    ld a, [bc]
    cp a
    inc b
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    dec h
    pop bc
    jr nc, jr_01e_52ab

    dec bc
    ld [hl+], a
    db $10
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    add hl, bc

jr_01e_5326:
    add hl, hl
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    rra
    db $10
    dec h
    db $10
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    daa
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    add hl, hl
    db $10
    and b
    rlca
    ld b, d
    ld [$0832], sp
    ld [hl-], a
    db $10
    and b
    ld a, [bc]
    ld [hl+], a
    db $10
    rra
    ld [$0832], sp
    and e
    jr z, jr_01e_5326

    ld d, b
    scf
    ld [$05a0], sp
    scf
    db $10
    and b
    add hl, bc
    ld [hl-], a
    ld [$1037], sp
    and b
    dec b
    scf
    db $10
    and b
    add hl, bc
    ld [hl-], a
    db $10
    ld a, [hl-]
    ld [$0837], sp
    add hl, sp
    ld [$0837], sp
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    and b
    dec b
    ld [hl-], a
    db $10
    and b
    add hl, bc
    inc [hl]
    db $10
    and b
    dec b
    inc [hl]
    db $10
    and b
    add hl, bc
    and e
    dec h
    pop bc
    ld b, b
    dec h
    db $10
    daa
    db $10
    pop bc
    jr nc, jr_01e_53e1

    ld [$0832], sp
    pop bc
    ld b, b
    dec h
    db $10
    daa
    db $10
    pop bc
    jr nc, jr_01e_53ed

    ld [$0832], sp
    or b
    nop
    rst $38
    rlca
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $c1
    ld b, b
    and e
    ld h, $32
    jr jr_01e_53f4

    ld [$0835], sp
    scf
    ld [$1839], sp
    scf
    ld [$0839], sp
    scf
    ld [$1839], sp
    scf
    ld [$2039], sp
    scf
    db $10
    ld [hl-], a
    db $10
    ld [hl-], a
    jr @+$36

    ld [$0835], sp
    scf
    ld [$1839], sp

jr_01e_53e1:
    scf
    ld [$0839], sp
    scf
    ld [$1839], sp
    scf
    ld [$2039], sp

jr_01e_53ed:
    scf
    db $10
    ld b, d
    db $10
    pop bc

jr_01e_53f2:
    ld d, b
    and e

jr_01e_53f4:
    dec d
    ld b, d
    jr jr_01e_542f

    ld [$2042], sp
    scf

jr_01e_53fc:
    db $10
    ld b, d
    ld [$0844], sp
    ld b, d
    jr nz, @+$3b

    jr nz, @+$39

    jr nz, @-$3d

    ld h, b
    ld [hl-], a
    jr z, jr_01e_5435

    ld [$2832], sp
    add hl, hl
    ld [$00b0], sp
    rst $38
    rlca
    dec [hl]
    inc b
    ld [bc], a
    cp $fe
    db $fd
    cp $a2

jr_01e_541d:
    dec [hl]
    ld [hl+], a
    ld [$0825], sp
    add hl, hl
    ld [$1830], sp
    inc h
    ld [$0827], sp
    dec hl
    ld [$1832], sp
    dec h

jr_01e_542f:
    ld [$0829], sp
    jr nc, @+$0a

    inc [hl]

jr_01e_5435:
    jr jr_01e_545b

jr_01e_5437:
    ld [$0827], sp
    dec hl
    ld [$1032], sp
    add hl, hl
    ld [$05b1], sp
    and d
    ld b, b
    ld a, [hl+]
    jr nz, @-$5d

    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    daa
    jr nz, jr_01e_53f2

    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    add hl, hl
    jr nz, jr_01e_53fc

jr_01e_545b:
    inc bc
    ld b, d
    ld [$0832], sp
    and c
    ld [bc], a
    inc h
    ld [$0827], sp
    dec hl
    ld [$0832], sp
    and c
    inc bc
    ld b, d
    ld [$0832], sp
    dec h
    ld [$0829], sp
    jr nc, @+$0a

    and d
    ld a, [hl+]
    inc [hl]
    jr jr_01e_541d

    dec [hl]
    inc hl
    ld [$0827], sp
    ld a, [hl+]
    ld [$2aa2], sp
    inc sp
    jr jr_01e_5437

    nop
    rst $38
    dec b
    ld bc, $000a
    cp $fe
    db $fd
    cp $a2
    ld bc, $20c1
    ld sp, $a00a
    ld a, [bc]
    dec sp
    dec b
    add hl, sp
    dec b
    jr c, jr_01e_54a4

    ld [hl], $05
    inc [hl]
    dec b
    ld [hl-], a

jr_01e_54a4:
    dec b
    ld sp, $2b05
    dec b
    add hl, hl
    dec b
    dec hl
    dec b
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    pop bc
    rra
    ld sp, $320a
    ld a, [bc]
    pop bc
    jr nz, @+$3a

    ld a, [bc]
    inc h
    ld a, [bc]
    rra
    ld a, [bc]
    inc h
    ld a, [bc]
    or c
    inc b
    and d
    ld [bc], a
    pop bc
    ld d, b
    ld sp, $a014
    dec b
    ld sp, $a014
    inc c
    add hl, hl
    ld a, [bc]
    and b
    rlca
    add hl, hl
    inc d
    and b
    inc c
    jr z, jr_01e_54e7

    ld [hl+], a
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, $0a
    ld sp, $2b0a
    ld a, [bc]

jr_01e_54e7:
    add hl, hl
    ld a, [bc]
    jr z, jr_01e_54f5

    add hl, hl
    ld a, [bc]
    pop bc
    rra
    jr z, jr_01e_54fb

    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_01e_54f5:
    jr z, @+$0c

    add hl, hl
    ld a, [bc]
    ld h, $0a

jr_01e_54fb:
    ld hl, $310a
    ld a, [bc]
    pop bc
    jr nz, jr_01e_54a4

    ld bc, $0a24
    inc sp
    ld a, [bc]
    rra
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    pop bc
    rra
    ld sp, $310a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld [hl], $0a
    add hl, hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    jr z, jr_01e_552d

    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    and b
    dec b

jr_01e_552d:
    inc h
    inc d
    and b
    inc c
    pop bc
    jr nz, jr_01e_555f

    dec b
    add hl, hl
    dec b
    jr z, jr_01e_553e

    ld h, $05
    inc h
    dec b
    ld [hl+], a

jr_01e_553e:
    dec b
    and d
    ld [bc], a
    pop bc
    jr nc, jr_01e_5568

jr_01e_5544:
    ld a, [bc]
    and b
    dec b
    inc h
    inc d
    and b
    inc c
    inc h
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    and b
    dec b
    add hl, hl
    inc d
    and b
    inc c
    add hl, hl
    ld a, [bc]

jr_01e_555f:
    dec hl
    inc d
    add hl, hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    or b
    nop
    rst $38

jr_01e_5568:
    dec b
    ld bc, $000e
    cp $fe
    db $fd
    cp $a3
    dec h
    and b
    ld c, $c1
    jr nz, jr_01e_55b0

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    pop bc
    jr nz, jr_01e_55bc

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    dec sp
    ld a, [bc]
    pop bc
    jr nz, @+$43

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    ld b, c
    ld a, [bc]
    pop bc
    jr nz, jr_01e_55d0

    inc d
    pop bc
    rra
    inc [hl]
    ld a, [bc]
    dec sp
    ld a, [bc]
    or c
    inc b
    pop bc
    jr nc, jr_01e_5544

    ld h, $39
    inc d
    jr c, jr_01e_55b0

    ld [hl], $0a
    inc [hl]
    inc d
    ld sp, $340a
    ld a, [bc]
    ld [hl], $14

jr_01e_55b0:
    ld [hl-], a
    ld a, [bc]
    ld [hl], $0a
    inc [hl]
    ld e, $31
    ld a, [bc]
    pop bc
    rra
    dec hl
    ld a, [bc]

jr_01e_55bc:
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld sp, $320a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    pop bc
    jr nz, jr_01e_55f8

    ld a, [bc]
    pop bc
    rra

jr_01e_55d0:
    add hl, sp
    ld a, [bc]
    jr c, jr_01e_55de

    ld [hl], $0a
    pop bc
    jr nz, jr_01e_5611

    inc d
    rra
    inc d
    pop bc
    rra

jr_01e_55de:
    add hl, sp
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld sp, $390a
    ld a, [bc]
    ld [hl], $0a
    ld [hl-], a
    ld a, [bc]
    dec hl
    ld a, [bc]
    jr c, jr_01e_55f8

    pop bc
    jr nz, jr_01e_562a

    inc d
    ld sp, $c114
    rra
    ld [hl-], a
    ld a, [bc]

jr_01e_55f8:
    inc [hl]
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    and e
    inc h
    pop bc
    jr nc, @+$33

    ld a, [bc]
    and b
    dec b
    ld sp, $a014
    inc c
    ld sp, $c10a
    jr nz, jr_01e_5641

    inc d
    and b

jr_01e_5611:
    dec c
    ld sp, $340a
    ld a, [bc]
    and b
    inc c
    ld [hl], $0a
    and b
    dec b
    ld [hl], $14
    and b
    inc c
    ld [hl], $0a
    and b
    dec c
    jr c, jr_01e_563a

    and b
    ld c, $36
    ld a, [bc]

jr_01e_562a:
    jr c, jr_01e_5636

    or b
    nop
    rst $38
    dec b
    dec d
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd

jr_01e_5636:
    cp $19
    ld a, [bc]
    add hl, hl

jr_01e_563a:
    ld a, [bc]
    rra
    inc d
    or a
    inc b
    and d
    rra

jr_01e_5641:
    add hl, de
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld sp, $210a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld sp, $240a
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld h, $0a
    add hl, hl
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld hl, $240a
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    add hl, de
    ld a, [bc]
    and d
    dec d
    inc h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr z, jr_01e_5673

    inc h
    ld a, [bc]
    add hl, de
    ld a, [bc]
    add hl, hl
    inc d
    add hl, de
    ld a, [bc]
    dec de
    ld a, [bc]

jr_01e_5673:
    ld h, $0a
    dec hl
    ld a, [bc]
    inc sp
    ld a, [bc]
    inc [hl]
    inc d
    inc h
    inc d
    add hl, de
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    rra
    inc d
    or a
    daa
    or b
    nop
    rst $38
    dec b
    nop
    dec c
    nop
    cp $fe
    db $fd
    cp $a0
    dec bc
    ld d, b
    ld bc, $0162
    rra
    ld [$0aa0], sp
    ld [de], a
    ld bc, $0113
    rra
    ld [$0a1f], sp
    and b
    rlca
    ld [de], a
    ld bc, $0113
    rra
    ld [$04ba], sp
    and b
    dec bc
    ld d, b
    ld bc, $0162
    rra
    ld [$0aa0], sp
    ld [de], a
    ld bc, $0113
    rra
    ld [$0a1f], sp
    and b
    rlca
    ld [de], a
    ld bc, $0113
    rra
    ld [$12bc], sp
    or b
    nop
    rst $38
    inc b
    ld bc, $0009
    cp $fe
    db $fd
    cp $c1
    cpl
    jr nc, jr_01e_56dd

    ld [hl-], a
    ld b, $33
    inc c
    dec [hl]
    inc c

jr_01e_56dd:
    inc hl
    inc c
    dec [hl]
    inc c
    ld a, [hl+]
    inc c
    ld a, [hl+]
    ld b, $29
    ld b, $2a
    ld b, $30
    ld b, $30
    ld b, $32
    ld b, $33
    inc c
    jr nc, jr_01e_56ff

    inc hl
    inc c
    ld a, [hl+]
    ld b, $25
    ld b, $2a
    ld b, $32
    inc c
    ld [hl+], a
    ld [de], a

jr_01e_56ff:
    rra
    inc c
    ld [hl+], a
    ld b, $23
    ld b, $25
    inc c
    ld a, [hl+]
    inc c
    inc sp
    jr jr_01e_573e

    inc c
    jr nc, jr_01e_571b

    rra
    inc c
    ld [hl+], a
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    rra
    inc c
    daa
    inc c

jr_01e_571b:
    dec h
    inc c
    jr nz, jr_01e_572b

    dec h
    ld [de], a
    add hl, hl
    ld b, $2a
    inc c
    ld [hl+], a
    inc c
    dec [hl]
    inc c
    ld a, [hl+]
    inc c

jr_01e_572b:
    ld a, [hl+]
    ld b, $30
    ld b, $32
    ld b, $33
    ld b, $32
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    jr nc, jr_01e_5749

    add hl, hl

jr_01e_573e:
    inc c
    dec h
    inc c
    jr nz, jr_01e_574f

    and d
    ld [bc], a
    add hl, hl
    inc c
    dec h
    inc c

jr_01e_5749:
    inc hl
    inc c
    add hl, de
    inc c
    dec d
    inc c

jr_01e_574f:
    dec h
    inc c
    inc hl
    ld b, $25
    ld b, $23
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $22
    ld b, $25
    ld b, $22
    inc c
    dec d
    inc c
    ld a, [de]
    inc c
    dec d
    inc c
    ld a, [de]
    ld b, $22
    ld b, $1a
    ld b, $22
    ld b, $19
    inc c
    inc hl
    inc c
    rla
    ld b, $19
    ld b, $1a
    ld b, $17
    ld b, $1a
    inc c
    dec h
    inc c
    ld a, [de]
    ld b, $20
    ld b, $22
    ld b, $1a
    ld b, $25
    inc c
    inc hl
    inc c
    inc hl
    ld b, $22
    ld b, $20
    ld b, $1a
    ld b, $25
    inc c
    inc hl
    inc c
    dec h
    ld b, $29
    ld b, $30
    inc c
    or b
    nop
    rst $38
    inc b
    ld [bc], a
    ld a, [bc]
    nop
    cp $fe
    db $fd
    cp $c1
    cpl
    and e
    dec h
    add hl, sp
    inc c
    scf
    inc c
    add hl, sp
    inc c
    and b
    dec b
    ld a, [hl+]
    inc c
    and b
    ld a, [bc]
    ld a, [hl-]
    jr jr_01e_57f2

    inc c
    ld [hl-], a
    inc c
    inc sp
    jr @+$39

    jr @+$37

    inc c
    inc sp
    ld b, $35
    inc c
    ld a, [hl+]
    ld [de], a
    ld [hl-], a
    inc c
    rra
    jr jr_01e_5806

    inc c
    scf
    inc c
    rra
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    dec [hl]
    inc c
    rra
    inc c
    ld [hl-], a
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    rra
    inc c
    jr nc, jr_01e_57f4

    add hl, hl
    inc c
    ld [hl-], a
    inc c
    rra
    jr jr_01e_5824

    inc c
    ld a, [hl-]
    inc c

jr_01e_57f2:
    ld [hl-], a
    inc c

jr_01e_57f4:
    dec [hl]
    inc c
    scf
    inc c
    dec [hl]
    jr jr_01e_582d

    inc c
    dec [hl]
    inc c
    inc sp
    jr jr_01e_5831

    inc c
    add hl, hl
    inc c
    jr nc, jr_01e_5812

jr_01e_5806:
    jr nc, jr_01e_5814

    jr nc, jr_01e_5816

    ld [hl-], a
    inc c
    inc sp
    inc c
    jr nc, @+$1a

    add hl, hl
    inc c

jr_01e_5812:
    ld a, [hl+]
    inc c

jr_01e_5814:
    add hl, hl
    inc c

jr_01e_5816:
    ld a, [hl+]
    jr @+$29

    jr jr_01e_5844

    inc c
    dec h
    inc c
    dec h
    inc c
    daa
    jr jr_01e_5846

    inc c

jr_01e_5824:
    daa
    inc c
    add hl, hl
    jr jr_01e_584e

    inc c
    add hl, hl
    inc c
    ld a, [hl+]

jr_01e_582d:
    jr jr_01e_5856

    inc c
    add hl, hl

jr_01e_5831:
    inc c
    ld a, [hl+]
    inc c
    inc sp
    inc c
    dec [hl]
    inc c
    or b
    nop
    rst $38
    inc b
    dec d
    ld [bc], a
    ld [bc], a
    cp $fe
    db $fd
    cp $1a

jr_01e_5844:
    inc c
    dec h

jr_01e_5846:
    inc c
    rra
    inc c
    jr nz, jr_01e_5857

    ld a, [de]
    inc c
    ld [hl+], a

jr_01e_584e:
    inc c
    rra
    jr jr_01e_586c

    inc c
    dec h
    inc c
    rra

jr_01e_5856:
    inc c

jr_01e_5857:
    jr nz, jr_01e_5865

    ld [hl+], a
    inc c
    dec h
    ld b, $2a
    inc c
    ld a, [de]
    ld [de], a
    ld a, [de]
    inc c
    dec h
    inc c

jr_01e_5865:
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h

jr_01e_586c:
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    inc sp
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    rra
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld [hl-], a
    inc c
    ld a, [hl+]
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    ld a, [hl+]
    inc c
    dec h
    inc c
    ld a, [de]
    inc c
    dec h
    inc c
    inc sp
    inc c
    dec h
    inc c
    dec d
    jr jr_01e_58c7

    jr jr_01e_58c5

    jr jr_01e_58cb

    jr jr_01e_58bf

    jr jr_01e_58ce

    jr jr_01e_58cd

    jr jr_01e_58d2

    inc c
    ld [hl+], a
    inc c
    inc hl
    inc c
    ld a, [hl+]
    inc c
    and d
    ld c, $a0
    inc b
    ld b, e
    inc c
    ld c, d
    inc c

jr_01e_58bf:
    and d
    dec d
    and b
    ld [bc], a
    ld [hl+], a
    inc c

jr_01e_58c5:
    ld a, [hl+]
    inc c

jr_01e_58c7:
    and d
    ld c, $a0
    inc b

jr_01e_58cb:
    ld b, d
    inc c

jr_01e_58cd:
    ld c, d

jr_01e_58ce:
    inc c
    and d
    dec d
    and b

jr_01e_58d2:
    ld [bc], a
    jr nz, jr_01e_58e1

    ld a, [hl+]
    inc c
    and d
    ld c, $a0
    inc b
    ld b, b
    inc c
    ld c, d
    inc c
    and b
    ld [bc], a

jr_01e_58e1:
    and d
    dec d
    dec d
    inc c
    dec h
    inc c
    jr nc, jr_01e_58f5

    dec h
    inc c
    or b
    nop
    rst $38
    inc b
    nop
    ld [$fe00], sp
    cp $fd

jr_01e_58f5:
    cp $50
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    or d
    inc b
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $041f
    ld de, $1001
    ld bc, $041f
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    inc b

jr_01e_5946:
    ld de, $1001
    ld bc, $041f
    or a
    jr nz, jr_01e_599f

    ld bc, $0199
    rra
    ld a, [bc]
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    ld d, b
    ld bc, $0199
    rra
    ld a, [bc]
    ld de, $1001
    ld bc, $0a1f
    ld b, b
    ld bc, $0111
    rra
    ld a, [bc]
    rra
    inc c
    or e
    jr nc, @-$4e

    nop
    rst $38
    inc b
    ld bc, $000a
    cp $fe
    db $fd
    cp $1f
    and b
    pop bc
    jr nz, @-$5e

    ld [$0535], sp
    jr nc, jr_01e_5996

    dec [hl]
    dec b
    jr nc, jr_01e_599a

    dec [hl]

jr_01e_5996:
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld [hl-], a

jr_01e_599a:
    ld a, [bc]
    pop bc
    jr nc, jr_01e_59d0

    ld a, [bc]

jr_01e_599f:
    and b
    dec b
    ld [hl-], a
    inc d
    pop bc
    jr nz, jr_01e_5946

    ld [$0535], sp
    jr nc, jr_01e_59b0

    dec [hl]
    dec b
    jr nc, jr_01e_59b4

    dec [hl]

jr_01e_59b0:
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld [hl-], a

jr_01e_59b4:
    ld a, [bc]
    pop bc
    ld b, b
    ld a, [hl+]
    ld a, [bc]
    and b
    dec b
    ld a, [hl+]
    inc d
    or c
    dec b
    and b
    ld [$30c1], sp
    dec [hl]
    dec b
    inc [hl]
    dec b
    inc sp
    dec b
    ld [hl-], a
    dec b
    pop bc
    ld b, b
    ld sp, $280a

jr_01e_59d0:
    ld bc, $092b
    jr nc, jr_01e_59e9

    and b
    dec b
    jr nc, jr_01e_59ed

    or e
    jr nz, @-$5e

    ld a, [bc]
    pop bc
    jr nz, jr_01e_59ff

    ld a, [bc]
    jr nz, jr_01e_59ed

    ld [hl+], a
    ld a, [bc]
    jr nz, jr_01e_59f1

    inc hl
    ld a, [bc]

jr_01e_59e9:
    jr nz, jr_01e_59f5

    inc h
    ld a, [bc]

jr_01e_59ed:
    jr nz, jr_01e_59f9

    rra
    ld a, [bc]

jr_01e_59f1:
    jr nz, jr_01e_59fd

    ld [hl+], a
    ld a, [bc]

jr_01e_59f5:
    jr nz, jr_01e_5a01

    inc hl
    ld a, [bc]

jr_01e_59f9:
    jr nz, jr_01e_5a05

    inc h
    ld a, [bc]

jr_01e_59fd:
    inc h
    ld a, [bc]

jr_01e_59ff:
    rra
    ld a, [bc]

jr_01e_5a01:
    jr nz, jr_01e_5a0d

    ld [hl+], a
    ld a, [bc]

jr_01e_5a05:
    jr nz, jr_01e_5a11

    inc hl
    ld a, [bc]
    jr nz, jr_01e_5a15

jr_01e_5a0b:
    inc h
    ld a, [bc]

jr_01e_5a0d:
    jr nz, jr_01e_5a19

    rra
    ld a, [bc]

jr_01e_5a11:
    jr nz, jr_01e_5a1d

    ld [hl+], a
    ld a, [bc]

jr_01e_5a15:
    jr nz, @+$0c

    inc h
    ld a, [bc]

jr_01e_5a19:
    dec h
    ld a, [bc]
    ld h, $0a

jr_01e_5a1d:
    daa
    ld a, [bc]
    or c
    ld l, $b0
    nop
    rst $38
    inc b
    ld [bc], a
    inc c
    nop
    cp $fe
    db $fd
    cp $a3
    ld a, [hl+]
    rra
    ld a, [bc]
    and b
    ld b, $15
    ld a, [bc]
    and b
    inc bc
    dec d
    dec b
    rra
    dec b
    and b
    ld b, $18
    ld a, [bc]
    and b
    inc bc
    jr jr_01e_5a47

    rra
    dec b
    and b
    ld b, $17

jr_01e_5a47:
    ld a, [bc]
    and b
    inc bc
    rla
    dec b
    rra
    dec b
    and b
    ld b, $1a

jr_01e_5a51:
    ld a, [bc]
    or c
    inc b
    and b
    inc c
    pop bc
    jr nz, jr_01e_5a8e

    ld a, [bc]
    jr c, jr_01e_5a66

    ld b, b
    ld a, [bc]
    pop bc
    ld d, b
    ld b, b
    ld a, [bc]
    and a
    ld a, [bc]
    and b
    dec b

jr_01e_5a66:
    ld b, b
    ld e, $c1
    jr nz, jr_01e_5a0b

    inc bc

jr_01e_5a6c:
    inc sp
    dec b
    and b
    inc c
    dec [hl]
    dec b
    ld [hl], $05
    scf
    dec b
    jr c, jr_01e_5a82

jr_01e_5a78:
    add hl, sp
    ld a, [bc]
    pop bc
    ld d, b
    ld a, [hl-]
    inc d
    and b
    dec b
    ld a, [hl-]
    inc d

jr_01e_5a82:
    and b
    inc c

jr_01e_5a84:
    pop bc
    jr nz, jr_01e_5abc

    ld a, [bc]
    jr c, jr_01e_5a94

    ld b, b
    ld a, [bc]
    pop bc
    ld d, b

jr_01e_5a8e:
    ld b, b
    ld a, [bc]
    and a
    ld a, [bc]
    and b
    dec b

jr_01e_5a94:
    ld b, b
    ld e, $a0
    inc c
    pop bc
    jr nz, jr_01e_5ad5

    dec b
    add hl, sp
    dec b
    jr c, jr_01e_5aa5

    scf
    dec b
    ld [hl], $0a
    dec [hl]

jr_01e_5aa5:
    ld a, [bc]
    pop bc
    ld d, b
    inc [hl]
    inc d
    and b
    dec b
    inc [hl]
    inc d
    or c
    jr jr_01e_5a51

    inc c
    pop bc
    ld d, b
    and e
    ld [$2834], sp
    and a
    ld a, [bc]
    jr nc, jr_01e_5ac6

jr_01e_5abc:
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_01e_5aca

    inc [hl]
    ld d, b
    inc [hl]
    jr z, jr_01e_5a6c

    ld a, [bc]

jr_01e_5ac6:
    jr nc, jr_01e_5ad2

    ld [hl-], a
    ld a, [bc]

jr_01e_5aca:
    jr nc, jr_01e_5ad6

    dec [hl]
    ld d, b
    inc [hl]
    jr z, jr_01e_5a78

    ld a, [bc]

jr_01e_5ad2:
    jr nc, jr_01e_5ade

    ld [hl-], a

jr_01e_5ad5:
    ld a, [bc]

jr_01e_5ad6:
    jr nc, jr_01e_5ae2

    inc [hl]
    ld d, b
    inc [hl]
    jr z, jr_01e_5a84

    ld a, [bc]

jr_01e_5ade:
    jr nc, jr_01e_5aea

    ld [hl-], a
    ld a, [bc]

jr_01e_5ae2:
    inc [hl]
    ld a, [bc]
    dec [hl]
    ld d, b
    or b
    nop
    rst $38
    inc b

jr_01e_5aea:
    dec d
    ld [bc], a
    inc bc
    cp $fe
    db $fd
    cp $15
    ld a, [bc]
    dec h
    ld a, [bc]
    jr jr_01e_5b01

    jr z, jr_01e_5b03

    rla
    ld a, [bc]
    daa
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_01e_5b01:
    cp c
    inc b

jr_01e_5b03:
    jr nz, jr_01e_5b0f

    jr nc, jr_01e_5b11

    dec de
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_01e_5b0f:
    add hl, de
    ld a, [bc]

jr_01e_5b11:
    add hl, hl
    ld a, [bc]
    or a
    dec c
    or b
    nop
    rst $38
    inc b
    nop
    dec bc
    nop
    cp $fe
    db $fd
    cp $a0
    add hl, bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    dec b
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    ld [JumpTable_4], sp
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    inc bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    cp b
    inc b
    and b
    add hl, bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    dec b
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    ld [JumpTable_4], sp
    ld d, h
    ld [bc], a
    rra
    db $10
    and b
    inc bc
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    rra
    db $10
    cp b
    dec d
    or b
    nop
    rst $38
    dec b
    ld bc, $0009
    cp $fe
    db $fd
    cp $c1
    dec h
    add hl, de
    inc b
    rla
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc c
    rra
    db $10
    inc h
    db $10
    jr nz, jr_01e_5b87

    jr nz, jr_01e_5b91

    rra
    db $10
    jr nz, jr_01e_5b95

    rla
    db $10

jr_01e_5b87:
    add hl, de
    inc b
    rla
    inc b
    add hl, de
    inc b
    ld a, [de]
    inc c
    rra
    db $10

jr_01e_5b91:
    inc h
    db $10
    jr nz, @+$0a

jr_01e_5b95:
    jr nz, @+$12

    rra
    db $10
    jr nz, jr_01e_5bab

    ld hl, $c110
    ld [hl], b
    jr nz, jr_01e_5bb1

    and b
    inc bc
    jr nz, jr_01e_5bb5

    and a
    ld [$25c1], sp
    daa
    db $10

jr_01e_5bab:
    jr nz, jr_01e_5bb5

    jr nz, jr_01e_5bbf

    rra
    db $10

jr_01e_5bb1:
    rla
    ld [$1827], sp

jr_01e_5bb5:
    and b
    add hl, bc
    add hl, de
    ld [$0815], sp
    add hl, de
    ld [$0820], sp

jr_01e_5bbf:
    add hl, de
    ld [$0824], sp
    dec h
    ld [$0820], sp
    jr nz, jr_01e_5bd9

    daa
    ld [$0824], sp
    jr nz, @+$12

    rra
    db $10
    add hl, de
    ld [$0815], sp
    add hl, de

jr_01e_5bd6:
    ld [$0820], sp

jr_01e_5bd9:
    add hl, de
    ld [$0824], sp
    ld a, [hl+]
    ld [$0820], sp
    jr nz, jr_01e_5beb

    daa
    ld [$0824], sp
    jr nz, jr_01e_5bf1

    jr nz, @+$12

jr_01e_5beb:
    rra
    db $10
    add hl, de
    ld [$0815], sp

jr_01e_5bf1:
    add hl, de
    ld [$0820], sp
    add hl, de
    ld [$0824], sp
    dec h
    ld [$0820], sp
    jr nz, jr_01e_5c0f

    daa
    ld [$0824], sp

jr_01e_5c03:
    jr nz, @+$12

    daa
    ld [$0820], sp
    inc h
    ld [$0827], sp
    jr nz, jr_01e_5c17

jr_01e_5c0f:
    inc h
    ld [$0814], sp
    inc h
    ld [$0424], sp

jr_01e_5c17:
    dec h
    inc b
    daa
    inc b
    add hl, hl
    inc b
    ld a, [hl+]
    db $10
    ld [hl-], a
    db $10
    ld a, [hl+]
    db $10
    jr nc, jr_01e_5c35

    or b
    nop
    rst $38
    dec b
    ld bc, $000a
    cp $fe
    db $fd
    cp $c1
    jr nz, jr_01e_5bd6

    dec h
    dec h

jr_01e_5c35:
    db $10
    jr nz, @+$0a

    ld [hl+], a
    ld [$0824], sp
    daa

jr_01e_5c3d:
    db $10
    ld [hl+], a
    ld [$1025], sp
    jr nz, @+$12

    dec h
    db $10
    jr nz, jr_01e_5c58

    dec h
    db $10
    jr nz, @+$0a

    ld [hl+], a
    ld [$0824], sp
    daa
    db $10
    ld [hl+], a
    ld [$1025], sp
    jr nz, @+$12

jr_01e_5c58:
    dec h
    db $10
    jr nz, jr_01e_5c64

    dec h
    ld [$70c1], sp
    inc h
    jr nz, jr_01e_5c03

    inc bc

jr_01e_5c64:
    inc h
    jr nz, @-$57

    jr nz, @-$3d

    jr nz, @-$5e

    ld a, [bc]
    jr nz, jr_01e_5c76

    jr nc, jr_01e_5c74

    and b
    dec b
    jr nc, jr_01e_5c7c

jr_01e_5c74:
    rra
    inc c

jr_01e_5c76:
    and b
    ld a, [bc]
    jr nc, @+$0a

    and b
    dec b

jr_01e_5c7c:
    jr nc, @+$12

    and b
    ld a, [bc]
    dec h
    ld [$05a0], sp
    dec h
    ld [$0aa0], sp
    daa
    ld [$0829], sp
    ld [hl-], a
    ld [$0830], sp
    and b
    dec b
    jr nc, @+$0a

    and b
    ld a, [bc]
    dec hl
    ld [$0830], sp
    and a
    jr nz, jr_01e_5c3d

    ld a, [bc]
    jr nc, @+$0a

    and b
    dec b
    jr nc, jr_01e_5cb4

    and b
    ld a, [bc]
    dec h
    ld [$0835], sp
    inc [hl]
    ld [$0832], sp
    ld sp, $3008
    ld [$082b], sp

jr_01e_5cb4:
    jr nc, jr_01e_5cbe

    daa
    ld [$20a7], sp
    and b
    ld a, [bc]
    jr nc, jr_01e_5cc6

jr_01e_5cbe:
    and b
    dec b

Jump_01e_5cc0:
    jr nc, jr_01e_5cd2

    and b
    ld a, [bc]
    dec h
    db $10

jr_01e_5cc6:
    daa
    ld [$0829], sp
    ld [hl-], a
    ld [$1030], sp
    dec hl
    ld [$0830], sp

jr_01e_5cd2:
    and a
    db $10
    dec hl
    ld [$05a0], sp
    dec hl
    ld [$0ba0], sp
    jr nc, jr_01e_5cf6

    daa
    db $10
    add hl, hl
    ld [$082a], sp
    jr nc, jr_01e_5cee

    ld [hl-], a
    db $10
    pop bc
    ld b, b
    dec [hl]
    db $10
    and b
    dec b

jr_01e_5cee:
    dec [hl]
    db $10
    and b
    ld a, [bc]
    inc [hl]
    db $10
    or b
    nop

jr_01e_5cf6:
    rst $38
    dec b
    ld a, [bc]
    inc b
    ld [bc], a
    cp $fe
    db $fd
    cp $a3
    jr z, @+$27

    ld [$1820], sp
    dec h
    ld [$1030], sp
    dec h
    ld [$0823], sp
    ld a, [hl+]
    ld [$0821], sp
    ld a, [hl+]
    ld [$0823], sp
    ld a, [hl+]
    ld [$0821], sp
    ld a, [hl+]
    ld [$05b2], sp
    dec h
    ld [$1820], sp
    dec h
    ld [$1830], sp
    inc h
    ld [$0827], sp
    jr nz, jr_01e_5d33

    daa
    ld [$0824], sp
    daa
    ld [$0820], sp

jr_01e_5d33:
    daa
    ld [$13b2], sp
    ld a, [hl+]
    ld [$1820], sp
    jr nz, jr_01e_5d45

    jr nc, jr_01e_5d57

    jr nz, jr_01e_5d49

    ld a, [hl+]
    ld [$0822], sp

jr_01e_5d45:
    ld a, [hl+]
    ld [$0824], sp

jr_01e_5d49:
    daa
    ld [$0820], sp
    ld a, [hl+]
    ld [$00b0], sp
    rst $38
    dec b
    nop
    ld [$fe00], sp

jr_01e_5d57:
    cp $fd
    cp $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $b4
    inc b
    ld d, b
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $c8
    inc bc
    ld b, d
    ld [Start], sp
    sbc c
    ld bc, $061f
    ld de, $1001
    ld bc, $061f
    ld de, $1001
    ld bc, $061f
    ld d, b
    ld bc, $0199
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $b2
    inc [hl]
    ld d, b
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $40
    ld bc, $0111
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $50
    ld bc, $0199
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $11
    ld bc, $0110
    rra
    ld b, $c8
    inc bc
    ld b, d
    ld [$00b0], sp
    rst $38
    nop
    ld bc, $170f
    daa
    ld bc, $0125
    and c
    cpl
    add hl, sp
    ld [bc], a
    and b
    inc bc
    and c
    rla
    add hl, hl
    ld [bc], a
    rst $38
    nop
    nop
    rrca
    nop
    and b
    dec b
    ld b, h
    ld bc, $07a0
    xor [hl]
    db $10
    and b
    ld a, [bc]
    ld b, h
    ld [bc], a
    xor [hl]
    nop
    ld b, l
    ld bc, $10ae
    ld b, l
    ld [bc], a
    and e
    ld [hl], e
    ld b, [hl]
    ld a, [bc]
    xor [hl]
    nop
    and b
    inc b
    ld b, [hl]
    dec b
    xor [hl]
    db $10
    ld b, l
    ld bc, $02a0
    ld b, l
    ld [bc], a
    rst $38
    nop
    nop
    ld b, $00
    ld d, d
    inc b
    ld d, b
    ld [bc], a
    rra
    ld [bc], a
    and b
    rrca
    ld h, b
    inc bc
    ld b, b
    ld bc, $00ff
    nop
    rrca
    nop
    jr nc, jr_01e_5ed3

    rra

jr_01e_5ed3:
    ld bc, $0132
    jr nz, jr_01e_5ed9

    and b

jr_01e_5ed9:
    dec b
    jr nz, jr_01e_5edd

    and b

jr_01e_5edd:
    rrca
    rra
    ld bc, $0102
    dec [hl]
    ld bc, $011f
    ld [bc], a
    ld bc, $0135
    rra
    ld bc, HeaderTitle
    rra
    ld bc, $0120
    rra
    ld bc, $0110
    and b
    inc b
    db $10
    inc bc
    rst $38
    nop
    ld [bc], a
    rrca
    ld d, $32
    ld bc, $0435
    and b
    dec bc
    ld [hl-], a
    ld [bc], a
    scf
    inc b
    and b
    rrca
    ld [hl-], a
    ld [bc], a
    dec [hl]
    inc b
    and b
    dec bc
    ld [hl-], a
    ld [bc], a
    ld [hl], $04
    and b
    ld [$0232], sp
    ld [hl], $04
    and b
    inc bc
    ld [hl-], a
    ld [bc], a
    dec [hl]
    inc b
    rst $38
    nop
    nop
    rrca
    rra
    ld h, $02
    and c
    rla
    jr z, jr_01e_5f33

    rra
    ld bc, $05a0
    ld [hl], $02
    rst $38

jr_01e_5f33:
    nop
    nop
    ld c, $00
    inc de
    ld [bc], a
    rra
    ld [bc], a
    ld [de], a
    ld [bc], a
    and b
    inc b
    rra
    ld [bc], a
    ld de, $ff03
    nop
    ld [bc], a
    rrca
    ld d, $10
    ld b, $a1
    rla
    and b
    rrca
    daa
    inc b
    and b
    inc bc
    dec h
    inc b
    rst $38
    nop
    ld [bc], a
    rrca
    ld d, $27
    ld b, $a0
    ld [bc], a
    rra
    ld bc, $0232
    ld [hl-], a
    inc bc
    rst $38
    nop
    db $10
    rrca
    nop
    ld b, d
    ld bc, $0290
    sbc c
    ld [bc], a
    ld h, d
    inc b
    and b
    dec b
    ld h, d
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    rra
    inc bc
    jr jr_01e_5f7e

    xor [hl]

jr_01e_5f7e:
    db $10
    dec de
    ld [bc], a
    xor [hl]
    nop
    and b
    rlca
    dec de
    inc bc
    rst $38
    nop
    nop
    rrca
    nop
    ld [hl-], a
    ld [bc], a
    rra
    inc bc
    ld b, l
    ld [bc], a
    rra
    db $10
    rst $38
    nop
    nop
    rrca
    nop
    pop bc
    dec d
    db $10
    ld bc, $0112
    inc d
    ld [bc], a
    rla
    ld [bc], a
    dec b
    inc bc
    rst $38
    nop
    nop
    rrca
    nop
    pop bc
    dec d
    db $10
    ld bc, $0112
    inc d
    ld [bc], a
    rla
    ld [bc], a
    dec b
    dec b
    and b
    ld [$0514], sp
    ld [de], a
    ld b, $10
    dec b
    and b
    inc bc
    db $10
    ld b, $ff
    rra
    ld [bc], a
    and b
    ld [bc], a
    nop
    nop
    rrca
    nop
    ld sp, $a002
    inc c
    ld [hl], $02
    ld sp, $1f02
    ld bc, $0fa0
    ld sp, $a002
    ld a, [bc]
    ld [hl], $02
    ld sp, $1f02
    ld [bc], a
    and b
    rrca
    ld sp, $a002

jr_01e_5fe6:
    ld a, [bc]
    ld [hl], $02
    ld sp, $1f02
    ld [bc], a
    and b
    rrca
    dec hl
    ld bc, $0131
    and b
    ld b, $36
    ld b, $31
    ld [bc], a
    and b
    inc bc
    ld [hl], $05
    ld sp, $ff03
    nop
    nop
    dec c
    nop
    ld [de], a
    ld bc, NextTimerMinute
    and b
    inc bc

Jump_01e_600a:
    inc d
    ld [$00ff], sp
    ld [bc], a
    rrca
    dec d
    ld [hl+], a
    inc bc
    and b
    inc b
    ld [hl+], a
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    pop bc
    dec d
    ld b, d
    inc bc
    ld b, b
    ld [bc], a
    ld b, d
    inc bc
    ld b, b
    inc bc
    ld c, c
    ld b, $a0
    dec b
    ld c, c
    ld b, $ff
    nop
    nop
    rlca
    nop
    db $fd
    cp $11
    jr nc, jr_01e_5fe6

    nop
    rst $38
    nop
    nop
    ld [$fd00], sp
    cp $c4
    ld [hl], b
    ld d, b
    sub l
    call nz, $5050
    add b
    call nz, Call_01e_5060
    ld h, b
    or b
    nop
    rst $38
    nop
    ld bc, $000f
    ld [hl-], a
    inc bc
    ld [hl], $03
    add hl, sp
    ld [bc], a
    ld b, [hl]
    rlca
    and b
    inc b
    ld b, [hl]
    ld a, [bc]
    rst $38
    nop
    ld bc, $000c
    add hl, hl
    inc bc
    ld [hl-], a
    inc bc
    ld [hl], $02
    ld [hl-], a
    rlca
    and b
    inc b
    ld [hl-], a
    ld a, [bc]
    rst $38
    nop
    ld bc, $000f
    daa
    inc b
    dec hl
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    scf
    inc b
    dec sp
    inc b
    ld b, d
    inc b
    ld b, l
    inc b
    ld b, a
    inc b
    and b
    dec b
    ld b, a
    rlca
    rst $38
    nop
    ld bc, $000c
    ld [hl+], a
    inc b
    daa
    inc b
    dec hl
    inc b
    ld [hl-], a
    inc b
    dec [hl]
    inc b
    scf
    inc b
    dec sp
    inc b
    ld b, d
    inc b
    ld b, l
    inc b
    and b
    dec b
    ld b, l
    rlca
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    ld d, b
    ld [bc], a
    rra
    ld bc, $02bf
    rst $38
    nop
    ld bc, $000a
    ld e, e
    ld [bc], a
    rra
    ld bc, $02bf
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    add hl, sp
    ld [bc], a
    ld b, d
    inc bc
    and b
    dec b
    ld b, d
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_01e_60d9:
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rrca
    nop
    inc d
    inc b
    rra
    ld [bc], a
    inc d
    dec b
    rra
    ld [bc], a
    and b
    ld b, $14
    dec b
    rst $38
    nop
    nop
    dec bc
    nop
    dec sp
    inc b
    rra
    ld [bc], a
    dec sp
    dec b
    rst $38
    nop
    ld [bc], a
    rrca
    nop
    daa
    ld bc, $10ae
    dec hl
    dec b
    and b
    dec b
    dec hl
    ld [$06ff], sp
    ld bc, $0009
    db $fd
    cp $a3
    dec h
    pop bc
    jr nc, @-$5c

    ld bc, $08a0
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $c1
    jr nc, jr_01e_60d9

    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    dec h
    ld b, $a2
    nop
    daa
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $27
    ld b, $25
    ld b, $b1
    dec b
    and d
    ld bc, $0625
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $2a
    inc c
    and b
    ld a, [bc]
    jr nc, jr_01e_6188

    and b
    inc b
    jr nc, @+$0e

    and b
    ld a, [bc]

jr_01e_6188:
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    inc c
    and b
    ld a, [bc]
    jr nc, @+$08

    and b
    add hl, bc
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7

jr_01e_61b7:
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $a0
    ld [$30c1], sp
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $2a
    inc c
    and b
    ld a, [bc]
    jr nc, jr_01e_61dc

    and b
    inc b
    jr nc, @+$0e

    and b
    ld a, [bc]

jr_01e_61dc:
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    and b
    ld a, [bc]
    ld [hl-], a
    ld b, $a0
    inc b
    ld [hl-], a
    inc c
    and b
    ld a, [bc]
    jr nc, @+$08

    and b
    add hl, bc
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0625], sp
    daa
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    dec h
    ld b, $a0
    inc b
    dec h
    inc c
    pop bc
    ld h, b
    and b
    ld [$0625], sp
    and a
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $c1
    jr nc, jr_01e_61b7

    ld [$0c2a], sp
    inc hl
    ld b, $27
    inc c
    inc hl
    ld b, $27
    inc c
    ld a, [hl+]
    ld b, $a0
    inc b
    ld a, [hl+]
    ld [de], a
    and b
    ld [$0c30], sp
    dec h
    ld b, $28
    inc c

jr_01e_6230:
    dec h
    ld b, $28
    inc c
    jr nc, @+$08

    and b
    inc b
    jr nc, jr_01e_624c

    and b
    ld [$0c33], sp
    ld [hl-], a
    ld b, $33
    inc c
    ld [hl-], a
    ld b, $33
    inc c
    ld [hl-], a
    ld b, $33
    inc c
    pop bc
    ld h, b

jr_01e_624c:
    dec [hl]
    ld [de], a
    and b
    inc bc
    dec [hl]
    inc h
    pop bc
    jr nc, @-$5e

    ld [$0645], sp
    dec [hl]
    inc c
    ld b, l
    ld b, $a2

jr_01e_625d:
    ld [bc], a
    and b
    ld [$30c1], sp
    dec h
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $27
    ld b, $29
    ld b, $2a
    inc c
    add hl, hl
    ld b, $27
    inc c
    pop bc
    ld h, b
    dec h
    ld b, $a7
    ld [de], a
    and b
    inc bc
    dec h
    ld [hl], $b1
    xor b
    or b
    nop
    rst $38
    ld b, $01
    ld a, [bc]
    nop
    db $fd
    cp $a2
    ld bc, $06a3
    pop bc
    jr nc, jr_01e_6230

    ld a, [bc]
    ld b, b
    ld [de], a

jr_01e_6293:
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    ld b, b
    ld b, $a7
    inc c
    dec [hl]
    ld [de], a
    jr c, jr_01e_62b5

    scf
    ld b, $35
    inc c
    ld [hl-], a
    ld b, $40
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    pop bc
    ld h, b

jr_01e_62b5:
    and h
    cp $40
    jr jr_01e_625d

    ld b, $a0
    dec b
    ld b, b
    ld [hl], $b1
    dec b
    and d
    ld bc, $30c1
    and b
    ld a, [bc]
    ld b, b
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    ld b, b
    ld b, $a7
    inc c
    dec [hl]
    ld [de], a
    jr c, jr_01e_62eb

    scf
    ld b, $35
    inc c
    ld [hl-], a
    ld b, $40
    ld [de], a
    ld b, l
    ld [de], a
    ld b, d
    inc c
    ld b, b
    ld b, $3a
    inc c
    pop bc
    ld h, b

jr_01e_62eb:
    and h
    cp $40
    jr jr_01e_6293

    ld b, $a0
    dec b
    ld b, b
    ld [hl], $b1
    jr nz, @-$3d

    ld d, b
    and b
    ld a, [bc]
    jr c, jr_01e_62ff

    add hl, sp
    ld [bc], a

jr_01e_62ff:
    ld a, [hl-]
    ld c, $a0
    dec b
    ld a, [hl-]
    ld [de], a
    and b
    ld a, [bc]

jr_01e_6307:
    add hl, sp
    inc bc
    jr c, jr_01e_630d

    scf
    dec c

jr_01e_630d:
    and b
    dec b
    scf
    ld [de], a
    and b
    add hl, bc
    add hl, sp
    ld [bc], a
    dec sp
    inc bc
    ld b, b
    dec c
    and b
    dec b
    ld b, b
    ld [de], a
    and b
    ld a, [bc]
    dec sp
    inc bc
    ld b, b
    ld hl, $0aa0
    ld b, e
    ld [de], a
    and b
    dec b
    ld b, e
    ld [de], a
    and b
    ld a, [bc]
    ld b, b
    ld [de], a
    and b
    dec b
    ld b, b
    ld [de], a
    and b
    ld a, [bc]
    ld b, l
    ld [de], a
    and b
    ld b, $45
    ld [hl], $a0
    ld a, [bc]
    and d
    ld [bc], a
    pop bc
    jr nc, jr_01e_6375

    inc c
    jr nc, jr_01e_6357

    dec [hl]
    ld b, $30
    ld [de], a
    scf
    inc c
    dec [hl]
    ld [de], a
    inc sp
    ld b, $32
    ld [de], a
    jr nc, jr_01e_635f

    ld [hl-], a
    jr jr_01e_6307

    ld e, a

jr_01e_6357:
    or b
    nop
    rst $38
    ld b, $15
    ld [bc], a
    inc bc
    db $fd

jr_01e_635f:
    cp $25
    inc c
    jr nc, jr_01e_636a

    dec h
    inc c
    jr nc, jr_01e_636e

    dec h
    inc c

jr_01e_636a:
    jr nc, jr_01e_6372

    dec h
    inc c

jr_01e_636e:
    jr nc, @+$08

    cp a
    inc bc

jr_01e_6372:
    inc hl
    inc c
    ld a, [hl+]

jr_01e_6375:
    ld b, $30
    inc c
    inc sp
    ld b, $23
    inc c
    ld a, [hl+]
    ld b, $30
    inc c
    inc sp
    ld b, $25
    inc c
    jr nc, jr_01e_638c

    ld [hl-], a
    inc c
    dec [hl]
    ld b, $25
    inc c

jr_01e_638c:
    jr nc, jr_01e_6394

    ld [hl-], a
    inc c
    dec [hl]
    ld b, $28
    inc c

jr_01e_6394:
    inc sp
    ld b, $35
    inc c
    inc sp
    ld b, $38
    inc c
    inc sp
    ld b, $35
    inc c
    inc sp
    ld b, $2a
    inc c
    dec [hl]
    ld b, $37
    inc c
    dec [hl]
    ld b, $3a
    inc c
    dec [hl]
    ld b, $37
    inc c
    dec [hl]
    ld b, $25
    inc c
    jr nc, @+$08

    cp a
    inc l
    or b
    nop
    rst $38
    ld b, $00
    ld [$fd00], sp
    cp $a0
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    dec b
    dec d
    ld bc, $0112
    rra
    db $10
    cp b
    inc bc
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    or e
    ld b, b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld [$0115], sp
    ld [de], a
    ld bc, $0a1f
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    ld b, $15
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    rlca
    dec d
    ld bc, $0112
    rra
    ld a, [bc]
    and b
    inc b
    dec d
    ld bc, $0112
    rra
    inc b
    and b
    dec b
    dec d
    ld bc, $0112
    rra
    db $10
    or c
    ld d, c
    or b
    nop
    rst $38
    nop
    nop
    rrca
    nop
    add b
    ld b, $89
    ld [bc], a
    rra
    ld bc, $0388
    sub b
    ld bc, $00ff
    nop
    ld [$6800], sp
    ld [bc], a
    and b
    rrca
    rra
    ld bc, $0642
    and b
    ld b, $42
    ld [$00ff], sp
    ld [$1dfe], sp
    nop
    rst $38
    nop
    rrca
    ldh a, [$fff0]
    rst $38
    ldh a, [$fff3]
    rst $38
    rrca
    inc h
    nop
    add hl, bc
    ld bc, $fe0d
    ld e, $e1
    cp h
    dec b
    ld [bc], a
    pop bc
    nop
    db $e4
    inc e
    ld b, b
    ret nz

    dec b
    inc bc
    rst $28
    ld a, a
    rra
    rra
    db $e3
    inc bc
    inc c
    ld [hl], b
    ld [hl], c
    add hl, bc
    inc b
    ld l, a
    sbc a
    ld h, c
    ld h, c
    sbc [hl]
    dec bc
    dec b
    rst $08
    ccf
    inc c
    ld b, $ed

jr_01e_6533:
    ld hl, sp+$0b
    rlca
    rst $28
    rra
    ld bc, $f308
    db $fc
    di
    or a
    db $fc
    dec c
    cp $23
    nop
    or b
    ld a, a
    inc hl
    nop
    rst $08
    ld hl, $233f
    nop
    pop bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    ld bc, $03f8
    ld [bc], a
    nop
    inc b
    rst $38
    ei
    ld [$08f4], sp
    pop af
    inc c
    push af
    ldh a, [$ff7f]
    rst $38
    pop af
    cp $fe
    pop af
    ldh a, [c]
    ld c, $91
    ld c, $ff
    inc a
    ret nz

    db $fc
    nop
    add sp, $18
    ld b, b
    ret nz

    rst $38
    inc c
    rrca
    ld b, b

jr_01e_6577:
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    ccf
    jr nz, jr_01e_65be

    nop
    rra
    inc b
    rlca
    jr nc, jr_01e_6591

    jr nz, jr_01e_6587

jr_01e_6587:
    rst $38
    inc bc
    rst $38
    jr @-$06

    ld c, d

jr_01e_658d:
    adc $60
    cp $df

jr_01e_6591:
    ld [$02f8], sp
    cp $00
    ld hl, $7e00
    nop
    rst $38
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    add d
    cp $41
    ld h, c
    inc b
    rst $18
    inc b
    ld c, $09
    rlca
    ld [$0023], sp
    rrca
    nop
    rst $38
    jr c, jr_01e_6577

    daa
    jr c, jr_01e_6533

    add b
    ret nc

    jr nc, @+$01

    di
    inc d
    db $e3
    inc b
    rst $00
    jr nz, jr_01e_658d

jr_01e_65be:
    jr z, @+$01

    ld a, [$f0f6]
    ld [$f988], sp
    nop
    ld bc, $22ff
    db $e3
    ldh a, [c]
    inc de
    ldh [$ff03], a
    ret nz

    inc hl
    rst $38
    jr jr_01e_663b

    ld d, $19
    jp $18c2


    ld sp, hl
    ld a, a
    inc b
    db $fd
    nop
    ld sp, hl
    nop
    ld hl, sp+$08
    ld [bc], a
    add hl, bc
    rst $38
    ld [hl], b

jr_01e_65e6:
    rst $38
    ldh a, [$ff7f]
    adc a
    ld a, a
    rst $28
    rra
    rst $28
    dec de
    rst $20
    dec b
    inc bc
    ld b, $0c
    cp $0e
    db $fd
    rst $28
    ld c, $fc
    ld a, [bc]
    db $fc
    inc b
    dec c
    ccf
    ccf
    rst $08
    cp a
    cpl
    inc sp
    dec bc
    dec c
    ld h, e
    ld [hl+], a
    dec bc
    ld c, $8f
    pop af
    ld a, a
    pop bc
    db $10
    add hl, bc
    ld de, $0de3
    push af
    ei
    ld c, $fa
    rst $38
    inc b
    ld hl, sp+$08
    db $f4
    jr nc, jr_01e_65e6

    ret c

    rst $20
    rst $38
    add sp, -$68
    and b
    ld h, b
    ld [$000e], sp
    ld a, $fd
    ld bc, $0c81
    ld a, a
    ldh a, [$ff7f]
    or c
    ld a, [hl]
    ld a, [hl]
    rst $38
    or c
    jr nc, jr_01e_667f

    nop
    jr nc, @+$04

    inc bc

jr_01e_663b:
    ld [$0fff], sp
    jr nz, jr_01e_667f

    ld hl, sp-$0b
    ld hl, sp+$34
    or h
    rst $38
    call z, Call_000_3828
    nop
    nop
    jr jr_01e_666c

    sbc a
    rst $18
    sub b
    rlca
    adc b
    db $fc
    nop
    ld hl, $7c00
    add b
    rst $28
    ld a, h
    add e
    ld a, a
    add b
    sub c
    rrca
    nop
    rra
    db $10
    rst $38
    rra
    nop
    rrca
    ld h, b
    ld l, a
    ld hl, sp+$1f
    ldh [$ffdf], a

jr_01e_666c:
    rla
    ldh a, [rTAC]
    db $f4
    rlca
    pop bc
    db $10
    inc c
    db $fc
    ei
    ld h, $e7
    ld b, c
    ld de, $ff00
    ld [bc], a
    cp $80

jr_01e_667f:
    rst $38
    db $fc
    add b
    db $fc
    add h
    db $fc
    inc b
    db $fc
    nop
    rst $38
    ld hl, sp+$00
    ld hl, sp+$60
    ldh [rNR32], a
    rra
    rrca
    db $db
    nop
    rrca

jr_01e_6694:
    ld sp, $1003
    rrca
    jr nz, jr_01e_669a

jr_01e_669a:
    adc a
    sub b
    rst $08
    rra
    add b
    rst $08
    jr z, jr_01e_6694

    inc de
    ldh a, [c]
    ld [bc], a
    adc a
    db $10
    rst $38
    rra
    add b
    db $e4
    daa
    call nz, $e007
    rla
    rst $38
    ldh [rNR22], a
    ld hl, sp+$1f
    add sp, $0f
    ret nz

    cpl
    di
    nop
    adc a
    ld h, d
    add hl, bc
    ld [hl+], a
    ld d, $20
    rst $38
    ld [hl+], a
    cp a
    rst $38
    inc b
    cp a
    inc bc
    inc b
    inc b
    and $00
    ldh a, [$fff3]
    ld [$20f8], sp
    dec b
    or b
    ld [$fd01], sp
    call nc, $ff3a
    cp [hl]
    jp nz, Jump_000_3c20

    ld bc, $c081
    ld hl, $f4f7
    dec c
    rst $38
    jr nc, @+$0e

    ld [hl], c
    add c
    ld a, b
    add h
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $02fc
    ld a, [$ff06]
    inc c
    inc [hl]
    ld b, b
    ret nz

    ld [hl], b
    cp a
    jr nc, @+$61

    rst $28
    jr nc, jr_01e_671f

    jr nc, @+$11

    ldh [rNR11], a
    inc c
    jr nz, jr_01e_6728

    ld a, e
    ld [$0938], sp
    jr nz, @-$2f

    ccf
    ccf
    ld c, a
    ld b, $22
    ld a, a
    inc a
    call $c83b
    inc [hl]
    call $c135
    rra
    rst $38
    db $fc
    ldh [c], a

jr_01e_671f:
    ld h, b
    sbc b
    and d
    ld h, e
    dec bc
    inc c
    rst $38
    ld e, a
    ld h, b

jr_01e_6728:
    rst $38
    nop
    ret nz

    jr nz, jr_01e_6771

    ret nz

    rst $38
    ld e, $02
    inc a
    ld [bc], a
    ld a, $01
    sbc a
    and b
    rst $08
    rra
    add b
    adc a
    db $10
    add l

jr_01e_673d:
    rra
    ld h, c
    rrca
    jr z, @-$4f

    di
    and b
    ld d, a
    ld d, d
    db $10
    call nz, $080e
    rst $38
    inc b
    rst $20
    rst $38
    rlca
    adc b
    ld b, e
    call nz, $c407
    ld bc, $ffc2
    add c
    add d
    inc bc
    inc bc
    jr nz, jr_01e_673d

    nop
    ldh [$fff7], a
    rst $38
    nop
    cp $c0
    ld [$02fc], sp
    call c, $ff62
    inc e
    ld [hl+], a
    dec e
    ld [bc], a
    rra
    nop
    ret nc

jr_01e_6771:
    inc sp
    rst $08
    ld bc, $0681
    rlca
    and b
    inc hl
    ldh [rNR44], a

jr_01e_677b:
    add b
    rra
    adc a
    adc b
    rrca
    ld hl, $30e1
    inc l
    inc [hl]
    db $10
    ld h, b
    dec c
    add a
    db $ec
    db $e3
    inc h
    ld hl, $4025
    ret nz

    nop
    ld h, $ff
    rra
    add b
    rst $38
    rra
    add b
    ld e, a
    ret nz

    ld e, b
    rst $20
    ld b, b
    ret nz

    db $fc
    or b
    ld d, $21
    nop
    add b
    rra
    and b
    sbc a
    and b
    ld a, $e5
    ld bc, $0020
    ld b, b
    sub c
    daa
    or b
    inc d
    rra
    ld bc, $ff1f
    ld hl, $203f
    ld a, $03
    ccf
    jr nz, jr_01e_677b

    rst $38
    ld c, $8f
    add b
    cp e
    ld b, h
    ld a, a
    ld [$ff7f], sp
    add b
    rst $30
    add hl, de
    rst $38
    nop
    xor $20
    xor $ef
    ld [de], a
    sbc $04
    db $fd
    and c
    inc h
    add c
    ld sp, hl
    adc b
    sbc $c0
    inc h
    nop
    ldh a, [rNR10]
    ldh a, [$ffe3]
    ld d, $7f
    add b
    rst $38

jr_01e_67e6:
    ld c, a
    ld [hl], b
    inc h
    rst $20
    ld [hl], h
    adc h
    cp $81
    rst $38
    ret nc

    jr nc, jr_01e_67e6

    inc c

jr_01e_67f3:
    rst $38
    ld bc, $01fe
    ld a, [hl]
    ld hl, $5c13
    ld h, b
    dec c
    dec c
    ld [bc], a

jr_01e_67ff:
    ld a, $c1

jr_01e_6801:
    dec l
    cp $01
    ld l, $10
    rra
    call nz, $18c7
    rst $38
    inc l
    rra
    inc sp
    adc e
    adc h
    jr nz, jr_01e_67f3

    ld h, d
    dec l
    add d
    ld l, $c1
    dec [hl]

jr_01e_6818:
    rst $38
    db $d3
    inc a
    inc hl
    ld e, h
    dec a
    ld l, $8d
    sub [hl]
    rst $38
    adc l
    sub [hl]
    cp l
    and [hl]
    cp l
    ld [hl], l
    cp [hl]
    ld [hl], d
    rst $38
    cp h
    ld [hl], d
    or [hl]
    ld a, c
    rst $08
    jr c, jr_01e_6801

    inc a
    ei
    rst $08
    ld a, $01
    ld a, [hl-]
    rst $38
    add b
    ccf
    ld b, b
    rra
    rst $38
    jr nz, jr_01e_67ff

    and b
    adc a
    db $10
    adc a
    ld b, b
    rst $20
    ld a, a
    jr nz, jr_01e_6818

    ld b, b
    add a
    ld c, b
    rst $18
    jr nz, jr_01e_6894

    ld e, $ff
    db $fd
    nop
    db $f4
    rlca
    ldh a, [$ff0b]
    ld a, [$ff03]
    ld hl, sp+$01
    pop af
    ld bc, $08f8
    ldh a, [$ff08]
    rst $38
    db $fc
    inc b
    inc d
    rst $30
    db $10
    di
    nop
    di
    cp a
    ld [de], a
    di
    ld a, [hl+]
    db $eb
    db $10
    sbc a

jr_01e_6872:
    and b
    inc h

jr_01e_6874:
    rra
    ld e, l
    nop
    ld b, b
    inc de
    nop
    ldh [rNR10], a
    and b
    ld a, [bc]
    rlca
    add d
    dec [hl]
    rst $30
    rra
    ld h, b
    ccf
    ret nc

    ld [hl], $1f
    jr nz, @+$40

    ld hl, $0cff
    ld [de], a
    jr z, jr_01e_6874

    jr nz, jr_01e_6872

    add b
    rrca

jr_01e_6894:
    rst $38
    sub b
    rra
    nop
    sbc a
    ld hl, $c0bf
    cp $bf
    ld [bc], a
    ld a, [hl]
    add h
    db $fd
    jr nz, @-$1b

    call nz, $3e21
    rst $38
    inc bc
    ld a, a
    inc b
    db $fd
    ld [$00fb], sp
    rst $30
    cp $d4
    inc h
    ei
    ld a, [bc]
    rst $38
    jr @+$01

    nop
    rst $28
    ld [hl], a
    jr nc, @+$01

    sbc a
    db $10
    inc bc
    ld c, a
    ret nc

    rrca
    jr nz, jr_01e_68c5

jr_01e_68c5:
    ccf
    ld c, b
    call nc, $8100
    add b
    add c
    push hl
    ld h, $d0
    db $10
    ld a, $00
    ld [$08f0], sp
    inc b
    rlca
    nop
    ld [hl], b
    add hl, sp
    and c
    rlca
    rst $38
    ld hl, $403f
    ld a, [hl]
    inc bc
    ld a, a
    ld bc, $ffdd
    ld h, b
    db $fd
    inc b
    cp l
    add b
    cp c
    ld b, d
    ld a, e
    rst $38
    add b
    rst $30
    nop
    rst $30
    db $10
    rst $38
    db $10

jr_01e_68f6:
    ldh a, [$fffe]
    jr nz, jr_01e_6903

    pop hl
    inc hl
    ldh [c], a
    ld hl, $00e2
    ret c

    rst $38
    ld c, l

jr_01e_6903:
    db $d3
    ld e, a
    ret nz

    cp a
    ret nz

    rrca
    sub b
    rst $38
    pop bc
    ld h, $f1
    add hl, bc
    db $fd
    inc bc
    ld a, [hl]
    add c
    rst $38
    rrca
    ld sp, $cd4b
    add d
    ld b, e
    inc b
    add a
    ld a, a
    add [hl]
    add a
    nop
    nop
    inc l
    inc a
    nop
    sub b
    ld a, [bc]
    db $eb
    nop
    ld a, a
    add e
    cpl
    add b
    jr nz, jr_01e_692e

jr_01e_692e:
    nop
    ld sp, hl
    ld a, [bc]
    ld a, a
    ei
    ld a, [bc]
    ei
    jr nc, jr_01e_68f6

    ld h, $e6
    ld bc, $df0d
    ld [bc], a
    di
    add hl, bc
    ld hl, sp+$01
    jr nz, jr_01e_6943

jr_01e_6943:
    dec de
    inc h
    rst $38
    inc sp
    ld c, h
    ld [hl], e
    inc c
    ld [hl], e
    sbc h
    call $ff3e
    call $8d3e
    ld a, [hl]
    dec c
    cp $f7
    inc d
    rst $38
    pop hl
    sub d
    pop af
    ret z

    ld hl, sp-$3c
    inc e
    ldh [c], a
    ccf
    inc c
    ldh a, [c]
    ld c, $f9
    rrca
    ld hl, sp+$50
    ld [bc], a
    or c
    dec l
    cp $90
    inc sp
    jr c, jr_01e_69b5

    ld hl, $0712
    add b
    ld sp, hl
    or c

jr_01e_6976:
    inc b
    inc bc
    dec de
    ld de, $0405
    scf
    sbc a
    ret nz

    jr nc, jr_01e_69a7

    add b
    and $61
    dec bc
    sbc a
    and b
    jr nz, @+$24

    and e
    ld [hl], $04
    rst $20
    jr nz, @+$01

    ldh [rNR41], a
    ldh [$ff2e], a
    jp hl


    jr nz, jr_01e_6976

    ld [hl+], a
    rst $30
    and $27
    ldh [rNR42], a
    nop
    and a
    db $e3
    rrca
    dec bc
    rst $38
    sub a
    sbc e
    ld [$040f], sp

jr_01e_69a7:
    rlca
    pop hl
    ld hl, $e8ff
    jr @-$01

    inc bc
    ld a, $c1
    ld e, $e1
    rst $38
    inc c

jr_01e_69b5:
    ld a, [$ff10]
    nop
    rst $18
    inc c
    adc a
    cp $70
    ld e, e
    rrca
    ld [$323b], sp
    ld [hl], e
    ld b, e
    jp nz, $02ef

    jp $8000


    ld d, c
    ld e, h
    ld h, d
    cp $1c
    rst $38
    rra
    adc [hl]
    adc a
    rst $30
    ld c, $01
    nop
    nop
    cp $30
    nop
    nop
    nop
    add hl, de
    ld h, $12
    or e
    db $10
    rst $18
    or c
    sbc b
    add hl, sp
    add b
    ld [hl], b
    inc sp
    ld e, [hl]
    ld h, b
    ld hl, sp-$01
    sbc c
    sbc a
    inc c
    adc a
    xor $0f
    nop
    db $fd
    rst $38
    ld b, d

jr_01e_69f8:
    ld a, e
    add hl, bc
    add hl, de
    nop
    nop
    dec d
    scf
    ei
    ccf
    nop
    ldh a, [rTAC]
    and b
    nop
    rst $28
    jr nz, jr_01e_69f8

    rst $38

jr_01e_6a0a:
    inc b
    rst $00
    ld b, c
    ld b, c
    db $10
    inc e
    inc a
    and d
    cp $81
    ld l, $1f
    and b
    cp a
    add b
    ld a, [$38c7]
    rst $28
    ld b, h
    ld a, h
    inc b
    db $fd
    jr nz, jr_01e_6a65

    ld c, a
    ld [hl], b

jr_01e_6a25:
    ldh [$fffd], a
    jr jr_01e_6a0a

    inc c
    cp h
    jp nz, Jump_01e_403e

    cp $80
    rst $28
    cp $02
    ld sp, hl
    dec b
    add c
    dec h
    ld b, $07
    db $10
    rst $20
    jr nc, jr_01e_6a81

    ld a, h
    or [hl]
    jr jr_01e_6a43

    inc de
    db $10

jr_01e_6a43:
    rra
    add h
    ld a, a
    add a
    ld de, $08f1
    ld hl, sp+$11
    ldh a, [$ffe1]
    ld h, $fd
    inc b
    jr nz, @+$45

    inc b
    db $fc
    dec b
    db $fd
    inc h
    dec a
    jp c, Jump_01e_5cc0

    ld a, h
    ld hl, $8d00
    ld a, [hl]
    inc hl
    nop
    ldh a, [c]
    db $fd

jr_01e_6a65:
    di
    db $f4
    ld a, [$0021]
    pop bc
    ld [de], a
    rrca
    db $fc
    rrca
    cp $f2
    ldh a, [rBGP]
    jr nz, jr_01e_6a25

    ld e, b
    ret nz

    ld sp, $800f
    add a
    ld b, b
    db $fd
    jp Jump_000_26a6


    rst $28

jr_01e_6a81:
    nop
    rst $28
    jr z, @-$38

    ld b, c
    rst $38
    inc b
    add d
    sub b
    ld e, a
    call nz, $c007
    ld hl, $e0ff
    nop
    call z, $8e02
    ld de, $201f
    rst $38
    ccf
    ld b, b
    rlca
    ret z

    rrca
    ret nz

jr_01e_6a9f:
    ld c, l
    jp nc, $88ff

    sub a
    rra
    daa
    ccf
    rst $00
    rst $38
    rrca
    rst $38
    rst $28
    rra
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp $07
    ld l, e
    ld hl, sp-$0c
    db $fc
    push af
    ld hl, sp-$0f
    ld hl, sp-$02
    and b
    ld e, a
    ld [$0cf4], sp
    ldh a, [c]
    rlca
    ld sp, hl
    ld c, a
    rst $38
    ret z

    rst $28
    pop hl
    ld [hl], h
    ldh a, [hMapSizeL]
    ei
    ld e, h
    rst $38
    db $fc
    ld l, $fe
    daa
    ld e, a
    ld c, $11
    db $fd
    rst $38
    ld [bc], a
    daa
    rst $20
    inc de
    di
    db $eb
    ld a, [de]
    ld e, d
    rst $38
    ei
    dec bc
    dec sp
    inc h
    ld a, $02
    cp $39
    rst $38
    add hl, sp
    cp h
    cp h
    sbc h
    cp h
    adc [hl]
    ccf
    ld d, $ef
    cp a
    adc a
    cp a
    dec b
    ld h, b
    dec a
    and $07
    and h
    rst $38
    rst $20
    ld [de], a
    ld [hl], e
    pop hl
    ld de, $09f9
    jr nz, @+$01

    jr c, jr_01e_6a9f

    sbc l
    nop
    rst $38
    sub b
    adc a
    db $10
    rst $38
    rrca
    adc b
    sub a
    ld e, b
    rst $10
    adc e
    rst $00
    adc e
    rst $38
    rst $00
    rra
    sub a
    rrca
    rla
    or $19
    rst $30
    rst $18
    ld hl, sp-$0d

jr_01e_6b25:
    db $fc
    pop af
    cp $05
    ld [hl], d
    inc bc
    inc b
    ld a, e
    add b
    ld b, c
    pop hl
    add hl, de
    ld a, a
    add b
    rra
    ldh [rP1], a
    dec c
    rst $38
    rst $38
    ldh a, [c]
    dec bc
    ld a, b
    adc e
    inc b
    ld [hl], a
    ld [$0fff], sp
    ret nz

    ld c, a
    and [hl]
    ld h, a
    ret nc

    jr nc, @-$06

    rst $38
    inc b
    inc b
    rst $38
    add hl, bc
    ld sp, hl
    ld bc, $10f1
    adc e
    pop af
    nop
    and b
    ld l, $c0
    ld h, b
    ld [de], a
    add b
    ld d, h
    ret nz

    ld h, c
    ld bc, $fdfb
    nop
    ld b, b
    ld d, l
    ld [$11f9], sp
    ldh a, [c]
    ld bc, $00df
    add c
    ld b, b
    jp hl


    ld a, [de]
    ld sp, $9f68
    ld h, c
    pop af
    adc a
    ld h, b
    ld h, d
    ldh [c], a
    ld [de], a
    ld [$e170], sp
    db $10
    db $fc
    add h
    cp a
    cp $c2
    rst $38
    ldh [rIF], a
    ldh a, [$ffe1]
    dec b
    rrca
    rst $38
    rst $38
    jr nz, jr_01e_6bbd

    ld a, c
    ld c, c
    ld sp, hl
    add [hl]
    rst $38
    rst $38
    nop
    rst $08
    jr nc, jr_01e_6b25

    ld a, b
    dec c
    db $fc
    dec c
    rst $38
    db $fc

jr_01e_6b9d:
    ld [hl], c
    adc [hl]
    ldh a, [$ff1f]
    ldh a, [$ff3f]
    ldh a, [$fffd]
    ld a, a
    and c
    ld a, e
    add sp, $17
    ret nz

    jr z, jr_01e_6b9d

    ld sp, $eeff
    ldh [$ffdf], a
    ret nz

    rst $18
    ret nz

    rra
    nop

jr_01e_6bb7:
    cp a
    ld e, a
    and b
    ld [bc], a
    ld e, l
    ld b, b

jr_01e_6bbd:
    or [hl]
    ld [bc], a
    ld l, b
    ld a, a
    db $fd
    ld [hl], b
    nop
    ld [bc], a
    xor a
    ld d, b
    rlca
    xor b
    dec l
    jp nc, $f3ff

    ld hl, sp-$09
    ldh a, [$ffef]
    ldh [$ffef], a
    ldh [rIE], a
    rrca
    nop
    sbc a
    ld h, b
    add a
    ld e, b
    jp $0024


    ld [$00ff], sp
    add b
    ret nc

    jr nc, @+$01

    nop
    rst $38
    nop
    db $fd
    add b
    ld b, b
    nop
    cp a
    ld b, b
    ld e, $a1
    nop
    nop
    db $dd
    ld bc, $00e0
    rst $38
    nop
    inc bc
    ld b, b
    ld bc, $01fe
    rst $18
    inc e
    ldh [c], a
    nop
    nop
    ret nz

    ld [bc], a
    ld bc, $00e0
    rst $38
    xor a
    ld d, b
    dec b
    xor d
    ld [$00f5], sp
    nop
    db $eb
    ld [bc], a
    inc bc
    ld bc, $0003
    ld b, b
    inc bc
    db $fc
    inc bc
    db $f4
    ld a, a
    ld a, [bc]
    jr jr_01e_6c46

    ldh a, [rTAC]
    ld hl, sp+$03
    jr nz, jr_01e_6c25

jr_01e_6c25:
    sbc $02
    ld bc, $8478
    ldh a, [rIE]
    inc hl
    nop
    nop
    nop
    rst $38
    rst $10
    jr z, jr_01e_6bb7

    ld d, h
    ld b, a
    cp b
    ret nz

    rst $00
    rst $08
    cp b
    add e
    ld a, h
    ld bc, $0020
    ld b, b
    ld b, $f6
    add hl, bc
    rst $38
    ldh [c], a

jr_01e_6c46:
    dec d
    cp $81
    rst $38
    ret nz

    rst $30
    ld hl, sp-$01
    pop af
    cp $00
    nop
    ld e, a
    and b
    rrca
    ld d, b
    rst $38
    ld e, a
    and b
    add [hl]
    add a
    add b
    ld h, b
    ldh a, [$ff0c]
    rst $38
    cp $01
    ld a, a
    add b
    rrca
    ld [hl], b
    adc a
    ld a, $ff
    adc a
    ccf
    rlca
    db $e4
    adc a
    ret z

    ld e, $11
    rst $38
    sbc h
    and e
    rst $38
    rlca
    rst $38
    rrca
    rst $28
    rra

jr_01e_6c7a:
    xor a
    rrca
    rst $38
    ldh a, [$ff7f]
    inc hl
    dec b

jr_01e_6c81:
    rrca
    inc h
    nop
    pop af
    push af
    db $fc
    inc hl
    nop
    dec c
    ld [hl+], a
    nop
    ld c, $fe
    adc b
    ld d, l
    ei
    add b
    ld e, b

jr_01e_6c93:
    ld b, c
    nop
    add b
    ld d, l
    pop bc
    ld a, [hl+]
    db $e3
    rst $38
    inc e
    rst $38

jr_01e_6c9d:
    nop
    call nz, $0c2a
    jp nc, $ff18

    and l
    ld [$00d5], sp
    ld l, l
    jr nz, jr_01e_6c81

    ldh a, [c]
    rst $38
    dec c
    rst $38
    nop
    ld a, b
    add l
    ld a, b
    add h
    ret c

    db $fd
    dec h
    ld bc, $1102
    ld a, [hl+]
    dec sp
    call nz, $00ff
    rst $38
    add $39
    ld [bc], a
    push bc
    nop
    cp d
    jr nc, jr_01e_6c93

    rst $18
    ldh [c], a
    dec d
    rst $00
    jr z, jr_01e_6c9d

    and b
    rrca
    inc c
    ld [de], a
    rst $38
    jr jr_01e_6c7a

    nop
    dec e
    nop
    ld [hl], l
    nop
    ld [hl], l
    rst $28
    inc b
    adc d
    adc [hl]
    ld [hl], c
    ld bc, $0001
    ld l, h
    nop
    rst $38
    ld l, d
    nop
    ld l, l
    nop
    ld l, l
    ld [$9dd5], sp
    push af
    ld h, d
    add b
    ld c, $98
    ret nz

    nop
    cp e
    db $10
    xor e
    db $10
    rst $38
    xor d
    jr nc, jr_01e_6d48

    ld a, e
    add h
    rst $38
    nop
    ld h, d
    rst $38
    sub l
    ld [hl+], a
    push de
    ld [bc], a
    dec [hl]
    nop
    db $db
    jr @+$01

    rst $20
    inc c
    ld [de], a
    inc e
    db $e3
    rst $38
    nop
    inc a
    rst $18
    ld b, e
    inc a
    ld b, e
    jr c, jr_01e_6d5e

    ld h, c
    nop
    ld a, b
    add h
    db $fd
    db $fc
    and b
    ld de, $2847
    ld b, h
    xor e
    nop
    ld l, h
    rst $38
    inc c
    db $d3
    rra
    and b
    ccf
    ld b, b
    ld a, a
    add b
    cp $80
    inc de
    ld d, $20
    pop de
    ld bc, $2336
    call nc, $e0ff
    rla
    ldh a, [$ff08]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ccf
    ld b, b
    ld h, c

jr_01e_6d48:
    sbc [hl]
    ret nz

    ld hl, $1ee1
    ld e, e
    ld a, a
    add b
    inc bc
    ld [bc], a
    or b
    ccf
    inc hl
    nop
    adc a
    ld [hl+], a
    nop
    rst $30
    rrca
    ld a, a
    or b
    inc h

jr_01e_6d5e:
    nop
    rst $08
    ccf
    rst $08
    ccf
    adc a
    ldh a, [rIF]
    rst $38
    nop
    dec b
    dec d
    ld bc, $0110
    ld bc, $fc00
    inc h
    ld bc, $0105
    rra
    nop
    rst $18
    ret nz

    rst $18
    ret nz

    rst $28
    xor $e0
    ld bc, $05f1
    ld [bc], a
    ld [hl], b
    ld a, a
    ld [hl], b
    db $fc
    ld b, b
    inc de
    dec b
    inc bc
    rrca
    nop
    rst $28
    ldh [$ffef], a
    ldh [rBCPD], a
    rst $30
    ret nc

    rlca
    inc bc
    inc b
    add b
    ld [hl+], a
    rlca
    ld [hl], b
    ld a, a
    dec b
    dec b
    ld a, a
    inc bc
    nop
    di
    ld hl, sp-$0d
    ld hl, sp-$0f
    and b
    inc d
    cp $03
    ld b, $e0
    nop
    ldh [rIF], a
    ldh [rIF], a
    ret nc

    sub a
    rra
    rrca
    ccf
    ld b, $07
    cp $20
    nop
    ld b, $08
    ld hl, sp+$3d
    nop
    pop hl
    ld e, $70
    rlca
    rrca
    adc a
    rrca
    add hl, bc
    ld bc, $7b0b
    ld a, h
    nop
    pop hl
    ld e, $b8
    add e
    rlca
    rst $00
    inc bc
    ld [bc], a
    ei
    di
    db $fc
    inc hl
    nop
    dec c
    cp $0d
    cp $f1
    pop af
    ld c, $80
    inc hl
    pop de
    ld h, $11
    daa
    ld hl, sp+$00
    ldh [$ff35], a
    db $eb
    push af
    ccf
    db $e3
    nop
    cp $70
    dec b
    nop
    xor d
    xor d
    rst $30
    ld e, a
    ld e, a
    ld a, [$26b3]
    nop
    ld a, [bc]
    ld a, [bc]
    ld d, b
    cp a
    ld d, l
    or l
    cp a
    ld c, d
    ld c, a
    cp a
    or b
    add hl, hl
    ld e, $ff
    rra
    rlca
    rlca
    xor e
    xor e
    dec d
    ld d, l
    ld e, d
    rst $28
    ld a, [$ffaf]
    db $fd
    ldh [c], a
    inc bc
    and b
    rst $38
    call nc, $ffff
    ld l, d
    ld a, a
    db $f4
    rst $38
    ld [$50ff], a
    ld a, h
    push hl
    inc b
    add [hl]
    nop
    ccf
    rst $38
    dec d
    rst $38
    ld [bc], a
    ld l, b
    ld bc, $f59f
    rst $38
    rst $38
    rst $38
    xor d
    ld b, b
    ld bc, $0785
    cp $ab
    rst $38
    ld d, l
    nop
    ld bc, $8640
    inc bc
    xor d
    ld c, h
    inc b
    ld h, b
    rst $38
    ldh [rSTAT], a
    pop bc
    add $c6
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ld a, [bc]
    rst $38
    rlca
    ld a, a
    rlca
    rrca
    rrca
    inc bc
    inc bc
    rra
    rra
    ld [hl], b
    inc b
    ld [$03a2], a
    push af
    ld h, b
    rlca
    or a
    ld b, b
    dec b
    ld b, l
    ld b, l
    adc d
    rst $38
    adc d
    push af
    push af
    cp a
    rst $38
    ld [bc], a
    add d
    ld b, c
    rst $38
    ld b, c
    xor d
    xor d
    ld d, a
    ld d, a
    rst $38
    rst $38
    cp d
    rst $38
    cp a
    push de
    rst $38
    xor [hl]
    rst $38
    cp a
    cp a
    ld a, [hl]
    xor e
    ld a, a
    db $fd
    and b
    add hl, bc
    push de
    and d
    dec b
    add b
    jr nz, @+$0c

    and b
    db $f4
    ld b, d
    nop
    daa

jr_01e_6e9a:
    rlca
    nop
    or b
    dec l
    ld e, $fe
    jr c, jr_01e_6e9a

    cp a
    inc [hl]
    db $f4
    ld a, [de]
    ld a, [$fd1d]
    ld hl, $c00b
    db $fd
    ret nz

    push de
    jr c, jr_01e_6f06

    ld d, l
    ccf
    rst $38
    push de
    push de
    rst $28
    ld a, [hl+]
    ld a, [hl+]
    dec b
    dec b
    or d
    add hl, sp
    add b
    nop
    nop
    cp l
    push af
    jr nz, jr_01e_6ecf

    cp a
    cp a
    inc bc
    inc bc
    db $d3
    ld a, [hl-]
    ld [bc], a
    db $fd
    ld [bc], a
    db $e3
    rrca

jr_01e_6ecf:
    ld a, [$5fff]
    ld e, a
    dec hl
    dec hl
    rst $08
    ld d, l
    ld d, l
    xor d
    xor d
    inc bc
    dec d
    add c
    ld b, $e8
    rst $38
    ld a, a
    or h
    cp a
    jp c, Jump_000_0fdf

    rst $38
    ld bc, $114a
    rst $20
    ld [$ffea], a
    dec hl
    ld bc, $0560
    push de
    push de
    ld a, a
    cp $86
    inc de
    dec d
    dec d
    xor a
    xor a
    ld a, a
    ld a, a
    rst $38
    ld a, $a4
    dec d
    nop
    rst $38
    ld a, a
    ld a, a

jr_01e_6f06:
    cp $40
    inc de
    ld h, a
    ld de, $f4e5
    ldh [rNR13], a
    ld d, h
    add b
    inc c
    adc c
    ld d, $0c
    db $fc
    jr nc, @+$01

    ldh a, [$ff60]
    ldh [$ff60], a
    ldh [$ff30], a
    ldh a, [$ff03]
    cp e
    rst $38
    inc bc
    and $0b
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld h, b
    db $10
    rst $38
    cp $20
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $2a01
    ld a, [hl+]
    push de
    ei
    rst $38
    xor a
    ret nz

jr_01e_6f39:
    rla
    add b
    rst $38
    db $fc
    rst $38
    xor a
    xor c
    xor a
    ld bc, $8112
    dec b
    xor b
    ldh [c], a
    rra
    ld b, b
    ld [bc], a
    ld de, $caa0
    and d
    jr nz, jr_01e_6f7f

    inc l
    inc e
    ld d, l
    ld l, $1d
    ld b, l
    inc de
    jr nz, jr_01e_6f39

    db $d3
    ld b, b
    ret nz

    and b
    ld [de], a
    inc b
    inc h
    add b
    and b
    add hl, bc
    ld l, d
    ld a, a
    ld a, l
    push af
    or b
    ld c, e
    rrca
    rst $38
    ld [hl], b
    ldh a, [$ffe0]
    stop
    db $dd
    ld a, a
    ld b, b
    ld b, d
    ld bc, $f8ff
    jr nz, jr_01e_6f94

    ld bc, $ff01
    ld [bc], a
    ld [bc], a
    ld d, l

jr_01e_6f7f:
    ld d, l
    xor e
    xor e
    cp $ff
    db $fd
    ld sp, hl
    or b
    ld c, l
    ldh [rIE], a
    ld a, h
    ld a, a
    xor [hl]
    xor a
    daa
    ld a, e
    ld a, a
    call nc, $07e0

jr_01e_6f94:
    add l
    rra
    ld bc, $0b80
    ld h, c
    inc c
    sbc $01
    dec b
    ld [$60f8], sp
    ldh [rNR44], a
    jr jr_01e_6faa

    dec b
    rst $20
    xor d
    xor d
    rst $38

jr_01e_6faa:
    ld [bc], a
    inc b
    jp $5516


    ld d, l
    cp a
    db $e3
    cp a
    add b
    nop
    ld c, l
    ret nc

    jr nz, jr_01e_6fb9

jr_01e_6fb9:
    rla
    cp a
    cp a
    ld hl, sp+$17
    ld hl, sp+$50
    ldh a, [$ff03]
    inc l
    ld a, [$2560]
    add e
    ld b, $05
    jr @-$2d

    ret nc

    and b
    ld h, $a1
    ld a, [de]
    add hl, bc
    add hl, hl
    and b
    ld h, b
    jr nz, @+$01

    nop
    rst $38
    adc a
    ld [hl], b
    or b
    ld a, a
    or e
    ld a, h
    call z, $bf38
    swap b
    sub $20
    push de

jr_01e_6fe6:
    jr nz, jr_01e_7008

    add hl, sp
    ldh a, [$fffe]
    ld b, b
    ld d, d
    ccf
    cpl
    ld e, $de
    inc c
    ld l, h
    nop
    ei
    xor $04
    inc b
    ld bc, $8fff
    ld [hl], b
    ld d, b
    jr nz, jr_01e_6fe6

    ld h, [hl]
    nop
    ld h, [hl]
    and b
    ld e, b
    inc bc
    ld bc, $e11f

jr_01e_7008:
    and c
    rst $28
    ld b, b
    ld c, h
    nop
    ld c, h
    ld b, $01
    ld a, a
    add c
    add c
    rst $38
    nop
    ld sp, hl
    nop
    sub e
    ld h, c
    or l
    ld h, b
    or [hl]
    ld a, a
    ld h, b
    cp e
    ld [hl], b
    or h
    ld a, b
    rst $08
    inc a
    ld hl, $ff42
    rst $08
    ccf
    ld [$6a04], a
    inc b
    call nc, $ff08
    inc sp
    inc e
    rst $08
    ccf
    ccf
    call $804d
    rst $38
    ld c, l
    add b
    ld [hl], b
    jr nz, jr_01e_70ba

    jr nc, jr_01e_7071

    nop
    rst $38
    cp $31
    rrca
    rst $38
    sbc a
    ld h, b
    ld h, b
    nop
    rst $38
    ld h, h
    nop
    ld h, b
    nop
    ld sp, hl
    ld h, b
    ldh [c], a
    pop bc
    ei
    db $fc
    db $e3
    ld bc, $a001
    ld b, b
    and h
    ld b, b
    ldh a, [c]
    ld a, a
    ld h, c
    db $e4
    jp $c3e4


    ld hl, sp-$19
    ld bc, $e755
    adc a
    ld a, a
    adc a
    db $e4
    ld d, l
    ld [bc], a
    ld d, [hl]
    db $fd
    dec c

jr_01e_7071:
    ld hl, sp-$47
    add hl, bc
    jp nz, $0508

    ld d, a
    ld l, a
    sbc c
    sbc c
    ld [$3f48], sp
    rst $18
    pop bc
    ld b, c
    add b
    ld c, c
    add b
    ld [$c301], sp
    ld b, e
    rst $20
    add c
    ld a, a
    add c
    rrca
    ld bc, $5b08
    rst $30
    rla
    ldh [c], a
    cp $06
    ld c, h
    push af
    dec d
    ldh [$fff5], a
    nop
    inc bc
    ld bc, $07d0
    ld c, l
    pop hl
    dec b
    add hl, bc
    ld b, $21
    ld c, $79
    ld [$6f06], sp
    sbc a
    rst $28
    sbc a
    rrca
    sbc a
    ld c, $08
    ld [$cfcf], sp
    inc bc
    ld e, h
    add hl, bc
    inc b
    jr nz, jr_01e_711b

jr_01e_70ba:
    cp $7f
    add a
    rlca
    ld d, d
    rst $38
    ldh [rSB], a
    rst $18
    di
    ld bc, $80c0
    rst $08
    jr nz, jr_01e_70ca

jr_01e_70ca:
    ldh [$ffc0], a
    ei
    rra
    ldh [$ff03], a
    ld c, d
    call z, $f400
    ret z

    ld sp, hl
    rst $18
    ldh a, [$fff2]
    ld h, c
    rrca
    di
    inc bc
    ld c, e
    ret nz

    nop
    db $eb
    db $fc
    ld b, b
    nop
    ld bc, $05e1
    ld bc, $41fe
    pop bc
    rst $30
    nop
    cp $c1
    rlca
    ld d, [hl]
    ldh a, [c]
    pop bc
    jp nz, $fb81

    ldh a, [c]
    pop bc
    rlca
    ld [bc], a
    ld sp, hl
    sub b
    ld sp, hl
    ldh [$fff2], a
    rst $28
    pop bc
    call nz, $3f83
    inc b
    ld c, l
    pop bc
    add b
    sbc c
    ccf
    nop
    ldh a, [c]
    add c
    db $e4
    jp Jump_000_201f


    inc d
    ld bc, $aa5a
    ld h, b
    add hl, de
    add b
    add hl, bc
    ld [bc], a
    sbc c

jr_01e_711b:
    ld bc, $e101
    add hl, bc
    ld [bc], a
    and $de
    ldh [rSC], a
    ret z

    add a
    ccf
    rst $08
    inc bc
    ld d, e
    db $e4
    add e
    ld l, a
    adc b
    rlca
    ret z

    add a
    rlca
    ld bc, $01f2
    ldh [rSC], a
    jp z, $0140

    ld a, a
    inc b
    ld d, l
    reti


    ldh [rDIV], a
    add hl, bc
    inc bc
    ld sp, hl
    ldh a, [$fffc]
    ldh [$ff0b], a
    ld [$8908], sp
    ld b, $94
    inc bc
    sbc d
    ld bc, $94ef
    dec bc
    ld l, a
    sbc a
    inc bc
    ld e, b
    ld [hl-], a
    ld bc, $dff2
    ld hl, $83e4
    adc c
    ld b, $05
    inc b
    add h
    inc bc
    sbc a
    ret z

    add a
    call z, Call_000_0203
    db $10
    ld l, $03
    ld e, d
    call nz, $830d
    pop hl
    ld b, $90
    rrca
    dec b
    inc bc
    inc bc
    add hl, hl
    inc bc
    ld h, [hl]
    ld b, c
    ld h, [hl]
    nop
    ld [$15fe], sp
    nop
    rlca
    nop
    ld e, a
    rlca
    cp a
    ld e, a
    rst $38
    db $fd
    ld e, a
    inc de
    ld bc, $00f0
    ld l, [hl]
    ldh a, [$ffdf]
    cp [hl]
    rst $38
    rst $30
    adc $fe
    and b
    rst $38
    ld e, a
    xor [hl]
    ld e, a
    rst $18
    and b
    ld e, a
    ld d, c
    ld c, $0f
    and h
    ld [bc], a
    add sp, -$30
    rst $38
    ld a, b
    ldh [$ffe8], a
    jr nc, jr_01e_71f3

    or b
    db $10
    ldh [$fffd], a
    ldh [$ffe8], a
    inc bc
    ld b, h
    nop
    xor $44
    ld [hl], a
    ld [hl+], a
    rst $28
    ld a, a
    daa
    rst $38
    ld c, d
    inc de
    dec b
    add hl, bc
    nop
    dec e
    ld a, a
    ld [$048e], sp
    adc $84
    adc [hl]
    inc b
    ld de, $ff06
    and b
    nop
    ldh a, [$ffa0]
    pop af
    and b
    and e
    ld bc, CheckTime
    jr nz, jr_01e_71d9

jr_01e_71d9:
    inc de
    rlca
    jr nz, jr_01e_71dd

jr_01e_71dd:
    ld [hl], b
    jr nz, @-$0e

    or $20
    nop
    ld sp, hl
    ldh a, [rNR11]
    ld [$0001], sp
    inc de
    ld bc, $39ff
    db $10
    inc a
    db $10
    cp $3c
    rst $38

jr_01e_71f3:
    ldh [c], a
    cp $11
    add hl, bc
    inc b
    nop
    adc a
    inc b
    rst $00
    add e
    db $e3
    rst $28
    ld b, b
    rst $20
    ld b, d
    ld c, a
    ld [bc], a
    inc b
    nop
    nop
    add b
    rst $28
    nop
    ret nz

    add b
    add b
    jp nz, $ef0a

    ld b, d
    rst $20
    rst $38
    ld b, e
    rst $38
    ld b, l
    ld a, a
    dec [hl]
    ld [hl], a
    ld [hl+], a
    ld [hl+], a
    cp $c2
    dec bc
    inc e
    ld [$089c], sp
    call c, $ef88
    rst $28
    ld b, h
    ld b, a
    inc bc
    inc bc

jr_01e_722a:
    add e
    inc c
    inc bc
    ld c, a
    dec b
    ld a, a
    rst $28
    ld b, h
    rst $28
    ld b, h
    rst $00
    add e
    add e
    jp nz, $ff0d

    db $fc
    ld c, b
    xor $44
    xor $c4
    adc $84
    rst $30
    call c, $0808
    jp nz, $f70e

    ld [hl+], a
    ld [hl], a
    ld [hl+], a
    cp a
    rst $20
    ld b, d
    xor $44
    ld c, [hl]
    inc b
    or e
    dec b
    rrca
    adc e
    rlca
    rra
    and b
    ld bc, $8003
    inc bc
    inc bc
    inc b
    and c
    ld b, $e0
    rst $20
    ld b, b
    ldh [rLCDC], a
    dec b
    rlca
    daa
    ld [de], a
    ld c, $00
    rra
    and a
    ld c, $7f
    ld de, $1327
    ld b, c
    inc bc
    sbc a
    ld [bc], a
    ld c, $28
    ccf
    nop
    ld a, h
    jr z, jr_01e_72fb

    jr z, jr_01e_722a

    and d
    inc bc
    ld de, $ff15
    ld b, b
    nop
    ldh a, [rLCDC]
    ld hl, sp+$50
    ld hl, sp-$20
    ld a, a
    db $fc
    jr z, @-$05

    jr nc, @-$0d

    ld h, b
    ld h, c
    nop
    ld c, $df
    rlca
    ld bc, $060f
    ld b, $03
    add hl, bc
    sbc b
    ret c

    ld a, a
    add b
    ret nz

    add b
    add c
    nop
    inc bc
    ld bc, $10b3
    rst $38
    ld [hl], c
    jr nz, jr_01e_7320

    jr nz, jr_01e_7325

    jr nz, @-$17

    ld b, e
    db $ed
    jp $0e04


    ld hl, sp-$30
    and c
    ld a, [bc]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [bc]
    ld d, $1f
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

jr_01e_72fb:
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

jr_01e_7320:
    rra
    nop
    rra
    nop
    rra

jr_01e_7325:
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
    inc de
    nop
    nop
    inc b
    ei
    rst $38
    ld bc, $0012
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $eb
    rlca
    ld [$00d2], sp
    add hl, bc
    add c
    ld bc, $0908
    ld a, [bc]
    rst $38
    dec bc
    inc c
    dec c
    ld c, $0f
    ld a, [bc]
    dec bc
    dec bc
    ei
    inc c
    dec bc
    add b
    nop
    db $10
    ld de, $1312
    inc d
    ld a, a
    dec d
    ld d, $17
    jr jr_01e_73cd

    dec bc
    ld a, [de]
    add c
    inc bc
    rst $38
    jr jr_01e_73d4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ei
    ld a, [bc]
    dec bc
    ld [hl], d
    nop
    jr nz, jr_01e_73e9

    ld [hl+], a
    inc hl
    inc h
    ld a, a
    dec h

jr_01e_73cd:
    ld h, $27
    jr z, jr_01e_73fa

    ld a, [hl+]
    dec hl
    ld [bc], a

jr_01e_73d4:
    ld [bc], a
    sbc $91
    nop
    inc l
    dec l
    ld l, $2f
    ld b, c
    nop
    jr nc, jr_01e_7411

    rst $38
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01e_7422

jr_01e_73e9:
    ccf
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    add c
    rlca
    push bc
    nop
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_01e_73fa:
    ld b, l
    ld b, [hl]
    ld b, a
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst $08
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add c
    add hl, bc
    dec b
    ld bc, $540a

jr_01e_7411:
    rst $38
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    rst $38
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_01e_7422:
    ld h, h
    di
    ld h, l
    ld h, [hl]
    add c
    dec bc
    dec [hl]
    ld bc, $670a
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    rst $38
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, c
    cp $81
    dec c
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld l, [hl]
    rst $38
    ld l, a
    ld a, [bc]
    dec bc
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    rst $38
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld sp, $8087
    ld bc, $0c02
    inc bc
    ld [bc], a
    ld a, [hl]
    ld a, a
    nop
    ld c, $80
    ld [bc], a
    rst $38
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $08
    sub [hl]
    sub a
    sbc b
    dec bc
    inc bc
    ld c, $03
    inc b
    adc [hl]
    adc a
    rst $38
    sbc c
    sbc d
    sbc d
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    rst $38
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    sbc e
    jp c, $00f0

    and [hl]
    add c
    inc de
    sbc b
    sbc c
    ld [hl], e
    ld bc, $a8a7
    rst $28
    xor c
    xor d
    xor e
    xor h
    inc de
    nop
    or c
    or d
    or e
    rst $28
    or h
    or l
    or [hl]
    xor h
    add hl, sp
    ld bc, $adac
    xor [hl]
    rst $38
    xor a
    or b
    xor h
    xor h
    or a
    cp b
    cp c
    cp d
    ccf
    cp e
    cp h
    xor h
    ret z

    ret


    ret


    ld [hl], $01
    ld b, l
    ld bc, $c27e

jr_01e_74c6:
    inc bc
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $0470

    ei
    call z, $c1ce
    inc b
    jp $c5c4


    add $c7
    sbc h
    ld b, h
    ld bc, $00c2
    xor h
    call z, $92cd
    ld bc, $0565
    ret z

    db $ec
    add c
    inc b
    add $00
    jp z, Jump_000_14cb

    ld [$d0cf], sp
    pop de
    adc a
    jp nc, $d4d3

jr_01e_74f6:
    push de
    pop af
    ld [$0141], sp
    ld d, c
    inc bc
    sub $8f
    rst $10
    ret c

    reti


    jp c, $1e43

    ld h, l
    nop
    ld [bc], a
    ld e, $f8
    rst $38
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    db $db
    rst $38
    call c, $dedd
    rst $18
    ldh [$ffe1], a
    ldh [c], a
    db $e3
    rst $38
    ldh [c], a
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$ebf3], a
    db $ec
    ld [bc], a
    ld e, $05
    jr nz, jr_01e_74c6

    db $ed
    xor $ef
    rst $38
    ldh a, [$fff1]
    ldh a, [c]
    di
    db $f4
    push af
    or $f7
    nop
    ld b, h
    inc bc
    ld [bc], a
    db $10
    dec b
    jr nz, jr_01e_7570

    dec h
    add e
    dec h
    dec b
    jr nz, jr_01e_74f6

jr_01e_7547:
    ld bc, $2783
    jr jr_01e_755b

    jr nz, @+$05

    jr nz, @+$11

    ld hl, $5352
    add hl, sp
    jr nz, jr_01e_7563

    ld bc, $2134
    nop
    ld h, [hl]

jr_01e_755b:
    jr nz, @+$0f

    ld bc, $2167
    add e
    jr nz, jr_01e_7570

jr_01e_7563:
    ld bc, $2188
    add d
    jr nz, @+$0f

    ld bc, $8610
    ld hl, $1f04
    dec c

jr_01e_7570:
    ld bc, $2173
    and [hl]
    ld [hl], e
    jr nz, jr_01e_7547

    ld e, $0d
    ld bc, $b001
    ld d, e
    ld hl, $2013
    ld [hl], b
    ld e, $0d
    ld bc, $1f70
    ldh [c], a
    ld e, $61
    inc e
    ld [bc], a
    ld d, b
    ld e, $cf
    dec c
    ld bc, $1d23
    ld h, d
    inc e
    or d
    ld a, [de]
    dec c
    ld bc, $1bb1
    db $10
    and [hl]
    dec de
    ret nz

    ld a, [de]
    dec c
    ld bc, $1bcc
    rst $38
    dec c
    ld bc, $0800
    or $1d
    nop
    inc bc
    ld [bc], a
    dec hl
    nop
    add d
    add c
    add l
    add e
    cp a
    adc e
    add a
    adc e
    add a
    sub a
    adc a
    ld hl, $af00
    ei
    sbc a
    rst $38
    inc e
    nop
    ld b, c
    add c
    and c
    pop bc
    pop de
    rst $38
    pop hl
    pop de
    pop hl
    jp hl


    pop af
    jp hl


    pop af
    push af
    rst $18
    ld sp, hl
    push af
    ld sp, hl
    ret nz

    ld b, b
    dec hl
    nop
    xor a
    sbc a
    add b
    dec hl
    nop
    ld b, c
    ld [bc], a
    ld c, c
    nop
    dec d
    ld [$0580], sp
    ld h, d
    nop
    dec b

jr_01e_75e8:
    ld [$79ff], sp
    cp $03
    ld bc, $0409
    cpl
    rra
    rst $38
    rst $28
    nop
    ld [$fcff], sp
    db $fc
    ld hl, sp-$07
    ldh a, [$fff2]
    ldh [$ffe4], a
    rst $18
    ret nz

    ld [$c9c0], a
    add b
    ld h, c
    inc bc
    ld a, a
    nop
    rst $38
    sub h
    inc bc
    inc d
    ld [bc], a
    inc d
    jr nz, jr_01e_7625

    ld h, b
    rst $38
    inc d
    pop hl
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rst $38
    rst $08
    rlca
    daa
    inc bc
    inc de
    ld h, c
    dec hl
    pop bc
    ld a, e

jr_01e_7625:
    ld c, c
    add b
    add hl, bc
    rlca
    ld hl, sp-$10
    rst $38
    rst $30
    dec b
    ld a, [bc]
    db $e3
    rst $38
    ld a, a
    inc bc
    rlca
    ld h, b
    rlca
    ld a, [hl-]
    dec c
    rst $28
    rra
    rrca
    cp $3a
    ld c, $d4
    add b
    jp nc, $d180

    add [hl]
    ret nc

    rst $18
    adc a
    rst $18
    add b
    ret nc

    add b
    ld h, c
    nop
    sub h
    ld h, e
    ccf
    ld d, l
    ld [bc], a
    ld [hl], $00
    sub h
    nop
    pop hl
    ld a, [bc]
    ld d, b
    dec bc
    rst $38
    nop
    sub l
    ld [$1825], sp
    ld b, l
    jr c, jr_01e_75e8

    rst $38
    ld a, b
    db $fd
    nop
    dec b
    nop
    dec b
    ld hl, sp-$03
    ld h, e
    nop
    rst $30
    ld d, b
    ld b, $1f
    nop
    ld h, c
    inc de
    cp $fe
    sub b
    dec bc
    db $ed
    ld hl, sp-$5b
    nop
    add h
    add h
    or c
    rla
    db $10
    db $10
    jp $c3fd


    add e
    nop
    jr jr_01e_76a2

    jr c, jr_01e_76c4

    inc l
    inc l
    cp e
    inc h
    inc h
    ld bc, $7f16
    ld a, a
    ccf
    stop
    ld bc, $0179
    pop de
    add hl, de
    ld h, b
    rlca
    add c
    ret nc

    add e

jr_01e_76a2:
    ret nc

    ld [hl+], a
    ld [$50ff], sp
    nop
    rra
    ld b, b
    inc d
    nop
    inc d
    and b
    cp $81
    ld c, $14
    db $e3
    rst $30
    nop
    inc d
    nop
    rst $30
    cp [hl]
    ld h, c
    rlca
    ld l, b
    dec b
    ret c

    dec b
    cp b
    pop bc
    rlca
    dec b
    db $e3

jr_01e_76c4:
    nop
    db $fd
    jp nc, $a10c

    ld b, $c1
    ld b, $80
    add b
    nop
    ld l, l
    nop
    rlca
    ld b, $3c
    inc a
    add hl, bc
    ld b, $21
    ld hl, $1786
    ld a, h
    inc [hl]
    dec e
    ld h, c
    rlca
    rra
    rra
    ld hl, sp-$08
    ldh a, [rNR14]
    nop
    db $fd
    ld hl, sp+$10
    nop
    db $fc
    db $fc
    db $10
    db $10
    jr c, jr_01e_7729

    rst $30
    jr z, jr_01e_771c

    ld c, b
    stop
    jr z, jr_01e_7721

    ld a, b
    nop
    rst $38
    call z, Call_000_2448
    inc h
    jr c, jr_01e_770a

    ld e, h
    db $10
    rst $38
    jp z, $5468

    jr c, @+$6e

jr_01e_770a:
    ld e, b
    ld l, [hl]
    ld c, d
    ld e, a
    xor $ca
    nop
    nop
    inc b
    stop
    ld c, $10
    nop
    db $fd
    ld a, [bc]
    stop

jr_01e_771c:
    inc e
    inc b
    db $10
    ld b, b
    db $10

jr_01e_7721:
    ld b, c
    rst $38
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, a

jr_01e_7729:
    rrca
    ld d, b
    rst $38
    db $10
    ld b, b
    rra
    ld b, b
    inc b
    ld bc, $6d00
    ld a, a
    nop
    db $dd
    nop
    or l
    nop
    push af
    ldh a, [rNR11]
    ld [de], a
    rst $38
    dec b
    nop
    nop
    jr nz, jr_01e_7764

    jr nc, @+$32

    ld [hl], b
    rst $38
    ld [hl], b
    ld e, b
    ld e, b
    ld c, b
    ld c, b
    ld d, b
    ld d, b
    jr c, @+$01

    jr nz, @+$2a

    jr z, jr_01e_7771

    db $10
    ld a, [hl-]
    ld [$ff53], sp
    ld d, $2a
    inc e
    ld h, $0a
    ld l, $0a
    ld l, a
    push af
    ld c, e

jr_01e_7764:
    jp Jump_000_1a04


    stop
    ld [$1e08], sp
    nop
    db $d3
    inc sp
    ld [de], a
    ret nc

jr_01e_7771:
    inc e
    inc d
    nop
    rra
    stop
    ccf
    ccf
    ei
    cp $fe
    dec hl
    jr z, jr_01e_77d4

    ld sp, $97cf
    rst $18
    or $28
    nop
    rst $28
    sla l
    nop
    rst $38
    add c
    db $eb
    xor l
    rst $38
    rst $38
    jp $0026


    or e
    sbc d
    pop af
    and $7b
    rst $30
    push hl
    dec h
    nop
    db $10
    ld b, b
    ld d, b
    ld bc, $1505
    rst $38
    ret nc

    add b
    rst $18
    add b
    nop
    dec b
    dec b
    ld l, b
    ei
    inc b
    reti


    rlca
    inc d
    ld h, h
    nop
    call z, $8958
    or a
    ld h, c
    rst $08
    add a
    dec h
    nop
    ld l, a
    ld c, e
    dec bc
    dec b
    xor d
    rst $30
    adc h
    rst $30
    db $ed
    rst $20
    inc b
    rst $30
    push hl
    ld a, a
    ld a, a
    cp $2c
    ld sp, $d703
    ld e, e
    rst $38
    add a
    rst $28
    or a

jr_01e_77d4:
    rst $38
    rst $08
    sub a
    rst $08
    sub [hl]
    rst $10
    sbc c
    sbc $bc
    ei
    rst $20
    sla c
    nop
    rst $30
    db $db
    rst $38
    jp $ffd7


    or l
    cp l
    ld b, d
    and l
    ld h, [hl]
    rst $38
    ret nz

    push af
    rst $38
    sub $ff
    pop hl
    ei
    db $ed
    di
    push hl
    di
    ld e, a
    ld h, l
    db $e3
    sub l
    ld e, e
    inc a
    add hl, bc
    ld e, $c0
    ldh [$ff2c], a
    ret z

    rlca
    ld e, $02
    ld sp, $1e0a
    ld bc, $2760
    add hl, bc
    ld b, $c7
    sbc c
    db $db
    ldh a, [c]
    inc a
    rlca
    ld b, $eb
    xor l
    rrca
    ld b, $7b
    dec a
    rst $08
    ldh [c], a
    call c, $e1fe
    ret nz

    inc [hl]
    ld h, [hl]
    inc de
    and l
    ld h, [hl]
    rst $38
    and l
    ld h, [hl]
    db $db
    inc a
    ld a, [hl]
    jp Jump_01e_4685


    rst $38
    jp $ffbd


    jp $dbf7


    ld b, a
    ld a, [hl-]
    rst $38
    ld a, a
    add [hl]
    db $fd
    ld a, [hl]
    ld hl, sp+$7f
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
    push de
    rst $38
    xor d
    rst $38
    ld h, b
    ldh [rNR13], a
    ld h, b
    ldh [rSTAT], a
    ld sp, $06b1
    ld d, l
    nop
    ld bc, $39c2
    ld [$f901], sp
    inc bc
    stop
    ld b, c
    inc sp
    ld bc, $03ff
    rst $38
    ld d, a
    cp e
    rst $38
    xor a
    inc b
    inc bc
    add b
    rst $38
    ret nz

    nop
    inc b
    push af
    di
    rst $38
    ld a, [$0206]
    dec b
    inc b
    ld a, [hl]
    sbc h
    ld a, [hl]
    and c
    rra
    rst $18
    ld a, $0f
    cp $07
    nop
    inc bc
    ld bc, $0e05
    ld [$3be7], sp
    ld a, a
    add a
    ret nz

    jr c, jr_01e_78f6

    inc d
    cp e
    rst $38
    xor $f4
    ld b, b
    nop
    pop bc
    rlca
    ld d, l
    ld b, b
    ld b, c
    rst $38
    rst $38
    db $dd
    rst $38
    jp hl


    ld [hl], a
    ld b, b
    nop
    pop hl
    nop
    xor d
    ld bc, $db01
    db $ed
    bit 7, a
    ld l, a
    set 5, l
    res 5, [hl]
    bit 5, l
    ld b, b
    nop
    ei
    rst $28
    ld [$020b], sp
    ld a, a
    ret nz

    rst $38
    db $db
    xor a
    cpl
    set 5, [hl]
    res 5, a
    ldh [c], a
    ld bc, $026d
    ld [bc], a
    add hl, bc
    dec b
    ei
    cp $03
    dec bc
    dec b
    ld d, l
    rst $38
    xor a
    ld hl, sp+$58
    rst $38
    rst $30
    ld d, $ef

jr_01e_78d8:
    ld l, $df
    ld [hl], e
    or d
    jp Jump_01e_46ff


    ld d, $94

jr_01e_78e1:
    add d
    add b
    ret nz

    inc bc
    ret nz

    rst $38
    inc bc
    add b
    rlca
    add c
    ld b, $03
    inc c
    rlca
    rst $38
    ld a, [bc]
    inc c
    inc d
    inc c
    inc d
    inc l

jr_01e_78f6:
    srl h
    rst $38
    db $db
    rst $38
    jr jr_01e_78d8

    inc a
    rst $30
    jr @+$01

    rst $18
    nop
    cp $81
    ld a, a
    ld a, a
    and e
    ld de, $7f80
    rst $38
    ldh [$ff1f], a
    or b
    ld c, a
    db $10
    rst $28
    sub d
    rst $28
    call c, Call_000_12a3
    inc bc
    inc de
    adc b
    rst $38
    ld [hl+], a
    db $e4
    nop
    ld bc, $fffe
    inc bc
    db $fc
    rlca
    ld a, [$f58d]
    ld l, $f6
    or $0b
    inc b
    dec bc
    dec bc
    ldh a, [rTIMA]
    ret nz

    ld bc, $81e0
    rst $38
    ld h, b
    ret nz

    jr nc, jr_01e_78e1

    ld e, b
    inc d
    db $ec
    db $10
    rst $38
    db $ec
    push af
    rra
    ld a, [de]
    rst $28
    ld l, b
    rst $30
    ld [hl], h
    rst $38
    ei
    xor [hl]
    ld l, l
    add e
    ld b, [hl]
    ld l, c
    add hl, hl
    ld b, b
    cp a
    ld hl, $0004
    inc b
    nop
    ld [$0020], sp
    db $10
    cp $20
    nop
    ld hl, $2101
    ld bc, $3b17
    dec hl
    sbc a

jr_01e_7964:
    inc a
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, a
    ld h, c
    db $10
    pop bc
    ld d, a
    rla
    rl a
    ld a, [hl]
    and b
    ld d, d
    and b
    ld h, d
    ld de, $58c1
    or c
    rst $08
    sbc a
    ldh [c], a
    rra
    add l
    ld a, a
    ld a, [hl+]
    ld b, $01
    add e
    inc de
    xor d
    sbc $06
    ld [bc], a
    ld d, a
    ei
    xor e
    db $fc
    add hl, bc
    ld bc, $ffff
    cp $0b
    inc b
    or b
    call z, $1ce0
    add h
    ld a, [hl]
    ld a, [hl+]
    sbc l
    cp $05
    ld b, $20
    nop
    jr nz, jr_01e_7964

    rlca
    ld b, c
    ld [$3f84], sp

jr_01e_79a7:
    add b
    add h
    add b
    ld b, e
    inc bc
    ld b, e
    nop
    ld de, $0027
    sbc h
    ld bc, $4960
    rrca
    jp nz, $c2c0

    nop
    dec c
    daa
    nop
    cp a
    rst $38
    nop
    ret nz

    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jp $a830


    ld [hl+], a
    nop
    ld h, e
    ld e, l
    and c
    ld d, d
    or e
    ld h, [hl]
    db $fd
    nop
    rst $38
    inc bc
    nop
    db $fd
    cp $0d
    cp $f5
    ld b, $f9
    dec d
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, @-$4e

    jr nc, jr_01e_79a7

    rst $00
    ccf
    ret nz

    ccf
    ld h, l
    ld [bc], a
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $37
    dec c
    ld c, $fd
    ld b, b
    dec d
    rst $38
    nop
    ld h, e
    dec b
    ld h, a
    nop
    db $fc
    ld h, e
    inc b
    ld h, a
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rla
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    jp c, Jump_01e_600a

    ld e, e
    nop
    add hl, bc
    ld d, l
    ld bc, $0b40
    daa
    inc bc
    cpl
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
    ld b, $1f
    nop
    nop
    nop
    ldh [rSC], a
    rst $38
    rst $38
    ld l, e
    cp l
    ld l, $56
    dec e
    adc b
    inc d
    rst $38
    nop
    nop
    adc b
    inc d
    ld [hl], d
    ld hl, $32db
    cp $8d
    nop
    sbc $7f
    sub $7e
    ld [hl], c
    ld [hl], $0e
    ld sp, hl
    add hl, de
    xor a
    inc bc
    inc b
    inc b
    ld a, a
    ld a, [hl]
    ld d, a
    ld a, [de]
    ld [hl+], a
    rst $38
    db $ed
    jr nc, jr_01e_7a6c

jr_01e_7a6c:
    nop
    ld a, c
    ld a, a
    pop de
    ld a, [hl]
    ei
    ld b, d
    ld [$020f], sp
    ld e, a
    ld d, e
    push de
    dec l
    add hl, hl
    ld a, a
    dec h
    nop
    nop
    ld e, a
    ld d, e
    db $d3
    ld l, l
    add c
    nop
    rst $28
    rst $38
    dec a
    ld d, a
    ld hl, $0101
    cp $7a
    or [hl]
    or a
    ld e, c
    add hl, hl
    dec h
    add hl, bc
    ld [bc], a
    ld de, $837f
    ld [bc], a
    cp a
    sbc l
    ld b, l
    ld bc, $9f03
    ld h, [hl]
    ld de, $0080
    add hl, bc
    inc b
    ld a, a
    or $84
    inc b
    rst $38
    inc bc
    ld bc, $1a05
    ld a, a
    ld [hl], d
    dec a
    sbc $09
    inc b
    ld a, c
    ld a, d
    ld d, b

jr_01e_7ab7:
    ld d, l
    add c
    ld b, $9e
    ld d, e
    cp l
    ld e, d
    ld [bc], a
    ld [bc], a
    db $fd
    ld h, $ec
    ld b, c
    inc c
    inc b
    dec h
    or $81
    ld [$7f34], sp
    inc bc
    add hl, bc
    ld a, e
    dec hl
    or c
    ld de, $0bd6
    ld [$232e], sp
    add e
    ld a, [bc]
    ld e, a
    ld [bc], a
    ld b, $fb
    ld l, $bb
    ld c, e
    ld [hl], $09
    ld a, [bc]
    rst $30
    ld e, [hl]
    ld [hl], $02
    inc b
    ld e, a
    rst $30
    ld d, e
    or d
    ld e, l
    ld bc, $5a0d
    scf
    ld a, [bc]
    ld [hl+], a
    ld [hl], b
    nop
    inc c
    inc d
    nop
    xor a
    ld de, $1603
    cp l
    ld [hl], a
    rra
    nop
    db $10
    or $01
    ld d, $8e
    inc sp
    add e
    nop
    ld d, [hl]
    ld a, a
    xor e
    ld c, [hl]
    cp $01
    rla
    cp l
    ld [hl], a
    ld [$885d], a
    inc d
    rst $38
    ld a, a
    ld l, a
    ld e, a
    ccf
    rr d
    and l
    inc d
    db $10
    jr jr_01e_7ab7

    ld [bc], a
    add hl, de
    dec l
    ld hl, $1983
    ld [hl], e
    and b
    jr jr_01e_7b2c

    ld a, [de]

jr_01e_7b2c:
    cp a
    ccf
    ld [hl], a
    ld a, h
    ld e, [hl]
    dec l
    ld d, $67
    rrca
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    cp $77
    or c
    dec hl
    or d
    dec e
    xor b
    inc d
    db $db
    ld d, [hl]
    ld [bc], a
    inc bc
    dec e
    or a
    ld c, c
    add e
    dec e
    dec sp
    ld e, $fe
    inc b
    ld e, $6f
    cp c
    ld e, $8b
    ld bc, $1846
    xor e
    ld d, h
    ld b, d
    inc bc
    rra
    ld d, b
    and h
    inc e
    ld c, h
    dec b
    ld [bc], a
    ld a, a
    rst $38
    rst $30
    ld e, [hl]
    xor a
    dec h
    ld b, [hl]
    jr jr_01e_7b84

    ld d, e
    sub $03
    ld hl, $0190
    add e
    ld hl, $8448
    inc b
    rst $18
    ld l, a
    ccf
    cp d
    ld [hl+], a
    ld d, b
    ld de, $1084
    rrca
    ld [$0204], sp
    ld a, a
    ld l, e

jr_01e_7b84:
    cp d
    ld [hl+], a
    add sp, $1d
    add $08
    rrca
    ld [bc], a
    ld a, [hl]
    dec b
    ld [bc], a
    ld d, c
    cpl
    or c
    add hl, de
    and a
    nop
    rrca
    ld [bc], a
    ld a, [hl]
    dec b
    ld a, [bc]
    cp d
    ld [hl-], a
    adc e
    ld b, c
    add [hl]
    inc b
    rrca
    ld [bc], a
    ld a, $05
    ld a, [hl+]
    db $10
    ld c, a
    ld c, $39
    inc h
    rrca
    ld [$0405], sp
    rst $18
    ld a, a
    db $db
    ld [hl-], a
    ld [hl], d
    ld hl, $2c01
    ld e, d
    ld a, a
    rlca
    xor l
    ld l, l
    add $80
    jr z, jr_01e_7bda

    nop
    xor [hl]
    ld b, $00
    cpl
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

jr_01e_7bda:
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
    ld [bc], a
    ld c, e
    nop
    ld d, l
    rra
    nop
    jp $bf00


    ld [bc], a
    rra
    nop
    rra
    nop
    rra
    nop
    inc e
    rra
    nop
    dec l
    nop
    ld bc, $4055
    ld d, h
    nop
    ld [hl], d
    rlca
    ld e, a
    nop
    ld [$0a60], a
    rst $10
    ld bc, $ff09
    add b
    ld [bc], a
    nop
    rst $38
    nop
    ccf
    nop
    ld [hl+], a
    xor d
    xor d
    xor d
    adc b
    ld b, b
    nop
    inc [hl]
    nop
    db $fc
    cpl
    dec b
    or h
    nop
    rst $38
    rst $38
    ld a, [$bfaa]
    rst $38
    adc a
    rst $38
    jp z, $8faa

    ld e, a
    nop
    di
    nop
    ldh [rSB], a
    ld sp, hl
    ld c, l
    ld d, [hl]
    jr nc, jr_01e_7c58

    ldh a, [rHDMA5]

jr_01e_7c58:
    add b
    ld [bc], a
    jr nz, jr_01e_7c5c

jr_01e_7c5c:
    ldh a, [$ff50]
    inc b
    adc e
    rrca
    ret nz

    and b
    inc b
    inc bc
    ldh a, [c]
    nop
    ccf
    dec b
    and [hl]
    dec b
    ldh a, [c]
    ld l, d
    and c
    dec b
    jp nz, $0557

    add d
    ldh a, [rTIMA]
    jp nz, Jump_01e_4002

    ld b, $1b
    ret nz

    sbc d
    ld d, c
    nop
    ld d, l
    ld a, a
    ld d, b
    dec b
    and d
    dec b
    pop af
    dec b
    cp b
    xor a
    dec b
    ccf
    dec b
    ld b, [hl]
    dec bc
    ldh a, [rP1]
    ccf
    ld h, b
    inc b
    nop
    reti


    rrca
    ld e, a
    nop
    pop af
    nop
    pop bc
    ld b, l
    ldh [rSB], a
    pop af
    dec b
    ld b, d
    ld d, c
    nop
    dec h
    add b
    ld [bc], a
    xor a
    dec b
    ccf
    dec b
    and $10
    push af
    ld h, c
    add hl, bc
    scf
    push bc
    ld d, l
    ld c, a
    ld e, c
    nop
    pop bc
    ld b, l
    ld d, c
    nop
    ld b, c
    ld bc, $c00b
    nop
    ld b, c
    dec bc
    and b
    ret nc

    rlca
    ld [hl+], a
    ld [$05af], sp
    ccf
    dec b
    xor h
    ld c, a
    dec bc
    ld e, l
    nop
    jp nz, Jump_01e_51a8

    nop
    xor d
    ldh [rSB], a
    ldh a, [c]
    ld b, l
    xor b
    sub c
    dec bc
    ld d, h
    xor a
    dec b
    xor a
    dec b
    xor d
    dec b
    ld d, l
    and b
    dec b
    adc e
    pop bc
    ld d, l
    and c
    dec b
    ld bc, $0a52
    ld c, h
    ld b, $f5
    ld a, [bc]
    ldh a, [rP1]
    pop af
    dec b
    xor a
    dec b
    ccf
    dec b
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
    ld b, b
    or h
    nop
    sub a
    add hl, hl
    ld [hl-], a
    ld a, [hl+]
    xor a
    dec [hl]
    rst $08
    dec [hl]
    ld [de], a
    dec bc
    rrca
    or d
    dec bc
    nop
    nop
    inc c
    ld e, a
    dec l
    ld c, a
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    nop
    ld l, a
    ld b, b
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    dec b
    inc d
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

Call_01e_7d60:
Jump_01e_7d60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
