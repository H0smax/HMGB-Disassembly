; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    dec bc
    nop
    ld [$20ff], sp
    db $20, $8c
    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $d6
    rst $38
    jp hl


    jp hl


    ccf
    ccf
    jp c, Jump_00b_7dda

    ld a, l
    rst $38
    and h
    rst $30
    dec h
    xor l
    adc $f3
    or l
    db $eb
    rst $38
    ld a, [hl-]
    rst $20
    push bc
    rst $30
    ld [hl], $be
    sbc l
    rst $38
    rst $38
    halt
    halt
    xor a
    xor b
    ld a, d
    ld h, a
    xor c
    sbc c
    rst $38
    ld [hl], b
    ld d, b
    ret nz

    and b
    ldh [$ffa0], a
    and b
    ld h, b
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push bc
    push bc
    ld hl, sp+$38
    cp c
    reti


    rst $38
    ld e, [hl]
    ld h, [hl]
    rla
    dec de
    dec sp
    dec a
    dec sp
    dec a
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, e
    ld e, b
    call nc, $ffed
    cp e
    add $4f
    adc b
    ld a, [hl-]
    ld b, a
    xor c
    reti


    rst $38
    or b
    or b
    ld a, h
    ld b, h
    add $82
    xor [hl]
    ld [hl], $ff
    rst $18
    pop hl
    ei
    add d
    and a
    ld h, c
    db $eb
    add hl, de
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ld [hl], l
    or l
    cp $9e
    dec a
    ld c, l
    ld a, a
    ld b, a
    rst $38
    ld l, d
    ld d, d
    cpl
    ld d, e
    ld [hl], $48
    db $fd
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    ld l, b
    ld [hl], a
    add sp, -$09
    ld d, [hl]
    ld e, c
    pop af
    cp $ff
    ld e, b
    ld e, a
    adc $cf
    scf
    scf
    ld e, l
    ld e, l
    rst $38
    db $ed
    rst $28
    ld l, b
    rst $28
    nop
    rst $38
    add b
    ld a, a
    cp $30
    ld b, $ff
    rst $38
    rst $38
    ld e, d
    ld e, d
    jr nz, @+$01

    rst $38

Jump_00b_4101:
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [$55fa]
    ld d, l
    ld a, [bc]
    or $ff
    dec [hl]
    call $3ece
    dec de
    ei
    cp $fe
    cp a
    ld b, l
    ld b, l
    xor d
    xor d
    ld b, l
    ld b, l
    ld bc, $ca0e
    rst $18
    rst $38
    and l
    rst $28
    ld [hl-], a
    rst $38
    ld bc, $1d0e
    ld a, a
    rst $18
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0340], sp
    ld de, $e7ff
    adc h
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    di
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_00b_4148:
    inc bc
    ld bc, $70f0
    db $eb
    ld a, e
    rst $38
    adc a
    ld a, a
    ld h, b
    sbc a
    sbc [hl]
    pop hl
    pop bc
    cp $ff
    db $fc
    rst $38
    cpl
    cpl
    adc l
    sbc [hl]
    pop hl
    cp $ff
    jp nz, $1cfd

    db $e3
    ld hl, $c6df
    ld a, $ff
    inc e
    db $fc
    ld [$eeea], a
    xor c
    ld e, h
    add e
    rst $38
    ldh [$ff9b], a
    cp l
    adc $fb
    xor h
    push af
    set 7, a
    ld a, a
    ld h, l
    rra
    ld c, $df
    ld d, d
    ld l, a
    xor c
    rst $38
    push hl
    and b
    ld [hl], h
    ld d, d
    ccf
    adc b
    cp [hl]
    ld d, d
    rst $38
    xor $1c
    db $fc
    ldh [$fffb], a
    ld a, e
    ld a, l
    add d
    rst $30
    pop hl
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $21fe
    jr nz, jr_00b_4148

    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    rst $38
    add b
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rst $38
    rlca
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    rst $38
    ld [hl+], a
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $f7
    adc $3f
    ccf
    ret nz

    ld b, $da
    jp c, Jump_000_2d2d

    rst $38
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    adc l
    rst $38
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    and e
    db $fd
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    inc d
    rst $38
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, c
    rst $38
    adc d
    adc d
    ld b, c
    ld b, c
    xor d
    ld l, d
    ld d, l
    or l
    rst $38
    xor b
    ret c

    ld d, h
    ld l, h
    dec l
    dec [hl]
    ld [$fff6], a
    halt
    ld a, d
    scf
    dec sp
    inc e
    ld a, [de]
    dec e
    dec de
    rst $38
    ld d, e
    ld e, l
    inc hl
    dec a
    inc sp
    dec a
    inc hl
    dec a
    rst $38
    inc de
    dec e
    inc de
    dec e
    ld a, [hl-]
    inc a
    dec hl
    dec a
    rst $38
    ld [hl+], a
    inc a
    push hl
    ei
    add $fa
    db $dd
    db $e3
    rst $38
    ld a, [de]
    ld a, e
    ld h, c
    inc a
    jp nc, $f8b3

    add a
    rst $38
    jp nz, Jump_00b_4cbf

    dec a
    call z, $adbd
    xor l
    rst $38
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    rst $38
    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $38
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    rst $38
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    ld b, l
    ld b, l
    rst $38
    ld [de], a
    ld [de], a
    or l
    or l
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    rst $38
    xor e
    xor d
    ld [de], a
    dec d
    add l
    adc e
    ld d, l
    ld d, l
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    xor [hl]
    or c
    halt
    adc [hl]
    rst $38
    sub b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    ld d, h
    ld d, h
    rst $38
    and b
    and b
    db $fc
    inc bc
    ei
    db $fc
    rrca
    rrca
    di
    ld bc, $ef01
    daa
    rra
    nop
    cp [hl]
    pop hl
    dec l
    sbc [hl]
    rst $38
    push de
    cp l
    jp z, Jump_00b_55ae

    or a
    db $d3
    or c
    rst $28
    ld l, e
    sbc d
    dec a
    ld c, h
    ld [bc], a
    ld a, [de]
    ld a, a
    db $ed
    inc hl
    rst $38
    ld [hl], d
    xor l
    db $ed
    sbc [hl]
    rst $18
    or [hl]
    db $fd
    xor [hl]
    ldh a, [$ff2f]
    inc bc
    rra
    nop
    rra
    nop
    rlca
    cpl
    cp l
    reti


    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    call z, Call_00b_4ebd
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    ld e, e
    rst $38
    ld d, a
    xor e
    or a
    ld [hl], c
    ld l, a
    or e
    xor a
    ld d, e
    rst $38
    ld l, a
    rst $20
    rst $18
    ld h, $5e
    and h
    call c, $efa0
    and b
    ret nz

    ret nz

    add b
    stop
    ret nz

    ret nz

    add [hl]
    rst $00
    add [hl]
    ld [$0f08], sp
    ld [$001f], sp
    dec bc
    add hl, sp
    cp e
    rst $20
    rst $38
    dec l
    and e
    jp z, $a7fd

    db $ec
    dec [hl]
    ld sp, hl
    rst $38
    call z, $34f4
    cp b
    rra
    ld a, h
    dec sp
    call c, $8fff
    ld [hl], c
    cp d
    ld b, a
    ld h, l
    adc a
    jp nc, $3fef

    db $ed
    rst $30
    sub $ee
    db $fd
    rra
    cpl
    inc bc
    rra
    nop
    db $fc
    rra
    nop
    rlca
    ccf
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    rst $38
    ld c, $f2
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    rst $38
    db $fd
    dec c
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $ff
    dec [hl]
    rst $30
    pop bc
    ld a, e
    and l
    ld h, a
    ld hl, sp+$06
    rst $18
    add c
    ld a, e
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    rst $38
    xor $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    rst $38
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    rst $38
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    rst $38
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    rst $38
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$fff7], sp
    xor a
    rst $18
    xor a
    rst $18
    xor [hl]
    sbc $ac
    call c, $afff
    rst $18
    rst $20
    rst $18
    rst $10
    rst $28
    pop de
    rst $28
    rst $38
    nop
    nop
    jr jr_00b_4408

    ld h, b
    ld h, b
    ret nz

    ret nz

    rst $38
    pop hl
    pop hl
    add e
    add e
    rst $00
    rst $00
    rst $08
    rst $08
    rst $38
    nop
    nop
    inc d
    inc d
    ld [hl], $36
    cp [hl]
    cp [hl]
    rst $38
    cp e

jr_00b_4408:
    cp a
    dec sp
    ccf
    di
    rst $38
    ld h, c
    rst $38
    rst $38
    cp h
    rst $20
    dec h
    sub c
    jp c, $ade9

    and $ff
    ccf
    jp nz, $b4d7

    scf
    adc [hl]
    ccf
    ld b, b
    rst $38
    and h
    rst $30
    ld a, l
    add l
    sub [hl]
    ld e, e
    dec e
    and a
    rst $38
    or d
    rst $08
    ld l, l
    sub e
    jp nc, $bd34

    ld b, e
    ei
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    push hl
    xor a
    ld [hl-], a
    rst $38
    db $fd
    call Call_000_3902
    ld [$65b3], sp
    rst $18
    nop
    rst $28
    rst $38
    ld d, a
    ld a, [hl-]
    add b
    rst $38
    ld [de], a
    ret


    and h
    ld a, a
    rst $38
    nop
    rst $38
    add hl, hl
    jp nz, $3c96

    ld e, l
    rst $30
    rst $38
    pop bc
    ld a, a
    inc d
    jp Jump_000_3c69


    cp d
    rst $28
    rst $28
    add d
    rst $38
    ret nz

    ccf
    ldh [rLY], a
    ld a, a
    rst $38
    ld a, a
    cp $70
    ld a, $61
    rst $18
    ld b, c
    pop de
    ld d, c
    inc bc
    db $fc
    cp $e0
    ld b, h
    cp $ff
    cp $ff
    nop
    ld a, l
    inc b
    rst $38
    ld a, l
    inc b
    ld c, l
    ld c, h
    ld b, b
    rst $38
    sbc [hl]
    db $e3
    rst $38
    ld l, $dd
    inc sp
    jp nc, $de27

    sbc l
    ldh [c], a
    rst $38
    ld [hl+], a
    db $fd
    ld a, [bc]
    db $fd
    cp h
    db $e3
    inc hl
    sbc l
    rst $38
    pop af
    jp nc, $dcad

    dec sp
    and $c5
    ldh a, [c]
    rst $38
    ld [hl], $bd
    ld e, $7d
    sbc c
    ld a, e
    sbc b
    ld a, d
    rst $38
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    ld b, l
    cp e
    rst $38
    dec sp
    rst $00
    ld b, $fe
    db $10
    db $10

Jump_00b_44bd:
    add c
    add c
    rst $38
    jr z, jr_00b_44ea

    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    add a
    add [hl]
    rst $38
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    inc b
    inc b
    rst $38
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    and h
    ld h, a
    rst $38

Jump_00b_44db:
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    db $10
    db $10
    rst $38
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d

jr_00b_44ea:
    ld c, e
    call z, $11ff
    ld [hl-], a
    add h
    adc l
    xor l
    xor l
    ld h, $3f
    rst $38
    ret z

    rst $10
    or h
    ei
    ccf
    ld e, b
    ld d, [hl]
    ld l, b
    rst $38
    inc a
    ld hl, $101b
    ld [bc], a
    sbc $41
    cp a
    rst $38
    db $10
    rst $28
    ccf
    ret nz

    pop af
    ld bc, $0b0e
    rst $38
    ld h, a
    sbc h
    call z, $e473
    db $e4
    push bc
    db $fd
    rst $38
    rla
    rst $28
    inc hl
    rst $18
    ldh [rNR34], a
    push af
    rst $08
    rst $38
    cp l
    ld l, e
    ld e, e
    add a
    ldh [c], a
    sub e
    sub e
    ld a, h
    rst $38
    db $fd
    add [hl]
    xor e
    call c, $d32c
    push de
    rst $28
    cp $01
    ld b, a
    db $ec
    ld [hl], a
    cp a
    ld b, c
    ld d, l
    or [hl]
    rst $30
    cp a
    adc c
    sbc [hl]
    db $e3
    push af
    rst $38
    ld a, [hl-]
    nop
    ld c, b
    add e
    rst $30
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    push de
    ld a, [hl+]
    adc a
    rst $38
    nop
    add c
    ld a, [hl]
    or b
    ld c, h
    ld h, h
    ld e, e
    add c
    nop
    rst $38
    sbc $a0
    ld c, l
    rst $38
    nop
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    sbc $41
    ld d, l
    rst $38
    ld a, a
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    db $e3
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    ld bc, $784d
    adc a
    sbc b
    rst $38
    rla
    ld l, c
    rst $30
    db $fc
    adc a
    pop hl
    ccf
    adc b
    rst $38
    ld a, a
    and h
    rst $30
    dec [hl]
    adc l
    jp c, $ad97

    rst $38
    scf
    ld [hl], d
    rst $08
    push bc
    or a
    or [hl]
    ld a, $9d
    db $fd
    ld a, a
    nop
    ld e, a
    ld a, d

jr_00b_45a0:
    rst $38
    sbc a
    cp $c6
    cp l
    rst $38
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    sub a
    rst $38
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, hMapLimitH
    and c
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $08ee

    rst $38
    ld c, a
    ld d, h
    call c, $9b1a
    ld [hl], $b6
    daa
    rst $38
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    ld [bc], a
    rst $38
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    db $e4
    rst $38
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    db $10
    rst $38
    ld h, a
    dec sp
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    dec c
    rst $38
    ld [hl], a
    ld a, [hl+]
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    ld c, h
    rst $38
    or e
    daa
    call c, $e619
    and [hl]
    ld a, c
    ld h, h
    rst $38
    sbc a
    jp z, $b435

    db $db
    rst $10
    jr z, jr_00b_45a0

    rst $38
    ld b, [hl]
    ld [hl], c
    xor e
    db $f4
    ld [$67b9], a
    ld l, e
    ld a, a
    add a
    cp e
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    cpl
    add hl, hl
    cp [hl]
    dec bc
    ld l, c
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    ld hl, $001d
    rst $38
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    inc de
    ld [hl+], a
    rst $38
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    ld [hl], a
    ld a, b
    rst $38
    jp hl


    or $d7
    xor $af
    sbc $ab
    ld [hl], a
    ld a, a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    cp [hl]
    ld h, h
    ld [bc], a
    rst $38
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ld h, b
    and b
    cp $b0
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    db $fd
    inc bc
    rst $38
    ccf
    dec a
    rst $00

jr_00b_4662:
    push bc
    rlca
    dec b
    ccf
    dec a
    cp a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    nop
    jr nz, jr_00b_4662

    rst $38
    dec d
    xor $1b
    and $17
    db $ed
    xor h
    db $db
    rst $38
    dec sp
    call nc, $cf38
    and h
    rst $30
    cpl
    and c
    rst $38
    push de
    xor $ab
    and $3f
    db $ed
    db $f4
    db $db
    rst $38
    ccf
    add h
    dec e
    ld a, a
    db $fd
    reti


    or [hl]
    sbc d
    rst $38
    or a
    db $d3
    or $da
    db $fd
    reti


    xor a
    db $db
    rst $38
    cp [hl]
    jp c, $d9b5

    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $38
    rst $00
    cp b
    cp a
    ret nz

    rst $08
    ldh a, [$ff73]
    ld a, h
    rst $38
    ld a, d
    ld a, l
    ld [hl], $39
    ld l, h
    ld l, a
    or b
    or b
    rst $38
    ld l, h
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $28
    xor a
    or b
    rst $38
    and $f9
    adc $f1
    ld c, c
    call $3b32
    rst $38
    dec h
    and $16
    add hl, de
    sbc [hl]
    pop hl
    scf
    ld hl, sp-$01
    ld l, a
    add sp, $2f
    add sp, $4a
    ld [hl], c
    db $dd
    and $ff
    ccf
    ld b, h
    adc [hl]
    di
    and [hl]
    ei
    ld h, e
    ld a, l
    rst $38
    ret


    xor $7b
    ld a, e
    ld c, h
    or e
    or c
    ld c, [hl]
    rst $38
    ld l, h
    or e
    or l
    adc $da
    scf
    add hl, hl
    reti


    rst $38
    sbc a
    sub b
    pop af
    ld c, $9d
    ld [hl], e
    ld e, e
    rst $30
    rst $38
    cp e
    ld h, a
    ld [hl], d
    adc $e7
    ld e, a
    add $b6
    rst $08
    adc l
    ld l, l
    ld [de], a
    sub d
    cpl
    rrca
    dec bc
    ld a, c
    sub a
    ld h, a
    cp e
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_4101

    db $10
    sub a
    rra
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    ld b, b
    dec l
    ld h, b
    dec l
    rst $38
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    adc $ef
    rst $38
    ldh [$ff75], a
    ldh a, [hMapSizeH]
    ld a, b
    ld e, l
    cp h
    cpl
    rst $38
    sbc $ff
    nop
    dec hl
    jp c, $d829

    add hl, hl
    rst $38
    ret c

    dec l
    call c, $da2b
    dec hl
    jp c, $ff2d

    call c, $dc2d
    xor a
    dec hl
    xor a
    dec hl
    adc a
    rst $38
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    dec de
    rst $08
    rst $38
    ld c, e
    sbc a
    dec de
    ld h, b
    sbc a
    jp nc, $bc6f

    rst $38
    jp Jump_00b_5dba


    ld c, a
    or c
    cp h
    ld c, a
    ld l, c
    rst $38
    or a
    cp b
    ld c, a
    db $e4
    sub a
    db $dd
    ld h, l
    cp [hl]
    rst $38

jr_00b_477e:
    res 6, e
    ld e, l
    ld c, [hl]
    or e
    or l
    ld b, a
    ld c, [hl]
    rlca
    or [hl]
    cp l
    ld c, a
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

jr_00b_47a6:
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

jr_00b_47b7:
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
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00b_477e

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_47de

    rst $38
    rst $38

jr_00b_47de:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_00b_47a6

    jr nc, jr_00b_47b7

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e

Jump_00b_47ff:
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, $ff00
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_485b

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_485b:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_4895

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_4895:
    jr nz, jr_00b_4897

jr_00b_4897:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_489f

jr_00b_489f:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, Call_000_01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [$ff3d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_48f8

jr_00b_48f8:
    push de
    jr nz, jr_00b_48fb

jr_00b_48fb:
    pop de
    jr nz, jr_00b_48fe

jr_00b_48fe:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_4949

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_494c

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_4949:
    ld [bc], a
    rlca
    ei

jr_00b_494c:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_49aa

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_4991

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, @+$7e

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_4991:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_49aa:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    ld d, a
    nop
    nop
    inc b
    stop
    ld [$0010], sp
    db $10
    stop
    rst $38
    nop
    nop
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    rst $38
    ld d, d
    xor l
    ld l, e
    sub l
    or a
    ret


    or c
    adc $ff
    ld e, d
    ld h, a
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $38
    rst $18
    inc a
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $18
    rst $10
    inc l
    ld h, [hl]
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    ld a, [$2730]
    sbc d
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    add c
    rst $30
    dec h
    nop
    ld h, l
    jr z, jr_00b_4a24

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    rst $38
    nop
    ld a, [bc]
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $fc
    jr nz, jr_00b_4a39

    inc bc
    jr nz, @+$2a

    ret nc

    inc b
    ld hl, sp+$14
    add sp, -$03
    jr c, @+$22

jr_00b_4a24:
    jr nz, jr_00b_4a9a

    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf

jr_00b_4a2b:
    rst $38
    jp z, Jump_00b_44bd

    cp e
    swap a
    db $e4
    rra
    rst $38
    cp e
    ld c, a
    ld [hl+], a

jr_00b_4a38:
    rst $18

jr_00b_4a39:
    adc b
    ld a, a
    dec d
    rst $38
    rst $38
    ld l, e
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    rst $38
    sbc $ee
    halt
    rst $38
    push de
    db $dd
    sub $de
    rst $38
    sub [hl]
    sbc [hl]
    rla
    rra
    sub l
    sbc l
    rla
    rra
    rst $38
    dec d
    dec e
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    rst $38
    ld e, h
    ld a, h
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    rst $38
    dec e
    dec d
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    rst $38
    sub e
    db $fd
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_4a38

    dec e
    ld [de], a
    pop hl
    rlca
    jr jr_00b_4a9b

    inc a
    stop
    jr @-$01

    jr jr_00b_4a2b

    ld [$b1af], sp
    ld d, a
    ld e, b
    xor l
    xor [hl]
    rst $38
    ld a, [bc]
    dec bc
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_4a9a:
    rst $38

jr_00b_4a9b:
    inc hl
    inc hl
    cp c
    ld b, [hl]
    adc a
    ld [hl], b
    jp $ff3c


    ld a, [$bf05]
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    ld a, e
    add hl, bc
    add hl, bc
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    cp $f0
    scf
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $02
    ld b, b
    nop
    ldh [$ffc0], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld a, a
    ld [$0507], sp
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_4afb

    rst $28
    ld b, $00
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ei
    ld h, b
    ret nc

    ld [bc], a
    jr nz, jr_00b_4a9b

    ld c, a
    db $ed
    inc de
    xor $ff
    ld de, $46b9
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    rst $38
    ld e, $76

jr_00b_4afb:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    rst $38
    db $fd
    sub d
    ld [hl], d
    rst $20
    rra
    cp h
    jp $ff03


    db $fc
    sbc h
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    cp a
    inc e
    jr jr_00b_4b2b

    jr z, jr_00b_4b4d

    set 4, c
    jr @+$01

    rst $38
    add l
    adc c
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rst $38
    rla
    jr jr_00b_4b47

    db $e3

jr_00b_4b2b:
    ldh [$ff1f], a
    add hl, de
    cp $ff
    dec l
    ld [hl-], a
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    rst $38
    ld d, c
    xor $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    cp $2d
    ld [$3f20], sp
    ld l, h

jr_00b_4b47:
    sbc a
    call c, $db3f
    rst $38
    inc a

jr_00b_4b4d:
    call nz, $e73b
    sbc a
    db $ec
    scf
    db $eb
    rst $38
    inc [hl]
    sub $e8
    and $98

jr_00b_4b5a:
    ld b, [hl]
    cp b
    ld c, d
    rst $38
    or h
    sub $a8
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    rst $38
    and $ff
    nop

jr_00b_4b6a:
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, $c2fd

    ld b, h
    ld b, a
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt

jr_00b_4b78:
    adc [hl]
    rst $28
    add [hl]
    xor $e6
    cp $40
    ld [hl-], a
    cp $06
    ld c, $e1
    or $2f
    dec c
    rra
    nop
    rra
    nop
    rst $08
    rra
    inc c
    inc bc
    ld a, [bc]
    ld a, c
    dec b
    and c
    jr nc, jr_00b_4b5a

    rra
    jr jr_00b_4b78

    jr z, jr_00b_4b6a

    pop bc
    db $10
    cp $03
    ld a, [hl+]
    ld [hl], d
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    rst $38
    sbc [hl]
    halt
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    rst $08
    pop de
    inc sp
    and l
    rst $18
    ldh [rIE], a
    inc l
    cp a
    rst $38
    adc h
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    cp $70
    ld d, c

jr_00b_4bc5:
    add c
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    rst $38
    inc c
    rst $38
    jr nc, jr_00b_4bc5

    xor e
    db $ec
    and h
    rst $38
    ei
    rlca
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    rst $38
    add sp, -$19
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $a47f

    ldh [c], a
    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    ld [$9dff], sp
    ld h, d
    pop af
    ld c, $c3
    inc a
    ld e, a
    and b
    rst $38
    db $fd
    inc bc
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    rst $38
    db $f4
    adc h
    ld [$b61a], a
    halt
    ld d, l
    push de
    rst $38
    or d
    or d
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    add d
    rst $38
    ccf
    ldh [$ffdf], a
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    rst $38
    reti


    ret


    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    adc $c0
    ld h, e
    ld e, b
    ld h, a
    nop
    cpl
    dec c
    rra
    nop
    rra
    nop
    add hl, bc
    jr nz, @+$0b

    ld b, $3f
    add hl, bc
    ld b, $04
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$01

    ld c, b
    or b
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld bc, $0270
    ld b, b
    nop
    ld [$20ff], sp
    jr nz, @-$72

    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $d6
    rst $38
    jp hl


    jp hl


    ccf
    ccf
    jp c, Jump_00b_7dda

    ld a, l
    rst $38
    and h
    rst $30
    dec h
    xor l
    adc $f3
    or l
    db $eb
    rst $38
    ld a, [hl-]
    rst $20
    push bc
    rst $30
    ld [hl], $be
    sbc l
    rst $38
    rst $38
    halt
    halt
    xor a
    xor b
    ld a, d
    ld h, a
    xor c
    sbc c
    rst $38
    ld [hl], b
    ld d, b
    ret nz

    and b
    ldh [$ffa0], a
    and b
    ld h, b
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push bc
    push bc
    ld hl, sp+$38
    cp c
    reti


    rst $38
    ld e, [hl]
    ld h, [hl]
    rla
    dec de
    dec sp
    dec a
    dec sp
    dec a
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, e
    ld e, b
    call nc, $ffed
    cp e
    add $4f
    adc b
    ld a, [hl-]
    ld b, a
    xor c
    reti


    rst $38
    or b
    or b

Jump_00b_4cbf:
    ld a, h
    ld b, h
    add $82
    xor [hl]
    ld [hl], $ff
    rst $18
    pop hl
    ei
    add d
    and a
    ld h, c
    db $eb
    add hl, de
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ld [hl], l
    or l
    cp $9e
    dec a
    ld c, l
    ld a, a
    ld b, a
    rst $38
    ld l, d
    ld d, d
    cpl
    ld d, e
    ld [hl], $48
    db $fd
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    ld l, b
    ld [hl], a
    add sp, -$09
    ld d, [hl]
    ld e, c
    pop af
    cp $ff
    ld e, b
    ld e, a
    adc $cf
    scf
    scf
    ld e, l
    ld e, l
    rst $38
    db $ed
    rst $28
    ld l, b

Jump_00b_4d3e:
    rst $28
    nop
    rst $38
    add b
    ld a, a
    cp $30
    ld b, $ff
    rst $38
    rst $38
    ld e, d
    ld e, d
    jr nz, @+$01

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [$55fa]
    ld d, l
    ld a, [bc]
    or $ff
    dec [hl]
    call $3ece
    dec de
    ei
    cp $fe
    cp a
    ld b, l
    ld b, l
    xor d
    xor d
    ld b, l
    ld b, l
    ld bc, $ca0e
    rst $18
    rst $38
    and l
    rst $28
    ld [hl-], a
    rst $38
    ld bc, $1d0e
    ld a, a
    rst $18
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0340], sp
    ld de, $e7ff
    adc h
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    di
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_00b_4d95:
    inc bc
    ld bc, $70f0
    db $eb
    ld a, e
    rst $38
    adc a
    ld a, a
    ld h, b
    sbc a
    sbc [hl]
    pop hl
    pop bc
    cp $ff
    db $fc
    rst $38
    cpl
    cpl
    adc l
    sbc [hl]
    pop hl
    cp $ff
    jp nz, $1cfd

    db $e3
    ld hl, $c6df
    ld a, $ff
    inc e
    db $fc
    ld [$eeea], a
    xor c
    ld e, h
    add e
    rst $38
    ldh [$ff9b], a
    cp l
    adc $fb
    xor h
    push af
    set 7, a
    ld a, a
    ld h, l
    rra
    ld c, $df
    ld d, d
    ld l, a
    xor c
    rst $38
    push hl
    and b
    ld [hl], h
    ld d, d
    ccf
    adc b
    cp [hl]
    ld d, d
    rst $38
    xor $1c
    db $fc
    ldh [$fffb], a
    ld a, e
    ld a, l
    add d
    rst $30
    pop hl
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $21fe
    jr nz, jr_00b_4d95

    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    rst $38
    add b
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rst $38
    rlca
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    rst $38
    ld [hl+], a
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $f7
    adc $3f
    ccf
    ret nz

    ld b, $da
    jp c, Jump_000_2d2d

    rst $38
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    adc l
    rst $38
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    and e
    db $fd
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    inc d
    rst $38
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, c
    rst $38
    adc d
    adc d
    ld b, c
    ld b, c
    xor d
    ld l, d
    ld d, l
    or l
    rst $38
    xor b
    ret c

    ld d, h
    ld l, h
    dec l
    dec [hl]
    ld [$fff6], a
    halt
    ld a, d
    scf
    dec sp
    inc e
    ld a, [de]
    dec e
    dec de
    rst $38
    ld d, e
    ld e, l
    inc hl
    dec a
    inc sp
    dec a
    inc hl
    dec a
    rst $38
    inc de
    dec e
    inc de
    dec e
    ld a, [hl-]
    inc a
    dec hl
    dec a
    rst $38
    ld [hl+], a
    inc a
    push hl
    ei
    add $fa
    db $dd
    db $e3
    rst $38
    ld a, [de]
    ld a, e
    ld h, c
    inc a
    jp nc, $f8b3

    add a
    rst $38
    jp nz, Jump_00b_4cbf

    dec a
    call z, $adbd
    xor l
    rst $38
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    rst $38
    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $38
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e

Call_00b_4ebd:
    rst $30
    rst $38
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    ld b, l
    ld b, l
    rst $38
    ld [de], a
    ld [de], a
    or l
    or l
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    rst $38
    xor e
    xor d
    ld [de], a
    dec d
    add l
    adc e
    ld d, l
    ld d, l
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    xor [hl]
    or c
    halt
    adc [hl]
    rst $38
    sub b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    ld d, h
    ld d, h
    rst $38
    and b
    and b
    db $fc
    inc bc
    ei
    db $fc
    rrca
    rrca
    ei
    ld bc, $0101
    daa
    and h
    di
    ccf
    and b
    db $ed
    rst $38
    db $db
    jp c, Jump_000_2eb6

    sub $fb
    rst $00
    ld e, a
    rst $38
    or e
    ld a, $41
    db $e4
    scf
    dec h
    call $ffba
    ld l, a
    db $ed
    or a
    ld a, d
    scf
    ld l, a
    ld [hl], c
    push af
    rst $38
    xor $ab
    db $dd
    xor [hl]
    pop af
    ccf
    xor h
    call nc, $ebff
    cp a
    ret nz

    ld a, c
    or [hl]
    pop de
    xor b
    jr c, @+$01

    adc c
    inc e
    ld l, h
    db $f4
    add a
    xor l
    ld [hl], l
    sub $ff
    dec sp
    cp l
    jp $dda2


    ld c, a
    cp l
    and $ff
    ld a, h
    inc hl
    dec a
    ld b, b
    rst $38
    sbc e
    db $e4
    ld l, $ff
    jp c, $b45c

    inc l
    call nc, $a45c
    sub [hl]
    rst $38
    ld a, d
    ld a, $c1
    ld b, b
    rst $38
    ldh a, [c]
    sbc a
    ld hl, sp-$01
    cpl
    ld e, b
    rla
    ld e, c
    rla
    ld a, $31
    ld [hl], l
    rst $38
    ld l, [hl]
    xor d
    db $dd
    and a
    db $f4
    ld a, $a2
    db $eb
    rst $38
    call $d2b3
    dec h
    pop de
    jp nc, $39e8

    rst $38
    or [hl]
    rra
    ld a, b
    and h
    rst $30
    xor l
    ld hl, $ff7a
    dec c
    push de
    sbc e
    xor d
    scf
    push de
    ld h, a
    ld [hl], $ff
    sbc $dd
    inc sp
    cp l
    reti


    ld a, $9a
    daa
    rst $38
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    ld l, $ff
    jp c, $9925

    call z, Call_00b_4ebd
    cp a
    ld c, l
    rst $18
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    db $fc
    rst $38
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    db $ed
    rst $38
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    halt
    rst $38
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    or $ff
    rst $28
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    db $fd
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    rst $38
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    ld e, e
    ld d, a
    rst $38
    xor e
    or a
    ld [hl], c
    ld l, a
    or e
    xor a
    ld d, e
    ld l, a
    rst $38
    rst $20
    rst $18
    ld h, $5e
    and h
    call c, $a0a0
    rst $30
    ret nz

    ret nz

    add b
    stop
    ret nz

    ret nz

    add [hl]
    add [hl]
    ei
    ld [$0f08], sp
    scf
    xor a
    ret c

    ld e, e
    or d
    push de
    rst $38
    or [hl]
    jp $3fbc


    pop bc
    add $f1
    scf
    rst $38
    cp h
    dec e
    ld a, [hl]
    db $ec
    inc de
    ei
    dec c
    ld e, l
    rst $38
    or [hl]
    or l
    sub $e2
    db $dd
    cp l
    jp $ff76


    cp [hl]
    sbc l
    ld a, a
    or [hl]
    adc $6b
    sub a
    or $bf
    cp c
    rst $00
    cp b
    ccf
    ret nz

    rst $00
    ld [bc], a
    ld [bc], a
    ld h, d
    rst $38
    ld a, l
    rst $00
    ld sp, hl
    adc c
    or $f5
    ld c, $7e
    rst $30
    add c
    db $fd
    add e
    ld bc, $6f02
    ret c

    db $db
    or d
    rst $38
    ld d, l
    or [hl]
    ld b, e
    cp h
    dec a
    jp $f98e


    rst $38
    inc hl
    db $fc
    add hl, bc
    cp $cc
    inc sp
    ldh a, [c]
    dec c
    rst $38
    ld e, c
    cp [hl]
    and e
    call nz, $c9f7
    cp h
    jp Jump_00b_61ff


    cp a
    adc b
    ld a, a
    cp a
    db $e4
    dec [hl]
    sub b
    cp a
    db $eb
    cp b
    cp e
    ld b, [hl]
    db $fd
    inc sp
    nop
    inc b
    cp [hl]
    rst $38
    dec e
    ld a, [hl]
    ld [hl], d
    and l
    ld l, c
    adc [hl]
    ld d, l
    sbc d
    rst $38
    rst $28
    ld [hl], h
    or d
    ld c, a
    push hl
    rla
    halt
    cp [hl]
    rst $38
    ld e, l
    cp a
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    rst $38
    ld c, $f2
    add hl, de
    pop af
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    rst $38
    db $fd
    dec c
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $ff
    dec [hl]
    rst $30
    pop bc
    ld a, e
    and l
    ld h, a
    ld hl, sp+$06
    rst $18
    add c
    ld a, e
    cp [hl]
    sbc e
    db $f4
    nop
    db $10
    xor $db
    rst $38
    xor $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    rst $38
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    rst $38
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    rst $38
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    rst $38

jr_00b_50db:
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$fff7], sp
    xor a
    rst $18
    xor a
    rst $18
    xor [hl]
    sbc $ac
    call c, $afff
    rst $18
    rst $20
    rst $18
    rst $10
    rst $28
    pop de
    rst $28
    rst $38
    nop
    nop
    jr jr_00b_5112

    ld h, b
    ld h, b
    ret nz

    ret nz

    rst $38
    pop hl
    pop hl
    add e
    add e
    rst $00
    rst $00
    rst $08
    rst $08
    rst $38
    nop
    nop
    inc d
    inc d
    ld [hl], $36
    cp [hl]
    cp [hl]
    rst $38
    cp e

jr_00b_5112:
    cp a
    dec sp
    ccf
    di
    rst $38
    ld h, c
    rst $38
    rst $38
    or a
    call nz, $925e
    rst $00
    add l
    db $d3
    sub d
    rst $38
    jp hl


    jr z, jr_00b_50db

    ld d, h
    sbc $20
    ld l, h
    inc e
    rst $38
    and h
    rst $30
    and l
    dec l
    ld a, [hl]
    ld bc, $a6e5
    rst $38
    cp $51
    push af
    add a
    ld [hl], $5e
    ld a, l
    ld d, e
    ei
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    push hl
    xor a
    ld [hl-], a
    rst $38
    db $fd
    call Call_000_3902
    ld [$65b3], sp
    rst $18
    nop
    rst $28
    rst $38
    ld d, a
    ld a, [hl-]
    add b
    rst $38
    ld [de], a
    ret


    and h
    ld a, a
    rst $38
    nop
    rst $38
    add hl, hl
    jp nz, $3c96

    ld e, l
    rst $30
    rst $38
    pop bc
    ld a, a
    inc d

jr_00b_5167:
    jp Jump_000_3c69


    cp d
    rst $28
    rst $28
    add d
    rst $38
    ret nz

    ccf
    ldh [rLY], a
    ld a, a
    rst $38
    ld a, a
    cp $70
    ld a, $61
    rst $18
    ld b, c
    pop de
    ld d, c
    inc bc
    db $fc
    cp $e0
    ld b, h
    cp $ff
    cp $ff
    nop
    ld a, l
    inc b
    rst $38
    ld a, l
    inc b
    ld c, l
    ld c, h
    ld c, h
    di
    sub e
    db $ec
    rst $38
    jr nz, jr_00b_5167

    ld c, l
    xor [hl]
    ccf
    pop bc
    adc [hl]
    db $fc
    rst $38
    ld [hl+], a
    db $fc
    ld [$bcff], sp
    db $e3
    dec hl
    sbc h
    rst $38
    pop hl
    and b
    xor l
    sbc $3f
    pop hl
    add $f4
    rst $38
    ld [hl], $bc
    dec e
    ld a, a
    sbc c
    ld a, e
    sbc b
    ld a, d
    rst $38
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    ld b, l
    cp e
    rst $38
    dec sp
    rst $00
    ld b, $fe
    db $10
    db $10
    add c
    add c
    rst $38
    jr z, jr_00b_51f4

    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    add a
    add [hl]
    rst $38
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    inc b
    inc b
    rst $38
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    and h
    ld h, a
    rst $38
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    db $10
    db $10
    rst $38
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d

jr_00b_51f4:
    ld c, e
    call z, $11ff
    ld [hl-], a
    add h
    adc l
    xor l
    xor l
    ld h, $3f
    rst $38
    ret z

    rst $10
    or h
    ei
    ccf
    ld e, b
    ld d, [hl]
    ld l, b
    rst $38
    inc a
    ld hl, $101b
    ld [bc], a
    sbc $41
    cp a
    rst $38
    db $10
    rst $28
    ccf
    ret nz

    pop af
    ld bc, $0b0e
    rst $38
    ld h, a
    sbc h
    call z, $e473
    db $e4
    push bc
    db $fd
    rst $38
    rla
    rst $28
    inc hl
    rst $18
    ldh [rNR34], a
    push af
    rst $08
    rst $38
    cp l
    ld l, e
    ld e, e
    add a
    or [hl]
    adc $3d
    add e
    ccf
    adc $b9
    or a
    ld c, h
    ld a, [hl]
    or e
    nop
    jr nz, jr_00b_5240

    ld a, [de]

jr_00b_5240:
    ld a, a
    ld b, c
    xor c
    adc $7d
    or d
    rst $18
    ld h, h
    dec b
    ld a, [de]
    rst $28
    add e
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    push de
    rra
    ld a, [hl+]
    rst $38
    nop
    add c
    ld a, [hl]
    or b
    ld c, h
    ld h, h
    ld e, e
    add c
    nop
    cp l
    rst $38
    and b
    ld c, l
    rst $38
    nop
    rst $18
    ld b, c
    ld hl, $e000
    cp l
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    rst $00
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    ld bc, $b832
    ld l, a
    rst $38
    ld e, b
    rst $10
    or l
    ld a, e
    db $fc
    rlca
    and c
    ld a, a
    rst $38
    adc b
    ld a, a
    and h
    rst $30
    ld [hl], l
    adc l
    jp c, $ff57

    ld [hl], l
    ei
    xor d
    ld [hl], a
    push af
    rlca
    or [hl]
    ld a, $fb
    dec e
    ld a, a
    nop
    ld e, a
    ld a, d
    rst $38
    sbc a
    cp $c6
    rst $38
    cp l
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    rst $38
    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $bdff
    and c
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $ffee

    ld [$544f], sp
    call c, $9b1a
    ld [hl], $b6
    rst $38
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    rst $38
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    rst $38
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    rst $38
    db $10
    ld h, a
    dec sp
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    rst $38
    dec c
    ld [hl], a
    ld a, [hl+]
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    rst $38
    ld c, h
    or e
    daa
    call c, $e619
    and [hl]
    ld a, c
    rst $38
    ld h, h
    sbc a
    jp z, $b435

    db $db
    rst $10
    jr z, @+$01

    sbc b
    ld b, [hl]
    ld [hl], c
    xor e
    db $f4
    ld [$67b9], a
    rst $38
    ld l, e
    add a
    cp e
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    ld a, a
    ld b, e
    db $fc
    sbc [hl]
    ldh [c], a
    dec hl
    call Call_000_0033
    ld a, [hl-]
    rst $38
    sub d
    add sp, $29
    or $0f
    ld hl, sp+$40
    rst $38
    rst $38
    sbc [hl]
    ld [hl], e
    ld a, b
    rrca
    call nc, $a99b
    scf
    rst $38
    call c, $216f
    rst $18
    call z, $8033
    ld b, b
    rst $30
    cp a
    ld a, a
    cp a
    ld hl, $001d
    add d
    ld a, h
    or l
    rst $38
    ld a, c
    xor e
    ld [hl], e
    inc de
    ld [hl+], a
    xor a
    adc $5d
    rst $38
    sbc [hl]
    cp e
    inc a
    ld [hl], a
    ld a, b
    jp hl


    or $d7

jr_00b_535d:
    rst $38
    xor $af
    sbc $ab
    ld [hl], a
    or l
    ld a, e
    cp $ef
    ld bc, $4281
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    rst $18
    or b
    ld a, c
    cp c
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    rst $38
    ret nz

    jr nz, jr_00b_535d

    db $fd
    inc bc
    ccf
    dec a
    rst $00
    rst $38
    push bc
    rlca
    dec b
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    rst $38
    inc bc
    add a
    ld a, e
    ld e, h
    db $e3
    and [hl]
    push de
    ld e, e
    rst $38
    cp d
    add hl, sp
    call nz, $fb17
    adc a
    ld sp, hl
    ld [hl+], a
    rst $38
    db $fd
    ld a, [bc]
    db $fd
    cp h
    jp $9527


    db $d3
    rst $38
    ld [$e4a9], a
    scf
    ei
    push bc
    di
    ld [hl], $ff
    cp l
    ld e, $7d
    db $fd
    reti


    or [hl]
    sbc d
    or a
    rst $38
    db $d3
    or $da
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    rst $38
    jp c, $d9b5

    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    rst $38
    cp b
    cp a
    ret nz

    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    rst $38
    ld a, l
    ld [hl], $39
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $38
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $28
    xor a
    or b
    and $ff
    ld sp, hl
    adc $f1
    ld c, c
    call $3b32
    dec h
    rst $38
    and $16
    add hl, de
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    rst $38
    add sp, $2f
    add sp, $4a
    ld [hl], c
    db $dd
    and $3f
    rst $38
    ld b, h
    adc [hl]
    di
    and [hl]
    ei
    ld h, e
    ld a, l
    ret


    rst $38
    xor $7b
    ld a, e
    ld c, h
    or e
    or c
    ld c, [hl]
    ld l, h
    rst $38
    or e
    or l
    adc $da
    scf
    add hl, hl
    reti


    sbc a
    rst $38
    sub b
    pop af
    ld c, $9d
    ld [hl], e
    ld e, e
    rst $30
    cp e
    rst $38
    ld h, a
    ld [hl], d
    adc $e7
    ld e, a
    add $b6
    adc l
    rst $38
    ld l, l
    ld [de], a
    sub d
    ld e, e
    db $e4
    or a
    jp nc, $fe6b

    nop
    ld a, [hl-]
    ld c, l
    or e
    add [hl]
    ld sp, hl
    ld hl, $09fe
    rst $38
    cp $52
    and l
    add hl, hl
    adc $55
    sbc d
    db $eb
    rst $38
    ld [hl], h
    or c
    ld c, a
    db $ec
    rra
    ld h, c
    cp a
    ld c, b
    rst $18
    cp a
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_000_01fd

    ld b, c
    db $10
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ld hl, sp-$20
    ld [hl], c
    ld b, b
    dec l
    ld h, b
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    rst $38
    pop de
    adc $ef
    ldh [$ff75], a
    ldh a, [hMapSizeH]
    ld a, b
    rst $38
    ld e, l
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, $29ff

    ret c

    add hl, hl
    ret c

    dec l
    call c, $da2b
    rst $38
    dec hl
    jp c, $dc2d

    dec l
    call c, Call_000_2baf
    rst $38
    xor a
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    cp a
    sbc a
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    nop
    ld d, d
    adc a
    rst $38
    adc b
    ld [hl], a
    or b
    rst $08
    ld d, c
    cp a
    adc h
    ld a, a

jr_00b_54b3:
    cp $01
    jr nz, jr_00b_54b3

    add a
    push de
    ld l, l
    xor d
    rst $18

jr_00b_54bc:
    push hl
    rst $38
    xor a
    ld [hl], d
    cp a
    push bc
    ld [hl], a
    or [hl]
    ld a, $9d
    ld bc, $007f
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

jr_00b_54e4:
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

jr_00b_54f5:
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
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00b_54bc

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_551c

    rst $38
    rst $38

jr_00b_551c:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_00b_54e4

    jr nc, jr_00b_54f5

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, $ff00
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_5599

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_5599:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c

Jump_00b_55ae:
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_55d3

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_55d3:
    jr nz, jr_00b_55d5

jr_00b_55d5:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_55dd

jr_00b_55dd:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, Call_000_01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [$ff3d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_5636

jr_00b_5636:
    push de
    jr nz, jr_00b_5639

jr_00b_5639:
    pop de
    jr nz, jr_00b_563c

jr_00b_563c:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_5687

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_568a

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_5687:
    ld [bc], a
    rlca
    ei

jr_00b_568a:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_56e8

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_56cf

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, @+$7e

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_56cf:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_56e8:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    ld d, a
    nop
    nop
    inc b
    stop
    ld [$0010], sp
    db $10
    stop
    rst $38
    nop
    nop
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    rst $38
    ld d, d
    xor l
    ld l, e
    sub l
    or a
    ret


    or c
    adc $ff
    ld e, d
    ld h, a
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $38
    rst $18
    inc a
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $18
    rst $10
    inc l
    ld h, [hl]
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    ld a, [$2730]
    sbc d
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    db $fd
    rst $30
    dec h
    nop
    rst $38
    nop
    ld b, b
    rst $38
    sub d
    rst $38
    rst $38
    inc c
    di
    ld d, $ed
    inc hl
    jp nc, $ef96

    xor a
    cpl
    ldh a, [$ff0e]
    pop af
    ld bc, $0801
    nop
    ld a, [hl+]
    ld [hl], c
    rst $38
    sbc a
    db $fc
    ld l, a
    add hl, bc
    sub a
    sbc h
    ld h, e
    and h
    rst $38
    rst $30
    dec h
    xor l
    adc $f1
    or l
    and $33
    ld a, a
    ld [$f7c8], a
    inc sp
    cp h
    ld e, $71
    ld bc, $ff01
    jp z, $a5ff

    rst $28
    ld [hl], d
    sbc a
    push af
    ld h, a
    rst $28
    ld l, [hl]
    ldh a, [c]
    sbc e
    ld l, l
    inc bc
    jr nz, jr_00b_5791

    dec b
    db $10
    rst $08
    rrca
    inc d
    dec bc
    ld c, $20
    jr nz, jr_00b_5794

jr_00b_5791:
    jr nz, jr_00b_57bb

    ret nc

jr_00b_5794:
    rst $18
    inc b
    ld hl, sp+$14
    add sp, $38
    jr nz, @+$22

    ld [hl], h
    ld c, a
    rst $38
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf
    jp z, Jump_00b_44bd

    cp e
    rst $38
    swap a
    db $e4
    rra
    cp e
    ld c, a
    ld [hl+], a
    rst $18
    rst $38
    adc b
    ld a, a
    dec d
    rst $38
    ld l, e
    rst $38
    or a
    ei
    rst $38
    ldh [c], a

jr_00b_57bb:
    cp $f5
    db $ed
    sbc $ee
    halt
    rst $38
    rst $38
    push de
    db $dd
    sub $de
    sub [hl]
    sbc [hl]
    rla
    rra
    rst $38
    sub l
    sbc l
    rla
    rra
    dec d
    dec e
    ld [hl], c
    rst $38
    rst $38
    and h
    ld h, a
    sbc d
    ei
    ld e, h
    ld a, h
    inc d
    inc [hl]
    rst $38
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    dec e
    dec d
    ld [hl], l
    ld sp, hl
    rst $38
    halt
    ld a, [$fc32]
    sub e
    db $fd
    ld [bc], a
    ld a, l
    cp a
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_5812

    ld [de], a
    ld hl, $1836
    db $db
    jr jr_00b_5838

    stop
    jr jr_00b_5818

    pop hl
    ld [hl], $af
    or c
    rst $38
    ld d, a
    ld e, b
    xor l
    xor [hl]
    ld a, [bc]
    dec bc
    add l
    add l
    rst $38
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_5812:
    inc hl
    inc hl
    cp c
    ld b, [hl]
    rst $38
    adc a

jr_00b_5818:
    ld [hl], b
    jp $fa3c


    dec b
    cp a
    ret nz

    cp a
    xor a
    or b
    ld l, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    inc bc
    cpl
    ld c, $e7
    pop af
    inc e
    db $e3
    and d
    cpl
    ldh a, [$ff37]
    add b
    nop
    ldh [$ffaf], a
    nop
    ld hl, sp+$00

jr_00b_5838:
    cp $40
    nop
    ldh [$ffc0], a
    nop
    ld e, l
    rst $38
    xor $bb
    sbc $35
    sbc $2a
    db $dd
    ld e, $ef
    pop hl
    adc l
    cp $21
    and b
    rrca
    halt
    sub l

jr_00b_5851:
    xor c
    rst $38
    ld a, d
    ld e, c
    cp [hl]
    and d
    db $dd
    cp l
    jp $ff4c


    cp a
    and c
    ld a, a
    ld [$bfff], sp
    db $ec
    ld sp, $92ff
    ld sp, hl
    sbc $a2
    db $dd
    ld a, $e1
    push bc
    rst $38
    or $36
    cp l
    dec e
    ld a, a
    ld [hl], l
    sub [hl]
    add l
    rst $38
    ld a, [hl]
    ld e, d
    cp l
    cp l
    jp $dfa2


    ld b, l
    rst $18
    or a
    or [hl]
    ld a, [hl]
    dec e
    ld a, a
    pop hl
    rra
    ld [$df07], sp
    dec b
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_58b1

    ld b, $00
    ei
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ld h, b
    ret nc

    cp $02
    jr nz, jr_00b_5851

    ld c, a
    db $ed
    inc de
    xor $11
    cp c
    rst $38
    ld b, [hl]
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    ld e, $76
    rst $38

jr_00b_58b1:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    db $fd
    sub d
    rst $38
    ld [hl], d

jr_00b_58bb:
    rst $20
    rra
    cp h
    jp $fc03


    sbc h
    rst $38
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    inc e
    jr jr_00b_58bb

    inc d
    jr z, jr_00b_5903

    set 4, b
    ld a, [hl+]
    nop
    rst $38
    add l
    rst $38
    adc c
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rla
    rst $38
    jr jr_00b_58fe

    db $e3
    ldh [$ff1f], a
    add hl, de
    cp $2d
    rst $38
    ld [hl-], a
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    ld d, c
    ld a, a
    xor $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    dec l
    ld b, [hl]
    rst $38
    jr nz, @+$41

    ld l, h

jr_00b_58fe:
    sbc a
    call c, $db3f
    inc a

jr_00b_5903:
    rst $38
    call nz, $e73b
    sbc a
    db $ec
    scf
    db $eb
    inc [hl]
    rst $38
    sub $e8
    and $98
    ld b, [hl]
    cp b
    ld c, d
    or h
    rst $38
    sub $a8
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    and $ff
    rst $38
    nop
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, $fec2

    ld b, h
    ld b, a
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt
    adc [hl]
    add [hl]
    rst $30
    xor $e6
    cp $40
    ld [hl-], a
    cp $06
    ld c, $f6
    cp $05
    rra
    rrca
    ldh a, [hWindowY]

jr_00b_5941:
    db $ec
    ld a, [hl+]
    or $7d
    db $fd
    adc e
    ld bc, $4821
    cp a
    and b
    ld e, a
    ld d, c
    cp a
    cp a
    ld c, h

jr_00b_5951:
    cp a
    xor l
    ld [hl], e
    sbc h
    ld l, e
    dec b
    rra
    ccf
    ld a, a
    ldh [$ffcd], a
    db $f4
    ld [hl], $ba

jr_00b_595f:
    ld a, a
    dec c
    nop
    ld hl, $8dff
    ld [$a59f], a
    ld c, a
    ld [hl], d
    cp a
    ld b, l
    rst $18
    or a
    cp [hl]
    ld [hl-], a
    sbc l
    ld l, e
    push bc
    rra
    inc c
    inc bc
    di
    ld a, [bc]
    dec b
    and c
    jr nc, jr_00b_5941

    rra
    jr jr_00b_595f

    jr z, jr_00b_5951

    db $fc
    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    rst $38
    ld h, c
    sbc [hl]
    halt
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    rst $38
    inc c
    rst $08
    pop de
    inc sp
    and l
    rst $18
    ldh [rIE], a
    ld a, a
    inc l
    rst $38
    adc h
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    db $fd
    add c
    ld [hl], b
    ld d, c

jr_00b_59ac:
    add c
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    rst $38
    ldh [rIE], a
    inc c
    rst $38
    jr nc, jr_00b_59ac

    xor e
    db $ec
    rst $38
    and h
    ei
    rlca
    rst $38
    inc [hl]
    rst $38
    ld de, $ff1e
    sub $e8
    rst $20
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    rst $38
    jp c, $e2a4

    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$fffe]
    dec l
    ld d, [hl]
    sbc l
    ld h, d
    pop af
    ld c, $c3
    inc a
    ld e, a
    rst $38
    and b
    db $fd
    inc bc
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    rst $38
    xor b
    db $f4
    adc h
    ld [$b61a], a
    halt
    ld d, l
    rst $38
    push de
    or d
    or d
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    rst $38
    add d
    ccf
    ldh [$ffdf], a
    rst $08
    ret nc

    ret nz

    rst $10
    rst $38
    rst $00
    reti


jr_00b_5a07:
    ret


    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    ld sp, hl
    adc $63
    ld e, b
    ld h, a
    nop
    ld l, d
    or l
    cp a
    reti


    cpl
    rst $38
    db $dd
    dec d
    xor $1b
    or $8f
    ld sp, hl
    ld [hl+], a
    rst $38
    db $fd
    ld a, [bc]
    db $fd
    db $f4
    ld e, e
    cp $33
    add sp, -$01
    ld [hl], a
    ret c

    rst $20
    or c
    rst $08
    db $ec
    rra
    and c
    rst $38
    ld a, a
    adc b
    ld a, a
    rst $28
    or h
    ccf
    sbc c
    rst $28
    rst $38
    db $dd
    or l
    xor $3b
    or $c7
    pop af
    ld [hl], $ff
    cp l
    ld e, $7d
    cp h
    ld d, a
    db $ed
    dec [hl]
    ld a, [$6fff]
    push de
    rst $28
    or d
    rst $18
    push bc
    scf
    or [hl]
    ei
    ld a, $9d
    nop
    jr nz, @+$0b

    ld b, $09
    ld b, $04
    rst $20
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, jr_00b_5ab2

    or b
    ld c, b
    ccf
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld [hl], b
    ld [bc], a
    ld b, b
    nop
    ld [$20ff], sp
    jr nz, jr_00b_5a07

    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $d6
    rst $38
    jp hl


    jp hl


    ccf
    ccf
    jp c, Jump_00b_7dda

    ld a, l
    rst $38
    and h
    rst $30
    dec h
    xor l
    adc $f3
    or l
    db $eb
    rst $38
    ld a, [hl-]
    rst $20
    push bc
    rst $30
    ld [hl], $be
    sbc l
    rst $38
    rst $38
    halt
    halt
    xor a
    xor b

jr_00b_5ab2:
    ld a, d
    ld h, a
    xor c
    sbc c
    rst $38
    ld [hl], b
    ld d, b
    ret nz

    and b
    ldh [$ffa0], a
    and b
    ld h, b
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push bc
    push bc
    ld hl, sp+$38
    cp c
    reti


    rst $38
    ld e, [hl]
    ld h, [hl]
    rla
    dec de
    dec sp
    dec a
    dec sp
    dec a
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, e
    ld e, b
    call nc, $ffed
    cp e
    add $4f
    adc b
    ld a, [hl-]
    ld b, a
    xor c
    reti


    rst $38
    or b
    or b
    ld a, h
    ld b, h
    add $82
    xor [hl]
    ld [hl], $ff
    rst $18
    pop hl
    ei
    add d
    and a
    ld h, c
    db $eb
    add hl, de
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ld [hl], l
    or l
    cp $9e
    dec a
    ld c, l
    ld a, a
    ld b, a
    rst $38
    ld l, d
    ld d, d
    cpl
    ld d, e
    ld [hl], $48
    db $fd
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    ld l, b
    ld [hl], a
    add sp, -$09
    ld d, [hl]
    ld e, c
    pop af
    cp $ff
    ld e, b
    ld e, a
    adc $cf
    scf
    scf
    ld e, l
    ld e, l
    rst $38
    db $ed
    rst $28
    ld l, b
    rst $28
    nop
    rst $38
    add b
    ld a, a
    cp $30
    ld b, $ff
    rst $38
    rst $38
    ld e, d
    ld e, d
    jr nz, @+$01

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [$55fa]
    ld d, l
    ld a, [bc]
    or $ff
    dec [hl]
    call $3ece
    dec de
    ei
    cp $fe
    cp a
    ld b, l
    ld b, l
    xor d
    xor d
    ld b, l
    ld b, l
    ld bc, $ca0e
    rst $18
    rst $38
    and l
    rst $28
    ld [hl-], a
    rst $38
    ld bc, $1d0e
    ld a, a
    rst $18
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0340], sp
    ld de, $e7ff
    adc h
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    di
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_00b_5bbc:
    inc bc
    ld bc, $70f0
    db $eb
    ld a, e
    rst $38
    adc a
    ld a, a
    ld h, b
    sbc a
    sbc [hl]
    pop hl
    pop bc
    cp $ff
    db $fc
    rst $38
    cpl
    cpl
    adc l
    sbc [hl]
    pop hl
    cp $ff
    jp nz, $1cfd

    db $e3
    ld hl, $c6df
    ld a, $ff
    inc e
    db $fc
    ld [$eeea], a
    xor c
    ld e, h
    add e
    rst $38
    ldh [$ff9b], a
    cp l
    adc $fb
    xor h
    push af
    set 7, a
    ld a, a
    ld h, l
    rra
    ld c, $df
    ld d, d
    ld l, a
    xor c
    rst $38
    push hl
    and b
    ld [hl], h
    ld d, d
    ccf
    adc b
    cp [hl]
    ld d, d
    rst $38
    xor $1c
    db $fc
    ldh [$fffb], a
    ld a, e
    ld a, l
    add d
    rst $30
    pop hl
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $21fe
    jr nz, jr_00b_5bbc

    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    rst $38
    add b
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rst $38
    rlca
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    rst $38
    ld [hl+], a
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $f7
    adc $3f
    ccf
    ret nz

    ld b, $da
    jp c, Jump_000_2d2d

    rst $38
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    adc l
    rst $38
    sbc l
    db $e3
    db $fd
    db $fd
    halt
    halt
    and e
    and e
    db $fd
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    inc d
    rst $38
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, c
    rst $38
    adc d
    adc d
    ld b, c
    ld b, c
    xor d
    ld l, d
    ld d, l
    or l
    rst $38
    xor b
    ret c

    ld d, h
    ld l, h
    dec l
    dec [hl]
    ld [$fff6], a
    halt
    ld a, d
    scf
    dec sp
    inc e
    ld a, [de]
    dec e
    dec de
    rst $38
    ld d, e
    ld e, l
    inc hl
    dec a
    inc sp
    dec a
    inc hl
    dec a
    rst $38
    inc de
    dec e
    inc de
    dec e
    ld a, [hl-]
    inc a
    dec hl
    dec a
    rst $38
    ld [hl+], a
    inc a
    push hl
    ei
    add $fa
    db $dd
    db $e3
    rst $38
    ld a, [de]
    ld a, e
    ld h, c
    inc a
    jp nc, $f8b3

    add a
    rst $38
    jp nz, Jump_00b_4cbf

    dec a
    call z, $adbd
    xor l
    rst $38
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    rst $38
    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $38
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    rst $38
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    ld b, l
    ld b, l
    rst $38
    ld [de], a
    ld [de], a
    or l
    or l
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    rst $38
    xor e
    xor d
    ld [de], a
    dec d
    add l
    adc e
    ld d, l
    ld d, l
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    xor [hl]
    or c
    halt
    adc [hl]
    rst $38
    sub b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    ld d, h
    ld d, h
    rst $38
    and b
    and b
    db $fc
    inc bc
    ei
    db $fc
    rrca
    rrca
    di
    ld bc, $ef01
    daa
    rra
    nop
    xor l
    ldh a, [c]
    ld [hl], $ad
    rst $38
    db $ed
    jp z, $99d7

    ld a, l
    add d
    db $dd
    ldh [c], a
    rst $38
    ld h, $95
    ld l, e
    dec l
    db $e4
    scf
    cp l
    ld b, c
    rst $38
    ld e, d
    db $ed
    xor e
    ld d, d
    ld a, [hl]
    add c
    sub l
    db $eb
    rrca
    jp c, Jump_00b_5fe4

    ld h, [hl]
    cpl
    inc bc
    rra
    nop
    rra
    nop
    rlca
    cpl
    rst $38
    cp l
    reti


    ld a, $9a
    daa
    db $d3
    ld h, [hl]
    jp c, Jump_00b_6dff

    reti


    ccf
    db $db
    ld l, $da
    dec h
    sbc c
    rst $38
    call z, Call_00b_4ebd
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    ei
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    rst $38
    push af
    reti


    ld l, l
    ld c, e
    db $ed
    db $db
    rst $20
    db $db
    rst $38
    ld l, $1b
    or $db
    halt
    ld e, e
    db $d3
    rst $20
    rst $38
    di
    rst $28
    ld [hl], a
    rst $28
    or $ef
    or d
    rst $28
    cp a
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    and c
    rrca
    xor d
    rst $38
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $38
    rst $30
    xor l
    rst $30
    ld e, e
    ld d, a
    xor e
    or a
    ld [hl], c
    rst $38
    ld l, a
    or e
    xor a
    ld d, e
    ld l, a
    rst $20
    rst $18
    ld h, $ff
    ld e, [hl]
    and h
    call c, $a0a0
    ret nz

Jump_00b_5dba:
    ret nz

    add b
    ld a, [hl]
    stop
    ret nz

    ret nz

    add [hl]
    add [hl]
    ld [$0f08], sp
    ld [$1ffc], sp
    nop
    dec bc
    add hl, sp
    push hl
    sbc e
    ld a, e
    and a
    db $f4
    call z, $d8ff
    adc b
    cp c
    add hl, hl
    or a
    ld c, a
    ld hl, sp+$37
    rst $38
    rra
    ld a, b
    ld c, a
    ld [hl], b
    call $8ef5
    di
    rst $38
    adc e
    push af
    adc d
    pop af
    dec de
    and $36
    ret z

    jp Jump_000_1ffd


    cpl
    inc bc
    rra
    nop
    rra
    nop
    rlca
    ccf
    dec h
    pop de
    rst $38
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    add hl, de
    pop af
    rst $38
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    ld l, d
    ld l, d
    rst $38
    or h
    or h
    cp d
    add $35
    rst $30
    pop bc
    ld a, e
    rst $38
    and l
    ld h, a
    ld hl, sp+$06
    add c
    ld a, e
    cp [hl]
    sbc e
    db $fd
    db $f4
    nop
    db $10
    xor $db
    xor $db
    inc h
    dec de
    rst $38
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    rst $38
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    rst $38
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    rst $38
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    rst $38
    dec c
    rst $20
    ld [$aff7], sp
    rst $18
    xor a
    rst $18
    rst $38
    xor [hl]
    sbc $ac
    call c, $dfaf
    rst $20
    rst $18
    rst $38
    rst $10
    rst $28
    pop de
    rst $28
    nop
    nop
    jr jr_00b_5e7f

    rst $38
    ld h, b
    ld h, b
    ret nz

    ret nz

    pop hl
    pop hl
    add e
    add e
    rst $38
    rst $00
    rst $00
    rst $08
    rst $08
    nop
    nop
    inc d
    inc d
    rst $38
    ld [hl], $36
    cp [hl]
    cp [hl]
    cp e

jr_00b_5e7f:
    cp a
    dec sp
    ccf
    rst $38
    di
    rst $38
    ld h, c
    rst $38
    cp h
    db $e3
    ld h, e
    add l
    rst $38
    di
    jp z, $e6b9

    scf
    ld sp, hl
    rst $38
    jp nz, Jump_00b_47ff

    adc d
    scf
    ld d, d
    db $f4
    add a
    sbc l
    ld de, $9aff
    rst $20
    push af
    rrca
    jp c, Jump_000_0d57

    db $eb
    cp a
    cp $00
    dec e
    rst $28
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    rst $18
    push hl
    xor a
    ld [hl-], a
    rst $38
    call Call_000_3902
    ld [$ffb3], sp
    ld h, l
    rst $18
    nop
    rst $28
    ld d, a
    ld a, [hl-]
    add b
    rst $38
    rst $38
    ld [de], a
    ret


    and h
    ld a, a
    nop
    rst $38
    add hl, hl
    jp nz, $96ff

    inc a
    ld e, l
    rst $30
    pop bc
    ld a, a
    inc d
    jp Jump_00b_69ff


    inc a
    cp d
    rst $28
    add d
    rst $38
    ret nz

    ccf
    xor $e0
    ld b, h
    ld a, a
    rst $38
    ld a, a
    ld [hl], b
    ld a, $61
    rst $18
    ld b, c
    rst $28
    pop de
    ld d, c
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    rst $38
    nop
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    rst $38
    ld b, b
    rst $38
    sbc [hl]
    db $e3
    ld l, $dd
    inc sp
    jp nc, $27ff

    sbc $9d
    ldh [c], a
    ld [hl+], a
    db $fd
    ld a, [bc]
    db $fd
    rst $38
    cp h
    db $e3
    inc hl
    sbc l
    pop af
    jp nc, $dcad

    rst $38
    dec sp
    and $c5
    ldh a, [c]
    ld [hl], $bd
    ld e, $7d
    rst $38
    sbc c
    ld a, e
    sbc b
    ld a, d
    adc l
    ld a, a
    adc l
    ld a, a
    rst $38
    adc e
    ld a, l
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    rst $38
    db $10
    db $10
    add c
    add c
    jr z, jr_00b_5f61

    ld [bc], a
    ld [bc], a
    rst $38
    ld c, l
    ld c, l
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    rst $38
    ld b, d
    ld b, d
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    rst $38
    db $ec
    inc e
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    rst $38
    inc hl
    inc hl
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    rst $38
    ld l, [hl]

jr_00b_5f61:
    ld [hl], d
    ld c, e
    call z, Call_000_3211
    add h
    adc l
    rst $38
    xor l
    xor l
    ld h, $3f
    ret z

    rst $10
    or h
    ei
    rst $38
    ccf
    ld e, b
    ld d, [hl]
    ld l, b
    inc a
    ld hl, $101b
    rst $38
    ld [bc], a
    sbc $41
    cp a
    db $10
    rst $28
    ccf
    ret nz

    rst $38
    pop af
    ld bc, $0b0e
    ld h, a
    sbc h
    call z, $ff73
    db $e4
    db $e4
    push bc
    db $fd
    rla
    rst $28
    inc hl
    rst $18
    rst $38
    ldh [rNR34], a
    push af
    rst $08
    cp l
    ld l, e
    ld e, e
    add a
    rst $38
    cp l
    db $e3
    ld h, a
    add l
    and d
    ld a, l
    db $fd
    add d
    rst $38
    add hl, sp
    and $ed
    adc e
    cp a
    ld hl, $1fe1
    rst $38
    call z, $d343
    dec [hl]
    cp $83
    db $fd
    and a
    rst $38
    ld l, [hl]
    adc c
    dec de
    ldh [c], a
    rst $20
    ld hl, sp+$19
    ld a, a
    rst $28
    add e
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld e, [hl]
    push de
    rra
    ld a, [hl+]
    rst $38
    nop
    add c
    ld a, [hl]
    or b
    ld c, h
    ld h, h
    ld e, e
    add c
    nop
    cp l
    rst $38
    and b
    ld c, l
    rst $38
    nop
    rst $18
    ld b, c
    ld hl, $e000
    cp l

Jump_00b_5fe4:
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    rst $00
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    ld bc, $784d
    adc a
    rst $38
    sbc b
    rla
    ld l, c
    rst $30
    db $fc
    adc a
    pop hl
    ccf
    rst $38
    adc b
    ld a, a
    and h
    rst $30
    dec [hl]
    adc l
    jp c, $ff97

    xor l
    scf
    ld [hl], d
    rst $08
    push bc
    or a
    or [hl]
    ld a, $fb
    sbc l
    ld a, a
    nop
    ld e, a
    ld a, d
    rst $38
    sbc a
    cp $c6
    rst $38
    cp l
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    rst $38
    sub a
    sub c
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $bdff
    and c
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, $ffee

    ld [$544f], sp
    call c, $9b1a
    ld [hl], $b6
    rst $38
    daa
    or a
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    rst $38
    ld [bc], a
    and $22
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    rst $38
    db $e4
    db $ed
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    rst $38
    db $10
    ld h, a
    dec sp
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    rst $38
    dec c
    ld [hl], a
    ld a, [hl+]
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    rst $38
    ld c, h
    or e
    daa
    call c, $e619
    and [hl]
    ld a, c
    rst $38
    ld h, h
    sbc a
    jp z, $b435

    db $db
    rst $10
    jr z, @+$01

    sbc b
    ld b, [hl]
    ld [hl], c
    xor e
    db $f4
    ld [$67b9], a
    rst $38
    ld l, e
    add a
    cp e
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    ld a, h
    cpl
    add hl, hl
    dec bc
    ld l, c
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    ld hl, $ff1d
    nop
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    inc de
    rst $38
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    ld [hl], a
    rst $38
    ld a, b
    jp hl


    or $d7
    xor $af
    sbc $ab
    rst $38
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    cp [hl]
    cp $64
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ld h, b
    db $fd
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    db $fd
    rst $38
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    dec b
    ccf
    ld a, a
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    nop
    jr nz, @+$01

    pop af
    dec d
    xor $1b
    and $17
    db $ed
    xor h
    rst $38
    db $db
    dec sp
    call nc, $cf38
    and h
    rst $30
    cpl
    rst $38
    and c
    push de
    xor $ab
    and $3f
    db $ed
    db $f4
    rst $38
    db $db
    ccf
    add h
    dec e
    ld a, a
    db $fd
    reti


    or [hl]
    rst $38
    sbc d
    or a
    db $d3
    or $da
    db $fd
    reti


    xor a
    rst $38
    db $db
    cp [hl]
    jp c, $d9b5

    cp c
    rst $08
    ldh a, [c]
    rst $38
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $08
    ldh a, [$ff73]
    rst $38
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    ld l, h
    ld l, a
    or b
    rst $38
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    ld d, c
    rst $28
    xor a
    rst $38
    or b
    and $f9
    adc $f1
    ld c, c
    call $ff32
    dec sp
    dec h
    and $16
    add hl, de
    sbc [hl]
    pop hl
    scf
    rst $38
    ld hl, sp+$6f
    add sp, $2f
    add sp, $4a
    ld [hl], c
    db $dd
    rst $38
    and $3f
    ld b, h
    adc [hl]
    di
    and [hl]
    ei
    ld h, e
    rst $38
    ld a, l
    ret


    xor $7b
    ld a, e
    ld c, h
    or e
    or c
    rst $38
    ld c, [hl]
    ld l, h
    or e
    or l
    adc $da
    scf
    add hl, hl
    rst $38
    reti


    sbc a
    sub b
    pop af
    ld c, $9d
    ld [hl], e
    ld e, e
    rst $38
    rst $30
    cp e
    ld h, a
    ld [hl], d
    adc $e7
    ld e, a
    add $9f
    or [hl]
    adc l
    ld l, l
    ld [de], a
    sub d
    cpl
    rrca
    dec bc
    ld a, c
    sub a
    ld [hl], a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_4101

    db $10
    ccf
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    ld b, b
    dec l
    cp $60
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    adc $ff
    rst $28
    ldh [$ff75], a
    ldh a, [hMapSizeH]
    ld a, b
    ld e, l
    cp h
    rst $38
    cpl
    sbc $ff
    nop
    dec hl
    jp c, $d829

    rst $38
    add hl, hl
    ret c

    dec l
    call c, $da2b
    dec hl
    jp c, Jump_000_2dff

    call c, $dc2d
    xor a
    dec hl
    xor a
    dec hl
    rst $38
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    dec de
    rst $38
    rst $08
    ld c, e
    sbc a
    dec de
    ld h, b
    sbc a
    jp nc, $ff6f

    cp h
    jp Jump_00b_5dba


    ld c, a
    or c
    cp h
    ld c, a
    rst $38
    ld l, c
    or a
    cp b
    ld c, a
    db $e4
    sub a
    db $dd
    ld h, l
    rst $38
    cp [hl]

jr_00b_61f9:
    res 6, e
    ld e, l
    ld c, [hl]
    or e
    or l

Jump_00b_61ff:
    ld b, a
    rrca
    ld c, [hl]
    or [hl]
    cp l
    ld c, a
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

jr_00b_6221:
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

jr_00b_6232:
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
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00b_61f9

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_6259

    rst $38
    rst $38

jr_00b_6259:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_00b_6221

    jr nc, jr_00b_6232

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, $ff00
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_62d6

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_62d6:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_6310

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_6310:
    jr nz, jr_00b_6312

jr_00b_6312:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_631a

jr_00b_631a:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, Call_000_01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [$ff3d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_6373

jr_00b_6373:
    push de
    jr nz, jr_00b_6376

jr_00b_6376:
    pop de
    jr nz, jr_00b_6379

jr_00b_6379:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_63c4

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_63c7

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_63c4:
    ld [bc], a
    rlca
    ei

jr_00b_63c7:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_6425

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_640c

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, @+$7e

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_640c:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_6425:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    ld d, a
    nop
    nop
    inc b
    stop
    ld [$0010], sp
    db $10
    stop
    rst $38
    nop
    nop
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    rst $38
    ld d, d
    xor l
    ld l, e
    sub l
    or a
    ret


    or c
    adc $ff
    ld e, d
    ld h, a
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $38
    rst $18
    inc a
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $18
    rst $10
    inc l
    ld h, [hl]
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    ld a, [$2730]
    sbc d
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    add c
    rst $30
    dec h
    nop
    ld h, l
    jr z, jr_00b_649f

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    rst $38
    nop
    ld a, [bc]
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $fc
    jr nz, jr_00b_64b4

    inc bc
    jr nz, @+$2a

    ret nc

    inc b
    ld hl, sp+$14
    add sp, -$03
    jr c, @+$22

jr_00b_649f:
    jr nz, jr_00b_6515

    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf

jr_00b_64a6:
    rst $38
    jp z, Jump_00b_44bd

    cp e
    swap a
    db $e4
    rra
    rst $38
    cp e
    ld c, a
    ld [hl+], a

jr_00b_64b3:
    rst $18

jr_00b_64b4:
    adc b
    ld a, a
    dec d
    rst $38
    rst $38
    ld l, e
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    rst $38
    sbc $ee
    halt
    rst $38
    push de
    db $dd
    sub $de
    rst $38
    sub [hl]
    sbc [hl]
    rla
    rra
    sub l
    sbc l
    rla
    rra
    rst $38
    dec d
    dec e
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    rst $38
    ld e, h
    ld a, h
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    rst $38
    dec e
    dec d
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    rst $38
    sub e
    db $fd
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_64b3

    dec e
    ld [de], a
    pop hl
    rlca
    jr jr_00b_6516

    inc a
    stop
    jr @-$01

    jr jr_00b_64a6

    ld [$b1af], sp
    ld d, a
    ld e, b
    xor l
    xor [hl]
    rst $38
    ld a, [bc]
    dec bc
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_6515:
    rst $38

jr_00b_6516:
    inc hl
    inc hl
    cp c
    ld b, [hl]
    adc a
    ld [hl], b
    jp $ff3c


    ld a, [$bf05]
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    ld a, e
    add hl, bc
    add hl, bc
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    cp $f0
    scf
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $02
    ld b, b
    nop
    ldh [$ffc0], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld a, a
    ld [$0507], sp
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_6576

    rst $28
    ld b, $00
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ei
    ld h, b
    ret nc

    ld [bc], a
    jr nz, jr_00b_6516

    ld c, a
    db $ed
    inc de
    xor $ff
    ld de, $46b9
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    rst $38
    ld e, $76

jr_00b_6576:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    rst $38
    db $fd
    sub d
    ld [hl], d
    rst $20
    rra
    cp h
    jp $ff03


    db $fc
    sbc h
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    cp a
    inc e
    jr jr_00b_65a6

    jr z, jr_00b_65c8

    set 4, c
    jr @+$01

    rst $38
    add l
    adc c
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rst $38
    rla
    jr jr_00b_65c2

    db $e3

jr_00b_65a6:
    ldh [$ff1f], a
    add hl, de
    cp $ff
    dec l
    ld [hl-], a
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    rst $38
    ld d, c
    xor $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    cp $2d
    ld [$3f20], sp
    ld l, h

jr_00b_65c2:
    sbc a
    call c, $db3f
    rst $38
    inc a

jr_00b_65c8:
    call nz, $e73b
    sbc a
    db $ec
    scf
    db $eb
    rst $38
    inc [hl]
    sub $e8
    and $98

jr_00b_65d5:
    ld b, [hl]
    cp b
    ld c, d
    rst $38
    or h
    sub $a8
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    rst $38
    and $ff
    nop

jr_00b_65e5:
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, $c2fd

    ld b, h
    ld b, a
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt

jr_00b_65f3:
    adc [hl]
    rst $28
    add [hl]
    xor $e6
    cp $40
    ld [hl-], a
    cp $06
    ld c, $e1
    or $2f
    dec c
    rra
    nop
    rra
    nop
    rst $08
    rra
    inc c
    inc bc
    ld a, [bc]
    ld a, c
    dec b
    and c
    jr nc, jr_00b_65d5

    rra
    jr jr_00b_65f3

    jr z, jr_00b_65e5

    pop bc
    db $10
    cp $03
    ld a, [hl+]
    ld [hl], d
    adc l
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    rst $38
    sbc [hl]
    halt
    adc a
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    rst $08
    pop de
    inc sp
    and l
    rst $18
    ldh [rIE], a
    inc l
    cp a
    rst $38
    adc h
    ld a, h
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    cp $70
    ld d, c

jr_00b_6640:
    add c
    add c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    rst $38
    inc c
    rst $38
    jr nc, jr_00b_6640

    xor e
    db $ec
    and h
    rst $38
    ei
    rlca
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    rst $38
    add sp, -$19
    sbc c
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $a47f

    ldh [c], a
    sbc h
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    ld [$9dff], sp
    ld h, d
    pop af
    ld c, $c3
    inc a
    ld e, a
    and b
    rst $38
    db $fd
    inc bc
    push af
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    rst $38
    db $f4
    adc h
    ld [$b61a], a
    halt
    ld d, l
    push de
    rst $38
    or d
    or d
    ld d, l
    ld d, l
    inc l
    inc l
    add d
    add d
    rst $38
    ccf
    ldh [$ffdf], a
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    rst $38
    reti


    ret


    ret nc

    rst $08
    rst $18
    ret nz

    pop de
    adc $c0
    ld h, e
    ld e, b
    ld h, a
    nop
    cpl
    dec c
    rra
    nop
    rra
    nop
    add hl, bc
    jr nz, @+$0b

    ld b, $3f
    add hl, bc
    ld b, $04
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$01

    ld c, b
    or b
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld bc, $0270
    ld b, b
    nop
    ld [$20ff], sp
    jr nz, @-$72

    adc h
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    ld [$0508], sp
    dec b
    ret nz

    ret nz

    dec d
    dec d
    rst $38
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $d6
    rst $38
    jp hl


    jp hl


    ccf
    ccf
    jp c, Jump_00b_7dda

    ld a, l
    rst $38
    and h
    rst $30
    dec h
    xor l
    adc $f3
    or l
    db $eb
    rst $38
    ld a, [hl-]
    rst $20
    push bc
    rst $30
    ld [hl], $be
    sbc l
    rst $38
    rst $38
    halt
    halt
    xor a
    xor b
    ld a, d
    ld h, a
    xor c
    sbc c
    rst $38
    ld [hl], b
    ld d, b
    ret nz

    and b
    ldh [$ffa0], a
    and b
    ld h, b
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push bc
    push bc
    ld hl, sp+$38
    cp c
    reti


    rst $38
    ld e, [hl]
    ld h, [hl]
    rla
    dec de
    dec sp
    dec a
    dec sp
    dec a
    rst $38
    inc c
    inc c
    ccf
    inc hl
    ld a, e
    ld e, b
    call nc, $ffed
    cp e
    add $4f
    adc b
    ld a, [hl-]
    ld b, a
    xor c
    reti


    rst $38
    or b
    or b
    ld a, h
    ld b, h
    add $82
    xor [hl]
    ld [hl], $ff
    rst $18
    pop hl
    ei
    add d
    and a
    ld h, c
    db $eb
    add hl, de
    rst $38
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    ret nz

    ld d, d
    rst $38
    cp $01
    ld b, c
    ld b, b
    ld bc, $01fe
    nop
    rst $38
    ld bc, $2548
    inc h
    add d
    ld a, l
    ld bc, $ffd0
    inc d
    inc d
    nop
    nop
    and c
    and c
    ld d, b
    ld d, b
    rst $38
    and d
    and d
    ret nc

    ret nc

    or $76
    jp hl


    add hl, hl
    rst $38
    ld [hl], l
    or l
    cp $9e
    dec a
    ld c, l
    ld a, a
    ld b, a
    rst $38
    ld l, d
    ld d, d
    cpl
    ld d, e
    ld [hl], $48
    db $fd
    add e
    rst $38
    ld e, e
    and a
    jp hl


    scf
    ld d, h
    db $db
    ld l, d
    db $ed

Jump_00b_679a:
    rst $38
    rra
    db $fd
    push bc
    dec sp
    ei
    rlca
    add a
    ld a, a
    rst $38
    ld l, b
    ld [hl], a
    add sp, -$09
    ld d, [hl]
    ld e, c
    pop af
    cp $ff
    ld e, b
    ld e, a
    adc $cf
    scf
    scf
    ld e, l
    ld e, l
    rst $38
    db $ed
    rst $28
    ld l, b
    rst $28
    nop
    rst $38
    add b
    ld a, a
    cp $30
    ld b, $ff
    rst $38
    rst $38
    ld e, d
    ld e, d
    jr nz, @+$01

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [$55fa]
    ld d, l
    ld a, [bc]
    or $ff
    dec [hl]
    call $3ece
    dec de
    ei
    cp $fe
    cp a
    ld b, l
    ld b, l
    xor d
    xor d
    ld b, l
    ld b, l
    ld bc, $ca0e
    rst $18
    rst $38
    and l
    rst $28
    ld [hl-], a
    rst $38
    ld bc, $1d0e
    ld a, a
    rst $18
    ld b, b
    rst $38
    sub d
    rst $38
    ld [$0340], sp
    ld de, $e7ff
    adc h
    rst $38
    ld hl, $00a0
    ld bc, $0c01
    di
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_00b_6810:
    inc bc
    ld bc, $70f0
    db $eb
    ld a, e
    rst $38
    adc a
    ld a, a
    ld h, b
    sbc a
    sbc [hl]
    pop hl
    pop bc
    cp $ff
    db $fc
    rst $38
    cpl
    cpl
    adc l
    sbc [hl]
    pop hl
    cp $ff
    jp nz, $1cfd

    db $e3
    ld hl, $c6df
    ld a, $ff
    inc e
    db $fc
    ld [$eeea], a
    xor c
    ld e, h
    add e
    rst $38
    ldh [$ff9b], a
    cp l
    adc $fb
    xor h
    push af
    set 7, a
    ld a, a
    ld h, l
    rra
    ld c, $df
    ld d, d
    ld l, a
    xor c
    rst $38
    push hl
    and b
    ld [hl], h
    ld d, d
    ccf
    adc b
    cp [hl]
    ld d, d
    rst $38
    xor $1c
    db $fc
    ldh [$fffb], a
    ld a, e
    ld a, l
    add d
    rst $30
    pop hl
    ld [hl], a
    rst $38
    nop
    ld a, [bc]
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    ld bc, $21fe
    jr nz, jr_00b_6810

    ld e, l
    ld b, c
    ld l, b
    rst $38
    rst $38
    cp $fe
    ld bc, $bfff
    ret nz

    cp a
    rst $38
    add b
    ld a, a
    halt
    ld a, c
    sub h
    sbc e
    inc a
    dec sp
    rst $38
    rlca
    inc b
    jp c, Jump_00b_44db

    ld b, h
    adc c
    adc c
    rst $38
    ld [hl+], a
    ld [hl+], a
    cp a
    ret nz

    ld a, a
    add b
    pop af
    ld c, $f7
    adc $3f
    ccf
    ret nz

    ld b, $da
    jp c, Jump_000_2d2d

    rst $38
    inc sp
    db $f4
    sub [hl]
    ld [hl], l
    jp z, Jump_00b_723d

    adc l
    rst $38
    sbc l
    db $e3

Call_00b_68ab:
    db $fd
    db $fd
    halt
    halt
    and e
    and e
    db $fd
    rra
    or b
    inc bc
    push af
    push af
    xor d
    xor d
    inc d
    inc d
    rst $38
    adc b
    adc b
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, c
    rst $38
    adc d
    adc d
    ld b, c
    ld b, c
    xor d
    ld l, d
    ld d, l
    or l
    rst $38
    xor b
    ret c

    ld d, h
    ld l, h
    dec l
    dec [hl]
    ld [$fff6], a
    halt
    ld a, d
    scf
    dec sp
    inc e
    ld a, [de]
    dec e
    dec de
    rst $38
    ld d, e
    ld e, l
    inc hl
    dec a
    inc sp
    dec a
    inc hl
    dec a
    rst $38
    inc de
    dec e
    inc de
    dec e
    ld a, [hl-]
    inc a
    dec hl
    dec a
    rst $38
    ld [hl+], a
    inc a
    push hl
    ei
    add $fa
    db $dd
    db $e3
    rst $38
    ld a, [de]
    ld a, e
    ld h, c
    inc a
    jp nc, $f8b3

    add a
    rst $38
    jp nz, Jump_00b_4cbf

    dec a
    call z, $adbd
    xor l
    rst $38
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    rst $38
    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $38
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    rst $38
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    ld b, l
    ld b, l
    rst $38
    ld [de], a
    ld [de], a
    or l
    or l
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    rst $38
    xor e
    xor d
    ld [de], a
    dec d
    add l
    adc e
    ld d, l
    ld d, l
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    xor [hl]
    or c
    halt
    adc [hl]
    rst $38
    sub b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    ld d, h
    ld d, h
    rst $38
    and b
    and b
    db $fc
    inc bc
    ei
    db $fc
    rrca
    rrca
    di
    ld bc, $ef01
    daa
    rra
    nop
    and [hl]
    push af
    dec h
    xor b
    rst $38
    call $e8fb
    add h
    sbc h
    ld b, d
    ret


    dec h
    rst $38
    ld l, l
    cp e
    or [hl]
    ld e, h
    db $e4
    scf
    and l
    call Call_00b_6aff
    rst $10
    db $fd
    adc e
    halt
    db $db
    db $db
    xor c
    adc a
    ld a, [hl+]
    call z, $9bc5
    cpl
    inc bc
    dec bc
    dec l
    inc bc
    dec e
    and a
    rst $38
    db $ec
    dec [hl]
    ld sp, hl
    set 6, h
    ld a, $ab
    scf
    db $fd
    ld c, c
    inc bc
    ld e, $e5
    cpl
    ld [hl-], a
    ld e, a
    db $dd
    ld h, a
    rst $38
    sbc $aa
    inc sp
    call $d9bd
    ld a, $9a
    rst $38
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    rst $38
    ld l, $da
    dec h
    sbc c
    call z, Call_00b_4ebd
    cp a
    cp a
    ld c, l
    cp [hl]
    ld [hl+], a
    db $dd
    inc e
    db $e3
    ld h, b
    inc hl
    rst $38
    rst $38
    db $fc
    rst $38
    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    rst $38
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    rst $38
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    rst $38
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    ei
    or e

Jump_00b_69ff:
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $38
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    ld e, e
    rst $38
    ld d, a
    xor e
    or a
    ld [hl], c
    ld l, a
    or e
    xor a
    ld d, e
    rst $38
    ld l, a
    rst $20
    rst $18
    ld h, $5e
    and h
    call c, $efa0
    and b
    ret nz

    ret nz

    add b
    stop
    ret nz

    ret nz

    add [hl]
    rst $00
    add [hl]
    ld [$0f08], sp
    ld a, [bc]
    rra
    nop
    dec bc
    add hl, sp
    ld sp, hl
    adc a
    rst $38
    ld l, $a3
    call $a7fb
    db $ec
    inc sp
    db $fd
    rst $38
    call nz, $36f1
    cp e
    dec de
    ld a, h
    inc a
    rst $20
    cp $00
    db $10
    sbc a
    push hl
    cpl
    ld [hl], d
    cp a
    dec h
    rst $10
    rst $08
    ld h, $de
    call $2f3f
    inc bc
    dec bc
    dec a
    db $dd
    and h
    rst $38
    ld [hl-], a
    adc e
    db $ec
    sub a
    rst $20
    xor b
    ld c, d
    or a
    rst $38
    ld hl, sp-$3b
    scf
    cp d
    rra
    ld a, l
    ld l, d
    sub l
    rst $38
    sbc l
    ld h, c
    and d
    ld e, l
    rst $20
    add l
    sub $6b
    rst $38
    sbc l
    ld h, a
    or $1e
    dec e
    ld a, a
    dec h
    pop de
    rst $38
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    add hl, de
    pop af
    rst $38
    rra
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    ld l, d
    ld l, d
    rst $38
    or h
    or h
    cp d
    add $35
    rst $30
    pop bc
    ld a, e
    rst $38
    and l
    ld h, a
    ld hl, sp+$06
    add c
    ld a, e
    cp [hl]
    sbc e
    db $fd
    db $f4
    nop
    db $10
    xor $db
    xor $db
    inc h
    dec de
    rst $38
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    rst $38
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    rst $38
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    rst $38
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    rst $38
    dec c
    rst $20
    ld [$aff7], sp
    rst $18
    xor a
    rst $18
    rst $38
    xor [hl]
    sbc $ac
    call c, $dfaf
    rst $20
    rst $18
    rst $38
    rst $10
    rst $28
    pop de
    rst $28
    nop
    nop
    jr jr_00b_6b08

    rst $38
    ld h, b
    ld h, b
    ret nz

    ret nz

    pop hl
    pop hl
    add e
    add e
    rst $38
    rst $00
    rst $00
    rst $08
    rst $08
    nop

Call_00b_6aff:
    nop
    inc d
    inc d
    rst $38
    ld [hl], $36
    cp [hl]
    cp [hl]
    cp e

jr_00b_6b08:
    cp a
    dec sp
    ccf
    rst $38
    di
    rst $38
    ld h, c
    rst $38
    and h
    rst $30
    cpl
    and c
    rst $38
    db $dd
    xor $ff
    add b
    ld sp, hl
    ld l, b
    or d
    ld d, a
    rst $28
    ld l, b
    adc e
    ld d, l
    ld a, $01
    ld b, [hl]
    ld a, [$5d0f]
    rst $38
    rst $10
    add [hl]
    xor e
    xor l
    ei
    sub d
    cp h
    add a
    rst $30
    ld a, c
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    push hl
    xor a
    ld [hl-], a
    ei
    rst $38
    call Call_000_3902
    ld [$65b3], sp
    rst $18
    nop
    rst $38
    rst $28
    ld d, a
    ld a, [hl-]
    add b
    rst $38
    ld [de], a
    ret


    and h
    rst $38
    ld a, a
    nop
    rst $38
    add hl, hl
    jp nz, $3c96

    ld e, l
    rst $38
    rst $30
    pop bc
    ld a, a
    inc d

jr_00b_6b5b:
    jp Jump_000_3c69


    cp d
    rst $18
    rst $28
    add d
    rst $38
    ret nz

    ccf
    ldh [rLY], a
    ld a, a
    rst $38
    db $fd
    ld a, a
    ld [hl], b
    ld a, $61
    rst $18
    ld b, c
    pop de
    ld d, c
    inc bc
    db $fd
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    nop
    ld a, l
    rst $38
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    ld c, h
    di
    sub e
    rst $38
    db $ec
    jr nz, jr_00b_6b5b

    ld c, l
    xor [hl]
    ccf
    pop bc
    adc [hl]
    rst $38
    db $fc
    ld [hl+], a
    db $fc
    ld [$bcff], sp
    db $e3
    dec hl
    rst $38
    sbc h
    pop hl
    and b
    xor l
    sbc $3f
    pop hl
    add $ff
    db $f4
    ld [hl], $bc
    dec e
    ld a, a
    sbc c
    ld a, e
    sbc b
    rst $38
    ld a, d
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    ld b, l
    rst $38
    cp e
    dec sp
    rst $00
    ld b, $fe
    db $10
    db $10
    add c
    rst $38
    add c
    jr z, jr_00b_6be8

    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    add a
    rst $38
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    inc b
    rst $38
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    and h
    rst $38
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    db $10
    rst $38
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d

jr_00b_6be8:
    ld c, e
    rst $38
    call z, Call_000_3211
    add h
    adc l
    xor l
    xor l
    ld h, $ff
    ccf
    ret z

    rst $10
    or h
    ei
    ccf
    ld e, b
    ld d, [hl]
    rst $38
    ld l, b
    inc a
    ld hl, $101b
    ld [bc], a
    sbc $41
    rst $38
    cp a
    db $10
    rst $28
    ccf
    ret nz

    pop af
    ld bc, $ff0e
    dec bc
    ld h, a
    sbc h
    call z, $e473
    db $e4
    push bc
    rst $38
    db $fd
    rla
    rst $28
    inc hl
    rst $18
    ldh [rNR34], a
    push af
    rst $38
    rst $08
    cp l
    ld l, e
    ld e, e
    add a
    ret


    cp [hl]
    ld h, h
    rst $38
    sbc a
    pop af
    adc a
    cp [hl]
    ld [hl], c
    bit 6, [hl]
    ld a, [$87fd]
    ld bc, $ac1a
    sub e
    or a
    jp hl


    ld c, c
    halt
    rst $38
    xor e
    or $0e
    pop af
    db $fd
    inc bc
    halt
    adc [hl]
    cp a
    dec e
    ld a, a
    add e
    ld a, [hl]
    jp Jump_00b_4d3e


    nop
    and c
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl+]
    rst $38
    nop
    add c
    ld a, [hl]
    or b
    ld c, h
    db $f4
    ld h, h
    ld e, e
    add c
    nop
    rst $38
    and b
    ld c, l
    rst $38
    nop
    rst $18
    ld b, c
    or $21
    nop
    ldh [$ff5f], a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    cp a
    ld b, b
    sbc [hl]
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    ld h, c
    ld b, l
    ld b, b
    rst $38
    rst $38
    ldh a, [c]
    sbc a
    cp b
    ld l, a
    ld e, b
    rst $10
    or l
    rst $38
    ld a, e
    db $fc
    rlca
    and c
    ld a, a
    adc b
    ld a, a
    and h
    rst $38
    rst $30
    ld [hl], l
    adc l
    jp c, Jump_00b_7557

    ei
    xor d
    ld a, a
    ld [hl], a
    push af
    rlca
    or [hl]
    ld a, $1d
    ld a, a
    nop
    ld e, a
    rst $38
    ld a, d

jr_00b_6ca2:
    rst $38
    sbc a
    cp $c6
    cp l
    sbc c
    cp a
    rst $38
    db $db
    or $d2
    push af
    reti


    sub a
    sub c
    inc l
    rst $38
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $a1bd
    ld a, l
    rst $38
    ld h, c
    ld l, d
    halt
    jp nc, $08ee

    ld c, a
    ld d, h
    rst $38
    call c, $9b1a
    ld [hl], $b6
    daa
    or a
    ld [hl+], a
    rst $38
    or e
    ld e, b
    ret c

    sub a
    rst $18
    ld [bc], a
    and $22
    rst $38
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    db $e4
    db $ed
    ld e, c
    rst $38
    reti


    dec bc
    dec de
    sub $f6
    db $10
    ld h, a
    dec sp
    rst $38
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    dec c
    ld [hl], a
    ld a, [hl+]
    rst $38
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    ld c, h
    or e
    daa
    rst $38
    call c, $e619
    and [hl]
    ld a, c
    ld h, h
    sbc a
    jp z, $35ff

    or h
    db $db
    rst $10
    jr z, jr_00b_6ca2

    ld b, [hl]
    ld [hl], c
    rst $38
    xor e
    db $f4
    ld [$67b9], a
    ld l, e
    add a
    cp e
    rst $18
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    inc bc
    ld d, [hl]
    inc bc
    db $fc
    rst $38
    inc d
    ld hl, sp-$75
    db $f4
    ld a, $eb
    scf
    ret


    cp $03
    ld d, a
    ret nz

    ccf
    or c
    rst $18
    call c, $dd67
    rst $38
    xor e
    ld [hl], $cd
    add b
    ld b, b
    cp a
    ld a, a
    cp a
    cp $21
    dec e
    nop
    add d
    ld a, h
    or l
    ld a, c
    xor e
    ld [hl], e
    rst $38
    inc de
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    inc a
    rst $38
    ld [hl], a
    ld a, b
    jp hl


    or $d7
    xor $af
    sbc $ff
    xor e
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ld b, d
    db $fd
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    cp c
    ei
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @-$1f

    rst $38
    db $fd
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    dec b
    rst $38
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    ld a, e
    rst $38
    ld b, c
    cp $92
    db $fc
    dec c
    ld sp, hl
    inc c
    di
    rst $38
    dec de
    ldh a, [$ff8b]
    or $25
    ld a, [$fc0b]
    rst $38
    and l
    or $26
    xor h
    rst $08
    ei
    xor d
    pop hl
    rst $38
    dec a
    or $cb
    or $35
    cp d
    rra
    ld a, h
    rst $38
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    rst $38
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    rst $38
    cp c
    rst $08
    ldh a, [c]
    sbc l
    rst $00
    cp b
    cp a
    ret nz

    rst $38
    rst $08
    ldh a, [$ff73]
    ld a, h
    ld a, d
    ld a, l
    ld [hl], $39
    rst $38
    ld l, h
    ld l, a
    or b
    or b
    ld l, h
    rst $28
    ld a, b
    cp b
    rst $38
    ld d, c
    rst $28
    xor a
    or b
    and $f9
    adc $f1
    rst $38
    ld c, c
    call $3b32
    dec h
    and $16
    add hl, de
    rst $38
    sbc [hl]
    pop hl
    scf
    ld hl, sp+$6f
    add sp, $2f
    add sp, -$01
    ld c, d
    ld [hl], c
    db $dd
    and $3f
    ld b, h
    adc [hl]
    di
    rst $38
    and [hl]
    ei
    ld h, e

Jump_00b_6dff:
    ld a, l
    ret


    xor $7b
    ld a, e
    rst $38
    ld c, h
    or e
    or c
    ld c, [hl]
    ld l, h
    or e
    or l
    adc $ff
    jp c, Jump_000_2937

    reti


    sbc a
    sub b
    pop af
    ld c, $ff
    sbc l
    ld [hl], e
    ld e, e
    rst $30
    cp e
    ld h, a
    ld [hl], d
    adc $ff
    rst $20
    ld e, a
    add $b6
    adc l
    ld l, l
    ld [de], a
    sub d
    rst $38
    ld a, l
    and h
    cp d
    jp $af54


    ld c, a
    and b
    rst $38
    ld l, d
    or a
    cp b
    push bc
    daa
    ld a, [$fd0a]
    rst $38
    ld l, d
    or l
    sbc $63
    and d
    ld e, l
    and $85
    rst $38
    push de
    ld l, e
    sbc h
    ld h, a
    pop hl
    rra
    ld [$efff], sp
    sub a
    ld h, a
    rst $38
    nop
    ldh [$ff71], a
    ld a, a
    jp nz, Jump_00b_7e01

    ld b, c
    db $10
    sub a
    ld l, a
    ld b, c
    cp [hl]
    rst $38
    nop
    ldh [$ff71], a
    db $fc
    ld b, b
    dec l
    ld h, b
    dec l
    nop
    ld b, c
    ld a, $af
    sbc [hl]
    pop de
    rst $38
    adc $ef
    ldh [$ff75], a
    ldh a, [hMapSizeH]
    ld a, b
    ld e, l
    rst $38
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, $ff29

    ret c

    add hl, hl
    ret c

    dec l
    call c, $da2b
    dec hl
    rst $38
    jp c, $dc2d

    dec l
    call c, Call_000_2baf
    xor a
    rst $38
    dec hl
    adc a
    dec bc
    rst $18
    ld e, e
    rst $18
    ld e, e
    sbc a
    rst $38
    dec de
    rst $08
    ld c, e
    sbc a
    dec de
    ret nz

    ld a, a
    sub d
    rst $38
    ld a, a
    ld c, b
    cp a
    ldh [$ff5f], a
    or c
    rra
    xor h
    rst $38
    rst $18
    ld b, c
    cp a
    ret z

    ccf
    and h
    ld [hl], a
    and l
    rst $38
    dec l
    ld c, d

jr_00b_6eb7:
    cp a
    push hl
    ld c, a
    or d
    rra
    and l
    rra
    rst $10
    halt
    cp [hl]
    sbc l
    ld a, a
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

jr_00b_6edf:
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

jr_00b_6ef0:
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
    ccf
    nop
    ld b, b
    rst $38
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00b_6eb7

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00b_6f17

    rst $38
    rst $38

jr_00b_6f17:
    ld sp, $c300
    ld [bc], a
    db $fc
    rst $38
    nop
    ld [bc], a
    nop
    db $fd
    cp $0d
    cp $f5
    di
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    xor a
    jr nc, jr_00b_6edf

    jr nc, jr_00b_6ef0

    cp a
    ccf
    ld b, b
    ccf
    ccf
    nop
    ld h, e
    ld bc, $fff5
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    db $fc
    db $fc
    inc b
    ld bc, $0067
    ld hl, sp+$07
    jp nz, $bc43

    ld a, a
    ld l, a
    jp nz, $a23f

    ld h, e
    ld hl, $aa00
    ld l, e
    ld hl, $ff00
    xor [hl]
    ld l, a
    cp [hl]
    ld a, a
    or h
    ld a, a
    add b
    ld a, a
    adc a
    add c
    ld a, [hl]
    cp $80
    dec l
    add hl, bc
    or b
    rlca
    ld c, d
    nop
    dec l
    rst $38
    xor h
    dec h
    and h
    daa
    and [hl]
    ld l, e
    ld [$ff5b], a
    jp c, $d051

    ld d, l
    call nc, $d455
    cp a
    ld a, a
    ret nz

    rst $38
    add b
    ld [$5595], a
    xor d
    jr nc, jr_00b_6f94

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_00b_6f94:
    dec bc
    sub b
    dec bc
    rst $38
    db $fd
    inc bc
    rst $38
    ld bc, $29d7
    xor d
    ld d, l
    xor $30
    inc c
    cp $01
    cp $63
    inc c
    dec c
    nop
    ld [de], a
    rst $38
    dec c
    jr nz, jr_00b_6fce

    ld e, $01
    inc b
    inc bc
    ld [$07fd], sp
    ld hl, $d810
    nop
    inc h
    ret c

    ld [bc], a
    db $fc
    cp a
    inc a
    ret nz

    db $10
    ldh [$ff88], a
    ld [hl], b
    inc bc
    ld b, $6f
    ld e, a
    ldh [$ff58], a
    ret nc

    ld e, a
    rst $10

jr_00b_6fce:
    jr nz, jr_00b_6fd0

jr_00b_6fd0:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_00b_6fd8

jr_00b_6fd8:
    inc b
    ld [$0afb], sp
    dec de
    ld a, [bc]
    pop de
    rst $38
    ret nz

    push de
    call nz, $04f5
    ld l, $a6
    ld c, [hl]
    rst $38
    add $5e
    sub $2e
    and [hl]
    ld l, $a6
    ld c, $ff
    add [hl]
    ld e, [hl]
    sub $5e
    sub $d3
    jp nz, $f7d9

    ret z

    push de
    call nz, Call_000_01c1
    push de
    call nz, $cadb
    cp a
    db $db
    jp z, $d829

    cpl
    sbc $27
    nop
    rra
    rst $28
    ldh [$ff3d], a
    db $fc
    add hl, hl
    ld [hl+], a
    nop
    add hl, bc
    db $fc
    ld c, e
    cp $02
    add hl, bc
    ld a, [hl]
    or $76
    cp $5e
    or $0e
    cp $20
    nop
    ld l, $f6
    rrca
    rst $30
    rst $38
    nop
    rst $10
    xor e
    adc $d3
    jr nz, jr_00b_7031

jr_00b_7031:
    push de
    jr nz, jr_00b_7034

jr_00b_7034:
    pop de
    jr nz, jr_00b_7037

jr_00b_7037:
    rst $38
    rst $38
    nop
    cp a
    dec sp
    rst $38
    ld a, e
    rst $28
    ld l, e
    rst $38
    db $fd
    ld a, e
    inc h
    nop
    rlca
    and h
    adc e
    push hl
    jp c, $ff6e

    ld d, c
    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_00b_7082

    ret nc

    rst $38
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00b_7085

    nop
    rst $38
    nop
    and c
    ld e, a
    pop bc
    db $fd
    ccf
    ld c, e
    nop
    pop de
    cpl
    xor b
    ld d, a
    call nc, $ef2b
    rst $38
    nop
    add c
    ld a, [hl]
    pop bc
    inc d
    add hl, bc
    ld b, $08
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07

jr_00b_7082:
    ld [bc], a
    rlca
    ei

jr_00b_7085:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_00b_70e3

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_00b_70ca

    nop
    ld c, b
    ld c, b
    inc d
    inc d
    add c
    rst $38
    add c
    dec b
    ld b, $2b
    inc l
    ld b, [hl]
    ld c, c
    inc l
    rst $38
    inc sp
    sub c
    xor a
    sbc d
    sbc e
    cpl
    jr nc, @+$7e

    rst $38
    add e
    rst $38
    nop
    ret nz

    ccf
    add hl, bc
    rst $38
    dec d
    rst $30
    cp $4c
    di
    ld bc, $3c19
    jp Jump_00b_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_00b_70ca:
    add sp, $17
    inc d
    rst $38
    rst $38
    ld l, b
    add sp, -$0c
    inc c
    ld e, [hl]
    pop hl
    db $e3
    inc e
    rst $38
    nop
    rst $38
    ld [hl], d
    rst $38
    rra
    rst $38
    add $ff
    rst $38
    add d
    add d

jr_00b_70e3:
    jr @+$1a

    and c
    and c
    and h
    ld h, h
    rst $38
    ld e, b
    cp b
    dec l
    db $dd
    sbc b
    add sp, -$14
    db $f4
    ld d, a
    nop
    nop
    inc b
    stop
    ld [$0010], sp
    db $10
    stop
    rst $38
    nop
    nop
    ld l, e
    sub a
    ld h, a
    sbc c
    ld h, d
    sbc l
    rst $38
    ld d, d
    xor l
    ld l, e
    sub l
    or a
    ret


    or c
    adc $ff
    ld e, d
    ld h, a
    inc b
    db $fc
    ld [hl-], a
    db $fd
    ccf
    db $fc
    rst $38
    rst $18
    inc a
    inc hl
    call c, $fce3
    scf
    db $ec
    rst $18
    rst $10
    inc l
    ld h, [hl]
    ld a, [hl]
    db $10
    ld h, b
    inc c
    rst $38
    and l
    ld a, [$2730]
    sbc d
    add c
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    add c
    rst $30
    dec h
    nop
    ld h, l
    jr z, jr_00b_715d

    nop
    rra
    nop
    rra
    nop
    and l
    nop
    dec c
    rst $38
    nop
    ld a, [bc]
    dec b
    db $10
    rrca
    inc d
    dec bc
    ld c, $fc
    jr nz, jr_00b_7172

    inc bc
    jr nz, @+$2a

    ret nc

    inc b
    ld hl, sp+$14
    add sp, -$03
    jr c, @+$22

jr_00b_715d:
    jr nz, jr_00b_71d3

    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf

jr_00b_7164:
    rst $38
    jp z, Jump_00b_44bd

    cp e
    swap a
    db $e4
    rra
    rst $38
    cp e
    ld c, a
    ld [hl+], a

jr_00b_7171:
    rst $18

jr_00b_7172:
    adc b
    ld a, a
    dec d
    rst $38
    rst $38
    ld l, e
    rst $38
    or a
    ei
    ldh [c], a
    cp $f5
    db $ed
    rst $38
    sbc $ee
    halt
    rst $38
    push de
    db $dd
    sub $de
    rst $38
    sub [hl]
    sbc [hl]
    rla
    rra
    sub l
    sbc l
    rla
    rra
    rst $38
    dec d
    dec e
    ld [hl], c
    rst $38
    and h
    ld h, a
    sbc d
    ei
    rst $38
    ld e, h
    ld a, h
    inc d
    inc [hl]
    ld a, [hl-]
    ld a, [hl+]
    ld d, $0e
    rst $38
    dec e
    dec d
    ld [hl], l
    ld sp, hl
    halt
    ld a, [$fc32]
    rst $38
    sub e
    db $fd
    ld [bc], a
    ld a, l
    ld d, e
    ld l, h
    daa
    jr c, jr_00b_7171

    dec e
    ld [de], a
    pop hl
    rlca
    jr jr_00b_71d4

    inc a
    stop
    jr @-$01

    jr jr_00b_7164

    ld [$b1af], sp
    ld d, a
    ld e, b
    xor l
    xor [hl]
    rst $38
    ld a, [bc]
    dec bc
    add l
    add l
    ld e, b
    ld e, b
    adc b
    adc b

jr_00b_71d3:
    rst $38

jr_00b_71d4:
    inc hl
    inc hl
    cp c
    ld b, [hl]
    adc a
    ld [hl], b
    jp $ff3c


    ld a, [$bf05]
    ret nz

    xor a
    or b
    ld l, [hl]
    ld l, a
    ld a, e
    add hl, bc
    add hl, bc
    inc bc
    cpl
    ld c, $f1
    inc e
    db $e3
    and d
    cpl
    cp $f0
    scf
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $02
    ld b, b
    nop
    ldh [$ffc0], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    pop hl
    rra
    ld a, a
    ld [$0507], sp
    ld [bc], a
    inc b
    inc bc
    dec b
    jr nz, jr_00b_7234

    rst $28
    ld b, $00
    ld [$21f0], sp
    nop
    ld d, b
    and b
    sub b
    ei
    ld h, b
    ret nc

    ld [bc], a
    jr nz, jr_00b_71d4

    ld c, a
    db $ed
    inc de
    xor $ff
    ld de, $46b9
    adc d
    ld [hl], a
    rst $00
    add hl, sp
    pop hl
    rst $38
    ld e, $76

jr_00b_7234:
    adc a
    db $ed
    db $dd
    ld a, [hl]
    sbc $1d
    rst $38
    db $fd
    sub d

Jump_00b_723d:
    ld [hl], d
    rst $20
    rra
    cp h
    jp $ff03


    db $fc
    sbc h
    ld a, a
    dec d
    dec e
    sub b
    sbc h
    db $10
    cp a
    inc e
    jr jr_00b_7264

    jr z, jr_00b_7286

    set 4, c
    jr @+$01

    rst $38
    add l
    adc c
    adc [hl]
    adc d
    add d
    add [hl]
    inc b
    rlca
    rst $38
    rla
    jr jr_00b_7280

    db $e3

jr_00b_7264:
    ldh [$ff1f], a
    add hl, de
    cp $ff
    dec l
    ld [hl-], a
    ld d, a
    ld l, b
    rst $30
    adc b
    sbc l
    ld h, d
    rst $38
    ld d, c
    xor $e3
    sbc h
    add a
    ld a, b
    ld l, [hl]
    pop af
    cp $2d
    ld [$3f20], sp
    ld l, h

jr_00b_7280:
    sbc a
    call c, $db3f
    rst $38
    inc a

jr_00b_7286:
    call nz, $e73b
    sbc a
    db $ec
    scf
    db $eb
    rst $38
    inc [hl]
    sub $e8
    and $98
    ld b, [hl]
    cp b
    ld c, d
    rst $38
    or h
    sub $a8
    db $ec
    sub d
    adc [hl]
    ld [hl], d
    ld e, d
    rst $38
    and $ff
    nop
    sbc a
    sbc a
    ld l, h
    ld l, h
    jp nz, $c2fd

    ld b, h
    ld b, a
    rst $38
    ld sp, hl
    rlca
    ld a, [hl]
    halt
    adc [hl]
    rst $28
    add [hl]
    xor $e6
    cp $40
    ld [hl-], a
    cp $06
    ld c, $bf
    or $40
    rst $38
    sub d
    rst $38
    ld [$4900], sp

jr_00b_72c5:
    ld de, $fe7f
    adc a
    ld sp, hl
    ld l, $f4
    db $10
    db $e3
    dec b
    ld bc, $91ff
    ld a, a
    db $ec
    sbc a
    ld d, c

jr_00b_72d6:
    xor a
    cp b
    ld d, a
    rst $38
    and h
    rst $30
    dec h
    xor l
    jp z, $a5ff

    rst $28
    rst $38
    inc sp

jr_00b_72e4:
    cp $c6
    ldh a, [$ff3a]
    or c
    dec d
    ld h, [hl]
    cp $05
    ld bc, $7fb2
    push hl
    sub a
    sub $6e
    cp l
    dec a
    ld d, a
    push bc
    rra
    inc c
    inc bc

jr_00b_72fb:
    ld a, [bc]
    dec b
    and c
    jr nc, jr_00b_72c5

    rra
    rst $08
    jr jr_00b_72e4

    jr z, jr_00b_72d6

    pop bc
    db $10
    inc bc
    ld a, [hl+]
    ld [hl], d
    adc l
    rst $38
    ld e, e
    and l
    ld b, a
    cp c
    ld h, c
    sbc [hl]
    halt
    adc a
    rst $38
    inc bc
    rst $38
    jr nc, @+$01

    inc c
    rst $08
    pop de
    inc sp
    rst $38
    and l
    rst $18
    ldh [rIE], a
    inc l
    rst $38
    adc h
    ld a, h
    rst $10
    rst $20
    rst $38
    rst $20
    ldh [$ff50], a
    add c
    ld [hl], b
    ld d, c
    add c

jr_00b_7331:
    add c
    rst $38
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ldh [rIE], a
    inc c
    rst $38
    rst $38
    jr nc, jr_00b_7331

    xor e
    db $ec
    and h
    ei
    rlca
    rst $38
    rst $38
    inc [hl]
    rst $38
    ld de, $d61e
    add sp, -$19
    sbc c
    rst $38
    ld b, [hl]
    cp b
    ld c, [hl]
    or b
    jp c, $e2a4

    sbc h
    rst $28
    add a
    ld a, c
    ld l, [hl]
    ldh a, [$ff2d]
    jr jr_00b_72fb

    ld h, d
    pop af
    rst $38
    ld c, $c3
    inc a
    ld e, a
    and b
    db $fd
    inc bc
    push af
    rst $38
    dec c
    ld [hl], a
    rst $30
    xor b
    xor b
    db $f4
    adc h
    ld [$1aff], a
    or [hl]
    halt
    ld d, l
    push de
    or d
    or d
    ld d, l
    rst $38
    ld d, l
    inc l
    inc l
    add d
    add d
    ccf
    ldh [$ffdf], a
    rst $38
    rst $08
    ret nc

    ret nz

    rst $10
    rst $00
    reti


    ret


    ret nc

    sbc a
    rst $08
    rst $18
    ret nz

    pop de
    adc $63
    ld e, b
    ld h, a
    nop
    ld d, l
    rst $38
    xor $af
    pop bc
    ld l, $d4
    ld d, $e5
    add hl, de
    rst $28
    or $8e
    ld sp, hl
    ld hl, CheckCurrentMoney
    ld c, b
    sub a
    ld a, $ff
    ld c, e
    call nc, Call_00b_68ab
    or a
    pop de
    ld l, a
    db $ec
    db $fd
    rra
    ld bc, $b601
    db $ec
    dec l
    add e
    rst $28
    push de
    rst $38
    cp d
    db $ed
    add hl, sp
    or $c7
    pop af
    ld [hl], $be
    rst $38
    dec e
    ld a, a
    ld c, h
    sub a
    cp l
    ret


    ld d, [hl]
    xor e
    ccf
    ld l, l
    or a
    jp nc, $e56f

    rla
    ld bc, $c101
    ccf
    ccf
    add hl, bc
    ld b, $04
    inc bc
    inc b
    inc bc
    ld hl, $0140
    jr nz, @+$01

    ld c, b
    or b
    ld c, b
    or b
    sub b
    ld h, b
    sub b
    ld h, b
    ld bc, $0270
    ld b, b
    nop
    nop
    add e
    ld [hl], h
    nop
    nop
    add l
    ld [hl], h
    nop
    nop
    add a
    ld [hl], h
    nop
    nop
    adc c
    ld [hl], h
    nop
    nop
    adc e
    ld [hl], h
    nop
    nop
    adc a
    ld [hl], h
    nop
    nop
    sub e
    ld [hl], h
    nop
    nop
    sub a
    ld [hl], h
    nop
    nop
    sbc e
    ld [hl], h
    nop
    nop
    and c
    ld [hl], h
    nop
    nop
    and a
    ld [hl], h
    nop
    nop
    xor l
    ld [hl], h
    nop
    nop
    add a
    halt
    nop
    nop
    adc c
    halt
    nop
    nop
    adc e
    halt
    nop
    nop
    adc l
    halt
    nop
    nop
    adc a
    halt
    nop
    nop
    sub e
    halt
    nop
    nop
    sub a
    halt
    nop
    nop
    sbc e
    halt
    nop
    nop
    sbc a
    halt
    nop
    nop
    and l
    halt
    nop
    nop
    xor e
    halt
    nop
    nop
    or c
    halt
    nop
    nop
    sub e
    ld a, b
    nop
    nop
    sub l
    ld a, b
    nop
    nop
    sub a
    ld a, b
    nop
    nop
    sbc c
    ld a, b
    nop
    nop
    sbc e
    ld a, b
    nop
    nop
    sbc a
    ld a, b
    nop
    nop
    and e
    ld a, b
    nop
    nop
    and a
    ld a, b
    nop
    nop
    xor e
    ld a, b
    nop
    nop
    or c
    ld a, b
    nop
    nop
    or a
    ld a, b
    nop
    nop
    cp l
    ld a, b
    db $f4
    ld [hl], l
    or e
    ld [hl], h
    inc [hl]
    ld [hl], l
    ld e, $76
    jp z, $df75

    ld [hl], l
    call z, $e574
    ld [hl], h
    ld c, l
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    inc sp
    halt
    ld c, b
    halt
    add hl, bc
    halt
    or l
    ld [hl], l
    db $f4
    ld [hl], l
    cp $74
    dec de
    ld [hl], l
    or e
    ld [hl], h
    ld a, a
    ld [hl], l
    sbc h
    ld [hl], l
    inc [hl]
    ld [hl], l
    ld e, l
    halt
    ld [hl], d
    halt
    add a
    halt
    nop
    inc b
    ld [hl+], a
    nop
    nop
    db $fc
    ld hl, $0000
    db $f4
    jr nz, jr_00b_74bf

jr_00b_74bf:
    ld hl, sp+$04
    rra
    nop
    ld hl, sp-$04
    ld e, $00
    ld hl, sp-$0c
    dec e
    nop
    add b
    nop

jr_00b_74cd:
    inc b
    jr z, jr_00b_74d0

jr_00b_74d0:
    nop
    db $fc
    daa
    nop
    nop
    db $f4
    ld h, $00
    ld hl, sp+$04
    dec h
    nop
    ld hl, sp-$04
    inc h
    nop
    ld hl, sp-$0c
    inc hl
    nop
    add b
    ld hl, sp+$04
    dec h
    nop
    ld hl, sp-$04
    ld e, $00
    ld hl, sp-$0c
    dec e
    nop
    nop
    inc b
    dec hl
    nop
    nop
    db $fc
    ld a, [hl+]
    nop
    nop
    db $f4
    add hl, hl
    nop
    add b
    nop

jr_00b_74ff:
    inc b
    ld [hl-], a
    nop
    nop
    db $fc
    ld sp, $0000
    db $f4
    jr nc, jr_00b_750a

jr_00b_750a:
    ld hl, sp+$04
    cpl
    nop
    ld hl, sp-$04
    ld l, $00
    ld hl, sp-$0c
    dec l
    nop
    ldh a, [$fff5]
    inc l
    nop
    add b
    nop

jr_00b_751c:
    inc b
    jr c, jr_00b_751f

jr_00b_751f:
    nop
    db $fc
    scf
    nop
    nop
    db $f4
    ld [hl], $00
    ld hl, sp+$04
    dec [hl]
    nop
    ld hl, sp-$04
    inc [hl]
    nop
    ld hl, sp-$0c
    inc sp
    nop
    add b
    nop

jr_00b_7535:
    db $f4
    ld [hl+], a
    jr nz, jr_00b_7539

jr_00b_7539:
    db $fc
    ld hl, $0020

jr_00b_753d:
    inc b
    jr nz, jr_00b_7560

    ld hl, sp-$0c
    rra
    jr nz, jr_00b_753d

    db $fc
    ld e, $20
    ld hl, sp+$04
    dec e
    jr nz, jr_00b_74cd

    nop
    db $f4
    jr z, jr_00b_7571

    nop
    db $fc
    daa
    jr nz, jr_00b_7556

jr_00b_7556:
    inc b

Jump_00b_7557:
    ld h, $20
    ld hl, sp-$0c
    dec h
    jr nz, jr_00b_7556

    db $fc
    inc h

jr_00b_7560:
    jr nz, @-$06

    inc b

jr_00b_7563:
    inc hl
    jr nz, @-$7e

    ld hl, sp-$0c
    dec h
    jr nz, jr_00b_7563

    db $fc
    ld e, $20
    ld hl, sp+$04
    dec e

jr_00b_7571:
    jr nz, jr_00b_7573

jr_00b_7573:
    db $f4

jr_00b_7574:
    dec hl
    jr nz, jr_00b_7577

jr_00b_7577:
    db $fc
    ld a, [hl+]
    jr nz, jr_00b_757b

jr_00b_757b:
    inc b
    add hl, hl
    jr nz, jr_00b_74ff

    nop
    db $f4
    ld [hl-], a
    jr nz, jr_00b_7584

jr_00b_7584:
    db $fc
    ld sp, $0020

jr_00b_7588:
    inc b
    jr nc, jr_00b_75ab

    ld hl, sp-$0c
    cpl
    jr nz, jr_00b_7588

    db $fc
    ld l, $20
    ld hl, sp+$04
    dec l
    jr nz, jr_00b_7588

    inc bc
    inc l
    jr nz, jr_00b_751c

    nop
    db $f4
    jr c, jr_00b_75c0

    nop
    db $fc
    scf
    jr nz, jr_00b_75a5

jr_00b_75a5:
    inc b
    ld [hl], $20
    ld hl, sp-$0c
    dec [hl]

jr_00b_75ab:
    jr nz, jr_00b_75a5

    db $fc
    inc [hl]
    jr nz, @-$06

    inc b
    inc sp
    jr nz, jr_00b_7535

    nop
    nop
    inc a
    jr nz, jr_00b_75ba

jr_00b_75ba:
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec sp

jr_00b_75c0:
    nop
    ld hl, sp-$08
    ld a, [hl-]
    nop
    ldh a, [$fff9]
    add hl, sp
    nop
    add b
    nop
    nop
    ccf
    nop
    nop
    ld hl, sp+$3e
    nop
    ld hl, sp+$00
    dec a
    nop
    ldh a, [$fff9]
    add hl, sp
    nop
    ld hl, sp-$08

jr_00b_75dc:
    ld a, [hl-]

jr_00b_75dd:
    nop
    add b
    nop
    ld hl, sp+$3f
    jr nz, jr_00b_75e4

jr_00b_75e4:
    nop
    ld a, $20
    ld hl, sp-$08
    dec a
    jr nz, jr_00b_75dc

    rst $38
    add hl, sp
    jr nz, @-$06

    nop
    ld a, [hl-]
    jr nz, jr_00b_7574

    ld bc, $4300
    jr nz, @+$03

    ld hl, sp+$43
    nop
    ld sp, hl
    nop
    ld b, d
    nop
    ld sp, hl
    ld hl, sp+$41
    nop
    pop af
    ld a, [$0040]
    add b
    nop
    nop
    ld b, [hl]
    jr nz, jr_00b_760e

jr_00b_760e:
    ld hl, sp+$46
    nop
    ld hl, sp+$00
    ld b, l
    nop
    ld hl, sp-$08
    ld b, h
    nop
    ldh a, [$fff9]
    add hl, sp
    nop
    add b
    nop
    nop
    ld c, e
    nop
    nop
    ld hl, sp+$4a
    nop
    ld hl, sp+$00
    ld c, c
    nop
    ld hl, sp-$08
    ld c, b
    nop
    ldh a, [$fffc]
    ld b, a
    nop
    add b
    nop
    nop
    ld c, a
    nop
    nop
    ld hl, sp+$4e
    nop
    ld hl, sp+$00
    ld c, l
    nop
    ld hl, sp-$08
    ld c, h
    nop
    ldh a, [$fffc]
    ld b, a
    nop
    add b
    nop

jr_00b_7649:
    ld hl, sp+$4f
    jr nz, jr_00b_764d

jr_00b_764d:
    nop
    ld c, [hl]
    jr nz, jr_00b_7649

    ld hl, sp+$4d
    jr nz, jr_00b_764d

    nop
    ld c, h
    jr nz, jr_00b_7649

    db $fc
    ld b, a
    jr nz, jr_00b_75dd

    ld bc, $5500
    nop
    ld bc, $54f8
    nop
    pop af
    db $fc
    ld b, a
    nop
    ld sp, hl
    nop
    ld d, e
    nop
    ld sp, hl
    ld hl, sp+$52
    nop
    add b
    nop
    nop
    ld d, a
    nop
    nop
    ld hl, sp+$56
    nop
    ld hl, sp+$00
    ld c, c
    nop
    ld hl, sp-$08
    ld c, b
    nop
    ldh a, [$fffc]
    ld b, a
    nop
    add b
    inc [hl]
    ld [hl], a
    or a
    halt
    ld d, $78
    xor l
    ld [hl], a
    ld c, l
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [bc], a
    ld [hl], a
    dec de
    ld [hl], a
    ld h, c
    ld a, b
    ld a, d
    ld a, b
    jp nz, $d777

    ld [hl], a
    sub h
    ld [hl], a
    ld a, a
    ld [hl], a
    inc [hl]
    ld [hl], a
    ret nc

    halt
    jp hl


    halt
    or a
    halt
    cpl
    ld a, b
    ld c, b
    ld a, b
    ld d, $78
    db $ec
    ld [hl], a
    ld bc, $ad78
    ld [hl], a
    ld bc, $2203
    nop
    ld bc, $21fb
    nop
    ld sp, hl
    inc bc
    jr nz, jr_00b_76c3

jr_00b_76c3:
    ld sp, hl
    ei
    rra
    nop
    ld sp, hl
    di
    ld e, $00
    pop af
    or $1d
    nop
    add b
    ld bc, $2800
    nop
    ld bc, $27f8
    nop
    ld sp, hl
    inc b
    ld h, $00
    ld sp, hl
    db $fc
    dec h
    nop
    ld sp, hl
    db $f4
    inc h
    nop
    pop af
    or $23
    nop
    add b
    nop
    inc bc
    dec l
    nop
    nop
    ei
    inc l
    nop
    ldh a, [$fff6]
    dec e
    nop
    ld hl, sp+$05
    dec hl
    nop
    ld hl, sp-$03
    ld a, [hl+]
    nop
    ld hl, sp-$0b
    add hl, hl
    nop
    add b
    ld [bc], a
    ld [bc], a
    inc sp
    nop
    ld [bc], a
    ld a, [$0032]
    ld a, [$3105]
    nop
    ld a, [$30fd]
    nop
    ei
    push af

jr_00b_7714:
    cpl
    nop
    di
    or $2e
    nop
    add b
    ld [bc], a
    inc bc
    scf
    nop
    ld [bc], a
    ei
    ld [hl], $00
    ld a, [$1ef3]
    nop
    ld a, [$3503]
    nop
    ld a, [$34fb]
    nop
    ldh a, [c]
    or $2e
    nop
    add b
    nop
    nop
    inc a
    jr nz, jr_00b_7739

jr_00b_7739:
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec sp
    nop
    ld hl, sp-$08

jr_00b_7742:
    ld a, [hl-]
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_774c

jr_00b_774c:
    add b
    ldh a, [$fff8]
    add hl, sp
    jr nz, jr_00b_7742

    nop
    jr c, jr_00b_7775

    nop
    nop
    ld b, b
    nop
    nop
    ld hl, sp+$3f
    nop
    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    add b
    nop

jr_00b_7767:
    ld hl, sp+$40
    jr nz, jr_00b_776b

jr_00b_776b:
    nop
    ccf
    jr nz, jr_00b_7767

    nop
    dec sp
    nop
    ld hl, sp-$08
    ld a, [hl-]

jr_00b_7775:
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_777e

jr_00b_777e:
    add b
    nop
    nop
    ld b, h
    jr nz, jr_00b_7784

jr_00b_7784:
    ld hl, sp+$44
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [$fffc]
    ld b, c
    jr nz, jr_00b_7714

    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    nop
    nop
    ld b, l
    jr nz, jr_00b_77a1

jr_00b_77a1:
    ld hl, sp+$45
    nop
    ldh a, [$fff8]
    add hl, sp
    jr nz, @-$0e

    nop
    jr c, @+$22

    add b
    inc bc
    nop

jr_00b_77af:
    ld c, d
    nop
    inc bc
    ld hl, sp+$49
    nop
    ei
    nop
    ld c, b
    nop
    ei
    ld hl, sp+$47
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ldh a, [c]
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    nop

jr_00b_77c8:
    ld c, a
    nop
    ld [bc], a
    ld hl, sp+$4e
    nop
    ld a, [$4d00]
    nop
    ld a, [$4cf8]
    nop
    add b
    ld [bc], a
    ld hl, sp+$4f

jr_00b_77da:
    jr nz, jr_00b_77de

    nop
    ld c, [hl]

jr_00b_77de:
    jr nz, jr_00b_77da

    nop

jr_00b_77e1:
    ld d, c
    nop
    ld a, [$50f8]
    nop
    ldh a, [c]
    db $fc
    ld c, e
    nop
    add b
    inc b
    nop
    ld d, l
    nop
    inc b
    ld hl, sp+$54
    nop
    db $fc
    nop
    ld d, e
    nop
    db $fc
    ld hl, sp+$52
    nop
    db $f4
    db $fc
    ld c, e
    nop
    add b
    inc bc
    nop
    ld e, c
    nop
    inc bc
    ld hl, sp+$58
    nop
    ei
    nop
    ld d, a
    nop
    ei
    ld hl, sp+$56
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ld bc, $22f5
    jr nz, jr_00b_781c

    db $fd

jr_00b_781c:
    ld hl, $f920
    push af

jr_00b_7820:
    jr nz, jr_00b_7842

    ld sp, hl
    db $fd
    rra
    jr nz, jr_00b_7820

    dec b
    ld e, $20
    pop af
    ld [bc], a
    dec e
    jr nz, jr_00b_77af

    ld bc, $28f8
    jr nz, jr_00b_7835

    nop

jr_00b_7835:
    daa
    jr nz, @-$05

    db $f4

jr_00b_7839:
    ld h, $20
    ld sp, hl
    db $fc
    dec h
    jr nz, jr_00b_7839

    inc b

jr_00b_7841:
    inc h

jr_00b_7842:
    jr nz, jr_00b_7835

    ld [bc], a
    inc hl
    jr nz, jr_00b_77c8

    nop
    push af
    dec l
    jr nz, jr_00b_784d

jr_00b_784d:
    db $fd
    inc l
    jr nz, jr_00b_7841

jr_00b_7851:
    ld [bc], a
    dec e
    jr nz, jr_00b_784d

jr_00b_7855:
    di
    dec hl
    jr nz, jr_00b_7851

    ei
    ld a, [hl+]
    jr nz, jr_00b_7855

    inc bc
    add hl, hl
    jr nz, jr_00b_77e1

    ld [bc], a
    or $33

jr_00b_7864:
    jr nz, jr_00b_7868

    cp $32

jr_00b_7868:
    jr nz, jr_00b_7864

    di
    ld sp, $fa20
    ei
    jr nc, @+$22

    ei
    inc bc
    cpl
    jr nz, @-$0b

    ld [bc], a
    ld l, $20
    add b
    ld [bc], a
    push af
    scf
    jr nz, @+$04

    db $fd
    ld [hl], $20
    ld a, [$1e05]

jr_00b_7885:
    jr nz, @-$04

    push af
    dec [hl]
    jr nz, jr_00b_7885

    db $fd
    inc [hl]
    jr nz, @-$0c

    ld [bc], a
    ld l, $20
    add b
    ld b, b
    ld a, c
    jp Jump_000_2278


    ld a, d
    cp c
    ld a, c
    ld e, c
    ld a, c
    ld [hl], d
    ld a, c
    ld c, $79
    daa
    ld a, c
    ld l, l
    ld a, d
    add [hl]
    ld a, d
    adc $79
    db $e3
    ld a, c
    and b
    ld a, c
    adc e
    ld a, c
    ld b, b
    ld a, c
    call c, $f578
    ld a, b
    jp $3b78


    ld a, d
    ld d, h
    ld a, d
    ld [hl+], a
    ld a, d
    ld hl, sp+$79
    dec c
    ld a, d
    cp c
    ld a, c
    ld bc, $2203
    nop
    ld bc, $21fb
    nop
    ld sp, hl
    inc bc
    jr nz, jr_00b_78cf

jr_00b_78cf:
    ld sp, hl
    ei
    rra
    nop
    ld sp, hl
    di
    ld e, $00
    pop af
    or $1d
    nop
    add b
    ld bc, $2800
    nop
    ld bc, $27f8
    nop
    ld sp, hl
    inc b
    ld h, $00
    ld sp, hl
    db $fc
    dec h
    nop
    ld sp, hl
    db $f4
    inc h
    nop
    pop af
    or $23
    nop
    add b
    nop
    inc bc
    dec l
    nop
    nop
    ei
    inc l
    nop
    ldh a, [$fff6]
    dec e
    nop
    ld hl, sp+$05
    dec hl
    nop
    ld hl, sp-$03
    ld a, [hl+]
    nop
    ld hl, sp-$0b
    add hl, hl
    nop
    add b
    ld [bc], a
    ld [bc], a
    inc sp
    nop
    ld [bc], a
    ld a, [$0032]
    ld a, [$3105]
    nop
    ld a, [$30fd]
    nop
    ei
    push af

jr_00b_7920:
    cpl
    nop
    di
    or $2e
    nop
    add b
    ld [bc], a
    inc bc
    scf
    nop
    ld [bc], a
    ei
    ld [hl], $00
    ld a, [$1ef3]
    nop
    ld a, [$3503]
    nop
    ld a, [$34fb]
    nop
    ldh a, [c]
    or $2e
    nop
    add b
    nop
    nop
    inc a
    jr nz, jr_00b_7945

jr_00b_7945:
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec sp
    nop
    ld hl, sp-$08

jr_00b_794e:
    ld a, [hl-]
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_7958

jr_00b_7958:
    add b
    ldh a, [$fff8]
    add hl, sp
    jr nz, jr_00b_794e

    nop
    jr c, jr_00b_7981

    nop
    nop
    ld b, b
    nop
    nop
    ld hl, sp+$3f
    nop
    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    add b
    nop

jr_00b_7973:
    ld hl, sp+$40
    jr nz, jr_00b_7977

jr_00b_7977:
    nop
    ccf
    jr nz, jr_00b_7973

    nop
    dec sp
    nop
    ld hl, sp-$08
    ld a, [hl-]

jr_00b_7981:
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    ldh a, [$fff8]
    jr c, jr_00b_798a

jr_00b_798a:
    add b
    nop
    nop
    ld b, h
    jr nz, jr_00b_7990

jr_00b_7990:
    ld hl, sp+$44
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ldh a, [$fffc]
    ld b, c
    jr nz, jr_00b_7920

    ld hl, sp+$00
    ld a, $00
    ld hl, sp-$08
    dec a
    nop
    nop
    nop
    ld b, l
    jr nz, jr_00b_79ad

jr_00b_79ad:
    ld hl, sp+$45
    nop
    ldh a, [$fff8]
    add hl, sp
    jr nz, @-$0e

    nop
    jr c, @+$22

    add b
    inc bc
    nop

jr_00b_79bb:
    ld c, d
    nop
    inc bc
    ld hl, sp+$49
    nop
    ei
    nop
    ld c, b
    nop
    ei
    ld hl, sp+$47
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ldh a, [c]
    db $fc
    ld b, [hl]
    nop
    ld [bc], a
    nop

jr_00b_79d4:
    ld c, a
    nop
    ld [bc], a
    ld hl, sp+$4e
    nop
    ld a, [$4d00]
    nop
    ld a, [$4cf8]
    nop
    add b
    ld [bc], a
    ld hl, sp+$4f

jr_00b_79e6:
    jr nz, jr_00b_79ea

    nop
    ld c, [hl]

jr_00b_79ea:
    jr nz, jr_00b_79e6

    nop

jr_00b_79ed:
    ld d, c
    nop
    ld a, [$50f8]
    nop
    ldh a, [c]
    db $fc
    ld c, e
    nop
    add b
    inc b
    nop
    ld d, l
    nop
    inc b
    ld hl, sp+$54
    nop
    db $fc
    nop
    ld d, e
    nop
    db $fc
    ld hl, sp+$52
    nop
    db $f4
    db $fc
    ld c, e
    nop
    add b
    inc bc
    nop
    ld e, c
    nop
    inc bc
    ld hl, sp+$58
    nop
    ei
    nop
    ld d, a
    nop
    ei
    ld hl, sp+$56
    nop
    di
    db $fc
    ld b, [hl]
    nop
    add b
    ld bc, $22f5
    jr nz, jr_00b_7a28

    db $fd

jr_00b_7a28:
    ld hl, $f920
    push af

jr_00b_7a2c:
    jr nz, jr_00b_7a4e

    ld sp, hl
    db $fd
    rra
    jr nz, jr_00b_7a2c

    dec b
    ld e, $20
    pop af
    ld [bc], a
    dec e
    jr nz, jr_00b_79bb

    ld bc, $28f8
    jr nz, jr_00b_7a41

    nop

jr_00b_7a41:
    daa
    jr nz, @-$05

    db $f4

jr_00b_7a45:
    ld h, $20
    ld sp, hl
    db $fc
    dec h
    jr nz, jr_00b_7a45

    inc b

jr_00b_7a4d:
    inc h

jr_00b_7a4e:
    jr nz, jr_00b_7a41

    ld [bc], a
    inc hl
    jr nz, jr_00b_79d4

    nop
    push af
    dec l
    jr nz, jr_00b_7a59

jr_00b_7a59:
    db $fd
    inc l
    jr nz, jr_00b_7a4d

jr_00b_7a5d:
    ld [bc], a
    dec e
    jr nz, jr_00b_7a59

jr_00b_7a61:
    di
    dec hl
    jr nz, jr_00b_7a5d

    ei
    ld a, [hl+]
    jr nz, jr_00b_7a61

    inc bc
    add hl, hl
    jr nz, jr_00b_79ed

    ld [bc], a
    or $33

jr_00b_7a70:
    jr nz, jr_00b_7a74

    cp $32

jr_00b_7a74:
    jr nz, jr_00b_7a70

    di
    ld sp, $fa20
    ei
    jr nc, @+$22

    ei
    inc bc
    cpl
    jr nz, @-$0b

    ld [bc], a
    ld l, $20
    add b
    ld [bc], a
    push af
    scf
    jr nz, @+$04

    db $fd
    ld [hl], $20
    ld a, [$1e05]

jr_00b_7a91:
    jr nz, @-$04

    push af
    dec [hl]
    jr nz, jr_00b_7a91

    db $fd
    inc [hl]
    jr nz, @-$0c

    ld [bc], a
    ld l, $20
    add b
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    ld [$ea7a], a
    ld a, d
    ld [$ea7a], a
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    ld [$ea7a], a
    ld a, d
    ld [$ea7a], a
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20
    ld a, d
    rst $20

jr_00b_7ad6:
    ld a, d
    ld [$ea7a], a
    ld a, d
    ld [$ea7a], a
    ld a, d
    rst $28
    ld a, d
    rst $28

jr_00b_7ae2:
    ld a, d
    rst $28
    ld a, d
    rst $28
    ld a, d
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $0cff
    nop
    inc c
    ld bc, $020c
    rst $38
    ld b, b
    nop
    rst $30
    rrca
    rrca
    ld [$002a], sp
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    inc bc
    pop hl
    rst $38
    dec e
    ret nz

    ld [hl+], a
    add b
    add c
    add c
    ld a, [hl]
    nop
    rst $38
    ld sp, hl
    ld a, [hl]
    rst $00
    rst $38
    cp c
    rst $00
    cp [hl]
    pop bc
    rst $38
    rst $18
    ldh [$fff8], a
    ld a, b
    ldh [$fff0], a
    db $10
    ld h, b
    rst $38
    sub b
    nop
    ld h, b
    add b
    ret nc

    ldh [rBCPS], a
    ldh a, [rIF]
    jr z, jr_00b_7ae2

    ld d, b
    ld h, b
    add b
    nop
    ei
    ld [$2b0f], sp
    nop
    ld e, l
    nop
    ld b, d
    nop
    ld a, $ff
    add b
    ld a, [de]
    ret nz

    jr c, jr_00b_7ad6

    ccf
    sbc b
    ld e, a
    rst $38
    ld a, $7d
    inc a
    ld [hl], a
    rrca
    adc a
    nop
    ldh a, [rIE]
    nop
    rst $28
    ld [hl], b
    db $fc
    ld a, a
    ld h, b
    ccf
    ld a, b
    rst $38
    ccf
    ld b, a
    rlca
    ld h, b
    add b
    and b
    nop
    ld d, b
    rst $38
    nop
    and b
    ld b, b
    db $10
    ldh [$ff08], a
    ldh a, [$ff08]
    rst $30
    ldh a, [rDIV]
    ld hl, sp+$01
    inc b
    ld [hl], b
    rlca
    ld l, b
    ld [hl-], a
    rst $38
    add hl, sp
    nop
    inc bc
    ld bc, $0c09
    ld b, $08
    rst $38
    ld a, h
    inc a
    ld e, a
    ccf
    ccf
    sbc a
    cpl
    rra
    rst $38
    sub a
    rrca
    ld c, l
    add e
    add e
    jr nc, jr_00b_7c0d

    nop
    rst $38
    pop bc
    ld b, c
    add c
    add c
    db $e3
    db $e3
    rst $38
    rst $38
    rst $18
    cp $ff
    db $fc
    rst $38
    rst $38
    nop
    rlca
    add h
    ld hl, sp-$05
    add h
    ld hl, sp-$5f
    inc bc
    db $10
    ldh [$ff60], a
    add b
    sub b
    rlca
    nop
    ld [hl], b
    nop
    jr nz, jr_00b_7bb7

    ld a, a
    nop

jr_00b_7bb7:
    nop
    ld a, b
    nop
    stop
    jr nz, jr_00b_7c1e

    nop
    cp a
    ld bc, $0200
    nop
    rlca
    ld bc, $0165
    ldh a, [rIE]
    nop
    ld l, h
    ld [hl], b
    ld [bc], a
    db $fc
    ld a, h
    add b
    ld c, $ff
    dec b
    ld a, [de]
    add hl, bc
    inc de
    ld [bc], a
    scf
    rla
    daa
    rst $38
    rlca
    ccf
    inc bc
    cpl
    inc c
    ld l, [hl]
    dec hl
    db $f4
    rst $38
    ld a, b
    ld a, [$fa7c]
    db $fc
    db $fd
    cp $fd
    rst $38
    cp $fe
    add a
    cp $ff
    ld sp, hl
    ld a, c
    nop
    rst $38
    nop
    ld b, b
    nop
    cp b
    ld b, b
    ld d, h
    cp b
    xor h
    rst $38
    ld [hl], b
    ld d, d
    db $ec
    ld a, [de]
    db $fc
    cp h
    ret nz

    ld c, c
    rst $38
    ld bc, $004f
    ld h, a

jr_00b_7c0d:
    daa
    inc sp
    inc de
    add hl, hl
    rst $38
    add hl, de
    ld d, $0e
    dec c
    inc bc
    inc bc
    nop
    ld [hl], b
    rst $28
    or b
    rst $30
    scf

jr_00b_7c1e:
    rst $38
    stop
    xor $ff
    rst $30
    rst $38
    rst $38
    push hl
    ei
    ei
    nop
    ld a, [$fefc]
    rst $38
    db $fc
    sbc h
    ld hl, sp-$1c
    ld hl, sp-$18
    ldh a, [rNR10]
    rst $28
    ldh [$ffe0], a
    add b
    add b
    adc b
    ld [$0030], sp
    ld de, $00b3
    ld [hl+], a
    adc b
    add hl, bc
    inc hl
    ld [$0137], sp
    dec hl
    ld [$b17c], sp
    add b
    dec hl
    ld [$0c21], sp
    add hl, hl
    ld [$2b6e], sp
    dec h
    ld [$7f28], sp
    jr jr_00b_7c77

    rlca
    rlca
    nop
    ld sp, hl
    ld a, c
    inc hl
    ld [$05fe], sp
    ld [$c0bc], sp
    ld a, [$befc]
    db $fc
    call z, SetNextMapIndex
    ld [$0fc3], sp
    pop bc
    ld c, $c9
    rrca
    pop bc

jr_00b_7c77:
    ld c, $cb
    ld [de], a
    ld b, b
    nop
    cp a
    inc de
    ld [bc], a
    ccf
    rla
    cpl
    rlca
    jr nz, jr_00b_7c85

jr_00b_7c85:
    inc b
    db $fc
    and e
    ld b, $c0
    db $10
    sbc $fd
    sbc $fe
    rst $18
    cp $79
    rst $18
    and e
    ld b, $c9
    db $10
    ld a, [$fafc]
    db $fc
    ret


    db $10
    ld l, a
    dec b
    ld bc, $0007
    pop bc
    db $10
    rst $28
    cp $c2
    db $10
    rst $38
    inc b
    db $d3
    add d
    adc a
    nop
    db $e4
    sbc b
    call c, $e09f
    ld l, b
    ldh a, [$fff0]
    nop
    ret


    db $10
    push hl
    ld [$b77a], sp
    add hl, bc
    or e
    ld h, d
    db $eb
    ld [$fcfa], sp
    db $eb
    ld [hMapLimitL], sp
    ld b, b
    rst $38
    ld d, a
    rst $28
    ld b, a
    rst $28
    ld b, a
    xor a
    rst $38
    ld b, h
    db $ed
    add hl, hl
    rlc b
    ld c, l
    ld a, [bc]
    ld h, a
    db $fd
    dec h
    pop hl
    ld [$dffc], sp
    ld hl, sp-$28
    pop af
    ld [hl], c
    rst $38
    ld [hl], a
    or a
    rst $38
    cp a
    rst $38
    ld a, a
    ld b, d
    cp h
    rst $38
    cp d
    ld a, h
    or $f8
    jp c, $eae4

    sbc h
    rst $38
    db $f4
    ld hl, sp-$34
    ldh a, [$ff38]
    ret nz

    inc sp
    ld [de], a
    halt
    and $08
    nop
    ld b, $40
    rra
    rst $38
    rst $38
    db $fc
    pop af
    add hl, de
    rst $38
    ld hl, sp-$03
    nop
    ld d, l
    nop
    res 0, d
    add [hl]
    ccf
    nop
    ret nc

    ldh [$ffe0], a
    nop
    ld b, b
    adc b
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00b_7dda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00b_7e01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
