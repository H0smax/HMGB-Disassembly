; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc c
    nop
    db $fd
    ld bc, $0042
    db $fd
    add hl, bc
    ld b, d
    nop
    db $fd
    ld de, $0042
    db $fd
    add hl, de
    ld b, d
    nop
    db $fd
    ld d, l
    ld b, e
    nop
    db $fd
    ld e, l
    ld b, e
    nop
    db $fd
    ld h, l
    ld b, e
    nop
    db $fd
    ld l, l
    ld b, e
    nop
    db $fd
    xor c
    ld b, h
    nop
    db $fd
    xor a
    ld b, h
    nop
    db $fd
    or l
    ld b, h
    nop
    db $fd
    cp e
    ld b, h
    nop
    db $fd
    push af
    ld b, l
    nop
    db $fd
    inc bc
    ld b, [hl]
    nop
    db $fd
    ld de, $0046
    db $fd
    rra
    ld b, [hl]
    nop
    db $fd
    ld e, l
    ld c, c
    nop
    db $fd
    ld l, e
    ld c, c
    nop
    db $fd
    ld a, c
    ld c, c
    nop
    db $fd
    add a
    ld c, c
    ld bc, $e1fd
    ld c, h
    ld bc, $e9fd
    ld c, h
    ld bc, $f1fd
    ld c, h
    ld bc, $f9fd
    ld c, h
    ld bc, $35fd
    ld c, [hl]
    ld bc, $3dfd
    ld c, [hl]
    ld bc, $45fd
    ld c, [hl]
    ld bc, $4dfd
    ld c, [hl]
    ld bc, $81fd
    ld c, a
    ld bc, $89fd
    ld c, a
    ld bc, $91fd
    ld c, a
    ld bc, $99fd
    ld c, a
    ld [bc], a
    db $fd
    call TimerOverflowInterrupt
    db $fd
    ld b, e
    ld d, c
    ld bc, $62fd
    ld d, c
    ld bc, $6afd
    ld d, c
    ld bc, $72fd
    ld d, c
    ld bc, $7afd
    ld d, c
    ld bc, $7efd
    ld d, e
    ld bc, $86fd
    ld d, e
    ld bc, $8efd
    ld d, e
    ld bc, $96fd
    ld d, e
    ld [bc], a
    db $fd
    add [hl]
    ld d, l
    ld [bc], a
    db $fd
    adc [hl]
    ld d, l
    ld [bc], a
    db $fd
    sub [hl]
    ld d, l
    ld [bc], a
    db $fd
    sbc [hl]
    ld d, l
    ld [bc], a
    db $fd
    and d
    ld d, a
    ld [bc], a
    db $fd
    xor d
    ld d, a
    ld [bc], a
    db $fd
    or d
    ld d, a
    ld [bc], a
    db $fd
    cp d
    ld d, a
    ld [bc], a
    db $fd
    xor [hl]
    ld e, c
    ld [bc], a
    db $fd
    cp h
    ld e, c
    ld [bc], a
    db $fd
    jp z, $0259

    db $fd
    ret c

    ld e, c
    inc bc
    db $fd
    ld l, d
    ld e, e
    inc bc
    db $fd
    ld a, b
    ld e, e
    inc bc
    db $fd
    add [hl]
    ld e, e
    inc bc
    db $fd
    sub h
    ld e, e
    inc bc
    db $fd
    ld e, $5d
    inc bc
    db $fd
    ld [hl+], a
    ld e, l
    inc bc
    db $fd
    ld h, $5d
    inc bc
    db $fd
    ld a, [hl+]
    ld e, l
    inc bc
    db $fd
    ld [hl+], a
    ld e, [hl]
    inc bc
    db $fd
    rrca

Jump_00c_4100:
    ld e, a
    inc bc
    db $fd
    add hl, de
    ld e, a
    inc bc
    db $fd
    inc hl
    ld e, a
    inc bc
    db $fd
    dec l
    ld e, a
    nop
    cp $d7
    ld h, c
    nop
    cp $e1
    ld h, c
    nop
    cp $eb
    ld h, c
    nop
    cp $f5
    ld h, c
    nop
    db $fd
    ld hl, $0042
    db $fd
    inc hl
    ld b, d
    nop
    db $fd
    dec h
    ld b, d
    nop
    db $fd
    daa
    ld b, d
    ld bc, $01fd
    ld c, l
    ld bc, $03fd
    ld c, l
    ld bc, $05fd
    ld c, l
    ld bc, $07fd
    ld c, l
    nop
    db $fd
    pop bc
    ld b, h
    nop
    db $fd
    jp Jump_000_0044


    db $fd
    push bc
    ld b, h
    nop
    db $fd
    rst $00
    ld b, h
    inc bc
    cp $7b
    ld h, h
    inc bc
    cp $83
    ld h, h
    inc bc
    cp $89
    ld h, h
    inc bc
    cp $8b
    ld h, h
    ld [bc], a
    cp $f3
    ld h, h
    ld [bc], a
    cp $fb
    ld h, h
    ld [bc], a
    cp $03
    ld h, l
    ld [bc], a
    cp $0b
    ld h, l
    inc bc
    cp $0b
    ld h, a
    inc bc
    cp $0d
    ld h, a
    inc bc
    cp $0f
    ld h, a
    inc bc
    cp $11
    ld h, a
    inc bc
    cp $77
    ld h, a
    inc bc
    cp $85
    ld h, a
    inc bc
    cp $93
    ld h, a
    inc bc
    cp $a1
    ld h, a
    inc bc
    cp $7f
    ld l, c
    inc bc
    db $fd
    ld l, $5d
    inc bc
    db $fd
    ld [hl-], a
    ld e, l
    inc bc
    db $fd
    ld [hl], $5d
    inc bc
    db $fd
    ld a, [hl-]
    ld e, l
    nop
    db $fd
    dec l
    ld b, [hl]
    nop
    db $fd
    dec sp
    ld b, [hl]
    nop
    db $fd
    ld c, c
    ld b, [hl]
    nop
    db $fd
    ld d, a
    ld b, [hl]
    nop
    rst $38
    dec h
    ld l, d
    nop
    rst $38
    dec l
    ld l, d
    nop
    rst $38
    dec [hl]
    ld l, d
    nop
    rst $38
    dec a
    ld l, d
    nop
    rst $38
    ld b, l
    ld l, d
    nop
    rst $38
    ld b, a
    ld l, d
    nop
    rst $38
    ld c, c
    ld l, d
    nop
    rst $38
    ld c, e
    ld l, d
    nop
    rst $38
    reti


    ld l, e
    nop
    rst $38
    pop hl
    ld l, e
    nop
    rst $38
    jp hl


    ld l, e
    nop
    rst $38
    pop af
    ld l, e
    nop
    rst $38
    ld sp, hl
    ld l, e
    nop
    rst $38
    ei
    ld l, e
    nop
    rst $38
    db $fd
    ld l, e
    nop
    rst $38
    rst $38
    ld l, e
    nop
    rst $38
    adc l
    ld l, l
    nop
    rst $38

MoveToHouse::
    adc l
    ld l, l
    nop
    rst $38
    adc l
    ld l, l
    nop
    rst $38
    adc l
    ld l, l
    add hl, hl
    ld b, d
    ld b, d
    ld b, d
    add hl, hl
    ld b, d
    ld e, e
    ld b, d
    ld [hl], h
    ld b, d
    adc l
    ld b, d
    ld [hl], h
    ld b, d
    and [hl]
    ld b, d
    cp a
    ld b, d
    ret c

    ld b, d
    cp a
    ld b, d
    pop af
    ld b, d
    ld a, [bc]
    ld b, e
    inc hl
    ld b, e
    ld a, [bc]
    ld b, e
    inc a
    ld b, e
    add hl, hl
    ld b, d
    ld [hl], h
    ld b, d
    cp a
    ld b, d
    ld a, [bc]
    ld b, e
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    rst $28
    ld hl, sp+$02
    nop
    rst $30
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$08
    nop
    rst $28
    nop
    rlca
    nop
    rst $20
    nop
    ld bc, $e700
    ld hl, sp+$00
    nop
    add b
    rst $30
    nop
    dec c
    nop
    rst $30
    ld hl, sp+$0c
    nop
    rst $28
    nop
    dec bc
    nop
    rst $28
    ld hl, sp+$0a
    nop
    rst $20
    nop
    ld bc, $e700
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    ldh a, [rP1]
    ld de, $f000
    ld hl, sp+$10
    nop
    add sp, $00
    rrca
    nop
    add sp, -$08
    ld c, $00
    add b
    rst $28
    ld hl, sp+$10
    nop
    rst $30
    nop
    rla
    nop
    rst $30
    ld hl, sp+$16
    nop
    rst $28
    nop
    dec d
    nop
    rst $20
    nop
    rrca
    nop
    rst $20
    ld hl, sp+$0e
    nop
    add b
    rst $30
    nop
    dec de
    nop
    rst $30
    ld hl, sp+$1a
    nop
    rst $28
    nop
    add hl, de
    nop
    rst $28
    ld hl, sp+$18
    nop
    rst $20
    nop

jr_00c_42b8:
    rrca
    nop
    rst $20
    ld hl, sp+$0e
    nop
    add b
    ld hl, sp-$08
    inc de
    jr nz, @-$06

    nop
    ld [de], a
    jr nz, jr_00c_42b8

    ld hl, sp+$11
    jr nz, @-$0e

    nop
    db $10
    jr nz, jr_00c_42b8

jr_00c_42d0:
    ld hl, sp+$0f
    jr nz, @-$16

jr_00c_42d4:
    nop
    ld c, $20
    add b

jr_00c_42d8:
    rst $28
    nop
    db $10
    jr nz, jr_00c_42d4

    ld hl, sp+$17
    jr nz, jr_00c_42d8

    nop
    ld d, $20
    rst $28
    ld hl, sp+$15
    jr nz, jr_00c_42d0

jr_00c_42e9:
    ld hl, sp+$0f
    jr nz, jr_00c_42d4

jr_00c_42ed:
    nop
    ld c, $20
    add b
    rst $30
    ld hl, sp+$1b
    jr nz, jr_00c_42ed

    nop
    ld a, [de]
    jr nz, jr_00c_42e9

    ld hl, sp+$19
    jr nz, jr_00c_42ed

    nop
    jr jr_00c_4321

    rst $20
    ld hl, sp+$0f
    jr nz, jr_00c_42ed

    nop
    ld c, $20
    add b
    ld hl, sp+$01
    ld hl, $f800
    ld sp, hl
    jr nz, jr_00c_4312

jr_00c_4312:
    ldh a, [rSB]
    rra
    nop
    ldh a, [$fff9]
    ld e, $00
    add sp, $01
    dec e
    nop
    add sp, -$07
    inc e

jr_00c_4321:
    nop
    add b
    rst $30
    ld bc, $0025
    rst $30
    ld sp, hl
    inc h
    nop
    rst $28
    ld bc, $0023
    rst $28
    ld sp, hl
    ld [hl+], a
    nop
    rst $20
    ld bc, $001d
    rst $20
    ld sp, hl
    inc e
    nop
    add b
    rst $30
    ld bc, $0029
    rst $30
    ld sp, hl
    jr z, jr_00c_4344

jr_00c_4344:
    rst $28
    ld bc, $0027
    rst $28
    ld sp, hl
    ld h, $00
    rst $20
    ld bc, $001d
    rst $20
    ld sp, hl
    inc e
    nop
    add b
    ld [hl], l
    ld b, e
    adc [hl]
    ld b, e
    ld [hl], l
    ld b, e
    and a
    ld b, e
    ret nz

    ld b, e
    reti


    ld b, e
    ret nz

    ld b, e
    ldh a, [c]
    ld b, e
    dec bc
    ld b, h
    inc h
    ld b, h
    dec bc
    ld b, h
    dec a
    ld b, h
    ld d, [hl]
    ld b, h
    ld l, a
    ld b, h
    ld d, [hl]
    ld b, h
    adc h
    ld b, h
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [rP1]
    dec l
    nop
    ldh a, [$fff8]
    inc l
    nop
    add sp, $00
    dec hl
    nop
    add sp, -$08
    ld a, [hl+]
    nop
    add b
    or $00
    ld sp, $f600
    ld hl, sp+$30
    nop
    xor $00
    cpl
    nop
    xor $f8
    ld l, $00
    and $00
    dec hl
    nop
    and $f8
    ld a, [hl+]
    nop
    add b
    xor $f8
    inc l
    nop
    or $00
    dec [hl]
    nop
    or $f8
    inc [hl]
    nop
    xor $00
    inc sp
    nop
    and $00
    dec hl
    nop
    and $f8
    ld a, [hl+]
    nop
    add b
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00c_43d0

jr_00c_43d0:
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    or $00
    ccf
    nop
    or $f8
    ld a, $00
    xor $00
    dec a
    nop
    xor $f8
    inc a
    nop
    and $00
    scf
    nop
    and $f8
    ld [hl], $00
    add b
    or $00
    ld b, e
    nop
    or $f8
    ld b, d
    nop
    xor $00
    ld b, c
    nop
    xor $f8
    ld b, b
    nop
    and $00

jr_00c_4404:
    scf
    nop
    and $f8

jr_00c_4408:
    ld [hl], $00
    add b
    ld hl, sp-$08
    inc de
    jr nz, jr_00c_4408

    nop
    ld [de], a
    jr nz, jr_00c_4404

    ld hl, sp+$39
    jr nz, jr_00c_4408

    nop
    jr c, @+$22

jr_00c_441b:
    add sp, -$08
    scf
    jr nz, jr_00c_4408

    nop
    ld [hl], $20
    add b
    or $f8
    ccf
    jr nz, @-$08

    nop
    ld a, $20
    xor $f8
    dec a
    jr nz, @-$10

    nop
    inc a
    jr nz, jr_00c_441b

    ld hl, sp+$37
    jr nz, @-$18

    nop
    ld [hl], $20
    add b
    or $f8
    ld b, e
    jr nz, @-$08

    nop
    ld b, d
    jr nz, @-$10

    ld hl, sp+$41
    jr nz, @-$10

    nop
    ld b, b
    jr nz, @-$18

    ld hl, sp+$37
    jr nz, @-$18

    nop
    ld [hl], $20
    add b
    ld hl, sp+$01
    ld hl, $f800
    ld sp, hl
    jr nz, jr_00c_445e

jr_00c_445e:
    ldh a, [rSB]
    rra
    nop
    ldh a, [$fff9]
    ld e, $00
    add sp, $01
    dec e
    nop
    add sp, -$07
    inc e
    nop
    add b
    cp $fe
    ld c, c
    nop
    and $01
    dec e
    nop
    and $f9
    inc e
    nop
    or $01
    ld c, l
    nop
    or $f9
    ld c, h
    nop
    xor $01
    ld c, e
    nop
    xor $f9
    ld c, d
    nop
    add b
    cp $f9
    ld c, c
    nop
    and $01
    dec e
    nop
    and $f9
    inc e
    nop
    or $01
    ld d, c
    nop
    or $f9
    ld d, b
    nop
    xor $01
    ld c, a
    nop
    xor $f9
    ld c, [hl]
    nop
    add b
    ret


    ld b, h
    ldh [c], a
    ld b, h
    ei
    ld b, h
    inc d
    ld b, l
    dec l
    ld b, l
    ld b, [hl]
    ld b, l
    ld e, a
    ld b, l

MoveToToolRoom::
    ld a, b
    ld b, l
    sub c
    ld b, l
    xor d
    ld b, l
    jp $dc45


    ld b, l
    ldh [c], a
    ld b, h
    dec l
    ld b, l
    ld a, b
    ld b, l
    jp $fa45


    nop
    ld d, a
    nop
    ld a, [$56f8]
    nop
    ldh a, [c]
    nop
    ld d, l
    nop
    ldh a, [c]
    ld hl, sp+$54
    nop
    ld [$5300], a
    nop
    ld [$52f8], a
    nop
    add b
    ldh a, [rP1]
    ld e, c
    nop
    ldh a, [$fff8]
    ld e, b
    nop
    ld hl, sp+$00
    ld e, e
    nop
    ld hl, sp-$08
    ld e, d
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    add sp, $00
    add [hl]
    nop
    add sp, -$08
    ld c, b
    nop
    ld hl, sp+$00
    ld e, a
    nop
    ld hl, sp-$08
    ld e, [hl]
    nop
    ldh a, [rP1]
    ld e, l
    nop
    ldh a, [$fff8]

jr_00c_4511:
    ld e, h
    nop
    add b
    ld hl, sp-$01
    ld [hl], l
    nop
    ld hl, sp-$09
    ld [hl], h
    nop
    ldh a, [rIE]
    ld [hl], e
    nop
    ldh a, [$fff7]
    ld [hl], d
    nop
    add sp, -$01
    ld [hl], c
    nop
    add sp, -$09

jr_00c_452a:
    ld [hl], b
    nop
    add b
    ld hl, sp+$00
    ld a, e
    nop
    ld hl, sp-$08
    ld a, d
    nop
    ldh a, [rP1]
    ld a, c
    nop
    ldh a, [$fff8]
    ld a, b
    nop
    add sp, $00
    ld [hl], a
    nop
    add sp, -$08
    halt
    nop
    add b
    ld hl, sp+$00
    add c
    nop
    ld hl, sp-$08
    add b
    nop
    ldh a, [rP1]
    ld a, a
    nop
    ldh a, [$fff8]
    ld a, [hl]
    nop
    add sp, $00
    ld a, l
    nop
    add sp, -$08

jr_00c_455c:
    ld a, h
    nop
    add b
    ld hl, sp-$07
    ld [hl], l
    jr nz, jr_00c_455c

    ld bc, $2074
    ldh a, [$fff9]
    ld [hl], e
    jr nz, jr_00c_455c

    ld bc, $2072
    add sp, -$07

jr_00c_4571:
    ld [hl], c
    jr nz, jr_00c_455c

    ld bc, $2070
    add b
    ld hl, sp-$08
    ld a, e
    jr nz, @-$06

    nop
    ld a, d
    jr nz, jr_00c_4571

    ld hl, sp+$79
    jr nz, @-$0e

    nop
    ld a, b
    jr nz, jr_00c_4571

    ld hl, sp+$77
    jr nz, @-$16

    nop

jr_00c_458e:
    halt
    jr nz, jr_00c_4511

    ld hl, sp-$08
    add c
    jr nz, jr_00c_458e

    nop
    add b
    jr nz, @-$0e

    ld hl, sp+$7f
    jr nz, jr_00c_458e

    nop
    ld a, [hl]
    jr nz, @-$16

    ld hl, sp+$7d
    jr nz, jr_00c_458e

    nop
    ld a, h
    jr nz, jr_00c_452a

    ld hl, sp+$00
    ld h, l
    nop
    ld hl, sp-$08
    ld h, h
    nop
    ldh a, [rP1]
    ld h, e
    nop
    ldh a, [$fff8]
    ld h, d
    nop
    add sp, $00
    ld h, c
    nop
    add sp, -$08
    ld h, b
    nop
    add b
    add sp, $01
    dec e
    nop
    add sp, -$07
    inc e
    nop
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    ldh a, [rP1]
    ld h, a
    nop
    ldh a, [$fff8]
    ld h, [hl]
    nop
    add b
    ld hl, sp+$00
    ld l, a
    nop
    ld hl, sp-$08
    ld l, [hl]
    nop
    ldh a, [rP1]
    ld l, l
    nop
    ldh a, [$fff8]
    ld l, h
    nop
    add sp, $00
    ld l, e
    nop
    add sp, -$08
    ld l, d
    nop
    add b
    ld h, l
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    sbc e
    ld b, [hl]
    cp b
    ld b, [hl]
    push de
    ld b, [hl]
    xor $46
    rlca
    ld b, a
    jr nz, jr_00c_464c

    add hl, sp
    ld b, a
    ld e, d
    ld b, a
    ld a, e
    ld b, a
    sbc h
    ld b, a
    or l
    ld b, a
    adc $47
    rst $20
    ld b, a
    nop
    ld c, b
    ld hl, $4248
    ld c, b
    ld h, e
    ld c, b
    ld a, h
    ld c, b
    sub l
    ld c, b
    xor [hl]
    ld c, b
    rst $00
    ld c, b
    ldh [rOBP0], a
    ld sp, hl
    ld c, b
    ld [de], a
    ld c, c
    dec hl
    ld c, c
    ld b, h
    ld c, c
    ld h, l
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    sbc e
    ld b, [hl]
    cp b
    ld b, [hl]
    push de
    ld b, [hl]
    xor $46
    rlca
    ld b, a
    jr nz, jr_00c_4684

    add hl, sp
    ld b, a
    ld e, d
    ld b, a
    ld a, e
    ld b, a
    sbc h
    ld b, a
    or l
    ld b, a
    adc $47
    rst $20
    ld b, a
    nop

jr_00c_464c:
    ld c, b
    ld hl, $4248
    ld c, b
    ld h, e
    ld c, b
    ld a, h
    ld c, b
    sub l
    ld c, b
    xor [hl]
    ld c, b
    rst $00
    ld c, b
    ldh [rOBP0], a
    ld sp, hl
    ld c, b
    ld [de], a
    ld c, c
    dec hl
    ld c, c
    ld b, h
    ld c, c
    ld hl, sp+$00
    add l
    nop
    ld hl, sp-$08
    add h
    nop
    ldh a, [rP1]
    add e
    nop
    ldh a, [$fff8]
    add d
    nop
    add sp, $00
    ld d, e
    nop
    add sp, -$08
    ld d, d
    nop
    add b
    ldh [$fffe], a
    add a
    nop
    ld hl, sp+$00

jr_00c_4684:
    adc l
    nop
    ld hl, sp-$08
    adc h
    nop
    ldh a, [rP1]
    adc e
    nop
    ldh a, [$fff8]
    adc d
    nop
    add sp, $00
    adc c
    nop
    add sp, -$08
    adc b
    nop
    add b
    ret c

    cp $87
    nop
    ldh a, [rP1]
    adc l
    nop
    ldh a, [$fff8]
    adc h
    nop
    add sp, $00
    adc e
    nop
    add sp, -$08
    adc d
    nop
    ldh [rP1], a
    adc c
    nop
    ldh [$fff8], a
    adc b
    nop
    add b
    ret nc

    cp $87
    nop
    add sp, $00
    adc l
    nop
    add sp, -$08
    adc h
    nop
    ldh [rP1], a
    adc e
    nop
    ldh [$fff8], a
    adc d
    nop
    ret c

    nop
    adc c
    nop
    ret c

    ld hl, sp-$78
    nop
    add b
    db $ec
    nop
    sub e
    nop
    db $ec
    ld hl, sp-$6e
    nop
    db $e4
    nop
    sub c
    nop
    db $e4
    ld hl, sp-$70
    nop
    call c, $8f00
    nop
    call c, $8ef8
    nop
    add b
    db $f4
    nop
    sub e
    nop
    db $f4
    ld hl, sp-$6e
    nop
    db $ec
    nop
    sub a
    nop
    db $ec
    ld hl, sp-$6a
    nop
    db $e4
    nop
    sub l
    nop
    db $e4
    ld hl, sp-$6c
    nop
    add b
    ld hl, sp+$00
    sub e
    nop
    ld hl, sp-$08
    sub d
    nop
    ldh a, [rP1]
    sub c
    nop
    ldh a, [$fff8]
    sub b
    nop
    add sp, $00
    adc a
    nop
    add sp, -$08
    adc [hl]
    nop
    add b
    ld hl, sp+$00
    sbc l
    nop
    ld hl, sp-$08
    sbc h
    nop
    ldh a, [rP1]
    sbc e
    nop
    ldh a, [$fff8]
    sbc d
    nop
    add sp, $00
    sbc c
    nop
    add sp, -$08
    sbc b
    nop
    add b
    ld hl, sp+$00
    and l
    nop
    ld hl, sp-$08
    and h
    nop
    ldh a, [rP1]
    and e
    nop
    ldh a, [$fff8]
    and d
    nop
    add sp, $00
    and c
    nop
    add sp, -$08
    and b
    nop
    ldh [rP1], a
    sbc a
    nop
    ldh [$fff8], a
    sbc [hl]
    nop
    add b
    add sp, $00
    and a
    nop
    add sp, -$08
    and [hl]
    nop
    ldh a, [rP1]
    and l
    nop
    ldh a, [$fff8]
    and h
    nop
    ldh [rP1], a
    and c
    nop
    ldh [$fff8], a
    and b
    nop
    ret c

    nop
    sbc a
    nop
    ret c

    ld hl, sp-$62
    nop
    add b
    add sp, $00
    and l
    nop
    add sp, -$08
    and h
    nop
    ldh [rP1], a
    xor c
    nop
    ldh [$fff8], a
    xor b
    nop
    ret c

    nop
    and c
    nop
    ret c

    ld hl, sp-$60
    nop
    ret nc

    nop
    sbc a
    nop
    ret nc

    ld hl, sp-$62
    nop
    add b
    db $eb
    nop
    xor a
    nop
    db $eb

jr_00c_47a1:
    ld hl, sp-$52
    nop
    db $e3
    nop
    xor l
    nop
    db $e3
    ld hl, sp-$54
    nop
    db $db
    nop
    xor e
    nop
    db $db
    ld hl, sp-$56
    nop
    add b
    di
    nop
    xor a
    nop
    di
    ld hl, sp-$52
    nop
    db $eb
    nop
    or c
    nop
    db $eb

jr_00c_47c2:
    ld hl, sp-$50
    nop
    db $e3
    nop
    xor e
    nop
    db $e3
    ld hl, sp-$56
    nop
    add b
    rst $30
    nop
    xor a
    nop
    rst $30
    ld hl, sp-$52
    nop
    rst $28
    nop
    or c
    nop
    rst $28
    ld hl, sp-$50
    nop
    rst $20
    nop

jr_00c_47e0:
    xor e
    nop
    rst $20

jr_00c_47e3:
    ld hl, sp-$56
    nop
    add b
    ld hl, sp-$08
    sbc l
    jr nz, @-$06

    nop
    sbc h
    jr nz, jr_00c_47e0

    ld hl, sp-$65
    jr nz, @-$0e

    nop
    sbc d
    jr nz, jr_00c_47e0

    ld hl, sp-$67
    jr nz, @-$16

jr_00c_47fc:
    nop

jr_00c_47fd:
    sbc b

jr_00c_47fe:
    jr nz, @-$7e

    ld hl, sp-$08
    and l
    jr nz, jr_00c_47fd

    nop
    and h
    jr nz, @-$0e

    ld hl, sp-$5d
    jr nz, jr_00c_47fd

    nop
    and d
    jr nz, @-$16

    ld hl, sp-$5f
    jr nz, jr_00c_47fd

jr_00c_4815:
    nop

jr_00c_4816:
    and b
    jr nz, @-$1e

    ld hl, sp-$61
    jr nz, jr_00c_47fd

    nop

jr_00c_481e:
    sbc [hl]
    jr nz, jr_00c_47a1

    ret c

jr_00c_4822:
    ld hl, sp-$61
    jr nz, jr_00c_47fe

jr_00c_4826:
    nop
    sbc [hl]
    jr nz, @-$16

    ld hl, sp-$59
    jr nz, jr_00c_4816

jr_00c_482e:
    nop

jr_00c_482f:
    and [hl]
    jr nz, jr_00c_4822

    ld hl, sp-$5b
    jr nz, jr_00c_4826

    nop
    and h
    jr nz, @-$1e

    ld hl, sp-$5f
    jr nz, jr_00c_481e

    nop
    and b
    jr nz, jr_00c_47c2

    add sp, -$08
    and l
    jr nz, jr_00c_482f

    nop
    and h
    jr nz, @-$1e

    ld hl, sp-$57
    jr nz, jr_00c_482f

jr_00c_484f:
    nop
    xor b
    jr nz, @-$26

jr_00c_4853:
    ld hl, sp-$5f
    jr nz, jr_00c_482f

    nop
    and b
    jr nz, @-$2e

    ld hl, sp-$61
    jr nz, jr_00c_482f

    nop
    sbc [hl]
    jr nz, jr_00c_47e3

    db $eb
    ld hl, sp-$51
    jr nz, jr_00c_4853

    nop
    xor [hl]
    jr nz, jr_00c_484f

    ld hl, sp-$53
    jr nz, jr_00c_4853

jr_00c_4870:
    nop
    xor h
    jr nz, jr_00c_484f

jr_00c_4874:
    ld hl, sp-$55
    jr nz, jr_00c_4853

    nop
    xor d
    jr nz, jr_00c_47fc

    di
    ld hl, sp-$51
    jr nz, jr_00c_4874

    nop
    xor [hl]
    jr nz, jr_00c_4870

    ld hl, sp-$4f
    jr nz, jr_00c_4874

    nop
    or b
    jr nz, jr_00c_4870

jr_00c_488d:
    ld hl, sp-$55
    jr nz, jr_00c_4874

jr_00c_4891:
    nop
    xor d
    jr nz, jr_00c_4815

    rst $30
    ld hl, sp-$51
    jr nz, jr_00c_4891

    nop
    xor [hl]
    jr nz, jr_00c_488d

    ld hl, sp-$4f
    jr nz, jr_00c_4891

    nop
    or b
    jr nz, jr_00c_488d

    ld hl, sp-$55
    jr nz, jr_00c_4891

    nop
    xor d
    jr nz, jr_00c_482e

    ld hl, sp+$01
    or a
    nop
    ld hl, sp-$07
    or [hl]
    nop
    ldh a, [rSB]
    or l
    nop
    ldh a, [$fff9]
    or h
    nop
    add sp, $01
    or e
    nop
    add sp, -$07
    or d
    nop
    add b
    ld hl, sp+$01
    cp l
    nop
    ld hl, sp-$07
    cp h
    nop
    ldh a, [rSB]
    cp e
    nop
    ldh a, [$fff9]
    cp d
    nop
    add sp, $01
    cp c
    nop
    add sp, -$07
    cp b
    nop
    add b
    db $f4
    ld bc, $00bd
    db $f4
    ld sp, hl
    cp h
    nop
    db $ec
    ld bc, $00bf
    db $ec
    ld sp, hl
    cp [hl]
    nop
    db $e4
    ld bc, $00b9
    db $e4
    ld sp, hl
    cp b
    nop
    add b
    add sp, $01
    cp l
    nop
    add sp, -$07
    cp h
    nop
    ldh [rSB], a
    pop bc
    nop
    ldh [$fff9], a
    ret nz

    nop
    ret c

    ld bc, $00b9
    ret c

    ld sp, hl
    cp b
    nop
    add b
    ldh [rSB], a
    cp c
    nop
    ldh [$fff9], a
    cp b
    nop
    ldh a, [rSB]
    push bc
    nop
    ldh a, [$fff9]
    call nz, $e800
    ld bc, $00c3
    add sp, -$07
    jp nz, $8000

    db $e4
    ld bc, $00b9
    db $e4
    ld sp, hl
    cp b
    nop
    db $f4
    ld bc, $00c5
    db $f4
    ld sp, hl
    call nz, $ec00
    ld bc, $00c7
    db $ec
    ld sp, hl
    add $00
    add b
    add sp, $01
    cp c
    nop
    add sp, -$07
    cp b
    nop
    ld hl, sp+$01
    push bc
    nop
    ld hl, sp-$07
    call nz, $f000
    ld bc, $00c7
    ldh a, [$fff9]
    add $00
    add b
    sub l
    ld c, c
    xor [hl]
    ld c, c
    rst $08
    ld c, c
    ldh a, [rOBP1]
    ld de, $324a
    ld c, d
    ld d, e
    ld c, d
    ld [hl], h
    ld c, d
    adc l
    ld c, d
    xor [hl]
    ld c, d
    rst $08
    ld c, d
    ldh a, [rWY]
    ld de, $324b
    ld c, e
    ld d, e
    ld c, e
    ld l, h
    ld c, e
    adc l
    ld c, e
    xor [hl]
    ld c, e
    rst $08
    ld c, e
    ldh a, [rWX]
    ld de, $324c
    ld c, h
    ld c, e
    ld c, h
    ld h, h
    ld c, h
    ld a, l
    ld c, h
    sub [hl]
    ld c, h
    xor a
    ld c, h
    ret z

    ld c, h
    add sp, $00
    dec sp
    nop
    add sp, -$08
    ld a, [hl-]
    nop
    ld hl, sp+$00
    rlc b
    ld hl, sp-$08
    jp z, $f000

    nop
    ret


    nop
    ldh a, [$fff8]
    ret z

    nop
    add b
    rst $20
    nop
    ld b, l
    nop
    rst $20
    ld hl, sp+$44
    nop
    rst $38
    nop
    ld [hl-], a
    nop
    rst $38
    ld sp, hl
    ld [hl-], a
    nop
    rst $30
    nop
    rst $08
    nop
    rst $30
    ld hl, sp-$32
    nop
    rst $28
    nop
    call $ef00
    ld hl, sp-$34
    nop
    add b
    rst $18
    nop
    ld b, l
    nop
    rst $18
    ld hl, sp+$44
    nop
    rst $30
    nop
    ld [hl-], a
    nop
    rst $30
    ld sp, hl
    ld [hl-], a
    nop
    rst $28
    nop
    rst $08
    nop
    rst $28
    ld hl, sp-$32
    nop
    rst $20
    nop
    call $e700
    ld hl, sp-$34
    nop
    add b
    rst $10
    nop
    ld b, l
    nop
    rst $10
    ld hl, sp+$44
    nop
    rst $28
    nop
    ld [hl-], a
    nop
    rst $28
    ld sp, hl
    ld [hl-], a
    nop
    rst $20
    nop
    rst $08
    nop
    rst $20
    ld hl, sp-$32
    nop
    rst $18
    nop
    call $df00
    ld hl, sp-$34
    nop
    add b
    db $db
    nop
    ld b, l
    nop
    db $db
    ld hl, sp+$44
    nop
    di
    ld sp, hl
    ld [hl-], a
    nop
    di
    nop
    ld [hl-], a
    nop
    db $eb
    nop
    rst $08
    nop
    db $eb
    ld hl, sp-$32
    nop
    db $e3
    nop
    call $e300
    ld hl, sp-$34
    nop
    add b
    db $e3
    nop
    ld b, l
    nop
    db $e3
    ld hl, sp+$44
    nop
    ei
    ld sp, hl
    ld [hl-], a
    nop
    ei
    nop
    ld [hl-], a
    nop
    di
    nop
    rst $08
    nop
    di
    ld hl, sp-$32
    nop
    db $eb
    nop
    call $eb00
    ld hl, sp-$34
    nop
    add b
    rst $20
    nop
    ld b, l
    nop
    rst $20
    ld hl, sp+$44
    nop
    rst $38
    nop
    ld [hl-], a
    nop
    rst $38
    ld sp, hl
    ld [hl-], a
    nop
    rst $30
    nop
    rst $08
    nop
    rst $30
    ld hl, sp-$32
    nop
    rst $28
    nop
    call $ef00
    ld hl, sp-$34
    nop
    add b
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    ld hl, sp+$00
    db $d3
    nop
    ld hl, sp-$08
    jp nc, $f000

    nop
    pop de
    nop
    ldh a, [$fff8]
    ret nc

    nop
    add b
    ldh [rP1], a
    inc d
    nop
    ldh [$fff8], a
    ld b, $00
    ld hl, sp-$08
    and h
    nop
    ldh a, [$fff8]
    and d
    nop
    ld hl, sp+$00
    reti


    nop
    ldh a, [rP1]
    rst $10
    nop
    add sp, $00
    push de
    nop
    add sp, -$08
    call nc, $8000
    ret c

    nop
    inc d
    nop
    ret c

    ld hl, sp+$06
    nop
    ldh a, [$fff8]
    and h
    nop
    add sp, -$08
    and d
    nop
    ldh a, [rP1]
    reti


    nop
    add sp, $00
    rst $10
    nop
    ldh [rP1], a
    push de
    nop
    ldh [$fff8], a
    call nc, $8000
    ret nc

    nop
    inc d
    nop
    ret nc

    ld hl, sp+$06
    nop
    add sp, -$08
    and h
    nop
    ldh [$fff8], a
    and d
    nop
    add sp, $00
    reti


    nop
    ldh [rP1], a
    rst $10
    nop
    ret c

    nop
    push de
    nop
    ret c

jr_00c_4aec:
    ld hl, sp-$2c
    nop
    add b
    call nc, $1400
    nop
    call nc, Call_000_06f8
    nop
    db $ec
    ld hl, sp-$5c
    nop
    db $e4
    ld hl, sp-$5e
    nop
    db $ec
    nop
    reti


    nop
    db $e4
    nop
    rst $10
    nop
    call c, $d500
    nop
    call c, $d4f8
    nop
    add b
    call c, $1400
    nop
    call c, Call_000_06f8
    nop
    db $f4
    ld hl, sp-$5c
    nop
    db $ec
    ld hl, sp-$5e
    nop
    db $f4
    nop
    reti


    nop
    db $ec
    nop
    rst $10
    nop
    db $e4
    nop
    push de
    nop
    db $e4
    ld hl, sp-$2c
    nop
    add b
    ldh [rP1], a
    inc d
    nop
    ldh [$fff8], a
    ld b, $00
    ld hl, sp-$08
    and h
    nop
    ldh a, [$fff8]

jr_00c_4b40:
    and d
    nop
    ld hl, sp+$00
    reti


    nop
    ldh a, [rP1]
    rst $10
    nop
    add sp, $00
    push de
    nop
    add sp, -$08
    call nc, $8000
    add sp, -$08
    ld b, a
    jr nz, jr_00c_4b40

jr_00c_4b58:
    nop
    ld b, [hl]
    jr nz, @-$06

    ld hl, sp-$2d
    jr nz, jr_00c_4b58

    nop
    jp nc, $f020

    ld hl, sp-$2f
    jr nz, jr_00c_4b58

    nop

jr_00c_4b69:
    ret nc

jr_00c_4b6a:
    jr nz, jr_00c_4aec

    ldh [$fff8], a
    inc d
    jr nz, @-$1e

jr_00c_4b71:
    nop
    ld b, $20
    ld hl, sp+$00
    and h
    jr nz, jr_00c_4b69

    nop
    and d
    jr nz, @-$06

    ld hl, sp-$27
    jr nz, jr_00c_4b71

    ld hl, sp-$29

jr_00c_4b83:
    jr nz, @-$16

    ld hl, sp-$2b
    jr nz, jr_00c_4b71

    nop

jr_00c_4b8a:
    call nc, $8020
    ret c

jr_00c_4b8e:
    ld hl, sp+$14
    jr nz, jr_00c_4b6a

    nop
    ld b, $20
    ldh a, [rP1]
    and h
    jr nz, @-$16

    nop

jr_00c_4b9b:
    and d
    jr nz, jr_00c_4b8e

    ld hl, sp-$27
    jr nz, jr_00c_4b8a

    ld hl, sp-$29
    jr nz, @-$1e

    ld hl, sp-$2b

jr_00c_4ba8:
    jr nz, jr_00c_4b8a

    nop
    call nc, $8020
    ret nc

    ld hl, sp+$14
    jr nz, jr_00c_4b83

    nop
    ld b, $20
    add sp, $00
    and h
    jr nz, jr_00c_4b9b

    nop
    and d
    jr nz, @-$16

    ld hl, sp-$27
    jr nz, @-$1e

    ld hl, sp-$29
    jr nz, @-$26

    ld hl, sp-$2b
    jr nz, @-$26

    nop

jr_00c_4bcc:
    call nc, $8020
    call nc, Call_000_14f8
    jr nz, jr_00c_4ba8

    nop
    ld b, $20
    db $ec
    nop
    and h
    jr nz, @-$1a

    nop
    and d
    jr nz, jr_00c_4bcc

    ld hl, sp-$27
    jr nz, @-$1a

    ld hl, sp-$29
    jr nz, @-$22

    ld hl, sp-$2b
    jr nz, @-$22

    nop

jr_00c_4bed:
    call nc, $8020
    call c, Call_000_14f8
    jr nz, @-$22

jr_00c_4bf5:
    nop

jr_00c_4bf6:
    ld b, $20
    db $f4
    nop
    and h
    jr nz, @-$12

    nop
    and d
    jr nz, jr_00c_4bf5

    ld hl, sp-$27
    jr nz, @-$12

    ld hl, sp-$29
    jr nz, jr_00c_4bed

    ld hl, sp-$2b
    jr nz, @-$1a

    nop

jr_00c_4c0e:
    call nc, $8020
    ldh [$fff8], a
    inc d
    jr nz, jr_00c_4bf6

jr_00c_4c16:
    nop
    ld b, $20
    ld hl, sp+$00
    and h
    jr nz, jr_00c_4c0e

    nop
    and d
    jr nz, @-$06

    ld hl, sp-$27
    jr nz, jr_00c_4c16

    ld hl, sp-$29
    jr nz, @-$16

    ld hl, sp-$2b
    jr nz, jr_00c_4c16

    nop
    call nc, $8020
    ld [$e100], a
    nop
    ld [$e0f8], a
    nop
    ld a, [$dd00]
    nop
    ld a, [$dcf8]
    nop
    ldh a, [c]
    nop
    db $db
    nop
    ldh a, [c]
    ld hl, sp-$26
    nop
    add b
    add sp, $00
    pop hl
    nop
    add sp, -$08
    ldh [rP1], a
    ld hl, sp+$00
    rst $18
    nop
    ld hl, sp-$08
    sbc $00
    ldh a, [rP1]
    db $db
    nop
    ldh a, [$fff8]
    jp c, $8000

    ldh [rP1], a
    pop hl
    nop
    ldh [$fff8], a
    ldh [rP1], a
    ldh a, [rP1]
    rst $18
    nop
    ldh a, [$fff8]
    sbc $00
    add sp, $00
    db $db
    nop
    add sp, -$08
    jp c, $8000

    ret c

    nop
    pop hl
    nop
    ret c

    ld hl, sp-$20
    nop
    add sp, $00
    rst $18
    nop
    add sp, -$08
    sbc $00
    ldh [rP1], a
    db $db
    nop
    ldh [$fff8], a
    jp c, $8000

    call c, $e100
    nop
    call c, $e0f8
    nop
    db $ec
    nop
    rst $18
    nop
    db $ec
    ld hl, sp-$22
    nop
    db $e4
    nop
    db $db
    nop
    db $e4
    ld hl, sp-$26
    nop
    add b
    db $e4
    nop
    pop hl
    nop
    db $e4
    ld hl, sp-$20
    nop
    db $f4
    nop
    rst $18
    nop
    db $f4
    ld hl, sp-$22
    nop
    db $ec
    nop
    db $db
    nop
    db $ec
    ld hl, sp-$26
    nop
    add b
    add sp, $00
    pop hl
    nop
    add sp, -$08
    ldh [rP1], a
    ld hl, sp+$00
    rst $18
    nop
    ld hl, sp-$08
    sbc $00
    ldh a, [rP1]
    db $db
    nop
    ldh a, [$fff8]
    jp c, $8000

    add hl, bc
    ld c, l
    ld [hl+], a
    ld c, l
    add hl, bc
    ld c, l
    dec sp
    ld c, l
    ld d, h
    ld c, l
    ld l, l
    ld c, l
    ld d, h
    ld c, l
    add [hl]
    ld c, l
    sbc a
    ld c, l
    cp b
    ld c, l
    sbc a
    ld c, l
    pop de
    ld c, l
    ld [$034d], a
    ld c, [hl]
    ld [$1c4d], a
    ld c, [hl]
    add hl, bc
    ld c, l
    ld d, h
    ld c, l
    sbc a
    ld c, l
    ld [$f84d], a
    nop
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    rst $30
    nop
    rlca
    nop
    rst $30
    ld hl, sp+$06
    nop
    rst $28
    nop
    inc bc
    nop
    rst $28
    ld hl, sp+$02
    nop
    rst $20
    nop
    ld bc, $e700
    ld hl, sp+$00
    nop
    add b
    rst $20
    nop
    ld bc, $e700
    ld hl, sp+$00
    nop
    rst $28
    nop
    inc bc
    nop
    rst $28
    ld hl, sp+$02
    nop
    rst $30
    nop
    add hl, bc
    nop
    rst $30
    ld hl, sp+$08
    nop
    add b
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld c, $00
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add sp, $00
    dec bc
    nop
    add sp, -$08

jr_00c_4d6a:
    ld a, [bc]
    nop
    add b
    rst $30
    nop
    ld de, $f700
    ld hl, sp+$10
    nop
    rst $28
    nop
    dec c
    nop
    rst $28
    ld hl, sp+$0c
    nop
    rst $20
    nop
    dec bc
    nop
    rst $20
    ld hl, sp+$0a
    nop
    add b
    rst $30
    nop
    inc de
    nop
    rst $30
    ld hl, sp+$12
    nop
    rst $20
    nop
    dec bc
    nop
    rst $20
    ld hl, sp+$0a
    nop
    rst $28
    nop

jr_00c_4d98:
    dec c
    nop
    rst $28
    ld hl, sp+$0c
    nop
    add b
    ld hl, sp-$08
    rrca
    jr nz, @-$06

    nop
    ld c, $20
    ldh a, [$fff8]
    dec c
    jr nz, @-$0e

    nop
    inc c
    jr nz, jr_00c_4d98

jr_00c_4db0:
    ld hl, sp+$0b
    jr nz, @-$16

jr_00c_4db4:
    nop
    ld a, [bc]
    jr nz, @-$7e

    rst $30
    ld hl, sp+$11
    jr nz, jr_00c_4db4

    nop
    db $10
    jr nz, jr_00c_4db0

jr_00c_4dc1:
    ld hl, sp+$0d
    jr nz, jr_00c_4db4

jr_00c_4dc5:
    nop
    inc c
    jr nz, jr_00c_4db0

    ld hl, sp+$0b
    jr nz, jr_00c_4db4

jr_00c_4dcd:
    nop
    ld a, [bc]
    jr nz, @-$7e

jr_00c_4dd1:
    rst $30
    ld hl, sp+$13
    jr nz, jr_00c_4dcd

    nop
    ld [de], a
    jr nz, jr_00c_4dc1

    ld hl, sp+$0b
    jr nz, jr_00c_4dc5

    nop
    ld a, [bc]
    jr nz, jr_00c_4dd1

    ld hl, sp+$0d
    jr nz, @-$0f

    nop
    inc c
    jr nz, jr_00c_4d6a

    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_00c_4df2

jr_00c_4df2:
    ldh a, [rP1]
    rla
    nop
    ldh a, [$fff8]
    ld d, $00
    add sp, $00
    dec d
    nop
    add sp, -$08
    inc d
    nop
    add b
    rst $30
    nop
    inc e
    nop
    rst $30
    ld hl, sp+$1b
    nop
    rst $28
    ld hl, sp+$1a
    nop
    rst $28
    nop
    rla
    nop
    rst $20
    nop
    dec d
    nop
    rst $20
    ld hl, sp+$14
    nop
    add b
    rst $30
    nop
    rra
    nop
    rst $30
    ld hl, sp+$1e
    nop
    rst $28
    ld hl, sp+$1d
    nop
    rst $28
    nop
    rla
    nop
    rst $20
    nop
    dec d
    nop
    rst $20
    ld hl, sp+$14
    nop
    add b
    ld d, l
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld d, l
    ld c, [hl]
    add a
    ld c, [hl]
    and b
    ld c, [hl]
    cp c
    ld c, [hl]
    and b
    ld c, [hl]
    jp nc, $eb4e

    ld c, [hl]
    inc b
    ld c, a
    db $eb
    ld c, [hl]
    dec e
    ld c, a
    ld [hl], $4f
    ld c, a
    ld c, a
    ld [hl], $4f
    ld l, b
    ld c, a
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    ldh a, [rP1]
    inc hl
    nop
    ldh a, [$fff8]
    ld [hl+], a
    nop
    add sp, $00
    ld hl, $e800
    ld hl, sp+$20
    nop
    add b
    or $00
    daa
    nop
    or $f8
    ld h, $00
    xor $00
    inc hl
    nop
    xor $f8
    ld [hl+], a
    nop
    and $00
    ld hl, $e600
    ld hl, sp+$20
    nop
    add b
    or $00
    add hl, hl
    nop
    or $f8
    jr z, jr_00c_4e8f

jr_00c_4e8f:
    xor $00
    inc hl
    nop
    xor $f8
    ld [hl+], a
    nop
    and $00
    ld hl, $e600
    ld hl, sp+$20
    nop
    add b
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp-$08
    ld c, $00
    ldh a, [rP1]
    dec c
    nop
    ldh a, [$fff8]
    inc c
    nop
    add sp, $00
    dec bc
    nop
    add sp, -$08

jr_00c_4eb6:
    ld a, [bc]
    nop
    add b
    xor $f8
    inc c
    nop
    and $00
    dec bc
    nop
    and $f8
    ld a, [bc]
    nop
    or $00
    ld [hl-], a
    nop
    or $f8
    ld sp, $ee00
    nop
    jr nc, jr_00c_4ed1

jr_00c_4ed1:
    add b
    xor $f8
    inc c
    nop
    and $00
    dec bc
    nop
    and $f8
    ld a, [bc]
    nop
    xor $00
    jr nc, jr_00c_4ee2

jr_00c_4ee2:
    or $00

jr_00c_4ee4:
    inc [hl]
    nop
    or $f8

jr_00c_4ee8:
    inc sp
    nop
    add b
    ld hl, sp-$08
    rrca
    jr nz, jr_00c_4ee8

    nop
    ld c, $20

jr_00c_4ef3:
    ldh a, [$fff8]
    dec c
    jr nz, jr_00c_4ee8

    nop
    inc c
    jr nz, jr_00c_4ee4

    ld hl, sp+$0b
    jr nz, jr_00c_4ee8

    nop
    ld a, [bc]
    jr nz, @-$7e

    xor $00
    inc c

jr_00c_4f07:
    jr nz, @-$18

    ld hl, sp+$0b

jr_00c_4f0b:
    jr nz, jr_00c_4ef3

    nop
    ld a, [bc]
    jr nz, jr_00c_4f07

    ld hl, sp+$32
    jr nz, jr_00c_4f0b

    nop
    ld sp, $ee20
    ld hl, sp+$30
    jr nz, @-$7e

    xor $00
    inc c
    jr nz, @-$18

    ld hl, sp+$0b

jr_00c_4f24:
    jr nz, @-$18

    nop
    ld a, [bc]

jr_00c_4f28:
    jr nz, @-$10

    ld hl, sp+$30
    jr nz, jr_00c_4f24

    ld hl, sp+$34
    jr nz, jr_00c_4f28

    nop
    inc sp
    jr nz, jr_00c_4eb6

    ldh a, [$fff8]
    inc h
    nop
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_00c_4f42

jr_00c_4f42:
    ldh a, [rP1]
    rla
    nop
    add sp, $00
    dec d
    nop
    add sp, -$08
    inc d
    nop
    add b
    rst $20
    nop
    ld a, [hl-]
    nop
    rst $20
    ld hl, sp+$39
    nop
    rst $30
    nop
    ld a, $00
    rst $30
    ld hl, sp+$3d
    nop
    rst $28
    nop
    inc a
    nop
    rst $28
    ld hl, sp+$3b
    nop
    add b
    rst $20
    nop
    ld a, [hl-]
    nop
    rst $20
    ld hl, sp+$39
    nop
    rst $30
    nop
    ld b, b
    nop
    rst $30
    ld hl, sp+$3f
    nop
    rst $28
    nop
    inc a
    nop
    rst $28
    ld hl, sp+$3b
    nop
    add b
    and c
    ld c, a
    cp d
    ld c, a
    and c
    ld c, a
    db $d3
    ld c, a
    db $ec
    ld c, a
    dec b
    ld d, b
    db $ec
    ld c, a
    ld e, $50
    scf
    ld d, b
    ld d, b
    ld d, b
    scf
    ld d, b
    ld l, c
    ld d, b
    add d
    ld d, b
    sbc e
    ld d, b
    add d
    ld d, b
    or h
    ld d, b
    ld hl, sp+$00
    ld b, [hl]
    nop
    ld hl, sp-$08
    ld b, l
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ldh a, [$fff8]
    ld b, e
    nop
    add sp, $00
    ld b, d
    nop
    add sp, -$08
    ld b, c
    nop
    add b
    rst $30
    nop
    ld c, b
    nop
    rst $30
    ld hl, sp+$47
    nop
    rst $28
    nop
    ld b, h
    nop
    rst $28
    ld hl, sp+$43
    nop
    rst $20
    nop
    ld b, d
    nop
    rst $20
    ld hl, sp+$41
    nop
    add b
    rst $20
    nop
    ld b, d
    nop
    rst $20
    ld hl, sp+$41
    nop
    rst $28
    nop
    ld b, h
    nop
    rst $28
    ld hl, sp+$43
    nop
    rst $30
    nop
    ld c, d
    nop
    rst $30
    ld hl, sp+$49
    nop
    add b
    ld hl, sp+$00
    ld d, b
    nop
    ld hl, sp-$08
    ld c, a
    nop
    ldh a, [rP1]
    ld c, [hl]
    nop
    ldh a, [$fff8]
    ld c, l
    nop
    add sp, $00
    ld c, h
    nop
    add sp, -$08

jr_00c_5002:
    ld c, e
    nop
    add b
    rst $30
    nop
    ld d, d
    nop
    rst $30
    ld hl, sp+$51
    nop
    rst $28
    nop
    ld c, [hl]
    nop
    rst $28
    ld hl, sp+$4d
    nop
    rst $20
    nop
    ld c, h
    nop
    rst $20
    ld hl, sp+$4b
    nop
    add b
    rst $30
    nop
    ld d, h
    nop
    rst $30
    ld hl, sp+$53
    nop
    rst $20
    nop
    ld c, h
    nop
    rst $20
    ld hl, sp+$4b
    nop
    rst $28
    nop

jr_00c_5030:
    ld c, [hl]
    nop
    rst $28
    ld hl, sp+$4d
    nop
    add b
    ld hl, sp-$08
    ld d, b
    jr nz, @-$06

    nop
    ld c, a
    jr nz, jr_00c_5030

    ld hl, sp+$4e
    jr nz, @-$0e

    nop
    ld c, l
    jr nz, jr_00c_5030

jr_00c_5048:
    ld hl, sp+$4c
    jr nz, @-$16

jr_00c_504c:
    nop
    ld c, e
    jr nz, @-$7e

    rst $30
    ld hl, sp+$52
    jr nz, jr_00c_504c

    nop
    ld d, c
    jr nz, jr_00c_5048

jr_00c_5059:
    ld hl, sp+$4e
    jr nz, jr_00c_504c

jr_00c_505d:
    nop
    ld c, l
    jr nz, jr_00c_5048

    ld hl, sp+$4c
    jr nz, jr_00c_504c

jr_00c_5065:
    nop
    ld c, e
    jr nz, @-$7e

jr_00c_5069:
    rst $30
    ld hl, sp+$54
    jr nz, jr_00c_5065

    nop
    ld d, e
    jr nz, jr_00c_5059

    ld hl, sp+$4c
    jr nz, jr_00c_505d

    nop
    ld c, e
    jr nz, jr_00c_5069

    ld hl, sp+$4e
    jr nz, @-$0f

    nop
    ld c, l
    jr nz, jr_00c_5002

    ld hl, sp+$00
    ld e, d
    nop
    ld hl, sp-$08
    ld e, c
    nop
    ldh a, [rP1]
    ld e, b
    nop
    ldh a, [$fff8]
    ld d, a
    nop
    add sp, $00
    ld d, [hl]
    nop
    add sp, -$08
    ld d, l
    nop
    add b
    rst $30
    nop
    ld e, l
    nop
    rst $30
    ld hl, sp+$5c
    nop
    rst $28
    ld hl, sp+$5b
    nop
    rst $28
    nop
    ld e, b
    nop
    rst $20
    nop
    ld d, [hl]
    nop
    rst $20
    ld hl, sp+$55
    nop
    add b
    rst $28
    ld hl, sp+$5b
    nop
    rst $30
    nop
    ld h, b
    nop
    rst $30
    ld hl, sp+$5f
    nop
    rst $28
    nop
    ld e, b
    nop
    rst $20
    nop
    ld d, [hl]
    nop
    rst $20
    ld hl, sp+$55
    nop
    add b
    rst $18
    ld d, b
    rst $18
    ld d, b
    ld hl, sp+$50
    ld de, $2a51
    ld d, c
    ld de, $2a51
    ld d, c
    ld de, $2a51
    ld d, c
    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    ret nc

    nop
    ldh a, [rP1]
    rst $08
    nop
    ldh a, [$fff8]
    adc $00
    add sp, $00
    call $e800
    ld hl, sp-$34
    nop
    add b
    ld hl, sp+$00
    rst $10
    nop
    ld hl, sp-$08
    sub $00
    ldh a, [rP1]
    push de
    nop
    ldh a, [$fff8]
    call nc, $e800
    nop
    db $d3
    nop
    add sp, -$08
    jp nc, $8000

    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    jp c, $f000

    nop
    reti


    nop
    ldh a, [$fff8]
    ret c

    nop
    add sp, $00
    db $d3
    nop
    add sp, -$08
    jp nc, $8000

    ld hl, sp-$08
    ret nc

    nop
    ld hl, sp+$00
    pop de
    nop
    add sp, $00
    call c, $e800
    ld hl, sp-$25
    nop
    ldh a, [rP1]
    sbc $00
    ldh a, [$fff8]
    db $dd
    nop
    add b
    ld b, l
    ld d, c
    rst $28
    ldh a, [$ffd6]
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp-$08
    ld hl, sp+$00
    ldh a, [rP1]
    rst $30
    nop
    ldh a, [$fff8]
    or $00
    add sp, $00
    push af
    nop
    add sp, -$08
    db $f4
    nop
    add b
    add d
    ld d, c
    and e
    ld d, c
    call nz, $e551
    ld d, c
    ld [bc], a
    ld d, d
    inc hl
    ld d, d
    ld b, h
    ld d, d
    ld h, c
    ld d, d
    ld a, [hl]
    ld d, d
    sbc a
    ld d, d
    ret nz

    ld d, d
    db $dd
    ld d, d
    ld a, [$1b52]
    ld d, e
    inc a
    ld d, e
    ld e, l
    ld d, e
    ld a, [$6801]
    nop
    ld a, [$67f9]
    nop
    ldh a, [c]
    ld bc, $0066
    ldh a, [c]
    ld sp, hl
    ld h, l
    nop
    ldh a, [c]
    pop af
    ld h, h
    nop
    ld [$6301], a
    nop
    ld [$62f9], a
    nop
    ld [$61f1], a
    nop
    add b
    db $fc
    ld [$006e], sp
    db $fc
    nop
    ld l, l
    nop
    db $fc
    ld hl, sp+$6c
    nop
    db $fc
    ldh a, [rOCPD]
    nop
    db $ec
    nop
    or c
    nop
    db $ec
    ld hl, sp-$50
    nop
    db $f4
    nop
    ld l, d
    nop
    db $f4
    ld hl, sp+$69
    nop
    add b
    db $f4
    nop
    dec hl
    nop
    db $f4
    ld hl, sp+$2a
    nop
    db $f4
    ld [$006f], sp
    db $fc
    ld [$0072], sp
    db $fc
    nop
    ld [hl], c
    nop
    db $fc
    ld hl, sp+$70
    nop
    db $ec
    nop
    or c
    nop
    db $ec
    ld hl, sp-$50
    nop
    add b
    db $fc
    ld [$0077], sp
    db $fc
    nop
    halt
    nop
    db $fc
    ld hl, sp+$75
    nop
    db $f4
    ld [bc], a
    ld [hl], h
    nop
    db $f4
    ld a, [$0073]
    db $ec
    nop
    or c
    nop
    db $ec
    ld hl, sp-$50
    nop
    add b
    ld hl, sp+$00
    sbc e
    nop
    ld hl, sp-$08
    sbc d
    nop
    ldh a, [$ff08]
    sbc c
    nop
    ldh a, [rP1]
    sbc b
    nop
    ldh a, [$fff8]
    sub a
    nop
    add sp, $08
    sub [hl]
    nop
    add sp, $00
    sub l
    nop
    add sp, -$08
    sub h
    nop
    add b
    ld hl, sp+$00
    and e
    nop
    ld hl, sp-$08
    and d
    nop
    ld hl, sp-$10
    and c
    nop
    ldh a, [rP1]
    and b
    nop
    ldh a, [$fff8]
    sbc a
    nop
    ldh a, [$fff0]
    sbc [hl]
    nop
    add sp, $00
    sbc l
    nop
    add sp, -$08
    sbc h
    nop
    add b
    ld hl, sp+$00
    xor b
    nop
    ld hl, sp-$08
    and a
    nop
    ldh a, [$ff08]
    and [hl]
    nop
    ldh a, [rP1]
    and l
    nop
    ldh a, [$fff8]
    and h
    nop
    add sp, $00
    sbc l
    nop
    add sp, -$08
    sbc h
    nop
    add b
    ld hl, sp+$00
    xor a
    nop
    ld hl, sp-$08
    xor [hl]
    nop
    ldh a, [$ff08]
    xor l
    nop
    ldh a, [rP1]
    xor h
    nop
    ldh a, [$fff8]
    xor e
    nop
    add sp, $00

jr_00c_5277:
    xor d
    nop
    add sp, -$08

jr_00c_527b:
    xor c
    nop
    add b
    ld hl, sp-$08
    sbc e
    jr nz, jr_00c_527b

jr_00c_5283:
    nop
    sbc d
    jr nz, jr_00c_5277

    ldh a, [$ff99]
    jr nz, jr_00c_527b

    ld hl, sp-$68
    jr nz, @-$0e

    nop
    sub a
    jr nz, jr_00c_527b

    ldh a, [$ff96]
    jr nz, @-$16

    ld hl, sp-$6b
    jr nz, jr_00c_5283

    nop

jr_00c_529c:
    sub h
    jr nz, @-$7e

    ld hl, sp-$08
    and e
    jr nz, jr_00c_529c

jr_00c_52a4:
    nop
    and d
    jr nz, @-$06

    ld [$20a1], sp
    ldh a, [$fff8]
    and b
    jr nz, @-$0e

    nop
    sbc a
    jr nz, jr_00c_52a4

    ld [$209e], sp
    add sp, -$08

jr_00c_52b9:
    sbc l
    jr nz, jr_00c_52a4

    nop

jr_00c_52bd:
    sbc h
    jr nz, @-$7e

    ld hl, sp-$08
    xor b
    jr nz, jr_00c_52bd

    nop
    and a
    jr nz, jr_00c_52b9

    ldh a, [$ffa6]
    jr nz, jr_00c_52bd

    ld hl, sp-$5b
    jr nz, @-$0e

    nop
    and h
    jr nz, jr_00c_52bd

    ld hl, sp-$63
    jr nz, @-$16

    nop

jr_00c_52da:
    sbc h
    jr nz, @-$7e

    ld hl, sp-$08
    xor a
    jr nz, jr_00c_52da

    nop
    xor [hl]
    jr nz, @-$0e

    ldh a, [$ffad]
    jr nz, jr_00c_52da

    ld hl, sp-$54
    jr nz, @-$0e

    nop
    xor e
    jr nz, jr_00c_52da

    ld hl, sp-$56
    jr nz, @-$16

    nop
    xor c
    jr nz, @-$7e

    db $fc
    add hl, bc
    ld a, a
    nop
    db $fc
    ld bc, $007e
    db $fc
    ld sp, hl
    ld a, l
    nop
    db $f4
    add hl, bc
    ld a, h
    nop
    db $f4
    ld bc, $007b
    db $f4
    ld sp, hl
    ld a, d
    nop
    db $ec
    ld bc, $0079
    db $ec
    ld sp, hl
    ld a, b
    nop
    add b
    ld a, [$8701]
    nop
    ld a, [$86f9]
    nop
    ldh a, [c]
    ld bc, $0085
    ldh a, [c]
    ld sp, hl
    add h
    nop
    ldh a, [c]
    pop af
    add e
    nop
    ld [$8201], a
    nop
    ld [$81f9], a
    nop
    ld [$80f1], a
    nop
    add b
    ld a, [$8701]
    nop
    ld a, [$86f9]
    nop
    ld [$7901], a
    nop
    ld [$78f9], a
    nop
    ld a, [$8bf1]
    nop
    ldh a, [c]
    ld bc, $008a
    ldh a, [c]
    ld sp, hl
    adc c
    nop
    ldh a, [c]
    pop af
    adc b
    nop
    add b
    db $eb
    ld bc, $0079
    db $eb
    ld sp, hl
    ld a, b
    nop
    ld a, [$9301]
    nop
    ld a, [$92f9]
    nop
    ld a, [$91f1]
    nop
    ldh a, [c]
    ld bc, $0090
    ldh a, [c]
    ld sp, hl
    adc a
    nop
    ldh a, [c]
    pop af
    adc [hl]
    nop
    add b
    sbc [hl]
    ld d, e
    cp e
    ld d, e
    ret c

    ld d, e
    push af
    ld d, e
    ld [de], a
    ld d, h
    inc sp
    ld d, h
    ld d, h
    ld d, h
    ld [hl], l
    ld d, h
    sub [hl]
    ld d, h
    or a
    ld d, h
    ret c

    ld d, h
    ld sp, hl
    ld d, h
    ld a, [de]
    ld d, l
    scf
    ld d, l
    ld d, h
    ld d, l
    ld l, l
    ld d, l
    ld sp, hl
    nop
    cp b
    nop
    ld sp, hl
    ld hl, sp-$49
    nop
    pop af
    nop
    or [hl]
    nop
    pop af
    ld hl, sp-$4b
    nop
    jp hl


    nop
    or h
    nop
    jp hl


    ld hl, sp-$4d
    nop
    pop hl
    ld hl, sp-$4e
    nop
    add b
    ld [bc], a
    ei
    cp a
    nop
    ld a, [$be00]
    nop
    ld a, [$bdf8]
    nop
    ldh a, [c]
    nop
    cp h
    nop
    ldh a, [c]
    ld hl, sp-$45
    nop
    ld [$ba00], a
    nop
    ld [$b9f8], a
    nop
    add b
    dec b
    ei
    push bc
    nop
    db $ed
    nop
    dec l
    nop
    db $ed
    ld hl, sp+$2c
    nop
    db $fd
    nop
    call nz, $fd00
    ld hl, sp-$3d
    nop
    push af
    nop
    jp nz, $f500

    ld hl, sp-$3f
    nop
    add b
    inc b
    ei
    jp z, $ec00

    nop
    dec l
    nop
    db $ec
    ld hl, sp+$2c
    nop
    db $fc
    nop
    ret


    nop
    db $fc
    ld hl, sp-$38
    nop
    db $f4
    ld hl, sp-$3f
    nop
    db $f4
    nop
    rst $00
    nop
    add b
    ld sp, hl
    rst $38
    db $ec
    nop
    ld sp, hl
    rst $30
    db $eb
    nop
    pop af
    rst $38
    ld [$f100], a
    rst $30
    jp hl


    nop
    jp hl


    rst $38
    add sp, $00
    jp hl


    rst $30
    rst $20
    nop
    pop hl
    rst $38
    and $00
    pop hl
    rst $30
    push hl
    nop
    add b
    ldh a, [c]
    xor $ef
    nop
    ld a, [$f4fe]
    nop
    ld a, [$f3f6]
    nop
    ld a, [$f2ee]
    nop
    ldh a, [c]
    cp $f1
    nop
    ldh a, [c]
    or $f0
    nop
    ld [$eefe], a
    nop
    ld [$edf6], a
    nop
    add b
    ld [$eefe], a
    nop

jr_00c_5458:
    ld [$edf6], a
    nop
    ld a, [$f4fe]
    nop
    ld a, [$f9f6]
    nop
    ld a, [$f8ee]
    nop
    ldh a, [c]
    cp $f7
    nop
    ldh a, [c]
    or $f6
    nop
    ldh a, [c]
    xor $f5
    nop
    add b
    ld a, [$fffe]
    nop

jr_00c_5479:
    ld a, [$fef6]
    nop
    ld a, [$fdee]
    nop
    ldh a, [c]
    cp $fc
    nop
    ldh a, [c]
    or $fb
    nop
    ldh a, [c]
    xor $fa
    nop
    ld [$eefe], a
    nop
    ld [$edf6], a

jr_00c_5494:
    nop
    add b
    ld sp, hl
    ld sp, hl
    db $ec
    jr nz, jr_00c_5494

    ld bc, $20eb
    pop af
    ld sp, hl
    ld [$f120], a
    ld bc, $20e9
    jp hl


    ld sp, hl
    add sp, $20
    jp hl


    ld bc, $20e7
    pop hl
    ld sp, hl
    and $20
    pop hl
    ld bc, $20e5

jr_00c_54b6:
    add b
    ldh a, [c]
    ld a, [bc]
    rst $28

jr_00c_54ba:
    jr nz, jr_00c_54b6

    ld a, [$20f4]
    ld a, [$f302]
    jr nz, @-$04

    ld a, [bc]
    ldh a, [c]
    jr nz, jr_00c_54ba

    ld a, [$20f1]
    ldh a, [c]
    ld [bc], a
    ldh a, [rNR41]
    ld [$eefa], a
    jr nz, @-$14

    ld [bc], a
    db $ed
    jr nz, jr_00c_5458

    ld [$eefa], a

jr_00c_54db:
    jr nz, @-$14

    ld [bc], a
    db $ed
    jr nz, jr_00c_54db

    ld a, [$20f4]
    ld a, [$f902]
    jr nz, @-$04

    ld a, [bc]
    ld hl, sp+$20
    ldh a, [c]
    ld a, [$20f7]
    ldh a, [c]
    ld [bc], a
    or $20
    ldh a, [c]
    ld a, [bc]
    push af
    jr nz, jr_00c_5479

    ld a, [$fffa]
    jr nz, @-$04

    ld [bc], a
    cp $20
    ld a, [$fd0a]
    jr nz, @-$0c

    ld a, [$20fc]
    ldh a, [c]
    ld [bc], a
    ei
    jr nz, @-$0c

    ld a, [bc]
    ld a, [$ea20]
    ld a, [$20ee]
    ld [$ed02], a
    jr nz, @-$7e

    ld hl, sp+$01
    db $d3
    nop
    ld hl, sp-$07
    jp nc, $f000

    ld bc, $00d1
    ldh a, [$fff9]
    ret nc

    nop
    add sp, $01
    rst $08
    nop
    add sp, -$07
    adc $00
    ldh [rSB], a
    call $8000
    ld sp, hl
    ld bc, $00da
    ld sp, hl
    ld sp, hl
    reti


    nop
    pop af
    ld bc, $00d8
    pop af
    ld sp, hl
    rst $10
    nop
    jp hl


    ld bc, $00d6
    jp hl


    ld sp, hl
    push de
    nop
    pop hl
    ld bc, $00d4
    add b
    jp hl


    ld bc, $00dc
    jp hl


    ld sp, hl
    db $db
    nop
    pop af
    ld bc, $00de
    pop af
    ld sp, hl
    db $dd
    nop
    ld sp, hl
    ld sp, hl
    rst $18
    nop
    ld sp, hl
    ld bc, $00e0
    add b
    add sp, $01
    ld a, c
    nop
    add sp, -$07
    ld a, b
    nop
    ld hl, sp+$01
    db $e4
    nop
    ld hl, sp-$07
    db $e3
    nop
    ldh a, [rSB]
    ldh [c], a
    nop
    ldh a, [$fff9]
    pop hl
    nop
    add b
    and [hl]
    ld d, l
    jp $e055


    ld d, l
    ld bc, $1e56
    ld d, [hl]
    ld b, e
    ld d, [hl]
    ld h, h
    ld d, [hl]
    add l
    ld d, [hl]
    and [hl]
    ld d, [hl]
    bit 2, [hl]
    db $ec
    ld d, [hl]
    dec c
    ld d, a
    ld l, $57
    ld c, a
    ld d, a
    ld l, h
    ld d, a
    adc c
    ld d, a
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    dec b
    nop
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$fff8]
    inc bc
    nop
    add sp, $00
    ld [bc], a
    nop
    add sp, -$08
    ld bc, $e000
    ld hl, sp+$00
    nop
    add b
    and $fb
    rlca
    nop
    cp $00
    ld c, $00
    cp $f8
    dec c
    nop
    or $00
    inc c
    nop
    or $f8
    dec bc
    nop
    xor $00
    ld a, [bc]
    nop
    xor $f8
    add hl, bc
    nop
    add b
    dec b
    nop
    ld d, $00
    dec b
    ld hl, sp+$15
    nop
    db $fd
    nop
    inc d
    nop
    db $fd
    ld hl, sp+$13
    nop
    push af
    nop
    ld [de], a
    nop
    push af
    ld hl, sp+$11
    nop
    db $ed
    nop
    stop
    db $ed
    ld hl, sp+$0f
    nop
    add b
    db $ed
    nop
    stop
    db $ed
    ld hl, sp+$0f
    nop
    inc b
    ld a, [$001b]
    db $fc
    nop
    ld a, [de]
    nop
    db $fc
    ld hl, sp+$19
    nop
    db $f4
    nop
    jr jr_00c_5619

jr_00c_5619:
    db $f4
    ld hl, sp+$17
    nop
    add b
    ld sp, hl
    nop
    ld b, b
    nop
    ld sp, hl
    ld hl, sp+$3f
    nop
    pop af
    nop
    ld a, $00
    pop af
    ld hl, sp+$3d
    nop
    jp hl


    nop
    dec sp
    nop
    jp hl


    ld hl, sp+$3a
    nop
    pop hl
    nop
    add hl, sp
    nop
    pop hl
    ld hl, sp+$38
    nop
    jp hl


    ld [$003c], sp
    add b
    di
    ldh a, [rLY]
    nop
    db $eb
    ldh a, [rSTAT]
    nop

jr_00c_564b:
    ld a, [$4900]
    nop
    ld a, [$48f8]
    nop
    ldh a, [c]
    nop
    ld b, [hl]
    nop
    ldh a, [c]
    ld hl, sp+$45
    nop
    ld [$4300], a
    nop
    ld [$42f8], a
    nop
    add b
    ld [$4300], a
    nop
    ld [$42f8], a
    nop

jr_00c_566c:
    ld a, [$4900]
    nop
    ld a, [$4ef8]
    nop
    ld a, [$4df0]
    nop
    ldh a, [c]
    nop
    ld c, h
    nop
    ldh a, [c]
    ld hl, sp+$4b
    nop
    ldh a, [c]
    ldh a, [rWY]
    nop
    add b
    ldh a, [c]
    pop af
    ld c, d
    nop
    ld a, [$51f1]
    nop
    ld [$4300], a
    nop
    ld [$42f8], a
    nop
    ld a, [$5300]
    nop
    ld a, [$52f8]
    nop
    ldh a, [c]
    nop
    ld d, b

jr_00c_56a0:
    nop
    ldh a, [c]
    ld hl, sp+$4f

jr_00c_56a4:
    nop
    add b
    ld sp, hl
    ld hl, sp+$40
    jr nz, jr_00c_56a4

    nop
    ccf
    jr nz, jr_00c_56a0

    ld hl, sp+$3e
    jr nz, jr_00c_56a4

    nop
    dec a
    jr nz, jr_00c_56a0

    ld hl, sp+$3b
    jr nz, jr_00c_56a4

    nop
    ld a, [hl-]
    jr nz, jr_00c_56a0

    ld hl, sp+$39
    jr nz, jr_00c_56a4

    nop
    jr c, jr_00c_56e6

    jp hl


    ldh a, [$ff3c]
    jr nz, jr_00c_564b

    di
    ld [$2044], sp
    db $eb
    ld [$2041], sp
    ld a, [$49f8]
    jr nz, @-$04

    nop
    ld c, b
    jr nz, @-$0c

    ld hl, sp+$46
    jr nz, @-$0c

    nop
    ld b, l
    jr nz, @-$14

    ld hl, sp+$43

jr_00c_56e6:
    jr nz, @-$14

    nop
    ld b, d
    jr nz, jr_00c_566c

    ld [$43f8], a

jr_00c_56ef:
    jr nz, @-$14

    nop
    ld b, d

jr_00c_56f3:
    jr nz, jr_00c_56ef

    ld hl, sp+$49

jr_00c_56f7:
    jr nz, jr_00c_56f3

    nop
    ld c, [hl]

jr_00c_56fb:
    jr nz, jr_00c_56f7

    ld [$204d], sp

jr_00c_5700:
    ldh a, [c]
    ld hl, sp+$4c
    jr nz, jr_00c_56f7

    nop
    ld c, e
    jr nz, jr_00c_56fb

    ld [$204a], sp

jr_00c_570c:
    add b
    ldh a, [c]
    rlca
    ld c, d
    jr nz, jr_00c_570c

    rlca
    ld d, c
    jr nz, jr_00c_5700

    ld hl, sp+$43

jr_00c_5718:
    jr nz, @-$14

    nop
    ld b, d

jr_00c_571c:
    jr nz, jr_00c_5718

    ld hl, sp+$53
    jr nz, jr_00c_571c

    nop
    ld d, d
    jr nz, jr_00c_5718

    ld hl, sp+$50
    jr nz, jr_00c_571c

    nop
    ld c, a
    jr nz, @-$7e

    ld hl, sp+$01
    inc h
    nop
    ld hl, sp-$07
    inc hl
    nop
    ldh a, [rSB]
    ld [hl+], a
    nop
    ldh a, [$fff9]
    ld hl, $e800
    ld bc, $0020
    add sp, -$07
    rra
    nop
    ldh [rSB], a
    ld e, $00
    ldh [$fff9], a
    dec e
    nop
    add b
    ld hl, sp+$01
    inc l
    nop
    ld hl, sp-$07
    dec hl
    nop
    ldh a, [rSB]
    ld a, [hl+]
    nop
    ldh a, [$fff9]
    add hl, hl
    nop
    add sp, $01
    jr z, jr_00c_5763

jr_00c_5763:
    add sp, -$07
    daa
    nop
    ldh [rSB], a
    ld h, $00
    add b
    jp hl


    ld bc, $002e
    jp hl


    ld sp, hl
    dec l
    nop
    ld hl, sp+$09
    inc sp
    nop
    ld hl, sp+$01
    ld [hl-], a
    nop
    ld hl, sp-$07
    ld sp, $f000
    ld bc, $0030
    ldh a, [$fff9]
    cpl
    nop
    add b
    ld hl, sp+$01
    scf
    nop
    ld hl, sp-$07
    ld [hl], $00
    add sp, $01
    dec h
    nop
    add sp, -$07
    inc e
    nop
    ldh a, [rSB]
    dec [hl]
    nop
    ldh a, [$fff9]
    inc [hl]
    nop
    add b
    jp nz, $df57

    ld d, a
    db $fc
    ld d, a
    add hl, de
    ld e, b
    ld [hl], $58
    ld d, a
    ld e, b
    ld a, b
    ld e, b
    sbc c
    ld e, b
    cp d
    ld e, b
    db $db
    ld e, b
    db $fc
    ld e, b
    dec e
    ld e, c
    ld a, $59
    ld e, a
    ld e, c
    ld a, h
    ld e, c
    sub l
    ld e, c
    ld hl, sp+$00
    ld b, $00
    ld hl, sp-$08
    dec b
    nop
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$fff8]
    ld d, a
    nop
    add sp, $00
    ld d, [hl]
    nop
    add sp, -$08
    ld d, l
    nop
    ldh [$fff8], a
    ld d, h
    nop
    add b
    ld [bc], a
    ld a, [$005c]
    ld a, [$8c00]
    nop
    ld a, [$8bf8]
    nop
    ldh a, [c]
    nop
    ld e, e
    nop
    ldh a, [c]
    ld hl, sp+$5a
    nop
    ld [$5900], a
    nop
    ld [$58f8], a
    nop
    add b
    db $eb
    nop
    stop
    db $eb
    ld hl, sp+$0f
    nop
    inc bc
    ld a, [$0061]
    ei
    nop
    ld h, b
    nop
    ei
    ld hl, sp+$5f
    nop
    di
    nop
    ld e, [hl]
    nop
    di
    ld hl, sp+$5d
    nop
    add b
    ldh a, [c]
    ld hl, sp+$47
    nop
    ld [bc], a
    ld a, [$0061]
    ldh a, [c]
    nop
    ld e, [hl]
    nop
    ld a, [$6300]
    nop
    ld a, [$62f8]
    nop
    ld [$0ff8], a
    nop
    ld [$1000], a
    nop
    add b
    ldh a, [$fffd]
    ld [hl], b
    nop
    ldh [$fffd], a
    halt
    nop
    ldh [$fff5], a
    ld [hl], l
    nop
    add sp, -$03
    ld a, b
    nop
    add sp, -$0b
    ld [hl], a
    nop
    ldh a, [$fff5]
    ld a, c
    nop
    ld hl, sp-$03
    ld a, e
    nop
    ld hl, sp-$0b
    ld a, d
    nop
    add b
    ld a, [$49fd]
    nop

jr_00c_585b:
    ldh a, [c]
    db $fd
    ld b, [hl]
    nop
    ld [$43fd], a
    nop
    ld a, [$81f5]
    nop
    ld a, [$80ed]
    nop
    ldh a, [c]
    push af
    ld a, a
    nop
    ldh a, [c]
    db $ed
    ld a, [hl]
    nop
    ld [$7df5], a
    nop
    add b
    ldh a, [c]
    db $fd
    ld b, [hl]
    nop

jr_00c_587c:
    ld a, [$49fd]
    nop
    ld [$43fd], a
    nop
    ld [$42f5], a
    nop
    ld a, [$85f5]
    nop
    ld a, [$84ed]
    nop
    ldh a, [c]
    push af
    add e
    nop
    ldh a, [c]
    db $ed
    add d
    nop
    add b
    ldh a, [$fffe]
    adc l
    nop

jr_00c_589d:
    add sp, -$02
    ld b, e
    nop
    add sp, -$0a

jr_00c_58a3:
    ld b, d
    nop
    ldh a, [$fff6]
    add a
    nop
    ldh a, [$ffee]
    add [hl]
    nop
    ld hl, sp-$02

jr_00c_58af:
    adc d
    nop
    ld hl, sp-$0a

jr_00c_58b3:
    adc c
    nop
    ld hl, sp-$12
    adc b
    nop
    add b
    ldh a, [$fffb]
    ld a, $20

jr_00c_58be:
    ldh [$fffb], a
    halt
    jr nz, jr_00c_58a3

    inc bc
    ld [hl], l
    jr nz, jr_00c_58af

    ei
    ld a, b
    jr nz, jr_00c_58b3

jr_00c_58cb:
    inc bc
    ld [hl], a
    jr nz, @-$0e

jr_00c_58cf:
    inc bc
    ld a, c
    jr nz, jr_00c_58cb

    ei
    ld a, e
    jr nz, jr_00c_58cf

    inc bc
    ld a, d
    jr nz, jr_00c_585b

    ld a, [$49fb]
    jr nz, @-$0c

    ei
    ld b, [hl]

jr_00c_58e2:
    jr nz, @-$14

    ei
    ld b, e

jr_00c_58e6:
    jr nz, jr_00c_58e2

    inc bc
    add c
    jr nz, jr_00c_58e6

    dec bc
    add b
    jr nz, jr_00c_58e2

    inc bc
    ld a, a
    jr nz, jr_00c_58e6

    dec bc
    ld a, [hl]
    jr nz, jr_00c_58e2

    inc bc
    ld a, l
    jr nz, jr_00c_587c

    ldh a, [c]
    ei
    ld b, [hl]
    jr nz, @-$04

    ei
    ld c, c
    jr nz, @-$14

    ei
    ld b, e

jr_00c_5907:
    jr nz, @-$14

    inc bc

jr_00c_590a:
    ld b, d

jr_00c_590b:
    jr nz, jr_00c_5907

    inc bc
    add l
    jr nz, jr_00c_590b

    dec bc
    add h
    jr nz, jr_00c_5907

    inc bc
    add e
    jr nz, jr_00c_590b

    dec bc

jr_00c_591a:
    add d
    jr nz, jr_00c_589d

    ldh a, [$fffa]
    adc l
    jr nz, jr_00c_590a

    ld a, [$2043]
    add sp, $02
    ld b, d
    jr nz, jr_00c_591a

jr_00c_592a:
    ld [bc], a
    add a
    jr nz, @-$0e

    ld a, [bc]
    add [hl]
    jr nz, jr_00c_592a

jr_00c_5932:
    ld a, [$208a]
    ld hl, sp+$02
    adc c
    jr nz, jr_00c_5932

    ld a, [bc]
    adc b
    jr nz, jr_00c_58be

    ldh [$fff9], a
    dec e
    nop
    ldh [rSB], a
    ld h, h
    nop
    ld hl, sp+$01
    inc h
    nop
    ld hl, sp-$07
    inc hl
    nop
    ldh a, [$fff9]
    ld hl, $e800
    ld sp, hl
    rra
    nop
    ldh a, [rSB]
    ld h, [hl]
    nop
    add sp, $01
    ld h, l
    nop
    add b
    ld sp, hl
    ld sp, hl
    dec hl
    nop
    ld sp, hl
    ld bc, $006d
    pop af
    ld bc, $006b
    pop af
    ld sp, hl
    ld l, d
    nop
    jp hl


    ld bc, $0069
    jp hl


    ld sp, hl
    ld l, b
    nop
    pop hl
    ld bc, $0067
    add b
    ld [$2e01], a
    nop
    ld [$2df9], a
    nop
    ld sp, hl
    ld sp, hl
    ld sp, $f900
    ld bc, $0071
    pop af
    ld bc, $006f
    pop af
    ld sp, hl
    ld l, [hl]
    nop
    add b
    ldh a, [rSB]
    ld l, h
    nop
    ld hl, sp+$01
    ld [hl], h
    nop
    ld hl, sp-$07
    ld [hl], e
    nop
    ldh a, [$fff9]
    ld [hl], d
    nop
    add sp, $01
    dec h
    nop
    add sp, -$07
    inc e
    nop
    add b
    and $59
    rlca
    ld e, d
    jr z, jr_00c_5a0e

    rlca
    ld e, d
    jr z, jr_00c_5a12

    rlca
    ld e, d
    jr z, jr_00c_5a16

    ld b, c
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    ld h, d
    ld e, d
    add e
    ld e, d
    and h
    ld e, d
    push bc
    ld e, d
    and $5a
    push bc
    ld e, d
    and $5a
    push bc
    ld e, d
    and $5a
    rlca
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    inc l
    ld e, e
    ld c, c
    ld e, e
    ld hl, sp+$00
    sub l
    nop
    ld hl, sp-$08
    sub h
    nop
    ldh a, [rP1]
    sub e
    nop
    ldh a, [$fff8]
    sub d
    nop
    ldh a, [$fff0]
    sub c
    nop
    add sp, -$08
    adc a
    nop
    add sp, -$10
    adc [hl]
    nop
    add sp, $00
    sub b
    nop
    add b
    ld [$1000], a
    nop
    ld [$0ff8], a

jr_00c_5a0e:
    nop
    ld [bc], a
    nop
    sbc e

jr_00c_5a12:
    nop
    ld [bc], a
    ld hl, sp-$66

jr_00c_5a16:
    nop
    ld a, [$9900]
    nop
    ld a, [$98f8]
    nop
    ldh a, [c]
    nop
    sub a
    nop
    ldh a, [c]
    ld hl, sp-$6a
    nop
    add b
    ld a, [$a100]
    nop
    ld a, [$a0f8]
    nop
    ldh a, [c]
    nop
    sbc a
    nop
    ldh a, [c]
    ld hl, sp-$62
    nop
    ld [$9d00], a
    nop
    ld [$9cf8], a
    nop
    add b
    ld hl, sp+$00
    cp l
    nop

jr_00c_5a45:
    ld hl, sp-$08
    cp h
    nop
    ldh a, [rP1]
    cp e
    nop
    ldh a, [$fff8]
    cp d
    nop
    add sp, $00
    cp c
    nop
    add sp, -$08
    cp b
    nop
    ldh [rP1], a
    or a
    nop
    ldh [$fff8], a
    or [hl]
    nop
    add b
    ld [$43fe], a
    nop

jr_00c_5a66:
    ld [$42f6], a
    nop
    ld a, [$c3fe]
    nop
    ld a, [$c2f6]
    nop
    ld a, [$c1ee]
    nop
    ldh a, [c]
    cp $c0
    nop
    ldh a, [c]
    or $bf
    nop
    ldh a, [c]
    xor $be
    nop
    add b
    add sp, -$02
    ld [$f800], sp
    cp $ca
    nop
    ld hl, sp-$0a
    ret


    nop
    ldh a, [$fffe]
    ret z

    nop
    ldh a, [$fff6]
    rst $00
    nop
    ldh a, [$ffee]
    add $00
    add sp, -$0a

jr_00c_5a9d:
    push bc
    nop
    add sp, -$12

jr_00c_5aa1:
    call nz, $8000
    ld hl, sp-$08
    cp l
    jr nz, jr_00c_5aa1

    nop
    cp h
    jr nz, jr_00c_5a9d

    ld hl, sp-$45
    jr nz, jr_00c_5aa1

    nop
    cp d
    jr nz, jr_00c_5a9d

    ld hl, sp-$47
    jr nz, jr_00c_5aa1

    nop
    cp b
    jr nz, jr_00c_5a9d

    ld hl, sp-$49
    jr nz, jr_00c_5aa1

    nop
    or [hl]
    jr nz, jr_00c_5a45

    ld [$43fa], a

jr_00c_5ac8:
    jr nz, @-$14

    ld [bc], a
    ld b, d

jr_00c_5acc:
    jr nz, jr_00c_5ac8

    ld a, [$20c3]
    ld a, [$c202]

jr_00c_5ad4:
    jr nz, @-$04

    ld a, [bc]
    pop bc
    jr nz, jr_00c_5acc

    ld a, [$20c0]
    ldh a, [c]
    ld [bc], a
    cp a
    jr nz, jr_00c_5ad4

    ld a, [bc]

jr_00c_5ae3:
    cp [hl]
    jr nz, jr_00c_5a66

    add sp, -$06
    ld [$f820], sp

jr_00c_5aeb:
    ld a, [$20ca]
    ld hl, sp+$02
    ret


    jr nz, jr_00c_5ae3

    ld a, [$20c8]
    ldh a, [rSC]
    rst $00
    jr nz, jr_00c_5aeb

    ld a, [bc]
    add $20
    add sp, $02
    push bc
    jr nz, jr_00c_5aeb

    ld a, [bc]
    call nz, $8020
    pop hl
    ld bc, $00a2
    ldh [c], a
    ld sp, hl
    dec e
    nop
    ld [$1ff9], a
    nop
    ld sp, hl
    ld bc, $00a8
    ld sp, hl
    ld sp, hl
    and a
    nop
    pop af
    ld bc, $00a6
    pop af
    ld sp, hl
    and l
    nop
    jp hl


    add hl, bc
    and h
    nop
    jp hl


    ld bc, $00a3
    add b
    ld [$1cf9], a
    nop
    ld [$2501], a
    nop
    ld a, [$ae03]
    nop
    ld a, [$adfb]
    nop
    ldh a, [c]
    add hl, bc
    xor h
    nop
    ldh a, [c]
    ld bc, $00ab
    ldh a, [c]
    ld sp, hl
    xor d
    nop
    add b
    ld a, [$cbf9]
    nop
    ld a, [$b501]
    nop
    ldh a, [c]
    add hl, bc
    or h
    nop
    ldh a, [c]
    ld bc, $00b3
    ldh a, [c]
    ld sp, hl
    or d
    nop
    ld [$b109], a
    nop
    ld [$b001], a
    nop
    ld [$aff9], a
    nop
    add b
    and d
    ld e, e
    jp $dc5b


    ld e, e
    jp $dc5b


    ld e, e
    jp $dc5b


    ld e, e
    push af
    ld e, e
    ld d, $5c
    scf
    ld e, h
    ld d, $5c
    scf
    ld e, h
    ld d, $5c
    scf
    ld e, h
    ld e, b
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    ld a, c
    ld e, h
    sbc d
    ld e, h
    cp e
    ld e, h
    call c, $fd5c
    ld e, h
    call c, $fd5c
    ld e, h
    call c, $fd5c
    ld e, h
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$fff8]
    inc b
    nop
    add sp, $00
    inc bc
    nop
    add sp, -$08
    ld [bc], a
    nop
    add sp, -$10
    ld bc, $e000
    ld hl, sp+$00
    nop
    add b
    ld a, [$0c00]
    nop
    ld a, [$0bf8]
    nop
    ld [$0300], a
    nop
    ldh a, [c]
    nop
    ld a, [bc]
    nop
    ldh a, [c]
    ld hl, sp+$09
    nop
    ld [$08f8], a
    nop
    add b
    ld hl, sp+$00
    ld [de], a
    nop
    ld hl, sp-$08
    ld de, $f000
    nop
    stop
    ldh a, [$fff8]
    rrca
    nop
    add sp, $00
    ld c, $00
    add sp, -$08
    dec c
    nop
    add b
    ld hl, sp+$00
    ld sp, $f800
    ld hl, sp+$30
    nop
    ldh a, [rP1]
    cpl
    nop
    ldh a, [$fff8]
    ld l, $00
    add sp, $00
    dec l
    nop
    add sp, -$08
    inc l
    nop
    ldh [rP1], a
    dec hl
    nop
    ldh [$fff8], a
    ld a, [hl+]
    nop
    add b
    pop af
    nop
    ld [hl], $00

jr_00c_5c1a:
    pop af
    ld hl, sp+$35
    nop
    pop af
    ldh a, [$ff34]
    nop
    ld sp, hl
    nop
    add hl, sp
    nop
    ld sp, hl
    ld hl, sp+$38
    nop
    ld sp, hl
    ldh a, [$ff37]
    nop
    jp hl


    nop
    inc sp
    nop
    jp hl


    ld hl, sp+$32
    nop
    add b
    add sp, $00
    inc sp
    nop
    add sp, -$08
    ld [hl-], a
    nop
    ld hl, sp+$00
    ccf
    nop
    ld hl, sp-$08
    ld a, $00
    ld hl, sp-$10
    dec a
    nop
    ldh a, [rP1]
    inc a
    nop
    ldh a, [$fff8]

jr_00c_5c51:
    dec sp
    nop
    ldh a, [$fff0]

jr_00c_5c55:
    ld a, [hl-]
    nop
    add b
    ld hl, sp-$08
    ld sp, $f820
    nop
    jr nc, jr_00c_5c80

    ldh a, [$fff8]
    cpl
    jr nz, jr_00c_5c55

    nop
    ld l, $20
    add sp, -$08
    dec l
    jr nz, jr_00c_5c55

    nop
    inc l

jr_00c_5c6f:
    jr nz, jr_00c_5c51

    ld hl, sp+$2b

jr_00c_5c73:
    jr nz, jr_00c_5c55

    nop
    ld a, [hl+]
    jr nz, @-$7e

    pop af
    ld hl, sp+$36
    jr nz, jr_00c_5c6f

    nop

jr_00c_5c7f:
    dec [hl]

jr_00c_5c80:
    jr nz, jr_00c_5c73

    ld [$2034], sp
    ld sp, hl
    ld hl, sp+$39
    jr nz, @-$05

    nop
    jr c, jr_00c_5cad

    ld sp, hl
    ld [$2037], sp
    jp hl


    ld hl, sp+$33
    jr nz, jr_00c_5c7f

    nop
    ld [hl-], a
    jr nz, jr_00c_5c1a

    add sp, -$08
    inc sp
    jr nz, @-$16

jr_00c_5c9f:
    nop
    ld [hl-], a
    jr nz, @-$06

jr_00c_5ca3:
    ld hl, sp+$3f
    jr nz, jr_00c_5c9f

jr_00c_5ca7:
    nop
    ld a, $20
    ld hl, sp+$08
    dec a

jr_00c_5cad:
    jr nz, jr_00c_5c9f

    ld hl, sp+$3c
    jr nz, jr_00c_5ca3

    nop
    dec sp
    jr nz, jr_00c_5ca7

    ld [$203a], sp
    add b
    ld hl, sp+$01
    ld a, [de]
    nop
    ld hl, sp-$07
    add hl, de
    nop
    ldh a, [rSB]
    jr jr_00c_5cc7

jr_00c_5cc7:
    ldh a, [$fff9]
    rla
    nop
    ldh [rSB], a
    inc de
    nop
    add sp, $09
    ld d, $00
    add sp, $01
    dec d
    nop
    add sp, -$07
    inc d
    nop
    add b
    ld sp, hl
    add hl, bc
    ld [hl+], a
    nop
    ld sp, hl
    ld bc, $0021
    ld sp, hl
    ld sp, hl
    jr nz, jr_00c_5ce8

jr_00c_5ce8:
    pop af
    add hl, bc
    rra
    nop
    pop af
    ld bc, $001e
    pop af
    ld sp, hl
    dec e
    nop
    jp hl


    ld bc, $001c
    jp hl


    ld sp, hl
    dec de
    nop
    add b
    add sp, -$07
    dec de
    nop
    ld hl, sp+$01
    add hl, hl
    nop
    ld hl, sp-$07
    jr z, jr_00c_5d09

jr_00c_5d09:
    ldh a, [$ff09]
    daa
    nop
    ldh a, [rSB]
    ld h, $00
    ldh a, [$fff9]
    dec h
    nop
    add sp, $09
    inc h
    nop
    add sp, $01
    inc hl
    nop
    add b
    ld a, $5d
    ld d, a
    ld e, l
    ld [hl], h
    ld e, l
    sub c
    ld e, l
    or d
    ld e, l
    rst $08
    ld e, l
    ldh a, [$ff5d]
    add hl, bc
    ld e, [hl]
    ld a, $5d
    ld d, a
    ld e, l
    ld [hl], h
    ld e, l
    sub c
    ld e, l
    or d
    ld e, l
    rst $08
    ld e, l
    ldh a, [$ff5d]
    add hl, bc
    ld e, [hl]
    ei
    ld bc, $0045
    ei
    ld sp, hl
    ld b, h
    nop
    di
    ld bc, $0043
    di
    ld sp, hl
    ld b, d
    nop
    db $eb

jr_00c_5d4f:
    ld bc, $0041
    db $eb
    ld sp, hl
    ld b, b
    nop
    add b
    ld bc, $4aff
    nop
    ld sp, hl
    ld bc, $0049
    ld sp, hl
    ld sp, hl
    ld c, b
    nop
    pop af
    ld bc, $0047
    pop af
    ld sp, hl
    ld b, [hl]
    nop
    jp hl


    ld bc, $0041
    jp hl


jr_00c_5d70:
    ld sp, hl
    ld b, b
    nop
    add b
    jp hl


    cp $33
    nop
    jp hl


    or $32
    nop
    ld sp, hl
    cp $5b
    nop
    ld sp, hl
    or $5a
    nop
    ld sp, hl
    xor $59
    nop
    pop af
    cp $58
    nop
    pop af
    or $57
    nop
    add b
    ld hl, sp-$02
    ld h, e
    nop
    ld hl, sp-$0a
    ld h, d
    nop
    ldh a, [$fffe]
    ld h, c
    nop
    ldh a, [$fff6]
    ld h, b
    nop
    ldh a, [$ffee]
    ld e, a
    nop
    add sp, -$02
    ld e, [hl]
    nop
    add sp, -$0a
    ld e, l
    nop
    add sp, -$12
    ld e, h
    nop
    add b
    jp hl


    ld a, [$2033]
    jp hl


    ld [bc], a

jr_00c_5db8:
    ld [hl-], a
    jr nz, @-$05

    ld a, [$205b]
    ld sp, hl
    ld [bc], a
    ld e, d
    jr nz, @-$05

    ld a, [bc]
    ld e, c
    jr nz, jr_00c_5db8

    ld a, [$2058]
    pop af
    ld [bc], a

jr_00c_5dcc:
    ld d, a
    jr nz, jr_00c_5d4f

    ld hl, sp-$06
    ld h, e
    jr nz, jr_00c_5dcc

jr_00c_5dd4:
    ld [bc], a
    ld h, d
    jr nz, @-$0e

    ld a, [$2061]
    ldh a, [rSC]
    ld h, b
    jr nz, @-$0e

    ld a, [bc]
    ld e, a
    jr nz, jr_00c_5dcc

    ld a, [$205e]
    add sp, $02
    ld e, l
    jr nz, jr_00c_5dd4

    ld a, [bc]
    ld e, h
    jr nz, jr_00c_5d70

    ld hl, sp+$01
    ld d, b
    nop
    ld hl, sp-$07
    ld c, a
    nop
    ldh a, [rSB]
    ld c, [hl]
    nop
    ldh a, [$fff9]
    ld c, l
    nop
    add sp, $01
    ld c, h
    nop
    add sp, -$07
    ld c, e
    nop
    add b
    ld hl, sp+$02
    ld d, [hl]
    nop
    ld hl, sp-$06
    ld d, l
    nop
    ldh a, [rSC]
    ld d, h
    nop
    ldh a, [$fffa]
    ld d, e
    nop
    add sp, $02
    ld d, d
    nop
    add sp, -$06
    ld d, c
    nop
    add b
    jr nc, jr_00c_5e82

    ld c, l
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    adc e
    ld e, [hl]
    xor h
    ld e, [hl]
    call $ee5e
    ld e, [hl]
    db $ec
    ld bc, $0041
    db $ec
    ld sp, hl
    ld b, b
    nop
    ei
    add hl, bc
    ld l, b
    nop
    ei
    ld bc, $0067
    ei
    ld sp, hl
    ld h, [hl]
    nop
    di
    ld bc, $0065
    di
    ld sp, hl
    ld h, h
    nop
    add b
    db $ed
    ld bc, $0041
    db $ed
    ld sp, hl
    ld b, b
    nop
    db $fc
    add hl, bc
    ld l, [hl]
    nop
    db $fc
    ld bc, $006d
    db $fc
    ld sp, hl
    ld l, h
    nop
    db $f4
    add hl, bc
    ld l, e
    nop
    db $f4
    ld bc, $006a
    db $f4
    ld sp, hl
    ld l, c
    nop
    add b
    ld hl, sp+$08
    ld [hl], l
    nop
    ld hl, sp+$00
    ld [hl], h
    nop
    ld hl, sp-$08
    ld [hl], e
    nop
    ldh a, [rP1]
    ld [hl], d
    nop
    ldh a, [$fff8]
    ld [hl], c
    nop

jr_00c_5e82:
    add sp, $00
    ld [hl], b
    nop
    add sp, -$08
    ld l, a
    nop
    add b
    ld hl, sp+$00
    ld [hl], h
    nop
    ld hl, sp-$08
    ld [hl], e
    nop
    ld hl, sp+$08
    ld [hl], l
    nop
    add sp, -$08
    ld l, a
    nop
    add sp, $00
    ld [hl], b
    nop
    ldh a, [rP1]
    ld a, b
    nop
    ldh a, [$fff8]
    ld [hl], a
    nop
    ldh a, [$fff0]
    halt
    nop
    add b
    ld hl, sp-$08
    ld [hl], e
    nop
    add sp, $00
    rst $28
    nop
    add sp, -$08
    xor $00
    ldh a, [rP1]
    ld a, h
    nop
    ldh a, [$fff8]
    ld a, e
    nop
    ldh a, [$fff0]
    ld a, d
    nop
    ld hl, sp+$08
    ld [hl], l
    nop
    ld hl, sp+$00
    ld [hl], h
    nop
    add b
    add sp, $00
    rst $28
    nop
    add sp, -$08
    xor $00
    ld hl, sp+$00
    ld [hl], h
    nop
    di
    ldh a, [$ff7a]
    nop
    ld hl, sp+$08
    ld [hl], l
    nop
    ld hl, sp-$08
    ld a, a
    nop
    ldh a, [rP1]
    ld a, [hl]
    nop
    ldh a, [$fff8]
    ld a, l
    nop
    add b
    pop af
    nop
    add l
    nop
    ld sp, hl
    ld [$0088], sp
    ld sp, hl
    nop
    add a
    nop
    ld sp, hl
    ld hl, sp-$7a
    nop
    rst $30
    ldh a, [rPCM12]
    nop
    pop af
    ld hl, sp-$7c
    nop
    jp hl


    nop
    add e
    nop
    jp hl


    ld hl, sp-$7e
    nop
    add b
    scf
    ld e, a
    ld e, b
    ld e, a
    ld a, c
    ld e, a
    sbc d
    ld e, a
    cp e
    ld e, a
    call c, $f95f
    ld e, a
    ld a, [de]
    ld h, b
    ccf
    ld h, b
    ld h, h
    ld h, b
    adc c
    ld h, b
    and [hl]
    ld h, b
    rst $00
    ld h, b
    db $ec
    ld h, b
    ld de, $3661
    ld h, c
    ld d, a
    ld h, c
    ld a, b
    ld h, c
    sbc c
    ld h, c
    cp d
    ld h, c
    ld sp, hl
    nop
    sub c
    nop
    ld sp, hl
    ld hl, sp-$70
    nop
    pop af
    nop
    adc a
    nop
    pop af
    ld hl, sp-$72
    nop
    jp hl


    nop
    adc l
    nop
    jp hl


    ld hl, sp-$74
    nop
    pop hl
    nop
    adc e
    nop
    pop hl
    ld hl, sp-$76
    nop
    add b
    ldh a, [rP1]
    db $ed
    nop
    ldh a, [$fff8]
    db $ec
    nop
    ld hl, sp+$00
    sub l
    nop
    ld hl, sp-$08
    sub h
    nop
    ldh [rP1], a
    adc e
    nop
    ldh [$fff8], a
    adc d
    nop
    add sp, $00
    sub e
    nop
    add sp, -$08
    sub d
    nop
    add b
    db $fd
    nop
    sbc l
    nop
    db $fd
    ld hl, sp-$64
    nop
    push af
    nop
    sbc e
    nop
    push af
    ld hl, sp-$66
    nop
    db $ed
    nop
    sbc c
    nop
    db $ed
    ld hl, sp-$68
    nop
    push hl
    nop
    sub a
    nop
    push hl
    ld hl, sp-$6a
    nop
    add b
    rst $38
    ld bc, $00a4
    rst $38
    ld sp, hl
    and e
    nop
    rst $30
    ld bc, $00a2
    rst $30
    ld sp, hl
    and c
    nop
    rst $20
    ld bc, $0041
    rst $20
    ld sp, hl
    ld b, b
    nop
    rst $28
    ld bc, $009f
    rst $28
    ld sp, hl
    sbc [hl]
    nop
    add b
    cp $f9
    and e
    nop
    add sp, $01
    ld b, c
    nop
    add sp, -$07
    ld b, b
    nop
    ldh a, [$fff9]
    sbc [hl]
    nop
    cp $01
    xor b
    nop
    or $01
    and a
    nop
    or $f9
    and [hl]
    nop
    xor $01
    and l
    nop
    add b
    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    ret nc

    nop
    ldh a, [rP1]
    rst $08
    nop
    ldh a, [$fff8]
    adc $00
    add sp, $00
    call $e800
    ld hl, sp-$34
    nop
    ldh [$fffb], a
    rlc b
    add b
    ld hl, sp+$00
    reti


    nop
    ld hl, sp-$08
    ret c

    nop
    ldh a, [rP1]
    rst $10
    nop
    ldh a, [$fff8]
    sub $00
    ldh [rP1], a
    jp nc, $e800

    ld [$00d5], sp
    add sp, $00
    call nc, $e800
    ld hl, sp-$2d
    nop
    add b
    cp $ff
    ld a, c
    nop
    and $ff
    inc sp
    nop
    and $f7
    ld [hl-], a
    nop
    or $ff
    rst $18
    nop
    or $f7
    sbc $00
    rst $30
    rst $28
    db $dd
    nop
    xor $ff
    call c, $ee00
    rst $30
    db $db
    nop
    rst $28
    rst $28
    jp c, $8000

    cp $ff
    ld a, c
    nop
    db $fc
    rst $28
    ldh [c], a
    nop

jr_00c_6047:
    db $f4
    rst $28
    ldh [rP1], a
    xor $ff
    and b
    nop
    or $ff
    rst $18
    nop
    or $f7
    db $e3
    nop
    xor $f7
    pop hl
    nop
    and $ff
    inc sp
    nop
    and $f7
    ld [hl-], a
    nop
    add b
    jp hl


    rst $38
    inc sp
    nop
    jp hl


    rst $30
    ld [hl-], a
    nop
    pop af
    rst $38
    rst $20
    nop
    pop af
    rst $30
    and $00
    pop af
    rst $28
    push hl
    nop
    ld bc, $ebef
    nop
    ld sp, hl
    rst $38
    ld [$f900], a
    rst $30

jr_00c_6082:
    jp hl


    nop
    ld sp, hl
    rst $28

jr_00c_6086:
    add sp, $00
    add b
    ld hl, sp-$08
    pop de
    jr nz, jr_00c_6086

    nop
    ret nc

    jr nz, jr_00c_6082

    ld hl, sp-$31
    jr nz, jr_00c_6086

    nop
    adc $20
    add sp, -$08
    call $e820
    nop

jr_00c_609f:
    call z, $e020
    db $fd

jr_00c_60a3:
    sla b
    add b
    ld hl, sp-$08
    reti


    jr nz, jr_00c_60a3

jr_00c_60ab:
    nop
    ret c

    jr nz, jr_00c_609f

    ld hl, sp-$29
    jr nz, jr_00c_60a3

    nop
    sub $20

jr_00c_60b6:
    ldh [$fff8], a
    jp nc, $e820

    ldh a, [$ffd5]
    jr nz, @-$16

    ld hl, sp-$2c
    jr nz, jr_00c_60ab

    nop
    db $d3
    jr nz, jr_00c_6047

    cp $f9
    ld a, c
    jr nz, @-$18

    ld sp, hl
    inc sp

jr_00c_60ce:
    jr nz, jr_00c_60b6

    ld bc, $2032
    or $f9
    rst $18
    jr nz, jr_00c_60ce

    ld bc, $20de
    rst $30
    add hl, bc
    db $dd
    jr nz, jr_00c_60ce

    ld sp, hl
    call c, $ee20
    ld bc, $20db
    rst $28
    add hl, bc

jr_00c_60e9:
    jp c, $8020

    cp $f9
    ld a, c

jr_00c_60ef:
    jr nz, @-$02

    add hl, bc
    ldh [c], a

jr_00c_60f3:
    jr nz, jr_00c_60e9

    add hl, bc
    ldh [rNR41], a
    xor $f9
    and b
    jr nz, jr_00c_60f3

    ld sp, hl
    rst $18

jr_00c_60ff:
    jr nz, @-$08

    ld bc, $20e3
    xor $01
    pop hl
    jr nz, jr_00c_60ef

    ld sp, hl
    inc sp
    jr nz, jr_00c_60f3

    ld bc, $2032
    add b
    jp hl


    ld sp, hl
    inc sp
    jr nz, jr_00c_60ff

    ld bc, $2032
    pop af
    ld sp, hl
    rst $20
    jr nz, @-$0d

    ld bc, $20e6
    pop af
    add hl, bc

jr_00c_6123:
    push hl
    jr nz, jr_00c_6127

    add hl, bc

jr_00c_6127:
    db $eb
    jr nz, jr_00c_6123

    ld sp, hl
    ld [$f920], a
    ld bc, $20e9
    ld sp, hl
    add hl, bc
    add sp, $20
    add b
    jp hl


    ld sp, hl
    ldh a, [rP1]
    ld sp, hl
    ld bc, $00af
    ld sp, hl
    ld sp, hl
    xor [hl]
    nop
    pop af
    ld bc, $00ad
    pop af
    ld sp, hl
    xor h
    nop
    jp hl


    ld bc, $00ab
    pop hl
    ld bc, $00aa
    pop hl
    ld sp, hl
    xor c
    nop
    add b
    ld sp, hl
    ld bc, $00b7
    ld sp, hl
    ld sp, hl
    or [hl]
    nop
    pop af
    ld bc, $00b5
    pop af
    ld sp, hl
    or h
    nop
    jp hl


    ld bc, $00b3
    jp hl


    ld sp, hl
    or d
    nop
    pop hl
    ld bc, $00b1
    pop hl
    ld sp, hl
    or b
    nop
    add b
    ld a, [$bf01]
    nop
    ld a, [$bef9]
    nop
    ldh a, [c]
    ld bc, $00bd
    ldh a, [c]
    ld sp, hl
    cp h
    nop
    ld [$bb01], a
    nop
    ld [$baf9], a
    nop
    ldh [c], a
    ld bc, $00b9
    ldh [c], a
    ld sp, hl
    cp b
    nop
    add b
    ld a, [$c701]
    nop
    ld a, [$c6f9]
    nop
    ldh a, [c]
    ld bc, $00c5
    ldh a, [c]
    ld sp, hl
    call nz, $ea00
    ld bc, $00c3
    ld [$c2f9], a
    nop
    ldh [c], a
    ld bc, $00c1
    ldh [c], a
    ld sp, hl
    ret nz

    nop
    add b
    rst $20
    ld bc, $001c
    rst $20
    ld sp, hl
    dec de
    nop
    rst $38
    nop
    jp z, $f700

    ld bc, $00c9
    rst $30
    ld sp, hl
    ret z

    nop
    rst $28
    ld bc, $00f2
    rst $28
    ld sp, hl
    pop af
    nop
    add b
    rst $38
    ld h, c
    jr nz, jr_00c_623d

    ld b, l
    ld h, d
    ld h, d
    ld h, d
    ld a, a
    ld h, d
    sbc h
    ld h, d
    cp l
    ld h, d
    ldh [c], a
    ld h, d
    inc bc
    ld h, e
    inc h
    ld h, e
    ld b, l
    ld h, e
    ld h, [hl]
    ld h, e
    adc e
    ld h, e
    xor h
    ld h, e
    call $ee63
    ld h, e
    dec bc
    ld h, h
    inc l
    ld h, h
    ld c, c
    ld h, h
    ld h, d
    ld h, h
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$fff8]
    inc b
    nop
    add sp, $00
    inc bc
    nop
    add sp, -$08
    ld [bc], a
    nop
    ldh [$fff8], a
    ld bc, $d800
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    ld l, b
    nop
    ld hl, sp-$08
    ld h, a
    nop
    reti


    ld hl, sp+$00
    nop
    pop af
    nop
    dec c
    nop
    pop af
    ld hl, sp+$0c
    nop
    jp hl


    nop
    dec bc
    nop
    jp hl


    ld hl, sp+$0a
    nop
    pop hl

jr_00c_623d:
    nop
    add hl, bc
    nop
    pop hl
    ld hl, sp+$08
    nop
    add b
    nop
    ei
    inc d
    nop
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    ldh a, [rP1]
    ld de, $f000
    ld hl, sp+$10
    nop
    add sp, $00
    rrca
    nop
    add sp, -$08
    ld c, $00
    add b
    nop
    ld a, [$001b]
    ld hl, sp+$00
    ld a, [de]
    nop
    ld hl, sp-$08
    add hl, de
    nop
    ldh a, [rP1]
    jr jr_00c_6272

jr_00c_6272:
    ldh a, [$fff8]
    rla
    nop
    add sp, $00
    ld d, $00
    add sp, -$08
    dec d
    nop
    add b
    nop
    ld a, [$001b]
    ld hl, sp+$00
    ld a, [de]
    nop
    ld hl, sp-$08
    add hl, de
    nop
    add sp, $00
    ld d, $00
    add sp, -$08
    dec d
    nop
    ldh a, [rP1]
    dec e
    nop
    ldh a, [$fff8]
    inc e
    nop
    add b
    ld hl, sp+$00
    dec h
    nop
    ld hl, sp-$08
    inc h
    nop
    ldh a, [rP1]
    inc hl
    nop
    ldh a, [$fff8]
    ld [hl+], a
    nop
    add sp, $00
    ld hl, $e800
    ld hl, sp+$20
    nop
    ldh [rP1], a
    rra
    nop
    ldh [$fff8], a
    ld e, $00
    add b
    ldh [rSB], a
    rra
    nop
    ldh [$fff9], a
    ld e, $00
    add sp, $07
    jp hl


    nop
    add sp, -$01
    add sp, $00
    add sp, -$09
    rst $20
    nop
    ldh a, [rIE]
    daa
    nop
    ldh a, [$fff7]
    ld h, $00
    ld hl, sp-$01
    add hl, hl
    nop
    ld hl, sp-$09
    jr z, jr_00c_62e1

jr_00c_62e1:
    add b
    ld hl, sp-$01
    ld sp, $f800
    rst $30
    jr nc, jr_00c_62ea

jr_00c_62ea:
    ld hl, sp-$11
    cpl
    nop
    ldh a, [rIE]
    ld l, $00
    ldh a, [$fff7]
    dec l
    nop
    ldh a, [$ffef]
    inc l
    nop
    add sp, -$01
    dec hl
    nop
    add sp, -$09

Jump_00c_6300:
    ld a, [hl+]
    nop
    add b
    ld hl, sp-$01
    add hl, sp
    nop
    ld hl, sp-$09
    jr c, jr_00c_630b

jr_00c_630b:
    ld hl, sp-$11
    scf
    nop
    ldh a, [rIE]
    ld [hl], $00
    ldh a, [$fff7]
    dec [hl]
    nop
    ldh a, [$ffef]
    inc [hl]
    nop
    add sp, -$01
    inc sp
    nop
    add sp, -$09
    ld [hl-], a
    nop
    add b
    add sp, -$01
    db $eb
    nop
    add sp, -$09
    ld [$f000], a
    rst $28
    inc [hl]
    nop
    ldh a, [rIE]
    dec sp
    nop
    ldh a, [$fff7]
    ld a, [hl-]
    nop
    ld hl, sp-$11
    scf
    nop
    ld hl, sp-$01

jr_00c_633e:
    dec a
    nop
    ld hl, sp-$09

jr_00c_6342:
    inc a
    nop
    add b
    ld hl, sp-$08
    dec h
    jr nz, jr_00c_6342

    nop

jr_00c_634b:
    inc h
    jr nz, jr_00c_633e

    ld hl, sp+$23
    jr nz, jr_00c_6342

    nop
    ld [hl+], a
    jr nz, jr_00c_633e

    ld hl, sp+$21
    jr nz, jr_00c_6342

    nop

jr_00c_635b:
    jr nz, jr_00c_637d

    ldh [$fff8], a
    rra
    jr nz, jr_00c_6342

    nop
    ld e, $20
    add b
    ldh [$fff7], a
    rra
    jr nz, jr_00c_634b

jr_00c_636b:
    rst $38
    ld e, $20
    add sp, -$0f
    jp hl


    jr nz, jr_00c_635b

    ld sp, hl
    add sp, $20
    add sp, $01
    rst $20
    jr nz, jr_00c_636b

    ld sp, hl
    daa

jr_00c_637d:
    jr nz, @-$0e

jr_00c_637f:
    ld bc, $2026
    ld hl, sp-$07
    add hl, hl
    jr nz, jr_00c_637f

    ld bc, $2028
    add b
    ld hl, sp-$07
    ld sp, $f820

jr_00c_6390:
    ld bc, $2030
    ld hl, sp+$09
    cpl
    jr nz, @-$0e

    ld sp, hl
    ld l, $20
    ldh a, [rSB]
    dec l
    jr nz, jr_00c_6390

    add hl, bc
    inc l
    jr nz, @-$16

    ld sp, hl
    dec hl
    jr nz, jr_00c_6390

    ld bc, $202a
    add b
    ld hl, sp-$07
    add hl, sp
    jr nz, @-$06

jr_00c_63b1:
    ld bc, $2038
    ld hl, sp+$09
    scf
    jr nz, @-$0e

    ld sp, hl

jr_00c_63ba:
    ld [hl], $20
    ldh a, [rSB]
    dec [hl]
    jr nz, jr_00c_63b1

    add hl, bc
    inc [hl]
    jr nz, @-$16

    ld sp, hl
    inc sp
    jr nz, jr_00c_63b1

    ld bc, $2032
    add b
    add sp, -$07
    db $eb
    jr nz, jr_00c_63ba

    ld bc, $20ea
    ldh a, [$ff09]
    inc [hl]
    jr nz, @-$0e

    ld sp, hl
    dec sp
    jr nz, @-$0e

jr_00c_63de:
    ld bc, $203a
    ld hl, sp+$09
    scf
    jr nz, jr_00c_63de

    ld sp, hl
    dec a
    jr nz, @-$06

    ld bc, $203c
    add b
    ld a, [$4401]
    nop
    ld a, [$43f9]
    nop
    ldh a, [c]
    ld bc, $0042
    ldh a, [c]
    ld sp, hl
    ld b, c
    nop
    ldh [c], a
    ld bc, $003e
    ld [$4001], a
    nop
    ld [$3ff9], a
    nop
    add b
    ld hl, sp+$01
    ld c, e
    nop
    ld hl, sp-$07
    ld c, d
    nop
    ret c

    ld bc, $0045
    add sp, -$07
    ccf
    nop
    ldh [rSB], a
    ld b, [hl]
    nop
    add sp, $01
    ld b, a
    nop
    ldh a, [rSB]
    ld c, c
    nop
    ldh a, [$fff9]
    ld c, b
    nop
    add b
    rst $18
    db $fd
    ld c, h
    nop
    rst $30
    ld bc, $0052
    rst $30
    ld sp, hl
    ld d, c
    nop
    rst $28
    ld bc, $0050
    rst $28
    ld sp, hl
    ld c, a
    nop

jr_00c_6440:
    rst $20
    ld bc, $004e
    rst $20
    ld sp, hl
    ld c, l
    nop
    add b
    rst $30
    ld bc, $0058
    rst $30
    ld sp, hl
    ld d, a
    nop
    rst $28
    ld bc, $0056
    rst $28
    ld sp, hl
    ld d, l
    nop
    rst $20
    ld bc, $0054
    rst $20
    ld sp, hl
    ld d, e
    nop
    add b
    rst $20
    ld bc, $0054
    rst $20
    ld sp, hl
    ld d, e
    nop
    rst $30
    ld bc, $005c
    rst $30
    ld sp, hl
    ld e, e
    nop
    rst $28
    ld bc, $005a
    rst $28
    ld sp, hl
    ld e, c
    nop
    add b
    adc l
    ld h, h
    sbc [hl]
    ld h, h
    pop de
    ld h, h
    ldh [c], a
    ld h, h
    pop de
    ld h, h
    xor a
    ld h, h
    ret nz

    ld h, h
    pop de
    ld h, h
    ldh [c], a
    ld h, h
    ldh a, [c]
    nop
    ld hl, $f200
    ld hl, sp+$20
    nop
    ld a, [$8400]
    nop
    ld a, [$83f8]
    nop
    add b
    ei
    nop
    add [hl]
    nop
    ei
    ld hl, sp-$7b
    nop

jr_00c_64a6:
    di
    nop
    ld hl, $f300
    ld hl, sp+$20
    nop
    add b
    ldh a, [c]
    ld hl, sp+$21
    jr nz, jr_00c_64a6

    nop
    jr nz, jr_00c_64d7

    ld a, [$84f8]
    jr nz, @-$04

jr_00c_64bc:
    nop
    add e
    jr nz, jr_00c_6440

jr_00c_64c0:
    ei
    ld hl, sp-$7a
    jr nz, jr_00c_64c0

    nop
    add l
    jr nz, jr_00c_64bc

    ld hl, sp+$21
    jr nz, jr_00c_64c0

    nop
    jr nz, jr_00c_64f0

    add b
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$fff8]

jr_00c_64d7:
    add a
    nop
    ld hl, sp+$00
    adc h
    nop
    ld hl, sp-$08
    adc e
    nop
    add b
    ld hl, sp+$00
    adc d
    nop
    ld hl, sp-$08
    adc c
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$fff8]

jr_00c_64f0:
    add a
    nop
    add b
    inc de
    ld h, l
    jr nc, jr_00c_655c

    ld l, d
    ld h, l
    ld l, d
    ld h, l
    add a
    ld h, l
    xor h
    ld h, l
    pop de
    ld h, l
    ldh a, [c]
    ld h, l
    inc de
    ld h, [hl]
    jr c, jr_00c_656d

    ld e, l
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    sbc a
    ld h, [hl]
    cp h
    ld h, [hl]
    reti


    ld h, [hl]
    ldh a, [c]
    ld h, [hl]
    ld hl, sp+$00
    or d
    nop
    ld hl, sp-$08
    or c
    nop
    ldh a, [rP1]
    or b
    nop
    ldh a, [$fff8]
    xor a
    nop
    add sp, $00
    xor [hl]
    nop
    add sp, -$08
    xor l
    nop
    ldh [$fff8], a
    xor h
    nop
    add b
    inc bc
    ld sp, hl
    cp c
    nop
    ei
    nop
    cp b
    nop
    ei
    ld hl, sp-$49
    nop
    di
    nop
    or [hl]
    nop
    di
    ld hl, sp-$4b
    nop
    db $eb
    nop
    or h
    nop
    db $eb
    ld hl, sp-$4d
    nop
    add b
    db $fc
    nop
    push af
    nop
    inc b
    ld sp, hl
    cp a
    nop
    db $fc
    ld hl, sp-$42
    nop
    db $ec
    nop
    cp e

jr_00c_655c:
    nop
    db $ec
    ld hl, sp-$46
    nop
    db $f4
    nop
    cp l
    nop
    db $f4
    ld hl, sp-$44
    nop
    add b
    db $ec
    nop
    cp e

jr_00c_656d:
    nop
    db $ec
    ld hl, sp-$46
    nop
    inc b
    ld sp, hl
    call nz, $fc00
    nop
    jp $fc00


    ld hl, sp-$3e
    nop
    db $f4
    nop
    pop bc
    nop
    db $f4
    ld hl, sp-$40
    nop
    add b
    ld hl, sp+$00
    call $f800
    ld hl, sp-$34
    nop
    ldh a, [$ff08]
    rlc b
    ldh a, [rP1]
    jp z, $f000

    ld hl, sp-$37
    nop
    ldh [rP1], a
    push bc
    nop
    add sp, $08
    ret z

    nop
    add sp, $00
    rst $00
    nop
    add sp, -$08
    add $00
    add b
    ld a, [$d4fe]
    nop
    ld a, [$d3f6]
    nop
    ld a, [$d2ee]
    nop
    ldh a, [c]
    cp $d1
    nop
    ldh a, [c]
    or $d0
    nop
    ldh a, [c]
    xor $cf
    nop
    ld [$ceee], a
    nop
    ld [$0dfe], a
    nop
    ld [$0cf6], a
    nop
    add b
    ld a, [$d4fe]
    nop
    ld a, [$d9f6]
    nop
    ld a, [$d8ee]
    nop

jr_00c_65dd:
    ldh a, [c]
    cp $d7
    nop
    ldh a, [c]
    or $d6
    nop
    ldh a, [c]
    xor $d5
    nop
    ld [$0dfe], a
    nop
    ld [$0cf6], a
    nop
    add b
    ld sp, hl
    cp $df
    nop
    ld sp, hl
    or $de
    nop
    ld sp, hl
    xor $dd
    nop

jr_00c_65fe:
    pop af
    cp $dc
    nop
    pop af
    or $db
    nop
    pop af
    xor $da
    nop
    jp hl


    cp $0d
    nop
    jp hl


    or $0c
    nop
    add b
    ld hl, sp-$07
    call $f820

jr_00c_6618:
    ld bc, $20cc
    ldh a, [$fff1]
    sla b

jr_00c_661f:
    ldh a, [$fff9]
    jp z, $f020

    ld bc, $20c9
    ldh [$fff9], a
    push bc
    jr nz, @-$16

    pop af
    ret z

    jr nz, jr_00c_6618

    ld sp, hl
    rst $00
    jr nz, @-$16

    ld bc, $20c6

jr_00c_6637:
    add b
    ld a, [$d4fa]

jr_00c_663b:
    jr nz, jr_00c_6637

    ld [bc], a
    db $d3

jr_00c_663f:
    jr nz, jr_00c_663b

    ld a, [bc]
    jp nc, $f220

    ld a, [$20d1]
    ldh a, [c]
    ld [bc], a
    ret nc

    jr nz, jr_00c_663f

    ld a, [bc]
    rst $08
    jr nz, jr_00c_663b

    ld a, [bc]
    adc $20
    ld [$0dfa], a
    jr nz, @-$14

    ld [bc], a
    inc c
    jr nz, jr_00c_65dd

    ld a, [$d4fa]

jr_00c_6660:
    jr nz, @-$04

    ld [bc], a
    reti


    jr nz, jr_00c_6660

    ld a, [bc]
    ret c

    jr nz, @-$0c

    ld a, [$20d7]
    ldh a, [c]
    ld [bc], a
    sub $20
    ldh a, [c]
    ld a, [bc]
    push de
    jr nz, jr_00c_6660

    ld a, [$200d]
    ld [$0c02], a

jr_00c_667c:
    jr nz, jr_00c_65fe

    ld sp, hl
    ld a, [$20df]
    ld sp, hl
    ld [bc], a

jr_00c_6684:
    sbc $20
    ld sp, hl
    ld a, [bc]
    db $dd
    jr nz, jr_00c_667c

    ld a, [$20dc]
    pop af
    ld [bc], a
    db $db
    jr nz, jr_00c_6684

    ld a, [bc]
    jp c, $e920

    ld a, [$200d]
    jp hl


    ld [bc], a
    inc c
    jr nz, jr_00c_661f

    ld hl, sp+$01
    push hl
    nop
    ld hl, sp-$07
    db $e4
    nop
    add sp, -$07
    sub l
    nop
    ldh [rSB], a
    ldh [rP1], a
    add sp, $01
    pop hl
    nop
    ldh a, [rSB]
    db $e3
    nop
    ldh a, [$fff9]
    ldh [c], a
    nop
    add b
    rst $30
    ld bc, $00ec
    rst $30
    ld sp, hl
    db $eb
    nop
    rst $28
    ld bc, $00ea
    rst $28
    ld sp, hl
    jp hl


    nop
    rst $20
    ld bc, $00e8
    rst $20
    ld sp, hl
    rst $20
    nop
    rst $18
    ld bc, $00e6
    add b
    rst $20
    ld bc, $0096
    rst $20
    ld sp, hl
    sub l
    nop
    rst $30
    ld bc, $00f0
    rst $30
    ld sp, hl
    rst $28
    nop
    rst $28
    ld bc, $00ee
    rst $28
    ld sp, hl
    db $ed
    nop
    add b
    add sp, $01
    sub [hl]
    nop
    add sp, -$07
    sub l
    nop
    ldh a, [rSB]
    ldh a, [c]
    nop
    ldh a, [$fff9]
    pop af
    nop
    ld hl, sp+$01
    db $f4
    nop
    ld hl, sp-$07
    di
    nop
    add b
    inc de
    ld h, a
    ld b, l
    ld h, a
    ld e, [hl]
    ld h, a
    inc l
    ld h, a
    ld hl, sp+$00
    sub d
    nop
    ld hl, sp-$08
    sub c
    nop
    ldh a, [rP1]
    sub b
    nop
    ldh a, [$fff8]
    adc a
    nop
    add sp, $00
    adc [hl]
    nop
    add sp, -$08
    adc l
    nop
    add b
    ld hl, sp+$01
    sbc b
    nop
    ld hl, sp-$07
    sub a
    nop
    ldh a, [rSB]
    sub [hl]
    nop
    ldh a, [$fff9]
    sub l
    nop
    add sp, $01
    sub h
    nop
    add sp, -$07
    sub e
    nop
    add b
    xor $f0
    sbc e
    nop
    ld hl, sp-$04
    sbc [hl]
    nop
    ldh a, [rP1]
    sbc l
    nop
    ldh a, [$fff8]
    sbc h
    nop
    add sp, $00

jr_00c_6757:
    sbc d
    nop
    add sp, -$08

jr_00c_675b:
    sbc c
    nop
    add b
    xor $09
    sbc e
    jr nz, jr_00c_675b

    db $fd
    sbc [hl]
    jr nz, jr_00c_6757

    ld sp, hl
    sbc l
    jr nz, jr_00c_675b

    ld bc, $209c
    add sp, -$07
    sbc d
    jr nz, jr_00c_675b

    ld bc, ClearMem
    add b
    xor a
    ld h, a
    call z, $e967
    ld h, a
    ld a, [bc]
    ld l, b
    jp hl


    ld h, a
    ld a, [bc]
    ld l, b
    ld a, [bc]
    ld l, b
    dec hl
    ld l, b
    ld b, h
    ld l, b
    ld e, l
    ld l, b
    ld a, [hl]
    ld l, b
    ld e, l
    ld l, b
    ld a, [hl]
    ld l, b
    ld e, l
    ld l, b
    sbc a
    ld l, b
    cp b
    ld l, b
    pop de
    ld l, b
    ldh a, [c]
    ld l, b
    pop de
    ld l, b
    ldh a, [c]
    ld l, b
    pop de
    ld l, b
    inc de
    ld l, c
    jr nc, jr_00c_680e

    ld c, l
    ld l, c
    ld h, [hl]
    ld l, c
    ld c, l
    ld l, c
    ld h, [hl]
    ld l, c
    ld c, l
    ld l, c
    ld hl, sp+$09
    and l
    nop
    ld hl, sp+$01
    and h
    nop
    ld hl, sp-$07
    and e
    nop
    ldh a, [rSB]
    and d
    nop
    ldh a, [$fff9]
    and c
    nop
    add sp, $01
    and b
    nop
    add sp, -$07
    sbc a
    nop
    add b
    ld [$6301], a
    nop
    ld [$62f9], a
    nop
    ld hl, sp+$0a
    xor d
    nop
    ld hl, sp+$02
    xor c
    nop
    ld hl, sp-$06
    xor b
    nop
    ldh a, [rSC]
    and a
    nop
    ldh a, [$fffa]
    and [hl]
    nop
    add b
    db $eb
    rst $38
    ld h, e
    nop
    db $eb
    rst $30
    ld h, d
    nop
    ldh a, [$ff09]
    sub $00
    ld hl, sp+$09
    xor a
    nop
    ld hl, sp+$01
    xor [hl]
    nop
    ld hl, sp-$07
    xor l
    nop
    ldh a, [rSB]
    xor h
    nop
    ldh a, [$fff9]
    xor e
    nop
    add b
    db $eb
    rst $38
    ld h, e
    nop

jr_00c_680e:
    db $eb
    rst $30
    ld h, d
    nop
    ei
    ld [$00da], sp
    ei
    nop
    reti


    nop
    ei
    ld hl, sp-$4f
    nop
    di
    ld hl, sp-$50
    nop
    di
    ld [$00d8], sp
    di
    nop
    rst $10
    nop
    add b
    ld sp, hl
    rst $38
    or a
    nop
    ld sp, hl
    rst $30
    or [hl]
    nop
    pop af
    rst $38
    or l
    nop
    pop af
    rst $30
    or h
    nop
    jp hl


    rst $38
    or e
    nop
    jp hl


    rst $30
    or d
    nop
    add b
    jp hl


    rst $38
    ld bc, $e900
    rst $30
    nop
    nop
    ld sp, hl
    rst $38
    or a
    nop
    ld sp, hl
    rst $30
    cp d
    nop
    pop af
    rst $38
    cp c
    nop
    pop af
    rst $30
    cp b
    nop
    add b
    ld [$01fe], a
    nop
    ld [$00f6], a
    nop
    ld a, [$c006]
    nop
    ld a, [$bffe]
    nop
    ld a, [$bef6]
    nop
    ldh a, [c]

jr_00c_6872:
    ld b, $bd
    nop
    ldh a, [c]
    cp $bc
    nop
    ldh a, [c]
    or $bb
    nop
    add b
    ld a, [$c006]
    nop
    ld a, [$bffe]
    nop
    ldh a, [c]
    ld b, $bd
    nop
    ldh a, [c]
    cp $bc
    nop
    ld a, [$c2f6]
    nop
    ldh a, [c]

jr_00c_6893:
    or $c1
    nop
    ld [$01fe], a
    nop
    ld [$00f6], a

jr_00c_689d:
    nop
    add b
    ld sp, hl
    ld sp, hl
    or a
    jr nz, jr_00c_689d

    ld bc, $20b6
    pop af
    ld sp, hl
    or l
    jr nz, jr_00c_689d

    ld bc, $20b4
    jp hl


    ld sp, hl
    or e
    jr nz, jr_00c_689d

    ld bc, $20b2
    add b
    jp hl


    ld sp, hl
    ld bc, $e920
    ld bc, $2000

jr_00c_68c0:
    ld sp, hl
    ld sp, hl
    or a
    jr nz, @-$05

    ld bc, $20ba
    pop af
    ld sp, hl
    cp c
    jr nz, @-$0d

    ld bc, $20b8
    add b
    ld [$01fa], a

jr_00c_68d4:
    jr nz, jr_00c_68c0

    ld [bc], a
    nop

jr_00c_68d8:
    jr nz, jr_00c_68d4

    ldh a, [c]
    ret nz

jr_00c_68dc:
    jr nz, jr_00c_68d8

    ld a, [$20bf]
    ld a, [$be02]
    jr nz, jr_00c_68d8

    ldh a, [c]
    cp l
    jr nz, jr_00c_68dc

    ld a, [$20bc]
    ldh a, [c]
    ld [bc], a
    cp e
    jr nz, jr_00c_6872

    ld a, [$c0f2]

jr_00c_68f5:
    jr nz, @-$04

    ld a, [$20bf]
    ldh a, [c]
    ldh a, [c]
    cp l
    jr nz, @-$0c

    ld a, [$20bc]
    ld a, [$c202]
    jr nz, @-$0c

    ld [bc], a
    pop bc
    jr nz, jr_00c_68f5

    ld a, [$2001]
    ld [$0002], a
    jr nz, jr_00c_6893

    jp hl


    ld bc, $0049
    jp hl


    ld sp, hl
    ld c, b
    nop
    ld hl, sp+$09
    rst $00
    nop
    ld hl, sp+$01
    add $00
    ld hl, sp-$07
    push bc
    nop
    ldh a, [rSB]
    call nz, $f000
    ld sp, hl
    jp $8000


    ld hl, sp+$08
    rst $00
    nop
    ld hl, sp+$00
    call $f800
    ld hl, sp-$34
    nop
    ldh a, [rP1]
    rlc b
    ldh a, [$fff8]
    jp z, $e800

    ld bc, $00c9
    add sp, -$07
    ret z

    nop
    add b
    jp hl


    ld [bc], a
    rst $08
    nop
    jp hl


    ld a, [$00ce]
    pop af
    ld [bc], a
    pop de
    nop
    pop af
    ld a, [$00d0]
    ld sp, hl
    ld [bc], a
    db $d3
    nop
    ld sp, hl
    ld a, [$00d2]
    add b
    pop af
    ld [bc], a
    pop de
    nop
    jp hl


    ld [bc], a
    rst $08
    nop
    jp hl


    ld a, [$00ce]
    ld sp, hl
    ld [bc], a
    db $d3
    nop
    pop af
    ld a, [$00d4]
    ld sp, hl
    ld a, [$00d5]
    add b
    sub c
    ld l, c
    xor [hl]
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    db $d3
    ld l, c
    db $fc
    ld l, c
    sub c
    ld l, c
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp-$08
    rst $18
    nop
    ldh a, [rP1]
    sbc $00
    ldh a, [$fff8]
    db $dd
    nop
    add sp, $00
    call c, $e800
    ld hl, sp-$25
    nop
    add b
    nop
    rst $38
    db $fd
    nop
    ld hl, sp+$08
    add sp, $00
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    ldh a, [$ff08]
    push hl
    nop
    ldh a, [rP1]
    db $e4
    nop
    ldh a, [$fff8]
    db $e3
    nop
    add sp, $00
    ldh [c], a
    nop
    add sp, -$08
    pop hl
    nop
    add b
    ldh [rIE], a
    jp hl


    nop
    add sp, $08
    db $ec
    nop
    add sp, $00
    db $eb
    nop
    add sp, -$08
    ld [$f000], a
    ld [$00ef], sp
    ldh a, [rP1]
    xor $00
    ldh a, [$fff8]
    db $ed
    nop
    ld hl, sp+$08
    ldh a, [c]
    nop
    ld hl, sp+$00
    pop af
    nop
    ld hl, sp-$08
    ldh a, [rP1]
    add b
    ldh [rIE], a
    jp hl


    nop
    add sp, $08
    push af
    nop
    add sp, $00
    db $f4
    nop
    add sp, -$08
    di
    nop
    ldh a, [$ff08]
    ld hl, sp+$00
    ldh a, [rP1]
    rst $30
    nop
    ldh a, [$fff8]
    or $00
    ld hl, sp+$08
    ei
    nop
    ld hl, sp+$00
    ld a, [$f800]
    ld hl, sp-$07
    nop
    add b
    ld h, [hl]
    ld l, d
    ld c, l
    ld l, d
    ld a, a
    ld l, d
    ld c, l
    ld l, d
    cp l
    ld l, d
    sbc b
    ld l, d
    ldh [c], a
    ld l, d
    sbc b
    ld l, d
    inc l
    ld l, e
    rlca
    ld l, e
    ld d, c
    ld l, e
    rlca
    ld l, e
    sub a
    ld l, e
    halt
    ld l, e
    cp b
    ld l, e
    halt
    ld l, e
    ld c, l
    ld l, d
    sbc b
    ld l, d
    rlca
    ld l, e
    halt
    ld l, e
    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    add b
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    add b
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$8000], sp
    ld sp, hl
    nop
    jr nz, jr_00c_6a9c

jr_00c_6a9c:
    ld sp, hl
    ld hl, sp+$1f
    nop
    ld sp, hl
    ldh a, [rNR34]
    nop
    pop af
    nop
    dec e
    nop
    pop af
    ld hl, sp+$1c
    nop
    pop af
    ldh a, [rNR31]
    nop
    jp hl


    nop
    ld a, [de]
    nop
    jp hl


    ld hl, sp+$19
    nop
    jp hl


    ldh a, [rNR23]
    nop
    add b
    add sp, $00
    ld a, [de]
    nop
    add sp, -$08
    add hl, de
    nop
    add sp, -$10
    jr jr_00c_6ac9

jr_00c_6ac9:
    ldh a, [rP1]
    dec e
    nop
    ldh a, [$fff8]
    inc e
    nop
    ldh a, [$fff0]
    dec de
    nop
    ld hl, sp-$10
    ld e, $00
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp-$08
    inc hl
    nop
    add b
    ld hl, sp-$10
    ld e, $00
    ldh a, [rP1]
    dec e
    nop
    ldh a, [$fff8]
    inc e
    nop
    ldh a, [$fff0]
    dec de
    nop
    ld hl, sp+$00
    ld [hl+], a
    nop
    ld hl, sp-$08
    ld hl, $e800
    nop
    ld a, [de]
    nop
    add sp, -$08
    add hl, de
    nop
    add sp, -$10
    jr jr_00c_6b06

jr_00c_6b06:
    add b
    ld sp, hl
    ld sp, hl

jr_00c_6b09:
    jr nz, jr_00c_6b2b

    ld sp, hl
    ld bc, $201f
    ld sp, hl
    add hl, bc
    ld e, $20
    pop af
    ld sp, hl
    dec e
    jr nz, jr_00c_6b09

    ld bc, $201c
    pop af
    add hl, bc
    dec de
    jr nz, jr_00c_6b09

    ld sp, hl
    ld a, [de]
    jr nz, @-$15

    ld bc, $2019
    jp hl


    add hl, bc
    jr jr_00c_6b4b

jr_00c_6b2b:
    add b
    add sp, -$07
    ld a, [de]
    jr nz, @-$16

    ld bc, $2019
    add sp, $09
    jr jr_00c_6b58

    ldh a, [$fff9]
    dec e
    jr nz, @-$0e

jr_00c_6b3d:
    ld bc, $201c
    ldh a, [$ff09]
    dec de
    jr nz, jr_00c_6b3d

jr_00c_6b45:
    add hl, bc
    ld e, $20
    ld hl, sp-$07

jr_00c_6b4a:
    inc h

jr_00c_6b4b:
    jr nz, jr_00c_6b45

    ld bc, $2023
    add b
    ld hl, sp+$09
    ld e, $20
    ldh a, [$fff9]
    dec e

jr_00c_6b58:
    jr nz, jr_00c_6b4a

jr_00c_6b5a:
    ld bc, $201c
    ldh a, [$ff09]
    dec de
    jr nz, jr_00c_6b5a

    ld sp, hl
    ld [hl+], a
    jr nz, @-$06

    ld bc, $2021
    add sp, -$07
    ld a, [de]
    jr nz, @-$16

    ld bc, $2019
    add sp, $09
    jr jr_00c_6b95

    add b
    ld sp, hl
    ld bc, $0011
    ld sp, hl
    ld sp, hl
    stop
    pop af
    ld bc, $000f
    pop af
    ld sp, hl
    ld c, $00
    jp hl


    ld bc, $000d
    jp hl


    ld sp, hl
    inc c
    nop
    pop hl
    ld bc, $000b
    pop hl
    ld sp, hl
    ld a, [bc]

jr_00c_6b95:
    nop
    add b
    ldh a, [rSB]
    rrca
    nop
    ld hl, sp+$01
    inc d
    nop
    ld hl, sp-$07
    inc de
    nop
    ldh a, [$fff9]
    ld [de], a
    nop
    add sp, $01
    dec c
    nop
    add sp, -$07
    inc c
    nop
    ldh [rSB], a
    dec bc
    nop
    ldh [$fff9], a
    ld a, [bc]
    nop
    add b
    ldh a, [rSB]
    rrca
    nop
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [$fff9]
    dec d
    nop
    add sp, $01
    dec c
    nop
    add sp, -$07
    inc c
    nop
    ldh [rSB], a
    dec bc
    nop
    ldh [$fff9], a
    ld a, [bc]
    nop
    add b
    ld a, [de]
    ld l, h
    ld bc, $336c
    ld l, h
    ld bc, $716c
    ld l, h
    ld c, h
    ld l, h
    sub [hl]
    ld l, h
    ld c, h
    ld l, h
    ldh [$ff6c], a
    cp e
    ld l, h
    dec b
    ld l, l
    cp e
    ld l, h
    ld c, e
    ld l, l
    ld a, [hl+]
    ld l, l
    ld l, h
    ld l, l
    ld a, [hl+]
    ld l, l
    ld bc, $4c6c
    ld l, h
    cp e
    ld l, h
    ld a, [hl+]
    ld l, l
    ld sp, hl
    nop
    jr c, jr_00c_6c05

jr_00c_6c05:
    ld sp, hl
    ld hl, sp+$37
    nop
    pop af
    nop
    ld [hl], $00
    pop af
    ld hl, sp+$35
    nop
    jp hl


    nop
    inc [hl]
    nop
    jp hl


    ld hl, sp+$33
    nop
    add b
    ld hl, sp+$00
    ld a, [hl-]
    nop
    ld hl, sp-$08
    add hl, sp
    nop
    ldh a, [rP1]
    ld [hl], $00
    ldh a, [$fff8]
    dec [hl]
    nop
    add sp, $00
    inc [hl]
    nop
    add sp, -$08
    inc sp
    nop
    add b
    ld hl, sp+$00
    inc a
    nop
    ld hl, sp-$08
    dec sp
    nop
    ldh a, [rP1]
    ld [hl], $00
    ldh a, [$fff8]
    dec [hl]
    nop
    add sp, $00
    inc [hl]
    nop
    add sp, -$08
    inc sp
    nop
    add b
    ld sp, hl
    ld hl, sp+$2e
    nop
    ld sp, hl
    ldh a, [$ff2d]
    nop
    pop af
    ld hl, sp+$2c
    nop
    pop af
    ldh a, [$ff2b]
    nop
    ld sp, hl
    nop
    jr nz, jr_00c_6c60

jr_00c_6c60:
    pop af
    nop
    dec e
    nop
    jp hl


    nop
    ld a, [de]
    nop
    jp hl


    ld hl, sp+$2a
    nop
    jp hl


    ldh a, [$ff29]
    nop
    add b
    ld hl, sp-$08
    cpl
    nop
    ld hl, sp+$00
    jr nc, jr_00c_6c79

jr_00c_6c79:
    ld hl, sp-$10
    dec l
    nop
    ldh a, [$fff8]
    inc l
    nop
    ldh a, [$fff0]
    dec hl
    nop

jr_00c_6c85:
    ldh a, [rP1]
    dec e
    nop
    add sp, $00
    ld a, [de]
    nop
    add sp, -$08
    ld a, [hl+]
    nop
    add sp, -$10
    add hl, hl
    nop
    add b
    ld hl, sp+$00
    ld [hl-], a
    nop
    ld hl, sp-$08
    ld sp, $f800
    ldh a, [$ff2d]
    nop
    ldh a, [$fff8]
    inc l
    nop
    ldh a, [$fff0]
    dec hl
    nop

jr_00c_6caa:
    ldh a, [rP1]
    dec e
    nop
    add sp, $00
    ld a, [de]
    nop
    add sp, -$08
    ld a, [hl+]

jr_00c_6cb5:
    nop
    add sp, -$10
    add hl, hl
    nop
    add b
    ld sp, hl
    ld bc, $202e
    ld sp, hl
    add hl, bc

jr_00c_6cc1:
    dec l
    jr nz, jr_00c_6cb5

    ld bc, $202c
    pop af
    add hl, bc
    dec hl
    jr nz, @-$05

    ld sp, hl
    jr nz, @+$22

    pop af
    ld sp, hl
    dec e
    jr nz, @-$15

    ld sp, hl
    ld a, [de]
    jr nz, jr_00c_6cc1

    ld bc, $202a
    jp hl


    add hl, bc

jr_00c_6cdd:
    add hl, hl
    jr nz, jr_00c_6c60

    ld hl, sp+$01
    cpl
    jr nz, jr_00c_6cdd

jr_00c_6ce5:
    ld sp, hl
    jr nc, jr_00c_6d08

    ld hl, sp+$09
    dec l
    jr nz, jr_00c_6cdd

    ld bc, $202c
    ldh a, [$ff09]
    dec hl
    jr nz, jr_00c_6ce5

    ld sp, hl
    dec e
    jr nz, @-$16

    ld sp, hl
    ld a, [de]
    jr nz, jr_00c_6ce5

    ld bc, $202a
    add sp, $09

jr_00c_6d02:
    add hl, hl
    jr nz, jr_00c_6c85

    ld hl, sp-$07
    ld [hl-], a

jr_00c_6d08:
    jr nz, jr_00c_6d02

jr_00c_6d0a:
    ld bc, $2031
    ld hl, sp+$09
    dec l
    jr nz, jr_00c_6d02

    ld bc, $202c
    ldh a, [$ff09]
    dec hl
    jr nz, jr_00c_6d0a

    ld sp, hl
    dec e
    jr nz, @-$16

    ld sp, hl
    ld a, [de]
    jr nz, jr_00c_6d0a

    ld bc, $202a
    add sp, $09
    add hl, hl
    jr nz, jr_00c_6caa

    pop af
    ld bc, $000f
    pop af
    ld sp, hl
    ld c, $00
    ld sp, hl
    ld bc, $0011
    ld sp, hl
    ld sp, hl
    stop
    jp hl


    ld bc, $0028
    jp hl


    ld sp, hl
    daa
    nop
    pop hl
    ld bc, $0026
    pop hl
    ld sp, hl
    dec h
    nop
    add b
    ldh a, [$fff9]
    ld [de], a
    nop
    ld hl, sp+$01
    inc d
    nop
    ld hl, sp-$07
    inc de
    nop
    ldh a, [rSB]
    rrca
    nop
    add sp, $01
    jr z, jr_00c_6d5f

jr_00c_6d5f:
    add sp, -$07
    daa
    nop
    ldh [rSB], a
    ld h, $00
    ldh [$fff9], a
    dec h
    nop
    add b
    ldh a, [$fff9]
    dec d
    nop
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    rrca
    nop
    add sp, $01
    jr z, jr_00c_6d80

jr_00c_6d80:
    add sp, -$07
    daa
    nop
    ldh [rSB], a
    ld h, $00
    ldh [$fff9], a
    dec h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    nop
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $1100

    nop
    ld h, c
    nop
    ld b, h
    nop
    ld [hl-], a
    nop
    stop
    sub e
    nop
    inc sp
    nop
    ld bc, $8200
    nop
    rla
    nop
    ld a, b
    nop
    ld b, h
    nop
    ld sp, $9200
    nop
    ld [bc], a
    nop
    ld hl, $5000
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld bc, $6b00
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0502
    ld b, b
    ld c, h
    nop
    ld a, [de]
    ld a, h
    nop
    nop
    ld [hl], d
    nop
    ld [de], a
    nop
    jr nc, jr_00c_6de9

jr_00c_6de9:
    and b
    nop
    ld [hl], b
    nop
    inc hl
    nop
    add d
    nop
    stop
    ld bc, $6b00
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ld d, b
    nop
    ld bc, $af00
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc bc
    nop
    ld d, e
    nop
    ld d, e
    nop
    jp c, Jump_000_2400

    nop
    add e
    nop
    ld d, b
    nop
    call Call_000_1700
    nop
    and b
    nop
    ld [hl-], a
    nop
    ld [de], a
    nop
    sub e
    nop
    jr nc, jr_00c_6e4b

jr_00c_6e4b:
    ld b, h
    nop
    jp c, $0200

    nop
    add e
    nop
    ld hl, $0100
    nop
    ld b, b
    nop
    nop
    nop
    jp c, $3100

    nop
    sub d
    nop
    sub e
    nop
    inc [hl]
    nop
    stop
    ld hl, $3300
    nop
    reti


    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld h, h
    nop
    sub e
    nop
    inc [hl]
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld [de], a
    nop
    ld hl, $3300
    nop
    nop
    nop
    and e
    nop
    add d
    nop
    stop
    add b
    nop
    jr nz, jr_00c_6e97

jr_00c_6e97:
    reti


    nop
    xor a
    nop
    inc c
    nop
    ld c, $00
    or c
    nop
    stop
    sub h
    nop
    jr nc, jr_00c_6ea7

jr_00c_6ea7:
    sub e
    nop
    jr nc, jr_00c_6eab

jr_00c_6eab:
    add b
    nop
    inc [hl]
    nop
    add c
    nop
    ld b, c
    nop
    ld de, $3300
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    nop
    nop
    reti


    nop
    call Call_000_1700
    nop
    jr nc, jr_00c_6ed1

jr_00c_6ed1:
    ld sp, $a000
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_00c_6edf

jr_00c_6edf:
    or c
    nop
    stop
    sub h
    nop
    cp l
    nop
    inc c
    nop
    ld c, $00
    or c
    nop
    stop
    sub h
    nop
    and h
    nop
    ld b, h
    nop
    inc d
    nop
    inc [hl]
    nop
    cp d
    nop
    ld [hl], d
    nop
    jp c, $b100

    nop
    sub b
    nop
    ld b, e
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    nop
    nop
    sub e
    nop
    inc h
    nop
    ld [bc], a
    nop
    jp c, $cd00

    nop
    rla
    nop
    ld b, h
    nop
    rlca
    nop
    jp nz, Jump_00c_4100

    nop
    add $00
    sub e
    nop
    jr nc, jr_00c_6f2f

jr_00c_6f2f:
    stop
    ld b, b
    nop
    inc h
    nop
    add e
    nop
    inc [hl]
    nop
    ld h, h
    nop
    ld de, $6100
    nop
    and b
    nop
    ld e, b
    nop
    dec [hl]
    nop
    rla
    nop
    add hl, hl
    nop
    ld b, b
    nop
    ld b, h
    nop
    stop
    ld b, b
    nop
    ld l, e
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld d, l
    nop
    adc c
    nop
    ld a, d
    nop
    ld l, d
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_00c_6f6d

jr_00c_6f6d:
    and b
    nop
    reti


    nop
    nop
    nop
    jr nc, jr_00c_6f75

jr_00c_6f75:
    add b
    nop
    ld hl, $1200
    nop
    ld de, $3000
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    inc de
    nop
    ld bc, $0300
    nop
    ld bc, $2100
    nop
    sub b
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld b, b
    nop
    or e
    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    ld bc, $3300
    nop
    ld [hl], e
    nop
    stop
    add d
    nop
    ld b, h
    nop
    stop
    sub e
    nop
    inc sp
    nop
    ld l, e
    nop
    xor a
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld a, d
    nop
    sub h
    nop
    jp c, Jump_00c_6300

    nop
    and b
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld d, b
    nop
    inc h
    nop
    add e
    nop
    ld [de], a
    nop
    add b
    nop
    ld bc, $ae00
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    stop
    sub h
    nop
    jr nc, jr_00c_6ffd

jr_00c_6ffd:
    sub h
    nop
    ld b, b
    nop
    inc d
    nop
    inc [hl]
    nop
    ld [hl], d
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    inc h
    nop
    add e
    nop
    ld [hl], d
    nop
    add c
    nop
    ld h, h
    nop
    reti


    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_00c_7029

jr_00c_7029:
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, $1400

    nop
    ld b, h
    nop
    xor h
    nop
    xor [hl]
    nop
    cp $fe
    ld bc, $0406
    ld b, b
    ld c, h
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    and h
    nop
    sub h
    nop
    ld b, h
    nop
    add hl, bc
    nop
    ld c, c
    nop
    ld [hl], h
    nop
    inc b
    nop
    inc [hl]
    nop
    ld hl, $3000
    nop
    ld b, h
    nop
    ld d, b
    nop
    jp c, $af00

    nop
    xor a
    nop
    ld d, b
    nop
    ld bc, $af00
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld a, h
    nop
    nop
    ld h, b
    nop
    nop
    nop
    ld l, d
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    or c
    nop
    ld de, $4000
    nop
    rst $18
    nop
    ld d, b
    nop
    sub e
    nop
    inc de
    nop
    sub h
    nop
    ld l, d
    nop
    ld l, d
    nop
    and h
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    push bc
    nop
    ld b, c
    nop
    reti


    nop
    inc d
    nop
    ld b, h
    nop
    add hl, bc
    nop
    ld c, c
    nop
    ld [hl], h
    nop
    nop
    nop
    and e
    nop
    add d
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc bc
    nop
    sub e
    nop
    ld l, e
    nop
    inc b
    nop
    stop
    ld b, e
    nop
    ld b, b
    nop
    sub h
    nop
    inc sp
    nop
    ld bc, $8000
    nop
    ld b, b
    nop
    ld bc, $7300
    nop
    ld [hl], d
    nop
    jp c, Jump_000_2400

    nop
    ld b, h
    nop
    stop
    ld [hl], e
    nop
    add c
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    or c
    nop
    ld de, $4000
    nop
    rst $18
    nop
    cp l
    nop
    ld bc, $3300
    nop
    ld b, e
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    add $00
    sub e
    nop
    add $00
    ld a, d
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld [bc], a
    nop
    inc h
    nop
    ld [hl-], a
    nop
    ld de, $4100
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld a, d
    nop
    sub h
    nop
    ld h, h
    nop
    nop
    nop
    sub e
    nop
    and e
    nop
    ld b, b
    nop
    ld bc, $da00
    nop
    or b
    nop
    ld a, d
    nop
    sub h
    nop
    ld b, e
    nop
    sub h
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    or c
    nop
    sub b
    nop
    ld l, d
    nop
    ld h, b
    nop
    jr nc, jr_00c_717d

jr_00c_717d:
    ld bc, $3200
    nop
    stop
    inc b
    nop
    nop
    nop
    ld bc, $2100
    nop
    ld h, b
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jr nz, jr_00c_7195

jr_00c_7195:
    ld a, d
    nop
    ld [hl], d
    nop
    inc b
    nop
    ld a, d
    nop
    ld b, b
    nop
    nop
    nop
    ld a, d
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, d
    nop
    xor h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld a, h
    nop
    nop
    nop
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $1100

    nop
    ld b, h
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld [hl], d
    nop
    add d
    nop
    ld b, c
    nop
    xor a
    nop
    xor a
    nop
    inc d
    nop
    add e
    nop
    ld [hl], h
    nop
    ld h, c
    nop
    ld [hl-], a
    nop
    inc de
    nop
    jr nc, jr_00c_71ed

jr_00c_71ed:
    ld b, h
    nop
    jp c, $1100

    nop
    ld h, c
    nop
    ld b, c
    nop
    nop
    nop
    and e
    nop
    add d
    nop
    jp c, $ff00

Call_00c_7200:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    cp [hl]
    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    ld l, e
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    inc d
    nop
    ld b, h
    nop
    dec bc
    nop
    ld b, e
    nop
    sub h
    nop
    ld [hl], h
    nop
    reti


    nop
    ld h, b
    nop
    inc [hl]
    nop
    ld h, e
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    stop
    ld b, h
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    rra
    nop
    call Call_000_3500
    nop
    sbc c
    nop
    ld [hl], h
    nop
    inc b
    nop
    inc hl
    nop
    call nz, $d900
    nop
    ld l, l
    nop
    ld de, $9000
    nop
    sub h
    nop
    inc hl
    nop
    add d
    nop
    ld l, [hl]
    nop
    cp l
    nop
    ld de, $8200
    nop
    or h
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld b, b
    nop
    stop
    ld b, b
    nop
    stop
    xor a
    nop
    and b
    nop
    sub h
    nop
    call nz, $9300
    nop
    jr nc, jr_00c_72b7

jr_00c_72b7:
    ld [hl], d
    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    ld b, h
    nop
    jp c, Jump_000_2400

    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    ld l, d
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    and h
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    push bc
    nop
    inc [hl]
    nop
    ld bc, $0200
    nop
    ld [hl], e
    nop
    inc de
    nop
    cp l
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld bc, $a000
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    sbc l
    call z, $cc9e
    sbc a
    call z, $cca0
    and c
    call z, $cca2
    and e
    call z, Call_000_0074
    ld [hl], b
    nop
    add h
    nop
    ld [bc], a
    nop
    jp c, $af00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc hl
    nop
    stop
    ld bc, $4100
    nop
    inc c
    nop
    ld [hl-], a
    nop
    inc [hl]
    nop
    ld b, b
    nop
    ld bc, $6a00
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ld de, $3100
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    reti


    nop
    dec b
    nop
    ld b, $00
    jr c, jr_00c_736d

jr_00c_736d:
    ld h, a
    nop
    or c
    nop
    sub b
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    cp l
    nop
    ld d, b
    nop
    ld h, b
    nop
    jr nc, jr_00c_738f

jr_00c_738f:
    ld b, h
    nop
    jp c, Jump_000_1000

    nop
    add b
    nop
    cp d
    nop
    ld b, c
    nop
    ld de, $7400
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    reti


    nop
    and b
    nop
    sub h
    nop
    call nz, $8200
    nop
    sub h
    nop
    or c
    nop
    sub b
    nop
    or h
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    and b
    nop
    sub h
    nop
    call nz, $9300
    nop
    inc sp
    nop
    ld bc, $3000
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    and b
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    ld h, b
    nop
    cp d
    nop
    ld h, b
    nop
    cp d
    nop
    or c
    nop
    sub b
    nop
    ld b, h
    nop
    db $e4
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc d
    nop
    add e
    nop
    cp l
    nop
    ld d, b
    nop
    ld h, b
    nop
    cp d
    nop
    ld h, b
    nop
    cp d
    nop
    reti


    nop
    ld [hl], e
    nop
    ld hl, $4400
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    reti


    nop
    ld h, b
    nop
    stop
    inc hl
    nop
    add d
    nop
    ld [hl], e
    nop
    inc de
    nop
    ld b, c
    nop
    ld d, b
    nop
    ld bc, $1000
    nop
    sub h
    nop
    ld b, h
    nop
    db $e4
    nop
    jp c, $af00

    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    cp l
    nop
    ld d, b
    nop
    ld h, b
    nop
    jr nc, jr_00c_7473

jr_00c_7473:
    ld b, h
    nop
    jp c, Jump_000_1000

    nop
    add b
    nop
    cp d
    nop
    ld b, c
    nop
    ld de, $7400
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    reti


    nop
    and b
    nop
    sub h
    nop
    call nz, $8200
    nop
    sub h
    nop
    or c
    nop
    sub b
    nop
    or h
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld [bc], a
    nop
    ld hl, $7400
    nop
    stop
    sub e
    nop
    inc sp
    nop
    ld bc, $8200
    nop
    stop
    or d
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, Call_000_0034
    ld [bc], a
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    and [hl]
    ld a, h
    nop
    nop
    ld b, [hl]
    nop
    ld a, b
    nop
    add hl, sp
    nop
    add [hl]
    nop
    ld [hl], h
    nop
    stop
    sub e
    nop
    inc sp
    nop
    ld bc, $8200
    nop
    stop
    or d
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, Call_000_00fd
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    jp z, Jump_000_007c

    nop
    jr nc, jr_00c_7551

jr_00c_7551:
    and b
    nop
    ld [hl], b
    nop
    ld hl, $3000
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld d, c
    nop
    add h
    nop
    jr nz, jr_00c_756b

jr_00c_756b:
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $ccb0
    rlc b
    adc c
    nop
    sbc b
    nop
    rla
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp $7c
    nop
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    ld hl, $3000
    nop
    ld hl, $9100
    nop
    ld [bc], a
    nop
    stop
    ld [de], a
    nop
    add $00
    ld [hl-], a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    and h
    nop
    ld [bc], a
    nop
    inc de
    nop
    ld bc, $ad00
    call z, $ccae
    xor a
    call z, $ccb0
    or c
    call z, Call_000_00de
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld a, l
    nop
    nop
    or c
    nop
    jr nc, jr_00c_75eb

jr_00c_75eb:
    ld [de], a
    nop
    ld b, h
    nop
    inc b
    nop
    inc b
    nop
    ld de, $2000
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $ccb0
    or c
    call z, $ccb2
    or e
    call z, $ccb4
    or l
    call z, Call_000_008f
    ld b, h
    nop
    ld bc, $0300
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld [bc], a
    nop
    ld hl, $4400
    nop
    jr nz, jr_00c_763b

jr_00c_763b:
    ld bc, $1400
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    cp [hl]
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
    xor a
    nop
    xor a
    nop
    xor l

jr_00c_766e:
    call z, $ccae
    xor a
    call z, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    ld a, l
    nop
    nop
    ld hl, $9200
    nop
    or c
    nop
    ld de, $9400
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    jr z, jr_00c_766e

    add hl, hl
    cp c
    ld a, [hl+]
    cp c
    dec hl
    cp c
    inc l
    cp c
    ld l, $00
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld a, l
    nop
    nop
    ld hl, $0000
    nop
    ld [hl], e
    nop
    inc hl
    nop
    ld hl, $2200
    nop
    ld [bc], a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld a, l
    nop
    nop
    ld sp, $1000
    nop
    add b
    nop
    ld b, h
    nop
    ld de, $4400
    nop
    ld h, c
    nop
    ld [hl], h
    nop
    jr nc, jr_00c_7729

jr_00c_7729:
    rst $00
    nop
    jr nc, jr_00c_772d

jr_00c_772d:
    stop
    or d
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    sbc $00
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    add hl, de
    nop
    adc c
    nop
    call $9800
    nop
    rla
    nop
    add a
    nop
    and b
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_00c_777b

jr_00c_777b:
    or c
    nop
    stop
    sub h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $ccb0
    or c
    nop
    stop
    sub h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld b, d
    nop
    ldh [c], a
    nop
    ld l, d
    nop
    ld [hl-], a
    nop
    ld bc, $4100
    nop
    inc b
    nop
    ld bc, $3200
    nop
    ld de, $7200
    nop
    sub e
    nop
    jr nc, jr_00c_77c9

jr_00c_77c9:
    stop
    ld l, d
    nop
    ld l, d
    nop
    ld bc, $3100
    nop
    ld b, c
    nop
    sub h
    nop
    ld h, b
    nop
    inc bc
    nop
    ld b, h
    nop
    reti


    nop
    inc b
    nop
    inc [hl]
    nop
    inc d
    nop
    or c
    nop
    sub b
    nop
    ld b, h
    nop
    jp c, $ae00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc h
    nop
    ld b, h
    nop
    ld sp, $9200
    nop
    ld [bc], a
    nop
    ld hl, $bd00
    nop
    reti


    nop
    inc d
    nop
    add e
    nop
    stop
    add b
    nop
    ld h, h
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    ld [hl], d
    nop
    add h
    nop
    ld hl, $1200
    nop
    jr nc, jr_00c_7831

jr_00c_7831:
    ld b, h
    nop
    ld h, d
    nop
    or h
    nop
    ld l, d
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld l, d
    nop
    ld b, b
    nop
    sub h
    nop
    inc [hl]
    nop
    ld hl, $3000
    nop
    inc d
    nop
    inc [hl]
    nop
    or c
    nop
    sub b
    nop
    jp c, $af00

    nop
    xor a
    nop
    ld [hl], b
    nop
    add d
    nop
    ld h, h
    nop
    sub h
    nop
    or c
    nop
    sub b
    nop
    ld b, b
    nop
    reti


    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    jp c, $af00

    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    ld d, b
    nop
    reti


    nop
    ld de, $3200
    nop
    ld bc, $1000
    nop
    inc [hl]
    nop
    inc b
    nop
    ld h, h
    nop
    sub e
    nop
    inc [hl]
    nop
    sub e
    nop
    jr nc, jr_00c_78bf

jr_00c_78bf:
    sub h
    nop
    or c
    nop
    sub b
    nop
    and b
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld h, b
    nop
    ld bc, $4100
    nop
    ld sp, $7400
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    ld de, $4100
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    jr nc, jr_00c_790f

jr_00c_790f:
    ld b, h
    nop
    stop
    ld b, h
    nop
    db $e4
    nop
    ld l, e
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc h
    nop
    ld b, h
    nop
    ld sp, $9200
    nop
    ld [bc], a
    nop
    ld hl, $bd00
    nop
    reti


    nop
    inc d
    nop
    add e
    nop
    stop
    add b
    nop
    ld h, h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ret z

    nop
    ld [de], a
    nop
    or c
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    ld [hl], d
    nop
    add h
    nop
    ld hl, $1200
    nop
    jr nc, jr_00c_7961

jr_00c_7961:
    ld b, h
    nop
    ld h, d
    nop
    or h
    nop
    ld l, d
    nop
    ld l, d
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    inc b
    nop
    inc sp
    nop
    sub h
    nop
    ld de, $a000
    nop
    ld [hl], d
    nop
    ld [de], a
    nop
    ld b, b
    nop
    sub e
    nop
    inc sp
    nop
    reti


    nop
    ld [hl], d
    nop
    stop
    sub e
    nop
    jr nc, jr_00c_7995

jr_00c_7995:
    ld [hl], e
    nop
    jr nc, jr_00c_7999

jr_00c_7999:
    ld b, h
    nop
    ld hl, $6100
    nop
    ld b, c
    nop
    ld hl, $3300
    nop
    ld bc, $3000
    nop
    ld b, h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld h, h
    nop
    ld b, h
    nop
    jp c, $af00

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    jr nc, jr_00c_79c5

jr_00c_79c5:
    ld h, b
    nop
    ld b, c
    nop
    ld d, b
    nop
    inc d
    nop
    sub h
    nop
    ld b, b
    nop
    xor a
    nop
    ld b, h
    nop
    sub h
    nop
    push bc
    nop
    add c
    nop
    ld hl, $3000
    nop
    xor a
    nop
    xor a
    nop
    dec bc
    nop
    sbc h
    nop
    and b
    nop
    nop
    nop
    sub e
    nop
    inc sp
    nop
    ld h, h
    nop
    ld bc, $0100
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld d, b
    nop
    ld b, e
    nop
    ld [hl], h
    nop
    ld b, h
    nop
    call nz, Call_000_2200
    nop
    ld b, h
    nop
    ld d, b
    nop
    reti


    nop
    rst $18
    nop
    and e
    nop
    sub h
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_00c_7a2d

jr_00c_7a2d:
    add b
    nop
    cp d
    nop
    add e
    nop
    ld b, c
    nop
    cp l
    nop
    ld h, h
    nop
    reti


    nop
    ld d, c
    nop
    ld [hl-], a
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld [hl], e
    nop
    ld a, d
    nop
    ld bc, $da00
    nop
    ld d, b
    nop
    add e
    nop
    inc sp
    nop
    ld [hl], d
    nop
    stop
    sub e
    nop
    jr nc, jr_00c_7a71

jr_00c_7a71:
    ld [hl], d
    nop
    ld b, e
    nop
    ld l, d
    nop
    xor a
    nop
    xor a
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    ld sp, $9000
    nop
    sub h
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld b, $00
    rlc b
    ld sp, $9000
    nop
    sub h
    nop
    ld h, h
    nop
    reti


    nop
    dec b
    nop
    sbc c
    nop
    ld sp, $9000
    nop
    sub h
    nop
    ld h, h
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    ld [de], a
    nop
    add e
    nop
    call nz, Call_00c_7200
    nop
    stop
    sub e
    nop
    jr nc, jr_00c_7ad5

jr_00c_7ad5:
    ld b, h
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld a, d
    nop
    xor h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    nop
    nop
    add b
    nop
    reti


    nop
    ld h, h
    nop
    ld [bc], a
    nop
    inc d
    nop
    sub h
    nop
    ld b, b
    nop
    or c
    nop
    stop
    sub h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    inc h
    nop
    add h
    nop
    inc h
    nop
    add h
    nop
    xor a
    nop
    stop
    inc bc
    nop
    add c
    nop
    ld h, b
    nop
    ld hl, $9200
    nop
    ld [bc], a
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    nop
    nop
    add b
    nop
    reti


    nop
    and d
    nop
    ld [bc], a
    nop
    or e
    nop
    sub h
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_00c_7b65

jr_00c_7b65:
    ld h, h
    nop
    ld [hl+], a
    nop
    or d
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld de, $3000
    nop
    ld b, h
    nop
    ld l, e
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld b, b
    nop
    ld [hl-], a
    nop
    ld b, h
    nop
    ld [hl], d
    nop
    or h
    nop
    add b
    nop
    sub e
    nop
    inc sp
    nop
    ld de, $8300
    nop
    ld bc, $7200
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    ld [bc], a
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    ld d, h
    nop
    ld hl, $b400
    nop
    add b
    nop
    and b
    nop
    ld de, $8300
    nop
    ld bc, $ba00
    nop
    ld b, b
    nop
    jp c, Logo

    nop
    ld [hl-], a
    nop
    stop
    ld d, b
    nop
    reti


    nop
    nop
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld hl, $4100
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld h, c
    nop
    jr nc, jr_00c_7c0b

jr_00c_7c0b:
    ld bc, $4000
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    rst $38
    rst $38
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_00c_7c3c

    ld hl, $b8f8
    ld a, [hl]
    cp $0c
    jr z, jr_00c_7c2e

    inc hl
    ld a, [hl]
    cp $0c
    jr nz, jr_00c_7c34

jr_00c_7c2e:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00c_7c34:
    xor a
    ld [$b8a4], a
    ld [$ba39], a
    ret


jr_00c_7c3c:
    ld a, $ff
    ld [$ba39], a
    ret


    ld hl, $b8f8
    ld a, [hl]
    cp $0e
    jr z, jr_00c_7c50

    inc hl
    ld a, [hl]
    cp $0e
    jr nz, jr_00c_7c56

jr_00c_7c50:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00c_7c56:
    xor a
    ld [$b8a6], a
    ld a, $01
    ld [$b8aa], a
    ret


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
    inc a
    ld [$b904], a
    ret


    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_00c_7c86:
    ld a, [hl]
    cp $ff
    jr z, jr_00c_7c8c

    inc b

jr_00c_7c8c:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_00c_7c86

    ld a, b
    ld hl, $7d84
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$ccad], a
    ret


    ld a, [$cc9c]
    ld h, a
    ld a, [$cc9b]
    ld l, a
    call Call_000_316d
    ld a, [$ccce]
    ld [$ccad], a
    ld a, [$cccf]
    ld [$ccae], a
    ld a, [$ccd0]
    ld [$ccaf], a
    ld a, [$ccd1]
    ld [$ccb0], a
    ret


    ld a, [$b941]
    ld [$cccc], a
    ld a, [$b940]
    ld [$cccb], a
    ld a, [$b93f]
    ld [$ccca], a
    call Call_000_3179
    ld a, [$cccd]
    ld [$ccad], a
    ld a, [$ccce]
    ld [$ccae], a
    ld a, [$cccf]
    ld [$ccaf], a
    ld a, [$ccd0]
    ld [$ccb0], a
    ld a, [$ccd1]
    ld [$ccb1], a
    ret


    ld hl, $7d8e
    ld a, [$cbe8]
    ld b, a
    sla a
    ld c, a
    sla a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $ccad
    ld b, $09
    call Call_000_210f
    ret


    ld a, [$cc15]
    call Call_000_3215
    ld a, [$cccf]
    ld [$ccad], a
    ld a, [$ccd0]
    ld [$ccae], a
    ld a, [$ccd1]
    ld [$ccaf], a
    ret


    ld a, [$b8f2]
    call Call_000_3215
    ld a, [$cccf]
    ld [$ccad], a
    ld a, [$ccd0]
    ld [$ccae], a
    ld a, [$ccd1]
    ld [$ccaf], a
    ret


    ld a, [$b904]
    call Call_000_3215
    ld a, [$ccd0]
    ld [$ccad], a
    ld a, [$ccd1]
    ld [$ccae], a
    ret


    ld a, [$ba11]
    ld h, a
    ld a, [$ba10]
    ld l, a
    call Call_000_316d
    ld a, [$ccce]
    ld [$ccad], a
    ld a, [$cccf]
    ld [$ccae], a
    ld a, [$ccd0]
    ld [$ccaf], a
    ld a, [$ccd1]
    ld [$ccb0], a
    ret


    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    dec e
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, d
    ld [hl-], a
    ld [bc], a
    ld b, h
    xor a
    xor a
    xor a
    xor a
    jp nz, $9885

    rla
    daa
    rlca
    add a
    add hl, sp
    add l
    jp nz, $9885

    rla
    daa
    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, h
    nop
    nop
    and e
    nop
    sub h
    nop
    or b
    nop
    ld bc, $4400
    nop
    xor a
    nop
    ld hl, $0000
    nop
    ld [hl], e
    nop
    inc hl
    nop
    ld hl, $2200
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    xor h
    nop
    xor h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor l
    call z, $ccae
    xor a
    call z, $00d7
    ld b, $00
    sbc c
    nop
    add hl, sp
    nop
    cp l
    nop
    ld [hl+], a
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
