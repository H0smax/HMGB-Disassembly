; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    inc de
    nop
    ld bc, $4141
    nop
    ld bc, $414b
    nop
    ld bc, $4155
    nop
    ld bc, $415f
    nop
    ld bc, $43fd
    nop
    ld bc, $4493
    ld bc, $3101
    ld b, l
    ld bc, $3701
    ld b, l
    ld bc, $3b01
    ld b, l
    ld bc, $4101
    ld b, l
    ld bc, $2601
    ld b, [hl]
    ld bc, $3e01
    ld b, [hl]
    ld bc, $4c01
    ld b, [hl]
    ld bc, $5601
    ld b, [hl]
    ld bc, $0701
    ld c, b
    ld bc, $d001
    ld c, c
    ld bc, $d401
    ld c, c
    ld bc, $d801
    ld c, c
    ld bc, $dc01
    ld c, c
    ld bc, $6801
    ld c, d
    ld bc, $6c01
    ld c, d
    ld bc, $7001
    ld c, d
    ld bc, $7401
    ld c, d
    ld bc, $0001
    ld c, e

Call_013_4061:
    ld bc, $0c01
    ld c, e
    ld [bc], a
    ld bc, $4c21
    ld [bc], a
    ld bc, $4c35
    ld [bc], a
    ld bc, $4c57
    ld [bc], a
    ld bc, $4c5b
    ld [bc], a
    ld bc, $4c79
    ld [bc], a
    ld bc, $4c7d
    ld [bc], a
    ld bc, $4c81
    ld [bc], a
    ld bc, $4c9d
    ld [bc], a
    ld bc, $4f8c
    ld [bc], a
    ld bc, $4f92
    ld [bc], a
    ld bc, $4f98
    ld [bc], a
    ld bc, $4f9e
    ld [bc], a
    ld bc, $5298
    ld [bc], a
    ld bc, $52a6
    ld [bc], a
    ld bc, $52b4
    ld [bc], a
    ld bc, $52c2
    ld [bc], a
    ld bc, $56d4
    ld [bc], a
    ld bc, $56d6
    ld [bc], a
    ld bc, $56d8
    ld [bc], a
    ld bc, $56da
    inc bc
    ld bc, $59d0
    inc bc
    ld bc, $59d4
    inc bc
    ld bc, $59d8
    inc bc
    ld bc, $59dc
    inc bc
    ld bc, $5a8a
    inc bc
    ld bc, $5a94
    inc bc
    ld bc, $5a9e
    inc bc
    ld bc, $5aa8
    ld bc, $2d01
    ld c, b
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    nop
    nop
    ld a, d
    ld e, e
    ld l, c
    ld b, c
    adc d
    ld b, c
    xor e
    ld b, c
    call z, $ed41
    ld b, c
    ld c, $42
    cpl
    ld b, d
    ld d, b
    ld b, d
    ld [hl], c
    ld b, d
    sub d
    ld b, d
    or e
    ld b, d
    call nc, $f542
    ld b, d
    ld d, $43
    scf
    ld b, e
    ld e, b
    ld b, e
    ld a, c
    ld b, e
    sbc d
    ld b, e
    cp e
    ld b, e
    call c, $fa43
    nop
    ld b, [hl]
    nop
    ld a, [$45f8]
    nop
    ldh a, [c]
    nop
    ld b, h
    nop
    ldh a, [c]
    ld hl, sp+$43
    nop
    ld [$4200], a
    nop
    ld [$41f8], a
    nop
    ldh [c], a
    nop
    ld b, b
    nop
    ldh [c], a
    ld hl, sp+$3f
    nop
    add b
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    ld c, e
    nop
    ldh a, [rP1]
    ld c, d
    nop
    ldh a, [$fff8]
    ld c, c
    nop
    ldh [$fff8], a
    ccf
    nop
    ldh [rP1], a
    ld b, b
    nop
    add sp, $00
    ld c, b
    nop
    add sp, -$08
    ld b, a
    nop
    add b
    nop
    nop
    ld d, h
    nop
    nop
    ld hl, sp+$53
    nop
    ld hl, sp+$00
    ld d, d
    nop
    ld hl, sp-$08
    ld d, c
    nop
    ldh a, [rP1]
    ld d, b
    nop
    ldh a, [$fff8]
    ld c, a
    nop
    add sp, $00
    ld c, [hl]
    nop
    add sp, -$08
    ld c, l
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
    ld [bc], a
    nop
    ld h, d
    nop
    ld [bc], a
    ld hl, sp+$61
    nop
    ld a, [$6000]
    nop
    ld a, [$5ff8]
    nop
    ldh a, [c]
    nop
    ld e, [hl]
    nop
    ldh a, [c]
    ld hl, sp+$5d
    nop
    ld [$5600], a
    nop
    ld [$55f8], a
    nop
    add b
    ld hl, sp+$00
    ld l, d
    nop
    ld hl, sp-$08
    ld l, c
    nop
    ldh a, [rP1]
    ld l, b
    nop
    ldh a, [$fff8]
    ld h, a
    nop
    add sp, $00
    ld h, [hl]
    nop
    add sp, -$08
    ld h, l
    nop
    ldh [rP1], a
    ld h, h
    nop
    ldh [$fff8], a
    ld h, e
    nop
    add b
    ld hl, sp+$01
    ld [hl], d
    nop
    ld hl, sp-$07
    ld [hl], c
    nop
    ldh a, [$ff09]
    ld [hl], b
    nop
    ldh a, [rSB]
    ld l, a
    nop
    ldh a, [$fff9]
    ld l, [hl]
    nop
    add sp, $09
    ld l, l
    nop
    add sp, $01
    ld l, h
    nop
    add sp, -$07
    ld l, e
    nop
    add b
    ld hl, sp-$03
    ld a, d
    nop

jr_013_4254:
    ld hl, sp-$0b
    ld a, c
    nop
    ld hl, sp-$13
    ld a, b
    nop
    ldh a, [$fffd]
    ld [hl], a
    nop
    ldh a, [$fff5]
    halt
    nop
    ldh a, [$ffed]
    ld [hl], l
    nop
    add sp, -$03
    ld [hl], h
    nop
    add sp, -$0b
    ld [hl], e
    nop
    add b
    ld sp, hl
    db $fd
    add d
    nop

jr_013_4275:
    ld sp, hl
    push af
    add c
    nop
    ld sp, hl
    db $ed
    add b
    nop
    pop af
    db $fd
    ld a, a
    nop
    pop af
    push af
    ld a, [hl]
    nop
    pop af
    db $ed
    ld a, l
    nop
    jp hl


    db $fd
    ld a, h
    nop
    jp hl


    push af
    ld a, e
    nop
    add b
    ld hl, sp-$01
    adc d
    nop

jr_013_4296:
    ld hl, sp-$09
    adc c
    nop
    ld hl, sp-$11
    adc b
    nop
    ldh a, [rIE]
    add a
    nop
    ldh a, [$fff7]
    add [hl]
    nop
    ldh a, [$ffef]
    add l
    nop
    add sp, -$01

jr_013_42ac:
    add h
    nop
    add sp, -$09

jr_013_42b0:
    add e
    nop
    add b
    ld hl, sp-$08
    ld l, d
    jr nz, jr_013_42b0

    nop
    ld l, c
    jr nz, jr_013_42ac

    ld hl, sp+$68
    jr nz, jr_013_42b0

    nop
    ld h, a
    jr nz, jr_013_42ac

    ld hl, sp+$66
    jr nz, jr_013_42b0

    nop
    ld h, l
    jr nz, jr_013_42ac

    ld hl, sp+$64
    jr nz, jr_013_42b0

    nop

jr_013_42d1:
    ld h, e
    jr nz, jr_013_4254

    ld hl, sp-$09
    ld [hl], d
    jr nz, jr_013_42d1

jr_013_42d9:
    rst $38
    ld [hl], c
    jr nz, @-$0e

    rst $28
    ld [hl], b
    jr nz, jr_013_42d1

    rst $30
    ld l, a
    jr nz, @-$0e

    rst $38
    ld l, [hl]
    jr nz, jr_013_42d1

    rst $28
    ld l, l
    jr nz, @-$16

    rst $30
    ld l, h
    jr nz, jr_013_42d9

    rst $38

jr_013_42f2:
    ld l, e
    jr nz, jr_013_4275

    ld hl, sp-$05
    ld a, d
    jr nz, jr_013_42f2

jr_013_42fa:
    inc bc
    ld a, c
    jr nz, @-$06

    dec bc
    ld a, b
    jr nz, jr_013_42f2

    ei
    ld [hl], a
    jr nz, @-$0e

    inc bc
    halt
    jr nz, jr_013_42fa

    dec bc
    ld [hl], l
    jr nz, @-$16

    ei
    ld [hl], h
    jr nz, jr_013_42fa

    inc bc
    ld [hl], e

jr_013_4314:
    jr nz, jr_013_4296

    ld sp, hl
    ei

jr_013_4318:
    add d
    jr nz, jr_013_4314

    inc bc

jr_013_431c:
    add c
    jr nz, jr_013_4318

    dec bc
    add b
    jr nz, jr_013_4314

    ei
    ld a, a
    jr nz, jr_013_4318

    inc bc
    ld a, [hl]
    jr nz, jr_013_431c

    dec bc
    ld a, l
    jr nz, jr_013_4318

    ei
    ld a, h
    jr nz, jr_013_431c

    inc bc

jr_013_4334:
    ld a, e
    jr nz, @-$7e

    ld hl, sp-$07
    adc d
    jr nz, jr_013_4334

jr_013_433c:
    ld bc, $2089
    ld hl, sp+$09
    adc b
    jr nz, jr_013_4334

    ld sp, hl
    add a
    jr nz, @-$0e

    ld bc, $2086
    ldh a, [$ff09]
    add l
    jr nz, @-$16

    ld sp, hl
    add h
    jr nz, jr_013_433c

    ld bc, $2083
    add b
    ld hl, sp+$01
    sub d
    nop
    ld hl, sp-$07
    sub c
    nop
    ldh a, [$ff09]
    sub b
    nop
    ldh a, [rSB]
    adc a
    nop
    ldh a, [$fff9]
    adc [hl]
    nop
    add sp, $09
    adc l
    nop
    add sp, $01
    adc h
    nop
    add sp, -$07
    adc e
    nop
    add b
    ld hl, sp+$01
    sbc d
    nop
    ld hl, sp-$07
    sbc c
    nop
    ldh a, [$ff09]
    sbc b
    nop
    ldh a, [rSB]
    sub a
    nop
    ldh a, [$fff9]
    sub [hl]
    nop
    add sp, $09
    sub l
    nop
    add sp, $01
    sub h
    nop
    add sp, -$07
    sub e
    nop
    add b
    ld sp, hl
    ld bc, $00a2
    ld sp, hl
    ld sp, hl
    and c
    nop
    pop af
    ld bc, $00a0
    pop af
    ld sp, hl
    sbc a
    nop
    jp hl


    ld bc, $009e
    jp hl


    ld sp, hl
    sbc l
    nop
    pop hl
    ld bc, $009c
    pop hl
    ld sp, hl
    sbc e
    nop
    add b
    cp $01
    xor d
    nop
    cp $f9
    xor c
    nop
    or $01
    xor b
    nop
    or $f9
    and a
    nop
    xor $01
    and [hl]
    nop
    xor $f9
    and l
    nop
    and $01
    and h
    nop
    and $f9
    and e
    nop
    add b
    rst $38
    ld bc, $0062
    rst $38
    ld sp, hl
    or c
    nop
    rst $30
    ld bc, $00b0
    rst $30
    ld sp, hl
    xor a
    nop
    rst $28
    ld bc, $00ae
    rst $28
    ld sp, hl
    xor l
    nop
    rst $20
    ld bc, $00ac
    rst $20
    ld sp, hl
    xor e
    nop
    add b
    rrca
    ld b, h
    jr nc, @+$46

    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    ld d, c
    ld b, h
    ld [hl], d
    ld b, h
    jr nc, jr_013_4453

    ld hl, sp+$00
    cp c
    nop
    ld hl, sp-$08
    cp b
    nop
    ldh a, [rP1]
    or a
    nop
    ldh a, [$fff8]
    or [hl]
    nop
    ldh a, [$fff0]
    or l
    nop
    add sp, $00
    or h
    nop
    add sp, -$08
    or e
    nop
    add sp, -$10
    or d
    nop
    add b
    ld hl, sp-$01
    pop bc
    nop
    ld hl, sp-$09
    ret nz

    nop
    ldh a, [rIE]
    cp a
    nop
    ldh a, [$fff7]
    cp [hl]
    nop
    add sp, -$01
    cp l
    nop
    add sp, -$09
    cp h
    nop
    add sp, -$11
    cp e
    nop
    ldh [$fff7], a
    cp d
    nop
    add b
    ld hl, sp+$08

jr_013_4453:
    ret


    nop
    ld hl, sp+$00
    ret z

    nop
    ld hl, sp-$08
    rst $00
    nop
    ldh a, [$ff08]
    add $00
    ldh a, [rP1]
    push bc
    nop
    ldh a, [$fff8]
    call nz, $e800
    nop
    jp $e800


    ld hl, sp-$3e
    nop
    add b
    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    ret nc

    nop
    ld hl, sp-$10
    rst $08
    nop
    ldh a, [rP1]
    adc $00
    ldh a, [$fff8]
    call $f000
    ldh a, [$ffcc]
    nop
    add sp, $00
    rlc b
    add sp, -$08
    jp z, $8000

    or c
    ld b, h
    adc $44
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    rst $28
    ld b, h
    db $10
    ld b, l
    adc $44
    ld hl, sp+$01
    ret c

    nop
    ld hl, sp-$07

MoveToToolRoom::
    rst $10
    nop
    ldh a, [rSB]
    sub $00
    ldh a, [$fff9]
    push de
    nop
    add sp, $09
    call nc, $e800
    ld bc, $00d3
    add sp, -$07
    jp nc, $8000

    ld hl, sp+$01
    ldh [rP1], a
    ld hl, sp-$07
    rst $18
    nop
    ldh a, [rSB]
    sbc $00
    ldh a, [$fff9]
    db $dd
    nop
    add sp, $09
    call c, $e800
    ld bc, $00db
    add sp, -$07
    jp c, $e800

    pop af
    reti


    nop
    add b
    ld hl, sp+$01
    add sp, $00
    ld hl, sp-$07
    rst $20
    nop
    ldh a, [rSB]
    and $00
    ldh a, [$fff9]
    push hl
    nop
    add sp, $09
    db $e4
    nop
    add sp, $01
    db $e3
    nop
    add sp, -$07
    ldh [c], a
    nop
    ldh [rSB], a
    pop hl
    nop
    add b
    ld hl, sp+$01
    add sp, $00
    ld hl, sp-$07
    rst $20
    nop
    ldh a, [$ff09]
    xor $00
    ldh a, [rSB]
    db $ed
    nop
    ldh a, [$fff9]
    db $ec
    nop
    add sp, $09
    db $eb
    nop
    add sp, $01
    ld [$e800], a
    ld sp, hl
    jp hl


    nop
    add b
    ld b, e
    ld b, l
    ld h, b
    ld b, l
    add c
    ld b, l
    and d
    ld b, l
    jp $e445


    ld b, l
    dec b
    ld b, [hl]
    ld b, e
    ld b, l
    and d
    ld b, l
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
    ld bc, $e800
    ldh a, [rP1]
    nop
    add b
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    dec c
    nop
    ldh a, [rP1]
    inc c
    nop
    ldh a, [$fff8]
    dec bc
    nop
    add sp, $00
    ld a, [bc]
    nop
    add sp, -$08
    add hl, bc
    nop
    ldh [$fff8], a
    ld [$e000], sp
    ldh a, [rTAC]
    nop
    add b
    ld hl, sp+$00
    ld d, $00
    ld hl, sp-$08
    dec d
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$fff8]
    inc de
    nop
    add sp, $00
    ld [de], a
    nop
    add sp, -$08
    ld de, $e000
    cp $10
    nop
    ret c

    db $fd
    rrca
    nop
    add b
    add sp, $00
    ld [bc], a
    nop
    add sp, -$08
    ld de, $f800
    nop
    inc e
    nop
    ld hl, sp-$08
    dec de
    nop
    ldh a, [rNR10]
    ld a, [de]
    nop
    ldh a, [$ff08]
    add hl, de
    nop
    ldh a, [rP1]
    jr jr_013_45be

jr_013_45be:
    ldh a, [$fff8]
    rla
    nop
    add b
    ldh a, [rNR10]
    ld e, $00
    ldh a, [$ff08]
    dec e
    nop
    ld hl, sp+$00
    inc e
    nop
    ld hl, sp-$08
    dec de
    nop
    ldh a, [rP1]
    jr jr_013_45d7

jr_013_45d7:
    ldh a, [$fff8]
    rla
    nop
    add sp, -$08
    ld de, $e800
    nop
    ld [bc], a
    nop
    add b
    ld hl, sp+$00
    ld h, $00
    ld hl, sp-$08
    dec h
    nop
    ldh a, [rP1]
    inc h
    nop
    ldh a, [$fff8]
    inc hl
    nop
    add sp, $00
    ld [hl+], a
    nop
    add sp, -$08
    ld hl, $e000
    ld [$0020], sp
    ldh [rP1], a
    rra
    nop
    add b
    ld hl, sp+$00
    ld l, $00
    ld hl, sp-$08
    dec l
    nop
    ldh a, [rIE]
    inc l
    nop
    ldh a, [$fff7]
    dec hl
    nop
    add sp, -$01
    ld a, [hl+]
    nop
    add sp, -$09
    add hl, hl
    nop
    ldh [$fff7], a
    jr z, jr_013_4621

jr_013_4621:
    ldh [$ffef], a
    daa
    nop
    add b
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    or a
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    or a
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    ld l, h
    ld b, [hl]
    add l
    ld b, [hl]
    call nc, $ed46
    ld b, [hl]
    ld a, [bc]
    ld b, a
    db $ed
    ld b, [hl]
    ld a, [bc]
    ld b, a
    db $ed
    ld b, [hl]
    ld a, [bc]
    ld b, a
    call nc, $2346
    ld b, a
    ld d, l
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    ld l, [hl]
    ld b, a
    adc a
    ld b, a
    or b
    ld b, a
    call $e647
    ld b, a
    inc a
    ld b, a
    ld a, [bc]
    ld b, a
    ld hl, sp+$00
    inc [hl]
    nop
    ld hl, sp-$08
    inc sp
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    ldh a, [$fff8]
    ld sp, $e800
    nop
    jr nc, jr_013_4680

jr_013_4680:
    add sp, -$08
    cpl
    nop
    add b
    ld hl, sp-$08
    ld [hl], $00
    ldh a, [$fff8]
    dec [hl]
    nop
    ld hl, sp+$00
    inc [hl]
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    add sp, $00
    jr nc, jr_013_4699

jr_013_4699:
    add sp, -$08
    cpl
    nop
    add b
    ld hl, sp+$00
    inc a
    nop
    ld hl, sp-$08
    dec sp
    nop
    ldh a, [rP1]
    ld a, [hl-]
    nop
    ldh a, [$fff8]
    add hl, sp
    nop
    add sp, $00
    jr c, jr_013_46b2

jr_013_46b2:
    add sp, -$08
    scf
    nop
    add b
    ld hl, sp-$08
    ld a, $00
    ldh a, [$fff8]
    dec a
    nop
    ld hl, sp+$00
    inc a
    nop
    ldh a, [rP1]
    ld a, [hl-]
    nop
    add sp, $00
    jr c, jr_013_46cb

jr_013_46cb:
    add sp, -$08
    scf
    nop
    add sp, $08
    ccf
    nop
    add b
    ld hl, sp+$00
    ld b, l
    nop
    ld hl, sp-$08
    ld b, h
    nop
    ldh a, [rP1]
    ld b, e
    nop
    ldh a, [$fff8]
    ld b, d
    nop
    add sp, $00
    ld b, c
    nop
    add sp, -$08
    ld b, b
    nop
    add b
    add sp, $08
    ccf
    nop
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b
    nop
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    add b
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    ldh a, [$fff8]
    ld c, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$01
    ld d, a
    nop
    ld hl, sp-$07
    ld d, [hl]
    nop
    ldh a, [rSB]
    ld d, l
    nop
    ldh a, [$fff9]
    ld d, h
    nop
    add sp, $01
    ld d, e
    nop
    add sp, -$07
    ld d, d
    nop
    add b
    ld hl, sp+$01
    ld d, a
    nop
    ld hl, sp-$07
    ld d, [hl]
    nop
    add sp, $01
    ld d, e
    nop
    add sp, -$07
    ld d, d
    nop
    ldh a, [rSB]
    ld e, c
    nop
    ldh a, [$fff9]
    ld e, b
    nop
    add b
    ld hl, sp+$01
    ld e, a
    nop
    ld hl, sp-$07
    ld e, [hl]
    nop
    ldh a, [rSB]
    ld e, l
    nop
    ldh a, [$fff9]
    ld e, h
    nop
    add sp, $01
    ld e, e
    nop
    add sp, -$07
    ld e, d
    nop
    add b
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    ldh a, [$ff08]
    ld h, l
    nop
    ldh a, [rP1]
    ld h, h
    nop
    ldh a, [$fff8]
    ld h, e
    nop
    add sp, $09
    ld h, d
    nop
    add sp, $01
    ld h, c
    nop
    add sp, -$07
    ld h, b
    nop
    add b
    add sp, $06
    ld h, d
    nop
    add sp, -$02
    ld h, c
    nop
    add sp, -$0a
    ld h, b
    nop
    ld hl, sp+$00

jr_013_479d:
    ld l, h
    nop
    ld hl, sp-$08
    ld l, e
    nop
    ldh a, [rP1]
    ld l, d
    nop
    ldh a, [$fff8]
    ld l, c
    nop
    ldh a, [$fff0]
    ld l, b
    nop
    add b
    di
    db $ec
    ld h, d
    jr nz, jr_013_479d

    cp $6e
    nop
    add sp, -$0a
    ld l, l
    nop
    ld hl, sp-$04
    ld [hl], d
    nop
    ld hl, sp-$0c
    ld [hl], c
    nop
    ldh a, [$fffc]
    ld [hl], b
    nop
    ldh a, [$fff4]
    ld l, a
    nop
    add b
    ld hl, sp+$00
    ld a, b
    nop
    ld hl, sp-$08
    ld [hl], a
    nop
    ld hl, sp-$10
    halt
    nop
    ldh a, [rP1]
    ld [hl], l
    nop
    ldh a, [$fff8]
    ld [hl], h
    nop
    ldh a, [$fff0]
    ld [hl], e
    nop
    add b
    ld sp, hl
    ld bc, $0080
    ld sp, hl
    ld sp, hl
    ld a, a
    nop
    ld sp, hl
    pop af
    ld a, [hl]
    nop
    pop af
    ld bc, $007d
    pop af
    ld sp, hl
    ld a, h
    nop
    pop af
    pop af
    ld a, e
    nop
    jp hl


    ld sp, hl
    ld a, d
    nop
    jp hl


    pop af
    ld a, c
    nop
    add b
    scf
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or e
    ld c, b
    ret nc

    ld c, b
    pop af
    ld c, b
    ret nc

    ld c, b
    ld [de], a
    ld c, c
    inc sp
    ld c, c
    ld d, h
    ld c, c
    inc sp
    ld c, c
    ld [hl], l
    ld c, c
    ret nc

    ld c, b
    pop af
    ld c, b
    ret nc

    ld c, b
    ld [de], a
    ld c, c
    sub [hl]
    ld c, c
    or a
    ld c, c
    scf
    ld c, b
    ld d, h
    ld c, b
    ld [hl], l
    ld c, b
    sub [hl]
    ld c, b
    or e
    ld c, b
    ldh a, [rSB]
    add l
    nop
    ldh a, [$fff9]
    add h
    nop
    ldh a, [$fff1]
    add e
    nop
    add sp, $01
    add d
    nop
    add sp, -$07
    add c
    nop
    ld hl, sp+$00
    add a
    nop
    ld hl, sp-$08
    add [hl]
    nop
    add b
    ld hl, sp+$01
    adc a
    nop
    ld hl, sp-$07
    adc [hl]
    nop
    rst $30
    pop af
    adc l
    nop
    rst $28
    pop af
    adc d
    nop
    ldh a, [rSB]
    adc h
    nop
    ldh a, [$fff9]
    adc e
    nop
    add sp, $01
    adc c
    nop
    add sp, -$07
    adc b
    nop
    add b
    ld hl, sp+$01
    sub a
    nop
    ld hl, sp-$07
    sub [hl]
    nop
    ldh a, [rSB]
    sub l
    nop
    ldh a, [$fff9]
    sub h
    nop
    ldh a, [$fff1]
    sub e
    nop
    add sp, $01
    sub d
    nop
    add sp, -$07
    sub c
    nop
    add sp, -$0f
    sub b
    nop
    add b
    ld hl, sp-$01
    sbc [hl]
    nop
    ld hl, sp-$09
    sbc l
    nop
    ldh a, [rSC]
    sbc h
    nop
    ldh a, [$fffa]
    sbc e
    nop
    ldh a, [$fff2]
    sbc d
    nop
    add sp, $02
    sbc c
    nop
    add sp, -$06
    sbc b
    nop
    add b
    add sp, $02
    sbc c
    nop
    add sp, -$06
    sbc b
    nop
    ld hl, sp-$09
    sbc l
    nop
    ld hl, sp-$01
    and d
    nop
    ldh a, [rSC]
    and c
    nop
    ldh a, [$fffa]
    and b
    nop
    ldh a, [$fff2]
    sbc a
    nop
    add b
    rst $20
    dec bc
    ld h, d
    nop

jr_013_48d4:
    add sp, $03
    and h
    nop
    add sp, -$05
    and e
    nop
    ld hl, sp+$02
    xor c
    nop
    ld hl, sp-$06
    xor b
    nop
    ldh a, [$ff0a]
    and a
    nop
    ldh a, [rSC]
    and [hl]
    nop
    ldh a, [$fffa]
    and l
    nop
    add b
    rst $20
    inc c
    ld h, d
    nop

jr_013_48f5:
    add sp, $04
    and h
    nop
    add sp, -$04
    and e
    nop
    ld hl, sp+$02
    xor [hl]
    nop
    ld hl, sp-$06
    xor l
    nop
    ldh a, [$ff0a]
    xor h
    nop
    ldh a, [rSC]
    xor e
    nop
    ldh a, [$fffa]

jr_013_490f:
    xor d
    nop
    add b
    ld hl, sp+$06
    or l
    nop

jr_013_4916:
    ld hl, sp-$02
    or h
    nop
    add sp, -$0a
    ld h, d
    jr nz, jr_013_490f

    ld b, $b3
    nop
    ldh a, [$fffe]

jr_013_4924:
    or d
    nop
    ldh a, [$fff6]
    or c
    nop
    add sp, $06
    or b
    nop
    add sp, -$02
    xor a
    nop
    add b
    rst $20
    rst $28
    ld h, d
    jr nz, @-$16

jr_013_4938:
    rst $30
    and h
    jr nz, jr_013_4924

jr_013_493c:
    rst $38
    and e
    jr nz, jr_013_4938

jr_013_4940:
    ld hl, sp-$57
    jr nz, jr_013_493c

    nop

jr_013_4945:
    xor b
    jr nz, jr_013_4938

    ldh a, [$ffa7]
    jr nz, jr_013_493c

    ld hl, sp-$5a
    jr nz, jr_013_4940

    nop
    and l
    jr nz, jr_013_48d4

    rst $20
    xor $62
    jr nz, @-$16

jr_013_4959:
    or $a4
    jr nz, jr_013_4945

jr_013_495d:
    cp $a3
    jr nz, jr_013_4959

jr_013_4961:
    ld hl, sp-$52
    jr nz, jr_013_495d

    nop

jr_013_4966:
    xor l
    jr nz, jr_013_4959

    ldh a, [$ffac]
    jr nz, jr_013_495d

    ld hl, sp-$55
    jr nz, jr_013_4961

    nop

jr_013_4972:
    xor d
    jr nz, jr_013_48f5

    ld hl, sp-$0c
    or l
    jr nz, jr_013_4972

jr_013_497a:
    db $fc
    or h
    jr nz, jr_013_4966

    inc b
    ld h, d
    nop
    ldh a, [$fff4]
    or e
    jr nz, @-$0e

    db $fc
    or d
    jr nz, jr_013_497a

    inc b
    or c
    jr nz, @-$16

    db $f4
    or b
    jr nz, jr_013_497a

    db $fc
    xor a
    jr nz, jr_013_4916

    ldh a, [$fff0]
    ld a, [$e800]
    ldh a, [$ff62]
    jr nz, @-$06

    nop
    cp e
    nop
    ld hl, sp-$08
    cp d
    nop
    ldh a, [rP1]
    cp c
    nop
    ldh a, [$fff8]
    cp b
    nop
    add sp, $00
    or a
    nop
    add sp, -$08
    or [hl]

jr_013_49b5:
    nop
    add b
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b

jr_013_49c6:
    nop
    add sp, $00
    ld b, a
    nop
    add sp, -$08
    ld b, [hl]
    nop
    add b
    ldh [rOBP1], a
    pop af
    ld c, c
    ld [bc], a
    ld c, d
    inc de
    ld c, d
    inc h
    ld c, d
    dec [hl]
    ld c, d
    ld b, [hl]
    ld c, d
    ld d, a
    ld c, d
    ld hl, sp+$00
    cp a
    nop
    ld hl, sp-$08
    cp [hl]
    nop
    ldh a, [rP1]
    cp l
    nop
    ldh a, [$fff8]
    cp h
    nop
    add b
    rst $28
    nop
    cp l
    nop
    rst $28
    ld hl, sp-$44
    nop
    rst $30
    nop
    pop bc
    nop
    rst $30
    ld hl, sp-$40
    nop
    add b
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
    rst $30
    nop
    call $f700
    ld hl, sp-$34
    nop
    rst $28
    nop
    ret


    nop
    rst $28
    ld hl, sp-$38
    nop
    add b
    ld hl, sp-$08
    sla b
    ld hl, sp+$00
    jp z, $f020

    ld hl, sp-$37
    jr nz, @-$0e

jr_013_4a31:
    nop
    ret z

    jr nz, jr_013_49b5

    rst $30
    ld hl, sp-$33
    jr nz, jr_013_4a31

    nop
    call z, $ef20
    ld hl, sp-$37
    jr nz, jr_013_4a31

    nop
    ret z

    jr nz, jr_013_49c6

    ld hl, sp+$00
    push bc
    nop
    ld hl, sp-$08
    call nz, $f000
    nop
    jp $f000


    ld hl, sp-$3e
    nop
    add b
    rst $28
    nop
    jp $ef00


    ld hl, sp-$3e
    nop
    rst $30
    nop
    rst $00
    nop
    rst $30
    ld hl, sp-$3a
    nop
    add b
    ld a, b
    ld c, d
    adc c
    ld c, d
    sbc d
    ld c, d
    xor e
    ld c, d
    cp h
    ld c, d
    call $de4a
    ld c, d
    rst $28
    ld c, d
    ldh a, [rP1]
    cp l
    nop
    ldh a, [$fff8]
    cp h
    nop
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    add b
    pop af
    nop
    cp l
    nop
    pop af
    ld hl, sp-$44
    nop
    ld sp, hl
    nop
    rst $08
    nop
    ld sp, hl
    ld hl, sp-$32
    nop
    add b
    ld hl, sp+$00
    rst $10
    nop
    ld hl, sp-$08
    sub $00
    ldh a, [rP1]
    db $fc
    nop
    ldh a, [$fff8]
    ei
    nop
    add b
    pop af
    nop
    db $d3
    nop
    pop af
    ld hl, sp-$2e
    nop
    ld sp, hl
    nop
    push de
    nop
    ld sp, hl
    ld hl, sp-$2c
    nop
    add b
    ld hl, sp-$08
    rst $10
    jr nz, @-$06

    nop
    sub $20
    ldh a, [$fff8]
    db $fc
    jr nz, @-$0e

    nop
    ei
    jr nz, @-$7e

    pop af
    ld hl, sp-$2d
    jr nz, @-$0d

    nop

jr_013_4ad3:
    jp nc, $f920

    ld hl, sp-$2b
    jr nz, jr_013_4ad3

    nop
    call nc, $8020
    ldh a, [rP1]
    jp $f000


    ld hl, sp-$3e
    nop
    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    ret nc

    nop
    add b
    pop af
    nop
    jp $f100


    ld hl, sp-$3e
    nop
    ld sp, hl
    nop
    pop de
    nop
    ld sp, hl
    ld hl, sp-$30
    nop
    add b
    ld d, $4b
    cpl
    ld c, e
    ld c, b
    ld c, e
    ld h, l
    ld c, e
    add d
    ld c, e
    sbc e
    ld c, e
    xor h
    ld c, e
    cp l
    ld c, e
    jp nc, $ef4b

    ld c, e
    ld [$f84c], sp
    nop
    db $dd
    nop
    ld hl, sp-$08
    call c, $f000
    nop
    db $db
    nop
    ldh a, [$fff8]
    jp c, $e800

    nop
    reti


    nop
    add sp, -$08
    ret c

    nop
    add b
    ld hl, sp+$00
    db $e3
    nop
    ld hl, sp-$08
    ldh [c], a
    nop
    ldh a, [rP1]
    pop hl
    nop
    ldh a, [$fff8]
    ldh [rP1], a
    add sp, $00
    rst $18
    nop
    add sp, -$08
    sbc $00
    add b
    push af
    nop
    ld [$f500], a
    ld hl, sp-$17
    nop
    db $ed
    nop

jr_013_4b52:
    add sp, $00
    db $ed
    ld hl, sp-$19
    nop
    push hl
    nop
    and $00
    push hl
    ld hl, sp-$1b
    nop
    db $dd
    db $fc
    db $e4
    nop
    add b
    ldh a, [rP1]
    db $ed
    nop
    ldh a, [$fff8]
    db $ec
    nop
    add sp, -$08

jr_013_4b6f:
    db $eb
    nop
    add sp, $00
    add sp, $00
    ldh [rP1], a
    and $00
    ldh [$fff8], a
    push hl
    nop
    ret c

    db $fc
    db $e4
    nop
    add b
    ldh a, [rP1]
    di
    nop
    ldh a, [$fff8]
    ldh a, [c]
    nop
    add sp, $00
    pop af
    nop
    add sp, -$08

jr_013_4b90:
    ldh a, [rP1]
    ldh [rP1], a
    rst $28
    nop
    ldh [$fff8], a
    xor $00
    add b
    ldh a, [$fff8]
    push af
    jr nz, jr_013_4b90

    nop

jr_013_4ba1:
    db $f4
    jr nz, @-$06

    nop
    ld sp, hl
    nop
    ld hl, sp-$08
    ld hl, sp+$00
    add b
    ld hl, sp+$00
    rst $30
    nop
    ld hl, sp-$08
    or $00
    ldh a, [rP1]
    push af

jr_013_4bb7:
    nop
    ldh a, [$fff8]
    db $f4
    nop
    add b
    push af
    ld hl, sp-$18
    jr nz, jr_013_4bb7

    nop

jr_013_4bc3:
    rst $20
    jr nz, @-$11

    ld hl, sp-$1a
    jr nz, jr_013_4bb7

    nop
    push hl
    jr nz, @-$19

    db $fc
    db $e4
    jr nz, jr_013_4b52

    ldh a, [$fff8]
    ld [$f020], a
    nop
    jp hl


    jr nz, jr_013_4bc3

    ld hl, sp-$18
    jr nz, @-$16

    nop

jr_013_4be0:
    rst $20
    jr nz, jr_013_4bc3

    ld hl, sp-$1a
    jr nz, @-$1e

    nop
    push hl
    jr nz, jr_013_4bc3

    db $fc
    db $e4
    jr nz, jr_013_4b6f

    ldh a, [$fff8]
    di
    jr nz, @-$0e

    nop
    ldh a, [c]
    jr nz, jr_013_4be0

    ld hl, sp-$0f
    jr nz, @-$16

    nop
    ldh a, [rNR41]
    ldh [$fff8], a
    rst $28
    jr nz, @-$1e

    nop

jr_013_4c05:
    xor $20
    add b
    ld hl, sp-$08
    db $dd
    jr nz, jr_013_4c05

    nop
    call c, $f020
    ld hl, sp-$25
    jr nz, jr_013_4c05

    nop
    jp c, $e820

    ld hl, sp-$27
    jr nz, jr_013_4c05

    nop
    ret c

    jr nz, jr_013_4ba1

    and c
    ld c, h
    cp d
    ld c, h
    and c
    ld c, h
    cp d
    ld c, h
    and c
    ld c, h
    db $d3
    ld c, h
    db $ec
    ld c, h
    dec b
    ld c, l
    db $ec
    ld c, h
    db $d3
    ld c, h
    db $d3
    ld c, h
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    ccf
    ld c, l
    ld e, $4d
    db $d3
    ld c, h
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    add c
    ld c, l
    ld h, b
    ld c, l
    db $d3
    ld c, h
    and d
    ld c, l
    cp e
    ld c, l
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    ld b, $4e
    rra
    ld c, [hl]
    ld b, b
    ld c, [hl]
    rra
    ld c, [hl]
    ld b, b
    ld c, [hl]
    call nc, $ed4d
    ld c, l
    call nc, $ed4d
    ld c, l
    ld h, c
    ld c, [hl]
    ld a, d
    ld c, [hl]
    sub a
    ld c, [hl]
    or b
    ld c, [hl]
    ret


    ld c, [hl]
    ldh [c], a
    ld c, [hl]
    ei
    ld c, [hl]
    inc d
    ld c, a
    dec [hl]
    ld c, a
    inc d
    ld c, a
    ei
    ld c, [hl]
    ldh [c], a
    ld c, [hl]
    ei
    ld c, [hl]
    inc d
    ld c, a
    dec [hl]
    ld c, a
    inc d
    ld c, a
    ei
    ld c, [hl]
    ret


    ld c, [hl]
    ld d, d
    ld c, a
    ld [hl], e
    ld c, a
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$fff8]
    ld [$e800], sp
    nop
    rlca
    nop
    add sp, -$08
    ld b, $00
    add b
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
    ld hl, sp+$00
    ld de, $f800
    ld hl, sp+$10
    nop
    ldh a, [rP1]
    rrca
    nop
    ldh a, [$fff8]
    ld c, $00
    add sp, $00
    dec c
    nop
    add sp, -$08
    inc c
    nop
    add b
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    ldh a, [rP1]
    dec d
    nop
    ldh a, [$fff8]
    inc d
    nop
    add sp, $00
    inc de
    nop
    add sp, -$08
    ld [de], a
    nop
    add b
    ld hl, sp+$00
    dec e
    nop
    ld hl, sp-$08
    inc e
    nop
    ldh a, [rP1]
    dec de
    nop
    ldh a, [$fff8]
    ld a, [de]
    nop
    add sp, $00
    add hl, de
    nop
    add sp, -$08
    jr jr_013_4d1d

jr_013_4d1d:
    add b
    ld sp, hl
    nop
    dec h
    nop
    ld sp, hl
    ld hl, sp+$24
    nop
    pop af
    nop
    inc hl
    nop
    pop af
    ld hl, sp+$22
    nop
    pop af
    ldh a, [rNR42]
    nop
    jp hl


    nop
    jr nz, jr_013_4d36

jr_013_4d36:
    jp hl


    ld hl, sp+$1f
    nop
    jp hl


    ldh a, [rNR34]
    nop
    add b
    ld sp, hl
    nop
    dec l
    nop
    ld sp, hl
    ld hl, sp+$2c
    nop
    ld sp, hl
    ldh a, [$ff2b]
    nop
    pop af
    nop
    ld a, [hl+]
    nop
    pop af
    ld hl, sp+$29
    nop
    pop af
    ldh a, [$ff28]
    nop
    jp hl


    db $fc
    daa

jr_013_4d5a:
    nop
    jp hl


    db $f4
    ld h, $00
    add b
    ld sp, hl
    ld hl, sp+$25
    jr nz, @-$05

    nop

jr_013_4d66:
    inc h
    jr nz, jr_013_4d5a

    ld hl, sp+$23
    jr nz, @-$0d

    nop
    ld [hl+], a
    jr nz, @-$0d

    ld [$2021], sp
    jp hl


    ld hl, sp+$20
    jr nz, @-$15

    nop
    rra
    jr nz, jr_013_4d66

    ld [$201e], sp
    add b
    ld sp, hl
    ld hl, sp+$2d
    jr nz, @-$05

    nop

jr_013_4d87:
    inc l
    jr nz, @-$05

    ld [$202b], sp
    pop af
    ld hl, sp+$2a
    jr nz, @-$0d

    nop
    add hl, hl
    jr nz, jr_013_4d87

    ld [$2028], sp
    jp hl


    db $fc
    daa
    jr nz, jr_013_4d87

    inc b
    ld h, $20
    add b
    ld hl, sp-$02
    inc sp
    nop
    ld hl, sp-$0a
    ld [hl-], a
    nop
    ldh a, [$fffe]
    ld sp, $f000
    or $30
    nop
    add sp, -$02
    cpl
    nop
    add sp, -$0a
    ld l, $00
    add b
    ld sp, hl
    rst $38
    ld [hl], $00
    ld sp, hl
    rst $30
    dec [hl]
    nop
    pop af
    rst $38
    inc [hl]
    nop
    jp hl


    rst $38
    cpl
    nop
    jp hl


    rst $30
    ld l, $00
    pop af
    rst $30
    jr nc, jr_013_4dd3

jr_013_4dd3:
    add b
    ld hl, sp-$01
    inc a
    nop
    ld hl, sp-$09
    dec sp
    nop
    ldh a, [rIE]
    ld a, [hl-]
    nop
    ldh a, [$fff7]
    add hl, sp
    nop
    add sp, -$01
    jr c, jr_013_4de8

jr_013_4de8:
    add sp, -$09
    scf
    nop
    add b
    ld hl, sp-$01
    ld b, b
    nop
    ld hl, sp-$09
    ccf
    nop
    add sp, -$01
    jr c, jr_013_4df9

jr_013_4df9:
    add sp, -$09
    scf
    nop
    ldh a, [rIE]
    ld a, $00
    ldh a, [$fff7]
    dec a
    nop
    add b
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
    add sp, $00
    ld b, d
    nop
    add sp, -$08
    ld b, c
    nop
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    ld c, e
    nop
    ld hl, sp-$10
    ld c, d
    nop
    ldh a, [rP1]
    ld c, c
    nop
    ldh a, [$fff8]
    ld c, b
    nop
    ldh a, [$fff0]
    ld b, a
    nop
    add b
    add sp, -$01
    ld b, d
    nop
    add sp, -$09
    ld b, c
    nop
    ld hl, sp-$01
    ld d, d
    nop
    ld hl, sp-$09
    ld d, c
    nop
    ld hl, sp-$11
    ld d, b
    nop
    ldh a, [rIE]
    ld c, a
    nop
    ldh a, [$fff7]
    ld c, [hl]
    nop
    ldh a, [$ffef]
    ld c, l
    nop
    add b
    ld hl, sp+$00
    ld e, b
    nop
    ld hl, sp-$08
    ld d, a
    nop
    ldh a, [rP1]
    ld d, [hl]
    nop
    ldh a, [$fff8]
    ld d, l
    nop
    add sp, $00
    ld d, h
    nop
    add sp, -$08
    ld d, e
    nop
    add b
    ld hl, sp-$01
    ld e, a
    nop
    ld hl, sp-$09
    ld e, [hl]
    nop
    ldh a, [rIE]
    ld e, l
    nop
    ldh a, [$fff7]

jr_013_4e88:
    ld e, h
    nop
    add sp, -$01

jr_013_4e8c:
    ld e, e
    nop
    add sp, -$09
    ld e, d
    nop
    ldh [$fff9], a

jr_013_4e94:
    ld e, c
    nop
    add b
    ld hl, sp-$05
    inc sp
    jr nz, jr_013_4e94

    inc bc
    ld [hl-], a
    jr nz, jr_013_4e88

    ei
    cpl
    jr nz, jr_013_4e8c

    inc bc
    ld l, $20
    ldh a, [$fffb]
    ld sp, $f020
    inc bc
    jr nc, jr_013_4ecf

    add b
    ld hl, sp-$01
    ld h, l
    nop
    ld hl, sp-$09
    ld h, h
    nop
    ldh a, [rIE]
    ld h, e
    nop
    ldh a, [$fff7]
    ld h, d
    nop
    add sp, -$01
    ld h, c
    nop
    add sp, -$09
    ld h, b
    nop
    add b
    ld sp, hl
    ld bc, $006b
    ld sp, hl
    ld sp, hl

jr_013_4ecf:
    ld l, d
    nop
    pop af
    ld bc, $0069
    pop af
    ld sp, hl
    ld l, b
    nop
    jp hl


    ld bc, $0067
    jp hl


    ld sp, hl
    ld h, [hl]
    nop
    add b
    ld hl, sp+$01
    ld l, a
    nop
    ld hl, sp-$07
    ld l, [hl]
    nop
    add sp, $01
    ld h, a
    nop
    add sp, -$07
    ld h, [hl]
    nop
    ldh a, [rSB]
    ld l, l
    nop
    ldh a, [$fff9]
    ld l, h
    nop
    add b
    ld sp, hl
    ld bc, $0071
    ld sp, hl
    ld sp, hl
    ld [hl], b
    nop
    jp hl


    ld bc, $0067
    jp hl


    ld sp, hl
    ld h, [hl]
    nop
    pop af
    ld bc, $006d
    pop af
    ld sp, hl
    ld l, h
    nop
    add b
    ld sp, hl
    rlca
    ld [hl], a
    nop
    ld sp, hl
    rst $38
    halt
    nop
    ld sp, hl
    rst $30
    ld [hl], l
    nop
    jp hl


    ld bc, $0067
    jp hl


    ld sp, hl
    ld h, [hl]
    nop
    pop af
    rlca
    ld [hl], h
    nop
    pop af
    rst $38
    ld [hl], e
    nop
    pop af
    rst $30
    ld [hl], d
    nop
    add b
    add sp, $01
    ld h, a
    nop
    add sp, -$07
    ld h, [hl]
    nop
    ld hl, sp-$01
    ld a, h
    nop
    ld hl, sp-$09
    ld a, e
    nop
    ldh a, [rTAC]
    ld a, d
    nop
    ldh a, [rIE]
    ld a, c
    nop
    ldh a, [$fff7]
    ld a, b
    nop
    add b
    ld sp, hl
    ld bc, $0084
    ld sp, hl
    ld sp, hl
    add e
    nop
    pop af
    add hl, bc
    add d
    nop
    pop af
    ld bc, $0081
    pop af
    ld sp, hl
    add b
    nop
    jp hl


    add hl, bc
    ld a, a
    nop
    jp hl


    ld bc, $007e
    jp hl


    ld sp, hl
    ld a, l
    nop
    add b
    ld sp, hl
    ld bc, $006b
    ld sp, hl
    ld sp, hl
    ld l, d
    nop
    pop af
    ld bc, $0069
    pop af
    ld sp, hl
    ld l, b
    nop
    jp hl


    ld bc, $0067
    jp hl


    ld sp, hl
    ld h, [hl]
    nop
    add b
    rlca
    ld d, b
    and h
    ld c, a
    and $4f
    ld d, c
    ld d, b
    ld a, d
    ld d, b
    and e
    ld d, b
    ld b, a
    ld d, c
    ld [hl], b
    ld d, c
    sbc c
    ld d, c
    ld [hl], a
    ld d, d
    dec [hl]
    ld d, d
    ld d, [hl]
    ld d, d
    ld hl, sp+$00
    adc h
    nop
    ld hl, sp-$08
    adc e
    nop
    ldh a, [rP1]
    adc d
    nop
    ldh a, [$fff8]
    adc c
    nop
    add sp, $00
    adc b
    nop
    add sp, -$08
    add a
    nop
    ldh [rP1], a
    add [hl]
    nop
    ldh [$fff8], a
    add l
    nop
    add b
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
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
    add b
    sbc $00
    add [hl]
    nop
    sbc $f8
    add l
    nop
    and $f8
    add a
    nop
    or $00
    sub [hl]
    nop
    or $f8
    sub l
    nop
    xor $00
    sub h
    nop
    xor $f8
    sub e
    nop
    and $00
    sub d
    nop
    add b
    jp hl


    nop
    adc l
    nop
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
    ld sp, hl
    nop
    sbc d
    nop
    ld sp, hl
    ld hl, sp-$67
    nop
    pop af
    nop
    sbc b
    nop
    pop af
    ld hl, sp-$69
    nop
    add b
    ld sp, hl
    inc b
    and h
    nop
    ld sp, hl
    db $fc
    and e
    nop
    pop af
    inc b
    and d
    nop
    pop af
    db $fc
    and c
    nop
    pop af
    db $f4
    and b
    nop
    jp hl


    inc b
    sbc a
    nop
    jp hl


    db $fc
    sbc [hl]
    nop
    jp hl


    db $f4
    sbc l
    nop
    pop hl
    ld [bc], a
    sbc h
    nop
    pop hl
    ld a, [$009b]
    add b
    ld sp, hl
    ld bc, $00ac
    ld sp, hl
    ld sp, hl
    xor e
    nop
    pop af
    dec b
    xor d
    nop
    pop af
    db $fd
    xor c
    nop
    pop af
    push af
    xor b
    nop
    pop hl
    ld [bc], a
    sbc h
    nop
    pop hl
    ld a, [$009b]
    jp hl


    dec b
    and a
    nop
    jp hl


    db $fd
    and [hl]
    nop
    jp hl


    push af
    and l
    nop
    add b
    ld hl, sp+$04
    or [hl]
    nop
    ld hl, sp-$04
    or l
    nop
    ldh a, [rTMA]
    or h
    nop
    ldh a, [$fffe]
    or e
    nop
    ldh a, [$fff6]
    or d
    nop
    add sp, $04
    or c
    nop
    add sp, -$04
    or b
    nop
    add sp, -$0c
    xor a
    nop
    ldh [rSC], a
    xor [hl]
    nop
    ldh [$fffa], a
    xor l
    nop
    add b
    ld a, [$bb04]
    nop
    ld a, [$bafc]
    nop
    ldh a, [c]
    ld b, $b9
    nop
    ldh a, [c]
    cp $b8
    nop
    ldh a, [c]
    or $b7
    nop
    ld [$9f04], a
    nop
    ld [$9efc], a
    nop
    ld [$9df4], a
    nop
    ldh [c], a
    ld [bc], a
    sbc h
    nop

jr_013_50c7:
    ldh [c], a
    ld a, [$009b]
    add b
    db $dd
    ld bc, $009c
    db $dd
    ld sp, hl
    sbc e
    nop
    push af
    ld b, $c3
    nop
    push af
    cp $c2
    nop
    push af
    or $c1
    nop
    db $ed
    ld b, $c0
    nop
    db $ed
    cp $bf
    nop
    db $ed
    or $be
    nop
    push hl
    ld bc, $00bd

jr_013_50f0:
    push hl
    ld sp, hl
    cp h
    nop
    add b
    ei
    ld a, [$00cd]
    di
    dec b
    call z, $f300
    db $fd
    rlc b
    di
    push af
    jp z, $eb00

    ld b, $c9
    nop
    db $eb
    cp $c8
    nop
    db $eb
    or $c7
    nop
    db $e3
    ld bc, $00c6
    db $e3
    ld sp, hl
    push bc

jr_013_5118:
    nop

jr_013_5119:
    db $db
    db $fc
    call nz, $8000
    ld sp, hl
    db $f4

jr_013_5120:
    and h
    jr nz, @-$05

    db $fc

jr_013_5124:
    and e
    jr nz, jr_013_5118

    db $f4
    and d
    jr nz, @-$0d

    db $fc
    and c
    jr nz, jr_013_5120

    inc b
    and b
    jr nz, @-$15

    db $f4
    sbc a
    jr nz, jr_013_5120

    db $fc
    sbc [hl]
    jr nz, jr_013_5124

    inc b
    sbc l

jr_013_513d:
    jr nz, jr_013_5120

    or $9c

jr_013_5141:
    jr nz, jr_013_5124

    cp $9b

jr_013_5145:
    jr nz, jr_013_50c7

    ld sp, hl
    rst $30

jr_013_5149:
    xor h
    jr nz, jr_013_5145

    rst $38

jr_013_514d:
    xor e
    jr nz, jr_013_5141

    di

jr_013_5151:
    xor d
    jr nz, jr_013_5145

    ei

jr_013_5155:
    xor c
    jr nz, jr_013_5149

    inc bc
    xor b
    jr nz, jr_013_513d

    or $9c
    jr nz, jr_013_5141

    cp $9b
    jr nz, jr_013_514d

    di
    and a
    jr nz, jr_013_5151

    ei

jr_013_5169:
    and [hl]
    jr nz, jr_013_5155

    inc bc

jr_013_516d:
    and l
    jr nz, jr_013_50f0

    ld hl, sp-$0c
    or [hl]
    jr nz, jr_013_516d

jr_013_5175:
    db $fc
    or l
    jr nz, jr_013_5169

    ldh a, [c]
    or h
    jr nz, jr_013_516d

    ld a, [$20b3]
    ldh a, [rSC]
    or d
    jr nz, jr_013_516d

    db $f4
    or c
    jr nz, @-$16

    db $fc
    or b
    jr nz, jr_013_5175

    inc b
    xor a
    jr nz, @-$1e

    or $ae
    jr nz, jr_013_5175

    cp $ad
    jr nz, jr_013_5119

    ld a, [$bbf4]

jr_013_519c:
    jr nz, @-$04

    db $fc
    cp d

jr_013_51a0:
    jr nz, @-$0c

    ldh a, [c]
    cp c

jr_013_51a4:
    jr nz, @-$0c

    ld a, [$20b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nz, @-$14

    db $f4
    sbc a
    jr nz, jr_013_519c

    db $fc
    sbc [hl]
    jr nz, jr_013_51a0

    inc b
    sbc l
    jr nz, jr_013_519c

    or $9c
    jr nz, jr_013_51a0

    cp $9b

jr_013_51c0:
    jr nz, @-$7e

    db $dd
    rst $30

jr_013_51c4:
    sbc h
    jr nz, jr_013_51a4

    rst $38

jr_013_51c8:
    sbc e
    jr nz, jr_013_51c0

    ldh a, [c]

jr_013_51cc:
    jp $f520


    ld a, [$20c2]
    push af
    ld [bc], a
    pop bc
    jr nz, jr_013_51c4

    ldh a, [c]
    ret nz

    jr nz, jr_013_51c8

    ld a, [$20bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nz, jr_013_51c8

jr_013_51e3:
    rst $30
    cp l
    jr nz, jr_013_51cc

    rst $38
    cp h
    jr nz, @-$7e

jr_013_51eb:
    ei
    cp $cd
    jr nz, jr_013_51e3

    di
    call z, $f320
    ei
    sla b
    di
    inc bc
    jp z, $eb20

    ldh a, [c]
    ret


    jr nz, jr_013_51eb

    ld a, [$20c8]
    db $eb
    ld [bc], a
    rst $00
    jr nz, jr_013_51eb

    rst $30
    add $20
    db $e3
    rst $38
    push bc
    jr nz, jr_013_51eb

    db $fc
    call nz, $8020
    ld sp, hl
    nop
    push de
    nop
    ld sp, hl
    ld hl, sp-$2c
    nop
    pop af
    nop
    db $d3
    nop
    pop af
    ld hl, sp-$2e
    nop
    jp hl


    nop
    pop de
    nop
    jp hl


    ld hl, sp-$30
    nop
    pop hl
    nop
    rst $08
    nop
    pop hl
    ld hl, sp-$32
    nop
    add b
    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$da00]
    nop
    ld a, [$d9f8]
    nop
    ldh a, [c]
    nop
    ret c

    nop
    ldh a, [c]
    ld hl, sp-$29
    nop
    ld [$d6f8], a
    nop
    add b
    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$df00]
    nop
    ld a, [$def8]
    nop
    ldh a, [c]
    nop
    db $dd
    nop
    ldh a, [c]
    ld hl, sp-$24
    nop
    ld [$dbf8], a
    nop
    add b
    rst $20
    nop
    pop de
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    ld hl, sp-$32
    nop
    rst $30
    nop
    db $e4
    nop
    rst $30
    ld hl, sp-$1d
    nop
    rst $28
    nop
    ldh [c], a
    nop
    rst $28
    ld hl, sp-$1f
    nop
    rst $20
    ld hl, sp-$20
    nop
    add b
    ret nc

    ld d, d
    pop af
    ld d, d
    ld [de], a
    ld d, e
    inc sp
    ld d, e
    ld d, h
    ld d, e
    ld [hl], l
    ld d, e
    ret nc

    ld d, d
    sub [hl]
    ld d, e
    cp a
    ld d, e
    add sp, $53
    ld de, $3a54
    ld d, h
    ld h, e
    ld d, h
    adc h
    ld d, h
    or l
    ld d, h
    sbc $54
    rlca
    ld d, l
    jr nc, jr_013_5311

    ld e, c
    ld d, l
    add d
    ld d, l
    xor e
    ld d, l
    call nc, $f555
    ld d, l
    ld d, $56
    scf
    ld d, [hl]
    ld e, b
    ld d, [hl]
    ld a, c
    ld d, [hl]
    sbc d
    ld d, [hl]
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
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
    add b
    ldh [rP1], a
    add [hl]
    nop
    ldh [$fff8], a
    add l
    nop
    add sp, -$08
    add a
    nop
    ld hl, sp+$00
    sub [hl]
    nop
    ld hl, sp-$08
    sub l
    nop
    ldh a, [rP1]
    sub h
    nop
    ldh a, [$fff8]
    sub e
    nop
    add sp, $00
    sub d
    nop

jr_013_5311:
    add b
    call c, $8600
    nop
    call c, $85f8
    nop
    db $e4
    ld hl, sp-$79
    nop
    db $f4
    nop
    sub [hl]
    nop
    db $f4
    ld hl, sp-$6b
    nop
    db $ec
    nop
    sub h
    nop
    db $ec
    ld hl, sp-$6d
    nop
    db $e4
    nop
    sub d
    nop
    add b
    call nc, $8600
    nop
    call nc, $85f8
    nop
    call c, $87f8
    nop
    db $ec
    nop
    sub [hl]
    nop
    db $ec
    ld hl, sp-$6b
    nop
    db $e4
    nop
    sub h
    nop
    db $e4
    ld hl, sp-$6d
    nop
    call c, $9200
    nop
    add b
    ret c

    nop
    add [hl]
    nop
    ret c

    ld hl, sp-$7b
    nop
    ldh [$fff8], a
    add a
    nop
    ldh a, [rP1]
    sub [hl]
    nop
    ldh a, [$fff8]
    sub l
    nop
    add sp, $00
    sub h
    nop
    add sp, -$08
    sub e
    nop
    ldh [rP1], a
    sub d
    nop
    add b
    jp hl


    nop
    adc l
    nop
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
    ld sp, hl
    nop
    sbc d
    nop
    ld sp, hl
    ld hl, sp-$67
    nop
    pop af
    nop
    sbc b
    nop
    pop af
    ld hl, sp-$69
    nop
    add b
    ld sp, hl
    ld bc, $00ac
    ld sp, hl
    ld sp, hl
    xor e
    nop
    pop af
    dec b
    xor d
    nop
    pop af
    db $fd
    xor c
    nop
    pop af
    push af
    xor b
    nop
    pop hl
    ld [bc], a
    sbc h
    nop
    pop hl
    ld a, [$009b]
    jp hl


    dec b
    and a
    nop
    jp hl


    db $fd
    and [hl]
    nop
    jp hl


    push af
    and l
    nop
    add b
    db $dd
    ld bc, $009c
    db $dd
    ld sp, hl
    sbc e
    nop
    push af
    ld b, $c3
    nop
    push af
    cp $c2
    nop
    push af
    or $c1
    nop
    db $ed
    ld b, $c0
    nop
    db $ed
    cp $bf
    nop
    db $ed
    or $be
    nop
    push hl
    ld bc, $00bd
    push hl
    ld sp, hl
    cp h
    nop
    add b
    reti


    ld bc, $009c
    reti


    ld sp, hl
    sbc e
    nop
    pop af
    ld b, $c3
    nop
    pop af
    cp $c2
    nop
    pop af
    or $c1
    nop
    jp hl


    ld b, $c0
    nop
    jp hl


    cp $bf
    nop
    jp hl


    or $be
    nop
    pop hl
    ld bc, $00bd
    pop hl
    ld sp, hl
    cp h
    nop
    add b
    push de
    ld bc, $009c
    push de
    ld sp, hl
    sbc e
    nop
    db $ed
    ld b, $c3
    nop
    db $ed
    cp $c2
    nop
    db $ed
    or $c1
    nop
    push hl
    ld b, $c0
    nop
    push hl
    cp $bf
    nop
    push hl
    or $be
    nop
    db $dd
    ld bc, $00bd
    db $dd
    ld sp, hl
    cp h
    nop
    add b
    reti


    ld bc, $009c
    reti


    ld sp, hl
    sbc e
    nop
    pop af
    ld b, $c3
    nop
    pop af
    cp $c2
    nop
    pop af
    or $c1
    nop
    jp hl


    ld b, $c0
    nop
    jp hl


    cp $bf
    nop
    jp hl


    or $be
    nop
    pop hl
    ld bc, $00bd

jr_013_545e:
    pop hl
    ld sp, hl
    cp h
    nop
    add b
    ei
    ld a, [$00cd]
    di
    dec b
    call z, $f300
    db $fd
    rlc b
    di
    push af
    jp z, $eb00

    ld b, $c9
    nop
    db $eb
    cp $c8
    nop
    db $eb
    or $c7
    nop
    db $e3
    ld bc, $00c6
    db $e3
    ld sp, hl
    push bc
    nop

jr_013_5487:
    db $db
    db $fc
    call nz, $8000
    ld a, [$bb04]
    nop
    ld a, [$bafc]
    nop
    ldh a, [c]
    ld b, $b9
    nop
    ldh a, [c]
    cp $b8
    nop
    ldh a, [c]
    or $b7
    nop
    ld [$9f04], a
    nop
    ld [$9efc], a
    nop
    ld [$9df4], a

jr_013_54ab:
    nop
    ldh [c], a
    ld [bc], a
    sbc h

jr_013_54af:
    nop

jr_013_54b0:
    ldh [c], a
    ld a, [$009b]
    add b
    ld sp, hl
    rst $30

jr_013_54b7:
    xor h
    jr nz, @-$05

    rst $38

jr_013_54bb:
    xor e
    jr nz, jr_013_54af

    di

jr_013_54bf:
    xor d

jr_013_54c0:
    jr nz, @-$0d

    ei

jr_013_54c3:
    xor c
    jr nz, jr_013_54b7

    inc bc
    xor b
    jr nz, jr_013_54ab

    or $9c
    jr nz, jr_013_54af

    cp $9b
    jr nz, jr_013_54bb

    di
    and a
    jr nz, jr_013_54bf

    ei
    and [hl]
    jr nz, jr_013_54c3

    inc bc
    and l

jr_013_54dc:
    jr nz, jr_013_545e

    db $dd
    rst $30

jr_013_54e0:
    sbc h
    jr nz, jr_013_54c0

    rst $38

jr_013_54e4:
    sbc e

jr_013_54e5:
    jr nz, jr_013_54dc

    ldh a, [c]

jr_013_54e8:
    jp $f520


    ld a, [$20c2]
    push af
    ld [bc], a
    pop bc
    jr nz, jr_013_54e0

    ldh a, [c]
    ret nz

    jr nz, jr_013_54e4

    ld a, [$20bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nz, jr_013_54e4

    rst $30
    cp l

jr_013_5501:
    jr nz, jr_013_54e8

    rst $38
    cp h

jr_013_5505:
    jr nz, jr_013_5487

    reti


    rst $30

jr_013_5509:
    sbc h

jr_013_550a:
    jr nz, jr_013_54e5

    rst $38

jr_013_550d:
    sbc e
    jr nz, jr_013_5501

    ldh a, [c]
    jp $f120


    ld a, [$20c2]
    pop af
    ld [bc], a
    pop bc
    jr nz, jr_013_5505

    ldh a, [c]
    ret nz

    jr nz, jr_013_5509

    ld a, [$20bf]
    jp hl


    ld [bc], a
    cp [hl]

jr_013_5526:
    jr nz, jr_013_5509

    rst $30
    cp l

jr_013_552a:
    jr nz, jr_013_550d

    rst $38
    cp h

jr_013_552e:
    jr nz, jr_013_54b0

    push de
    rst $30

jr_013_5532:
    sbc h
    jr nz, jr_013_550a

    rst $38
    sbc e

jr_013_5537:
    jr nz, jr_013_5526

    ldh a, [c]
    jp $ed20


    ld a, [$20c2]
    db $ed
    ld [bc], a
    pop bc
    jr nz, jr_013_552a

    ldh a, [c]
    ret nz

    jr nz, jr_013_552e

    ld a, [$20bf]
    push hl
    ld [bc], a
    cp [hl]
    jr nz, jr_013_552e

    rst $30
    cp l

jr_013_5553:
    jr nz, jr_013_5532

    rst $38
    cp h

jr_013_5557:
    jr nz, @-$7e

    reti


    rst $30

jr_013_555b:
    sbc h
    jr nz, jr_013_5537

    rst $38

jr_013_555f:
    sbc e
    jr nz, jr_013_5553

    ldh a, [c]
    jp $f120


    ld a, [$20c2]
    pop af
    ld [bc], a
    pop bc
    jr nz, jr_013_5557

    ldh a, [c]
    ret nz

    jr nz, jr_013_555b

    ld a, [$20bf]
    jp hl


    ld [bc], a
    cp [hl]
    jr nz, jr_013_555b

jr_013_557a:
    rst $30
    cp l
    jr nz, jr_013_555f

    rst $38
    cp h
    jr nz, @-$7e

jr_013_5582:
    ei
    cp $cd
    jr nz, jr_013_557a

    di
    call z, $f320
    ei
    sla b
    di
    inc bc
    jp z, $eb20

    ldh a, [c]
    ret


    jr nz, jr_013_5582

    ld a, [$20c8]
    db $eb
    ld [bc], a
    rst $00
    jr nz, jr_013_5582

    rst $30
    add $20
    db $e3
    rst $38
    push bc
    jr nz, jr_013_5582

    db $fc
    call nz, $8020
    ld a, [$bbf4]

jr_013_55ae:
    jr nz, @-$04

    db $fc
    cp d

jr_013_55b2:
    jr nz, @-$0c

    ldh a, [c]
    cp c
    jr nz, @-$0c

    ld a, [$20b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nz, @-$14

    db $f4
    sbc a
    jr nz, jr_013_55ae

    db $fc
    sbc [hl]
    jr nz, jr_013_55b2

    inc b
    sbc l
    jr nz, jr_013_55ae

    or $9c
    jr nz, jr_013_55b2

    cp $9b
    jr nz, @-$7e

    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$da00]
    nop
    ld a, [$d9f8]
    nop
    ldh a, [c]
    nop
    ret c

    nop
    ldh a, [c]
    ld hl, sp-$29
    nop
    ld [$d6f8], a
    nop
    add b
    rst $20
    nop
    pop de
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    ld hl, sp-$32
    nop
    rst $30
    nop
    db $e4
    nop
    rst $30
    ld hl, sp-$1d
    nop
    rst $28
    nop
    ldh [c], a
    nop
    rst $28
    ld hl, sp-$1f
    nop
    rst $20
    ld hl, sp-$20
    nop
    add b
    db $e3
    nop
    pop de
    nop
    db $db
    nop
    rst $08
    nop
    db $db
    ld hl, sp-$32
    nop
    di
    nop
    db $e4
    nop
    di
    ld hl, sp-$1d
    nop
    db $eb
    nop
    ldh [c], a
    nop
    db $eb
    ld hl, sp-$1f
    nop
    db $e3
    ld hl, sp-$20
    nop
    add b
    db $db
    nop
    pop de
    nop
    db $d3
    nop
    rst $08
    nop
    db $d3
    ld hl, sp-$32
    nop
    db $eb
    nop
    db $e4
    nop
    db $eb
    ld hl, sp-$1d
    nop
    db $e3
    nop
    ldh [c], a
    nop
    db $e3
    ld hl, sp-$1f
    nop
    db $db
    ld hl, sp-$20
    nop
    add b
    rst $18
    nop
    pop de
    nop
    rst $10
    nop
    rst $08
    nop
    rst $10
    ld hl, sp-$32
    nop
    rst $28
    nop
    db $e4
    nop
    rst $28
    ld hl, sp-$1d
    nop
    rst $20
    nop
    ldh [c], a
    nop
    rst $20
    ld hl, sp-$1f
    nop
    rst $18
    ld hl, sp-$20
    nop
    add b
    rst $20
    nop
    pop de
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    ld hl, sp-$32
    nop
    rst $30
    nop
    db $e4
    nop
    rst $30
    ld hl, sp-$1d
    nop
    rst $28
    nop
    ldh [c], a
    nop
    rst $28
    ld hl, sp-$1f
    nop
    rst $20
    ld hl, sp-$20
    nop
    add b
    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$df00]
    nop
    ld a, [$def8]
    nop
    ldh a, [c]
    nop
    db $dd
    nop
    ldh a, [c]
    ld hl, sp-$24
    nop
    ld [$dbf8], a
    nop
    add b
    ld hl, sp+$01
    sbc $00
    ld hl, sp-$07
    db $dd
    nop
    ldh a, [rSB]
    call c, $f000
    ld sp, hl
    db $db
    nop
    add sp, $01
    jp c, $e800

    ld sp, hl
    reti


    nop
    add b
    call c, Call_013_6056
    ld d, a
    ld d, [hl]
    ld e, b
    ld c, h
    ld e, c
    ld hl, sp+$00
    adc h
    nop
    ld hl, sp-$08
    adc e
    nop
    ldh a, [rP1]
    adc d
    nop
    ldh a, [$fff8]
    adc c
    nop
    add sp, $00
    adc b
    nop
    add sp, -$08
    add a
    nop
    ldh [rP1], a
    add [hl]
    nop
    ldh [$fff8], a
    add l
    nop
    add b
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
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
    add b
    sbc $00
    add [hl]
    nop
    sbc $f8
    add l
    nop
    and $f8
    add a
    nop
    or $00
    sub [hl]
    nop
    or $f8
    sub l
    nop
    xor $00
    sub h
    nop
    xor $f8
    sub e
    nop
    and $00
    sub d
    nop
    add b
    jp hl


    nop
    adc l
    nop
    jp hl


    ld hl, sp-$79
    nop
    pop hl
    nop
    add [hl]
    nop
    pop hl
    ld hl, sp-$7b
    nop
    ld sp, hl
    nop
    sbc d
    nop
    ld sp, hl
    ld hl, sp-$67
    nop
    pop af
    nop
    sbc b
    nop
    pop af
    ld hl, sp-$69
    nop
    add b
    ld sp, hl
    inc b
    and h
    nop
    ld sp, hl
    db $fc
    and e
    nop
    pop af
    inc b
    and d
    nop
    pop af
    db $fc
    and c
    nop
    pop af
    db $f4
    and b
    nop
    jp hl


    inc b
    sbc a
    nop
    jp hl


    db $fc
    sbc [hl]
    nop
    jp hl


    db $f4
    sbc l
    nop
    pop hl
    ld [bc], a
    sbc h
    nop
    pop hl
    ld a, [$009b]
    add b
    ld sp, hl
    ld bc, $00ac
    ld sp, hl
    ld sp, hl
    xor e
    nop
    pop af
    dec b
    xor d
    nop
    pop af
    db $fd
    xor c
    nop
    pop af
    push af
    xor b
    nop
    pop hl
    ld [bc], a
    sbc h
    nop
    pop hl
    ld a, [$009b]
    jp hl


    dec b
    and a
    nop
    jp hl


    db $fd
    and [hl]
    nop
    jp hl


    push af
    and l
    nop
    add b
    ld hl, sp+$04
    or [hl]
    nop
    ld hl, sp-$04
    or l
    nop
    ldh a, [rTMA]
    or h
    nop
    ldh a, [$fffe]
    or e
    nop
    ldh a, [$fff6]
    or d
    nop
    add sp, $04
    or c
    nop
    add sp, -$04
    or b
    nop
    add sp, -$0c
    xor a
    nop
    ldh [rSC], a
    xor [hl]
    nop
    ldh [$fffa], a
    xor l
    nop
    add b
    ld a, [$bb04]
    nop
    ld a, [$bafc]
    nop
    ldh a, [c]
    ld b, $b9
    nop
    ldh a, [c]
    cp $b8
    nop
    ldh a, [c]
    or $b7
    nop
    ld [$9f04], a
    nop
    ld [$9efc], a
    nop
    ld [$9df4], a
    nop
    ldh [c], a
    ld [bc], a
    sbc h
    nop

jr_013_57ff:
    ldh [c], a
    ld a, [$009b]
    add b
    db $dd
    ld bc, $009c
    db $dd
    ld sp, hl
    sbc e
    nop
    push af
    ld b, $c3
    nop
    push af
    cp $c2
    nop
    push af
    or $c1
    nop
    db $ed
    ld b, $c0
    nop
    db $ed
    cp $bf
    nop
    db $ed
    or $be
    nop
    push hl
    ld bc, $00bd

jr_013_5828:
    push hl
    ld sp, hl
    cp h
    nop
    add b
    ei
    ld a, [$00cd]
    di
    dec b
    call z, $f300
    db $fd
    rlc b
    di
    push af
    jp z, $eb00

    ld b, $c9
    nop
    db $eb
    cp $c8
    nop
    db $eb
    or $c7
    nop
    db $e3
    ld bc, $00c6
    db $e3
    ld sp, hl
    push bc

jr_013_5850:
    nop

jr_013_5851:
    db $db
    db $fc
    call nz, $8000
    ld sp, hl
    db $f4

jr_013_5858:
    and h
    jr nz, @-$05

    db $fc

jr_013_585c:
    and e
    jr nz, jr_013_5850

    db $f4
    and d
    jr nz, @-$0d

    db $fc
    and c
    jr nz, jr_013_5858

    inc b
    and b
    jr nz, @-$15

    db $f4
    sbc a
    jr nz, jr_013_5858

    db $fc
    sbc [hl]
    jr nz, jr_013_585c

    inc b
    sbc l

jr_013_5875:
    jr nz, jr_013_5858

    or $9c

jr_013_5879:
    jr nz, jr_013_585c

    cp $9b

jr_013_587d:
    jr nz, jr_013_57ff

    ld sp, hl
    rst $30

jr_013_5881:
    xor h
    jr nz, jr_013_587d

    rst $38

jr_013_5885:
    xor e
    jr nz, jr_013_5879

    di

jr_013_5889:
    xor d
    jr nz, jr_013_587d

    ei

jr_013_588d:
    xor c
    jr nz, jr_013_5881

    inc bc
    xor b
    jr nz, jr_013_5875

    or $9c
    jr nz, jr_013_5879

    cp $9b
    jr nz, jr_013_5885

    di
    and a
    jr nz, jr_013_5889

    ei

jr_013_58a1:
    and [hl]
    jr nz, jr_013_588d

    inc bc

jr_013_58a5:
    and l
    jr nz, jr_013_5828

    ld hl, sp-$0c
    or [hl]
    jr nz, jr_013_58a5

jr_013_58ad:
    db $fc
    or l
    jr nz, jr_013_58a1

    ldh a, [c]
    or h
    jr nz, jr_013_58a5

    ld a, [$20b3]
    ldh a, [rSC]
    or d
    jr nz, jr_013_58a5

    db $f4
    or c

Call_013_58bf:
    jr nz, @-$16

    db $fc
    or b
    jr nz, jr_013_58ad

    inc b
    xor a
    jr nz, @-$1e

    or $ae
    jr nz, jr_013_58ad

    cp $ad
    jr nz, jr_013_5851

    ld a, [$bbf4]

jr_013_58d4:
    jr nz, @-$04

    db $fc
    cp d

jr_013_58d8:
    jr nz, @-$0c

    ldh a, [c]
    cp c

jr_013_58dc:
    jr nz, @-$0c

    ld a, [$20b8]
    ldh a, [c]
    ld [bc], a
    or a
    jr nz, @-$14

    db $f4
    sbc a
    jr nz, jr_013_58d4

    db $fc
    sbc [hl]
    jr nz, jr_013_58d8

    inc b
    sbc l
    jr nz, jr_013_58d4

    or $9c
    jr nz, jr_013_58d8

    cp $9b

jr_013_58f8:
    jr nz, @-$7e

    db $dd
    rst $30

jr_013_58fc:
    sbc h
    jr nz, jr_013_58dc

    rst $38

jr_013_5900:
    sbc e
    jr nz, jr_013_58f8

    ldh a, [c]

jr_013_5904:
    jp $f520


    ld a, [$20c2]
    push af
    ld [bc], a
    pop bc
    jr nz, jr_013_58fc

    ldh a, [c]
    ret nz

    jr nz, jr_013_5900

    ld a, [$20bf]
    db $ed
    ld [bc], a
    cp [hl]
    jr nz, jr_013_5900

jr_013_591b:
    rst $30
    cp l
    jr nz, jr_013_5904

    rst $38
    cp h
    jr nz, @-$7e

jr_013_5923:
    ei
    cp $cd
    jr nz, jr_013_591b

    di
    call z, $f320
    ei
    sla b
    di
    inc bc
    jp z, $eb20

    ldh a, [c]
    ret


    jr nz, jr_013_5923

    ld a, [$20c8]
    db $eb
    ld [bc], a
    rst $00
    jr nz, jr_013_5923

    rst $30
    add $20
    db $e3
    rst $38
    push bc
    jr nz, jr_013_5923

    db $fc
    call nz, $8020
    ld sp, hl
    nop
    push de
    nop
    ld sp, hl
    ld hl, sp-$2c
    nop
    pop af
    nop
    db $d3
    nop
    pop af
    ld hl, sp-$2e
    nop
    jp hl


    nop
    pop de
    nop
    jp hl


    ld hl, sp-$30
    nop
    pop hl
    nop
    rst $08
    nop
    pop hl
    ld hl, sp-$32
    nop
    add b
    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$da00]
    nop
    ld a, [$d9f8]
    nop
    ldh a, [c]
    nop
    ret c

    nop
    ldh a, [c]
    ld hl, sp-$29
    nop
    ld [$d6f8], a
    nop
    add b
    ld [$d100], a
    nop
    ldh [c], a
    nop
    rst $08
    nop
    ldh [c], a
    ld hl, sp-$32
    nop
    ld a, [$df00]
    nop
    ld a, [$def8]
    nop
    ldh a, [c]
    nop
    db $dd
    nop
    ldh a, [c]
    ld hl, sp-$24
    nop
    ld [$dbf8], a
    nop
    add b
    rst $20
    nop
    pop de
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    ld hl, sp-$32
    nop
    rst $30
    nop
    db $e4
    nop
    rst $30
    ld hl, sp-$1d
    nop
    rst $28
    nop
    ldh [c], a
    nop
    rst $28
    ld hl, sp-$1f
    nop
    rst $20
    ld hl, sp-$20
    nop
    add b
    ldh [$ff59], a
    ld sp, hl
    ld e, c
    ld d, $5a
    inc sp
    ld e, d
    ld d, b
    ld e, d
    ld l, l
    ld e, d
    ld d, b
    ld e, d
    ld l, l
    ld e, d
    ld hl, sp+$01
    ld [de], a
    nop
    ld hl, sp-$07
    ld de, $f000
    ld bc, $0010
    ldh a, [$fff9]
    rrca
    nop
    add sp, $01
    ld c, $00
    add sp, -$07
    dec c
    nop
    add b
    ld hl, sp+$01
    jr jr_013_59fd

jr_013_59fd:
    ld hl, sp-$07
    rla
    nop
    rst $28
    add hl, bc
    ld [bc], a
    nop
    ldh a, [rSB]
    ld d, $00
    ldh a, [$fff9]
    dec d
    nop
    add sp, $01
    inc d
    nop
    add sp, -$07
    inc de
    nop
    add b
    ld hl, sp+$01
    ld b, $00
    ld hl, sp-$07
    dec b
    nop
    ldh a, [rSB]
    inc b
    nop
    ldh a, [$fff9]
    inc bc
    nop
    add sp, $09
    ld [bc], a
    nop
    add sp, $01
    ld bc, $e800
    ld sp, hl
    nop
    nop
    add b
    ld hl, sp-$03
    inc c
    nop
    ld hl, sp-$0b
    dec bc
    nop
    db $eb
    dec b
    ld [bc], a
    nop
    ldh a, [$fffd]
    ld a, [bc]
    nop
    ldh a, [$fff5]
    add hl, bc
    nop
    add sp, -$03

jr_013_5a49:
    ld [$e800], sp
    push af

jr_013_5a4d:
    rlca
    nop
    add b
    ld hl, sp-$09
    ld b, $20
    ld hl, sp-$01
    dec b
    jr nz, jr_013_5a49

    rst $30
    inc b
    jr nz, jr_013_5a4d

    rst $38
    inc bc
    jr nz, jr_013_5a49

jr_013_5a61:
    rst $28
    ld [bc], a
    jr nz, jr_013_5a4d

    rst $30
    ld bc, $e820
    rst $38

jr_013_5a6a:
    nop
    jr nz, @-$7e

    ld hl, sp-$05
    inc c
    jr nz, jr_013_5a6a

    inc bc
    dec bc
    jr nz, jr_013_5a61

    di
    ld [bc], a
    jr nz, jr_013_5a6a

    ei
    ld a, [bc]
    jr nz, @-$0e

    inc bc
    add hl, bc
    jr nz, jr_013_5a6a

    ei
    ld [$e820], sp
    inc bc
    rlca
    jr nz, @-$7e

    or d
    ld e, d
    bit 3, d
    or d
    ld e, d
    bit 3, d
    or d
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    db $e4
    ld e, d
    ld d, $5b
    cpl
    ld e, e
    ld d, $5b
    cpl
    ld e, e
    ld d, $5b
    ld c, b
    ld e, e
    ld h, c
    ld e, e
    ld c, b
    ld e, e
    ld h, c

jr_013_5aaf:
    ld e, e
    ld c, b
    ld e, e
    ld sp, hl
    nop
    ld e, $00
    ld sp, hl
    ld hl, sp+$1d
    nop
    pop af
    nop
    inc e
    nop
    pop af
    ld hl, sp+$1b
    nop
    jp hl


    nop
    ld a, [de]
    nop
    jp hl


    ld hl, sp+$19
    nop
    add b
    ld sp, hl
    nop
    inc h
    nop
    ld sp, hl
    ld hl, sp+$23
    nop
    pop af
    nop
    ld [hl+], a
    nop
    pop af
    ld hl, sp+$21
    nop
    jp hl


    nop
    jr nz, jr_013_5adf

jr_013_5adf:
    jp hl


    ld hl, sp+$1f
    nop
    add b
    ld hl, sp-$01
    ld a, [hl+]
    nop
    ld hl, sp-$09
    add hl, hl
    nop
    ldh a, [rIE]
    jr z, jr_013_5af0

jr_013_5af0:
    ldh a, [$fff7]
    daa
    nop
    add sp, -$01
    ld h, $00
    add sp, -$09
    dec h
    nop
    add b
    ld hl, sp-$04
    jr nc, jr_013_5b01

jr_013_5b01:
    ld hl, sp-$0c
    cpl
    nop
    ldh a, [$fffc]
    ld l, $00
    ldh a, [$fff4]
    dec l
    nop
    add sp, -$04

jr_013_5b0f:
    inc l
    nop
    add sp, -$0c

jr_013_5b13:
    dec hl
    nop
    add b
    ld hl, sp-$07
    ld a, [hl+]
    jr nz, jr_013_5b13

    ld bc, $2029
    ldh a, [$fff9]
    jr z, jr_013_5b42

    ldh a, [rSB]
    daa
    jr nz, jr_013_5b0f

    ld sp, hl

jr_013_5b28:
    ld h, $20
    add sp, $01

jr_013_5b2c:
    dec h
    jr nz, jr_013_5aaf

    ld hl, sp-$04
    jr nc, jr_013_5b53

    ld hl, sp+$04
    cpl
    jr nz, jr_013_5b28

    db $fc
    ld l, $20
    ldh a, [rDIV]
    dec l
    jr nz, jr_013_5b28

    db $fc
    inc l

jr_013_5b42:
    jr nz, jr_013_5b2c

    inc b
    dec hl
    jr nz, @-$7e

    ld hl, sp+$01
    ld [hl], $00
    ld hl, sp-$07
    dec [hl]
    nop
    ldh a, [rSB]
    inc [hl]

jr_013_5b53:
    nop
    ldh a, [$fff9]
    inc sp
    nop
    add sp, $01
    ld [hl-], a
    nop
    add sp, -$07
    ld sp, $8000
    ld hl, sp+$01
    inc a
    nop
    ld hl, sp-$07
    dec sp
    nop
    ldh a, [rSB]
    ld a, [hl-]
    nop
    ldh a, [$fff9]
    add hl, sp
    nop
    add sp, $01
    jr c, jr_013_5b75

jr_013_5b75:
    add sp, -$07
    scf
    nop
    add b
    ld a, [de]
    ld e, l
    inc hl
    ld e, l
    inc l
    ld e, l
    dec [hl]
    ld e, l
    ld a, $5d
    ld a, $5d
    ld a, $5d
    ld a, $5d
    ld b, a
    ld e, l
    ld b, a
    ld e, l
    ld b, a
    ld e, l
    ld c, [hl]
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld e, b
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    halt
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    ld a, a
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    adc b
    ld e, l
    sub c
    ld e, l
    and h
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    or b
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    cp c
    ld e, l
    jp nz, $c25d

    ld e, l
    jp nz, $c25d

    ld e, l
    bit 3, l
    bit 3, l
    bit 3, l
    bit 3, l
    jp c, $da5d

    ld e, l
    jp c, $da5d

    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    jp hl


    ld e, l
    di
    ld e, l
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    dec c
    ld e, [hl]
    jr jr_013_5c68

    jr jr_013_5c6a

    jr jr_013_5c6c

    jr jr_013_5c6e

    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    dec de
    ld e, [hl]
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld e, $5e
    daa
    ld e, [hl]
    ld l, $5e
    ld sp, $345e
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    inc [hl]
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    dec a
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld c, a
    ld e, [hl]
    xor $5d
    xor $5d
    xor $5d
    xor $5d
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]

jr_013_5c68:
    ld l, e
    ld e, [hl]

jr_013_5c6a:
    ld [hl], h
    ld e, [hl]

jr_013_5c6c:
    ld [hl], h
    ld e, [hl]

jr_013_5c6e:
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    add d
    ld e, [hl]
    sub l
    ld e, [hl]
    or h
    ld e, [hl]
    cp e
    ld e, [hl]
    ret nz

    ld e, [hl]
    rst $00
    ld e, [hl]
    jp z, $e35e

    ld e, [hl]
    ldh a, [c]
    ld e, [hl]
    db $fd
    ld e, [hl]
    inc d
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    dec sp
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, l
    ld e, a
    ld d, d
    ld e, a
    ld e, l
    ld e, a
    ld [hl], d
    ld e, a
    sub l
    ld e, a
    sbc d
    ld e, a
    cp c
    ld e, a
    cp c
    ld e, a
    cp [hl]
    ld e, a
    db $db
    ld e, a
    ldh [$ff5f], a
    ldh [$ff5f], a
    ldh [$ff5f], a
    ldh [$ff5f], a
    rst $20
    ld e, a
    rst $20
    ld e, a
    rst $20
    ld e, a
    rst $20
    ld e, a
    or $5f
    or $5f
    or $5f
    or $5f
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    ld sp, hl
    ld e, a
    cp $5f
    cp $5f
    cp $5f
    cp $5f
    add hl, bc
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    inc d
    ld h, b
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    rrca
    inc bc
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    nop
    rst $38
    inc d
    nop
    ld b, $01
    ld bc, $ff02
    ld [$1200], sp
    ld [bc], a
    ld bc, $ff02
    add hl, bc
    nop
    rst $38
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    nop
    rst $38
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    rra
    nop
    rra
    ld bc, $020f
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$ff08], sp
    jr c, jr_013_5da6

jr_013_5da6:
    rst $38
    jr jr_013_5da9

jr_013_5da9:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5db2

jr_013_5db2:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dbb

jr_013_5dbb:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dc4

jr_013_5dc4:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    jr jr_013_5dcd

jr_013_5dcd:
    add hl, bc
    ld bc, $0209
    add hl, bc
    inc bc
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $ff
    jr jr_013_5ddc

jr_013_5ddc:
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $ff
    jr jr_013_5deb

jr_013_5deb:
    ccf
    ld bc, $0fff
    nop
    jr z, jr_013_5df3

    rst $38

jr_013_5df3:
    rrca
    nop
    rrca
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$1805], sp
    ld b, $ff
    rrca
    nop
    ld a, [bc]
    ld bc, $0206
    ld b, $03
    rra
    inc b
    rst $38
    rrca
    nop
    ld a, [bc]
    ld bc, $0206
    ld b, $03
    rra
    inc b
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    inc c
    nop
    inc c
    ld bc, $020f
    ld c, a
    inc bc
    rst $38
    ld [$0f00], sp
    ld bc, $020f
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    jr jr_013_5e36

jr_013_5e36:
    ld b, $01
    ld [$0f02], sp
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    dec c
    nop
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $ff
    rrca
    nop
    rrca
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $0a
    rlca
    ld [$ff08], sp
    ld b, $03
    ld [$0404], sp
    dec b
    ld b, $06
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rrca
    nop
    ld a, [bc]
    ld bc, $0208
    rrca
    inc bc
    rrca
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $0206
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    rrca
    ld [$0fff], sp
    nop
    rrca
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    dec bc
    inc b
    inc c
    inc b
    dec c
    ld [$ff0e], sp
    rrca
    nop
    ld b, $01
    inc b
    ld [bc], a
    rst $38
    stop
    db $10
    ld bc, $08ff
    nop
    rrca
    ld bc, $020f
    rst $38
    rrca
    nop
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rrca
    dec bc
    rst $38
    inc d
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $ff
    inc d
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    ld [$0805], sp
    ld b, $18
    rlca
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rst $38
    rrca
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    jr @+$06

    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, $1a
    rlca
    ld a, [bc]
    ld [$090a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    ld a, [bc]
    dec c
    ld a, [bc]
    ld c, $0a
    rrca
    ld a, [bc]
    db $10
    ld a, [bc]
    ld de, $121f
    rst $38
    rrca
    nop
    rrca
    ld bc, $3fff
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$ff05], sp
    rrca
    nop
    ld [$1801], sp
    ld [bc], a
    ld [$0803], sp
    inc b
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $18
    rlca
    rrca
    ld [$090f], sp
    rst $38
    ld d, $00
    dec c
    ld bc, $020d
    dec c
    inc bc
    dec c
    inc b
    dec c
    dec b
    dec c
    ld b, $0d
    rlca
    ld d, $08
    dec c
    add hl, bc
    dec c
    ld a, [bc]
    dec c
    dec bc
    dec c
    inc c
    dec c
    dec c
    dec c
    ld c, $0d
    rrca
    ld d, $10
    rst $38
    rrca
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    jr jr_013_5fb4

    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    dec bc
    rrca
    inc c

jr_013_5fb4:
    rrca
    dec c
    rrca
    ld c, $ff
    rra
    nop
    cpl
    ld bc, $0fff
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    jr @+$06

    rrca
    dec b
    rrca
    ld b, $0f
    rlca
    jr jr_013_5fd8

    rrca
    add hl, bc
    jr jr_013_5fde

    rrca
    dec bc
    rrca
    inc c

jr_013_5fd8:
    rrca
    dec c
    rst $38
    cpl
    nop
    rra

jr_013_5fde:
    ld bc, $08ff
    nop
    ld [$0801], sp
    ld [bc], a
    rst $38
    ld b, $00
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    inc bc
    ld b, $04
    ld [bc], a
    dec b
    inc b
    ld b, $ff
    ld [$ff00], sp
    rra
    nop
    cpl
    ld bc, $0aff
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    inc bc
    ld a, [bc]
    inc b
    rst $38
    inc a
    nop
    dec bc
    ld bc, $020b
    dec bc
    inc bc
    rra
    inc b
    rst $38
    ld [bc], a
    push af
    jr z, jr_013_6079

    ld [bc], a
    push af
    ld a, [hl+]
    ld h, c
    ld [bc], a
    push af
    inc l
    ld h, c
    ld [bc], a
    push af
    ld l, $61
    ld [bc], a
    push af
    jr nc, jr_013_6089

    ld [bc], a
    push af
    ld [hl-], a
    ld h, c
    ld [bc], a
    push af
    inc [hl]
    ld h, c
    ld [bc], a
    push af
    ld [hl], $61
    ld [bc], a
    push af
    jr c, jr_013_6099

    ld [bc], a
    push af
    ld b, b
    ld h, c
    ld [bc], a
    push af
    ld c, b
    ld h, c
    ld [bc], a
    push af
    ld d, b
    ld h, c
    ld [bc], a
    push af
    sbc b
    ld h, h
    ld [bc], a
    push af
    sbc d
    ld h, h
    ld [bc], a
    push af
    sbc h
    ld h, h
    ld [bc], a
    push af
    sbc [hl]
    ld h, h
    ld [bc], a
    push af

Call_013_6056:
    and b
    ld h, h
    ld [bc], a
    push af
    xor b
    ld h, h
    ld [bc], a
    push af
    or b
    ld h, h
    ld [bc], a
    push af
    cp b
    ld h, h
    ld [bc], a
    push af
    ret nz

    ld h, h
    ld [bc], a
    push af
    jp nz, Jump_000_0264

    push af
    call nz, Call_000_0264
    push af
    add $64
    ld [bc], a
    push af
    ret z

    ld h, h
    ld [bc], a

jr_013_6079:
    push af
    ret nc

    ld h, h
    ld [bc], a
    push af
    ret c

    ld h, h
    ld [bc], a
    push af
    ldh [$ff64], a
    ld [bc], a
    push af
    ld b, b
    ld h, a
    ld [bc], a

jr_013_6089:
    push af
    ld b, d
    ld h, a
    ld [bc], a
    push af
    ld b, h
    ld h, a
    ld [bc], a
    push af
    ld b, [hl]
    ld h, a
    ld [bc], a
    push af
    ld c, b
    ld h, a
    ld [bc], a

jr_013_6099:
    push af
    ld d, b
    ld h, a
    ld [bc], a
    push af
    ld e, b
    ld h, a
    ld [bc], a
    push af
    ld h, b
    ld h, a
    inc bc
    push af
    ld l, b
    ld h, a
    inc bc
    push af
    ld l, d
    ld h, a
    inc bc
    push af
    ld l, h
    ld h, a
    inc bc
    push af
    ld l, [hl]
    ld h, a
    inc bc
    push af
    ld [hl], b
    ld h, a
    inc bc
    push af
    ld a, b
    ld h, a
    inc bc
    push af
    add b
    ld h, a
    inc bc
    push af
    adc b
    ld h, a
    inc bc
    push af
    ld b, b
    ld l, d
    inc bc
    push af
    ld b, d
    ld l, d
    inc bc
    push af
    ld b, h
    ld l, d
    inc bc
    push af
    ld b, [hl]
    ld l, d
    inc bc
    push af
    ld c, b
    ld l, d
    inc bc
    push af
    ld d, b
    ld l, d
    inc bc
    push af
    ld e, b
    ld l, d
    inc bc
    push af
    ld h, b
    ld l, d
    inc bc
    push af
    reti


    ld l, h
    inc bc
    push af
    db $db
    ld l, h
    inc bc
    push af
    db $dd
    ld l, h
    inc bc
    push af
    rst $18
    ld l, h
    inc bc
    push af
    pop hl
    ld l, h
    inc bc
    push af
    jp hl


    ld l, h
    inc bc
    push af
    pop af
    ld l, h
    inc bc
    push af
    ld sp, hl
    ld l, h
    inc bc
    push af
    ld bc, $036d
    push af
    rlca
    ld l, l
    inc bc
    push af
    add hl, bc
    ld l, l
    inc bc
    push af
    dec bc
    ld l, l
    inc bc
    push af
    dec c
    ld l, l
    inc bc
    push af
    rrca
    ld l, l
    inc bc
    push af
    rla
    ld l, l
    inc bc
    push af
    rra
    ld l, l
    inc bc
    push af
    daa
    ld l, l
    ld e, b
    ld h, c
    ld a, c
    ld h, c
    sbc d
    ld h, c
    cp e
    ld h, c
    call c, $2761
    ld h, d
    ld [hl], d
    ld h, d
    cp l
    ld h, d
    push af
    ld h, c
    call c, $0e61
    ld h, d
    call c, Call_013_4061
    ld h, d
    daa
    ld h, d
    ld e, c
    ld h, d
    daa
    ld h, d
    adc e
    ld h, d
    ld [hl], d
    ld h, d
    and h
    ld h, d
    ld [hl], d
    ld h, d
    sub $62
    cp l
    ld h, d
    rst $28
    ld h, d
    cp l
    ld h, d
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec b
    nop
    ldh a, [$fff9]
    inc b
    nop
    add sp, $01
    inc bc
    nop
    add sp, -$07
    ld [bc], a
    nop
    ldh [rSB], a
    ld bc, $e000
    ld sp, hl
    nop
    nop
    add b
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec c
    nop
    ldh a, [$fff9]
    inc c
    nop
    add sp, $01
    dec bc
    nop
    add sp, -$07
    ld a, [bc]
    nop
    ldh [rSB], a
    add hl, bc
    nop
    ldh [$fff9], a
    ld [$8000], sp
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    inc de
    nop
    ldh a, [$fff9]
    ld [de], a
    nop
    add sp, $01
    ld de, $e800
    ld sp, hl
    stop
    ldh [rSB], a
    rrca
    nop
    ldh [$fff9], a
    ld c, $00
    add b
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_013_61c3

jr_013_61c3:
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
    ldh [rSB], a
    ld bc, $e000
    ld sp, hl
    nop
    nop
    add b
    ld sp, hl
    nop
    rra
    nop
    ld sp, hl
    ld hl, sp+$1e
    nop
    pop af
    nop
    dec e
    nop
    pop af
    ld hl, sp+$1c
    nop
    jp hl


    nop
    dec de
    nop
    jp hl


    ld hl, sp+$1a
    nop
    add b
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    ldh a, [rP1]
    ld hl, $f000
    ld hl, sp+$20
    nop
    add sp, $00
    dec de
    nop
    add sp, -$08
    ld a, [de]
    nop
    add b
    add sp, $00
    dec de
    nop
    add sp, -$08
    ld a, [de]
    nop
    ld hl, sp+$00
    daa
    nop
    ld hl, sp-$08
    ld h, $00
    ldh a, [rP1]
    dec h
    nop
    ldh a, [$fff8]
    inc h
    nop
    add b
    ld sp, hl
    nop
    dec l
    nop
    ld sp, hl
    ld hl, sp+$2c
    nop
    pop af
    nop
    dec hl
    nop
    pop af
    ld hl, sp+$2a
    nop
    jp hl


    nop
    add hl, hl
    nop
    jp hl


    ld hl, sp+$28
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
    add hl, hl
    nop
    add sp, -$08
    jr z, jr_013_6258

jr_013_6258:
    add b
    ld hl, sp+$00
    dec [hl]
    nop
    ld hl, sp-$08
    inc [hl]
    nop
    ldh a, [rP1]
    inc sp
    nop
    ldh a, [$fff8]
    ld [hl-], a
    nop
    add sp, $00
    add hl, hl
    nop
    add sp, -$08
    jr z, jr_013_6271

jr_013_6271:
    add b
    ld sp, hl
    ld sp, hl
    dec l
    jr nz, @-$05

    ld bc, $202c
    pop af
    ld sp, hl
    dec hl
    jr nz, @-$0d

    ld bc, $202a
    jp hl


    ld sp, hl
    add hl, hl
    jr nz, @-$15

    ld bc, $2028
    add b
    ld hl, sp-$07
    ld sp, $f820
    ld bc, $2030
    ldh a, [$fff9]
    cpl
    jr nz, @-$0e

    ld bc, $202e
    add sp, -$07
    add hl, hl
    jr nz, @-$16

    ld bc, $2028
    add b
    ld hl, sp-$07
    dec [hl]
    jr nz, @-$06

    ld bc, $2034
    ldh a, [$fff9]
    inc sp
    jr nz, @-$0e

    ld bc, $2032
    add sp, -$07
    add hl, hl
    jr nz, @-$16

    ld bc, $2028
    add b
    ld sp, hl
    nop
    dec sp
    nop
    ld sp, hl
    ld hl, sp+$3a
    nop
    pop af
    nop
    add hl, sp
    nop
    pop af
    ld hl, sp+$38
    nop
    jp hl


    nop
    scf
    nop
    jp hl


    ld hl, sp+$36
    nop
    add b
    ld hl, sp+$00
    ccf
    nop
    ld hl, sp-$08
    ld a, $00
    ldh a, [rP1]
    dec a
    nop
    ldh a, [$fff8]
    inc a
    nop
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [rP1]
    ld b, c
    nop
    ldh a, [$fff8]
    ld b, b
    nop
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    ld sp, hl
    nop
    ld c, c
    nop
    ld sp, hl
    ld hl, sp+$48
    nop
    pop af
    nop
    ld b, a
    nop
    pop af
    ld hl, sp+$46
    nop
    jp hl


    nop
    ld b, l
    nop
    jp hl


    ld hl, sp+$44
    nop
    add b
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    ldh a, [rP1]
    ld b, a
    nop
    ldh a, [$fff8]
    ld b, [hl]
    nop
    add sp, $00
    ld b, l
    nop
    add sp, -$08

jr_013_6337:
    ld b, h
    nop
    add b
    ld hl, sp-$07
    ld c, e
    jr nz, jr_013_6337

    ld bc, $204a
    ldh a, [rP1]
    ld b, a
    nop
    ldh a, [$fff8]
    ld b, [hl]
    nop
    add sp, $00
    ld b, l
    nop
    add sp, -$08
    ld b, h
    nop
    add b
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    ldh a, [$fff8]
    ld c, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$00
    ld d, l
    nop
    ld hl, sp-$08
    ld d, h
    nop
    ldh a, [rP1]
    ld d, e
    nop
    ldh a, [$fff8]
    ld d, d
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$00
    ld e, c
    nop
    ld hl, sp-$08
    ld e, b
    nop
    ldh a, [rP1]
    ld d, a
    nop
    ldh a, [$fff8]
    ld d, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08

jr_013_639b:
    ld c, h
    nop
    add b
    ld hl, sp-$07
    ld d, c
    jr nz, jr_013_639b

    ld bc, $2050
    ldh a, [$fff9]
    ld c, a
    jr nz, jr_013_639b

    ld bc, $204e
    add sp, -$07
    ld c, l
    jr nz, jr_013_639b

    ld bc, $204c
    add b
    ld hl, sp-$07
    ld d, l
    jr nz, @-$06

    ld bc, $2054
    ldh a, [$fff9]
    ld d, e
    jr nz, @-$0e

    ld bc, $2052
    add sp, -$07
    ld c, l
    jr nz, @-$16

    ld bc, $204c
    add b
    ld hl, sp-$07
    ld e, c
    jr nz, @-$06

    ld bc, $2058
    ldh a, [$fff9]
    ld d, a
    jr nz, @-$0e

    ld bc, $2056
    add sp, -$07
    ld c, l
    jr nz, @-$16

    ld bc, $204c
    add b
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
    ld e, h
    nop
    add sp, $00
    ld e, e
    nop
    add sp, -$08
    ld e, d
    nop
    add b
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    ldh a, [rP1]
    ld h, c
    nop
    ldh a, [$fff8]
    ld h, b
    nop
    add sp, $00
    ld e, e
    nop
    add sp, -$08

jr_013_6418:
    ld e, d
    nop
    add b
    ld hl, sp-$07
    ld h, e
    jr nz, jr_013_6418

    ld bc, $2062
    ldh a, [$fff9]
    ld h, c
    jr nz, jr_013_6418

    ld bc, $2060
    add sp, $00
    ld e, e
    nop
    add sp, -$08
    ld e, d
    nop
    add b
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
    add sp, $00
    ld h, l
    nop
    add sp, -$08
    ld h, h
    nop
    add b
    ldh a, [rP1]
    ld [hl], c
    nop
    ldh a, [$fff8]
    ld [hl], b
    nop
    add sp, $00
    ld l, a
    nop
    add sp, -$08
    ld l, [hl]
    nop
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    add b
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
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

jr_013_647c:
    ld l, d
    nop
    add b
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    ldh a, [$fff9]
    ld l, l
    jr nz, jr_013_647c

    ld bc, $206c
    add sp, -$07
    ld l, e
    jr nz, jr_013_647c

    ld bc, $206a
    add b
    add sp, $64
    inc sp
    ld h, l
    ld a, [hl]
    ld h, l
    ret


    ld h, l
    ld bc, $e865
    ld h, h
    ld a, [de]
    ld h, l
    add sp, $64
    ld c, h
    ld h, l
    inc sp
    ld h, l
    ld h, l
    ld h, l
    inc sp
    ld h, l
    sub a
    ld h, l
    ld a, [hl]
    ld h, l
    or b
    ld h, l
    ld a, [hl]
    ld h, l
    ldh [c], a
    ld h, l
    ret


    ld h, l
    ei
    ld h, l
    ret


    ld h, l
    inc d
    ld h, [hl]
    ld e, a
    ld h, [hl]
    xor d
    ld h, [hl]
    push af
    ld h, [hl]
    dec l
    ld h, [hl]
    inc d
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    inc d
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld e, a
    ld h, [hl]
    sub c
    ld h, [hl]
    ld e, a
    ld h, [hl]
    jp $aa66


    ld h, [hl]
    call c, $aa66
    ld h, [hl]
    ld c, $67
    push af
    ld h, [hl]
    daa
    ld h, a
    push af
    ld h, [hl]
    ld sp, hl
    nop
    ld [hl], a
    nop
    ld sp, hl
    ld hl, sp+$76
    nop
    pop af
    nop
    ld [hl], l
    nop
    pop af
    ld hl, sp+$74
    nop
    jp hl


    nop
    ld [hl], e
    nop
    jp hl


    ld hl, sp+$72
    nop
    add b
    add sp, $00
    ld [hl], e
    nop
    add sp, -$08
    ld [hl], d
    nop
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

jr_013_6517:
    ld a, b
    nop
    add b
    ld hl, sp+$00
    ld a, a
    nop
    ld hl, sp-$08
    ld a, [hl]
    nop
    ldh a, [rP1]
    ld a, l
    nop
    ldh a, [$fff8]
    ld a, h
    nop
    add sp, $00
    ld [hl], e
    nop
    add sp, -$08

jr_013_6530:
    ld [hl], d
    nop
    add b
    ld sp, hl
    nop
    add l
    nop
    ld sp, hl
    ld hl, sp-$7c
    nop
    pop af
    nop
    add e
    nop
    pop af
    ld hl, sp-$7e
    nop
    jp hl


    nop
    add c
    nop
    jp hl


    ld hl, sp-$80
    nop
    add b
    ld hl, sp+$00
    adc c
    nop
    ld hl, sp-$08
    adc b
    nop
    ldh a, [rP1]
    add a
    nop
    ldh a, [$fff8]
    add [hl]
    nop
    add sp, $00
    add c
    nop
    add sp, -$08
    add b
    nop
    add b
    add sp, $00
    add c
    nop
    add sp, -$08
    add b
    nop
    ld hl, sp+$00
    adc l
    nop
    ld hl, sp-$08
    adc h
    nop
    ldh a, [rP1]
    adc e

jr_013_6578:
    nop
    ldh a, [$fff8]
    adc d
    nop
    add b
    ld sp, hl
    ld a, [$2085]
    ld sp, hl
    ld [bc], a
    add h
    jr nz, jr_013_6578

    ld a, [$2083]
    pop af
    ld [bc], a
    add d
    jr nz, jr_013_6578

    ld a, [$2081]
    jp hl


    ld [bc], a

jr_013_6594:
    add b
    jr nz, jr_013_6517

    ld hl, sp-$06
    adc c
    jr nz, jr_013_6594

    ld [bc], a

jr_013_659d:
    adc b
    jr nz, @-$0e

    ld a, [$2087]
    ldh a, [rSC]
    add [hl]
    jr nz, @-$16

    ld a, [$2081]
    add sp, $02
    add b
    jr nz, jr_013_6530

    add sp, -$06
    add c
    jr nz, jr_013_659d

    ld [bc], a
    add b
    jr nz, @-$06

    ld a, [$208d]
    ld hl, sp+$02
    adc h
    jr nz, @-$0e

    ld a, [$208b]
    ldh a, [rSC]
    adc d
    jr nz, @-$7e

    ld sp, hl
    nop
    sub e
    nop
    ld sp, hl
    ld hl, sp-$6e
    nop
    pop af
    nop
    sub c
    nop
    pop af
    ld hl, sp-$70
    nop
    jp hl


    nop
    adc a
    nop
    jp hl


    ld hl, sp-$72
    nop
    add b
    ld hl, sp+$00
    sub a
    nop
    ld hl, sp-$08
    sub [hl]
    nop
    ldh a, [rP1]
    sub l
    nop
    ldh a, [$fff8]
    sub h
    nop
    add sp, $00
    adc a
    nop
    add sp, -$08
    adc [hl]
    nop
    add b
    add sp, $00
    adc a
    nop
    add sp, -$08
    adc [hl]
    nop
    ld hl, sp+$00
    sbc e
    nop
    ld hl, sp-$08
    sbc d
    nop
    ldh a, [rP1]
    sbc c
    nop
    ldh a, [$fff8]
    sbc b
    nop
    add b
    ld hl, sp+$00
    and c
    nop
    ld hl, sp-$08
    and b
    nop
    ldh a, [rP1]
    sbc a
    nop
    ldh a, [$fff8]
    sbc [hl]
    nop
    add sp, $00
    sbc l
    nop
    add sp, -$08
    sbc h
    nop
    add b
    rst $30
    nop
    and a
    nop
    rst $30
    ld hl, sp-$5a
    nop
    rst $28
    nop
    and l
    nop
    rst $28
    ld hl, sp-$5c
    nop
    rst $20
    nop
    and e
    nop
    rst $20
    ld hl, sp-$5e
    nop
    add b
    rst $30
    rst $38
    xor l
    nop
    rst $30
    rst $30
    xor h
    nop
    rst $28
    rst $38
    xor e
    nop
    rst $28
    rst $30
    xor d
    nop
    rst $20
    rst $38
    xor c
    nop
    rst $20
    rst $30

jr_013_665c:
    xor b
    nop
    add b
    ld hl, sp+$00
    or e
    nop
    ld hl, sp-$08
    or d
    nop
    ldh a, [rP1]
    or c
    nop
    ldh a, [$fff8]
    or b
    nop
    add sp, $00
    xor a
    nop
    add sp, -$08

jr_013_6675:
    xor [hl]
    nop
    add b
    rst $30
    nop
    cp c
    nop
    rst $30
    ld hl, sp-$48
    nop
    rst $28
    nop
    or a
    nop
    rst $28
    ld hl, sp-$4a
    nop
    rst $20
    nop
    or l
    nop
    rst $20
    ld hl, sp-$4c
    nop
    add b
    rst $20
    nop
    or l
    nop
    rst $20
    ld hl, sp-$4c
    nop
    rst $30
    nop
    cp l
    nop
    rst $30
    ld hl, sp-$44
    nop
    rst $28
    nop

jr_013_66a3:
    cp e
    nop
    rst $28
    ld hl, sp-$46
    nop
    add b
    ld hl, sp-$08
    or e
    jr nz, @-$06

    nop
    or d
    jr nz, jr_013_66a3

    ld hl, sp-$4f
    jr nz, @-$0e

    nop
    or b
    jr nz, jr_013_66a3

jr_013_66bb:
    ld hl, sp-$51
    jr nz, @-$16

jr_013_66bf:
    nop
    xor [hl]
    jr nz, @-$7e

    rst $30
    ld hl, sp-$47
    jr nz, jr_013_66bf

jr_013_66c8:
    nop
    cp b
    jr nz, jr_013_66bb

    ld hl, sp-$49
    jr nz, jr_013_66bf

    nop
    or [hl]
    jr nz, jr_013_66bb

    ld hl, sp-$4b
    jr nz, jr_013_66bf

    nop
    or h
    jr nz, jr_013_665c

jr_013_66dc:
    rst $20
    ld hl, sp-$4b
    jr nz, jr_013_66c8

    nop
    or h
    jr nz, jr_013_66dc

    ld hl, sp-$43
    jr nz, @-$07

    nop
    cp h
    jr nz, jr_013_66dc

    ld hl, sp-$45
    jr nz, @-$0f

    nop
    cp d
    jr nz, jr_013_6675

    ld hl, sp+$00
    jp $f800


    ld hl, sp-$3e
    nop
    ldh a, [rP1]
    pop bc
    nop
    ldh a, [$fff8]
    ret nz

    nop
    add sp, $00
    cp a
    nop
    add sp, -$08
    cp [hl]
    nop
    add b
    ld hl, sp-$01
    ret


    nop
    ld hl, sp-$09
    ret z

    nop
    ldh a, [rIE]
    rst $00
    nop
    ldh a, [$fff7]
    add $00
    add sp, -$01
    push bc
    nop
    add sp, -$09
    call nz, $8000
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    ldh a, [rP1]
    call $f000
    ld hl, sp-$34
    nop
    add sp, $00
    rlc b
    add sp, -$08
    jp z, $8000

    sub b
    ld h, a
    db $db
    ld h, a
    ld l, $68
    add c
    ld l, b
    xor c
    ld h, a
    sub b
    ld h, a
    jp nz, $9067

    ld h, a
    ld hl, sp+$67
    db $db
    ld h, a
    dec d
    ld l, b
    db $db
    ld h, a
    ld c, e
    ld l, b
    ld l, $68
    ld l, b
    ld l, b
    ld l, $68
    sbc d
    ld l, b
    add c
    ld l, b
    or e
    ld l, b
    add c
    ld l, b
    call z, Call_000_2f68
    ld l, c
    add [hl]
    ld l, c
    db $dd
    ld l, c
    db $ed
    ld l, b
    call z, Call_000_0e68
    ld l, c
    call z, $4c68
    ld l, c
    cpl
    ld l, c
    ld l, c
    ld l, c
    cpl
    ld l, c
    and e
    ld l, c
    add [hl]
    ld l, c
    ret nz

    ld l, c
    add [hl]
    ld l, c
    cp $69
    db $dd
    ld l, c
    rra
    ld l, d
    db $dd
    ld l, c
    ld sp, hl
    nop
    push de
    nop
    ld sp, hl
    ld hl, sp-$2c
    nop
    pop af
    nop
    db $d3
    nop
    pop af
    ld hl, sp-$2e
    nop
    jp hl


    nop
    pop de
    nop
    jp hl


    ld hl, sp-$30
    nop
    add b
    add sp, $00
    pop de
    nop
    add sp, -$08
    ret nc

    nop
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
    add b
    add sp, $00
    pop de
    nop
    add sp, -$08
    ret nc

    nop
    ld hl, sp+$00
    db $dd
    nop
    ld hl, sp-$08
    call c, $f000
    nop
    db $db
    nop
    ldh a, [$fff8]
    jp c, $8000

    di
    ld [$00e4], sp
    ld hl, sp+$00
    db $e3
    nop
    ld hl, sp-$08
    ldh [c], a
    nop
    ldh a, [rP1]
    pop hl
    nop
    ldh a, [$fff8]
    ldh [rP1], a
    add sp, $00
    rst $18
    nop
    add sp, -$08
    sbc $00
    add b
    ldh a, [c]
    ld [$00eb], sp
    ld hl, sp+$00
    ld [$f800], a

jr_013_6801:
    ld hl, sp-$17
    nop
    ldh a, [rP1]
    add sp, $00
    ldh a, [$fff8]
    rst $20
    nop
    add sp, $00
    and $00
    add sp, -$08
    push hl
    nop
    add b
    add sp, $00
    and $00
    add sp, -$08
    push hl
    nop
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    ldh a, [rP1]
    db $ed
    nop
    ldh a, [$fff8]

jr_013_682b:
    db $ec
    nop
    add b
    di

jr_013_682f:
    ldh a, [$ffe4]
    jr nz, jr_013_682b

    ld hl, sp-$1d
    jr nz, jr_013_682f

    nop
    ldh [c], a
    jr nz, jr_013_682b

    ld hl, sp-$1f
    jr nz, jr_013_682f

    nop
    ldh [rNR41], a
    add sp, -$08
    rst $18
    jr nz, jr_013_682f

    nop

jr_013_6848:
    sbc $20
    add b
    ldh a, [c]

jr_013_684c:
    ldh a, [$ffeb]
    jr nz, jr_013_6848

    ld hl, sp-$16
    jr nz, jr_013_684c

    nop
    jp hl


    jr nz, jr_013_6848

    ld hl, sp-$18
    jr nz, jr_013_684c

    nop
    rst $20
    jr nz, jr_013_6848

    ld hl, sp-$1a
    jr nz, jr_013_684c

    nop
    push hl
    jr nz, @-$7e

    add sp, -$08
    and $20
    add sp, $00
    push hl
    jr nz, @-$06

    ld hl, sp-$11
    jr nz, @-$06

    nop
    xor $20
    ldh a, [$fff8]
    db $ed
    jr nz, @-$0e

    nop
    db $ec
    jr nz, jr_013_6801

    ld sp, hl
    nop
    push af
    nop
    ld sp, hl
    ld hl, sp-$0c
    nop
    pop af
    nop
    di
    nop
    pop af
    ld hl, sp-$0e
    nop
    jp hl


    nop
    pop af
    nop
    jp hl


    ld hl, sp-$10
    nop
    add b
    add sp, $00
    pop af
    nop
    add sp, -$08
    ldh a, [rP1]
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
    add b
    add sp, $00
    pop af
    nop
    add sp, -$08
    ldh a, [rP1]
    ld hl, sp+$00
    db $fd
    nop
    ld hl, sp-$08
    db $fc
    nop
    ldh a, [rP1]
    ei
    nop
    ldh a, [$fff8]
    ld a, [$8000]
    pop af
    ld [$0007], sp
    pop af
    ldh a, [rTMA]
    nop
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
    rst $28
    ld [$0007], sp
    rst $28
    ldh a, [rTMA]
    nop
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp-$08
    dec bc
    nop
    add sp, $00
    ld bc, $f000
    nop
    ld a, [bc]
    nop
    ldh a, [$fff8]
    add hl, bc
    nop
    add sp, -$08
    ld [$8000], sp
    ldh a, [$fff0]
    ld b, $00
    ld hl, sp+$00
    ld [de], a
    nop
    ld hl, sp-$08
    ld de, $f000
    ld [$0010], sp
    add sp, -$08
    nop
    nop
    ldh a, [rP1]
    rrca
    nop
    ldh a, [$fff8]
    ld c, $00
    add sp, $00
    dec c
    nop
    add b
    ld sp, hl
    nop
    add hl, de
    nop
    ld sp, hl
    ld hl, sp+$18
    nop
    pop af
    ld [$0017], sp
    pop af
    nop
    ld d, $00
    pop af

jr_013_6940:
    ld hl, sp+$15
    nop
    jp hl


    nop
    inc d
    nop
    jp hl


    ld hl, sp+$13
    nop
    add b
    rst $28
    ld [$0017], sp
    ld hl, sp+$00
    ld e, $00
    ld hl, sp-$08
    dec e
    nop
    ldh a, [rP1]
    inc e
    nop
    ldh a, [$fff8]
    dec de
    nop
    add sp, -$08
    inc de
    nop
    add sp, $00
    ld a, [de]
    nop
    add b
    rst $28
    ld [$0017], sp
    add sp, $00
    ld a, [de]
    nop
    ld hl, sp+$00
    ld [hl+], a
    nop
    ld hl, sp-$08
    ld hl, $e800
    ld hl, sp+$13
    nop
    ldh a, [rP1]
    jr nz, jr_013_6981

jr_013_6981:
    ldh a, [$fff8]
    rra

jr_013_6984:
    nop
    add b
    ld sp, hl
    ld sp, hl

jr_013_6988:
    add hl, de
    jr nz, jr_013_6984

    ld bc, $2018
    pop af
    pop af
    rla
    jr nz, jr_013_6984

    ld sp, hl
    ld d, $20
    pop af
    ld bc, $2015
    jp hl


    ld sp, hl
    inc d
    jr nz, jr_013_6988

    ld bc, $2013
    add b
    rst $28

jr_013_69a4:
    pop af
    rla
    jr nz, @-$06

    ld sp, hl
    ld e, $20
    ld hl, sp+$01

jr_013_69ad:
    dec e
    jr nz, @-$0e

    ld sp, hl
    inc e
    jr nz, jr_013_69a4

    ld bc, $201b
    add sp, $01
    inc de
    jr nz, jr_013_69a4

    ld sp, hl
    ld a, [de]
    jr nz, jr_013_6940

    rst $28

jr_013_69c1:
    pop af
    rla
    jr nz, jr_013_69ad

jr_013_69c5:
    ld sp, hl
    ld a, [de]
    jr nz, jr_013_69c1

    ld sp, hl
    ld [hl+], a
    jr nz, jr_013_69c5

    ld bc, $2021
    add sp, $01
    inc de
    jr nz, jr_013_69c5

    ld sp, hl
    jr nz, jr_013_69f8

    ldh a, [rSB]
    rra
    jr nz, @-$7e

    pop af
    ldh a, [rTMA]
    nop
    ldh a, [$ff08]
    add hl, hl
    nop
    ld hl, sp+$00
    jr z, jr_013_69e9

jr_013_69e9:
    ld hl, sp-$08
    daa
    nop
    ldh a, [rP1]
    ld h, $00
    ldh a, [$fff8]
    dec h
    nop
    add sp, $00
    inc h

jr_013_69f8:
    nop
    add sp, -$08
    inc hl
    nop
    add b
    rst $28
    ldh a, [rTMA]
    nop
    xor $08
    add hl, hl
    nop
    ld hl, sp+$00
    cpl
    nop
    ld hl, sp-$08
    ld l, $00
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
    rst $28
    ldh a, [rTMA]
    nop
    xor $08
    add hl, hl
    nop
    ld hl, sp+$00
    inc sp
    nop
    ld hl, sp-$08
    ld [hl-], a
    nop
    ldh a, [rP1]
    ld sp, $f000
    ld hl, sp+$30
    nop
    add sp, $00
    dec hl
    nop
    add sp, -$08
    ld a, [hl+]
    nop
    add b
    ld l, b
    ld l, d
    or e
    ld l, d
    cp $6a
    ld c, c
    ld l, e
    add c
    ld l, d
    ld l, b
    ld l, d
    sbc d
    ld l, d
    ld l, b
    ld l, d
    call z, $b36a
    ld l, d
    push hl
    ld l, d
    or e
    ld l, d
    rla
    ld l, e
    cp $6a
    jr nc, jr_013_6ac9

    cp $6a
    ld h, d
    ld l, e
    ld c, c
    ld l, e
    ld a, e
    ld l, e
    ld c, c
    ld l, e
    ld sp, hl
    nop
    add hl, sp
    nop
    ld sp, hl
    ld hl, sp+$38
    nop
    pop af
    nop
    scf
    nop
    pop af
    ld hl, sp+$36
    nop
    jp hl


    nop
    dec [hl]
    nop
    jp hl


    ld hl, sp+$34
    nop
    add b
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ld hl, sp+$00
    dec a
    nop
    ld hl, sp-$08
    inc a
    nop
    ldh a, [rP1]
    dec sp
    nop
    ldh a, [$fff8]

jr_013_6a97:
    ld a, [hl-]
    nop
    add b
    add sp, $00
    dec [hl]
    nop
    add sp, -$08
    inc [hl]
    nop
    ld hl, sp+$00
    ld b, c
    nop
    ld hl, sp-$08
    ld b, b
    nop
    ldh a, [rP1]
    ccf
    nop
    ldh a, [$fff8]

jr_013_6ab0:
    ld a, $00
    add b
    ld sp, hl
    ld bc, $0047
    ld sp, hl
    ld sp, hl
    ld b, [hl]
    nop
    pop af
    ld bc, $0045
    pop af
    ld sp, hl
    ld b, h
    nop
    jp hl


    ld bc, $0043
    jp hl


    ld sp, hl

jr_013_6ac9:
    ld b, d
    nop
    add b
    ld hl, sp+$01
    ld c, e
    nop
    ld hl, sp-$07
    ld c, d
    nop
    add sp, $01
    ld b, e
    nop
    add sp, -$07
    ld b, d
    nop
    ldh a, [rSB]
    ld c, c
    nop
    ldh a, [$fff9]
    ld c, b
    nop
    add b
    add sp, $01
    ld b, e
    nop
    add sp, -$07
    ld b, d
    nop
    ld hl, sp+$01
    ld c, a
    nop
    ld hl, sp-$07
    ld c, [hl]
    nop
    ldh a, [rSB]
    ld c, l

jr_013_6af8:
    nop
    ldh a, [$fff9]
    ld c, h

jr_013_6afc:
    nop
    add b
    ld sp, hl
    ld hl, sp+$47
    jr nz, jr_013_6afc

    nop
    ld b, [hl]
    jr nz, jr_013_6af8

    ld hl, sp+$45
    jr nz, jr_013_6afc

    nop

jr_013_6b0c:
    ld b, h
    jr nz, jr_013_6af8

    ld hl, sp+$43
    jr nz, jr_013_6afc

    nop

jr_013_6b14:
    ld b, d
    jr nz, jr_013_6a97

    ld hl, sp-$08
    ld c, e
    jr nz, jr_013_6b14

jr_013_6b1c:
    nop

jr_013_6b1d:
    ld c, d
    jr nz, @-$16

    ld hl, sp+$43
    jr nz, jr_013_6b0c

    nop
    ld b, d
    jr nz, @-$0e

    ld hl, sp+$49
    jr nz, jr_013_6b1c

    nop
    ld c, b
    jr nz, jr_013_6ab0

    add sp, -$08
    ld b, e
    jr nz, jr_013_6b1d

jr_013_6b35:
    nop
    ld b, d
    jr nz, @-$06

    ld hl, sp+$4f
    jr nz, jr_013_6b35

    nop
    ld c, [hl]
    jr nz, @-$0e

    ld hl, sp+$4d
    jr nz, jr_013_6b35

    nop
    ld c, h
    jr nz, jr_013_6ac9

    ld sp, hl
    nop
    ld d, l
    nop
    ld sp, hl
    ld hl, sp+$54
    nop
    pop af
    nop
    ld d, e
    nop
    pop af
    ld hl, sp+$52
    nop
    jp hl


    nop
    ld d, c
    nop
    jp hl


    ld hl, sp+$50
    nop
    add b
    ld hl, sp+$00
    ld e, c
    nop
    ld hl, sp-$08
    ld e, b
    nop
    ldh a, [rP1]
    ld d, a
    nop
    ldh a, [$fff8]
    ld d, [hl]
    nop
    add sp, $00
    ld d, c
    nop
    add sp, -$08
    ld d, b
    nop
    add b
    ld hl, sp+$00
    ld e, l
    nop
    ld hl, sp-$08
    ld e, h
    nop
    ldh a, [rP1]
    ld e, e
    nop
    ldh a, [$fff8]
    ld e, d
    nop
    add sp, $00
    ld d, c
    nop
    add sp, -$08
    ld d, b
    nop
    add b
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    ldh a, [rP1]
    ld h, c
    nop
    ldh a, [$fff8]
    ld h, b
    nop
    add sp, $00
    ld e, a
    nop
    add sp, -$08
    ld e, [hl]
    nop
    add b
    rst $28
    nop
    ld h, c
    nop
    rst $28
    ld hl, sp+$60
    nop
    rst $20
    nop
    ld e, a
    nop
    rst $20
    ld hl, sp+$5e
    nop
    rst $30
    nop
    ld h, l
    nop
    rst $30
    ld hl, sp+$64
    nop
    add b
    rst $20
    nop
    ld e, a
    nop
    rst $20
    ld hl, sp+$5e
    nop
    rst $30
    nop
    ld h, a
    nop
    rst $30
    ld hl, sp+$66
    nop
    rst $28
    nop
    ld h, c
    nop
    rst $28
    ld hl, sp+$60
    nop
    add b
    ld hl, sp+$00
    ld l, l
    nop
    ld hl, sp-$08
    ld l, h
    nop
    ldh a, [rP1]
    ld l, e
    nop
    ldh a, [$fff8]
    ld l, d
    nop
    add sp, $00
    ld l, c
    nop
    add sp, -$08

jr_013_6bf5:
    ld l, b
    nop
    add b
    rst $30
    nop
    ld l, a
    nop
    rst $30
    ld hl, sp+$6e
    nop
    rst $28
    nop
    ld l, e
    nop
    rst $28
    ld hl, sp+$6a
    nop
    rst $20
    nop
    ld l, c
    nop
    rst $20
    ld hl, sp+$68
    nop
    add b
    rst $30
    nop
    ld [hl], c
    nop
    rst $30
    ld hl, sp+$70
    nop
    rst $28
    nop
    ld l, e
    nop
    rst $28
    ld hl, sp+$6a
    nop
    rst $20
    nop

jr_013_6c23:
    ld l, c
    nop
    rst $20
    ld hl, sp+$68
    nop
    add b
    ld hl, sp-$08
    ld l, l
    jr nz, @-$06

    nop
    ld l, h
    jr nz, jr_013_6c23

    ld hl, sp+$6b
    jr nz, @-$0e

    nop
    ld l, d
    jr nz, jr_013_6c23

jr_013_6c3b:
    ld hl, sp+$69
    jr nz, @-$16

jr_013_6c3f:
    nop
    ld l, b
    jr nz, @-$7e

    rst $30
    ld hl, sp+$6f
    jr nz, jr_013_6c3f

    nop
    ld l, [hl]
    jr nz, jr_013_6c3b

    ld hl, sp+$6b
    jr nz, jr_013_6c3f

    nop
    ld l, d
    jr nz, jr_013_6c3b

jr_013_6c54:
    ld hl, sp+$69
    jr nz, jr_013_6c3f

jr_013_6c58:
    nop
    ld l, b
    jr nz, @-$7e

    rst $30
    ld hl, sp+$71
    jr nz, jr_013_6c58

    nop
    ld [hl], b
    jr nz, jr_013_6c54

    ld hl, sp+$6b
    jr nz, jr_013_6c58

    nop
    ld l, d
    jr nz, jr_013_6c54

    ld hl, sp+$69
    jr nz, jr_013_6c58

    nop
    ld l, b
    jr nz, jr_013_6bf5

    ld hl, sp+$00
    ld [hl], a
    nop
    ld hl, sp-$08
    halt
    nop
    ldh a, [rP1]
    ld [hl], l
    nop
    ldh a, [$fff8]
    ld [hl], h
    nop
    add sp, $00
    ld [hl], e
    nop
    add sp, -$08
    ld [hl], d
    nop
    add b
    rst $30
    nop
    ld a, c
    nop
    rst $30
    ld hl, sp+$78
    nop
    rst $20
    nop
    ld [hl], e
    nop
    rst $20
    ld hl, sp+$72
    nop
    rst $28
    nop
    ld [hl], l
    nop
    rst $28
    ld hl, sp+$74
    nop
    add b
    rst $20
    nop
    ld [hl], e
    nop
    rst $20
    ld hl, sp+$72
    nop
    rst $28
    nop
    ld [hl], l
    nop
    rst $28
    ld hl, sp+$74
    nop
    rst $30
    nop
    ld a, e
    nop
    rst $30
    ld hl, sp+$7a
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
    ld a, h
    nop
    add b
    ld e, e
    ld l, [hl]
    and [hl]
    ld l, [hl]
    pop af
    ld l, [hl]
    inc a
    ld l, a
    ld [hl], h
    ld l, [hl]
    ld e, e
    ld l, [hl]
    adc l
    ld l, [hl]
    ld e, e
    ld l, [hl]
    cp a
    ld l, [hl]
    and [hl]
    ld l, [hl]
    ret c

    ld l, [hl]

Jump_013_6cef:
    and [hl]
    ld l, [hl]
    ld a, [bc]
    ld l, a
    pop af
    ld l, [hl]
    inc hl
    ld l, a
    pop af
    ld l, [hl]
    ld d, l
    ld l, a
    inc a
    ld l, a
    ld l, [hl]
    ld l, a
    inc a
    ld l, a
    add a
    ld l, a
    or b
    ld l, a
    reti


    ld l, a
    cpl
    ld l, l
    ld a, d
    ld l, l
    push bc
    ld l, l
    db $10
    ld l, [hl]
    ld c, b
    ld l, l
    cpl
    ld l, l
    ld h, c
    ld l, l
    cpl
    ld l, l
    sub e
    ld l, l
    ld a, d
    ld l, l
    xor h
    ld l, l
    ld a, d
    ld l, l
    sbc $6d
    push bc
    ld l, l
    rst $30
    ld l, l
    push bc
    ld l, l
    add hl, hl
    ld l, [hl]
    db $10
    ld l, [hl]
    ld b, d
    ld l, [hl]
    db $10
    ld l, [hl]
    ld sp, hl
    nop
    add a
    nop
    ld sp, hl
    ld hl, sp-$7a
    nop
    pop af
    nop
    add l
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
    add sp, $00
    add e
    nop
    add sp, -$08
    add d
    nop
    ld hl, sp+$00
    adc e
    nop
    ld hl, sp-$08
    adc d
    nop
    ldh a, [rP1]
    adc c
    nop
    ldh a, [$fff8]

jr_013_6d5e:
    adc b
    nop
    add b
    ld hl, sp+$01
    adc a
    nop
    ld hl, sp-$07
    adc [hl]
    nop
    ldh a, [rSB]
    adc l
    nop
    ldh a, [$fff9]
    adc h
    nop
    add sp, $00
    add e
    nop
    add sp, -$08

jr_013_6d77:
    add d
    nop
    add b
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
    add sp, $00
    sub c
    nop
    add sp, -$08

jr_013_6d90:
    sub b
    nop
    add b
    rst $20
    nop
    sub c
    nop
    rst $20
    ld hl, sp-$70
    nop
    rst $30
    nop
    sbc c
    nop
    rst $30
    ld hl, sp-$68
    nop
    rst $28
    nop
    sub a
    nop
    rst $28
    ld hl, sp-$6a
    nop
    add b
    rst $20
    nop
    sub c
    nop
    rst $20
    ld hl, sp-$70
    nop
    rst $30
    nop
    sbc l
    nop
    rst $30
    ld hl, sp-$64
    nop
    rst $28
    nop

jr_013_6dbe:
    sbc e
    nop
    rst $28
    ld hl, sp-$66
    nop
    add b
    ld hl, sp-$08
    sub l
    jr nz, @-$06

jr_013_6dca:
    nop
    sub h
    jr nz, jr_013_6dbe

    ld hl, sp-$6d
    jr nz, @-$0e

    nop
    sub d
    jr nz, jr_013_6dbe

    ld hl, sp-$6f
    jr nz, @-$16

    nop
    sub b
    jr nz, jr_013_6d5e

jr_013_6dde:
    rst $20
    ld hl, sp-$6f
    jr nz, jr_013_6dca

jr_013_6de3:
    nop
    sub b
    jr nz, jr_013_6dde

    ld hl, sp-$67
    jr nz, @-$07

    nop
    sbc b
    jr nz, jr_013_6dde

    ld hl, sp-$69
    jr nz, @-$0f

    nop
    sub [hl]
    jr nz, jr_013_6d77

jr_013_6df7:
    rst $20
    ld hl, sp-$6f
    jr nz, jr_013_6de3

    nop
    sub b
    jr nz, jr_013_6df7

    ld hl, sp-$63
    jr nz, @-$07

    nop
    sbc h
    jr nz, jr_013_6df7

    ld hl, sp-$65
    jr nz, @-$0f

    nop
    sbc d
    jr nz, jr_013_6d90

    ld sp, hl
    nop
    and e
    nop
    ld sp, hl
    ld hl, sp-$5e
    nop
    pop af
    nop
    and c
    nop
    pop af
    ld hl, sp-$60
    nop
    jp hl


    nop
    sbc a
    nop
    jp hl


    ld hl, sp-$62
    nop
    add b
    ld hl, sp+$01
    and a
    nop
    ld hl, sp-$07
    and [hl]
    nop
    add sp, $00
    sbc a
    nop
    add sp, -$08
    sbc [hl]
    nop
    ldh a, [rSB]
    and l
    nop
    ldh a, [$fff9]
    and h
    nop
    add b
    add sp, $00
    sbc a
    nop
    add sp, -$08
    sbc [hl]
    nop
    ld hl, sp+$00
    xor e
    nop
    ld hl, sp-$08
    xor d
    nop
    ldh a, [rP1]
    xor c
    nop
    ldh a, [$fff8]
    xor b
    nop
    add b
    ld sp, hl
    nop
    or c
    nop
    ld sp, hl
    ld hl, sp-$50
    nop
    pop af
    nop
    xor a
    nop
    pop af
    ld hl, sp-$52
    nop
    jp hl


    nop
    xor l
    nop
    jp hl


    ld hl, sp-$54
    nop
    add b
    add sp, $00
    xor l
    nop
    add sp, -$08
    xor h
    nop
    ld hl, sp+$00
    or l
    nop
    ld hl, sp-$08
    or h
    nop
    ldh a, [rP1]
    or e
    nop
    ldh a, [$fff8]

jr_013_6e8a:
    or d
    nop
    add b
    add sp, $00
    xor l
    nop
    add sp, -$08
    xor h
    nop
    ld hl, sp+$00
    cp c
    nop
    ld hl, sp-$08
    cp b
    nop
    ldh a, [rP1]
    or a
    nop
    ldh a, [$fff8]

jr_013_6ea3:
    or [hl]
    nop
    add b
    ld sp, hl
    nop
    cp a
    nop
    ld sp, hl
    ld hl, sp-$42
    nop
    pop af
    nop
    cp l
    nop
    pop af
    ld hl, sp-$44
    nop
    jp hl


    nop
    cp e
    nop
    jp hl


    ld hl, sp-$46
    nop
    add b
    add sp, $00
    cp e
    nop
    add sp, -$08
    cp d
    nop
    ld hl, sp+$00
    jp $f800


    ld hl, sp-$3e
    nop
    ldh a, [rP1]
    pop bc
    nop
    ldh a, [$fff8]
    ret nz

    nop
    add b
    add sp, $00
    cp e
    nop
    add sp, -$08
    cp d
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    ldh a, [rP1]
    push bc

jr_013_6eeb:
    nop
    ldh a, [$fff8]
    call nz, $8000
    ld sp, hl
    ld hl, sp-$41
    jr nz, @-$05

    nop

jr_013_6ef7:
    cp [hl]
    jr nz, jr_013_6eeb

    ld hl, sp-$43
    jr nz, @-$0d

    nop
    cp h
    jr nz, jr_013_6eeb

    ld hl, sp-$45
    jr nz, @-$15

    nop
    cp d
    jr nz, jr_013_6e8a

    add sp, -$08
    cp e
    jr nz, jr_013_6ef7

jr_013_6f0f:
    nop

jr_013_6f10:
    cp d
    jr nz, @-$06

    ld hl, sp-$3d
    jr nz, jr_013_6f0f

    nop
    jp nz, $f020

    ld hl, sp-$3f
    jr nz, jr_013_6f0f

    nop
    ret nz

    jr nz, jr_013_6ea3

    add sp, -$08
    cp e
    jr nz, jr_013_6f10

jr_013_6f28:
    nop
    cp d
    jr nz, @-$06

    ld hl, sp-$39
    jr nz, jr_013_6f28

    nop
    add $20
    ldh a, [$fff8]
    push bc
    jr nz, jr_013_6f28

    nop
    call nz, $8020
    ld sp, hl
    nop
    call $f900
    ld hl, sp-$34
    nop
    pop af
    nop
    rlc b
    pop af
    ld hl, sp-$36
    nop
    jp hl


    nop
    ret


    nop
    jp hl


    ld hl, sp-$38
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
    ret


    nop
    add sp, -$08
    ret z

    nop
    add b
    add sp, $00
    ret


    nop
    add sp, -$08
    ret z

    nop
    ld hl, sp+$00
    push de
    nop
    ld hl, sp-$08
    call nc, $f000
    nop
    db $d3
    nop
    ldh a, [$fff8]
    jp nc, $8000

    ld hl, sp+$00
    rst $18
    nop
    ld hl, sp-$08
    sbc $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    db $db
    nop
    add sp, -$08
    jp c, $e000

    nop
    reti


    nop
    ldh [$fff8], a
    ret c

    nop
    ret c

    nop
    rst $10
    nop
    ret c

    ld hl, sp-$2a
    nop
    add b
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    push hl
    nop
    add sp, -$08
    db $e4
    nop
    ldh [rP1], a
    db $e3
    nop
    ldh [$fff8], a
    ldh [c], a
    nop
    ret c

    nop
    pop hl
    nop
    ret c

    ld hl, sp-$20
    nop
    add b
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    db $ed
    nop
    add sp, -$08
    db $ec
    nop
    ldh [rP1], a
    db $eb
    nop
    ldh [$fff8], a
    ld [$d800], a
    nop
    jp hl


    nop
    ret c

    ld hl, sp-$18
    nop
    add b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc b
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    ld [bc], a
    push af
    cp a
    ld [hl], b
    ld [bc], a
    push af
    pop bc
    ld [hl], b
    ld [bc], a
    push af
    jp Jump_000_0270


    push af
    push bc
    ld [hl], b
    ld [bc], a
    push af
    rst $00
    ld [hl], b
    ld [bc], a
    push af
    rst $08
    ld [hl], b
    ld [bc], a
    push af
    rst $10
    ld [hl], b
    ld [bc], a
    push af
    rst $18
    ld [hl], b
    ld l, e
    ld [hl], c
    or [hl]
    ld [hl], c
    ld bc, $4c72
    ld [hl], d
    add h
    ld [hl], c
    ld l, e
    ld [hl], c
    sbc l
    ld [hl], c
    ld l, e
    ld [hl], c
    rst $08
    ld [hl], c
    or [hl]
    ld [hl], c
    add sp, $71
    or [hl]
    ld [hl], c
    ld a, [de]
    ld [hl], d
    ld bc, $3372
    ld [hl], d
    ld bc, $6572
    ld [hl], d
    ld c, h
    ld [hl], d
    ld a, [hl]
    ld [hl], d
    ld c, h
    ld [hl], d
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec b
    nop
    ldh a, [$fff9]
    inc b
    nop
    add sp, $01
    inc bc
    nop
    add sp, -$07
    ld [bc], a
    nop
    ldh [rSB], a
    ld bc, $e000
    ld sp, hl
    nop
    nop
    add b
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    dec c
    nop
    ldh a, [$fff9]
    inc c
    nop
    add sp, $01
    dec bc
    nop
    add sp, -$07
    ld a, [bc]
    nop
    ldh [rSB], a
    add hl, bc
    nop
    ldh [$fff9], a
    ld [$8000], sp
    ld hl, sp+$01
    rlca
    nop
    ld hl, sp-$07
    ld b, $00
    ldh a, [rSB]
    inc de
    nop
    ldh a, [$fff9]
    ld [de], a
    nop
    add sp, $01
    ld de, $e800
    ld sp, hl
    stop
    ldh [rSB], a
    rrca
    nop
    ldh [$fff9], a
    ld c, $00
    add b
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_013_7152

jr_013_7152:
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
    ldh [rSB], a
    ld bc, $e000
    ld sp, hl
    nop
    nop
    add b
    ld sp, hl
    nop
    rra
    nop
    ld sp, hl
    ld hl, sp+$1e
    nop
    pop af
    nop
    dec e
    nop
    pop af
    ld hl, sp+$1c
    nop
    jp hl


    nop
    dec de
    nop
    jp hl


    ld hl, sp+$1a
    nop
    add b
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    ldh a, [rP1]
    ld hl, $f000
    ld hl, sp+$20
    nop
    add sp, $00
    dec de
    nop
    add sp, -$08
    ld a, [de]
    nop
    add b
    add sp, $00
    dec de
    nop
    add sp, -$08
    ld a, [de]
    nop
    ld hl, sp+$00
    daa
    nop
    ld hl, sp-$08
    ld h, $00
    ldh a, [rP1]
    dec h
    nop
    ldh a, [$fff8]
    inc h
    nop
    add b
    ld sp, hl
    nop
    dec l
    nop
    ld sp, hl
    ld hl, sp+$2c
    nop
    pop af
    nop
    dec hl
    nop
    pop af
    ld hl, sp+$2a
    nop
    jp hl


    nop
    add hl, hl
    nop
    jp hl


    ld hl, sp+$28
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
    add hl, hl
    nop
    add sp, -$08
    jr z, jr_013_71e7

jr_013_71e7:
    add b
    ld hl, sp+$00
    dec [hl]
    nop
    ld hl, sp-$08
    inc [hl]
    nop
    ldh a, [rP1]
    inc sp
    nop
    ldh a, [$fff8]
    ld [hl-], a
    nop
    add sp, $00
    add hl, hl
    nop
    add sp, -$08
    jr z, jr_013_7200

jr_013_7200:
    add b
    ld sp, hl
    ld sp, hl
    dec l
    jr nz, @-$05

    ld bc, $202c
    pop af
    ld sp, hl
    dec hl
    jr nz, @-$0d

    ld bc, $202a
    jp hl


    ld sp, hl
    add hl, hl
    jr nz, @-$15

    ld bc, $2028
    add b
    ld hl, sp-$07
    ld sp, $f820
    ld bc, $2030
    ldh a, [$fff9]
    cpl
    jr nz, @-$0e

    ld bc, $202e
    add sp, -$07
    add hl, hl
    jr nz, @-$16

    ld bc, $2028
    add b
    ld hl, sp-$07
    dec [hl]
    jr nz, @-$06

    ld bc, $2034
    ldh a, [$fff9]
    inc sp
    jr nz, @-$0e

    ld bc, $2032
    add sp, -$07
    add hl, hl
    jr nz, @-$16

    ld bc, $2028
    add b
    ld sp, hl
    nop
    dec sp
    nop
    ld sp, hl
    ld hl, sp+$3a
    nop
    pop af
    nop
    add hl, sp
    nop
    pop af
    ld hl, sp+$38
    nop
    jp hl


    nop
    scf
    nop
    jp hl


    ld hl, sp+$36
    nop
    add b
    ld hl, sp+$00
    ccf
    nop
    ld hl, sp-$08
    ld a, $00
    ldh a, [rP1]
    dec a
    nop
    ldh a, [$fff8]
    inc a
    nop
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [rP1]
    ld b, c
    nop
    ldh a, [$fff8]
    ld b, b
    nop
    add sp, $00
    scf
    nop
    add sp, -$08
    ld [hl], $00
    add b
    ld sp, hl
    nop
    ld c, c
    nop
    ld sp, hl
    ld hl, sp+$48
    nop
    pop af
    nop
    ld b, a
    nop
    pop af
    ld hl, sp+$46
    nop
    jp hl


    nop
    ld b, l
    nop
    jp hl


    ld hl, sp+$44
    nop
    add b
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    ldh a, [rP1]
    ld b, a
    nop
    ldh a, [$fff8]
    ld b, [hl]
    nop
    add sp, $00
    ld b, l
    nop
    add sp, -$08

jr_013_72c6:
    ld b, h
    nop
    add b
    ld hl, sp-$07
    ld c, e
    jr nz, jr_013_72c6

    ld bc, $204a
    ldh a, [rP1]
    ld b, a
    nop
    ldh a, [$fff8]
    ld b, [hl]
    nop
    add sp, $00
    ld b, l
    nop
    add sp, -$08
    ld b, h
    nop
    add b
    ld hl, sp+$00
    ld d, c
    nop
    ld hl, sp-$08
    ld d, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    ldh a, [$fff8]
    ld c, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$00
    ld d, l
    nop
    ld hl, sp-$08
    ld d, h
    nop
    ldh a, [rP1]
    ld d, e
    nop
    ldh a, [$fff8]
    ld d, d
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08
    ld c, h
    nop
    add b
    ld hl, sp+$00
    ld e, c
    nop
    ld hl, sp-$08
    ld e, b
    nop
    ldh a, [rP1]
    ld d, a
    nop
    ldh a, [$fff8]
    ld d, [hl]
    nop
    add sp, $00
    ld c, l
    nop
    add sp, -$08

jr_013_732a:
    ld c, h
    nop
    add b
    ld hl, sp-$07
    ld d, c
    jr nz, jr_013_732a

    ld bc, $2050
    ldh a, [$fff9]
    ld c, a
    jr nz, jr_013_732a

    ld bc, $204e
    add sp, -$07
    ld c, l
    jr nz, jr_013_732a

    ld bc, $204c
    add b
    ld hl, sp-$07
    ld d, l
    jr nz, @-$06

    ld bc, $2054
    ldh a, [$fff9]
    ld d, e
    jr nz, @-$0e

    ld bc, $2052
    add sp, -$07
    ld c, l
    jr nz, @-$16

    ld bc, $204c
    add b
    ld hl, sp-$07
    ld e, c
    jr nz, @-$06

    ld bc, $2058
    ldh a, [$fff9]
    ld d, a
    jr nz, @-$0e

    ld bc, $2056
    add sp, -$07
    ld c, l
    jr nz, @-$16

    ld bc, $204c
    add b
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
    ld e, h
    nop
    add sp, $00
    ld e, e
    nop
    add sp, -$08
    ld e, d
    nop
    add b
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    ldh a, [rP1]
    ld h, c
    nop
    ldh a, [$fff8]
    ld h, b
    nop
    add sp, $00
    ld e, e
    nop
    add sp, -$08

jr_013_73a7:
    ld e, d
    nop
    add b
    ld hl, sp-$07
    ld h, e
    jr nz, jr_013_73a7

    ld bc, $2062
    ldh a, [$fff9]
    ld h, c
    jr nz, jr_013_73a7

    ld bc, $2060
    add sp, $00
    ld e, e
    nop
    add sp, -$08
    ld e, d
    nop
    add b
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
    add sp, $00
    ld h, l
    nop
    add sp, -$08
    ld h, h
    nop
    add b
    ldh a, [rP1]
    ld [hl], c
    nop
    ldh a, [$fff8]
    ld [hl], b
    nop
    add sp, $00
    ld l, a
    nop
    add sp, -$08
    ld l, [hl]
    nop
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    add b
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
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

jr_013_740b:
    ld l, d
    nop
    add b
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    ldh a, [$fff9]
    ld l, l
    jr nz, jr_013_740b

    ld bc, $206c
    add sp, -$07
    ld l, e
    jr nz, jr_013_740b

    ld bc, $206a
    add b
    scf
    ld [hl], h
    scf
    ld [hl], h
    scf
    ld [hl], h
    scf
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ret nc

    inc bc
    cp $15
    nop
    ld a, [hl]
    nop
    xor $54
    cp d
    ld c, h
    cp l
    rst $18
    ld a, d
    rra
    rrca
    rra
    dec c
    ld hl, $2f00
    rra
    rst $38
    ld a, $1f
    dec l
    ld e, $1e
    nop
    and b
    ld b, b
    ld a, a
    ld e, b
    and b
    cp a
    ret nz

    ldh a, [rIE]
    ld a, a
    ld [hl+], a
    nop
    ei
    rst $38

jr_013_746e:
    ld a, a
    ld de, $e003
    nop
    ret c

    ldh [$ffec], a
    rst $38
    ldh a, [$fffa]
    db $f4
    ld sp, hl
    or $ed
    ldh a, [c]
    sbc e
    rst $38
    ld a, a
    rst $18
    jr c, @-$4a

    ld e, b
    cp b
    ld d, b
    cp b
    rst $28
    ld d, b
    add sp, $10
    jr c, jr_013_746e

    inc b
    ld [hl], l
    ldh [c], a
    db $eb
    rst $10
    jr nc, jr_013_746e

    jr nc, jr_013_749a

    ld bc, $cc30

jr_013_749a:
    dec b
    db $fd
    ld a, d
    rst $38
    rst $38
    ld l, h
    ccf
    dec de
    ccf
    dec de
    ld e, a
    ccf
    rst $38
    ld a, h
    ccf
    ld e, d
    dec a
    dec a
    nop
    rlca
    nop
    rst $38
    dec c
    ld b, $e0
    add b
    db $fc
    ret nz

    db $e3
    db $fc
    cp e
    ld sp, hl
    rst $38
    ld de, $7f00
    rst $38
    cp a
    ld [bc], a
    ld b, $c0
    rst $38
    nop
    and b
    ret nz

    ret c

    ldh [$fff4], a
    add sp, -$06
    rst $38
    db $e4
    rst $30
    ret nz

    xor l
    ld e, [hl]
    cp $18
    inc h
    ei
    jr @+$3e

    add [hl]
    ld a, [bc]
    ld l, [hl]
    db $fc
    push af
    ld c, $2b
    rst $38
    ld d, $17
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $fe
    add c
    dec bc
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    rst $38
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $837f
    nop
    ld c, l
    add e
    di
    rrca
    rst $00
    ld [bc], a
    dec b
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    nop
    and $98
    rst $38
    db $db
    ldh [$ffe0], a
    ret nz

    ldh [$ffc0], a
    or b
    ret nz

    rst $38
    call z, $f4f0
    jr c, jr_013_759b

    ccf
    ld e, a
    inc a
    rst $38
    ld l, [hl]
    inc e
    ld e, d
    inc l
    jp c, $ac6c

    ld e, b
    sbc l
    db $e4
    add b

jr_013_752c:
    dec b
    ret


    ld b, $07
    ld e, a
    ld de, $1104
    cp e
    db $f4
    nop
    ld de, $0601
    ld a, a
    nop
    ld b, $bd
    ld a, a
    ei
    ld a, l
    rst $38
    or [hl]
    ld a, c
    ld a, e
    nop
    ld h, b
    add b
    rst $38
    nop
    db $fd
    jp $05e4


    rst $38
    rst $38
    ld l, l
    rst $38
    nop
    nop
    db $fd
    add b
    ld b, b
    ld bc, $c0b8
    db $e4
    ret c

    ldh a, [c]
    call z, $efff
    ret nz

    and b
    ret nz

    ld d, l
    ld l, $cf
    halt
    cp a
    sbc d
    ld h, a
    and $03
    inc b
    inc bc
    add e
    dec b
    ret c

    rst $38
    jr nc, jr_013_75e0

    jr jr_013_752c

    ld e, b
    ld a, [$cc34]
    ei
    jr nc, jr_013_75ed

    jp nz, $9816

    ld h, b
    ld a, a
    add b
    ldh a, [$ff7e]
    jp nz, $ff0e

    ld a, a
    cp a
    ld a, a
    rst $10
    ccf
    pop hl
    inc d
    rst $30
    call c, $eae0
    ret nz

    inc d
    db $fd
    ldh a, [c]
    ei
    ldh a, [rIE]
    ld l, e

jr_013_759b:
    ldh a, [$ffaf]
    ld [hl], b
    push af
    ld l, b
    sub e
    ld l, h
    di
    db $eb
    inc b
    pop bc
    dec c
    pop de
    add hl, de
    or d
    ld h, b
    ld a, b
    or b
    ld a, a
    ld e, h
    cp b
    inc h
    ret c

    call nc, Call_000_1c08
    add $1a
    rst $38
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $0007
    xor a
    dec bc
    rlca
    rla
    rrca
    dec d
    inc e
    add b
    ld h, b
    add hl, de
    ret nc

    rst $18
    ldh [$ffe8], a
    ldh a, [rNR22]
    rrca
    jr nz, jr_013_75d3

jr_013_75d3:
    ld c, $12
    rst $38
    dec c
    rra
    nop
    ld e, $05
    dec e
    ld b, $1b
    rst $38
    rlca

jr_013_75e0:
    add sp, -$10
    add sp, $70
    ld l, b
    or b
    ld c, b
    rst $38
    or b
    ld hl, sp+$00
    ld a, b
    and b

jr_013_75ed:
    cp b
    ld h, b
    ret c

    rst $38
    ldh [rNR22], a
    dec bc
    dec de
    dec c
    dec de
    dec c
    inc de
    rst $38
    dec c
    rra
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    inc bc
    adc l
    nop
    pop hl
    ld [bc], a
    ld d, $0d
    ld a, [bc]
    inc bc
    jr nz, jr_013_760f

    dec c
    inc bc
    dec de

jr_013_760f:
    ei
    dec c
    rla
    inc b
    inc bc
    add sp, -$30
    ret c

    or b
    ret z

    ld [hl], a
    or b
    ret nc

    and b
    ld hl, $a015
    ret nz

    ret nz

    inc b
    inc h
    rst $38
    ld [$0c00], sp
    nop
    inc d
    ld [$007e], sp
    jp Jump_013_7ebd


    ld [bc], a
    ld [$0828], sp
    inc bc
    dec b
    daa
    ld [$071b], sp
    ld a, $21
    ld [$0917], sp
    rrca
    ld bc, $4005
    ld [de], a
    nop
    ld [$02ae], sp
    add hl, bc
    inc hl
    dec e
    cpl
    add b
    ld hl, $001d
    add hl, bc
    db $db
    rst $28
    nop
    and l
    ld e, d
    rst $20
    ld [hl+], a
    nop
    and l
    ld e, d
    cp l
    ccf
    ld b, d
    jp Jump_000_183c


    rlca
    inc de
    ld [hl+], a
    dec b
    add b
    add hl, hl
    rst $38
    rrca
    rra
    ld c, $1e
    dec c
    jr @-$1e

    ret z

    cp $21
    ld a, [bc]
    ldh a, [$fff8]
    ldh a, [$ff78]
    ldh a, [$ff78]
    or b
    rst $38
    ld hl, sp+$30
    ld e, $09
    ld d, $09
    dec e
    ld [$0cfd], sp
    add [hl]
    inc l
    cp b
    db $10
    xor b
    db $10
    cp b
    db $10
    or c
    or b
    xor b
    dec l
    daa
    dec b
    inc bc
    dec b
    ld de, $260f
    dec b
    ld c, $eb
    dec e
    ld c, $03
    dec b
    ld hl, sp+$04
    dec b
    jr c, @-$2e

    ld e, $ff
    inc c
    ld a, [de]

jr_013_76a8:
    inc c
    inc d
    ld [$081c], sp
    inc d
    cp $44
    dec b
    xor b
    ld d, b
    xor b
    ld d, b
    ld [hl], b
    nop
    ld b, b
    ld hl, sp-$7a
    ld [hl-], a
    inc bc
    add hl, bc
    pop hl
    ld [$0f1e], sp
    ld e, $0d
    inc e
    rst $18
    dec bc
    jr jr_013_76a8

    adc b
    ldh a, [rNR51]
    add hl, bc
    ld hl, sp+$70
    rst $20
    cp b
    ld [hl], b
    ld [$0b07], sp
    ldh [$ff0a], a
    ld d, $0d
    db $10
    db $fc
    inc b

jr_013_76db:
    dec bc
    pop hl
    ld a, [bc]
    ld a, b
    or b
    add sp, $30
    ld a, [bc]
    dec b
    ld sp, hl
    dec bc
    add $1d
    pop de
    scf
    ret nc

    jr nz, jr_013_773d

    and b
    ldh [$ffe8], a
    adc b
    jr c, jr_013_76fa

    rrca
    ld bc, $1a06
    ld [$f80f], sp

jr_013_76fa:
    ldh a, [$ffb8]
    rst $28
    ld [hl], b
    ld e, b
    or b
    rra
    jp nz, Jump_000_1c09

    ld [$3618], sp
    and h
    dec sp
    jr c, jr_013_76db

    and c
    scf
    cp b
    db $10
    dec b
    ld bc, $03d0
    cp $15
    nop
    ld a, [hl]
    nop
    xor $54
    cp d
    ld c, h
    cp l
    rst $18
    ld a, d
    rra
    rrca
    rra
    dec c
    ld hl, $2f00
    rra
    rst $38
    ld a, $1f
    dec l
    ld e, $1e
    nop
    and b
    ld b, b
    rst $38
    ld e, b
    and b
    cp a
    ret nz

    ldh a, [$ffef]
    ld a, a
    ldh a, [$ffbf]
    ld a, h
    di
    ld a, e

jr_013_773d:
    db $f4
    rst $30
    ld l, a
    ld de, $e003
    rst $38
    nop
    ret c

    ld h, b
    db $ec
    jr nc, jr_013_7784

    call nc, $fff9
    ld d, $2d
    jp nc, $6f96

    ret c

    scf
    or a
    rst $38
    ld e, b
    cp b
    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr c, jr_013_77dd

    ldh [rDIV], a
    dec [hl]
    jp nz, $b06b

    reti


    jr nc, jr_013_776b

    ld bc, $30fd

jr_013_776b:
    call z, $fd05
    ld a, d
    rst $38
    ld l, h
    ccf
    dec de
    rst $38
    ccf
    dec de
    ld e, a
    ccf
    ld a, h
    ccf
    ld e, d
    dec a
    rst $38
    dec a
    nop
    rlca
    nop
    dec c
    ld b, $e0

jr_013_7784:
    add b
    rst $38
    db $fc
    ret nz

    db $e3
    call c, $e6f9
    cp $f1
    rst $18
    pop af
    xor $7e
    pop hl
    or a
    ld [bc], a
    ld b, $c0
    nop
    rst $38
    and b
    ret nz

    ret c

    ld h, b
    ld [hl], h
    xor b
    ld a, d
    and h
    rst $38
    scf
    ret nz

    xor l
    ld e, [hl]
    rst $38
    jr jr_013_77cd

    jr @-$01

    inc a
    add [hl]
    ld a, [bc]
    ld h, d

jr_013_77af:
    db $fc
    add l
    ld a, d
    ld a, e
    ld b, $7f
    rla
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $81
    dec bc
    rst $38
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp a
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e

jr_013_77cd:
    ld a, e
    ld bc, $ff83
    nop
    ld c, a
    add c
    di
    inc c
    push bc
    cp d
    ld sp, hl
    rst $38
    add [hl]
    di
    db $ed

jr_013_77dd:
    rst $38
    db $e3
    ei
    rst $30
    cp h
    rst $38
    nop
    and $98
    db $db
    ldh [$ffe0], a
    ld b, b
    ld h, b
    rst $38
    add b
    jr nc, jr_013_77af

    inc l
    ret nc

    inc [hl]
    ret c

    ld a, a
    rst $38
    ld a, $5e
    dec a
    ld l, a
    inc e
    ld e, d
    inc l
    jp c, Jump_013_6cef

    xor h
    ld e, b
    db $e4
    add b
    dec b
    add hl, de
    and $e7
    ld c, b
    nop
    rlca
    rra
    nop

jr_013_780c:
    ld bc, $bb11
    nop
    ld de, $0601
    ld a, a
    nop
    ld b, $ff
    cp l
    ld a, a
    ei
    ld a, l
    or [hl]
    ld a, c
    ld a, e
    nop
    rst $38
    ld h, b
    add b
    rst $38
    nop
    ld b, e
    cp l
    rst $38
    ret nz

    rst $38
    ldh a, [$ffcf]
    rst $28
    ret nc

    call c, Call_013_58bf
    cp a
    rst $30
    nop
    nop
    add b
    ld b, b
    ld bc, $c0b8
    db $e4
    ld e, b
    rst $38
    ldh a, [c]
    ld c, h
    rst $28
    ld b, b
    and b
    ld b, b
    ld d, h
    dec hl
    rst $38
    rst $08
    ld [hl], h
    sbc d
    ld h, a
    and $03
    inc b
    inc bc
    db $fd
    rlca
    jp nz, $3815

    ret nc

    db $ec
    jr jr_013_780c

    ld e, b
    rst $18
    ld a, [$cc34]
    jr nc, jr_013_78cd

    jp nz, $9816

    ld h, b
    rst $18
    ld a, a
    add b
    ret nc

    rst $28
    rst $38
    ldh [rNR14], a
    ei
    ld [hl], h
    rst $28
    or a
    ld l, a
    sub $2f
    pop hl
    inc d
    call c, $ea60
    rst $38
    inc [hl]
    add hl, sp
    sub $fd
    ld [de], a
    dec sp
    ret nc

    dec hl
    rst $38
    ret nc

    cp b
    ld [hl], a
    rst $38
    ld h, b
    sub e
    ld l, h
    db $eb
    ld sp, hl
    inc b
    pop bc
    dec c
    pop de
    add hl, de
    ld [hl], d
    and b
    ld hl, sp+$30
    ld e, h
    cp a
    cp b
    inc h
    ret c

    call nc, Call_000_1c08
    add $1a
    ld bc, $00ff
    inc bc
    nop
    ld [bc], a
    ld bc, $0007
    dec bc
    rst $10
    rlca
    rla
    ld [$1c15], sp
    add b
    ld h, b
    add hl, de
    ret nc

    ldh [rIE], a
    add sp, $10
    dec de
    rlca
    rla
    rrca
    scf
    ld [$5aff], sp
    dec h
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    rst $38
    sbc e
    ld h, a
    ret c

    ldh [$ffe8], a
    ld [hl], b
    ld l, h
    sub b
    rst $38
    ld e, d

jr_013_78cd:
    and h
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    rst $38
    reti


    and $77
    dec bc
    dec de
    dec c
    dec de
    dec c
    rst $38
    inc de
    dec c
    rra
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    cp e
    inc bc
    nop
    nop
    inc bc
    ld c, $36
    add hl, bc
    ld a, [bc]
    inc bc
    ldh a, [$ffbb]
    db $ec
    db $10
    dec c
    inc bc
    dec de
    dec c
    rla
    inc b
    inc bc
    xor $ff
    ret nc

    ret c

    or b
    ret z

    or b
    ret nc

    and b
    ldh [$ffdf], a
    ret nz

    ldh [$ffc0], a
    and b
    ret nz

    and l
    inc de
    ld [$ff00], sp
    inc c
    nop
    inc d
    ld [$007e], sp
    sbc c
    ld a, [hl]
    db $db
    rla
    ld [$082b], sp
    add sp, $10
    dec hl
    ld [$679b], sp
    cp [hl]
    ld hl, $1708
    add hl, bc
    rrca
    ld bc, $4005
    ld [de], a
    inc bc
    ld e, l
    nop
    inc bc
    add hl, bc
    inc hl
    dec e
    cpl
    add b
    ld hl, $001d
    add hl, bc
    rst $18
    db $db
    nop
    and l
    ld e, d
    rst $20
    ld [hl+], a
    nop
    and l
    ld e, d
    rst $38
    cp l
    ld b, d
    jp Jump_000_1b3c


    rlca
    inc sp
    inc c
    rst $38
    ld d, l
    dec hl
    cp a
    ld b, a
    rst $10
    ld l, a
    rst $18
    ld l, a
    rst $38
    sbc a
    ld l, [hl]
    ld a, [hl]
    dec c
    ret c

    ldh [$ffcc], a
    jr nc, @+$01

    xor d
    call nc, $e2fd
    jp hl


    or $79
    or $ff
    ld a, c
    or [hl]
    cp $30
    ld e, $09
    ld d, $09
    rst $30
    dec e
    ld [$860c], sp
    inc l

jr_013_7977:
    cp b
    db $10
    xor b
    db $10
    rst $00
    cp b
    db $10
    or b
    xor b
    dec l
    daa
    dec b
    rrca
    dec b
    ld a, l
    ld c, $fe
    dec bc
    dec b
    ld a, $d0
    ld e, $0c
    ld a, [de]
    inc c
    inc d
    rst $28
    ld [$081c], sp
    inc d
    ld b, h
    dec b
    xor b
    ld d, b
    xor b
    rst $08
    ld d, b
    ld [hl], b
    nop
    ld b, b
    add [hl]
    ld [hl-], a
    rlca
    add hl, bc
    sbc $6f
    rst $28
    sbc [hl]
    ld l, l
    ld a, h
    dec bc
    rlca
    add hl, bc
    ld sp, hl
    or $f9
    rst $38
    halt
    cp [hl]
    ld [hl], b
    dec bc
    rlca
    inc de
    inc c
    dec [hl]
    rst $38
    dec bc
    ld e, a
    daa
    or a
    ld c, a
    rst $18
    ld l, [hl]
    sbc $ff
    ld l, l
    sub [hl]
    ld l, l
    ret nc

    ldh [$ffc8], a
    jr nc, jr_013_7977

    rst $38
    ret nc

    ld a, [$6de4]
    ldh a, [c]
    ld a, c
    or [hl]
    ld a, c
    ccf
    or [hl]
    jp hl


    ld [hl], $6a
    dec b
    dec bc
    add $1d
    pop de
    scf
    sbc a
    sub $20
    ld d, b
    and b
    ldh [$ff88], a
    jr c, jr_013_79f3

    ld b, $7a
    cp $08
    rrca
    ld sp, hl
    or $b9
    halt
    ld e, [hl]
    or b

jr_013_79f3:
    rra
    ld l, [hl]
    jp nz, Jump_000_1c09

    ld [$a418], sp
    dec sp
    jr c, @-$2e

    and c
    scf
    inc bc
    cp b
    db $10
    dec b
    ld bc, $0260
    cp $17
    nop
    add hl, de
    nop
    dec sp
    db $10
    ld l, l
    ld [hl-], a
    ld e, e
    rst $38
    ld a, $7f
    ld a, $7f
    inc h
    ld c, a
    ld a, [hl-]
    ld [hl], a
    rst $28
    dec e
    rst $38
    ld h, e
    ld h, e
    ld c, [hl]
    ld [bc], a
    ret nz

    nop
    ld [hl], b
    rst $38
    ret nz

    xor h
    ldh a, [$ffae]
    ld hl, sp-$11
    cp d
    rst $38
    cp a
    ld [hl], d
    cp $0c
    db $fc
    ld [hl], b
    ld [hl], b
    xor $01
    xor b
    cp a
    ldh a, [$ffac]
    ld hl, sp-$12
    ld hl, sp-$01
    ld a, [bc]
    ld [bc], a
    ld c, h
    rst $38
    nop
    ld l, [hl]
    inc b
    ld e, e
    ld h, $6d
    ld a, $7f
    rst $38
    ld [de], a
    ld a, [hl]
    rla
    nop
    nop
    jr jr_013_7a52

jr_013_7a52:
    jr c, @+$01

    db $10
    ld [hl], b
    jr nz, @+$72

    jr nz, @+$3a

    db $10
    inc e
    rst $30
    ld [$04fe], sp
    ret


    ld bc, $2f79
    ld [hl], $1d
    rst $38
    nop
    nop
    inc c
    nop
    ld c, $04
    ld c, $04
    rst $38
    rlca
    ld [bc], a
    add a
    ld [bc], a
    ld h, a
    add d
    ld e, a
    ldh [c], a
    cp $13
    ld a, [bc]
    sbc b
    nop
    call c, $b608
    ld c, h
    jp c, Jump_013_7cff

    cp $24
    nop
    nop
    inc bc
    nop
    rlca
    rst $30
    ld [bc], a
    rlca
    ld [bc], a
    ld b, c
    ld [bc], a

jr_013_7a91:
    ld c, $04
    ld a, h
    ld [$11fa], sp
    inc c
    ld b, $20
    ld bc, $0305
    rlca
    inc bc
    rlca
    cp $a0
    ld bc, $0000
    ld [bc], a
    nop
    scf
    ld [bc], a
    ld a, [hl]
    rst $38
    inc h
    sbc $64
    ld a, [hl]
    db $e4
    db $fc
    adc b
    db $fc
    db $fd
    xor b
    ret


    ld bc, $0107
    dec bc
    ld b, $30
    nop
    rst $38
    ld [hl], b
    jr nz, jr_013_7a91

    ld h, b
    ld [hl], b
    ldh [$fff0], a
    add b
    cp a
    ldh a, [$ffa0]
    ldh a, [rLCDC]
    add sp, -$50
    ld de, $0110
    or $20
    nop
    rlca
    ld bc, $0443
    ld h, b
    nop
    ldh a, [c]
    ld h, b
    rst $38
    rst $38
    sub d
    sbc $0c
    db $fc
    ret nz

    ldh a, [$ffa0]
    ret z

    add c
    ld [bc], a
    ld de, $2712
    dec bc
    call c, Call_000_0702
    ld b, $0d
    jr @+$80

    db $dd
    inc de
    ld a, [bc]
    ld c, $1e
    ld a, a
    db $10
    inc bc
    inc bc
    inc e
    ld [$43fe], sp
    inc c

jr_013_7b00:
    rst $00
    ld [bc], a
    ld a, c
    cpl
    scf
    dec e
    dec e
    cp l
    inc bc
    and b
    rlca
    dec b
    ld c, $03
    inc bc
    ldh [rNR21], a
    ld d, [hl]
    rst $38
    db $fc
    ld d, h
    ld hl, sp-$44
    ld hl, sp+$74
    cp b
    db $fc
    rst $30
    db $10
    add sp, $30
    pop hl
    inc de
    rra
    inc bc
    rra
    ld a, [bc]
    db $fd
    ld c, $68
    jr jr_013_7b00

    db $fc
    db $f4
    cp b
    db $fc
    jr c, @-$3f

    cp [hl]
    ld e, h
    ld d, [hl]
    inc l
    inc a
    ld [$0dd1], sp
    db $fd
    rst $38
    ld l, $f2
    ld e, a
    ld l, [hl]
    dec sp
    ccf
    rlca
    rrca
    cp $40
    ld de, $081c
    jr jr_013_7b49

jr_013_7b49:
    xor d
    ld [hl], b
    and a
    cp a
    ld a, [$fedf]
    xor a
    jp c, $a4db

    dec de
    ld bc, $07fd
    and e
    dec bc
    ld b, $03
    dec b
    ld [bc], a
    dec c
    ld b, $ff
    ld b, $00
    ret z

    ld [hl], b
    ld hl, sp-$40
    ld hl, sp+$20

jr_013_7b69:
    rst $38
    ret nc

    ldh [$ffb0], a
    ldh [$ffd0], a
    jr nz, @+$5a

    jr nc, @+$01

    jr nc, jr_013_7b75

jr_013_7b75:
    rrca
    inc b
    dec b
    inc bc
    dec b
    inc bc
    di
    inc b
    inc bc
    ld b, c
    inc de
    ret nc

    ld de, $f800
    db $10
    call c, $e0ff
    rst $18
    db $ec
    cp a
    ld h, d
    ld [hl], d
    jr nz, jr_013_7baf

    cp $c2
    rra
    rrca
    nop
    rra
    ld a, [bc]
    add hl, de
    rrca
    rrca
    ei
    ld bc, $0505
    ld [bc], a
    add b
    db $fc
    xor b
    call z, $e778
    ld hl, sp-$40
    ret nc

    jr nz, jr_013_7bc3

    ld hl, $7e02
    call nz, $ff5e

jr_013_7baf:
    db $f4
    call nc, $ecf8
    jr c, jr_013_7b69

    ld e, b
    ld hl, sp-$03
    jr nz, @-$1d

    ld e, $7b
    dec l
    scf
    dec e
    rra
    nop
    rst $18
    dec b

jr_013_7bc3:
    ld [bc], a
    ld a, [bc]
    inc b
    inc c
    jp nz, Jump_013_7e23

    dec hl
    ld [hl], b
    nop
    ld bc, $03e0
    dec b
    ld bc, $1f0a
    ld a, $7e
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_7cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_7e23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_7ebd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
