; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    add hl, de
    nop
    nop
    ld bc, $0700
    ld bc, $070b
    rla
    rrca
    cpl
    rra
    ld a, $1f
    ld a, h
    ccf
    ld a, h
    nop
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$08
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ff78]
    ccf
    ld hl, sp+$7f
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    rst $38
    ld h, b
    ld [$dc15], a
    ld h, e
    db $dd
    ld l, [hl]
    ld e, $e4
    inc l
    ret c

    ld d, [hl]
    cp b
    xor a
    halt
    db $dd
    ld l, [hl]
    ld a, d
    sbc h
    db $f4

jr_019_403e:
    ld e, b
    ld a, [hl]
    ldh [$ffba], a
    ld c, l
    ei
    inc d
    reti


    ld a, $7f
    ld [hl+], a
    ld d, [hl]
    dec hl
    dec l
    inc de
    dec de
    dec b
    rra
    inc b
    db $ed
    ld e, $d1

jr_019_4054:
    ld l, $ee
    ld d, b
    xor b
    ld d, b
    ret nc

    jr nz, jr_019_4054

    sub b
    ld a, h
    sbc b
    sbc h
    ld h, b
    ld d, $0b
    dec bc
    rlca
    inc c

jr_019_4066:
    inc bc
    dec c
    ld b, $04
    inc bc
    dec c
    ld b, $06
    nop
    nop
    nop
    inc d
    ldh [rNR10], a
    ldh [$ff88], a
    ld [hl], b
    ret c

    jr nz, jr_019_403e

    ld a, b
    db $e4
    jr jr_019_4066

    ld [hl], b

jr_019_407f:
    ldh a, [rP1]
    ld a, b
    ccf
    ld hl, sp+$7f
    ldh a, [$ff7f]
    ldh a, [$ff7f]
    rst $38
    ld h, b
    or $09
    or $4f
    and l
    ld e, [hl]
    ld e, $e4
    inc l
    ret c

    ld d, [hl]
    cp b
    xor a
    halt

jr_019_4099:
    db $dd
    ld l, [hl]
    ld a, d
    sbc h
    or [hl]
    ld e, b
    ld a, a
    add b
    reti


    ld d, $3c
    dec de
    ld e, h
    inc hl
    ld [hl], a
    add hl, bc
    ld d, $0d
    dec a
    ld [de], a
    ld [hl], a
    ld a, [bc]
    ld [$ed75], a
    ld e, $f2
    ld c, h
    db $ec
    db $10
    ld [hl], b
    add b
    cp b
    ret nc

    db $fc
    ret z

    jr c, jr_019_407f

Call_019_40bf:
    ldh [rP1], a
    ldh [$ff7f], a
    ld d, e
    cpl
    ld l, a
    inc sp
    ld h, [hl]
    add hl, de
    ret


    ld [hl], b
    ld [hl], c
    nop
    inc bc
    ld bc, $0003
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_019_4099

    and b
    ret nz

    sub b
    ld h, b
    sub b
    ldh [$fff0], a
    nop
    inc bc
    db $10
    dec c
    inc hl
    scf
    cpl
    ld l, $7f
    ld a, c
    ld h, a
    ld d, [hl]
    db $eb
    rst $08
    db $f4
    push de
    xor $e0
    nop
    ret nc

    ldh [$ff0e], a
    ldh a, [$ff8d]
    or $d9
    xor $02
    db $fc
    db $fc
    nop
    ld b, h
    cp b
    nop
    ld de, $1111
    ld de, $3131
    inc sp
    inc sp
    ld a, e
    ld [hl], e
    ld a, e
    ld [hl], e
    ld a, a
    ld [hl], a
    ld a, a
    jp c, $ceef

    ei
    cp l
    db $db
    sub l
    rst $18
    or d
    rst $38
    or a
    ei
    push af
    rst $38
    rst $28
    rst $38
    and h
    ld e, b
    ld [hl], h
    add sp, $6f
    ret nc

    ld e, a
    and [hl]
    cp $1c
    inc l
    ldh a, [$ff72]
    db $fc
    ld hl, $77fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    rlca
    rra
    rst $28
    rst $38
    rst $38
    db $fd
    ei
    rst $38
    ld a, [$f7ff]
    cp $fc
    cp $f8
    db $fc
    ldh [$fff8], a
    sbc c
    ld h, [hl]
    db $fd
    ld c, $f9
    ld d, $f6
    ld l, b
    db $f4
    jr jr_019_41d0

    ld [$0038], sp
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    cpl
    rra
    dec sp
    rlca
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    pop de
    ld l, [hl]
    ld bc, $0700
    nop
    ld [$0f07], sp
    rlca
    rrca
    nop
    inc d
    dec bc
    rrca
    inc bc
    rlca
    nop
    cp [hl]
    set 7, a
    dec bc
    rra
    db $eb
    rst $30
    rst $28
    ld hl, sp+$07
    dec sp
    add $e5
    rst $18
    ei
    rlca
    and h
    ld e, b
    ld [hl], h
    add sp, -$11
    ret nc

    ld e, a
    and [hl]
    cp $1c
    db $ec
    jr nc, jr_019_4210

    db $fc
    ld hl, $08fe
    rlca
    jr nc, jr_019_41b4

    ret nc

    ccf
    db $fc
    ld a, a
    cp a
    ld a, a
    ld e, a
    ccf
    scf
    rrca
    rrca
    nop
    rla
    ldh [$ff0d], a

jr_019_41b4:
    ldh a, [c]
    dec bc
    db $fc
    ccf
    cp $fd
    cp $fa
    db $fc
    db $ec
    ldh a, [$fff0]
    nop
    sbc c
    ld h, [hl]
    db $fd
    ld c, $f9
    ld d, $f6
    ld l, b
    db $f4
    jr jr_019_4240

    ld [$0038], sp
    nop

jr_019_41d0:
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    cpl
    rra
    dec sp
    rlca
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    rst $18
    ld h, [hl]
    nop
    nop
    rlca
    nop
    ld [$0f07], sp
    rlca
    rrca
    nop
    inc d
    dec bc
    rrca
    inc bc
    rlca
    nop
    rst $38
    ld c, a
    rst $38
    dec bc
    rra
    and $f7
    jp hl


    ld hl, sp+$07
    dec sp
    add $e5
    rst $18
    ei
    rlca
    and h
    ld e, b
    db $f4
    ld l, b
    db $ec
    ret nc

    ld e, b
    and b
    cp $18
    rst $28
    ld [hl], $77
    ld hl, sp+$21

jr_019_4210:
    cp $00
    nop
    nop
    nop
    inc e
    nop
    ld a, $1c
    ld a, [hl-]
    inc d
    ld a, $08
    ld [hl], $08
    ld a, [hl-]
    inc d
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    ret nc

    ld l, a
    cp a
    ld a, a
    ldh a, [c]
    inc e
    or d
    call z, $f40a
    ld a, [bc]

Call_019_4238:
    db $f4
    ld a, [bc]
    db $f4
    sbc $e0
    db $fd
    ld b, $3b

jr_019_4240:
    add $59
    ld a, $3e
    ld bc, $1fe3
    rst $38
    ld a, b
    ld a, a
    rlca
    ld sp, $241e
    dec de
    dec e
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c4ba], a
    ld a, [$fe24]
    ret nz

    ld a, [hl-]
    db $f4
    ld h, d
    cp h
    ld [hl], h
    ret z

    ld h, $19
    inc de
    rrca
    daa
    jr jr_019_42da

    inc l
    inc [hl]
    jr jr_019_4284

    nop
    nop
    nop
    nop
    nop
    call z, $9030
    ldh [$ffc8], a
    jr nc, @-$2a

    ld l, b
    ld l, b
    jr nc, jr_019_42ac

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_4284:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc d
    ld [$081c], sp
    ld a, [hl+]
    inc e
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ld e, l
    ld a, $7f
    ld a, $6b
    ld [hl], $07
    nop
    dec de
    rlca
    cpl
    rra
    ld a, $1f
    ld a, [hl]
    rra
    xor a

jr_019_42ac:
    ld e, a
    sub a
    ld l, a
    ret nz

    ld a, a
    rst $38
    ld a, [hl+]
    rst $30
    xor d
    ld d, l
    xor d
    ld c, c
    or [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    cp [hl]
    ld a, a
    add b
    cp c
    ld a, [hl]
    sbc a
    ld a, a
    ld b, b
    ccf
    ccf
    nop
    rra
    nop
    rst $38
    rrca
    ldh a, [c]
    ld a, l
    ld a, b

jr_019_42d0:
    rlca
    pop bc
    ld a, $22
    call c, $28d4
    inc c

jr_019_42d8:
    ldh a, [$fff4]

jr_019_42da:
    jr z, jr_019_42d8

    ret nz

    ld d, h
    cp b
    cp b
    ld [hl], b
    ld d, $0d
    dec e
    ld [bc], a
    rla
    rrca
    daa
    jr jr_019_435c

    inc l
    inc [hl]
    jr jr_019_4306

    nop
    nop
    nop
    ldh a, [$ff80]
    sub b
    ld h, b
    db $10
    ldh [$ff90], a
    ld h, b
    ret z

    jr nc, jr_019_42d0

    ld l, b
    ld l, b
    jr nc, jr_019_4330

    nop
    add c
    add c
    and l
    and l
    add c

jr_019_4306:
    add c
    and h
    and h
    and l
    and l
    push de
    push de
    db $db
    db $db
    rst $38
    rst $38
    rrca
    ld [$071b], sp
    ld l, $1f
    ld a, $1f
    ccf
    rra
    ld l, a
    rra
    sub b
    ld l, a
    cp a
    ld a, a
    ldh a, [$ff30]
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ffda]
    db $e4
    push af
    ld c, $3b

jr_019_4330:
    add $9d
    ld a, [hl]
    ld a, [hl]
    ld bc, $7ff1
    ld a, a
    ld a, $3f
    rlca
    ld [hl-], a
    dec e
    jr z, @+$19

    ld a, d
    dec c
    rst $18
    ld a, [hl+]
    ld d, l
    ld [$c0ba], a
    ld hl, sp+$20
    ldh a, [$ffc0]
    ld l, b
    or b
    cp b
    ld [hl], b
    db $fc
    add b
    xor l
    ld d, d
    rst $28
    ld e, a
    sub $6f
    ld l, a
    jr nc, jr_019_4393

    inc bc
    nop

jr_019_435c:
    ld bc, $0100
    nop
    nop
    sub d
    ld l, h
    ld [de], a
    db $ec
    ld h, $dc
    call c, $f838
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    add b
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    ld l, a
    rra
    sub b
    ld l, a
    cp [hl]
    ld a, a
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff0c]
    ldh a, [$ffda]
    db $e4
    push af
    ld c, $3b
    add $9d
    ld a, [hl]

jr_019_4393:
    ld a, [hl]
    ld bc, $1f27
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ld c, $28
    rla
    ld a, d
    dec c
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ld hl, sp+$20
    ldh a, [$ffc0]
    add sp, $30
    cp b
    ld [hl], b
    db $fc
    add b
    xor l
    ld d, d
    rst $28
    ld e, a
    sub $6f
    ld l, a
    jr nc, jr_019_43f3

    nop
    ld bc, $0000
    nop
    nop
    nop
    sub d
    ld l, h
    ld [de], a
    db $ec
    ld h, $dc
    call c, $f838
    add b

jr_019_43cb:
    ret nz

    add b
    add b
    nop
    add b
    nop
    sbc l
    ld a, [hl]
    ld a, [hl]
    ld bc, $3f47
    daa
    jr @+$81

    rlca
    rst $38
    ld a, a
    add sp, $17
    ld a, d
    dec c
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ld hl, sp+$20
    ldh a, [$ffc0]
    add sp, $30
    cp b
    ld [hl], b
    db $fc
    add b
    nop
    nop

jr_019_43f3:
    rlca
    nop
    jr jr_019_43fe

    scf
    rrca
    cpl
    rra
    ld e, h
    ccf
    ld e, b

jr_019_43fe:
    ccf
    ld e, b
    ccf
    nop
    nop

jr_019_4403:
    nop
    nop
    ret nz

    nop
    ld h, b
    add b
    and b
    ret nz

    ld d, b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff58], a
    ccf
    jr z, jr_019_4434

    inc [hl]
    rrca
    jr c, jr_019_4420

    ld e, a
    jr nz, jr_019_43cb

    ld [hl], b
    push de
    ld l, d
    rst $30

jr_019_4420:
    ld c, b

jr_019_4421:
    jr jr_019_4403

    inc h
    ret c

    ld h, [hl]
    sbc b
    pop bc
    ld a, $49
    or [hl]

jr_019_442b:
    db $fd
    ld [bc], a
    jp c, $d6b4

    cp b
    xor a
    ld b, [hl]
    ld d, l

jr_019_4434:
    ld c, $37
    add hl, de
    dec sp
    ld d, $2e
    rla
    rra
    nop
    ld c, $05
    dec c
    inc bc
    sub $bc
    cp $f0
    rst $28
    halt
    cp $04
    db $f4
    ld hl, sp-$5c
    ld a, b
    ld a, b
    add b
    jr z, jr_019_4421

    dec bc
    rlca
    add hl, bc
    ld b, $1b
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    adc b
    ldh a, [$ffc8]
    jr nc, jr_019_44da

    jr @+$70

    jr nc, @+$34

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ccf
    jr z, jr_019_4494

    inc [hl]
    rrca
    jr c, jr_019_4480

    ld e, a
    jr nz, jr_019_442b

    ld [hl], b
    push de
    ld l, d
    rst $10

jr_019_4480:
    ld l, b
    db $10
    ldh [$ff28], a
    ret nc

    ld h, h
    sbc b
    call nz, Call_019_4238
    cp h
    push hl
    ld a, [de]
    ld e, l
    and d
    db $db
    or h
    xor a
    ld b, [hl]
    ld d, l

jr_019_4494:
    ld c, $37
    add hl, de
    dec a
    ld d, $2e
    rla
    ld d, $09
    add hl, bc
    ld b, $0f
    ld [bc], a
    rst $30
    ld hl, sp-$0a
    ld a, h
    db $ec
    ld [hl], b
    sbc $64
    rst $38
    ld b, $f6
    ld hl, sp+$48
    ldh a, [$fff8]
    nop
    ld a, [bc]
    dec b
    rrca
    rlca

jr_019_44b5:
    ld c, $07
    add hl, bc
    ld b, $19
    ld c, $1e
    inc b
    ld [hl-], a
    inc e
    inc a
    nop
    xor b
    ret nc

    adc b
    ldh a, [$ffa8]
    ld [hl], b
    ld c, b
    jr nc, jr_019_452e

    jr c, @+$3e

    db $10
    ld a, [hl+]
    inc e
    ld e, $00
    rlca
    nop
    ld a, [de]
    rlca
    ld sp, $2a1f
    rra
    dec sp

jr_019_44da:
    ccf
    dec de
    ccf
    ld a, a
    ccf
    sbc a
    ld a, a
    ret nz

    add b
    jr nc, jr_019_44b5

    ret z

    ldh a, [$ff96]
    ld hl, sp-$2f
    cp $d9
    cp $51
    cp $d2
    db $fc
    rst $18
    ld a, a
    rst $10
    ld a, a
    sbc a
    ld a, a
    ld d, a
    ccf
    ld d, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld e, [hl]
    ld hl, sp+$5f
    ld a, [$fa4f]
    set 7, [hl]
    jp z, $8cfc

    ld hl, sp-$52
    ld hl, sp-$4b
    cp $fd
    ld a, a
    cp l
    ld a, a
    rst $38
    ccf
    dec a
    ccf
    dec a
    ccf
    dec l
    ccf
    dec a
    ccf
    dec a
    ccf
    or a
    ld hl, sp-$09
    ld hl, sp+$56
    ld hl, sp-$2c
    ld hl, sp+$58
    ld hl, sp+$50
    ld hl, sp+$50

jr_019_452e:
    ld hl, sp+$50
    ld hl, sp+$2d
    ccf
    cpl
    dec a
    ld l, $3d
    dec c
    cp [hl]
    sub [hl]
    rst $38
    ld l, c
    rst $38
    dec a
    ld a, a
    rrca
    ccf
    ld b, b
    ld hl, sp-$40
    ld a, b
    ret z

    ld a, b
    ld c, b
    ei
    xor e
    rst $38
    ld e, h
    cp $78
    db $fc
    ldh [$fff8], a
    rlca
    nop
    dec de
    rlca
    cpl
    rra
    ld a, $1f
    ld a, $1f
    cpl
    rra
    ld [hl], a
    rrca
    or a
    ld l, b
    ret nz

    nop
    or b
    ret nz

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $09
    or $c1
    cp $0a
    db $f4
    ret z

    ld [hl], a
    rst $18
    ld h, b
    cp b
    ld b, a
    ld l, l
    dec de
    ld d, a
    dec c
    dec de
    rlca
    rra
    ld [$0c77], sp
    sub [hl]
    ld l, b
    rst $28
    ld [de], a
    ccf
    jp z, $a67f

    sbc $6c
    xor h
    ret nc

    xor $30
    push de
    ld l, [hl]
    rst $18
    ld h, e
    cp h
    ld c, a
    db $ec
    rra
    ld [hl], $0f
    ccf
    inc de
    ccf
    inc e
    ccf
    rra
    inc a
    rra
    ld a, a
    adc b
    rla
    add sp, $0e
    ldh a, [rNR23]
    ldh [$ffe8], a
    sub b
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$ff3d]
    ld e, $3e
    dec e
    ccf
    inc e
    ccf
    dec e
    dec a
    ld e, $1c
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld [$88f0], sp
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$10f0], sp
    ldh [$ff60], a
    add b
    add b
    nop
    ret z

    ld [hl], a
    rst $18
    ld h, b
    xor a
    ld e, b
    ld a, a
    inc bc
    ld a, h
    rrca
    inc l
    rra
    ld [hl], $0f
    ld a, a
    inc de
    sub h
    ld l, b
    db $ec
    db $10
    sbc $28
    ld a, a
    add [hl]
    rla
    ld [$f00e], a
    ld e, $e0
    db $ed
    sub [hl]
    rst $38
    ld e, h
    cp a
    ld e, a
    db $fc
    rra
    dec a
    ld e, $3e
    dec e
    ccf
    inc e
    ccf
    dec e
    dec a
    ld e, $8f
    ld [hl], b
    rrca
    ldh a, [$ff0e]
    ldh a, [$ff08]
    ldh a, [$ff88]
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$1cf0], sp
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh [$ff60], a
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    rra
    inc c
    ccf
    dec e
    ld a, a
    dec a
    ld a, l
    dec sp
    nop
    nop
    nop

jr_019_4644:
    nop
    nop
    nop
    jr nc, jr_019_4649

jr_019_4649:
    add sp, $30
    ld [hl], b
    add b
    ret c

    ldh [$ffe4], a
    ld hl, sp-$4c
    ld a, e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub b
    ld l, a
    ld h, b
    rra
    jr c, jr_019_4664

    ld a, [hl]
    ld bc, $76a9
    ld [hl], d
    db $fc
    ld a, [de]

jr_019_4664:
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$0f
    or $91
    ld l, [hl]
    rst $18
    ld h, b
    cp $5b
    cp a
    ld e, c
    ld a, a
    inc h
    ld e, c
    ld [hl], $2e
    inc de
    dec hl
    dec d
    rra
    inc b
    cp $00
    and h
    ld e, b
    ld h, h
    ret c

    ret z

    or b
    ret nc

    jr nz, jr_019_4644

    ret nc

    db $fc
    ret z

    cp b
    ret nz

    inc c
    inc bc
    add hl, bc
    rlca
    add hl, bc
    rlca
    ld c, $05
    dec c
    ld [bc], a
    add hl, de
    ld c, $1f
    ld bc, $0003
    ret nc

    jr nz, jr_019_46b4

    ldh [$ff90], a
    ldh [$ff60], a
    add b
    and b
    ret nz

    sub b
    ld h, b
    sub b
    ldh [$fff0], a
    nop
    nop
    nop
    rlca

jr_019_46b4:
    nop
    ld [$1707], sp
    ld c, $7e
    ld bc, $6db2
    adc $71
    rst $30
    ld c, b
    inc a
    nop
    sub $38
    db $fd
    ld a, d
    halt
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    ld h, e
    sbc a
    add c
    ld a, a
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ld h, b
    ld h, b
    add b
    and b
    ret nz

    sub b
    ldh [$ffc8], a
    ldh a, [$ffad]
    ld e, d
    ld a, [hl]
    dec de
    ld l, a
    inc e
    sbc l
    ld h, e
    srl a
    ld a, [hl]
    dec c

jr_019_46ed:
    ld a, a
    ld hl, $1a67
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ldh a, [rIF]
    db $fc
    and e
    ei
    or b
    ld a, b
    add b
    ld c, b
    ldh a, [$ff28]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld b, d
    dec a
    call nc, $fe7f
    ld h, a
    ld c, [hl]
    ld sp, $136e
    db $d3
    ld h, b
    ld h, a
    inc bc
    inc bc
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_019_46ed

    jr nz, @-$3e

    ldh [rP1], a
    add hl, bc
    ld [$191e], sp
    dec sp
    scf
    scf
    ccf
    ld [hl], a
    ld a, a
    ld a, e
    ld [hl], a
    push af
    db $eb
    ld a, [$e0e5]
    nop
    db $10
    ldh [$ff8e], a
    ldh a, [$ffe9]
    or $f3
    cp $f7
    cp $c6
    ld hl, sp+$3a
    call nz, $0404
    dec c
    dec c
    dec c
    dec c
    dec e
    dec e
    rra
    rra
    ccf
    ccf
    scf
    ccf
    ld [hl], $3f
    rst $30
    add sp, -$09
    rst $28
    cp e
    db $ec
    xor a
    ei
    ld [hl], a
    rst $28
    ld a, c
    or $7f
    ldh a, [$ff73]
    db $fd
    ldh [c], a
    inc e
    halt
    xor b
    sbc a
    and $bf
    sbc $7e
    or b
    or d
    ld c, h
    reti


    and $b9
    adc $6e
    ld a, a
    ld l, [hl]
    ld a, a
    ld c, h
    ld a, a
    ld a, [hl+]
    rst $38
    sub d
    rst $38
    ld l, d
    rst $38
    ccf
    ld a, a
    rrca
    ccf
    ld d, [hl]
    rst $38
    ld e, a
    cp $5f
    ld hl, sp+$11
    ldh a, [$ff50]
    db $fc
    xor b
    db $fc
    ld [hl], b
    ld hl, sp-$40
    ldh a, [$fffd]
    ld b, $d6
    jr c, jr_019_4820

    adc h
    cp d
    ld b, h
    ld a, [$1c04]
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    rla
    rrca
    ld a, l
    inc bc
    or e
    ld l, h
    rst $18
    ld h, b
    ldh [rP1], a
    db $10
    ldh [$ff8e], a
    ldh a, [$ffc9]
    or $e3
    cp $e7
    cp $06
    ld hl, sp-$06
    inc b
    rrca
    nop
    ld [hl], $0f
    ld e, h
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, @+$81

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    rst $38
    ld c, a
    cp e
    ld c, h
    ld a, a
    sbc e
    ld [hl], a
    adc a
    sbc c
    ld h, [hl]
    rra
    ldh [rNR13], a
    db $ed
    ld d, $ef
    ld [hl], d
    xor h
    sbc [hl]
    ldh [$ffbf], a
    adc $7e
    or b
    or d
    ld c, h
    reti


    and $b9
    adc $fd
    ld b, $fc
    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    rra
    and $17
    ldh [rNR11], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$ff60], a
    add b
    add b

jr_019_4820:
    nop
    sub $38
    ld a, d
    adc h
    cp d
    ld b, h
    ld a, [$1c04]
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
    jr jr_019_483e

    daa
    rra
    cpl
    rra
    cpl
    rra
    dec a

jr_019_483e:
    inc bc
    ld d, e
    inc l
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffd1], a
    xor $cd
    cp $86
    ld a, b
    rrca
    nop
    ld [hl], $0f
    ld e, h
    ccf
    ld a, [hl]
    rrca
    ld a, a
    jr nc, jr_019_48db

    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    cp l
    ld h, d
    call c, $fd6b
    ld c, e
    xor a
    ld e, e
    rst $30
    rrca
    ld e, h
    and e
    rra
    pop hl
    inc de
    db $ec
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$1c
    ret c

    ld e, b
    and b
    cp [hl]
    ld a, b
    rst $08
    or [hl]
    cp a
    ld [hl], b
    db $fc
    ld e, a
    cp h
    ld e, a
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, h
    ccf
    inc [hl]
    rrca
    rrca
    nop
    ld d, $ef
    rra
    and $17
    ldh [rNR12], a
    pop hl
    rla
    ldh [rNR14], a
    db $e3

jr_019_489d:
    ld h, e
    add b

jr_019_489f:
    add b
    nop

jr_019_48a1:
    ld [$f2f4], a
    inc c
    ldh [c], a
    inc e
    ldh a, [c]
    inc l
    ld [hl], h
    sbc b
    call nz, $f478
    ld [$00fc], sp
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de

jr_019_48b8:
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    ld c, $00
    ld sp, $ee0e
    rra
    cp a
    rst $08
    ld [$08f7], sp
    rst $30
    ld [$def7], sp
    pop hl
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    and b
    ret nz

jr_019_48db:
    jr nz, jr_019_489d

    jr nz, jr_019_489f

    jr nz, jr_019_48a1

    pop de
    ld l, [hl]
    cp a
    ld a, a
    ld e, l
    ld a, $3e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, hl
    ld d, $fd
    ld b, $1b
    and $ff
    ld a, [bc]
    push de
    ld [$c43b], a
    cp $20
    db $fd
    add $3b

jr_019_4900:
    call nc, $8040
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_019_490b:
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec de
    dec e
    ld b, $36
    add hl, de
    inc de
    rrca

jr_019_4919:
    daa
    jr jr_019_498e

    inc l

jr_019_491d:
    inc [hl]
    jr jr_019_4938

    nop

jr_019_4921:
    ld d, [hl]
    cp b
    ld a, h
    ret z

    ret z

    jr nc, jr_019_48b8

    ldh [$ffe8], a
    jr nc, jr_019_4900

    ld l, b
    ld l, b
    jr nc, @+$32

    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    inc a

jr_019_4938:
    rra
    inc a
    rra
    ld a, [hl]
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    adc $00

jr_019_4943:
    or c
    adc $70
    cp a

jr_019_4947:
    db $f4
    ld a, e
    cp $75
    cp $71
    ld a, [$f475]
    ld a, e
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_019_4919

    jr nz, @-$3e

    jr nz, jr_019_491d

    jr nz, @-$3e

    jr nz, jr_019_4921

    pop hl
    ld a, [hl]
    cp [hl]
    ld a, a
    db $dd
    ld a, $7e
    ld bc, $60ff
    ld a, a
    rra
    ld c, b
    scf
    ld a, [hl-]
    dec c
    ldh a, [$ff7f]
    db $fc
    ld a, a
    cp $71
    pop af
    ld c, [hl]
    rst $00
    jr c, jr_019_490b

    ld [hl], b
    ld c, a
    or b
    di
    inc c
    jr nz, jr_019_4943

    jr nz, @-$3e

    jr nz, jr_019_4947

    and b
    ld b, b
    ld h, b
    add b
    ldh [rP1], a
    ret nz

jr_019_498e:
    nop
    add b
    nop
    ld a, $01
    ld d, l
    ld l, $5b
    daa
    daa
    jr jr_019_49b6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $a0
    sub b
    ld h, b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $30
    call nc, Call_019_6868
    jr nc, jr_019_49e0

    nop
    ld bc, $0201
    inc bc
    rla

jr_019_49b6:
    rla
    ld a, [bc]
    rra
    ld a, [hl-]
    ccf
    cpl
    jr c, @+$3d

    daa
    ld l, $1f
    nop
    nop
    and b
    and b
    add b
    and b
    and b
    ldh a, [$fff0]
    ldh a, [$ffe8]
    jr c, @-$46

    ret z

    ld [$7ef0], sp
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    pop hl
    ld a, [hl]
    cp a
    ld a, a
    ld e, h
    ccf
    ld a, a
    nop
    ld b, a

jr_019_49e0:
    ccf
    ld [$08f0], sp
    ldh a, [$ffdc]
    ldh [$fffa], a
    inc b
    dec d
    xor $fb
    ld b, $5f
    ld [$ea95], a
    ld a, $01
    ld a, a
    ld e, $ff
    ld a, a
    ld l, c
    ld d, $b4
    ld e, e
    sbc l
    ld h, [hl]
    sub [hl]
    ld l, c
    ld d, a
    cpl
    ld a, [hl-]
    ret nz

    ldh a, [rNR41]
    ld hl, sp-$40
    inc a
    ret nc

    ld c, d
    or h
    ld a, c
    add $c9
    ld [hl], $ca
    db $f4
    dec sp
    rlca
    scf
    jr c, jr_019_4a30

    ccf
    ld [$91bf], sp
    rst $38
    ld l, c
    rst $38
    dec e
    ld a, a
    rlca
    rra
    sbc h
    ldh [$fff0], a
    jr jr_019_49b6

    ld hl, sp+$00
    ld a, [$fe12]
    inc l
    cp $70
    db $fc
    ret nz

jr_019_4a30:
    ldh a, [rTAC]
    nop
    dec de
    rlca
    ld l, $1f
    ld a, [hl]
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    pop hl
    ld a, [hl]
    cp a
    ld a, a
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffdc]
    ldh [$fffa], a
    inc b
    dec d
    xor $5c
    ccf
    ld a, a
    nop
    ld b, a
    ccf
    ccf
    nop
    rst $38
    rra
    rst $38
    ld h, c
    ld l, c
    ld d, $b4
    ld e, e
    ei
    ld b, $5f
    ld [$ea95], a
    ld a, [hl-]
    ret nz

    ldh a, [rNR41]
    ldh a, [$ffc0]
    inc a
    ret nc

    ld c, d
    or h
    sbc l
    ld h, [hl]
    sub [hl]
    ld l, c
    ld d, a
    cpl
    dec sp
    rlca
    ccf
    jr jr_019_4aba

    dec e
    dec a
    ld e, $3c
    rra
    ld a, c
    add $c9
    ld [hl], $ca
    db $f4
    sbc h
    ldh [$ffe8], a
    db $10
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$ff3c]
    rra
    ld e, $0f
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$10f0], sp
    ldh [$ff60], a
    add b
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
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, a

jr_019_4aba:
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp a
    ld a, a

jr_019_4ac1:
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ffd8]
    ldh [$fffc], a
    nop
    sbc d
    db $e4
    ld e, [hl]
    ccf
    ld a, a
    nop
    ld b, b
    ccf
    ld a, e
    rlca
    cp $79
    rst $38
    ld e, $3f
    inc bc
    add hl, hl
    ld d, $f5
    ld c, $1b
    and $df
    ld [$ea15], a
    ld a, [hl-]
    ret nz

    ldh a, [rNR41]
    ldh a, [$ffc0]
    jr z, jr_019_4ac1

    inc [hl]
    dec de
    dec a
    ld b, $16
    add hl, bc
    daa
    rra
    ld d, e
    cpl
    rst $28
    ld d, b
    ld h, h
    dec sp
    ld a, h
    rlca
    ld e, b
    or b
    ld a, b
    ret nz

    call c, $ca20
    db $f4
    sub l
    ld [$1ce2], a
    inc a
    ret nz

    ld [$1ef0], sp
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr z, jr_019_4b39

    ld b, h
    jr c, jr_019_4b7e

    inc a
    sbc l
    ld a, d
    cp e
    ld [hl], b
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca

jr_019_4b39:
    ld l, $1f
    ld a, $1f
    ccf
    rra
    xor a
    rra
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld c, $f0
    add hl, bc
    or $0d
    or $c5
    cp $ba
    ld [hl], c
    cp e
    ld [hl], c
    cp c
    ld [hl], b
    sbc b
    ld [hl], b
    ld c, h
    jr c, jr_019_4b90

    ld [$000e], sp
    nop
    nop
    rst $10
    xor b
    cp b
    ld h, a
    rst $08
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld d, a
    dec l
    dec hl
    rla
    rra
    nop
    ld a, [bc]
    db $f4
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    rst $38
    ld h, b
    rst $18
    ld h, [hl]
    cp [hl]

jr_019_4b7e:
    ret z

    add sp, $10
    ld a, [bc]
    dec b
    ld c, $05
    dec e
    inc bc
    dec d
    dec bc
    dec sp
    inc d
    ld h, d
    inc a
    ld a, h
    nop
    nop

jr_019_4b90:
    nop
    db $fc
    jr c, jr_019_4b90

    ld e, b
    ld e, b
    and b
    adc b
    ldh a, [$ffc8]
    jr nc, @-$22

    ld h, b
    ld h, h
    jr c, jr_019_4bd8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld h, c
    ld e, $b9
    ld a, [hl]
    ld bc, $0200
    ld bc, $0103
    dec b
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $00
    ld [bc], a
    nop
    ld a, c
    cp $ff
    ldh [$ffe5], a
    add d
    add a
    nop
    dec de
    rlca
    cpl
    rra
    ld a, $1f
    ld a, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_019_4bd8:
    nop
    or b
    ret nz

    ld [$0ef0], sp
    ldh a, [$ff09]
    or $3f
    rra
    ld l, l
    inc de
    or d
    ld l, l
    rst $08
    ld [hl], b
    rst $18
    ld l, d
    cp a
    ld c, d
    rst $18
    ld a, [bc]
    sbc e
    rlca
    dec c
    or $c5
    cp $0e
    ldh a, [$fff4]
    ld [$e8dc], sp
    db $fc
    ldh [$ffdf], a
    db $ec
    ld l, a
    sub [hl]
    rrca
    nop
    ld c, $05
    ld c, $03
    dec de
    rrca
    dec de
    inc b
    ld sp, $3e1e
    nop
    nop
    nop
    sbc $30
    add sp, $70
    db $f4
    ld l, b
    ld h, h
    sbc b
    ldh a, [c]
    inc e
    add hl, sp
    ld b, $3a
    inc e
    inc e
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    ld [hl], a
    rrca
    adc b
    ld [hl], a
    cp a
    ld a, a
    sbc [hl]
    ld a, a
    ldh [rP1], a
    ret c

    ldh [rDIV], a
    ld hl, sp-$7c
    ld hl, sp-$14
    ldh a, [$fffe]
    nop
    sbc l
    and $6b
    sub [hl]
    ld a, a
    nop
    ld hl, $271f
    rra
    ld [hl], e
    rrca
    ld a, h
    inc sp
    ccf
    inc c
    ccf
    rla
    xor c
    sub [hl]
    adc l
    ld [hl], e
    sub $e9
    rst $18
    ld [$e9d7], a
    dec a
    add $f6
    dec de
    cp $e5
    inc l
    rst $18
    add b
    nop
    add b
    nop
    add b
    ld h, b

jr_019_4c67:
    and b
    ld a, b
    jr jr_019_4c67

    inc c
    cp $4c
    xor $c6
    xor $7c
    ld h, e
    ccf
    ccf
    rrca
    rrca
    rlca
    ld bc, $0304
    dec bc
    rlca
    dec bc
    inc b
    rlca
    nop
    ld a, c
    cp a
    rst $20
    rst $38
    cp $ff
    ldh a, [$fffc]
    db $e3
    inc bc
    and b
    ld b, b
    ret nz

    nop
    add b
    nop
    add [hl]
    add $16
    sub [hl]
    inc h
    ld [hl], $c8
    db $ec
    nop
    adc b
    nop
    stop
    nop
    nop
    nop
    add a
    nop
    rlc a
    or a
    ld c, a
    bit 6, a
    or [hl]
    ld a, c
    ld e, c
    ld h, $3f
    jr jr_019_4d2f

    dec l
    ret nz

    nop
    or b
    ret nz

    ld [$84f0], sp
    ld hl, sp-$1a
    ld hl, sp-$1b
    ld a, [de]
    di
    adc $f9
    and [hl]

jr_019_4cc1:
    nop
    nop
    inc bc
    rlca
    ld [$121f], sp
    ccf
    inc [hl]
    ccf
    inc l
    ld a, a
    ld l, h
    ld a, a
    ld l, [hl]
    ld a, a
    ld a, a
    dec a
    dec a
    ld a, [de]
    ccf
    rst $00
    cpl
    rst $18
    rla
    rst $28

jr_019_4cdb:
    cpl
    ret nc

    ld l, a
    or a
    dec d
    ld [$e0fe], a
    db $fc
    ret z

    call nc, $de28
    ldh [$ff3f], a
    call z, $3bfe
    ld sp, hl
    pop hl
    jr z, jr_019_4cc1

    ld l, a
    ld a, a
    daa
    ld a, a
    ld sp, $183f
    ccf
    inc c
    ld e, $03
    rrca
    nop
    ld bc, $0000
    add l
    ld a, [$fef1]
    cp $ff
    ccf
    rst $38
    rlca
    nop
    dec bc
    add l
    and $e1
    ld bc, $d800
    jr nc, @+$32

    ldh [rSVBK], a
    add b
    ldh [$fff8], a
    jr nz, jr_019_4cdb

    and b
    ret nz

    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    rst $20
    ld b, b
    cp e
    ld h, a
    rst $18
    ld [hl], a
    ld l, a
    dec sp
    halt
    dec e
    cp e
    ld l, [hl]

jr_019_4d2f:
    db $dd
    ld h, a
    nop
    nop
    ret nz

    nop
    or c
    ret nz

    dec bc
    pop af
    adc $f3
    db $ed
    rst $30
    sbc e
    ld l, [hl]
    or $1c
    ld h, b
    nop
    ldh [rLCDC], a
    and b
    ret nz

    ld h, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    sbc $6b
    xor a
    ld e, l
    ld l, a
    ld e, $37
    dec c
    dec de
    dec b
    ld a, a
    db $10
    ei
    ld l, l
    db $fd
    ld c, $ec
    ld e, b
    cp h
    ld d, b
    call c, $c8a8
    ldh a, [$ff88]
    ldh a, [$ff90]
    ldh [$fff0], a
    nop
    xor b
    ld [hl], b
    ld e, $07
    rla
    ld [$0f1c], sp
    dec de
    inc b
    ld [hl], $18
    ld a, d
    inc c
    ld h, h
    jr c, jr_019_4db8

    nop
    ld l, b
    ldh a, [$ffc8]
    jr nc, @-$0e

    ld h, b
    ldh a, [rP1]
    add sp, $30
    call c, $6460
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    rst $38
    rrca
    sbc a
    di
    rst $20
    ld a, h
    ld sp, hl
    rra
    sbc $67
    rst $18
    ld l, c
    ret nz

    nop
    or b
    ret nz

    ld [$c9f0], sp

jr_019_4db8:
    ldh a, [$ffef]
    pop af
    db $ec
    rla
    ld [hl], e
    xor a
    rst $18
    xor h
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    adc $7c
    inc a
    ldh a, [$fff0]
    ret nz

    ret nz

    nop
    nop
    nop
    xor a

jr_019_4dd2:
    ld e, [hl]
    ld l, a
    ld a, $37
    ld c, $19
    ld b, $7f
    db $10
    ei
    ld l, a
    db $fd
    ld c, $1e
    rlca
    db $ec
    ld d, b
    db $e4
    ld hl, sp-$3c
    ld hl, sp-$38
    ld [hl], b
    ldh a, [rP1]
    ret c

    or b
    jr c, @-$0e

    ld l, b
    sub b
    rla
    ld [$0f1b], sp
    rra
    inc c
    ld d, $08
    ld [hl-], a
    inc e
    inc a
    ld [$3068], sp
    ld [hl], b
    nop
    ld hl, sp+$30
    db $10
    ldh [$ffd0], a
    ld h, b
    ret nc

    jr nz, jr_019_4dd2

    ld [hl], b
    ld a, b

jr_019_4e0c:
    jr nz, jr_019_4e42

    jr jr_019_4e2c

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
    ld c, $04
    ld c, $04
    ld a, [de]
    inc c
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rst $38
    nop
    ldh [$ff7f], a
    ld a, a

jr_019_4e2c:
    rra
    rra
    nop
    ld a, c
    ld b, $1a
    inc c
    jp c, $ba0c

    call z, Call_000_04fa
    ccf
    ret c

    rst $20
    db $db
    ld hl, sp+$07
    rst $18
    or b
    nop

jr_019_4e42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    cp $f8
    rlca
    cp $ff
    nop
    xor a
    ld [hl], b
    pop de
    ld l, [hl]
    sbc $63
    cp e
    ld c, l
    ld d, a
    rrca
    dec a
    inc bc
    ld a, e
    inc [hl]
    scf
    rrca
    reti


jr_019_4e62:
    or [hl]
    reti


    or [hl]
    jp c, $dc34

    jr nc, jr_019_4e62

    and b
    ld hl, sp-$60
    db $f4
    jr jr_019_4e0c

    ld hl, sp+$1b
    rlca
    rla
    ld [$0f13], sp
    dec de
    inc b
    ld [hl], $18
    ld a, d

jr_019_4e7c:
    inc c
    ld h, h
    jr c, jr_019_4eb8

    nop
    ld a, h
    add b
    db $fc
    jr jr_019_4e9e

    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call c, $6460
    jr c, jr_019_4ec8

    nop
    ld a, $00
    add hl, sp
    ld e, $1e
    rlca
    rla
    add hl, bc
    rra
    ld c, $1f
    rrca
    rla

jr_019_4e9e:
    ld [$017e], sp
    nop
    nop
    pop bc
    nop
    ld [hl], a
    add c
    sbc [hl]
    rst $20
    db $fd
    ld e, d
    and $98
    sbc a
    ld h, [hl]
    ld a, c
    rst $20
    ld a, b
    nop
    db $f4
    ld a, b
    sbc b
    ldh [$ff60], a

jr_019_4eb8:
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ldh [$ff80], a
    cp c
    ld h, a
    rst $20
    ld e, $fe
    add hl, sp
    cp e

jr_019_4ec8:
    ld b, l
    ld d, a
    rrca
    dec a
    inc bc
    ld a, e
    inc [hl]
    scf
    rrca
    or $99
    db $e3
    ld a, h
    jp nz, $c47c

    jr c, @-$06

    ret nz

    xor b
    ret nc

    db $f4
    jr jr_019_4e7c

    ld hl, sp+$78
    ldh [$ff9c], a
    ld a, b
    ld h, [hl]
    inc e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_4fed:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    dec de
    ld b, $06
    ld bc, $0001
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
    adc h
    inc bc
    pop de
    adc a
    ld h, e
    rst $18
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
    jr nc, jr_019_4fed

    ret z

    ldh a, [$ffe8]
    ldh a, [$ffe7]
    rra
    sub a
    ld l, a
    db $e3
    ld a, h
    ld a, l
    ld [bc], a
    inc hl
    inc e
    ld h, $1b
    rla
    dec bc
    ld a, [bc]
    dec b
    cp b
    ret nz

    ld c, [hl]
    or b
    push af

jr_019_5046:
    ld c, $3b
    sub $bf
    jp nc, $dab5

    ld a, [$d0f0]
    ldh [$ff3f], a
    inc c
    db $fc
    inc sp
    ld a, e
    daa
    dec h
    dec de
    dec hl
    inc e
    inc l
    rra
    ld de, $0e0e
    nop
    cp $10
    db $dd
    and [hl]
    ccf
    add $96
    ld hl, sp-$03
    ld a, [de]

jr_019_506b:
    cp e
    ld h, h
    adc e
    ld [hl], h
    ld a, [hl]
    nop
    inc e
    nop
    rlca
    nop
    ldh [c], a
    pop hl
    add hl, de
    jr jr_019_5080

    ld b, $71
    ld [hl], c
    ld [$0008], sp

jr_019_5080:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [rLCDC], a
    ld [hl], b
    jr nz, jr_019_5046

    sub b
    ld l, h
    ld e, b
    inc a
    jr z, @+$18

    inc c
    ld c, $04
    rrca
    nop
    inc c
    inc bc
    ld de, $230f
    rra
    ld h, a
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_506b

    ret z

    ldh a, [$ffe8]
    ldh a, [$ffb8]
    ret nz

    sub a
    ld l, a
    db $e3
    ld a, h
    ld a, l
    ld [bc], a
    inc hl
    inc e
    ld h, $1b
    rla
    dec bc
    ld c, $01
    ccf
    ld c, $4e
    or b
    push af
    ld c, $3b
    sub $bf
    jp nc, $dab5

    cp $f0
    sub $ec
    cp $0c
    ld a, a
    dec a
    rst $38
    ld a, c
    ld a, e
    inc b
    inc hl
    dec e
    dec hl
    rra
    inc l
    rra
    ld de, $0e0e
    nop
    ld l, h
    ldh a, [$ff90]
    ldh [$ffec], a
    nop
    ld d, [hl]
    xor b
    ld a, l
    jp nc, $74ab

    adc e
    ld [hl], h
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    sbc b
    add b
    sbc b
    add b
    sbc b
    add b
    ld d, h
    ld c, b
    ld c, h
    ld b, b
    ld a, [hl+]
    inc h
    ld l, $24
    rla
    ld [de], a
    rla
    ld [de], a
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
    inc c
    inc bc
    ld de, $230f
    rra
    ld e, h
    ld c, b
    inc a
    jr z, jr_019_515c

    inc l
    ld l, $24
    adc $04
    ld a, $c4
    adc $f4
    db $eb
    or $67
    rra
    sub a
    ld l, a
    db $e3
    ld a, h
    ld a, l
    ld [bc], a
    inc hl
    inc e
    ld h, $1b
    rla
    dec bc
    ld e, $01
    cp a
    jp nz, $b24f

    rst $30
    ld a, [bc]
    ccf
    jp nc, $d2bf

    or a
    ret c

    rst $38
    or $db
    and $ff
    inc e
    ld a, a
    inc sp
    scf
    dec bc
    ld h, $19
    dec hl
    inc e
    inc l

jr_019_515c:
    rra
    ld de, $0e0e
    nop
    ld [$0e1c], a
    db $fc
    call c, Call_019_76e0
    adc b
    db $fd
    ld d, d
    xor e
    ld [hl], h
    adc e
    ld [hl], h
    ld a, [hl]
    nop
    ld h, a
    rra
    sub a
    ld l, a
    db $e3
    ld a, h
    ld a, l
    ld [bc], a
    inc hl
    inc e
    ld h, $1b
    rla
    dec bc
    ld a, [bc]
    dec b
    cp b
    ret nz

    ld c, [hl]
    or b
    push af
    ld c, $3b
    sub $bf
    jp nc, $dab5

    ei
    pop af
    sub $e3
    nop

jr_019_5192:
    nop
    rlca
    nop
    dec e
    ld b, $7e
    jr jr_019_5192

    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    ld hl, sp+$00
    ld a, $c0
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
    ccf
    inc c
    ld a, h
    inc sp
    ei
    daa
    dec h
    dec de
    dec hl
    inc e
    inc l
    rra
    ld de, $0e0e
    nop
    db $fd
    ld b, $fb
    call z, $d23d
    sbc [hl]
    ld hl, sp-$03
    ld [bc], a
    xor e
    ld [hl], h
    adc e
    ld [hl], h
    ld a, [hl]
    nop
    nop
    nop
    jr c, jr_019_520d

    ld b, b
    ld b, b
    rra
    nop
    ld a, h
    rra
    rst $38
    ld h, b
    ldh [$ff80], a
    add b
    nop
    jr nc, jr_019_5213

    ld [$6008], sp
    ld h, b
    sbc b
    jr jr_019_524e

    add h
    ld hl, sp+$00
    inc e
    nop
    ld b, $00
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    ld c, $04
    inc e
    ld [$1038], sp
    ld l, b
    jr nc, jr_019_5272

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_520d:
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5213:
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    ld de, $230e
    dec e
    ld h, a
    dec e
    ld [hl], b
    jr nz, @-$2e

    ld h, b
    ldh [rLCDC], a
    and b
    ret nz

    ldh a, [$ff80]
    ret z

    or b
    ld l, b
    or b
    ld hl, sp+$00
    sub a
    ld l, l
    rst $20
    ld a, d
    ld a, a
    inc bc
    inc hl
    inc e
    daa
    add hl, de
    rla
    add hl, bc
    rrca
    ld [bc], a
    rra
    dec bc
    adc $30
    push af
    ld c, $bb
    ld d, [hl]
    cp a
    ld d, d
    push af
    sbc d
    jp c, Jump_019_70b0

jr_019_524e:
    ret nz

    ldh a, [$ff60]
    dec a
    dec de
    ld a, e
    inc [hl]
    ld [hl], e
    inc c
    inc hl
    dec e
    dec hl
    rra
    inc l
    rra
    ld de, $0e0e
    nop
    ret nc

    jr nz, jr_019_5284

    ret nz

    ld hl, sp+$00
    ld d, [hl]
    xor b
    ld a, l
    jp nc, $74ab

    adc e
    ld [hl], h
    ld a, [hl]
    nop
    ld [hl], b

jr_019_5272:
    nop
    inc e
    nop
    ld a, [bc]
    inc b
    dec b
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5284:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    or b
    ld h, b
    ld [hl], b
    jr nz, jr_019_52ec

    jr nc, @+$3a

    db $10
    cpl
    jr jr_019_52b6

    dec bc
    ccf
    dec bc
    ld d, a
    dec l
    rst $08
    dec [hl]
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
    sub b
    ldh [$ffd0], a
    ldh [rSVBK], a
    add b
    sub a
    ld l, d
    rst $20
    ld a, c
    ld a, a

jr_019_52b6:
    inc bc
    inc hl
    inc e
    daa
    add hl, de
    rla
    add hl, bc
    rrca
    ld [bc], a
    rra
    add hl, bc
    ld c, [hl]
    or b
    push af
    ld c, $bb
    ld d, [hl]
    cp a
    ld d, d
    push af
    sbc d
    cp d
    ret nz

    ldh a, [$ff60]
    ldh a, [$ffa0]
    ld a, l
    inc sp
    or $69
    ld [hl], e
    inc c
    inc hl
    dec e
    ld a, [hl+]
    rra
    dec l
    ld e, $11
    ld c, $0e
    nop
    and b
    ld b, b
    ld b, b
    add b
    ld hl, sp+$00
    xor [hl]
    ld d, b
    push af
    xor d
    ld e, e

jr_019_52ec:
    db $e4
    inc de
    db $ec
    cp $00
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    rla
    rrca
    dec hl
    inc d
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa85]
    pop hl
    cp $85
    ld a, d
    ld e, h
    inc sp
    ld h, a
    jr c, @+$6d

    ld [hl], $5f
    ld h, $2b
    ld b, $3e
    add hl, bc
    ld d, e
    dec a
    ld l, c
    ld [hl], $4a
    or h
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    ld [hl], $c8
    ld [$cadc], a
    inc [hl]
    scf
    ld a, [de]
    dec de
    dec b
    inc de
    rrca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    ld a, a
    and [hl]
    dec l
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_019_53be

    jr jr_019_53ba

    jr nc, jr_019_5380

    inc e
    inc e
    nop
    ld e, h
    inc sp
    ld h, a
    jr c, jr_019_53c1

    ld [hl], $5f
    ld h, $2b
    ld b, $1e
    add hl, bc
    inc sp
    dec e
    add hl, hl
    ld d, $27
    ld a, [de]
    dec de
    dec b
    dec de
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    dec de
    inc c
    inc l
    inc de
    ld d, a

jr_019_5380:
    jr c, jr_019_5382

jr_019_5382:
    nop
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld l, e
    scf
    ld [hl], a
    cpl
    ld [hl], a
    jr jr_019_53d7

    rlca
    ld l, e
    scf
    xor [hl]
    ld [hl], c
    db $db
    ld [hl], l
    reti


    halt
    ld [$f6f4], a
    ld hl, sp-$0a
    adc h
    cp $f0
    rst $28
    halt
    ld [hl], $c8
    ld [$cedc], a
    inc [hl]
    ld a, a
    ld [de], a
    dec sp
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de

jr_019_53ba:
    inc c
    dec a
    ld b, $32

jr_019_53be:
    inc e
    inc e
    nop

jr_019_53c1:
    ld a, d
    xor h
    ld a, $cc
    adc h
    ldh a, [$ffd8]
    jr nz, @+$76

    jr jr_019_543a

    jr nc, @+$34

    inc e
    inc e
    nop
    ld l, e
    scf
    ld [hl], a
    cpl
    ld a, a
    nop

jr_019_53d7:
    scf
    dec de
    ld l, a
    dec sp
    adc $79
    rst $10
    ld a, c
    ld [hl], l
    ld a, [de]
    rra
    ld [bc], a
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    ld h, b
    ld h, b
    ldh [$ffe0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    jr c, jr_019_5437

    jr @+$1a

    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    dec de
    inc c
    inc [hl]
    dec bc
    ld e, a
    jr nc, @+$6d

    scf
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    ld hl, sp-$6c
    ld a, b
    ld c, d
    cp h
    push af
    ld a, [bc]
    db $ed
    ldh a, [c]
    ld [hl], a
    ld l, $56
    add hl, hl
    scf
    rra
    rra
    rlca
    dec bc
    rlca
    ld d, $09
    dec hl
    dec e
    ld a, c
    ld [hl], $fb
    or h
    or [hl]
    ret z

    or $fc

jr_019_5437:
    cp $70
    rst $28

jr_019_543a:
    halt
    ld [hl], $c8
    ld [$cfdc], a
    ld [hl], $6f
    ld [hl-], a
    dec sp
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    ld a, e
    and [hl]
    ld l, $d0
    adc b
    ldh a, [$ffd8]
    jr nz, jr_019_54ce

    jr jr_019_54ca

    jr nc, @+$34

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa05]
    rla
    rrca
    dec hl
    rla
    ld e, e
    inc [hl]
    ld h, h
    dec sp
    ld l, a
    jr nc, @+$5d

    ld h, $3e
    ld bc, $1b2c
    add c
    cp $e5
    ld a, [$7886]
    ld c, [hl]
    or h
    cp $00
    rst $28
    or [hl]
    cp [hl]
    ret nz

    ld a, [de]
    db $ec
    scf
    jr jr_019_54d3

    ld [de], a
    scf
    add hl, de
    dec a
    ld a, [de]
    dec de
    inc b
    dec a
    ld b, $32
    inc e
    inc e
    nop
    or $0c
    ld a, d
    and h
    or [hl]
    call z, $2cde
    ld l, h
    db $10
    ld l, [hl]
    jr nc, jr_019_54f0

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla

jr_019_54ca:
    rrca
    rra
    rrca
    rra

jr_019_54ce:
    rrca
    rla
    rrca
    nop
    nop

jr_019_54d3:
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa85]
    pop hl
    cp $2b
    inc d
    ld d, h
    dec sp
    ld l, a
    jr nc, jr_019_5563

    ld h, $56
    add hl, hl
    dec sp
    rlca
    ld l, $19
    scf

jr_019_54f0:
    add hl, de
    add l
    ld a, d
    ld c, d
    or h
    cp $04
    xor $b0
    cp a
    add $ee
    ldh a, [$ff3a]
    call z, $ccf6
    add hl, hl
    ld d, $37
    ld a, [de]
    ccf
    add hl, de
    dec e
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    jp z, Jump_019_7634

    xor h
    cp [hl]
    call z, Call_000_20dc
    ld [hl], h
    jr jr_019_558a

    jr nc, jr_019_5550

    inc e
    inc e
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
    dec de
    rlca
    ld l, $1f
    ld a, $1f
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
    or b
    ret nz

    inc c
    ldh a, [$ff0a]
    db $f4
    ccf
    rra
    cpl
    rra
    ld d, a
    jr z, jr_019_54f0

    ld [hl], a
    rst $18
    ld h, b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld d, a

jr_019_5550:
    dec c
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    sbc $6c
    inc a
    inc de

jr_019_5563:
    ld [hl], a
    inc l
    cp h
    ld b, e
    ld l, e
    rla
    rst $10
    ld l, b
    db $e4
    jr c, @+$6a

    db $10
    jr nc, jr_019_5571

jr_019_5571:
    ld a, h
    sub b
    call c, Call_019_7a68
    add h
    sub [hl]
    add sp, -$03
    ld d, $2b

jr_019_557c:
    inc e
    ld d, $08
    inc c
    nop
    ccf
    rra
    cpl
    rra
    ld d, a
    jr z, @-$56

    ld [hl], a
    rst $18

jr_019_558a:
    ld h, b
    rst $10
    ld l, a
    cp a
    ld b, c
    ld d, a
    rrca
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    db $f4
    ld [$e8dc], sp
    db $fc
    nop
    sbc $ec
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
    dec de
    rlca
    ld l, $1f
    ccf
    rra
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
    or b
    ret nz

    ld [$c8f0], sp
    ldh a, [$ff67]
    jr jr_019_557c

    ld h, a
    rst $08
    ld [hl], b
    db $d3
    ld l, l
    xor e
    ld e, l
    db $eb
    dec a
    ld [hl], a
    rrca
    ld [$6407], sp
    ld hl, sp-$76
    ld [hl], h
    ld a, [$9604]
    ld l, b
    or h
    ld l, b
    cp h
    ld l, b
    call c, $3ee0
    call z, Call_000_133f
    ld [hl], a
    inc l
    cp h
    ld b, e
    ld l, e
    rla
    rst $10
    ld l, b
    db $e4
    jr c, jr_019_5656

    db $10
    jr nc, jr_019_55f1

jr_019_55f1:
    db $fc
    sub b
    call c, Call_019_7a68
    add h
    sub [hl]
    add sp, -$03
    ld d, $2b
    inc e
    ld d, $08
    inc c
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rDIV], a
    ld hl, sp-$1c
    ld hl, sp-$4d
    ld a, h
    ld b, h
    cp e
    db $fc
    inc bc
    nop
    nop
    nop
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
    ld h, l
    dec sp
    ld l, e
    scf
    ld e, e
    inc l
    cpl
    inc bc
    dec c
    inc bc
    ld a, a
    ld [$7de3], sp
    cp c
    ld h, [hl]
    db $fd
    ld a, [$5cfb]
    ld e, e
    and $ff
    ld hl, sp-$09
    ei
    rra
    ldh [$fffa], a
    call z, $3ec5
    add b
    nop
    nop
    nop
    nop

jr_019_5656:
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
    ld l, a
    ld [bc], a
    dec bc
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    ld a, l
    and d
    cpl
    sub $8b
    or $de
    jr nz, jr_019_56ee

    jr @+$70

    jr nc, jr_019_56b0

    inc e
    inc e
    nop
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    inc bc
    nop
    rlca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    cpl
    rst $18
    ld e, a
    or l
    push de
    ld l, $7f
    rra
    ld l, a
    rra
    ret c

    daa
    ld l, a
    rst $30
    and a
    ld e, b
    call z, $f8b0
    ret nz

    ret c

    ld [hl], b
    ret c

    ldh [$ffbc], a
    ret c

jr_019_56ab:
    adc $30

jr_019_56ad:
    or a
    ld a, [hl]
    dec a

jr_019_56b0:
    add $7d
    ld a, [bc]
    ld l, $17
    daa
    rra
    dec de
    inc b
    ld a, [de]
    inc c
    dec a
    ld b, $32
    inc e
    inc e
    nop
    and $80
    sub b
    ld h, b
    db $10
    ldh [rOBP0], a
    or b
    add sp, $50
    ld l, b
    jr nc, jr_019_56fe

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld l, [hl]
    rra
    cp b
    ld a, a
    cp $7f
    db $db
    ld h, a
    and h
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_019_56ab

    jr nz, jr_019_56ad

    sbc h

jr_019_56ee:
    ldh [$ff2a], a
    call c, $205f
    or a
    ld l, a
    rst $18
    ld l, d
    ld [$af57], a
    ld e, a
    ld d, a
    dec c
    inc c

jr_019_56fe:
    inc bc
    dec de
    dec b
    ld sp, hl
    ld b, $e6
    ret c

    db $fc
    ldh [$ffec], a

jr_019_5708:
    jr c, jr_019_5708

    ldh [$ffde], a
    db $ec
    ld [hl], h
    adc b
    xor $dc
    db $db
    inc [hl]
    adc $f5
    ld [hl], l
    jp $01c2


    ld bc, $0300
    nop
    inc bc
    ld bc, $0001
    sub d
    ld l, h
    cp $4c
    sub $ac
    cpl
    ret nc

    or l
    jp z, Jump_019_66d9

    ld h, $c0
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    rla
    ld [$0778], sp
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp-$7c
    ld hl, sp-$1d
    db $fc
    ld [hl], $fb
    sbc h
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    adc $30
    or d
    ld c, h
    xor a
    ld [hl], b
    rst $10
    ld l, a
    rst $10
    ld l, l
    xor l
    ld d, e
    ld a, e
    rlca
    push hl
    ld a, d
    cp e
    ld h, b
    ld h, b
    nop
    di
    inc c
    rst $28
    pop af
    rst $30
    ld a, h
    ld a, a
    sub e
    rst $28
    ldh a, [$ff3d]
    adc $ff
    inc c
    inc c
    nop
    call c, Call_019_6c20
    sub b
    ret z

    or b
    xor b
    ld d, b
    jr nc, @-$3e

    ld b, b
    add b
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    nop
    nop
    nop
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
    ret c

    ldh [rNR22], a
    rrca
    rra
    rrca
    rra
    rrca
    rla
    ld [$0778], sp
    xor a
    ld [hl], b
    rst $10
    ld l, a
    rst $10
    ld l, l
    add h
    ld hl, sp-$7c
    ld hl, sp-$1d
    db $fc
    ld [hl], $fb
    sbc h
    ld h, e
    di
    inc c
    rst $38
    pop af
    rst $30
    ld a, h
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    sub b
    ld h, b
    ld d, b
    and b
    ret nc

    and b
    xor l

jr_019_57e2:
    ld d, e
    ld e, e
    rlca
    dec [hl]
    ld a, [bc]
    ld b, a
    jr c, jr_019_57e2

    ld h, b
    or b
    ld h, b
    ld h, b
    nop
    nop
    nop
    ld a, a
    sub e
    rst $38
    db $ec
    dec l
    jp nc, Jump_000_25da

    dec sp
    inc e
    inc a
    jr jr_019_5816

    nop
    nop
    nop
    cp b
    ld b, b
    inc [hl]
    ret z

    ld h, d
    sbc h
    jp nc, $ec2c

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de

jr_019_5816:
    rlca
    ld l, $1f
    ccf
    rra
    ld [hl], $19
    add hl, hl
    ld d, $df
    jr nz, jr_019_5822

jr_019_5822:
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$c8f0], sp
    ldh a, [$ff66]
    ld hl, sp+$0d
    or $f9
    ld b, $01
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    inc bc

jr_019_5840:
    nop
    ld d, a
    rst $28
    xor a
    jp c, $1aef

    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld b, b
    rst $38
    and [hl]
    ret c

    ld e, h
    ldh [$ff6c], a
    ld hl, sp-$04
    ldh [$ffde], a
    ld l, h
    db $ec
    db $10
    jp z, $963c

    ld l, h
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    add b
    ld a, a
    ld a, a
    nop
    ld [hl-], a
    inc e
    inc e
    nop
    ld a, [hl]
    xor h
    halt
    adc h
    ld c, h
    or b
    ld e, b
    and b
    ld [hl], h
    sbc b
    xor $30
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    ld [hl], a
    ld [$70af], sp
    sbc $6f
    rst $38
    inc bc
    rst $00
    jr c, jr_019_5892

jr_019_5892:
    nop
    ret nz

    nop
    or b
    ret nz

    ld l, b
    ldh a, [$ffd4]
    jr c, jr_019_5840

    ld e, b
    ldh a, [c]
    adc h
    xor d
    ld d, h
    inc bc
    nop
    rrca
    inc bc
    rla
    rrca
    rra
    rrca
    cpl
    rra
    inc l
    rra
    jr nz, @+$21

    inc d
    rrca
    db $eb
    sbc l
    db $dd
    xor $f1
    xor $0f
    ldh a, [$ff0b]
    or $0e
    rst $30
    ld d, $e9
    dec de
    db $e4
    ld a, [$dec4]
    ldh a, [$ffbd]
    jp nz, $8a75

    db $fd
    ld [hl-], a
    ld a, [hl]
    adc b
    xor $f4
    cp [hl]
    ld [hl], b
    ld d, $0f
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    add l
    sub $0b
    rla
    rrca
    dec de
    inc b
    ld [hl], $18
    ld a, d
    inc c
    ld h, h
    jr c, jr_019_5928

    nop
    ldh a, [rP1]
    ld d, b
    and b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call c, $6460
    jr c, jr_019_5938

    nop
    ld bc, $0700
    ld bc, $070b
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    ret nz

    nop
    di
    ret nz

    db $ed
    di
    rst $38
    ldh a, [$ffe7]
    ld hl, sp-$63
    ld a, [$fbb6]
    ld l, e
    or $00
    nop
    ldh [rP1], a
    ret c

    ldh [$ffb4], a

jr_019_5928:
    ld a, b
    ld [$521c], a
    xor h
    ld a, [$6a04]
    call nc, Call_000_070b
    ld b, $01
    inc bc
    nop
    nop

jr_019_5938:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    or $30
    rst $08
    sbc $21
    db $ed
    ld [de], a
    ld e, [hl]
    ld hl, $336f
    inc sp
    inc c
    ld e, $05
    ld [$bad4], a
    ld b, h
    cp $50
    db $fd
    ld h, d
    xor l
    ld [hl], d
    db $dd
    xor d
    cp [hl]
    ld b, h
    or $40
    ld d, $0b
    rla
    rrca
    inc de
    inc c
    ld [hl], $18
    ld [hl-], a
    inc c
    ld [hl], h
    jr jr_019_59d6

    jr nc, jr_019_59a0

    nop
    ld d, b
    and b
    db $10
    ldh [$ff90], a
    ld h, b
    add sp, $30
    sbc b
    ld h, b
    ld l, h
    jr nc, jr_019_59b2

    jr @+$1a

    nop
    nop
    nop
    rrca
    nop
    rla
    rrca
    ld a, [hl]
    ld bc, $76a9
    rst $18
    ld h, b
    rst $38
    ld d, l
    cp a
    ld d, l
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    add sp, -$10
    inc h
    ld hl, sp-$6c
    ld a, b
    add $38
    ld h, l

jr_019_59a0:
    sbc d
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
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld b, b

jr_019_59b2:
    ccf
    ld a, a
    inc sp
    ld d, a
    dec l
    ccf
    inc c
    db $fd
    inc bc
    dec b
    ei
    ld a, [$fbfd]
    db $fc
    reti


    and [hl]
    ld sp, hl
    add $de
    ldh a, [$ffb8]
    ret nz

    ld hl, sp+$20
    cp h
    ret c

    cp b
    ret nz

    ldh [rP1], a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a

jr_019_59d6:
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add b
    ld a, a
    ld a, a
    nop
    ld a, h
    sub b
    ld d, h
    xor b
    ld b, h
    cp b
    ld l, h
    sub b
    ld a, d
    adc h
    ld [hl], a
    sbc b
    ld e, c
    adc [hl]
    adc [hl]
    nop
    jr jr_019_5a2b

    inc a
    ld a, h
    ccf
    ld a, a
    inc c
    ld a, $03
    nop
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld b, b
    ccf
    ld a, a
    ccf
    ld e, a
    or d
    ld [hl], $19
    rst $38
    ld bc, $f807
    ei
    db $fd
    ei
    db $fc
    reti


    and [hl]
    ld sp, hl
    add $de
    ld [hl], b
    ld hl, sp-$80
    db $fc
    sub b
    cp [hl]
    ld l, h
    cp h
    ld [hl], b
    ld c, b
    or b
    ld a, [hl]
    sub b
    ld d, h
    xor b
    ld b, h
    cp b
    ld l, h
    sub b
    ld a, d
    adc h

jr_019_5a2b:
    ld [hl], a
    sbc b
    ld e, c
    adc [hl]
    adc [hl]
    nop
    inc bc
    nop
    rrca
    inc bc
    rla
    inc c
    ld a, h
    inc bc
    cp a
    ld l, d
    rst $18
    ld [hl], l
    rst $18
    ld a, e
    cp a
    ld e, a
    ldh a, [rP1]
    ret z

    ldh a, [$ffa4]
    ld a, b
    ld d, h
    cp b
    di
    inc c
    db $fc
    ld [hl], e
    db $fc
    db $db
    ei
    xor h
    ld [hl], a
    rrca
    ei
    ld h, h
    jp c, Jump_019_6567

    dec de
    dec de
    inc c
    add hl, bc
    ld b, $6f
    ld [bc], a
    rst $30
    ld l, b
    ld a, l
    xor $bf
    ld a, d
    ld [hl], e
    adc h
    rst $28
    di
    inc sp
    call z, $d6ed
    rst $08
    inc sp
    ld a, l
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop

jr_019_5a7c:
    nop
    add b
    nop
    add b
    nop
    sbc d
    ld [hl], l
    db $e3
    inc e

jr_019_5a85:
    ld [hl], d
    inc c
    ld [hl], h
    ld [$0039], sp
    ld bc, $0000
    nop
    nop
    nop
    inc sp
    ret nz

    jr jr_019_5a85

    ld hl, sp+$30
    sub b
    ld h, b
    sub b
    ld h, b
    cp b
    ret nz

    ret z

    ld [hl], b
    ld [hl], b
    nop
    rra
    inc bc
    dec a
    ld [bc], a
    ld a, l
    inc sp
    ld h, d
    dec a
    dec a
    ld b, $04
    inc bc
    ld c, $01
    dec sp
    dec c
    cp [hl]
    rst $30
    rst $18
    dec a
    add hl, sp
    add $f7
    ld sp, hl
    sbc c
    ld h, [hl]
    or $6b
    rst $20
    jr jr_019_5a7c

    ld d, b
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    nop
    ldh [$ffc0], a
    and b
    ret nz

    ret nz

    nop
    ld a, l
    ld [hl-], a
    ld c, c
    ld a, $71
    ld c, $3a
    inc b
    dec e
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc d
    add sp, $04

jr_019_5ae4:
    ld hl, sp-$68
    ld [hl], b
    ld hl, sp+$30
    sub b
    ld h, b
    cp b
    ret nz

    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    cpl
    jr jr_019_5ae4

    rla
    ld a, a
    call c, $f6bf
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld c, b
    ldh a, [$ffa8]
    ld [hl], b
    and $18
    ld sp, hl
    and [hl]
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0103
    ld bc, $bf00
    db $eb
    ld a, a
    or a
    ld a, l
    sbc a
    xor [hl]
    ld de, $1ead

jr_019_5b2b:
    ldh a, [$ff8f]
    xor a
    rst $30
    rst $10
    jr z, jr_019_5b2b

    ld d, [hl]
    or $b8
    db $f4
    ld hl, sp-$04
    add sp, -$34
    jr nc, jr_019_5b7a

    call z, Call_000_30ce
    scf
    sbc $3d
    ld a, [bc]
    ld l, [hl]
    rla
    db $f4
    ld l, e
    jp nz, $657d

    ld a, [de]
    ccf
    nop
    ld [$0f07], sp
    nop
    db $fd
    add [hl]
    and [hl]

jr_019_5b54:
    ld b, b
    jr nz, @-$3e

    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    cpl
    jr jr_019_5b54

    rla
    ld e, a
    xor $bf
    db $db
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_019_5b77:
    or b
    ret nz

    ld l, b

jr_019_5b7a:
    ldh a, [$ffc6]
    jr c, jr_019_5b77

    halt
    ld sp, hl
    sbc $bf
    push de
    ld e, a
    cp e
    xor $3f
    ld h, a
    jr @+$31

    rra
    inc de
    rrca
    inc l
    inc de
    ld d, a
    dec sp
    cp $a8
    db $fc
    ret c

    ld [hl], h
    ld hl, sp-$1c
    jr @-$0f

    ldh a, [$ff9f]
    and $66
    sbc b
    rst $10
    cp [hl]
    rst $30
    ld l, h
    cp l
    ld h, e
    ld [hl], e
    rrca
    ld de, $360e
    jr jr_019_5c26

    inc c
    ld h, h
    jr c, jr_019_5be8

    nop
    db $dd
    ld h, [hl]
    halt
    add b
    adc b
    ldh a, [$ffc4]
    jr c, @+$3c

    inc c
    scf
    jr @+$1b

    ld c, $0e
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rDIV], a
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    jp z, $d577

    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l

jr_019_5be8:
    ld b, $0b
    rlca
    ld de, $000f
    rlca
    nop
    nop
    cp e
    db $f4
    sub $b8
    sub $bc
    call c, $e8b0
    ldh a, [$ffc4]
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    jp z, $d577

    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld de, $280f
    rra
    inc bc
    rrca
    cp d
    db $f4
    sub $b8
    sub $bc
    call c, $e8b0
    ldh a, [$ffc4]
    ld hl, sp+$0a
    db $fc
    ldh [$fff8], a
    nop
    nop
    rlca

jr_019_5c24:
    nop
    dec de

jr_019_5c26:
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    ret nc

    ld l, a
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fffd], a
    ld b, $fe
    ld a, a
    cp c

jr_019_5c44:
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f23
    rra
    nop
    daa
    rra
    inc bc
    rrca
    nop
    nop
    dec sp
    add $df
    ld a, [hl+]

jr_019_5c55:
    push de
    ld [$c03a], a
    ret nc

    jr nz, jr_019_5c24

    ldh a, [$ff80]
    ldh [rP1], a
    nop
    cp $7f
    cp c
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f23
    rra
    nop
    daa
    rra
    ld c, a
    ccf
    rlca
    rra
    dec sp
    add $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ret nc

    jr nz, jr_019_5c44

    ldh a, [$ffe4]
    ld hl, sp-$40
    ldh a, [$ff03]
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec e
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    call c, $c06b
    nop
    jr nc, jr_019_5c55

    ld [$c4f0], sp
    ld hl, sp-$1a
    ld hl, sp-$17
    or $c7
    ld a, $be
    ld b, b
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    add hl, bc
    rlca
    inc bc
    rlca
    nop
    nop
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld d, b
    and b
    ld h, b
    add b
    ret nc

    ldh [$ffe0], a
    ldh a, [rP1]
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    dec bc
    rlca
    db $10
    rrca
    inc bc
    rlca
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld d, b
    and b
    ld h, b
    add b
    ret nc

    ldh [rBCPS], a
    ldh a, [$ffc0]
    ldh [$ffc9], a
    ld [hl], a
    rst $10
    ld l, a
    or a
    ld e, b
    ld e, e
    rlca
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jp z, $f6f4

    ld hl, sp-$0a
    adc h

jr_019_5cf7:
    db $ec
    ldh a, [$ffe8]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    cp $7f
    cp c
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f23
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    add $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    nop
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    rla
    rrca
    ld [hl], $09
    ld e, e
    inc [hl]
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5cf7

    ld [$c6f0], sp
    ld hl, sp-$17
    or $e7
    cp $e2
    inc e
    xor h
    ld [hl], e
    xor a
    ld [hl], a
    sbc a
    ld h, h
    ld d, a
    cpl
    dec hl
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld b, b
    jp nc, $aaac

    ld [hl], h

jr_019_5d57:
    db $f4
    add sp, -$58
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    ld l, a
    rst $38
    ld c, a
    xor a
    ld e, b
    ld e, a
    rrca
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld c, [hl]
    adc $30
    ld h, h
    ret c

    add sp, -$30
    ld d, b
    and b
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
    inc c
    inc bc
    ld de, $230f
    rra
    ld h, a
    rra
    sub a
    ld l, a
    db $e3
    ld a, h
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5d57

    ret z

    ldh a, [$ffe8]
    ldh a, [$ffb8]
    ret nz

    ld c, [hl]
    or b
    push af
    ld c, $7d
    ld [bc], a
    inc hl
    inc e
    ld h, $1b
    rla
    dec bc
    ld a, [bc]
    dec b
    ld b, $01
    dec bc
    rlca
    ld c, $07
    dec sp
    sub $bf
    jp nc, $dab5

    ld a, [$d0f0]
    ldh [$ff60], a
    add b
    ret nc

    ldh [$fff0], a
    ldh [$ff3e], a
    rlca
    ld a, a
    ld [hl-], a
    ccf
    dec bc
    ld e, $03
    rlca
    nop
    ld a, [bc]
    rlca
    dec bc
    rlca
    rlca
    nop
    ldh a, [$ff60]
    ldh a, [rP1]
    ldh a, [$ff60]
    ldh [rP1], a
    ld d, b
    ldh [$ffe8], a
    jr nc, @-$46

    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0708
    ld [hl], c
    rrca
    adc e
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    ld h, h
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$1d
    ld a, a
    ld h, e
    inc e
    ld a, $01
    dec h
    ld a, [de]
    ld a, [hl+]
    rla
    rla
    dec bc
    ld a, [bc]
    dec b
    ld e, h
    inc bc
    or h
    ret z

    xor $10
    or l
    ld c, [hl]
    dec sp
    sub $bf
    jp nc, $daf5

    ld [$30f0], a
    ret nz

    rst $28
    ld e, a
    rst $38
    ld e, c
    ld a, a
    jr nc, jr_019_5e97

    scf
    ccf
    ld [$0f16], sp
    dec de
    rlca
    rrca
    nop
    ldh [$ffc0], a
    ld d, b
    ldh [$ffd0], a
    ld h, b
    ret nc

    and b
    and b
    ld b, b
    sub b
    ld h, b
    ldh [$ff80], a
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
    ld a, $00
    pop bc
    ld a, $11
    rrca
    inc hl
    rra
    daa
    rra
    daa
    rra
    ld [hl], l
    ld c, $e7
    ld a, b
    sbc c
    ld h, [hl]
    ld h, [hl]
    add hl, de
    ret c

    ldh [$ffa8], a
    ret nc

    adc $b0
    ld [hl], l
    adc [hl]
    swap [hl]
    ld e, a
    or d
    cp l
    jp c, $f2dd

    rla
    dec bc
    ld a, [bc]
    dec b
    ld c, $01
    dec bc
    rlca
    rrca
    rlca
    ld c, $07
    add hl, bc
    ld b, $1f
    ld b, $ea
    ldh a, [$ff90]
    ldh [$ff60], a
    add b
    ret nc

    ldh [rSVBK], a
    ldh [$fff0], a
    ld h, b
    ldh a, [rP1]
    ldh a, [$ffe0]
    dec a
    ld d, $1f
    nop
    ld c, $07

jr_019_5e97:
    dec bc
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ldh [$ff80], a
    and b
    ld b, b
    ret nc

    ld h, b
    or b
    ld h, b
    ld c, b
    or b
    ldh a, [$ff80]
    add b
    nop
    nop
    nop
    rla
    dec bc
    ld a, [bc]
    dec b
    ld c, $01
    rrca
    inc bc
    dec bc
    rlca
    ld c, $07
    add hl, bc
    ld b, $1f
    ld b, $3d
    ld d, $7f
    jr c, @+$3d

    rlca
    dec bc

jr_019_5ec8:
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ldh [$ff80], a
    and b
    ld b, b
    ret nc

    jr nz, jr_019_5ec8

    ld h, b
    ld c, b
    or b
    ld [hl], b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    ld [hl], e
    rrca
    sub a
    ld l, a
    rst $20
    ld a, a
    ld b, a
    jr c, jr_019_5ef2

jr_019_5ef2:
    nop
    ret nz

    nop
    ld [hl-], a
    ret nz

    jp z, $edf0

    ldh a, [c]
    rst $28
    ldh a, [c]
    ld l, e
    sub [hl]
    push de
    ld l, $7e
    ld bc, $364d
    ld c, a
    ld [hl], $2a
    dec d
    rra
    dec c
    ld e, $0d
    dec l
    ld e, $3b
    ld e, $72
    adc h
    ld a, h
    and b
    ld [hl], b
    and b
    add sp, -$50
    ret nc

    ldh [$ff60], a
    add b
    ret nz

    nop
    ld b, b
    add b
    ld a, $1f
    ld l, a
    inc e
    rst $28
    ld d, e
    rst $38
    ld l, [hl]
    ld l, a
    ld bc, $070b
    ld b, $03
    inc bc
    nop
    ldh [rLCDC], a
    ldh [$ffc0], a
    ret c

    and b
    add sp, $50
    or b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_5f50

    ld h, $1f
    cpl
    rra
    cpl
    rra
    ld l, l

jr_019_5f50:
    inc de
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffd1], a
    xor $cd
    cp $b7
    ld l, b
    db $dd
    ld h, d
    db $fc
    ld c, e
    cp l
    ld c, e
    ld l, a
    dec de
    rla
    rrca
    nop
    nop
    nop
    nop
    add $38
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld d, b
    and b
    nop
    nop
    nop
    nop
    ld h, e
    inc e
    ld a, $01
    dec h
    ld a, [de]

jr_019_5f87:
    ld a, [hl+]
    rla
    sub a
    set 1, e
    db $ed
    ld h, h
    ld l, h
    ld bc, $ed03
    ld d, $bb
    ld b, [hl]
    ccf
    jp nc, $d2bd

    di
    rst $18
    rst $20
    rst $38
    adc h
    adc [hl]
    db $10
    sbc b
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    rra
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_5f87

    ld [$c4f0], sp
    ld hl, sp-$1c
    ld hl, sp-$12
    ldh a, [$ffe1]
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5ff5:
    nop
    nop
    nop
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec de
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    jp z, $e077

    nop
    jr jr_019_5ff5

    add h
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp d
    db $f4
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    dec hl
    dec d
    add hl, sp
    ld d, $6f
    ld [hl-], a
    sub $b8
    sub $bc
    sbc $b0
    rst $28
    or $36
    ret z

    ld [$ced4], a
    inc [hl]
    ld a, e
    and [hl]
    ld a, e
    dec [hl]
    dec sp
    rlca
    dec c
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a
    inc e
    inc e
    nop
    nop
    nop
    cpl
    sub $8e
    ldh a, [$ffd8]
    jr nz, jr_019_60cc

    jr jr_019_60c8

    jr nc, jr_019_6096

    inc e
    inc e
    nop
    nop
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
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ff84], a
    ld hl, sp+$06
    ld hl, sp+$1f
    rrca
    rra
    rrca
    scf
    rrca
    ld c, e
    inc [hl]
    sbc h
    ld [hl], e
    and a
    ld a, b
    xor e
    halt
    ld e, a
    ld h, $05
    ld a, [$fa87]
    db $e3

jr_019_6096:
    cp $85
    ld a, d
    ld c, d
    or h
    cp $00
    xor $b4
    cp $b0
    add hl, hl
    ld b, $0e
    ld bc, $0c1b
    ld [hl], $0d
    dec hl
    ld d, $7f
    ld b, $76
    jr c, jr_019_60e8

    nop
    rst $08
    or [hl]
    ld a, $c0
    db $ec
    jr jr_019_60ee

    ret c

    ld [$7f34], a
    jr nc, jr_019_60fb

    ld c, $0e
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de

jr_019_60c8:
    rrca
    rla
    rrca
    dec de

jr_019_60cc:
    inc c
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    call nz, $e4f8
    ld hl, sp-$4e
    ld a, h
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ret


    halt
    push de
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, a

jr_019_60e8:
    rlca
    dec de
    rlca
    ld l, $19
    ld e, e

jr_019_60ee:
    dec [hl]
    ld l, c
    ld a, $cb
    or h
    sub $b8
    sub $bc
    cp $f0
    rst $28
    ld [hl], d

jr_019_60fb:
    ld a, [hl-]
    call z, $d6ed
    srl [hl]
    ld e, a
    ld a, [hl-]
    dec sp
    dec b
    inc de
    rrca
    add hl, de
    ld b, $36
    jr jr_019_6186

    inc c
    ld [hl], h
    jr c, jr_019_6148

    nop
    ld a, l
    xor [hl]
    xor [hl]
    ret nc

    call nz, $ccf8
    jr nc, @+$3c

    inc c
    scf
    jr @+$1f

    ld c, $0e
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    inc sp
    inc c
    ld c, a
    jr nc, @-$51

    ld [hl], d
    db $db
    ld h, [hl]
    rst $38
    ld b, a
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [$ffb4], a
    ld a, b
    db $f4
    ld [$a45a], sp
    db $ed
    or d
    db $fd
    ldh a, [c]
    xor a
    ld d, a
    ld [hl], a
    rra
    rla
    rrca
    dec bc

jr_019_6148:
    rlca
    inc e
    inc bc
    dec hl
    dec e
    ld e, c
    ld [hl], $7f
    ld a, [hl+]
    ei
    ld [hl], h
    or $7c
    db $f4
    ld a, b
    xor $f0
    rra
    and $ea
    call c, Call_000_36cd
    ld a, a
    xor d
    ld e, a
    add hl, sp
    dec sp
    rlca
    ld d, $0f
    add hl, de
    ld b, $36
    jr @+$7c

    inc c
    ld [hl], h
    jr c, jr_019_61a8

    nop
    cp l
    adc $ce
    ldh a, [rDIV]
    ld hl, sp-$34
    jr nc, jr_019_61b4

    inc c
    scf
    jr jr_019_619b

    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6186:
    nop
    nop
    nop
    rlca
    nop
    ld a, $01
    ld l, e
    scf
    rst $10
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a

jr_019_619b:
    or b
    ret nz

    add sp, -$10
    db $f4
    ld a, b
    rst $30
    ld c, a
    and a
    ld e, a
    or a
    ld e, a
    ld h, e

jr_019_61a8:
    rra
    ld e, b
    rlca
    rra
    ld bc, $1a35
    ld a, a
    ld [hl+], a
    or $78
    ldh a, [c]

jr_019_61b4:
    ld a, h
    or $fc
    ldh [c], a
    db $fc
    dec c
    ldh a, [c]
    db $fd
    jp nz, Jump_000_2cd7

    ld a, a
    and d
    ld d, a
    add hl, sp
    ccf
    dec de
    dec de
    rlca
    ld a, [de]
    rlca
    dec [hl]
    ld a, [de]
    ld a, d
    inc c
    ld [hl], h
    jr c, jr_019_6208

    nop
    or l
    adc $de
    db $ec
    call z, Call_000_0cf0
    ldh a, [$ffda]
    inc l
    scf
    jr jr_019_61fb

    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $003e
    pop bc
    ld a, $3c
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]

jr_019_61fb:
    sbc a
    ldh [$ff79], a
    add [hl]
    xor d
    ld d, a
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld a, b

jr_019_6208:
    add b
    ld d, h
    cp b
    add h
    ld a, b
    ld a, b
    add b
    sub $20
    dec b
    ld [bc], a
    ld a, [bc]
    rlca
    dec c
    ld b, $0f
    inc b
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $dd00
    dec sp
    xor a
    ld e, l
    or a
    ld l, a
    xor $b7
    db $db
    inc a
    ld a, a
    inc bc
    rst $18
    ld l, h
    cp e

jr_019_6230:
    add $3d
    and $f7
    adc [hl]
    ld l, [hl]
    sbc b
    db $f4
    ld e, b
    sbc $b4
    sbc h
    ld h, b
    ldh a, [rLCDC]
    ld c, b
    or b
    rst $38
    ld d, c
    ld a, a
    ld [hl], $36
    ld [$306c], sp
    ld [hl], h
    jr jr_019_6230

    ld a, b
    ld hl, sp+$00
    nop
    nop
    ret z

    ldh a, [$ffa4]
    ld a, b
    ld c, h
    jr nc, @+$3c

    inc c
    scf
    jr @+$1f

    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_019_6276

    ld c, a
    ccf
    sbc a
    ld a, a
    cp h
    ld a, a
    and a
    ld a, b
    sbc [hl]
    ld h, c
    nop
    nop
    add b
    nop
    ld l, [hl]

jr_019_6276:
    add b
    ld de, $b5ee
    adc $7a
    or h
    call c, Call_019_7430
    adc b
    ld a, [bc]
    dec b
    rla
    ld [$1d2a], sp
    ld [hl], $19
    ccf
    ld [de], a
    dec hl
    db $10
    ld sp, $1200
    ld bc, $5cab
    ld [hl], l
    xor $bf
    halt
    db $dd
    cp [hl]
    cp e
    db $dd
    ld l, a
    ldh a, [c]
    cp $0d
    rst $38
    or c
    and b
    ret nz

    ldh [$ffc0], a
    ldh [$ffc0], a
    ld a, b
    ret nz

    cp h
    ld d, b
    ld [hl], b
    and b
    ld h, b
    add b
    and b

jr_019_62b0:
    ld b, b
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_62bb:
    nop
    nop
    nop
    nop
    nop
    nop
    db $ed
    ld a, [de]
    ld a, e
    rst $20
    rst $10
    ld l, b
    ld l, h
    db $10
    ld [hl], h
    jr jr_019_62b0

    ld a, b
    ld hl, sp+$00
    nop
    nop
    db $10
    ldh [$ffc8], a
    ldh a, [$ffac]
    ld [hl], b
    ld a, d
    inc c
    scf
    jr jr_019_62f9

    ld c, $0e
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_019_62f9:
    jr nc, jr_019_62bb

    ld [$c4f0], sp
    ld hl, sp-$3a
    ld hl, sp+$72
    dec c
    xor a
    ld [hl], b
    call nc, $fd6b
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    jp hl


    or $87
    ld a, [hl]
    cp $00
    db $e4
    jr jr_019_637e

    ret c

    db $fc
    ret nz

    ld a, [hl]
    sbc h
    db $fc
    ld h, b
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0001
    nop
    nop
    ld e, d
    or h
    db $dd
    ld [hl-], a
    or c
    xor $e2
    call c, $10ee
    ld a, d
    adc h
    ldh a, [c]
    inc a
    inc a
    nop
    jp hl


    or $c7
    ld a, $be
    ld b, b

jr_019_6347:
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld e, h
    and b
    cp $1c
    dec de
    ld bc, $1936
    dec sp
    rra
    rra
    nop
    dec l
    ld d, $16
    dec bc
    rrca
    nop
    nop
    nop
    db $fc
    ldh a, [$ffb8]
    ret nz

    ld b, h
    cp b
    db $e4
    jr jr_019_636e

    ld hl, sp-$38
    jr nc, jr_019_639e

jr_019_636e:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    daa
    rra
    cpl
    rra
    dec a

jr_019_637e:
    inc bc
    ld d, e
    inc l
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_6347

    ld [$8ef0], sp
    ldh a, [$ffd1]
    xor $ed
    cp $fe
    nop
    xor a
    ld [hl], b
    call c, $fd6b
    ld c, e
    xor l
    ld e, e
    ld d, a
    rrca
    ld c, $01
    dec bc

jr_019_639e:
    ld b, $0e
    rlca
    inc b
    ld hl, sp-$3c
    jr c, jr_019_640a

    ret c

    add sp, -$30
    ld a, b
    add b
    ld hl, sp+$30
    sbc $e8
    inc l
    ldh a, [rTAC]
    nop
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    nop
    ld b, $01
    add hl, bc
    ld b, $0f
    nop
    ld bc, $d800
    ldh [$ffe8], a
    db $10
    adc b
    ldh a, [$ffc8]
    ldh a, [$ff90]
    ld h, b
    add sp, $30
    ret z

    ldh a, [$fff8]
    nop
    xor a
    ld [hl], b
    call c, $fd6b
    ld c, e
    xor l
    ld e, e
    ld d, a
    rrca
    inc c
    inc bc
    rra
    ld bc, $061b
    inc b
    ld hl, sp-$3c
    jr c, @+$66

    ret c

    add sp, -$30
    ld a, b
    add b
    cp $38
    call c, $28e8
    ldh a, [$ff0e]
    rlca
    rlca
    nop
    inc b
    inc bc
    inc bc
    nop
    ld b, $01
    add hl, bc
    ld b, $0f
    nop
    ld bc, $f800
    ldh [$ffe8], a
    db $10
    adc b
    ldh a, [$ffc8]
    ldh a, [$ff90]

jr_019_640a:
    ld h, b
    add sp, $30
    ret z

    ldh a, [$fff8]
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec e
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    call c, $c06b
    nop
    jr nc, @-$3e

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp-$12
    ldh a, [$ffcd]
    ld a, $b1
    ld c, [hl]
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    ld c, e

Call_019_6438:
    rlca

jr_019_6439:
    inc a
    inc bc
    ld l, a
    jr jr_019_6439

    ld e, a
    db $fd
    ld h, e
    adc $30
    ld h, h
    ret c

    add sp, -$30
    ld d, b
    and b
    ldh [$ff80], a
    ret nc

    jr nz, jr_019_64be

    add b
    ld [hl], b
    and b
    ld a, a
    nop
    ld [$0907], sp
    rlca
    rlca
    ld bc, $020d
    ld de, $1f0e
    ld bc, $0001
    or b
    ld b, b
    db $10
    ldh [rNR10], a
    ldh [$ffe0], a
    add b
    db $10
    ldh [$ffd0], a
    ld h, b
    or b
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
    ld bc, $fd00
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec sp
    rlca
    ld l, a
    jr jr_019_6505

    ld e, $fb

jr_019_648e:
    ld h, a
    db $fd
    ei
    adc $30
    ld h, h
    ret c

    add sp, -$30
    ld d, b
    and b
    and b
    ld b, b
    ret nc

    jr nz, jr_019_648e

    add b
    ld [hl], b
    and b
    ld bc, $0300
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    db $f4
    ld hl, sp-$09
    db $fd

jr_019_64b6:
    ld [hl], e
    ld a, e
    dec b
    dec c
    ld [bc], a
    ld de, $1f0e

jr_019_64be:
    ld bc, $0001
    or b
    ld b, b
    db $10
    ldh [rNR10], a
    ldh [$ffe0], a
    add b
    db $10
    ldh [$ffd0], a
    ld h, b
    or b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld [$0008], sp
    nop
    nop
    nop
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    rra
    nop
    scf
    jr jr_019_652b

    inc bc
    ei
    rra
    adc $30
    ld h, h
    ret c

    add sp, -$30
    ld d, b
    and b
    and b
    ld b, b
    ret nc

    jr nz, jr_019_64b6

    ret nz

    cp b
    ret nc

    ld c, a
    ld b, b
    rlca
    inc bc

jr_019_6505:
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ret c

    db $fc
    jp $fdfe


    db $fd
    ld a, d
    ld a, [hl]
    ld bc, $0708
    rrca
    nop
    nop
    nop
    ret c

    jr nz, @+$0a

    ldh a, [$ff88]
    ldh a, [$fff0]
    ret nz

    adc b
    ld [hl], b

jr_019_652b:
    add sp, $30
    ret c

    ldh [$ffe0], a
    nop
    inc bc
    nop
    inc c
    inc bc
    ld de, $230f
    rra
    daa
    rra
    ld [hl], a
    rrca
    or c
    ld a, [hl]
    add a
    ld a, b
    ret nz

    nop
    jr nc, jr_019_6505

    ret z

    ldh a, [$ffe8]
    ldh a, [$ffb8]
    ret nz

    ld c, [hl]
    or b
    push af
    ld c, $1b
    and $7a
    dec b
    ld h, $19
    daa
    dec de
    rla
    dec bc
    rrca
    nop
    rrca
    rlca
    ld e, $09
    dec c
    inc bc
    rst $38
    ld [de], a
    push af
    ld a, [$c0fa]

Jump_019_6567:
    ret nz

    add b
    ld b, b
    add b
    ldh a, [$ffc0]
    ld l, b
    sub b
    cp b
    ret nc

    dec b
    inc bc

jr_019_6573:
    dec c
    ld [bc], a
    rrca
    inc bc
    ld c, $03
    rlca
    nop
    dec bc
    ld b, $09
    rlca
    rrca
    nop
    ld e, b
    and b
    cp b
    ld [hl], b
    sub b
    ld h, b
    ldh a, [rNR41]
    or b
    ld b, b
    sbc b
    ld [hl], b
    ld hl, sp-$80
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

jr_019_659b:
    nop
    nop
    nop
    nop
    rrca
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    daa
    rra
    ld l, $1f
    ld [hl], c
    ld c, $b6
    ld a, c
    add [hl]
    ld a, c
    jr nc, jr_019_6573

    ret z

    ldh a, [$ffb8]
    ret nz

    ld c, [hl]
    or b
    push af
    ld c, $1b
    and $ff
    ld [de], a
    push af
    ld a, [$057b]
    daa
    dec de
    inc de
    dec c
    ld c, $01
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    ld b, $01
    ld a, [$c0c0]
    add b

jr_019_65d5:
    ret nz

    add b
    ret nz

    add b
    jr nc, jr_019_659b

    ld hl, sp-$20
    inc [hl]
    ret z

    call c, Call_000_02e8
    ld bc, $0205
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    nop
    dec b
    inc bc
    inc b
    inc bc
    rlca
    nop
    xor h
    ret nc

    ld e, h
    cp b
    add sp, -$30
    cp b
    ret nc

    ret c

jr_019_65fa:
    jr nz, @-$32

    jr c, jr_019_65fa

    ret nz

    ldh [rP1], a
    inc bc
    nop
    inc c
    inc bc
    ld de, $230f
    rra
    ld [hl], e
    rrca
    add a
    ld a, a
    or e
    ld a, h
    ld a, [hl]
    ld bc, $00c0
    jr nc, jr_019_65d5

    ret z

    ldh a, [$ffe8]
    ldh a, [$ffbe]
    ret nz

    ld c, l
    or [hl]
    ei
    ld b, $0f
    ldh a, [c]
    ld h, $19
    ld [hl], $0b
    ld a, a
    inc sp
    ld e, d
    dec [hl]
    scf
    ld [$061d], sp
    ld a, [hl-]
    rla
    inc e
    inc bc
    db $fd
    ld [de], a
    or $f8

jr_019_6635:
    ld hl, sp-$10
    ret nc

    ldh [rSVBK], a
    add b
    add sp, -$10
    or h
    ld c, b
    adc h
    ld a, b
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc b
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    cp h
    ld [hl], b
    inc [hl]
    ld hl, sp+$78
    ldh [$ffb8], a
    ld d, b
    ret c

jr_019_665a:
    and b
    db $ec
    jr jr_019_665a

    ret nz

    ret nz

    nop
    rlca
    nop
    dec de
    rlca
    inc l
    rra
    inc a
    rra
    ld a, [hl]
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp h
    ld a, a
    ret nz

    nop
    jr nc, jr_019_6635

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff9e]
    ldh [$fffd], a
    ld b, $3b
    add $41
    ld a, $3e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    ld e, c
    ld [hl], $74

jr_019_668e:
    dec hl
    db $dd
    ld h, [hl]
    rst $18
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]
    add sp, -$30
    inc [hl]

jr_019_669c:
    ret c

    ld e, h
    xor b
    halt
    call z, Call_019_69f6
    ld [hl], a
    rrca
    inc de
    inc c
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    sbc $2c
    inc e
    ldh [$ff90], a
    ld h, b
    ret z

    jr nc, jr_019_668e

    ld l, b
    ld l, b
    jr nc, jr_019_66ee

    nop
    nop
    nop
    ld b, c

jr_019_66c2:
    ld a, $3e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    dec [hl]
    ld a, [de]
    inc d
    dec bc
    dec e
    ld b, $df
    ld a, [hl+]
    push de
    ld [$c03a], a
    ldh a, [rNR41]

Jump_019_66d9:
    add sp, -$30
    ld e, b
    or b
    ld d, b
    and b
    ld [hl], b
    ret nz

    ld d, $09
    rla
    rrca
    inc de
    inc c
    ld d, $08
    ld [hl-], a
    inc e
    ld e, $08
    inc a

jr_019_66ee:
    db $10
    jr c, jr_019_66f1

jr_019_66f1:
    ret nc

    jr nz, jr_019_6704

    ldh [$ff90], a
    ld h, b
    ret nc

    jr nz, jr_019_66c2

    ld [hl], b
    ldh a, [rNR41]
    ld a, b
    db $10
    jr c, jr_019_6701

jr_019_6701:
    ld d, $09
    daa

jr_019_6704:
    rra
    inc sp
    inc c
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    ret nc

    jr nz, jr_019_669c

    ldh a, [$ff98]
    ld h, b
    ret z

    jr nc, jr_019_66ee

    ld l, b
    ld l, b
    jr nc, @+$32

    nop
    nop
    nop
    db $10
    rrca
    rrca
    nop
    jr jr_019_672e

    ccf
    ld e, $1f
    ld bc, $1e6d
    db $eb

jr_019_672e:
    halt
    rst $10
    ld h, c
    ld [hl], a
    adc d
    or l
    ld a, d
    adc $f0
    db $fc
    ld [$f0ff], sp
    ld d, [hl]
    xor a
    ld a, [de]
    db $ed
    ld e, l
    or b
    ret nz

    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$ffc0], a
    and b
    ret nz

    ld h, l
    ld [bc], a
    add hl, bc
    rlca
    inc c
    inc bc
    dec c
    ld b, $1c
    dec bc
    dec c
    ld b, $06
    nop
    nop
    nop
    or h
    ld c, b
    ldh [c], a
    db $fc
    and $18
    or d
    inc c
    or l
    ld a, [de]
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
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

jr_019_677c:
    nop
    nop
    nop
    nop
    nop
    db $10
    rrca
    ld l, a
    nop
    cp b
    ld h, a
    rst $38
    ld l, [hl]
    ld a, a
    ld de, $0e1d
    dec bc
    ld b, $07
    ld bc, $8a77
    or l
    ld a, d
    rst $08
    ldh a, [rIE]
    ld [$f3fd], sp
    ld d, a
    xor [hl]
    ld a, [de]
    db $ec
    ld e, h
    or b
    ret nz

    add b
    ret nz

    nop
    and b
    ret nz

    ldh [$ffc0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    dec b
    ld [bc], a
    inc c
    rlca
    ld c, $03
    dec e
    ld c, $0e
    nop
    or h
    ld c, b
    call nz, $e4f8
    jr jr_019_677c

    ld [$1caa], sp
    or [hl]
    jr @+$1f

    ld c, $0e
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    scf
    rrca
    ld c, e
    scf
    ld [hl], c
    ld a, $76
    add hl, sp
    ldh [rP1], a
    jr @-$1e

    call nz, $f4f8
    ld hl, sp-$04
    ldh [$ffa7], a
    ret c

    cp $03
    dec d
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
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, l
    dec sp
    dec a
    rlca
    dec e
    inc bc
    ld a, $19
    rra
    rlca
    ld [hl-], a
    dec c
    ld e, b
    daa
    sbc d
    ld l, l
    cp e
    ld l, l
    cp d
    ld l, l
    cp d
    ld l, l
    push af
    ld hl, sp-$08
    nop
    ld d, b
    and b
    cp b
    ld [hl], b
    db $ec
    sbc b
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop

jr_019_6827:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    ld h, d
    ld [hl], a
    rrca
    rla
    ld [$1835], sp
    ld [hl], e
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    sub [hl]
    ld l, h
    ld e, $ec
    inc a
    ret nz

    ret z

    ld [hl], b
    or h
    ret z

    add sp, $70
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    inc hl
    rra
    daa
    rra
    cpl
    rra
    jr z, jr_019_687e

    ld d, a
    jr z, jr_019_6862

jr_019_6862:
    nop
    ret nz

    nop
    jr nc, jr_019_6827

Call_019_6867:
    adc [hl]

Call_019_6868:
    ldh a, [$ffc9]
    or $ef
    or $e5
    cp $2a
    db $f4
    xor b
    ld [hl], a
    rst $08
    ld [hl], b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld [hl], a
    dec c
    ld c, e
    scf
    ld d, a

jr_019_687e:
    jr c, jr_019_68eb

    rra
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    sbc $6c
    xor h
    ret nc

    sub $38
    and [hl]
    ld a, b
    sbc [hl]
    ld h, e
    adc e
    ld [hl], h
    ld c, h
    inc sp
    ld a, e
    inc b
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    sbc e
    ld h, a
    ld sp, hl
    add $f1
    adc $d2
    inc l
    sbc $20
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    reti


    and $77
    dec bc
    dec de
    dec c
    dec de
    dec c
    inc de
    dec c
    rra
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    xor $d0
    ret c

    or b
    ret c

    or b
    ret z

    or b
    ld hl, sp-$30
    ldh a, [$ffc0]
    and b
    ret nz

    ret nz

    nop
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    db $fc
    ld h, b
    sbc $6c
    xor [hl]
    call nc, Call_000_38d6

jr_019_68df:
    xor [hl]
    ld [hl], b
    sbc [hl]
    ld h, e
    adc a
    ld [hl], b
    ld c, b
    scf
    scf
    ld [$255a], sp

jr_019_68eb:
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    ld sp, hl
    add $f1
    adc $d2
    inc l
    db $ec
    db $10
    ld e, d
    and h
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    sbc e
    ld h, a
    ld [hl], a
    dec bc
    dec de
    dec c
    rla
    add hl, bc
    rrca
    ld bc, $0305
    inc b
    inc bc
    inc bc
    nop
    reti


    and $ee
    ret nc

    ret c

    or b
    add sp, -$70
    ldh a, [$ff80]
    and b
    ret nz

    jr nz, jr_019_68df

    ret nz

    nop
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    cp $64
    sbc $6c
    xor h
    ret nc

    sub $38
    xor [hl]
    ld [hl], b
    sbc [hl]
    ld h, e
    adc e
    ld [hl], h
    ld c, b
    scf
    cp a
    ld b, b
    sbc $65
    db $dd
    ld h, [hl]
    sbc e
    ld h, a
    ld [hl], a
    dec bc
    ld sp, hl
    add $f1
    adc $d2
    inc l
    db $fd
    ld [bc], a
    ld a, c
    and [hl]
    cp c
    ld h, [hl]
    reti


    and $ee
    ret nc

    dec de
    dec c
    dec de
    dec c
    inc hl
    dec e
    cpl
    dec de
    ccf
    dec de
    dec e
    inc bc
    inc bc
    nop
    nop
    nop
    ret c

    or b
    ret c

    or b
    call nz, $f4b8
    ret c

    db $fc
    ret c

    cp b
    ret nz

    ret nz

    nop
    nop
    nop
    sbc [hl]
    ld h, e
    adc e
    ld [hl], h
    ld c, b
    scf
    scf
    ld [$205f], sp
    cp [hl]
    ld b, l
    db $dd
    ld h, [hl]
    db $db
    ld h, a
    ld sp, hl
    add $f1
    adc $d2
    inc l
    ld l, h
    sub b
    ld a, [$7d04]
    and d
    cp c
    ld h, [hl]
    reti


    and $9f
    ld h, e
    ld [hl], e
    dec c
    dec de
    dec c
    rla
    add hl, bc
    rrca
    inc bc
    rlca
    inc bc
    dec b
    inc bc
    inc bc
    nop
    ld sp, hl
    add $ce
    or b
    ret c

    or b
    add sp, -$70
    ldh a, [$ffc0]
    ldh [$ffc0], a
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    rlca
    nop
    jr jr_019_69be

    ld l, $1f
    ccf
    rra
    cpl
    rra
    ld a, l

jr_019_69be:
    inc bc
    or e
    ld l, h
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ff91], a
    xor $cd
    cp $c6
    jr c, jr_019_69d5

    ld bc, $0103

jr_019_69d5:
    ld [bc], a
    ld bc, $0001
    rrca
    nop
    dec e
    ld a, [bc]
    rla
    add hl, bc
    rla
    rrca
    ld [hl], l
    adc d
    ld [hl], d
    xor l
    push af

jr_019_69e6:
    cpl
    cp a
    ld l, a
    db $dd
    ld a, $f3
    adc h
    ld e, [hl]
    add l
    db $fd
    inc bc
    ldh a, [rP1]
    sub b
    ld h, b
    ld d, b

Call_019_69f6:
    and b
    and b
    ld b, b
    ld [hl], b
    add b
    ld hl, sp+$70
    ld [hl], b
    and b
    and b

jr_019_6a00:
    ret nz

    rra
    rrca
    rra
    dec c
    rra
    dec c
    rra
    dec c
    cpl
    rra
    ld a, $1f
    dec l
    ld e, $1e
    nop
    or e
    ld e, a
    ld a, a
    sbc b
    cp d
    push bc
    rst $38
    ld [$ef74], a
    ld a, c
    or $7f
    ldh a, [$fff7]
    ld l, a
    ld d, b
    and b
    sub b
    ld h, b
    db $10
    ldh [$ff78], a
    add b
    db $ec
    jr nc, jr_019_69e6

    ld d, h
    ld sp, hl
    ld d, $2d
    jp nc, Jump_019_6f96

    ret c

    scf

jr_019_6a35:
    or a
    ld e, b
    cp b
    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr c, jr_019_6a3f

jr_019_6a3f:
    nop
    nop
    dec [hl]
    jp nz, $b06b

    reti


    jr nc, jr_019_6a00

    ld d, b
    cp b
    ld d, b
    add sp, $10
    jr nc, jr_019_6a4f

jr_019_6a4f:
    nop
    nop
    ld b, $03
    ld b, $03
    rra
    nop
    dec sp
    dec d
    ld l, $13
    cpl
    ld e, $3f
    ld e, $3f
    dec de
    db $eb
    inc d
    push hl
    ld e, d
    ld [$ff5f], a
    ld e, [hl]
    cp e
    ld a, h
    ld h, a
    sbc d
    ld a, [hl]
    adc l
    db $dd
    inc hl
    ldh [rP1], a
    jr nz, jr_019_6a35

    and b
    ld b, b
    ldh a, [rP1]
    ld hl, sp-$10
    ldh a, [rP1]
    ldh [$ffc0], a
    and b
    ret nz

    ccf
    dec de
    ccf
    dec de
    ld e, a
    ccf
    ld a, h
    ccf
    ld e, d
    dec a
    dec a
    nop
    rlca
    nop
    dec c
    ld b, $fd
    adc [hl]
    ld a, [$decd]
    pop hl
    rst $38
    ld [$eff4], a
    ld sp, hl
    and $7e
    pop hl
    or a
    ld l, a
    ret nc

    jr nz, jr_019_6ab4

    ldh [rNR10], a
    ldh [$ff60], a
    add b
    ret c

    ld h, b
    ld h, h
    cp b
    ld a, d
    and h
    scf
    ret nz

    xor l
    ld e, [hl]
    rst $38

jr_019_6ab4:
    jr jr_019_6ada

    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    db $fc
    add l
    ld a, d
    ld a, e
    ld b, $17
    ld a, [bc]
    rla
    ld a, [bc]
    dec e
    ld [bc], a
    ld b, $00
    nop
    nop
    rlca
    nop
    jr jr_019_6adc

    ld h, $1f
    cpl
    rra
    cpl

jr_019_6ada:
    rra
    ld a, l

jr_019_6adc:
    inc bc
    or e
    ld l, h
    db $dd
    ld h, d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ff91], a
    xor $cd
    cp $c6
    jr c, jr_019_6b6c

    add b
    inc bc
    ld bc, $0102
    ld bc, $0100
    nop
    rrca
    nop
    dec e
    ld a, [bc]
    rla
    add hl, bc
    rla
    rrca
    ld [hl], d
    xor l
    push af
    cpl
    cp a
    ld l, a
    ld e, l
    ld a, $f3
    inc c
    rst $18
    add [hl]

jr_019_6b0d:
    ld l, l
    add e
    db $db
    daa
    sub b
    ld h, b
    ld d, b
    and b
    and b
    ld b, b
    ld h, b
    add b
    ldh a, [$ff60]
    ld a, b
    or b
    or b
    ret nz

    ld d, b
    and b
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $71ee
    ret c

    ld h, a
    push af
    ld a, [bc]
    db $d3
    cp h
    push hl
    sbc d
    ei
    push hl
    rst $38
    db $e3
    ei
    rst $30
    ld a, h
    add b
    ld h, [hl]
    sbc b
    db $db
    ld h, b
    ldh [rLCDC], a
    ld h, b
    add b
    jr nc, jr_019_6b0d

    inc l
    ret nc

    inc [hl]
    ret c

    ld a, a
    ld a, $5e
    dec a
    ld l, a
    inc e
    ld e, d
    inc l
    jp c, $ac6c

    ld e, b
    db $e4
    jr @+$3e

    nop
    add hl, de
    and $e7
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6b6c:
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    cp l
    ld a, a
    ld sp, hl
    ld a, a
    or l
    ld a, e
    ld a, e
    ld bc, $7ecd

jr_019_6b83:
    cp $61
    add sp, $17
    db $fd
    xor d
    db $d3
    cp h
    and $d9
    rst $38
    ret nz

    call c, Call_019_40bf
    add b
    ld b, b
    add b
    ld b, b
    add b
    rst $20
    nop
    cp d
    call nz, $58e4
    ld hl, sp+$40
    or b
    ld b, b
    sub [hl]
    ld l, a
    ret c

    scf
    or a
    ld e, b
    ld l, d
    inc e
    ld [hl-], a
    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    jr z, jr_019_6b83

    ld e, b
    or b
    add sp, $30
    or b
    ld h, b
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    inc c
    inc bc
    rlca
    ld bc, $040b
    ld a, h
    add b
    and h
    ld e, b
    ld d, a
    add sp, -$02
    call nz, $b87c
    db $fc
    nop
    or h
    ld a, b
    ld [$3f74], a
    nop
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5e
    dec a
    ld a, [hl]
    dec a
    ld a, l
    ld [hl], $7e
    scf
    ld a, a
    scf
    and $79
    call c, Call_019_6867
    rla
    db $fd
    ld a, [hl+]
    ld d, e
    cp h
    db $e4
    dec de
    ld a, h
    add a
    xor $df
    ld b, b
    add b
    ld b, b
    add b
    ld a, h
    add b
    and $18
    db $db
    ldh [$ffe0], a
    ld b, b
    ld a, b
    add b
    ld h, h
    sbc b
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or [hl]
    ld a, c
    ld a, l
    ld [bc], a
    dec bc
    dec b
    dec c
    inc bc
    inc b
    inc bc
    inc bc

Call_019_6c20:
    nop
    ldh a, [$ffef]
    rst $38
    ldh a, [rIE]
    rst $38
    ld l, a
    ldh a, [$ff90]
    ldh [$ff60], a
    add b
    add b
    nop
    nop
    nop
    sbc h
    ld h, b
    ldh a, [c]
    db $fc
    ld h, d
    sbc h
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $2e3c


    rra
    ccf
    rra
    cpl
    rra
    ld a, l
    inc bc
    or e
    ld l, h
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    db $10
    ldh [$ff9e], a
    ldh [$ff91], a
    xor $cd
    cp $c6
    jr c, @+$7e

    add b
    and h
    ld e, b
    ld d, a
    add sp, $0d
    inc bc
    ld a, [bc]
    ld bc, $0001
    nop
    nop
    ccf
    nop
    ld [hl], a
    ld a, [hl+]
    ld e, l
    ld h, $5e
    dec a
    rst $38
    ld a, b
    rst $28
    di
    sbc a
    ld l, b
    ei
    scf
    halt
    adc a
    rst $20
    ld a, b
    ret c

    ld h, a
    add sp, $17
    ret nz

    add b
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld e, a
    add b
    ld h, d
    sbc h
    ld c, h
    or b
    ccf
    ld e, $3e
    dec de
    ccf
    dec de
    ccf
    dec de
    ld e, a
    ccf
    ld a, h
    ccf
    ld e, e
    inc a
    dec a
    nop
    ld a, $d5
    jp hl


    ld e, $32
    call $e3ff
    ld hl, sp-$09
    rst $38
    ld hl, sp+$67
    rst $38
    rst $28
    ld [hl], b
    ld hl, sp+$20
    ld a, b
    and b
    inc a
    ret nz

    ld [hl-], a
    call z, $b04e
    db $fd
    ld a, [hl]
    or c
    adc $cf
    nop
    dec l
    ld d, $2d
    ld d, $56
    inc l
    ld [hl], d
    inc c
    ld e, $00
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
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    sub a
    ld l, a

jr_019_6cef:
    pop bc
    ld a, [hl]
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fff5], a
    ld c, $bf
    ld a, a
    ld e, c
    ld a, $3e
    ld bc, $1f23
    rra
    nop
    ld a, a

jr_019_6d0c:
    rrca
    ld sp, hl
    halt
    ld l, h
    dec de
    dec sp
    add $df
    ld a, [hl+]
    push de
    ld [$c03b], a
    pop af
    jr nz, jr_019_6d0c

    ret nz

    jr c, jr_019_6cef

    ld l, b
    or b
    ld e, l
    ld h, $56
    add hl, hl
    ld d, a
    cpl

jr_019_6d27:
    dec hl
    inc d
    ld e, l
    inc hl
    cp a
    ld b, a
    rst $10
    ld l, a
    sbc $6f
    ld [hl], h
    ret z

    call nc, $d428
    add sp, -$14
    db $10
    cp d
    call nz, $e2fd
    jp hl


    or $f9
    or $9e
    ld l, l
    ld a, d
    dec c
    rra
    ld [$081c], sp
    inc d
    ld [$081c], sp
    jr jr_019_6d4f

jr_019_6d4f:
    nop
    nop
    cp c
    halt
    ld e, [hl]
    or b
    jr c, jr_019_6d27

    cp b
    ld d, b
    add sp, $10
    cp b
    db $10
    jr jr_019_6d5f

jr_019_6d5f:
    nop
    nop
    cp a
    ld a, a
    ld e, c
    ld a, $3e
    ld bc, $1f23
    ld a, a
    nop
    pop hl
    ld a, a
    ld a, a
    ld e, $2c
    dec de
    ld e, l
    ld h, $56
    add hl, hl
    ld d, a
    cpl
    dec hl
    inc d
    ld e, l
    inc hl
    cp a
    ld b, a
    rst $10
    ld l, a
    rst $18
    ld l, a
    ld [hl], h
    ret z

    call nc, $d428
    add sp, -$14
    db $10
    cp d
    call nz, $e2fd
    jp hl


    or $79
    or $9f
    ld l, [hl]
    ld a, [hl]
    dec c
    ld e, $09
    ld d, $09
    dec e
    ld [$000c], sp
    nop
    nop
    nop
    nop
    ld a, c
    or [hl]
    cp $30
    cp b
    db $10
    xor b
    db $10
    cp b
    db $10
    or b
    nop
    nop
    nop
    nop
    nop
    cp a
    ld a, a
    ld e, c
    ld a, $3e
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, sp
    ld d, $2c
    dec de
    dec a
    ld b, $56
    add hl, hl
    ld d, a
    cpl
    ld c, e
    scf
    cpl
    db $10
    ld d, l
    dec hl
    cp a
    ld b, a
    rst $10
    ld l, a
    ld a, b
    ret nz

    call nc, $d428
    add sp, -$5c
    ret c

    db $ec
    db $10
    cp d
    call nz, $e2fd
    ld l, c
    or $df
    ld l, [hl]
    sbc [hl]
    ld l, l
    halt
    dec c
    ld a, [bc]
    dec b
    dec bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, c
    or [hl]
    ld a, c
    or [hl]
    xor $30
    ret nc

    jr nz, jr_019_6e4a

    and b
    and b
    nop
    nop
    nop
    nop
    nop
    cp a
    ld a, a
    ld e, c
    ld a, $3e
    ld bc, $073b
    ld a, a

jr_019_6e0a:
    jr c, @+$01

    ld a, a
    ld a, a
    inc e
    inc a
    inc bc
    ld e, l
    ld h, $56
    add hl, hl
    ld d, a
    cpl
    cpl
    db $10
    ld e, e
    daa
    or a
    ld c, a
    rst $18
    ld l, a
    sbc $6f
    ld [hl], h
    ret z

    call nc, $d428
    add sp, -$14
    db $10
    jp c, $ede4

    ldh a, [c]
    ld sp, hl
    or $f9
    or $9e
    ld l, a
    halt
    dec c
    ld d, $0d
    ld [de], a
    dec c
    ld a, [de]
    dec c
    ld a, $19
    dec a
    jr jr_019_6e59

    nop
    ld sp, hl
    halt
    ld l, [hl]
    or b
    ld l, b
    or b
    ld c, b

jr_019_6e48:
    or b
    ret c

jr_019_6e4a:
    jr nc, jr_019_6e48

    jr jr_019_6e0a

    jr jr_019_6e68

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6e59:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6e68:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_019_6f96:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_6fd5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    ld a, l
    inc bc
    or d
    ld l, l
    rst $18
    ld h, b
    db $f4
    ld c, e
    ret nz

    nop
    jr nc, jr_019_6fd5

    ld [$c4f0], sp
    ld hl, sp-$39
    ld hl, sp-$18
    rst $30
    add $3f
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_702b:
    add b
    nop
    add b
    nop
    nop
    nop
    cp l
    ld c, e
    ld l, l
    dec de
    ld e, a
    cpl
    ld a, e
    scf
    adc $31
    cp a
    ld b, a
    sub e
    ld l, h
    ld a, l
    ld a, [bc]
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld d, b
    and b
    and b
    ld b, b

jr_019_704b:
    ldh [rP1], a
    ret nc

    ldh [$ff6c], a
    ldh a, [$ff2d]
    ld d, $2c
    rra
    inc d
    rrca
    dec d
    ld a, [bc]
    dec de
    dec b
    inc sp
    inc e
    ccf
    inc bc
    rlca
    nop
    adc $3c
    cp d
    inc c
    adc h
    nop
    ret nz

    nop
    jr nz, jr_019_702b

    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_704b

    ld [$c4f0], sp
    ld hl, sp-$39
    ld hl, sp+$72
    dec c
    xor a
    ld [hl], b
    rst $10
    ld l, a
    ei
    ld c, h
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld e, $09
    add sp, -$09
    add [hl]
    ld a, a

jr_019_70a5:
    rst $38
    nop
    db $e4
    sbc b
    or h
    add sp, -$44
    ret nz

    ld a, [hl]
    sbc h
    db $ec

Jump_019_70b0:
    ld d, b
    dec de
    inc c
    inc c
    inc bc
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0003
    nop
    nop
    ld e, d
    or h
    reti


    ld [hl], $d1

jr_019_70c6:
    xor $ba
    call nz, Call_000_18f6
    ld a, [hl-]
    call z, Call_000_3cf2
    ld a, h
    nop
    rlca
    nop
    jr jr_019_70dc

    daa
    rra
    cpl
    rra
    scf
    jr jr_019_7144

jr_019_70dc:
    rla
    cp a
    ld h, b
    rst $10
    ld l, l
    ret nz

    nop
    jr nc, jr_019_70a5

    ld [$c8f0], sp
    ldh a, [$ff66]
    ld hl, sp-$77
    halt
    ei
    ld b, $d5
    ld l, d
    db $db
    ld l, l
    xor e
    ld e, l
    ei
    rrca
    cp a
    nop
    ld [hl], a
    ld a, [hl-]
    ld e, e
    ccf
    ccf
    nop
    ld e, $05
    xor [hl]
    ld [hl], b
    xor h
    ld a, b
    cp h
    ldh [$ff5e], a
    db $ec
    db $e4
    jr jr_019_70c6

    ld e, h
    sub a

jr_019_710e:
    ld l, [hl]
    ei
    ld b, [hl]
    rla
    dec bc
    rla
    rrca
    rla
    rrca
    dec de
    inc b
    ld [hl], $18
    ld a, d
    inc c
    ld [hl], h
    jr c, jr_019_7158

    nop
    ld d, [hl]
    and b
    sub b
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call c, $7460
    jr c, jr_019_7168

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    nop
    nop
    nop

jr_019_7144:
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    ld c, $f0
    add hl, bc
    or $0f
    or $2f
    rra
    ld d, a
    jr z, jr_019_710e

    ld h, a
    rst $08

jr_019_7158:
    ld [hl], b
    rst $10
    ld l, a
    cp l
    ld b, e
    ld d, a
    rrca
    dec hl
    inc d
    push bc
    cp $0a
    db $f4
    sub h
    ld l, b
    rst $30

jr_019_7168:
    ld [$ebde], sp
    ld a, a
    add e
    rst $10
    db $ec
    xor h
    ld e, b
    ld a, $13
    dec sp
    rra
    inc de
    inc c
    rra
    nop
    ld [hl], $18
    ld a, d
    inc c
    ld [hl], h
    jr c, jr_019_71b8

    nop
    ld hl, sp+$10
    sub b
    ld h, b
    db $10
    ldh [$ffb0], a
    ld b, b
    add sp, $30
    call c, $7460
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    ld e, $0f
    rra
    rrca
    rla
    rrca
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc b
    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa05]
    pop bc
    cp $2b
    inc d
    ld e, h
    inc sp
    xor a
    ld [hl], b
    sbc e

jr_019_71b8:
    ld h, [hl]
    ld e, a
    ld h, $2b
    ld b, $15
    dec bc
    ccf
    ld [$7a85], sp
    ld c, d
    or h
    or $08
    xor $b4
    cp $b0
    rst $28
    or [hl]
    sub $e8
    db $fc
    ld [$0a35], sp
    daa
    ld a, [de]
    ld a, $19
    dec [hl]
    ld a, [de]
    dec de
    ld b, $0e
    dec b
    ld c, $07
    rrca
    nop
    ld d, h
    xor b
    ldh a, [c]
    inc l
    ld a, $cc
    sub $2c
    cp h
    ld b, b
    db $e4
    jr c, @-$46

    nop
    nop
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
    dec c
    inc bc
    rla
    rrca
    ld e, $0f
    nop
    nop
    inc h
    inc h
    nop
    nop
    ld bc, $e001
    nop
    sbc b
    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$0f1f]
    rla
    rrca
    dec hl
    inc d
    ld e, h
    inc sp
    xor a
    ld [hl], b
    sbc e
    ld h, a
    ld e, [hl]
    ld hl, $062b
    dec b
    ld a, [$fec1]
    add l
    ld a, d
    ld c, d
    or h

jr_019_7229:
    or $08
    xor $f4
    cp [hl]
    ret nz

    rst $28

jr_019_7230:
    or [hl]
    dec d
    dec bc
    rra
    ld [$0916], sp
    dec h
    ld a, [de]
    ccf
    ld a, [de]
    ld [hl], $19
    ld e, $07
    rrca
    nop
    sub $e8
    db $fc
    ld [$c836], sp
    jp nc, $be2c

    ld c, h
    or $2c
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    dec l
    inc de
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_7229

    ld [$0ef0], sp
    ldh a, [$ff8d]
    or $e1
    cp $77
    ld [$72ad], sp
    sbc $6b
    sbc $6b
    xor a

jr_019_727a:
    ld e, a
    ld d, [hl]
    rrca
    inc c
    inc bc
    rlca
    ld [bc], a
    adc $30
    jr c, @-$3e

    ret z

    jr nc, jr_019_7230

    ret nc

    ret nc

    and b
    cp b
    ld b, b
    db $fc
    jr c, jr_019_7308

    ret nc

    ld c, $01
    dec e
    rrca
    rla
    inc c
    inc c
    inc bc
    ld b, $01
    ld [$0f07], sp
    nop
    ld bc, $b800
    ret nz

    ret z

    or b
    adc b
    ld [hl], b
    ret z

    jr nc, jr_019_727a

    ld h, b
    add sp, $30
    ret z

    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    dec l
    inc de
    ld b, b
    ld b, b
    inc b
    inc b
    ret nz

    nop
    ld sp, $08c1
    ldh a, [$ff0e]
    ldh a, [$ff8d]
    or $e1
    cp $77
    ld [$77a8], sp
    rst $10
    ld l, h
    rst $18
    ld l, e
    xor a
    ld e, a
    ld d, a
    rrca
    inc a
    inc bc
    dec sp
    ld de, $18e6
    sbc h
    ld h, b
    ld h, h
    sbc b
    ld d, h
    add sp, -$18
    ret nc

    ld e, h
    and b

jr_019_72ed:
    cp $1c
    cp h
    ret z

    inc l
    dec de
    add hl, de
    rrca
    rla
    ld [$000f], sp
    ld bc, $0200
    ld bc, $0003
    nop
    nop
    ld e, d
    db $e4
    and d
    call c, $38c6
    ld [hl], c

jr_019_7308:
    sbc [hl]
    sbc l
    ld l, d
    dec a
    add $fa
    inc e
    inc e
    nop
    nop

jr_019_7312:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    inc a
    rra
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
    jr nc, jr_019_72ed

    ld [$08f0], sp
    ldh a, [$ff7e]

jr_019_7332:
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp $7f
    cp c
    ld a, [hl]
    ld a, [hl]
    ld bc, $6ff0
    ld a, a
    rlca
    ld c, $f0
    adc l
    or $fb
    ld b, $3d
    jp z, Jump_000_2ad5

jr_019_734b:
    jp c, Jump_000_30e0

    ret nz

    db $ec
    ret nz

    or l
    ld l, d
    db $e4
    ld a, e
    ld l, l
    ld d, $16
    add hl, bc
    dec hl
    rla
    scf
    ld [$3c72], sp
    inc a

jr_019_7360:
    nop
    ld e, d
    xor h
    ld c, [hl]
    cp h
    ld a, h
    ret nc

    ret nc

    jr nz, jr_019_7312

    ret nc

    ret c

    jr nz, jr_019_7332

    ld a, b
    ld a, b

jr_019_7370:
    nop
    inc b
    inc b
    ld b, b
    ld b, b
    nop
    nop
    rlca
    nop
    sbc e
    add a
    ld l, $1f
    inc a
    rra
    ld a, [hl]
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_734b

    ld [$08f0], sp
    ldh a, [$ff0e]
    ldh a, [$ffaf]
    ld e, a
    pop de
    ld l, [hl]
    cp $7f
    cp c
    ld a, [hl]
    ld a, [hl]
    ld bc, $6ff0
    ld a, a
    rlca
    ld d, l
    ld a, [hl-]
    adc l
    or $fb
    ld b, $3d
    jp z, Jump_000_2ad5

    jp c, Jump_000_34e0

    ret z

    db $e4
    ret c

    ld e, b
    or b
    inc h
    dec de
    dec e
    ld b, $16
    add hl, bc
    dec sp
    rla
    daa
    jr jr_019_740e

    inc l
    ld [hl], h
    jr c, jr_019_73f8

    nop
    ld d, b
    and b
    ld [hl], b
    ret nz

    ret nc

    jr nz, jr_019_7370

    ret nc

    ret z

    jr nc, jr_019_7360

    ld l, b
    ld h, h
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec de
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr @-$1e

    add h
    ld hl, sp-$1c
    ld hl, sp-$4e
    ld a, h
    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    jp z, $d577

jr_019_73f8:
    ld l, [hl]
    or l
    ld e, [hl]
    ld e, l
    ld b, $0b
    rlca
    ld d, $09
    ld b, l
    cp d
    db $fd
    ld [bc], a
    cp d
    db $f4
    sub $b8
    sub $bc

jr_019_740b:
    sbc $b0
    rst $28

jr_019_740e:
    or $36
    ret z

    ld [hl], h
    dec bc
    xor a
    ld [hl], b
    bit 6, a
    rst $10
    ld l, a
    or a
    ld e, b
    ld e, a
    rlca
    dec bc
    rlca
    ld d, $09
    ld b, l
    cp d
    db $fd
    ld [bc], a
    ld a, [$f6f4]
    ld hl, sp-$0a
    adc h
    cp $f0
    rst $28
    or $36

Call_019_7430:
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
    dec e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_019_740b

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$32
    ldh a, [$ff72]
    dec c
    xor a
    ld [hl], b
    db $dd
    ld l, e
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    ld b, $01
    ld h, c
    cp $cd
    ld a, $be
    ld b, b
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld [hl], b
    add b
    ld hl, sp+$50
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
    inc c
    inc bc
    inc de
    rrca
    rla
    rrca
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
    jr nc, @-$3e

    adc b
    ldh a, [$ffc4]
    ld hl, sp+$1d
    inc bc
    ld [hl], d
    dec c
    xor a
    ld [hl], b
    db $dd
    ld l, e
    db $fd
    ld c, e
    xor l
    ld e, e
    ld e, a
    rrca
    dec bc
    rlca
    adc $f0
    ld h, c
    cp $cd
    ld a, $be
    ld b, b
    call nz, Call_019_6438
    ret c

    add sp, -$30
    ld [hl], b
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
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc bc
    nop
    dec b
    inc bc
    dec c
    inc bc
    ld a, [bc]
    dec b
    add hl, sp
    ld b, $46
    add hl, sp
    sbc c
    halt
    xor l
    halt
    ld a, e
    ldh [$ffdd], a
    ld a, [hl-]
    cp $cc
    rst $38
    and $67
    db $db
    swap l
    sub d
    ld l, l
    daa
    ret c

    nop
    nop

jr_019_74e3:
    add b
    nop

jr_019_74e5:
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    nop
    or [hl]
    ld l, l
    ld e, a
    ld hl, $063f
    dec l
    ld d, $16
    add hl, bc
    add hl, de
    rlca
    ld [de], a
    dec c
    dec sp
    dec e
    db $ed
    sbc [hl]
    pop de
    xor [hl]
    xor [hl]

jr_019_7506:
    ld d, b
    db $fc
    ld b, b
    call c, $ee60
    or h
    ld a, a
    or [hl]
    xor [hl]
    ld d, b
    inc sp
    inc e
    ld l, c
    scf
    push hl
    dec de
    rst $30
    ld l, b
    ld h, l
    jr jr_019_7538

    nop
    ld bc, $0100
    nop
    jr nc, jr_019_74e3

    jr nz, jr_019_74e5

    and b
    ret nz

    or b
    ld b, b
    ret z

    ldh a, [$ffc8]
    jr nc, jr_019_7506

    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7538:
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $00
    ld c, $07
    nop
    jr jr_019_754c

    daa
    rra
    cpl
    rra
    cpl
    rra
    ld l, l

jr_019_754c:
    inc de
    or a
    ld l, b
    db $dd
    ld h, d
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, jr_019_75dc

    add b
    ld [$081c], sp
    inc e
    inc c
    jr jr_019_7574

    jr c, @+$16

    ld a, [hl-]
    inc d
    ld a, d
    ld [hl], e
    sbc $7d
    rst $10
    call c, $bd6b

jr_019_7574:
    ld c, e
    ld l, a

jr_019_7576:
    dec de
    ld d, a
    rrca
    inc c
    inc bc
    rra
    inc bc
    ld h, $19
    ld a, l
    add a
    and h
    ld e, b
    ld d, h
    add sp, -$11
    ret nc

    ld e, [hl]
    xor h
    db $fc
    sbc b
    ret c

    jr nz, jr_019_7576

    ret nc

    xor b
    ret nc

    cp e
    ld d, h
    ld [hl], h
    jr @+$1e

    ld [$0c1a], sp
    ld c, $04
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ld e, a

jr_019_75a2:
    db $ec
    cp c
    ld b, a
    dec c
    ld [bc], a

jr_019_75a7:
    add hl, de
    ld c, $1e
    nop
    nop
    nop
    nop

jr_019_75ae:
    nop
    nop
    nop
    add sp, $10
    or b
    ret nz

    jr z, jr_019_75a7

    db $e4
    jr jr_019_75a2

    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, $04
    ld a, [de]
    inc c
    inc e
    ld [$1834], sp
    ld [hl], a
    jr jr_019_75ae

    ld l, e
    cp l
    ld c, e
    ld l, a
    dec de
    ld d, a
    rrca
    inc c
    inc bc

jr_019_75db:
    rrca

jr_019_75dc:
    inc bc
    ld d, $09
    db $fd
    rlca
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, h
    and b
    rst $38
    sbc h
    call c, $e828
    ret nc

    xor b
    ret nc

    or h
    ld e, e
    ld [hl], a
    jr jr_019_762a

    jr jr_019_7614

    ld [$0c1a], sp
    ld c, $04
    ld b, $00
    ld [bc], a
    nop
    rra
    db $ec
    ld sp, hl
    rlca
    dec c
    ld [bc], a
    add hl, de
    ld c, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7614:
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    call c, $bd6b
    ld c, e
    rst $28
    dec de
    ld d, a
    rrca
    inc c

jr_019_762a:
    inc bc
    dec bc
    dec b
    rra
    nop
    rst $20
    ld a, [de]
    and h
    ld e, b
    ld d, h

Jump_019_7634:
    add sp, -$18
    ret nc

    ld e, b
    and b
    db $fc
    jr jr_019_75db

    db $ec
    db $fc
    nop
    db $ec
    ret c

    ld b, $03
    dec b
    inc bc
    dec bc
    dec b
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_019_7650:
    nop
    sbc a
    ld h, e
    xor $01
    add [hl]
    inc bc
    add $81
    ld l, h
    rst $00
    rst $38
    jr nz, @+$3a

    nop
    nop
    nop
    call nc, $f878
    nop
    ret z

    ldh a, [rBCPS]
    or b
    db $e4
    jr jr_019_7650

    ld a, b
    ld hl, sp+$00
    nop
    nop
    ld [$0800], sp
    nop

jr_019_7675:
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$1c2a], sp
    ld a, $1c
    ccf
    inc e
    ld a, $15
    scf
    add hl, bc
    scf
    add hl, bc
    ld [hl], a
    ld [$63bc], sp
    rst $38
    ld e, b
    db $fd
    ld e, d
    ldh [rP1], a
    jr jr_019_7675

    call nz, $e4f8
    ld hl, sp-$4a
    ld a, b
    ld b, l
    cp d
    db $fd
    ld [bc], a
    db $db
    or h
    cp l
    ld b, d
    ld a, a
    add hl, de
    cp l
    ld e, d
    cp a
    ld h, e
    ld e, [hl]
    ld sp, $122d
    rla
    ld [$0a1d], sp
    sub $b8
    or $fc
    ld [$7f74], a
    add b
    rst $08
    or $fe
    ld [hl], b
    ld a, b
    add b
    ret z

    or b
    ld a, [de]
    rlca
    rla
    rrca
    add hl, bc
    ld b, $1d
    ld c, $1b
    inc b
    add hl, sp
    ld e, $3e
    nop
    nop
    nop
    sbc b
    ld h, b
    inc [hl]
    ret c

    sbc $20
    ld e, d
    inc a
    ld e, h
    jr nz, @+$3a

    nop
    nop
    nop
    nop

Call_019_76e0:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0d02
    inc bc
    dec d
    rrca
    dec e
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$0f1d]
    dec [hl]
    rrca
    ld a, c
    ld [hl], $c7
    ld a, d
    or a
    ld c, d
    rst $18
    ld [bc], a
    sbc d
    rlca
    ld a, [de]
    rlca
    add l
    ld a, [$fee1]
    add l
    ld a, d
    ld c, d
    or h
    or $08
    xor $b4
    cp $30
    rst $28
    ld [hl], $1a
    rlca
    rla
    rrca
    rla
    rrca
    rla
    rrca
    dec d
    rrca
    dec [hl]
    rrca
    ld [hl-], a
    rrca
    rlca
    ld a, [bc]
    rst $38
    ld b, h
    ld e, h
    or b
    ld l, b
    or b
    ld a, b
    add b
    ld l, h
    sbc b
    ld c, h
    or b
    ld h, [hl]
    sbc h
    ld e, $80
    ld c, $15
    ld a, [bc]
    dec d
    inc b
    dec de
    dec de
    ld c, $1f
    ld c, $0e
    inc b
    ld c, $04
    ld c, $04
    inc b
    nop
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
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rTMA], a
    ld hl, sp+$05
    ld a, [$fa85]
    rla
    rrca
    dec sp
    inc b
    ld e, h
    inc sp
    ld h, a

jr_019_7788:
    jr c, jr_019_77f5

    ld [hl], $5f
    ld h, $2b
    ld b, $0d
    inc bc
    pop hl
    cp $85
    ld a, d
    ld c, d
    or h
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    rst $18
    db $e4
    rrca
    inc b
    dec bc
    inc b
    dec e
    ld [bc], a
    rla
    ld a, [bc]
    ccf
    ld a, [de]
    ld a, [hl-]
    rlca
    rrca
    rlca
    rrca
    dec b
    db $ec
    jr jr_019_7788

    cp b
    call c, $ec60
    ret c

    call z, $e630
    inc e
    sbc [hl]
    nop
    add b
    nop
    dec de
    inc b
    rra
    inc b
    rra
    ld a, [bc]
    rra
    ld c, $15
    ld c, $0e
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    rla
    rrca
    dec sp
    inc b
    ld e, h
    inc sp
    ld h, a

jr_019_77d8:
    jr c, jr_019_7845

    ld [hl], $5f
    ld h, $2b
    ld b, $15
    dec bc
    pop hl
    cp $85
    ld a, d
    ld c, d
    or h
    ld a, [$ee04]
    or h
    cp $b0
    rst $28
    or [hl]
    sub $e8
    dec de
    inc c
    dec d
    ld a, [bc]

jr_019_77f5:
    rrca
    ld [bc], a
    ld a, [de]
    rlca
    ccf
    rla
    ccf
    dec b
    dec c
    ld [bc], a
    rrca
    ld [bc], a
    db $ec
    jr jr_019_77d8

    ld a, b
    call c, $eee0
    db $10
    add $3c
    cp h
    nop
    add b
    nop
    add b
    nop
    rra
    ld a, [bc]
    rra
    ld c, $15
    ld c, $0e
    inc b
    ld a, [bc]
    inc b
    inc b
    nop
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
    rlca
    nop
    dec bc
    rlca
    ld [$0800], sp
    nop
    ld [$1400], sp
    ld [$081c], sp
    inc e
    ld [$1cea], sp
    cp [hl]
    call c, Call_000_0f17
    cpl
    rra

jr_019_7845:
    ld l, $1f
    ld l, $1f
    ld l, a
    rra
    sub a
    ld l, a
    and e
    ld a, a
    pop af
    ld a, [hl]
    cp $d4
    ld a, $c8
    ld a, $d4
    ld a, [hl+]
    call c, $dc2b
    rst $38
    ld [$e897], a
    push af
    ld [$7fbe], sp
    ld h, c
    ld e, $7e
    ld bc, $7cff
    ld a, a
    inc bc
    ld a, [hl+]
    dec d
    jr z, @+$19

    ld a, [de]
    dec c
    ld a, $c4
    call z, $be30
    call nz, Call_000_2cfe
    db $fc
    ret nz

    ld c, h
    cp b
    cp b
    ld [hl], b
    ldh a, [$ff80]
    rra
    ld [bc], a
    scf
    rrca
    jr c, jr_019_788e

    cpl
    db $10
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

jr_019_788e:
    nop
    nop
    nop
    sub b
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [$ffb0], a
    ld b, b
    xor b
    ld [hl], b
    call nc, $7868
    jr nc, jr_019_78d0

    nop
    nop
    ld [$0800], sp
    ld [$0808], sp
    ld [$1c08], sp
    ld [$081c], sp
    inc e
    ld [$071c], sp
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    pop de
    ld l, [hl]
    cp [hl]
    ld a, a
    ret z

    inc e
    cp b
    call z, $f408
    ld [$08f4], sp
    db $f4
    sbc $e0
    db $fd
    ld b, $1b

jr_019_78d0:
    and $5c
    ccf
    ccf
    nop
    ld a, l
    inc bc
    rst $38
    ld a, [hl]
    ld a, a
    rra
    ccf
    ld bc, $152a
    jr z, jr_019_78f8

    db $fd
    ld [bc], a
    ld a, a
    add sp, -$29
    ld [$649a], a
    or $88

jr_019_78eb:
    cp $e4
    ld l, [hl]
    sbc h
    db $ec
    jr nc, jr_019_790c

    dec c
    dec l
    ld [de], a
    rla
    rrca
    ccf

jr_019_78f8:
    db $10
    ld [hl], d
    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    ret c

    xor h
    adc b
    ld [hl], h
    jr jr_019_78eb

    db $f4
    jr jr_019_7974

    inc [hl]
    inc [hl]

jr_019_790c:
    jr jr_019_7926

    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffde]
    ldh [$fffd], a
    ld b, $1b
    and $5c
    ccf
    ccf
    nop
    inc hl

jr_019_7926:
    rra
    ld [hl], b
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rra
    scf
    rrca
    jr z, jr_019_7948

    db $fd
    ld [bc], a
    ld a, a
    add sp, -$29
    add sp, $3a
    call nz, $20fe
    db $fd
    jp nz, $b45b

    xor [hl]
    ld a, b
    jp c, $8aa4

    ld [hl], h
    inc e
    ldh [$fff4], a

jr_019_7948:
    jr jr_019_79b4

    inc [hl]
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, a
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    pop hl
    ld a, [hl]
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ffce]
    ldh a, [$ff9d]
    and $fb
    ld b, $bf
    ld a, a
    ld e, l

jr_019_7974:
    ld a, $3e
    ld bc, $1f27
    ld [hl], b
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rra
    cpl
    db $10
    dec a
    jp nz, $28df

    rst $10
    add sp, -$46
    call nz, $24fa
    or $c8
    ld [$5634], a
    cp b
    dec a
    ld b, $26
    add hl, de
    scf
    rrca
    ld [hl], a
    jr z, jr_019_79d4

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ret nz

    call nc, Call_000_3828
    ret nz

    xor b
    ld [hl], b
    call nc, $7868
    jr nc, jr_019_79de

    nop
    nop
    nop
    inc bc
    nop
    rrca

jr_019_79b4:
    inc bc
    dec d
    ld c, $1a
    dec b
    rst $38
    ld [$72ed], sp
    ld [hl], a
    ld a, [hl-]
    ccf
    ld [bc], a
    ldh [rP1], a
    ret c

    ldh [$ffe4], a
    jr c, jr_019_79fe

    ret c

    push hl
    ld a, [de]
    ld d, l
    xor d
    db $ed
    or d
    ei
    or h
    dec hl
    rla
    dec sp

jr_019_79d4:
    rla
    scf
    dec de
    ccf
    dec de
    ld a, [hl+]
    dec e
    dec de
    inc c
    inc d

jr_019_79de:
    dec bc
    ld c, $01
    or $f8
    or $7c
    db $fc
    ld [hl], b
    xor $70
    ccf
    add $f6
    add sp, -$16
    inc d
    xor [hl]
    ld d, h
    dec bc
    dec b
    add hl, bc
    ld b, $0b
    rlca
    dec e
    ld [bc], a
    dec de
    inc c
    dec a
    ld b, $3a

jr_019_79fe:
    inc e
    inc e
    nop
    cp e
    ld d, [hl]
    sbc a
    ld h, [hl]
    adc [hl]
    ldh a, [$ffdc]
    jr nz, jr_019_7a7e

    jr jr_019_7a7a

    jr nc, jr_019_7a48

    inc e
    inc e
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, [hl]
    rra
    xor a
    ld e, a
    rst $10
    ld l, a
    db $e3
    ld a, h
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [rIF]
    ldh a, [$ff0b]
    or $9e
    ldh [$fffa], a
    inc c
    cp a
    ld a, a
    ld c, a

jr_019_7a34:
    ccf
    ccf
    nop
    ld [hl], e
    rrca
    rst $38
    ld [hl], b
    ld a, a
    rrca
    ld d, d
    dec l
    ld l, b
    scf
    sub $ec
    ld a, $c4
    call c, $a420

jr_019_7a48:
    ret c

    ret c

    jr nc, jr_019_7a34

    jr nc, jr_019_7abe

    add b
    sub b
    ld h, b
    jp c, $fd6d

    ld h, d
    ld [hl], a
    rrca
    dec de
    inc b
    ld [hl], $18
    ld [hl], d
    inc l
    inc [hl]
    jr jr_019_7a78

    nop
    ret nc

    and b
    sub b
    ld h, b
    db $10
    ldh [$ffb0], a

Call_019_7a68:
    ld b, b
    add sp, $30
    call nc, Call_019_6868
    jr nc, jr_019_7aa0

    nop
    rlca
    nop
    add hl, bc
    rlca
    inc de
    rrca
    dec e

jr_019_7a78:
    inc bc
    ld [hl], d

jr_019_7a7a:
    dec c
    xor [hl]
    ld [hl], c
    rst $10

jr_019_7a7e:
    ld l, h
    jp c, $c06d

    nop
    or b
    ret nz

    ret z

    ldh a, [$ffe4]
    ld hl, sp-$1c
    ld hl, sp+$24
    ld hl, sp-$72
    ld [hl], b
    push hl
    ld e, $01
    nop
    inc bc
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7aa0:
    nop
    cp l
    ld e, e
    ei
    adc a
    sub a
    ld l, e
    ld l, a
    inc sp
    ld [hl], $19
    rla
    dec bc
    add hl, bc
    ld b, $0f
    inc b
    reti


    ld h, $26
    ret c

    add sp, -$30
    ld d, b
    and b
    ld a, b
    add b
    db $fc
    add sp, $5e

jr_019_7abe:
    db $ec
    inc a
    ldh [$ffed], a
    ld [hl-], a
    xor a
    halt
    ld e, l
    ld [hl], $56
    jr z, jr_019_7b44

    inc l
    db $dd
    ld h, [hl]
    ld sp, hl
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    rra

jr_019_7ae0:
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret c

    ldh [rDIV], a
    ld hl, sp+$06
    ld hl, sp-$7b
    ld a, [$0f33]
    ld c, e
    inc [hl]
    sbc h
    ld [hl], e

jr_019_7af7:
    and a
    ld a, b
    xor a
    ld [hl], e
    ld e, e
    cpl
    dec hl
    rlca
    dec d
    dec bc
    pop hl
    cp $b1
    ld a, [hl]
    ld b, l
    cp d
    cp $00
    db $ec
    ld d, b
    rst $30
    ld e, b
    cp $54
    call nc, $1fe8
    inc c
    inc d
    rrca
    cpl
    ld de, $051b
    scf
    jr @+$7c

    inc c
    ld h, h
    jr c, jr_019_7b58

    nop
    rst $20
    jr jr_019_7ae0

    ld [hl], e
    db $db
    or a
    ld a, e
    add a
    cp e
    ld b, a
    add sp, $77
    ld a, h
    inc bc
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_019_7af7

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop

jr_019_7b44:
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_019_7b58:
    nop
    or b
    ret nz

    inc c
    ldh a, [$ff0a]
    db $f4
    ld a, [bc]
    db $f4
    cpl
    rra
    ld d, a
    jr z, @-$56

    ld [hl], a
    rst $18
    ld h, b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld d, a
    dec c
    dec hl
    rla
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    db $f4
    ld [$68dc], sp
    ld hl, sp+$60
    rst $10
    ld l, b
    and h
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
    nop
    nop
    nop
    nop
    add b

jr_019_7b90:
    nop
    scf
    jr @+$3e

    inc de
    ld e, $0d
    dec de
    inc c
    ld a, $10
    ld a, d
    inc c
    ld h, h
    jr c, jr_019_7bd8

    nop
    ld sp, hl
    rlca
    rla
    ldh [$ff6d], a
    or e
    sbc l
    ld h, e
    xor l
    ld d, e
    db $e4
    ld a, e
    ld a, d
    ld bc, $0001
    ldh [rP1], a
    sub b
    ld h, b
    adc b
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
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
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7bd8:
    nop
    ret nz

    nop
    or b
    ret nz

    inc c
    ldh a, [$ff0a]
    db $f4
    ccf
    rra
    cpl
    rra
    ld d, a
    jr z, jr_019_7b90

    ld [hl], a
    rst $18
    ld h, b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld [hl], a
    dec c
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    db $f4
    ld [$68df], sp
    ld hl, sp+$67
    push de

jr_019_7c00:
    ld l, e
    dec hl
    rla
    scf
    jr jr_019_7c33

    ld a, [de]
    ld a, [hl-]
    dec b
    ccf
    ld d, $7d
    ld b, $66
    jr c, jr_019_7c48

    nop
    xor a
    ret nc

    ldh a, [c]
    ld bc, $f13a
    xor $11
    ld d, [hl]
    add hl, hl
    ld [hl], e
    inc a
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    ld [$c4f0], sp
    ld hl, sp-$1e
    db $fc
    ldh [c], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
    nop

jr_019_7c33:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7c48:
    nop
    ret nz

    nop
    or b
    ret nz

    inc c
    ldh a, [$ff0a]
    db $f4
    ccf
    rra
    cpl
    rra
    ld d, a
    jr z, jr_019_7c00

    ld [hl], a
    rst $18
    ld h, b
    rst $10
    ld l, l
    cp a
    ld c, l
    ld [hl], a
    dec c
    ld a, [bc]
    db $f4
    jp nz, $0afc

    db $f4
    sub h
    ld l, b
    db $f4
    ld [$68df], sp
    ld hl, sp+$67
    push de
    ld l, e
    dec hl
    rla
    ccf
    db $10
    dec [hl]
    ld a, [de]
    ld h, $19
    cpl
    inc e
    ld a, d
    inc c
    ld a, h
    jr nz, jr_019_7cb8

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    rla
    rrca
    rra
    rrca
    ccf
    rrca
    ld d, a
    cpl
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc b
    ldh [rDIV], a
    ld hl, sp+$04
    ld hl, sp-$7c
    ld hl, sp-$11
    ldh a, [$ffa8]
    ld [hl], a
    sbc a
    ld a, a
    ld c, h
    ccf
    ccf
    nop
    add hl, sp
    rlca
    ld a, a
    jr c, jr_019_7ced

    rlca
    dec d
    ld a, [bc]
    cp $03
    dec a
    jp $15ee


    ld l, d

jr_019_7cb8:
    push af
    db $dd
    ldh [$fff8], a
    db $10
    cp $e0
    dec l
    jp c, Jump_000_0080

    add b
    nop
    add b
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
    ld [de], a
    dec c
    rrca
    ld [bc], a
    ld [de], a
    dec c
    dec bc
    rlca
    dec de
    inc c
    add hl, sp
    ld d, $1a
    inc c
    inc c
    nop
    ld e, l
    cp d
    ld a, d
    push bc
    call nz, $883b
    rst $30
    db $e4
    dec de
    ld l, d
    dec [hl]

jr_019_7ced:
    ld [hl], $19
    add hl, de
    nop
    ret nz

    nop
    jr nc, @-$3e

    ret z

    ldh a, [$ffe4]
    ld hl, sp+$64
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ld a, $1f
    ld a, $1f
    ld a, a
    rra
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ff08]
    ldh a, [$ff0e]
    ldh a, [$ffaf]
    ld e, a
    pop de
    ld l, [hl]
    cp a
    ld a, a
    ld e, l
    ld a, $7e
    ld bc, $78ff
    ld a, a
    rlca
    add hl, sp
    ld d, $dd
    and $fb
    ld b, $3d
    jp z, Jump_000_2ad5

    cp d
    ret nz

    ldh a, [rNR41]
    cp $c0
    scf
    sbc $54
    dec hl
    ld e, l
    ld h, $26
    add hl, de
    inc de
    rrca
    scf
    jr jr_019_7dbe

    inc l
    inc [hl]
    jr jr_019_7d68

    nop
    ld e, l
    and [hl]
    halt
    pop bc
    ret


    scf
    sbc c
    rst $20
    add sp, $37
    ret c

    ld h, a
    ld l, h
    inc sp
    inc sp
    nop
    add b
    nop
    ld h, b
    add b
    sub b
    ldh [$ffc8], a

jr_019_7d68:
    ldh a, [$ffc8]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    rlca
    ld l, $1f
    ccf
    rra
    ld l, a
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld [$08f0], sp
    ldh a, [$ffd8]
    ldh [$ff91], a
    ld l, [hl]
    rst $38
    ld a, a
    cp l
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    xor c
    ld d, [hl]
    cp $00
    sbc l
    and $fb
    ld b, $dd
    ld [$cab5], a
    ld a, [$f020]
    ret nz

    inc l
    ret nc

    call nc, $7d6b
    ld b, $66
    add hl, de
    ld d, e
    cpl
    scf
    jr jr_019_7e2e

    inc l
    inc [hl]

jr_019_7dbe:
    jr jr_019_7dd8

    nop
    ld e, a
    or b
    ld [hl], b
    rst $08
    db $ec
    rra
    call c, $d8bf
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    jr nz, jr_019_7df0

    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b

jr_019_7dd8:
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    rra
    nop
    nop
    nop
    nop
    nop

jr_019_7de7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_7df0:
    nop
    sub c
    ld l, [hl]
    rst $38
    ld a, a
    cp l
    ld a, [hl]
    ld a, [hl]
    ld bc, $1f63
    rst $38
    ld a, b
    ld a, a
    rlca
    add hl, hl
    ld d, $54
    dec hl
    ld a, l
    ld h, $66
    add hl, de
    inc sp
    rrca
    scf
    jr jr_019_7e7e

    inc l
    inc [hl]
    jr @+$1a

    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    ld d, $0f
    cpl
    rra
    cpl
    rra
    inc hl
    rra
    scf
    ld [$0000], sp
    ret nz

    nop
    jr nc, jr_019_7de7

    ld e, $e0
    sbc l
    xor $c1
    cp $c6

jr_019_7e2e:
    ld hl, sp-$04
    nop
    ld c, d
    dec [hl]
    xor a
    ld [hl], c
    xor [hl]
    ld [hl], l
    ld a, l
    ld h, $57
    cpl
    dec l
    inc bc
    rlca
    nop
    dec bc
    inc b
    and d
    ld e, h
    jp nc, $aaac

    db $f4
    db $f4
    add sp, -$52
    ret nc

    ld a, a
    adc [hl]
    adc $70
    or h
    ld a, b
    rrca
    inc bc
    rlca
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld a, d
    add h
    adc d
    ld [hl], h
    ld h, [hl]
    ld hl, sp-$1e
    db $fc
    jp nz, $02fc

    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7e7e

    ld l, $1f
    ccf
    rra
    ccf
    rra
    ld l, l

jr_019_7e7e:
    inc de
    or a
    ld l, b
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $c6
    jr c, @-$21

    ld h, d
    call c, $bd6b
    ld c, e
    xor a
    ld e, e
    ld d, a
    rrca
    ld l, h
    inc bc
    di
    ld l, l
    sbc [hl]
    ld h, c
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, b
    and b
    db $fc
    db $10
    sbc [hl]
    db $ec
    ld l, h
    ldh a, [$ff7d]
    ld c, $16
    add hl, bc
    dec c
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    ld hl, sp+$00
    jr z, @-$2e

    sbc b
    ldh [$ff88], a
    ldh a, [$ff08]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_019_7ee0

    ld h, $1f
    cpl
    rra
    cpl
    rra
    ld l, l

jr_019_7ee0:
    inc de
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$ff9e], a
    ldh [$ffdd], a
    xor $c1
    cp $b7
    ld l, b
    db $dd
    ld h, d

jr_019_7ef5:
    call c, $bd6b
    ld c, e
    xor a
    ld e, e
    ld d, a
    rrca
    inc c
    inc bc
    rlca
    ld bc, $38c6
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, h
    and b
    cp $18
    rst $38
    add $0f
    inc b
    ld a, d
    dec c
    rst $20
    ld a, c
    cp a
    ld h, d
    ld h, [hl]
    ld bc, $070c
    rrca
    nop
    nop
    nop
    dec [hl]
    cp $ce
    ld [hl], c
    push af
    dec bc
    ld c, e
    rst $30
    ld e, e
    and a
    add sp, $17
    db $e4
    ld a, e
    ei
    nop
    ld b, b
    add b
    jr nc, jr_019_7ef5

    adc b
    ldh a, [$ffc4]
    ld hl, sp-$3c
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$fff0]
    nop
    or a
    ld l, b
    db $dd
    ld h, d
    call c, $bd6b
    ld c, e
    xor a
    ld e, e
    ld d, a
    rrca
    inc c
    inc bc
    rst $38
    ld bc, $38c6
    ld a, h
    add b
    and h
    ld e, b
    ld d, h
    add sp, -$18
    ret nc

    ld e, h
    and b
    cp $18
    rst $38
    add $01
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
    db $db
    db $f4
    ld l, d
    db $dd
    rst $18
    ld bc, $0207
    ld b, $01
    inc c
    rlca
    rrca
    nop
    nop
    nop
    dec [hl]
    cp $ce
    ld [hl], c
    push af
    dec bc
    ld c, e
    rst $30
    ld e, e
    and a
    add sp, $17
    db $e4
    ld a, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
