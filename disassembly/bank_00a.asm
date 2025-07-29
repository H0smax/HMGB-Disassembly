; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld a, [bc]
    inc bc
    ld hl, sp+$2d
    ld b, b
    inc bc
    ld hl, sp+$2f
    ld b, b
    inc bc
    ld hl, sp+$31
    ld b, b
    inc bc
    ld hl, sp+$33
    ld b, b
    inc bc
    ld hl, sp+$35
    ld b, b
    inc bc
    ld hl, sp+$3d
    ld b, b
    inc bc
    ld hl, sp+$45
    ld b, b
    inc bc
    ld hl, sp+$4d
    ld b, b
    inc bc
    ld hl, sp+$55
    ld b, b
    inc bc
    ld hl, sp+$59
    ld b, b
    inc bc
    ld hl, sp+$5b
    ld b, b
    call c, Call_00a_4241
    ld b, d
    ld [hl], l
    ld b, d
    rrca
    ld b, d
    db $ed
    ld b, c
    call c, $fe41
    ld b, c
    call c, $5341
    ld b, d
    ld b, d
    ld b, d
    ld h, h
    ld b, d
    ld b, d
    ld b, d
    add [hl]
    ld b, d
    ld [hl], l
    ld b, d
    sub a
    ld b, d
    ld [hl], l
    ld b, d
    jr nz, jr_00a_4091

    rrca
    ld b, d
    ld sp, $0f42
    ld b, d
    jp z, $e342

    ld b, d
    xor b
    ld b, d
    cp c
    ld b, d
    db $fc
    ld [$002c], sp
    db $fc
    nop
    dec hl
    nop
    db $fc
    ld hl, sp+$2a
    nop
    db $fc
    ldh a, [$ff29]
    nop
    db $f4
    ld [$0028], sp
    db $f4
    nop
    daa
    nop
    db $f4
    ld hl, sp+$26
    nop
    db $f4
    ldh a, [rNR51]
    nop
    db $ec
    ld [$0024], sp
    db $ec
    nop
    inc hl
    nop
    db $ec
    ld hl, sp+$22
    nop
    db $e4
    nop
    ld hl, $e400
    ld hl, sp+$20
    nop

jr_00a_4091:
    call c, Call_000_1f00
    nop
    call c, Call_000_1ef8
    nop
    add b
    db $fc
    ld [$003b], sp
    db $fc
    nop
    ld a, [hl-]
    nop
    db $fc
    ld hl, sp+$39
    nop
    db $fc
    ldh a, [$ff38]
    nop
    db $f4
    ld [$0037], sp
    db $f4
    nop
    ld [hl], $00
    db $f4
    ld hl, sp+$35
    nop
    db $f4
    ldh a, [$ff34]
    nop
    db $ec
    inc bc
    inc sp
    nop
    db $ec
    ei
    ld [hl-], a
    nop
    db $ec
    di
    ld sp, $e400
    inc bc
    jr nc, jr_00a_40ca

jr_00a_40ca:
    db $e4
    ei
    cpl
    nop
    db $e4
    di
    ld l, $00
    call c, $2df8
    nop
    add b
    cp $08
    ld b, a
    nop
    cp $00
    ld b, [hl]
    nop
    cp $f8
    ld b, l
    nop
    cp $f0
    ld b, h
    nop
    or $08
    ld b, e
    nop
    or $00
    ld b, d
    nop
    or $f8
    ld b, c
    nop
    or $f0
    ld b, b
    nop

jr_00a_40f7:
    xor $08
    ccf
    nop
    xor $00
    ld a, $00
    xor $f8
    dec a
    nop
    xor $f0
    inc a
    nop
    add b
    db $fd
    ld [$004f], sp
    db $fd
    nop
    ld c, [hl]
    nop
    db $fd
    ld hl, sp+$4d
    nop
    db $fd
    ldh a, [$ff4c]
    nop
    push af
    ld [$004b], sp
    push af
    nop
    ld c, d
    nop
    push af
    ld hl, sp+$49

jr_00a_4123:
    nop
    push af
    ldh a, [rOBP0]
    nop
    add b
    ldh a, [$fff8]
    add hl, de
    ld h, b
    db $ed
    ld hl, sp+$16
    nop
    ld hl, sp+$02
    rla
    nop
    pop af
    nop
    rla

jr_00a_4138:
    jr nz, jr_00a_4123

    ld [bc], a
    ld a, [de]
    ld b, b
    ld [$1df8], a
    nop
    xor $fc
    dec de
    jr nz, jr_00a_4138

    ei
    inc e

Jump_00a_4148:
    jr nz, @-$03

jr_00a_414a:
    nop
    jr jr_00a_416d

    or $fd
    dec e
    jr nz, jr_00a_414a

jr_00a_4152:
    ld hl, sp+$1c
    nop
    ld sp, hl
    ld hl, sp+$1b
    ld b, b
    add b
    db $fc

jr_00a_415b:
    ei

jr_00a_415c:
    inc e
    jr nz, jr_00a_4152

    inc bc
    ld d, $00
    or $fd
    ld a, [de]
    jr nz, jr_00a_415b

    ld sp, hl
    dec de

jr_00a_4169:
    nop
    or $f6
    rla

jr_00a_416d:
    jr nz, jr_00a_4169

    or $18
    nop
    ld a, [$1d04]
    jr nz, jr_00a_40f7

    ei
    ld bc, $0018

jr_00a_417b:
    ei
    dec b
    rla
    jr nz, jr_00a_417b

    ld sp, hl
    inc e

jr_00a_4182:
    jr nz, jr_00a_4182

    cp $1b
    nop
    db $fd
    db $f4
    ld a, [de]
    nop
    add b
    ld hl, sp+$00
    dec d
    nop
    add b
    db $f4
    rst $30
    add hl, de
    nop
    or $01
    dec e
    nop
    di
    ld bc, $001c
    ld sp, hl
    ld hl, sp+$18
    nop
    db $f4
    db $fc
    ld a, [de]
    nop
    ld hl, sp-$01
    ld d, $00
    add b
    ld sp, hl
    push af
    ld a, [de]
    ld b, b
    di
    push af
    ld a, [de]
    nop
    xor $fb
    rla
    nop
    push af
    inc bc
    jr jr_00a_41ba

jr_00a_41ba:
    ldh a, [rP1]
    inc e

jr_00a_41bd:
    jr nz, jr_00a_41bd

    ld bc, $201b
    add b
    db $fc
    ld [bc], a
    dec de
    ld h, b
    ei
    db $f4
    inc e
    ld b, b
    di
    ldh a, [c]
    ld a, [de]
    ld b, b
    db $ec
    inc bc
    inc e
    ld h, b
    ld [$17f7], a
    ld b, b
    ld hl, sp+$06
    ld a, [de]
    jr nz, jr_00a_415c

    ld hl, sp+$00
    ld d, e
    nop
    ld hl, sp-$08
    ld d, d
    nop
    ldh a, [rP1]
    ld d, c
    nop
    ldh a, [$fff8]
    ld d, b
    nop
    add b
    ld hl, sp+$00
    ld d, a
    nop
    ld hl, sp-$08
    ld d, [hl]
    nop
    ldh a, [rP1]
    ld d, l
    nop
    ldh a, [$fff8]
    ld d, h
    nop
    add b
    ld hl, sp+$00
    ld e, c
    nop
    ld hl, sp-$08
    ld e, b
    nop
    ldh a, [rP1]
    ld d, l
    nop
    ldh a, [$fff8]
    ld d, h
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
    add b
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    ldh a, [rP1]
    ld e, a
    nop
    ldh a, [$fff8]
    ld e, [hl]
    nop
    add b
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    ldh a, [rP1]
    ld e, a
    nop
    ldh a, [$fff8]
    ld e, [hl]
    nop

Call_00a_4241:
    add b
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    ldh a, [rP1]
    ld h, l
    nop
    ldh a, [$fff8]
    ld h, h
    nop
    add b
    ld hl, sp+$00
    ld l, e
    nop
    ld hl, sp-$08
    ld l, d
    nop
    ldh a, [rP1]
    ld l, c
    nop
    ldh a, [$fff8]
    ld l, b
    nop
    add b
    ld hl, sp+$00
    ld l, l
    nop
    ld hl, sp-$08
    ld l, h
    nop
    ldh a, [rP1]
    ld l, c
    nop
    ldh a, [$fff8]

jr_00a_4272:
    ld l, b
    nop
    add b
    ld hl, sp-$07
    ld h, a
    jr nz, jr_00a_4272

    ld bc, $2066
    ldh a, [$fff9]
    ld h, l
    jr nz, jr_00a_4272

    ld bc, $2064
    add b
    ld hl, sp-$07
    ld l, e
    jr nz, @-$06

    ld bc, $206a
    ldh a, [$fff9]
    ld l, c
    jr nz, @-$0e

    ld bc, $2068
    add b
    ld hl, sp-$07
    ld l, l
    jr nz, @-$06

    ld bc, $206c
    ldh a, [$fff9]
    ld l, c
    jr nz, @-$0e

    ld bc, $2068
    add b
    ld hl, sp+$00
    ld [hl], c
    nop
    ld hl, sp-$08
    ld [hl], b
    nop
    ldh a, [rP1]
    ld l, a
    nop
    ldh a, [$fff8]
    ld l, [hl]
    nop
    add b
    ld hl, sp+$00
    ld [hl], l
    nop
    ld hl, sp-$08
    ld [hl], h
    nop
    ldh a, [rP1]
    ld [hl], e
    nop
    ldh a, [$fff8]
    ld [hl], d
    nop
    add b
    ei
    nop
    ld a, e
    nop
    ei
    ld hl, sp+$7a
    nop
    ei
    ldh a, [$ff79]
    nop
    di
    nop
    ld a, b
    nop
    di
    ld hl, sp+$77
    nop
    di
    ldh a, [rPCM12]
    nop
    add b
    ei
    nop
    ld a, e
    nop
    di
    nop
    ld a, b
    nop
    ei
    ld hl, sp+$7f
    nop
    ei
    ldh a, [$ff7e]
    nop
    di
    ld hl, sp+$7d
    nop
    di
    ldh a, [$ff7c]
    nop
    add b
    ld [de], a
    ld b, e
    ld [de], a
    ld b, e
    ld [de], a
    ld b, e
    ld [de], a
    ld b, e
    dec d
    ld b, e
    dec d
    ld b, e
    dec d
    ld b, e
    dec d
    ld b, e
    ld e, $43
    ld [de], a
    ld b, e
    ld [de], a
    ld b, e
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
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    xor a
    nop
    ld l, l
    nop
    ld h, [hl]
    nop
    add a
    nop
    rla
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    xor a
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    call nz, $1400
    nop
    ld l, [hl]
    nop
    xor a
    nop
    ld h, [hl]
    nop
    add a
    nop
    rla
    nop
    ld [hl], h
    nop
    sbc a
    nop
    add e
    nop
    add d
    nop
    inc [hl]
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    cp l
    nop
    ld de, $8200
    nop
    or h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    jr nc, jr_00a_437b

jr_00a_437b:
    ld b, e
    nop
    ld [hl-], a
    nop
    inc de
    nop
    ld [hl], h
    nop
    ld hl, $3000
    nop
    ld [bc], a
    nop
    ld hl, $a000
    nop
    reti


    nop
    inc d
    nop
    ld [bc], a
    nop
    ld hl, $7400
    nop
    xor a
    nop
    ld [bc], a
    nop
    ld h, d
    nop
    ld h, b
    nop
    cp l
    nop
    ld d, b
    nop
    reti


    nop
    inc d
    nop
    inc d
    nop
    cp l
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    ld h, b
    nop
    inc hl
    nop
    ld [hl], d
    nop
    ld [bc], a
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
    dec hl
    ld d, e
    nop
    nop
    xor a
    nop
    xor a
    nop
    ld l, l
    nop
    dec d
    nop
    ld b, $00
    ret


    nop
    xor a
    nop
    inc [hl]
    nop
    add c
    nop
    cp d
    nop
    ld hl, $1200
    nop
    ld sp, $6e00
    nop
    xor a
    nop
    xor a
    nop
    dec h
    nop
    ld b, $00
    adc c
    nop
    stop
    add b
    nop
    reti


    nop
    dec d
    nop
    ld b, $00
    ret


    nop
    and b
    nop
    cp l
    nop
    inc sp
    nop
    ld de, $6000
    nop
    ld [hl+], a
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
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
    ld l, l
    nop
    ld [$2500], sp
    nop
    call nz, $1400
    nop
    ld l, [hl]
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
    ld [$2500], sp
    nop
    ld d, b
    nop
    reti


    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    sbc a
    nop
    add e
    nop
    ld [hl], d
    nop
    ld [bc], a
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
    dec hl
    ld d, e
    nop
    nop
    xor a
    nop
    ld l, l
    nop
    jr nc, jr_00a_4463

jr_00a_4463:
    ld h, b
    nop
    and h
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    xor a
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    call nz, $1400
    nop
    ld l, [hl]
    nop
    xor a
    nop
    jr nc, jr_00a_447f

jr_00a_447f:
    ld h, b
    nop
    and h
    nop
    ld [hl], h
    nop
    sbc a
    nop
    add e
    nop
    add d
    nop
    inc [hl]
    nop
    ld hl, $9100
    nop
    sub e
    nop
    stop
    cp l
    nop
    ld de, $8200
    nop
    or h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    jr nc, jr_00a_44ab

jr_00a_44ab:
    ld h, b
    nop
    and h
    nop
    stop
    add b
    nop
    reti


    nop
    ld d, c
    nop
    ld [hl], d
    nop
    inc d
    nop
    ld b, c
    nop
    jr nz, jr_00a_44bf

jr_00a_44bf:
    inc hl
    nop
    add d
    nop
    ld b, c
    nop
    ld d, b
    nop
    reti


    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    jr nc, jr_00a_44d1

jr_00a_44d1:
    ld h, b
    nop
    and h
    nop
    ld [hl], h
    nop
    reti


    nop
    inc b
    nop
    ld bc, $3300
    nop
    ld [de], a
    nop
    cp d
    nop
    jr nz, jr_00a_44e5

jr_00a_44e5:
    ld bc, $da00
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld [hl], d
    nop
    ld hl, $7200
    nop
    ld hl, $d900
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
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
    sbc l
    nop
    sbc h
    nop
    ld h, h
    nop
    xor b
    nop
    sbc c
    nop
    ld d, $00
    cp d
    nop
    ld b, b
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
    dec hl
    ld d, e
    nop
    nop
    ld hl, $9100
    nop
    sub e
    nop
    jr nz, jr_00a_4549

jr_00a_4549:
    sub h
    nop
    ld h, b
    nop
    cp l
    nop
    reti


    nop
    nop
    nop
    inc [hl]
    nop
    inc de
    call z, $cc14
    sbc h
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a
    nop
    and b
    nop
    sub h
    nop
    call nz, $8300
    nop
    ld [hl], d
    nop
    reti


    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    jr nc, jr_00a_458f

jr_00a_458f:
    ld bc, $5300
    nop
    sub h
    nop
    cp d
    nop
    sub e
    nop
    ld l, d
    nop
    ld l, d
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
    and b
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    push bc
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld de, $ba00
    nop
    jp c, Jump_000_1700

    nop
    daa
    nop
    add [hl]
    nop
    cp l
    nop
    ld b, b
    nop
    inc b
    nop
    inc h
    nop
    ld [bc], a
    nop
    ld l, d
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
    dec hl
    ld d, e
    nop
    nop
    ld [hl], b
    nop
    sub e
    nop
    jr nc, jr_00a_45df

jr_00a_45df:
    ld l, d
    nop
    inc d
    nop
    ld [bc], a
    nop
    ld hl, $a000
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    add e
    nop
    jr nc, jr_00a_45f1

jr_00a_45f1:
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    ld b, b
    nop
    ld h, b
    nop
    inc bc
    nop
    ld [hl], h
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    nop
    nop
    and e
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    jp c, $af00

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
    dec hl
    ld d, e
    nop
    nop
    ld [hl], d
    nop
    ld hl, $7200
    nop
    ld hl, $d900
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
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
    sbc l
    nop
    sbc h
    nop
    ld h, h
    nop
    xor b
    nop
    sbc c
    nop
    ld d, $00
    cp d
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld hl, $9100
    nop
    sub e
    nop
    jr nz, jr_00a_4679

jr_00a_4679:
    sub h
    nop
    ld h, b
    nop
    cp l
    nop
    reti


    nop
    nop
    nop
    inc [hl]
    nop
    inc de
    call z, $cc14
    sbc h
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a
    nop
    and b
    nop
    sub h
    nop
    call nz, $9300
    nop
    inc sp
    nop
    ld b, e
    nop
    reti


    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
    jp c, $af00

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
    dec hl
    ld d, e
    nop
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
    and b
    nop
    reti


    nop
    push bc
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld de, $ba00
    nop
    ld [hl], e
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a
    nop
    xor a
    nop
    rla
    nop
    daa
    nop
    add [hl]
    nop
    cp l
    nop
    ld b, b
    nop
    inc b
    nop
    ld hl, $3300
    nop
    nop
    nop
    and e
    nop
    ld b, b
    nop
    ld de, $9000
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a

Jump_00a_46fc:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld [hl], b
    nop
    sub e
    nop
    jr nc, jr_00a_470f

jr_00a_470f:
    ld b, e
    nop
    ld l, d
    nop
    inc d
    nop
    ld [bc], a
    nop
    ld hl, $a000
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    add e
    nop
    jr nc, jr_00a_4723

jr_00a_4723:
    ld [hl], e
    nop
    jp c, $af00

    nop
    ld b, b
    nop
    ld h, b
    nop
    inc bc
    nop
    ld [hl], h
    nop
    ld [hl-], a
    nop
    inc de
    nop
    inc sp
    nop
    nop
    nop
    and e
    nop
    ld [hl], d
    nop

Jump_00a_473d:
    ld [bc], a
    nop
    sub e
    nop
    inc [hl]
    nop
    jp c, $af00

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
    dec hl
    ld d, e
    nop
    nop
    inc d
    nop
    ld [bc], a
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    xor h
    nop
    ld de, $9400
    nop
    ld b, c
    nop
    ld [de], a
    nop
    ld [hl-], a
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
    xor h
    nop
    ld d, c
    nop
    add h
    nop
    ld [bc], a
    nop
    stop
    ld bc, $5200
    nop
    ld [de], a
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
    dec hl
    ld d, e
    nop
    nop
    ld bc, $b200
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld h, h
    nop
    ld b, h
    nop
    ld [hl], h
    nop
    ld b, b
    nop
    and e
    nop
    ld b, b
    nop
    ld bc, $bd00
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
    xor a
    nop
    ld bc, $b200
    nop
    ld h, c
    nop
    ld b, h
    nop
    ld h, e
    nop
    and b
    nop
    ld h, c
    nop
    ld [hl], d
    nop
    add c
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    call nz, $2100
    nop
    sub d
    nop
    ld d, b
    nop
    reti


    nop
    scf
    nop
    add a
    nop
    ld d, l
    nop
    ld h, $00
    ld [hl], h
    nop
    ld [hl-], a
    nop
    stop
    sub e
    nop
    inc sp
    nop
    ld d, h
    nop
    add c
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld h, e
    nop
    ld h, b
    nop
    ld [hl+], a
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e

Call_00a_4837:
    nop
    nop
    ld [hl], l
    nop
    push hl
    nop
    ld l, d
    nop
    ld de, $6100
    nop
    and b
    nop
    reti


    nop
    inc b
    nop
    or c
    nop
    ld bc, $2000
    nop
    sub h
    nop
    ld b, h
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl], h
    nop
    ld [hl-], a
    nop
    ld bc, $bd00
    nop
    reti


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
    ld b, c
    nop
    ld de, $3000
    nop
    ld b, h
    nop
    ld a, d
    nop
    ld l, e
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
    dec hl
    ld d, e
    nop
    nop
    ret z

    nop
    ld [de], a
    nop
    jr nc, jr_00a_488b

jr_00a_488b:
    ld sp, $5000
    nop
    reti


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
    cp d
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, Jump_00a_7800

    nop
    jr jr_00a_48a9

jr_00a_48a9:
    nop
    nop
    add c
    nop
    cp l
    nop
    reti


    nop
    inc d
    nop
    inc d
    nop
    ld b, c
    nop
    ld bc, $8200
    nop
    ld b, h
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    inc b
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld d, h
    nop
    ld hl, $0100
    nop
    inc [hl]
    nop
    ld de, $4100
    nop
    ld a, d
    nop
    ld bc, $3200
    nop
    cp l
    nop
    ld h, h
    nop
    ld bc, $9300
    nop
    inc sp
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    ld h, b
    nop
    ld bc, $4100
    nop
    ld sp, $0b00
    nop
    ld [hl-], a
    nop
    reti


    nop
    jr nc, jr_00a_492d

jr_00a_492d:
    rst $00
    nop
    ld h, h
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld hl, $0100
    nop
    ld a, d
    nop
    jp c, Jump_00a_6d00

    nop
    and c
    nop
    add $00
    xor a
    nop
    nop
    nop
    sub h
    nop
    cp [hl]
    nop
    xor a
    nop
    inc sp
    nop
    ld bc, $1200
    nop
    ld l, [hl]
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld a, d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    add hl, de
    nop
    sbc c
    nop
    ld b, [hl]
    nop
    ld [hl], $00
    ld d, l
    nop
    jp c, $4100

    nop
    sub h
    nop
    and e
    nop
    sub h
    nop
    ld b, h
    nop
    nop
    nop
    ld bc, $2000
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    inc d
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    ld a, d
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld bc, $7100
    nop
    add e
    nop
    cp d
    nop
    sub e
    nop
    jr nc, jr_00a_49c5

jr_00a_49c5:
    ld b, e
    nop
    ld a, d
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
    inc b
    nop
    ld [de], a
    nop
    ld b, h
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    reti


    nop
    ld [de], a
    nop
    or d
    nop
    add e
    nop
    jr nc, jr_00a_49eb

jr_00a_49eb:
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, $af00

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
    dec hl
    ld d, e
    nop
    nop
    ld bc, $b200
    nop
    ld h, c
    nop
    ld b, h
    nop
    ld h, e
    nop
    and b
    nop
    ld h, c
    nop
    jr nz, jr_00a_4a11

jr_00a_4a11:
    ld h, b
    nop
    sub e
    nop
    inc sp
    nop
    db $e3
    nop
    ld a, d
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld [de], a
    nop
    reti


    nop
    ld de, $8300
    nop
    ld bc, $ba00
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    db $e3
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    add hl, de
    nop
    sbc c
    nop
    ret


    nop
    sbc c
    nop
    ld d, l
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
    ld [hl], d
    nop
    add d
    nop
    ld b, h
    nop
    nop
    nop
    ld bc, $2000
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    reti


    nop
    inc d
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    ld a, d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld [hl], c
    nop
    add e
    nop
    jr nc, jr_00a_4a9f

jr_00a_4a9f:
    ld [hl], d
    nop
    ld a, d
    nop
    jp c, $b100

    nop
    ld hl, $9400
    nop
    sub e
    nop
    inc sp
    nop
    ld [hl+], a
    nop
    and h
    nop
    ld bc, $4300
    nop
    ld a, d
    nop
    ld bc, $7300
    nop
    and b
    nop
    or e
    nop
    ld a, d
    nop
    sub h
    nop
    add $00
    reti


    nop
    ld [de], a
    nop
    or d
    nop
    add e
    nop
    jr nc, jr_00a_4ad1

jr_00a_4ad1:
    ld [hl], d
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    ld bc, $b200
    nop
    ld h, c
    nop
    ld b, h
    nop
    ld h, e
    nop
    and b
    nop
    ld h, c
    nop
    jr nz, jr_00a_4af5

jr_00a_4af5:
    ld h, b
    nop
    sub e
    nop
    inc sp
    nop
    ld a, d
    nop
    reti


    nop
    ld [hl+], a
    nop
    and h
    nop
    ld [de], a
    nop
    ld hl, $3000
    nop
    ld hl, $6100
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    ld bc, $1000
    nop
    ld b, b
    nop
    ld a, d
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    nop
    nop
    reti


    nop
    inc h
    nop
    add e
    nop
    ld d, b
    nop
    ld [hl-], a
    nop
    add c
    nop
    or b
    nop
    inc b
    nop
    cp d
    nop
    ld b, e
    nop
    jp c, Jump_000_2400

    nop
    inc d
    nop
    stop
    add b
    nop
    ld h, c
    nop
    and c
    nop
    ld h, d
    nop
    ld de, $4100
    nop
    jr nz, jr_00a_4b5d

jr_00a_4b5d:
    inc b
    nop
    ld [hl], h
    nop
    jr nc, jr_00a_4b63

jr_00a_4b63:
    add b
    nop
    ld [hl+], a
    nop
    inc [hl]
    nop
    ld bc, $0100
    nop
    ld [hl], d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    add hl, bc
    nop
    ld d, l
    nop
    ld [hl], a
    nop
    rlca
    nop
    xor c
    nop
    or l
    nop
    ld b, $00
    ld h, l
    nop
    daa
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
    nop
    nop
    jr nz, jr_00a_4ba1

jr_00a_4ba1:
    ld b, h
    nop
    nop
    nop
    ld bc, $2000
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    inc d
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld [hl], d
    nop
    ld b, e
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    dec b
    nop
    rlca
    nop
    dec b
    nop
    rlca
    nop
    dec b
    nop
    rlca
    nop
    dec b
    nop
    rlca
    nop
    dec b
    nop
    push hl
    nop
    ld a, d
    nop
    jp c, $af00

    nop
    xor a
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
    reti


    nop
    ld [hl], c
    nop
    add e
    nop
    inc sp
    nop
    ld bc, $8200
    nop
    ld de, $a000
    nop
    ld [hl+], a
    nop
    add d
    nop
    ld a, d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    call Call_000_1700
    nop
    ld h, h
    nop
    ld bc, $b200
    nop
    ld h, c
    nop
    ld b, h
    nop
    ld h, e
    nop
    and b
    nop
    ld h, c
    nop
    jr nz, jr_00a_4c2b

jr_00a_4c2b:
    ld h, b
    nop
    ld [hl], h
    nop
    reti


    nop
    xor a
    nop
    xor a
    nop
    ld h, c
    nop
    jr nc, jr_00a_4c39

jr_00a_4c39:
    stop
    sub e
    nop
    jr nc, jr_00a_4c3f

jr_00a_4c3f:
    ld b, h
    nop
    ld a, d
    nop
    jp c, $b500

    nop
    sbc c
    nop
    ld c, b
    nop
    sbc c
    nop
    cp d
    nop
    ld b, b
    nop
    ld a, d
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    dec b
    nop
    add [hl]
    nop
    and l
    nop
    add hl, sp
    nop
    rlca
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld a, d
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
    dec hl
    ld d, e
    nop
    nop
    inc d
    nop
    sub h
    nop
    ld b, b
    nop
    ld b, h
    nop
    reti


    nop
    ld bc, $8000
    nop
    ld b, b
    nop
    ld bc, $4400
    nop
    ld a, d
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld bc, $3000
    nop
    ld bc, $4400
    nop
    ld a, d
    nop
    ld l, d
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    add d
    nop
    ld b, h
    nop
    ld a, d
    nop
    ld l, d
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
    dec hl
    ld d, e
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
    dec d
    nop
    ld h, l
    nop
    ld b, h
    nop
    ld de, $8300
    nop
    nop
    nop
    or c
    nop
    ld d, b
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
    inc l
    ld d, e
    nop
    nop
    ld [hl], d
    nop
    ld [de], a
    nop
    ld de, $8300
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
    dec hl
    ld d, e
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
    jr nc, jr_00a_4df9

jr_00a_4df9:
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
    dec hl
    ld d, e
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
    jr nz, jr_00a_4e45

jr_00a_4e45:
    reti


    nop
    xor a
    nop
    dec bc
    nop
    inc c
    nop
    or c
    nop
    stop
    sub h
    nop
    jr nc, jr_00a_4e55

jr_00a_4e55:
    sub e
    nop
    jr nc, jr_00a_4e59

jr_00a_4e59:
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
    dec hl
    ld d, e
    nop
    nop
    nop
    nop
    reti


    nop
    call Call_000_1700
    nop
    jr nc, jr_00a_4e7f

jr_00a_4e7f:
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
    jr nc, jr_00a_4e8d

jr_00a_4e8d:
    or c
    nop
    stop
    sub h
    nop
    cp l
    nop
    dec bc
    nop
    inc c
    nop
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
    dec hl
    ld d, e
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
    jp nz, $4100

    nop
    add $00
    sub e
    nop
    jr nc, jr_00a_4edd

jr_00a_4edd:
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
    dec hl
    ld d, e
    nop
    nop
    ld [hl], e
    nop
    ld [hl+], a
    nop
    add e
    nop
    or d
    nop
    ld b, c
    nop
    ld h, b
    nop
    ld bc, $4100
    nop
    ld sp, $0800
    nop
    dec h
    nop
    ld [hl], h
    nop
    nop
    nop
    jr nc, jr_00a_4f29

jr_00a_4f29:
    inc bc
    nop
    inc sp
    nop
    ld [hl], b
    nop
    add d
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
    dec hl
    ld d, e
    nop
    nop
    dec [hl]
    nop
    ld h, l
    nop
    xor c
    nop
    ld [hl], h
    nop
    ld [bc], a
    nop
    sub h
    nop
    cp l
    nop
    ld [de], a
    nop
    add e
    nop
    ld b, b
    nop
    ld [de], a
    nop
    ld b, b
    nop
    add d
    nop
    stop
    add b
    nop
    ld b, b
    nop
    or e
    nop
    sub e
    nop
    jr nc, jr_00a_4f7f

jr_00a_4f7f:
    ld bc, $d900
    nop
    ld [hl], e
    nop
    ld [hl+], a
    nop
    add e
    nop
    inc sp
    nop
    ld d, b
    nop
    ld bc, $1000
    nop
    sub h
    nop
    or h
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
    dec hl
    ld d, e
    nop
    nop
    ld sp, $9200
    nop
    sub e
    nop
    inc [hl]
    nop
    xor a
    nop
    ld [hl+], a
    nop
    or d
    nop
    ld h, c
    nop
    ld [hl+], a
    nop
    and c
    nop
    jr nc, jr_00a_4fbb

jr_00a_4fbb:
    ld [hl], e
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    inc b
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    ld h, c
    nop
    ld b, b
    nop
    jr nz, jr_00a_4fd1

jr_00a_4fd1:
    ld bc, $da00
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
    dec hl
    ld d, e
    nop
    nop
    db $f4
    cp b
    push af
    cp b
    or $b8
    rst $30
    cp b
    xor h
    nop
    inc b
    nop
    ld de, $3300
    nop
    ld [de], a
    nop
    add e
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
    jp c, $0400

    nop
    ld h, b
    nop
    inc bc
    nop
    ld b, c
    nop
    reti


    nop
    jr nc, jr_00a_501d

jr_00a_501d:
    ld b, h
    nop
    ld h, c
    nop
    and b
    nop
    nop
    nop
    add d
    nop
    sub h
    nop
    or c
    nop
    sub b
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
    dec hl
    ld d, e
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl-], a
    nop
    and c
    nop
    ld b, h
    nop
    ld bc, $4000
    nop
    ld bc, $9d00
    nop
    reti


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
    ld d, b
    nop
    nop
    nop
    add e
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    cp d
    nop
    ld bc, $ac00
    nop
    inc h
    nop
    inc d
    nop
    cp l
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
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    inc b
    nop
    ld h, b
    nop
    inc bc
    nop
    and b
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
    ld [hl-], a
    nop
    and c
    nop
    inc [hl]
    nop
    ld hl, $3300
    nop
    reti


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
    jr nc, jr_00a_50b7

jr_00a_50b7:
    inc sp
    nop
    ld b, b
    nop
    inc b
    nop
    ld hl, $3300
    nop
    ld [de], a
    nop
    add e
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
    dec hl
    ld d, e
    nop
    nop
    inc h
    nop
    ld hl, $3300
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
    ld h, l
    nop
    daa
    nop
    dec [hl]
    nop
    ld a, d
    nop
    ld b, h
    nop
    ld [hl], e
    nop
    ld hl, $7400
    nop
    inc d
    nop
    inc bc
    nop
    inc sp
    nop
    ld h, c
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    ld l, d
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
    xor [hl]
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    or b
    nop
    sub h
    nop
    ld b, e
    nop
    sub h
    nop
    ld b, b
    nop
    and b
    nop
    add b
    nop
    reti


    nop
    ld [hl], c
    nop
    ld [bc], a
    nop
    add e
    nop
    ld bc, $b100
    nop
    sub b
    nop
    stop
    add b
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld [hl], b
    nop
    add e
    nop
    sub h
    nop
    ld b, h
    nop
    or c
    nop
    sub b
    nop
    and b
    nop
    xor h
    nop
    xor h
    nop
    xor h

Call_00a_515e:
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
    dec hl
    ld d, e
    nop
    nop
    ld d, d
    nop
    ld [hl], c
    nop
    ld b, h
    nop
    adc h
    nop
    ld b, h
    nop
    inc b
    nop
    ld [hl], e
    nop
    add c
    nop
    ld b, c
    nop
    reti


    nop
    dec bc
    nop
    sbc h
    nop
    cp d
    nop
    inc de
    nop
    cp d
    nop
    and b
    nop
    inc b
    nop
    ld h, b
    nop
    inc bc
    nop
    ld b, h
    nop
    ld hl, $a400
    nop
    inc [hl]
    nop
    add $00
    add c
    nop
    ld [hl], h
    nop
    ld h, c
    nop
    inc sp
    nop
    ld [hl], b
    nop
    add e
    nop
    add d
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
    dec hl
    ld d, e
    nop
    nop
    inc h
    nop
    add h
    nop
    inc h
    nop
    add h
    nop
    or c
    nop
    stop
    sub h
    nop
    stop
    xor h
    nop
    nop
    nop
    inc [hl]
    nop
    ld d, b
    nop
    jr nc, jr_00a_51d3

jr_00a_51d3:
    ld b, h
    nop
    ld h, d
    nop
    or h
    nop
    ld h, c
    nop
    add b
    nop

Jump_00a_51dd:
    ld bc, $4400
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
    ld h, l
    nop
    daa
    nop
    dec [hl]
    nop
    ld a, d
    nop
    ld [hl], d
    nop
    ld l, d
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
    dec hl
    ld d, e
    nop
    nop
    ld bc, $0100
    nop
    ld [hl], e
    nop
    ld [hl+], a
    nop
    add e
    nop
    inc sp
    nop
    inc b
    nop
    sub e
    nop
    jr nc, jr_00a_5217

jr_00a_5217:
    and b
    nop
    reti


    nop
    jr nz, jr_00a_521d

jr_00a_521d:
    ld [de], a
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld d, b
    nop
    ld de, $2300
    nop
    ld [hl-], a
    nop
    and b
    nop
    stop
    ld [hl], e
    nop
    add d
    nop
    inc [hl]
    nop
    or e
    nop
    sub h
    nop
    ld h, e
    nop
    ld [hl-], a
    nop
    or c
    nop
    sub b
    nop
    ld l, d
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
    dec hl
    ld d, e
    nop
    nop
    dec d
    nop
    adc b
    nop
    sbc c
    nop
    cp a
    nop
    ld a, d
    nop
    cp l
    nop
    sbc h
    nop
    cp h
    nop
    inc de
    nop
    ld [hl], h
    nop
    ld [hl], $00
    add sp, $00
    sbc b
    nop
    rla
    nop
    ld l, d
    nop
    ld l, d
    nop
    jr nz, jr_00a_5273

jr_00a_5273:
    ld [de], a
    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    ld [hl], h
    nop
    inc h
    nop

Jump_00a_527d:
    cp d
    nop
    inc sp
    nop
    add d
    nop
    ld d, $00
    ld e, c
    nop
    sbc c
    nop
    or c
    nop
    sub b
    nop
    or h
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
    dec hl
    ld d, e
    nop
    nop
    ld bc, $3200
    nop
    ld h, h
    nop
    dec b
    nop
    add [hl]
    nop
    and l
    nop
    add hl, sp
    nop
    rlca
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld a, d
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld d, e
    nop
    nop
    ld bc, $3200
    nop
    ld h, h
    nop
    dec b
    nop
    add [hl]
    nop
    and l
    nop
    add hl, sp
    nop
    rlca
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld a, d
    nop
    ld l, d
    nop
    ld l, d
    nop
    ld l, d
    nop
    xor a
    nop
    xor a
    nop
    call Call_000_1700
    nop
    jr nc, jr_00a_530f

jr_00a_530f:
    ld sp, $6400
    nop
    inc b
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    cp d
    nop
    ld bc, $a500
    nop
    sbc c
    nop
    ret


    nop
    add a
    nop
    ld b, h
    nop
    ld a, d
    nop
    rst $38
    rst $38
    ret


    ld a, [$cb72]
    or a
    jr nz, jr_00a_534e

    ld hl, $b8f8
    ld a, [hl]
    cp $0b
    jr z, jr_00a_5340

    inc hl
    ld a, [hl]
    cp $0b
    jr nz, jr_00a_5346

jr_00a_5340:
    ld a, $ff
    ld [hl], a
    ld [$cc9a], a

jr_00a_5346:
    xor a
    ld [$b8a3], a
    ld [$ba38], a
    ret


jr_00a_534e:
    ld a, $ff
    ld [$ba38], a
    ret


    nop
    inc b
    xor [hl]
    ld de, $3000
    inc bc
    ld [bc], a
    cpl
    nop
    ld sp, $0207
    inc d
    rst $30
    dec d
    ld [de], a
    inc de
    jr nz, jr_00a_5368

jr_00a_5368:
    ld [$1309], sp
    and [hl]
    reti


    and a
    ld h, c
    nop
    pop hl
    nop
    inc [hl]
    dec [hl]
    rlca
    inc b
    inc b
    dec b
    ei
    ld [hl+], a
    inc hl
    jr nz, jr_00a_537d

jr_00a_537d:
    jr jr_00a_5398

    inc hl
    or [hl]
    or a
    ld l, h
    ld h, c
    nop
    pop hl
    nop
    inc h
    dec h
    add hl, bc
    inc b
    ld [hl-], a
    inc sp
    jr nz, jr_00a_538f

jr_00a_538f:
    rra
    jr z, jr_00a_53bb

    inc sp
    add $c7
    ld h, c
    nop
    pop hl

jr_00a_5398:
    nop
    dec bc
    inc b
    rst $38
    ld h, h
    ld h, e
    ld h, h
    ld h, l
    db $10
    jr c, jr_00a_53dc

    ld de, $107b
    ld de, $0061
    ld h, d
    ld h, e
    ld h, h
    ld h, e
    dec bc
    inc b
    cp a
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    jr nz, @+$23

    dec h
    nop
    ld [hl], d
    rst $30
    ld [hl], e

jr_00a_53bb:
    ld [hl], h
    ld [hl], e
    dec bc
    ld [$6766], sp
    ld h, [hl]
    and l
    cp h
    ret nz

    inc bc
    inc h
    nop
    and d
    ld h, a
    ld h, [hl]
    ld h, a
    dec bc
    ld [$f776], sp
    ld [hl], a
    halt
    or l
    ld b, c
    ld b, $20
    ld hl, $6362
    cp a
    ld h, e
    ld h, h

jr_00a_53dc:
    or d
    ld [hl], a
    halt
    ld [hl], a
    ld c, $04
    inc l
    cp $41
    ld b, $10
    ld de, $7372
    ld [hl], e
    ld [hl], h
    dec l
    jr c, @+$11

    inc b
    jr nz, @+$05

    ld b, c
    inc b
    jr nz, @+$64

    and d
    and e
    nop
    rrca
    inc b
    ld h, h
    ld hl, $4000
    ld [$a3b2], sp
    nop
    inc c
    inc b
    call nz, Call_000_22c3
    nop
    xor a
    push bc
    jr nz, jr_00a_542e

    jp nz, Jump_000_00a3

    jp Jump_000_140b


    ldh a, [c]
    scf
    di
    ldh a, [c]
    di
    dec b
    inc c
    and $e7
    pop bc
    nop
    dec bc
    inc d
    rst $28
    cp e
    cp h
    db $e4
    push hl

jr_00a_5425:
    dec b
    db $10
    or $f7
    cp e
    rst $30
    cp h
    jr nz, jr_00a_544f

jr_00a_542e:
    dec bc
    jr jr_00a_5425

    push af
    db $f4
    push af
    db $ec
    dec b
    db $10
    pop bc
    nop
    ldh a, [c]
    di
    ld [$3018], sp
    inc d
    dec d
    cp h
    rst $00
    inc de
    ld h, e
    inc d
    set 4, l
    inc [hl]
    dec [hl]
    inc de
    ld e, $30
    ldh [$ffb1], a

jr_00a_544e:
    rra

jr_00a_544f:
    nop
    ld [$0781], sp
    inc hl
    inc d
    and c
    ld [$f5f4], sp
    inc h
    ld l, h
    ld sp, $4021
    jr nz, jr_00a_5464

    dec b
    ld [hl], b
    rra
    rla

jr_00a_5464:
    set 4, b
    rlca
    ld [hl], e
    or $f7
    inc hl
    jr jr_00a_544e

    rlca
    jr nz, jr_00a_5491

    ld d, $f0
    jr nz, jr_00a_548a

    ld b, c
    ld e, $14
    dec d
    ld [hl], b
    rra
    daa
    ld hl, $2507
    ld [$08a3], sp
    reti


    ld h, $f0
    jr nz, jr_00a_54c7

    ld [hl+], a
    inc b
    dec b
    ld [hl], b

jr_00a_548a:
    rra
    scf
    jr nz, @-$35

    ld hl, $0c07

jr_00a_5491:
    add e
    inc e
    ld [hl], $f0
    jr nz, jr_00a_549a

    inc b
    jr c, jr_00a_54d3

jr_00a_549a:
    ld l, h
    ld h, a
    inc bc

jr_00a_549d:
    ld c, c
    nop
    jr c, @+$3b

    inc bc
    inc b
    ld c, h
    ld c, l
    db $ed
    dec bc
    or $a3
    jr nz, jr_00a_5507

    ld e, l
    ld b, c
    ld h, $40
    rlca
    ld b, $07
    ccf
    ld b, $05
    add sp, -$17
    ld [$07eb], a
    jr nz, jr_00a_549d

    inc d
    push af
    inc h
    add c
    ld bc, $f241
    dec l
    ld b, b
    inc d
    dec d

jr_00a_54c7:
    ld hl, sp+$37
    ld sp, hl
    ld a, [$07fb]
    inc h
    cp e
    cp h
    ld bc, $d310

jr_00a_54d3:
    ld bc, $03de
    inc l
    db $ec
    db $ed
    xor $ef
    ret nz

    daa
    ld c, b
    ld c, c
    di
    ld c, d
    ld c, e
    inc h
    inc d
    dec bc
    inc l
    db $fc
    db $fd
    cp $ff
    ld e, $00
    jr z, jr_00a_5546

    ld e, c
    ld e, d
    ld e, e
    ld h, h
    jr z, jr_00a_54fd

    jr nc, jr_00a_5538

    ld [$811e], sp
    ld [$5352], sp
    ld d, h

jr_00a_54fd:
    ld d, l
    push bc
    nop
    rst $30
    dec b
    xor b
    ld [hl], $03
    ld d, b
    ld d, c

jr_00a_5507:
    ld c, a
    ld bc, $001f
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
    nop
    inc b
    nop
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

jr_00a_5527:
    rra
    nop
    rra
    nop
    add b
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

jr_00a_5538:
    dec l
    nop
    jr nc, jr_00a_5527

    ld [bc], a
    inc bc
    ld a, [hl+]
    nop
    ld sp, $023c
    inc d
    dec d
    inc de

jr_00a_5546:
    sbc a
    ld [de], a
    ld [$1309], sp
    ld [de], a
    ld hl, $8000
    nop
    inc [hl]
    db $fd
    dec [hl]
    inc a
    inc b
    inc b
    dec b
    inc hl
    ld [hl+], a
    jr jr_00a_5574

    or e
    inc hl
    ld [hl+], a
    ld hl, $8000
    nop
    inc h
    dec h
    db $fc
    dec b
    inc d
    ld a, a
    dec d
    inc sp
    ld [hl-], a
    jr z, jr_00a_5596

    inc sp
    ld [hl-], a
    ld hl, $f800
    add b
    nop

jr_00a_5574:
    ld [bc], a
    inc b
    ld c, d
    rlca
    dec b
    db $10
    ld de, $3938
    ld h, e
    db $10
    ld de, $0021
    add b
    nop
    ld [bc], a
    inc b
    inc b
    dec b
    ld b, l
    rlca
    cp $a0
    rlca
    rla
    jr nz, jr_00a_55b1

    jr nz, jr_00a_55b3

    ld l, b
    ld l, c
    ld a, a
    ld l, d

jr_00a_5596:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    jr nz, @+$04

    ld [$14f3], sp
    dec d
    ld b, l
    rlca
    and b
    rlca
    daa
    db $10
    ld de, $ff4e
    ld c, a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l

jr_00a_55b1:
    ld a, [hl]
    pop af

jr_00a_55b3:
    ld a, a
    dec b
    inc b
    ld b, l
    rlca
    and b
    rlca
    scf
    jr nz, jr_00a_55de

    ld e, [hl]
    rst $38
    ld e, a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    pop af
    xor a
    dec b
    inc b
    ld b, l
    rlca
    and e
    rlca
    ret nc

    pop de
    cp b
    cp c
    cp a
    cp d
    dec a
    dec a

jr_00a_55d7:
    cp l
    cp [hl]
    cp a
    dec b
    ld [$f94c], sp

jr_00a_55de:
    ld c, l
    ld h, c
    rlca
    ld b, l
    nop
    ldh [$ffe1], a
    ret z

    ret


    jp z, Jump_000_3ddf

    call z, $cecd
    rst $08
    inc bc
    ld [$0640], sp
    db $fd
    rlca
    daa
    nop
    dec b
    ld b, [hl]
    ld b, a
    ldh a, [$fff1]
    ret c

    ld a, a
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    inc bc
    inc c
    cp $68
    ld d, $40
    inc d
    dec d
    ld d, [hl]
    ld d, a
    db $10
    ld de, $e8ff
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ld hl, sp+$03
    inc c
    dec bc
    inc d
    pop bc
    rrca
    ld hl, sp-$07
    ld a, [$fcfb]
    add a
    db $fd
    cp $ff
    ld c, $04
    nop
    jr jr_00a_55d7

    ld [$040f], sp
    ld b, b
    inc b
    cp b
    ld [$0971], sp
    ld b, c
    ccf
    ld e, $1f
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
    stop
    nop
    inc b
    ld a, a
    nop
    nop
    inc d
    dec d
    and d
    ld [hl], a
    halt
    cpl
    nop
    rst $30
    and l
    inc [hl]
    dec [hl]
    inc bc
    ld [bc], a
    inc b
    dec b
    or d
    ld h, a
    dec e
    ld h, [hl]
    cpl
    nop
    or l
    inc h
    dec h
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    add b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    dec bc
    inc b
    ld h, b
    ld sp, $4361
    nop
    rrca
    inc b
    inc bc
    inc b
    ld [hl], b
    ld [hl], c
    ld b, e
    nop
    rrca
    inc b
    cp $02
    ld [$a00c], sp
    and c
    jp $a0c4


    and c
    ld sp, hl
    dec c
    rrca
    inc b
    pop hl
    rlca
    inc h
    rlca
    dec b
    or b
    or c
    ld a, a
    db $10
    ld de, $b1b0
    inc h
    ld b, $05
    rrca
    inc b
    rst $38
    ld h, a
    ld h, [hl]
    inc [hl]
    dec h
    dec d
    ret nz

    pop bc
    jr nz, jr_00a_5705

    ld hl, $c1c0
    inc [hl]
    inc b
    dec d
    rrca
    inc b
    nop
    inc b
    ld l, a
    inc b
    dec b
    db $10
    ld de, $0021
    inc h
    dec h
    rrca
    inc b
    ld b, $03
    inc b
    jr nz, jr_00a_5701

    ld hl, $0f00
    inc b
    rrca
    inc b
    rrca
    inc b
    ld [$3904], sp
    ld [bc], a
    rrca
    inc b
    add hl, bc
    inc b
    ld h, $22
    daa
    rrca
    inc b
    ld [$6708], sp
    ld [hl], $32
    scf
    rrca
    inc b
    ld [$4608], sp
    ld b, a

jr_00a_5701:
    ld [bc], a
    add hl, de
    adc h
    rrca

jr_00a_5705:
    inc b
    inc b
    inc c
    ld d, [hl]
    ld d, a
    ld [bc], a
    dec e
    rrca
    inc b
    inc b
    inc c
    ld c, [hl]
    add hl, de
    ld c, a
    rrca
    inc b
    add hl, bc
    db $10
    ld e, [hl]
    ld e, a
    rrca
    inc b
    ld a, [bc]
    db $10
    rrca
    jr @-$20

    dec b
    inc d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, $14
    ld b, b
    ld b, $7b
    ld b, $07
    inc h
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    pop bc
    nop
    ld a, [de]
    inc de
    ld bc, $ef41
    ld [hl-], a
    ld d, b
    ld d, c
    ld c, a
    ld bc, $001f
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
    rla
    nop
    nop
    inc b
    rst $20
    jr nc, jr_00a_575f

    ld [bc], a
    cpl
    nop

jr_00a_575f:
    and l
    nop
    ld sp, $0000
    rst $28
    inc d
    dec d
    inc de
    ld [de], a
    inc hl
    nop
    ld [$1309], sp
    rst $20
    ld [de], a
    inc e
    dec e
    add e
    nop
    ld b, e
    ld bc, $3534
    nop
    rst $18
    nop
    inc b
    dec b
    inc hl
    ld [hl+], a
    inc hl
    nop
    jr jr_00a_579c

    rst $08
    inc hl
    ld [hl+], a
    ld c, $0f
    add e
    nop
    ld b, e
    ld bc, $2524
    or $01
    inc b
    inc sp
    ld [hl-], a
    inc hl
    nop
    jr z, jr_00a_57c0

    inc sp
    ld [hl-], a
    ld h, e
    ld e, $1f

jr_00a_579c:
    add e
    nop
    ld b, e
    ld bc, $0403
    db $10
    ld de, $0023
    db $db
    jr c, jr_00a_57e2

    adc e
    nop
    db $10
    ld de, $0403
    jr nz, jr_00a_57d2

    nop
    cpl
    nop
    jp $0b00


    inc b
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b

jr_00a_57c0:
    rrca
    inc b
    nop
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a

jr_00a_57d2:
    inc bc
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b

jr_00a_57e2:
    rrca
    inc b
    sub b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    ld bc, $3104
    rrca
    inc b
    add hl, bc
    inc b
    ld [bc], a
    di
    inc bc
    ld sp, $040f
    add a
    nop
    ld d, $12
    inc h
    dec h
    db $fc
    rrca
    inc b
    dec b
    dec h
    ld b, [hl]
    ld b, a
    ld h, $22
    inc [hl]
    dec [hl]
    inc a
    rrca
    inc b
    and l
    nop
    ld d, [hl]
    ld d, a
    ld [hl], $32
    rrca
    inc b
    ld c, e
    nop
    db $fc
    rrca
    inc b
    ld l, c
    nop
    ld e, h
    ld e, l
    inc h
    dec h
    ld b, b
    rlca
    add hl, bc
    ld b, $2f
    nop
    add a
    nop
    ld b, c
    cpl
    scf
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
    dec e
    nop
    nop
    inc b
    rst $20
    jr nc, jr_00a_5843

    ld [bc], a
    cpl
    nop

jr_00a_5843:
    and l
    nop
    ld sp, $0000
    rst $08
    inc d
    dec d
    ld [de], a
    inc de
    cpl
    nop
    jp Jump_000_3400


    dec [hl]
    ccf
    nop
    nop
    inc b
    dec b
    ld [hl+], a
    inc hl
    cpl
    nop
    jp Jump_000_1b00


    inc h
    dec h
    ld bc, $3204
    inc sp
    cpl
    nop
    jp $0300


    inc b
    ld h, e
    db $10
    ld de, $002f
    jp $0300


    inc b
    jr nz, jr_00a_5897

    cpl
    nop
    nop
    jp Jump_000_0f00


jr_00a_587c:
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl

jr_00a_5897:
    nop
    rrca
    inc b
    nop
    cpl
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    cpl
    nop
    nop
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    adc a
    inc bc
    rrca
    inc b
    cpl
    nop
    rrca
    inc b
    ldh a, [$ff2f]
    nop
    rrca
    inc b
    rrca
    inc b
    ld a, [bc]
    inc b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    xor $0c
    inc b
    ld b, b
    rlca
    ld b, $27
    nop
    ld d, d
    ld d, e
    ld d, h
    dec [hl]
    ld d, l
    add hl, bc
    ld bc, $ed41
    ld [hl], $50
    ld d, c
    cpl
    jr c, @+$21

    nop
    nop
    rra
    nop
    rra
    nop

jr_00a_58e6:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_00a_587c

    nop
    nop

jr_00a_58fc:
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f

jr_00a_5908:
    rrca
    ld bc, $010f
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    ld hl, sp+$0f
    ld bc, $010f

jr_00a_5922:
    db $eb
    dec d
    jr jr_00a_5926

jr_00a_5926:
    jr z, jr_00a_5938

    inc [hl]
    rst $38
    jr jr_00a_5980

    jr c, jr_00a_5976

    jr nc, jr_00a_5908

    jr nz, jr_00a_5922

    ei
    nop
    ld [hl], b
    add b
    inc bc
    ld l, h

jr_00a_5938:
    db $10
    call nz, $e838
    ei
    db $10
    ld [hl], b
    db $e4
    rla
    inc e
    nop
    ld h, [hl]
    jr jr_00a_58fc

    cp a
    ld a, b
    adc h
    ld [hl], b
    ld hl, sp+$00
    ld a, b

jr_00a_594d:
    inc b
    ld bc, $ff13

jr_00a_5951:
    inc c
    ld a, l
    ld e, $77
    jr c, jr_00a_58e6

    ld [hl], b
    cp $fe
    ret nz

    inc bc
    nop
    nop

jr_00a_595e:
    inc a
    nop
    ld h, h
    jr c, @-$36

    rst $28
    jr nc, jr_00a_595e

    nop
    jr nc, jr_00a_594d

    ld a, [de]
    ld a, $00
    ld h, [hl]
    ld sp, hl
    jr c, jr_00a_5951

    ld [bc], a
    push hl
    dec de
    ldh a, [rP1]
    adc h

jr_00a_5976:
    ld [hl], b
    sbc h
    push af
    ld h, b
    push hl
    inc b
    nop
    jr nz, jr_00a_5985

    sbc [hl]

jr_00a_5980:
    ld h, b
    adc a
    ld a, h
    ld a, a
    db $ed

jr_00a_5985:
    ld e, $71
    ld c, $3f
    nop
    ld e, $02
    inc bc
    rst $38
    ld d, c
    ld l, $b2
    ld l, l
    call $cc73
    ld [hl], e
    rst $38
    sbc e
    ld h, h
    rst $38
    nop
    rst $28
    jr nc, jr_00a_5a1a

    nop
    rst $38
    sub d
    ld l, h
    sbc l
    ld l, [hl]
    ld l, l
    sbc [hl]
    and a
    ld e, b
    rst $38
    ld sp, hl
    ld b, $ef
    db $10
    db $fd
    ld b, $bf
    ld [hl], b
    rst $38
    rst $08
    ld [hl], b
    sbc a
    ld h, b
    rst $30
    ld [$1ceb], sp
    rst $38
    or c
    ld c, [hl]
    xor c
    halt
    sbc a
    ld h, b
    pop af
    ld c, $ff
    db $fd
    ld [bc], a
    ei
    inc b
    dec [hl]
    adc $33
    call z, $fdff
    ld b, $e9
    halt
    adc a
    ld [hl], b
    and e
    ld e, h
    rst $38
    rst $38
    nop
    swap h
    rst $18
    ld l, h
    rst $10
    ld l, h
    rst $38
    cp d
    ld d, l
    adc $31
    reti


    ld h, $75
    ld a, [$a7ff]
    ld a, b
    ei
    ld b, $6b
    or $7a
    rst $20
    cp a
    and [hl]
    db $db
    sub $b9
    db $fd
    ld [hl+], a
    ld h, l
    inc h
    add b
    adc $22
    nop
    nop
    nop
    ld bc, $0020
    ld h, c
    ld de, $0001
    rst $38
    ld [bc], a
    ld bc, $0c0f
    rrca
    inc c
    scf
    adc $ff
    ld [hl], $cd
    cp h
    ld b, e

jr_00a_5a14:
    sub $39
    push de
    ld a, [hl-]
    rst $38
    ld l, a

jr_00a_5a1a:
    sub b
    ld h, a
    sbc e
    or $6f
    rst $10
    ld a, [hl+]
    rst $38
    ld [hl], e
    adc [hl]
    adc $b1
    call $bcb3
    jp Jump_00a_73bf


    adc h
    rst $38
    ld l, h
    db $d3
    ld l, l
    and c
    inc bc
    ld b, b
    rst $38
    add b
    ld b, b
    add b
    ldh [$ff60], a
    ldh a, [$fff0]
    ld a, b
    rst $28
    ld hl, sp-$28
    ld hl, sp+$03
    stop
    ld b, $07
    ld b, $f7
    rlca
    nop
    inc bc
    db $e3
    add hl, hl
    db $db
    ld h, h
    rst $38
    db $e3
    rst $38

jr_00a_5a52:
    db $fd
    rst $28
    ld a, a
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $38
    ld c, $1e
    inc c
    ld c, $df
    inc hl
    rst $38
    rra
    rst $30
    ld a, [$ffdf]
    stop
    db $db
    rst $38
    ld a, b
    ld a, h
    db $fd
    ld h, b
    ld h, b
    inc bc
    and b
    ldh a, [$ff60]
    ldh a, [rP1]
    ldh [$ffcf], a
    jr jr_00a_5a52

    jr jr_00a_5a14

    ld [de], a
    ld [$2dca], sp
    ld c, $00
    rst $38
    ld b, $00
    add hl, bc
    ld b, $15
    ld c, $17
    ld c, $ff
    add hl, de
    ld b, $0b
    inc b
    rrca
    nop
    dec b
    ld [bc], a
    rst $38
    adc a
    ld [hl], b
    sub h
    ld l, e
    db $eb
    inc e
    push hl
    ld a, [de]
    rst $10
    rst $18
    jr nz, jr_00a_5b1e

    ret nz

    dec d
    cp [hl]
    add b
    inc e
    call z, $ff30
    sub d
    ld l, h
    cp d
    ld e, h
    ld [$7c1c], a

jr_00a_5ab0:
    add b
    rst $38
    cp $00
    jp hl


    ld b, $0a
    rlca
    ld d, $0f
    cp $c1
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    inc bc
    inc c
    inc bc
    dec b
    rst $38
    ld [bc], a
    rst $20
    jr jr_00a_5ab0

    jr @-$45

    ld b, [hl]
    ld e, c
    rst $38
    and $8f
    ld [hl], b
    ld c, a
    or e
    db $fc
    inc bc
    sbc l
    rst $38
    ld h, e
    db $fd
    ld b, $d3

jr_00a_5adb:
    inc l
    and [hl]
    ld a, b
    sbc h
    rst $38
    ld h, b
    db $ec
    jr nc, jr_00a_5b2c

    or b
    ld hl, sp+$00
    xor b
    db $fd
    ret nc

    ld hl, $030f
    ld bc, $0d0f
    ld c, $0d
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    ld c, $0f
    and a
    ld e, b
    rst $38
    rst $38
    nop
    di

Jump_00a_5aff:
    adc h
    ldh [c], a
    sbc l
    ld h, [hl]
    sbc c
    rst $38
    ccf
    ret nz

    rst $30
    ld l, [hl]
    db $fd
    ld h, [hl]
    or a
    ld a, b
    rst $38
    xor $11
    ld a, d
    push bc
    db $fd
    jp nz, $99f6

    rst $38
    halt
    cp c
    ld d, a
    xor d
    rst $18
    inc hl
    add b

jr_00a_5b1e:
    nop
    rst $38
    ret nz

    add b
    ret nz

    add b
    adc h
    inc c
    inc c
    adc h
    db $fd
    ldh [rNR10], a
    nop

jr_00a_5b2c:
    ret nc

    ldh a, [rNR31]
    rra
    dec de
    rra
    cp a
    inc bc
    rrca
    ld [bc], a
    rlca
    nop
    ld [bc], a
    db $e3
    jr c, jr_00a_5adb

    rst $38
    ld h, a
    rst $28
    sbc a
    ld a, l
    rst $38
    ei
    rst $38
    pop de
    rst $38
    rst $38
    or e
    di
    ld h, e
    ld h, e
    nop
    nop
    rst $10
    rst $38
    xor a
    rst $28
    sbc a
    cp $ff
    or $ff
    and h
    rst $38
    rst $38
    sbc a
    cp a
    sbc b
    sbc h
    nop
    jr @-$66

    rst $38
    ld hl, sp-$10
    ldh a, [$ffc0]
    ret nz

    ret z

    ret z

    nop
    di
    nop
    ld h, b
    stop
    inc hl
    inc a
    jr nc, jr_00a_5b72

jr_00a_5b72:
    ld e, l

jr_00a_5b73:
    jr nc, @+$01

    ld b, a
    jr c, jr_00a_5bab

    inc c
    ld c, $01
    ld a, a
    ld h, b
    rst $38
    ld c, $00
    ld de, $1b0e
    inc b
    xor $00
    ld a, a
    ld [hl], a
    add b
    db $fc
    inc bc
    ld a, a
    add e
    or a
    add b
    ld [bc], a
    rst $38
    jr jr_00a_5b93

jr_00a_5b93:
    inc h
    jr jr_00a_5c15

    nop
    ei
    nop
    db $fd
    rst $38
    jr nz, jr_00a_5b9d

jr_00a_5b9d:
    scf
    call z, RST_18
    inc [hl]
    jr @+$01

    ld [hl], h
    jr c, jr_00a_5b73

    jr nc, @+$58

    xor h
    db $fc

jr_00a_5bab:
    nop
    cp a
    ld [hl], b
    add b
    ld hl, sp+$18
    ld [hl], a
    ld l, b
    nop
    inc bc
    dec b
    rst $38
    ccf
    inc sp
    ccf
    ccf
    rra
    rra
    ld l, [hl]
    ld a, a
    rst $38
    ld h, [hl]
    ld a, a
    dec sp
    call z, $0ef1
    jp hl


    sub [hl]
    rst $38
    rst $38
    call z, $eefd
    ld sp, hl
    cp $7f
    cp $7f
    ld a, [hl]
    rst $38
    di
    db $ec
    db $fd
    and $e9
    add b
    ld hl, $b5ff
    ld a, d
    cp h
    ld a, a
    rst $28
    rra

jr_00a_5be2:
    rst $18
    rst $38
    rst $38
    sbc h
    ld a, h
    ret z

    jr c, jr_00a_5be2

    nop
    ld a, h
    db $fc
    rst $38
    sub $fe
    ldh [c], a
    cp $e8
    ld hl, sp-$34
    cp $bf
    rra
    ccf
    rrca
    rra
    ld b, l
    ld b, a
    ld [hl], b
    ld d, $00
    db $fd
    ld b, $10
    nop
    nop
    nop
    or $ff
    db $e3
    rst $38
    rst $08
    rst $00
    rst $30
    ld h, e
    ld h, e
    ret nz

    add hl, bc
    ldh [c], a
    add hl, bc
    ld a, l
    rst $38

jr_00a_5c15:
    rst $38
    ld sp, hl
    rst $38
    rst $18
    rst $38
    add e
    db $e3
    inc b
    inc b
    rst $38
    ld b, b
    ld b, b
    ret nz

    ret nz

    nop
    nop
    inc c
    cp $ff
    ret nz

    db $ec
    add b
    add b
    call z, $0ccc
    inc c
    cp $05
    ld c, b
    inc c
    inc c
    jr jr_00a_5c4f

    inc bc
    inc bc
    dec e
    cp a
    ld bc, $1d2a
    dec sp
    dec b
    rlca
    ret nc

    inc hl
    ld c, $ff
    ld c, $18
    ld a, $e0
    db $fc
    add b
    ldh [rNR32], a
    rst $18
    ret nz

jr_00a_5c4f:
    db $e4
    ret c

    db $fd
    pop bc
    ld h, d
    ld c, $03
    ld h, b
    pop af
    rlca
    or c
    ld c, $e1
    inc e
    ld hl, $0437
    add h
    inc c
    call z, $c0ff
    ldh a, [$fff0]
    ret z

    inc a
    call z, Call_000_3c1c
    rst $38
    ld sp, $3331
    scf
    inc bc
    rlca
    ld bc, $ef03
    jr jr_00a_5c94

    jr @+$20

    ldh a, [rNR34]
    nop
    add e
    ret nz

    rst $38
    inc b
    jp $8182


    add a
    adc h
    inc c
    inc e
    rst $38
    nop
    inc e
    ld bc, $1101
    ld de, $0003
    ld a, a
    db $dd
    inc e

jr_00a_5c94:
    ld e, l
    sbc [hl]
    adc h
    ld e, $00
    nop
    rlca
    rst $38
    sub b
    sub c
    add b
    add b
    db $ec
    inc e
    ld h, b
    sbc b
    rst $38
    ret nz

    ld b, $00
    inc c
    jr jr_00a_5ce3

    jr jr_00a_5d25

    db $fd
    add b
    ld b, $23
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    rlca
    db $fc
    ld h, b
    rra
    ld h, b
    daa
    inc a
    nop
    sbc $2c
    ld a, $ec
    rst $38
    db $ec
    ldh a, [$ffc8]
    ldh a, [$ffe8]
    db $10
    ret c

    ldh [rIE], a

jr_00a_5ccc:
    dec de
    ld c, $0b
    ld b, $07
    ld bc, $0205
    rst $18
    ld c, $05
    inc b
    inc bc
    rrca
    db $10
    ld c, $ec
    cp b
    rst $38
    add sp, -$50
    ldh a, [$ffc0]

jr_00a_5ce3:
    ret nc

    jr nz, jr_00a_5d1e

    ret nc

    rst $08
    sbc b
    ld h, b
    ld a, b
    jr nc, jr_00a_5d50

    add hl, sp
    rst $20
    inc bc
    dec de
    ld c, $f6
    db $eb
    inc bc
    db $ec
    cp b
    pop hl
    inc bc
    dec c
    ld b, $06
    ld bc, $e1fa
    inc bc
    add hl, bc
    db $10
    ld [de], a
    add sp, -$50
    ld hl, sp-$40
    call c, $387f
    jr c, jr_00a_5ccc

    sub b
    ld h, b
    xor b
    ld [hl], b
    ld b, c
    ld b, b
    ld a, a
    dec bc
    ld b, $0f
    ld bc, $0e1d
    ld c, $00
    ld [bc], a
    rst $20
    ld a, [bc]

jr_00a_5d1e:
    rlca
    rlca
    ldh [rLY], a
    pop hl
    dec b
    ret c

jr_00a_5d25:
    jr nc, @+$32

    xor $00
    ld [bc], a
    ld hl, sp+$30
    ld c, b
    ld [bc], a
    ld b, $1e
    nop
    dec a
    cp a
    ld a, [de]
    inc a
    dec de
    dec de
    rlca
    dec bc
    jr nz, jr_00a_5d3b

jr_00a_5d3b:
    add hl, bc
    inc a
    ld sp, $c002
    ld [hl], $60
    add b
    db $10

jr_00a_5d44:
    ldh [rP1], a
    ld a, [bc]
    ld b, b
    ld a, [bc]
    rst $20
    inc e
    dec bc
    rrca
    nop
    jr z, @+$09

jr_00a_5d50:
    ld a, [bc]
    sbc h
    add sp, -$08
    rlc b
    ldh [rSC], a
    ld a, [bc]
    sub b
    ld [bc], a
    ld a, [bc]
    db $eb
    inc bc
    inc e
    dec bc
    ld a, [$03e3]
    sub b
    db $e4
    inc bc
    sbc h
    add sp, $0f
    inc b
    rlca
    sbc c
    ld bc, $0980
    ld b, $0a
    ld hl, sp+$10
    dec b
    ld a, [bc]
    db $e3
    rlca
    rrca
    jp hl


    inc b
    dec b
    ld a, [bc]
    pop hl
    dec bc
    nop
    nop
    ld [bc], a
    ldh a, [$ffc0]
    ret z

    and [hl]
    ld [bc], a
    ld a, [bc]
    cp b
    ld [hl], b
    inc bc
    ld a, [bc]
    add hl, bc
    inc d
    dec b
    ld a, [bc]
    inc d
    ret z

    rst $38
    jr nc, jr_00a_5d44

    ret nz

    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc

jr_00a_5d9a:
    ld sp, hl
    ld bc, $40e1
    add c
    ld [hl-], a
    inc bc
    nop
    ret c

    ldh a, [$ffd0]
    dec sp
    ldh [$ffa0], a
    nop
    inc d
    ldh a, [rLCDC]
    ld d, b
    sub d
    dec sp
    db $eb
    inc bc
    sbc e

jr_00a_5db2:
    rlca
    ld [bc], a
    db $eb
    inc bc
    ret c

    ldh a, [$ffe3]
    inc bc
    and c
    inc bc
    dec b
    ld sp, hl
    ld [bc], a
    ld b, c
    inc b
    db $e3
    inc bc
    sbc b
    ld h, b
    db $10
    ldh [$ffb8], a
    ld e, a
    ld d, b
    add sp, $30
    or b
    nop
    pop hl
    dec b
    inc bc
    ld h, b
    nop
    ld a, a
    ld [bc], a
    ld bc, $0207
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rst $38
    ldh a, [rP1]
    jr c, jr_00a_5db2

    db $10
    ldh [$ffa8], a
    ld d, b
    rst $30
    ret nc

    jr nz, jr_00a_5d9a

    ld h, [hl]
    ld l, [hl]
    ld bc, $0600
    ld bc, $196f
    rlca
    daa
    rra
    ld h, l
    ld l, a
    ldh [rP1], a
    ld [hl], b
    ld b, e
    rst $38
    ld h, b
    ld h, b
    add b
    ld c, a
    ccf
    ld e, [hl]
    inc hl
    dec hl
    rst $38
    inc e
    ccf
    ld d, $3d
    ld d, $1f
    inc c
    ld c, $f3
    inc bc
    rlca
    jp nz, Jump_00a_4148

    ld a, [hl-]
    jr z, @-$3e

    inc e
    add sp, -$79
    sub [hl]
    ld l, h
    xor $88
    ld [hl], d

jr_00a_5e1e:
    inc hl
    inc b
    add a
    ld [hl], e
    inc hl
    inc b
    daa
    db $fd
    rra
    jr nz, jr_00a_5e2d

    ccf
    ld e, a
    jr nz, jr_00a_5e59

jr_00a_5e2d:
    rra
    ccf
    ei
    db $10
    ld d, $c0
    jr jr_00a_5e95

    add b
    jr nz, @-$3e

    ld b, b
    ld a, a
    add b
    ret nz

    nop
    add sp, -$80
    sbc h
    ld l, b
    rlca
    inc b
    cp $e5
    rlca
    ld c, a
    ccf
    rlca
    nop
    jr jr_00a_5e53

    inc hl
    rst $38
    rra
    rst $28
    rra
    rst $38
    ld l, a

jr_00a_5e53:
    rst $38
    ld l, a
    ld [hl], a
    ld a, a
    sbc a
    and e

jr_00a_5e59:
    ld a, a
    ret nz

    nop
    jr nc, jr_00a_5e1e

    add b
    jr @+$01

    ldh [$fff4], a
    ld hl, sp-$0e
    db $fc
    pop hl
    cp $e1
    rst $38
    cp $5e
    ld hl, $1e2d
    ld a, $1f
    ccf
    cp a
    ld [de], a
    ld a, l
    ld l, $3e
    ld bc, $0006
    dec c
    add l
    rst $38
    ld a, a
    ret nc

    cpl
    ld hl, sp-$79
    sbc [hl]
    ld h, c
    ld [hl], a
    db $fc
    ret nc

    ld a, [hl+]
    ld bc, $c956
    or $12
    db $ec
    inc a
    ret nz

    rst $20
    ld a, b
    add b
    ldh [$ffaa], a

jr_00a_5e95:
    add hl, bc
    jr nz, @+$4a

    ld bc, $0e13
    rst $30
    ld l, $1f
    ld e, [hl]
    ld [bc], a
    ld b, $a3
    rra
    rst $28
    sbc a
    rst $38
    rst $18
    cp a
    rst $18
    ccf
    rst $10
    ccf
    and e
    ld a, a
    rst $38
    ld c, a
    jr nc, jr_00a_5f2e

    rrca
    ld a, $1f
    ld a, $13
    rra
    ld e, l
    ld l, $7e
    ld hl, $8023
    jr jr_00a_5ec7

    dec b
    add c
    ld c, $03
    nop
    nop
    nop

jr_00a_5ec7:
    ld [$fffd], sp
    inc l
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rst $10
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    nop
    rst $38
    call $cf32
    jr nc, jr_00a_5f5a

    adc b
    ld a, l
    sbc [hl]
    cp a
    call nc, Call_00a_4837
    cp a
    inc hl
    call c, Call_000_0301
    rst $18
    rst $38
    jr nz, @-$12

    inc de
    and [hl]
    reti


    and l
    and $6c
    rst $38
    xor a
    ld a, [$fa1d]
    ld b, $f3
    rrca
    ld hl, sp-$01
    rlca
    sbc l
    ld h, d
    rst $18
    jr nz, @-$0b

    rrca
    di
    rst $38
    rrca
    cp $01
    and d
    ld e, l
    ld h, d
    sub c
    add hl, sp
    rst $38
    ret z

    rla
    xor $bf
    ld h, a
    sbc h
    ld h, [hl]
    ld a, [de]
    rst $38
    and $db
    and l
    dec c
    set 1, c
    adc [hl]
    ld d, l
    rst $38
    cp [hl]
    db $eb
    inc d
    ld a, h
    add e
    ld e, l

jr_00a_5f2d:
    and d

jr_00a_5f2e:
    rst $08
    rst $38
    jr nc, jr_00a_5f2d

Jump_00a_5f32:
    inc b
    ld l, h
    xor e
    ld a, [de]
    db $fc
    ld h, a
    rst $38
    ei
    call z, $fb73
    inc c
    ldh [c], a
    dec e
    cp $ff
    ld bc, $40bf
    ld bc, $50ff

jr_00a_5f48:
    sbc a
    ret nc

    rst $38
    inc e
    or d
    ld a, e
    jr z, jr_00a_5f48

    ld d, $f7
    jr nc, @+$01

    ldh a, [$ff61]
    pop hl
    sbc e
    db $fc
    ld h, e

jr_00a_5f5a:
    db $e4
    and e
    rst $38
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    rst $38
    cpl
    add $c7
    ld bc, $60ff
    cp a
    ret nc

    rst $38
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    rst $38
    ldh a, [$ff31]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    rst $38
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    rst $38
    ld l, $cc
    rst $08
    rst $38
    nop
    cp $01
    ldh a, [rIE]
    rrca
    db $e3
    dec de
    adc $3d
    adc l
    ld l, e
    add b
    rst $38
    ld l, l
    ld a, $f6
    rst $38
    nop
    ccf
    ret nz

    rrca
    rst $38
    ldh a, [$ffe7]
    ld hl, sp+$33
    db $fc
    ld bc, $6da6
    rst $38
    ld e, [hl]
    ret nc

    ld c, e
    ld h, h
    sbc e
    ld h, a
    sbc c
    xor a
    rst $38
    ld d, c
    rst $38
    ld b, b
    reti


    and $d6
    db $ed
    or a
    rst $38
    call $add7
    ld l, l
    sub e
    cp l
    jp $ffa7


    reti


    ld h, [hl]
    sbc c
    ld e, d
    cp l
    db $f4
    ccf
    ld l, e
    rst $38
    or a
    res 6, a
    ld b, h
    cp a
    adc b
    rst $30
    ld h, $ff
    reti


    or d
    ld a, l
    and c
    ld e, [hl]
    ld d, [hl]
    cp c
    sbc c
    rst $38
    and $4c
    cp a
    inc h
    db $db
    sbc e
    ld a, h
    ld hl, $deff
    sbc h
    db $e3
    ret z

    ccf
    ld [hl+], a
    db $dd
    ld e, l
    rst $38
    ldh [c], a
    ld b, h
    cp e
    ei
    sbc h
    ld h, e
    add h
    jp $24ff


    jp hl


    ld l, $f1

Call_00a_6003:
    ld a, [hl-]
    and l
    ld a, [hl]
    and b
    rst $38
    ld a, l
    jp nz, $013b

    rst $38

jr_00a_600d:
    ld d, d
    sbc l
    pop de
    rst $38
    ld e, $fe
    scf
    ld l, a
    or a
    ld e, [hl]
    and a
    ld a, h
    rst $30
    add a
    add hl, hl
    sub $03
    ld [de], a
    add sp, $17
    ld sp, hl
    rlca
    rst $38
    cp h
    ld b, e
    rst $20
    jr jr_00a_600d

    dec de
    ld [hl], a
    call $a3ff
    ld e, c
    xor h
    ld d, l
    adc d
    ld [hl], a
    srl [hl]
    rst $38
    db $dd
    xor [hl]
    ld [hl], h
    rst $08
    or c
    ld c, [hl]
    add c

Jump_00a_603d:
    cp a
    rst $38

Jump_00a_603f:
    jp nc, Jump_00a_51dd

    sbc $be
    ld [hl], a
    rst $28
    rst $30
    rst $38
    ld e, [hl]
    ld h, a
    inc a
    ld b, a
    xor c
    sub $fb
    sbc l
    rst $38
    ld h, e
    add l
    jp $e825


    cpl
    ldh a, [$ff3b]
    rst $38
    and h
    ld a, l
    and l
    ld a, l
    jp Jump_00a_603f


    ldh [rIE], a
    push bc
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $20
    ld a, a
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $80
    nop
    db $fd
    inc hl
    jr nz, jr_00a_6079

jr_00a_6079:
    ld h, [hl]
    rst $20
    add $c7
    dec l
    ld l, $ff
    ld e, c
    sbc $21
    pop hl
    ld h, a
    rst $20
    ld h, [hl]
    rst $20
    rst $38
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    ldh a, [$ffdf]
    ld b, $f7
    db $e4
    rst $20
    ld h, $22
    nop
    ld h, h
    rst $20
    rst $38
    call $29ce
    ld l, $53
    call c, $cff1
    rst $38
    jp nc, Jump_00a_69ed

    or $aa
    ld [hl], a
    rst $08
    rst $30
    rst $38
    sbc [hl]
    rst $20
    cp h
    rst $00
    xor c
    sub $f7
    sbc c
    rst $38
    ld a, e
    sbc l
    ei
    dec e
    jp c, $f43d

    dec sp
    rst $38
    and h
    ld e, e
    sbc d
    ld h, a
    rst $08
    inc sp
    ld [hl], d
    adc l
    rst $38
    ld [$f515], a
    jp c, $d6b9

    xor d
    rst $10
    rst $38
    ld a, c
    add a
    rst $08
    jr nc, jr_00a_610e

    adc $56
    xor e
    rst $38
    and $1b
    ld hl, sp+$0f
    ret c

    cpl
    db $dd
    scf
    rst $38
    xor h
    ld a, e
    adc a
    ld a, b
    ld c, e
    cp h
    add hl, hl
    sbc $ff
    add $39
    inc de
    rst $28
    and l
    ld a, d
    ld b, d
    cp l
    rst $38
    adc h
    ld [hl], e
    ld b, e
    cp h
    ld [hl], $cf
    xor c
    ld d, a
    rst $38
    ld b, [hl]
    cp c
    add hl, hl
    sub $9a
    ld h, a
    ld d, h
    cp e
    rst $38
    and d
    ld a, l
    sbc l
    ld h, d
    ld c, b
    or a

jr_00a_610e:
    ld c, [hl]
    or a
    rst $38
    xor d
    rst $10
    and h
    db $db
    ld h, h
    adc e
    ld c, b
    adc a
    rst $38
    jp nc, Jump_00a_7b1d

    or h
    xor e
    db $f4
    and h
    ld e, e
    rst $38
    and [hl]
    ld e, b
    rst $28
    ld de, $40bf
    ld e, l
    and $ff
    jp c, $b7e9

    call $cc36
    ld b, l
    cp d
    rst $38
    ld b, [hl]
    adc c
    sbc h
    inc de
    add sp, $77
    db $fd
    and $ff
    add hl, sp
    ld h, [hl]
    ld e, b
    ld h, a
    db $db
    and l
    ld e, a
    ld h, b
    rst $38
    rst $08
    ldh a, [$ff1f]
    ldh [$ffb9], a
    ld b, [hl]
    ei
    inc b
    rst $38
    rst $08
    ldh a, [$ffcf]
    ldh a, [$ff7f]
    add b
    db $e4
    sbc e
    rst $38
    ld h, [hl]
    sbc b
    xor a
    ld d, c
    cp a
    nop
    ld e, l
    ld h, [hl]
    cp $01
    inc bc
    sub $ac

jr_00a_6166:
    ld c, a
    or e
    xor l
    db $d3
    and l
    rst $38
    db $db
    ld h, a
    adc c
    ld c, d
    adc l
    sub $1f
    ld a, h
    rst $38
    or h
    xor b
    db $f4
    ld b, $f7
    ld h, e
    sbc e
    ldh a, [rIE]
    rra
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $00
    rst $38
    jr c, jr_00a_61bf

    rst $08
    ld d, e
    call c, $f8cf
    inc de
    rst $38
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    xor c
    rst $18
    ld a, [hl]
    ld c, e
    cp h
    ld b, [hl]
    or a
    ld bc, $a202
    ld e, a
    rst $28
    ld a, $c7
    ld a, [hl]
    add c
    ld bc, $4702
    ret c

    rst $00
    rst $18
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $05
    ld [bc], a
    add hl, bc
    jp nc, $12ff

    call c, Call_00a_6ca9
    sub h
    ld [hl], a
    adc e
    ld a, e

jr_00a_61bf:
    rst $30
    ret nz

    ccf
    ldh a, [rP1]
    jr z, jr_00a_6166

    ld e, e
    ld a, b
    dec hl
    rst $38
    sub l
    ld [hl], $19
    sbc $e1
    cp $03
    db $fc
    db $fd
    rrca
    nop
    ld [$bf44], sp
    sbc h
    db $e3
    dec sp
    ret c

    rst $38
    or h
    ld l, l
    cp e
    ld b, [hl]
    ld c, a
    adc b
    cp d
    rst $00
    rst $38
    ld l, c
    sbc c
    inc h
    db $db
    cp e
    ld b, h
    ld b, l
    add d
    rst $38
    xor b
    inc sp
    sbc $e1
    ei
    add d
    and a
    ld h, b
    ei
    ld [$0319], a

jr_00a_61fb:
    jr nc, jr_00a_61fb

    ld bc, $02fd
    db $fc
    rst $30
    inc bc
    db $e4
    dec de
    push hl
    jr nc, @+$81

    add b
    cp a
    ld b, b
    rst $38
    ccf
    ret nz

    daa
    ret c

    rst $38
    nop
    sbc a
    ld hl, sp-$41
    rlca
    ldh [$ff83], a
    ld h, h
    jp hl


    ld l, $05
    add hl, bc
    scf
    rst $18
    call $956a
    push af
    ld a, [de]
    rlca
    dec bc
    xor $b3
    rst $38
    push bc
    sbc d
    dec [hl]
    xor d
    ld d, c
    xor $d3
    ld a, h
    rst $38
    cp e
    ld [hl], l
    ld l, $f3
    adc l
    ld [hl], d
    rst $38
    nop
    rst $38
    or e
    ld c, h
    di
    inc c
    rla
    add sp, -$61
    ldh [rIE], a
    dec a
    jp nz, Jump_000_18e7

    daa
    ret c

    ld [hl], a
    adc l
    sbc $00
    inc bc
    jp c, Jump_00a_5f32

    and [hl]
    inc b
    ld c, $9e
    ei
    rst $38
    ld b, $e3
    add d
    ld h, a
    add sp, $2f
    push af
    scf
    ei
    and b
    ld [hl], a
    ld bc, $b50e
    push af
    ld c, h
    sbc $5b
    ld a, a
    rst $38
    and [hl]
    ld a, a
    xor c
    ld e, a
    ld d, [hl]
    cp e
    ld bc, $ff28
    adc l
    adc a
    sbc b
    sbc a
    rst $10
    cp $a8
    rst $38
    rst $28
    sbc b
    rst $38
    ld [hl+], a
    db $fd
    ld bc, $5c28
    call c, $ffa9
    ld l, e
    cpl
    rst $38
    sbc e
    ld a, a
    and l
    ld e, a
    ld b, [hl]
    cp $02
    ld [bc], a
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    ccf
    rst $38
    ld [hl], b
    rst $38
    add d
    db $fd
    dec e
    nop
    ld a, [hl+]
    rra
    dec a
    cp $3b
    dec a
    ld l, [hl]
    xor c
    call c, Call_00a_6003
    sbc e
    cp l
    rst $38
    ld c, [hl]
    ld a, e
    xor h
    or l
    ld c, e
    ld e, e
    and l
    scf
    rst $38
    adc $df
    ld d, d
    ld l, a
    xor c
    push hl
    and b
    halt
    rst $38
    ld d, c
    inc a
    adc e
    cp [hl]
    ld d, c

jr_00a_62c7:
    rst $28
    inc e
    ld e, h
    rst $38

jr_00a_62cb:
    and e
    ei
    ld b, $f7
    ld c, $b1
    ld c, [hl]
    ei
    rst $18
    inc b
    rst $20
    jr jr_00a_62c7

    db $10
    jp nz, Jump_00a_603d

    rst $28

jr_00a_62dd:
    rst $38
    ld [hl], b
    adc l
    ld [hl], d
    rst $18
    jr nz, jr_00a_62cb

    jr jr_00a_62dd

    pop af
    ld [$41c1], sp
    dec b
    ld [hl+], a
    add b
    ld [hl-], a
    ld [hl], a
    ld b, e
    cp a
    scf
    cp $00
    ld [hl+], a
    inc d
    ei
    ld hl, $26df
    rst $38
    sub a
    rst $38
    rst $38
    ld a, c
    ei
    ld e, [hl]
    rst $38
    ld [hl], b
    ld a, h
    add hl, hl
    rst $38
    sbc $46
    cp c
    sub e
    rst $28
    inc h
    rst $38
    db $db
    ld a, a
    rst $38
    cp a
    cp a
    xor d
    ei
    rst $10
    rst $18
    inc bc
    inc h
    rst $38
    add d
    ld a, a
    sub h
    ei
    ld h, b
    rst $38
    push de
    ld a, [$78ff]
    ld a, a
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    rst $38
    add b
    nop
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    rst $38
    ret nz

    ld d, d
    cp $01
    ld b, c
    ld b, b
    ld bc, $fffe
    ld bc, $0100
    ld c, b
    dec h
    inc h
    add d
    ld a, l
    rst $38
    ld bc, $46d0
    cp a
    adc c
    or $26
    reti


    rst $38
    or e
    ld a, l
    and [hl]
    ld e, e
    ld e, d
    or a
    sbc l
    and $fb
    ld d, c
    xor d
    ld bc, $e138
    sbc [hl]
    ld a, a
    add b
    ret z

    ld a, a
    ld a, a
    rst $38
    nop
    ld [hl], b
    rst $38
    rst $38
    nop
    ld bc, $ff02
    daa
    reti


    cp $01
    rlca
    cp $ff
    nop
    db $fd
    ld e, b
    nop
    ld bc, $c33c
    sbc e
    ld a, h
    ld h, c
    sbc [hl]
    rst $38
    call c, $a8a3
    rst $18
    ld d, d
    db $ed
    db $fd
    ld h, d
    rst $38
    xor h
    ld [hl], e
    ld l, d
    rst $38
    ld a, [bc]
    dec bc
    or [hl]
    or [hl]
    rst $38
    add hl, bc
    dec bc
    add e
    inc bc
    add [hl]
    ld b, $8b
    dec bc
    rst $38
    rst $38
    inc b
    xor c
    rst $10
    ld b, $f9
    and c
    cp $ff
    ld e, d
    ld a, a
    jp nc, Jump_000_28fd

    rst $38
    push bc
    ld a, [$c8ff]
    scf
    ld a, a
    add b
    pop af
    ld [hl], c
    or e
    ld a, a
    rst $38
    ld l, e
    sub h
    rst $08
    ld a, a
    db $e4
    ld h, [hl]
    halt
    adc c
    rst $38
    jp nc, $fe7e

    ld bc, $e627
    ld l, c
    ld a, h
    rst $38
    ld e, d
    and l
    scf
    cp $49
    ld a, d
    sbc d
    ld h, l
    rrca
    ld h, l
    ld l, [hl]
    ld e, h
    and e
    ld h, c
    ld c, c
    ld h, a
    ld d, b
    ld h, e
    ld c, c
    ld h, a
    ld d, c
    rst $18
    ld l, a
    xor b
    ld a, [de]
    cp $77
    inc b
    ld c, e
    db $fc
    inc bc
    rst $38
    cp [hl]
    ld b, c
    set 1, e
    ldh [$ff60], a
    ei
    nop
    cp $67
    ld c, l
    dec [hl]
    dec [hl]
    add hl, bc
    ld a, [bc]
    cp $40
    ld l, l
    cp $66
    ld c, l
    db $fd
    jp Jump_000_0ec5


    adc l
    adc $db
    rst $38
    or h
    ld l, h
    sub e
    ld e, l
    and d
    adc a
    ld [hl], b
    sbc e
    rst $38
    ld h, h
    ei
    ld a, e
    ld a, l
    add d
    pop hl
    ld [hl], a
    rst $38
    cp $e0
    inc c
    ld d, a
    cp c

jr_00a_641a:
    rst $38
    ld bc, $807f
    ld hl, $20bf
    and d
    ld e, l
    ld b, c
    ld l, b
    rst $38
    ldh [$ff0c], a
    ldh [c], a
    rst $38
    sbc l
    rst $38
    add b
    cp $01
    ld h, $d5
    ld [$1dff], a
    dec hl
    call z, $2bcc
    or [hl]
    ld a, e
    rst $10
    rst $38
    ld e, b
    cp a
    scf
    db $fc
    inc b
    rlca
    rst $38
    or c
    xor $60
    rrca
    db $e3
    rst $38
    ld l, a
    ret nz

    rrca
    ld e, h
    rst $18
    ld [hl], c
    rst $28
    ld a, a
    ret c

    rst $38
    add h
    ld h, b
    db $10
    or $ff
    ld l, l
    cp $00
    ld de, $fff7
    or e
    or e
    db $dd
    sub e
    halt
    rst $38
    cp c
    rst $18
    jr c, jr_00a_641a

    pop de
    ld [hl], $d5
    jp hl


    rst $38
    jr jr_00a_64e8

    add sp, -$49
    db $ec
    sub l
    db $eb
    ld h, b
    rst $38
    sbc a
    add l
    ld a, a
    ld e, d
    cp $4b
    cp a
    inc d
    rst $38
    rst $38
    and e
    ld e, a
    inc de
    db $ec
    ld d, [hl]
    rst $38
    ld d, b
    rst $38
    ret nc

    ld l, l
    ld l, l
    sub b
    ret nc

    pop bc
    ret nz

    ld h, c
    rst $38
    ld h, b
    pop de
    ret nc

    rst $38
    jr nz, @-$1a

    ld h, [hl]
    ld d, [hl]
    rst $38
    xor c
    adc b
    add hl, de
    ret


    ld l, a
    ld [hl], d
    adc l
    and $fb
    ld h, a
    call nc, Call_000_18e0
    sbc e
    ld a, [$35ca]
    ld l, l
    rst $38
    xor $53
    ld [hl], d
    xor [hl]
    ld d, c
    ld d, a
    ld e, [hl]
    push de
    rst $38
    or $fe
    ld bc, $00ff
    pop de
    ld l, $b2
    ld a, a
    ld l, l
    db $ed
    ld [hl], e
    call z, $9b73
    ld h, h
    ret nz

    ld h, b
    rst $38
    jr nc, @+$01

    nop
    sub e
    ld l, h
    sbc l
    ld l, [hl]
    ld l, l
    rst $38
    sbc [hl]
    and a
    ld e, b
    ld sp, hl
    ld b, $ef
    db $10
    db $fd
    ld a, c
    ld b, $0f
    ld b, d
    rlca
    ld b, d
    or a
    ld a, d
    ld l, d
    ld c, [hl]
    add hl, bc
    ld [bc], a
    rst $08
    rst $10

jr_00a_64e8:
    cp h
    ld [hl], l
    rst $10
    dec c
    ld b, h
    ld hl, $ff25
    nop
    ei
    db $fd
    inc bc
    ld h, e
    ld [hl], $cf
    ld d, b
    rst $38
    nop
    jp hl


    rst $38
    ld a, [de]
    rst $38
    nop
    cp a
    ret nz

    rst $38
    nop
    rst $20
    reti


    inc d
    ld h, c
    nop
    dec bc
    ld e, b
    ld c, l
    cp [hl]
    ld bc, $3f58
    ret nz

    rst $38
    pop hl
    add c
    add b
    ld b, b
    pop bc
    ld b, c
    ld c, a
    rst $08
    ei
    ld h, e
    db $fc
    ld bc, $e65a
    add hl, de
    ldh a, [c]
    db $dd
    ld d, c
    ld a, a
    ld l, [hl]
    adc $f1
    add l
    ld a, [$f837]
    db $fd
    ld l, $ff
    ld l, h
    sbc a
    xor c
    sbc $2a
    db $dd
    and e
    ld e, l
    rst $38
    jp Jump_00a_473d


    cp c
    rst $00
    cp c
    add a
    ld a, c
    rst $38
    sub c

jr_00a_6541:
    sbc a
    add hl, de
    rra
    jr jr_00a_6565

    jr c, @+$41

    rst $38
    ld [hl], d
    ld a, l
    ldh a, [c]
    db $fd
    ld h, d
    ld a, l
    add $f9
    rst $38
    ld a, a
    pop hl
    dec a
    db $e3
    inc a
    db $e3
    jr c, jr_00a_6541

    rst $38
    ccf
    rst $20
    scf
    rst $28
    ccf
    rst $28
    ld a, $ef
    rst $38
    inc d

jr_00a_6565:
    db $eb
    dec de
    db $ec
    add hl, bc
    or $04
    ei
    rst $28

jr_00a_656d:
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    ld hl, $bf00
    ld [hl], b
    rst $08
    rst $38
    ld [hl], b
    sbc a
    ld h, b
    rst $30
    ld [$1cef], sp
    or c
    rst $38
    ld c, [hl]
    xor c
    halt
    sbc a
    ld h, b
    pop af
    ld c, $fd
    rst $38
    ld [bc], a
    ei
    inc b
    dec [hl]
    adc $33
    call z, $fffd
    ld b, $e9
    halt
    adc a
    ld [hl], b
    ld d, e
    cp e
    adc b
    rst $38
    db $fd
    ld h, $d1
    or d
    ld a, l
    or e
    ld d, h
    ld h, [hl]
    rst $38
    xor d
    cp l
    push hl
    ld a, [hl]
    or a
    db $db
    ld b, c
    xor l
    rst $38
    ld [de], a
    ld a, c
    sub [hl]
    dec sp
    call nc, Call_00a_515e
    inc bc
    rst $38
    di
    nop
    rst $38
    ld a, b
    add a
    db $ed
    add b
    or d
    rst $38
    ld c, l
    ld l, d
    db $dd
    ld l, l
    db $db
    sub h
    sbc e
    add hl, bc
    db $fd
    ld sp, hl
    ld bc, $5401
    ld a, a
    ld a, [de]
    push de
    or $17
    rst $38
    ld b, l
    xor [hl]
    ld h, h
    cp c
    add hl, hl
    inc de
    xor [hl]
    or l
    rst $08
    ld [hl], e
    ld [$05f8], a
    jr nz, jr_00a_664b

    ldh [rIF], a
    db $db
    inc a
    xor d
    ret nz

    ld b, h
    and b
    ld b, b
    inc e
    jr jr_00a_656d

    inc e
    ld c, $61
    ld [hl], a

jr_00a_65f1:
    rst $28
    ei
    jr jr_00a_65f1

    ld h, b
    ld de, $d92e
    ret


    ld sp, $ff19
    pop hl
    cp c
    ld l, c
    ld e, d
    xor e
    sbc [hl]
    ld l, a
    ld e, [hl]
    rst $38
    xor a
    dec a
    adc $ce
    pop af
    inc e
    ldh [c], a
    add b
    rst $38
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$0f
    rst $38
    rlca
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld b, b
    rst $08
    ld c, b
    ld c, a
    ld a, b
    rst $38
    ld a, a
    ld [hl], e
    ld a, a
    db $f4
    db $fc
    ld [hl], a
    rst $38
    ld a, e
    rst $30
    rst $30
    ld a, l
    db $e3
    ld bc, $695a
    sub [hl]
    cp d
    rst $00
    rst $38
    or h
    db $db
    and d
    db $dd
    cp l
    jp nz, $d728

    rst $38
    adc a
    ld [hl], c
    adc l
    ld [hl], e
    adc h
    ld [hl], e
    ldh [$ff1f], a
    ei
    ld e, h
    and e
    inc bc
    ld a, [de]
    rst $00

jr_00a_664b:
    ld hl, sp-$79
    ld hl, sp+$0f
    rst $38
    ldh a, [rIF]
    ldh a, [$ff0c]
    di
    dec bc
    db $f4
    add l
    ld a, a
    ld a, d
    ld a, b
    add a
    rrca
    cp $0d
    cp $00
    scf
    rst $28
    cp $00
    rst $38
    add b
    ret nz

    jr c, jr_00a_66a0

    rst $08
    and c
    rst $38
    ld e, [hl]
    pop hl
    ld e, $e1
    ld e, $c6
    add hl, sp
    cp h
    rlca
    ld b, e
    ld h, d
    cp l
    ld bc, $005e
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

jr_00a_66a0:
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
    and e
    ld e, h
    rst $38
    rst $38
    nop
    jp $cb3c


    ld c, h
    ldh a, [c]
    ld a, l
    adc [hl]
    rst $38
    ld [hl], c
    ret


    ld [hl], $83
    ld a, d
    ld [hl], l
    ld a, [$ffb7]
    ld a, b
    ld sp, hl
    inc b
    dec sp
    or [hl]
    ld b, l
    ld a, d
    or a
    rst $38
    ld hl, sp+$7d
    and d
    ld d, l
    xor b
    ld [hl], b
    db $db
    db $ec
    rst $38
    scf
    ld b, h
    rst $18
    reti


    ld l, [hl]
    ld hl, $d196
    rst $38

jr_00a_66ec:
    add $cd
    halt
    jr nz, jr_00a_66ec

    rst $38
    nop
    rst $08
    rst $38
    jr nc, @+$01

    nop
    ld sp, hl
    dec b
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    inc bc
    sbc a
    jr nz, @+$01

    nop
    db $d3
    rst $38
    inc [hl]
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    push af
    db $fd
    ld c, $61
    nop
    inc c
    rst $10
    daa
    ld a, [$f72a]
    rst $38
    add c
    ld l, e
    adc d
    ld l, a
    sbc a
    halt
    or h
    ld l, c
    rst $08
    ld [$ffd3], sp
    add b
    pop bc
    ld bc, $0027
    rst $20
    add hl, de
    cp $e9
    nop
    rst $38
    nop
    ld b, h
    cp a
    adc b
    rst $30
    ld h, $ff
    reti


    or e
    ld a, h
    cp l
    ld b, e
    ld [hl], a
    adc a
    or a
    rst $38
    ld h, a
    rst $30
    ld l, a
    inc h
    db $db
    sbc e
    ld a, h
    ccf
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $08
    rst $28
    rst $30
    rst $18
    cp a
    rst $18
    ld bc, $fe02
    ld bc, $f8ff
    rst $38
    rst $38
    ei
    rst $30
    di
    push de
    ei
    db $fd
    ei
    cp $01
    ld [bc], a
    ld hl, $dcde
    inc hl
    ld hl, sp-$39
    cp $ff
    pop af
    rst $28
    and $ef
    or $d9

jr_00a_6776:
    ld l, a
    jp c, Jump_00a_6fff

    ld sp, hl
    ld l, a
    db $d3
    ld h, a
    or l
    cpl
    cp c
    rst $38
    ld l, a
    cp d
    ld l, a
    sub d
    ld l, a
    db $eb
    rst $18
    rst $20
    rst $38
    rst $18
    push hl
    rst $08
    ld h, l
    rst $18

jr_00a_6790:
    xor b
    rst $18
    ld a, [hl+]
    rst $38
    rst $18
    jr nz, jr_00a_6776

    jr z, @-$1f

    ld d, a
    ei
    ld d, [hl]
    rst $38
    ei
    ld d, l
    di
    inc d
    ei
    inc d
    ei
    dec h
    rst $38
    ei
    and h
    ei
    add [hl]
    ei
    ld l, a
    or $ed
    rst $38
    or $6f
    or $cf
    and $49
    db $f4
    ld e, c
    rst $38
    or $1b
    or $8f
    or $b4
    ld c, a
    and h
    rst $38
    ld e, a
    jp z, $db2d

    inc a
    db $eb
    inc e
    and l
    rst $38
    ld e, c
    or [hl]
    cpl
    db $db
    ld h, [hl]
    ld d, c
    xor h
    set 7, a
    or [hl]
    ld c, c
    ld a, [hl-]
    xor l
    xor $45
    xor [hl]
    ld d, l
    rst $38
    cp [hl]
    inc de
    db $fc
    dec bc
    db $f4
    ld d, b
    db $eb
    call z, $d7ff
    adc b
    rst $38
    ret


    ld a, [hl]
    pop bc
    sub [hl]
    sbc c
    rst $38
    ld l, $cd
    or $64
    cp a
    push af
    ld c, $ff
    db $fd
    nop
    nop
    add hl, bc
    nop
    push hl
    ld d, $ff
    nop
    rst $18
    ld a, l
    ldh [rP1], a
    dec c
    ld [$00ff], sp
    ld l, c
    sbc d
    pop hl
    db $10
    ei
    rst $08
    jr nc, jr_00a_6790

    ld bc, $cf1a
    dec h
    or $26
    rst $38
    ei
    ld a, [de]
    di
    add l
    ld l, a
    sub h
    ld a, c
    sbc c
    rst $38
    ld [hl], e
    or d
    ld a, a
    ld a, a
    add b
    cp a
    ret nz

    cp a
    di
    ret nz

    ld a, a
    ld h, d
    db $10
    ld h, b
    ld [de], a
    add b
    cp $01
    cp $03
    nop
    rst $38
    nop
    inc b
    ld h, d
    inc b
    ret nz

    nop
    rra
    nop
    rra
    nop
    ld l, c
    nop
    rst $38
    ccf
    pop bc
    ld b, l
    and [hl]
    add [hl]
    ld b, a
    adc [hl]
    ld c, a
    rst $38
    cp b
    ld a, a
    ld b, e
    cp h
    add hl, sp
    add $2f
    pop de
    rst $38
    adc c
    or $a9
    or $a3
    ld a, h
    and d
    ld a, l
    rst $38
    jp nz, Jump_00a_527d

    db $fd
    jp Jump_00a_46fc


    ld sp, hl
    ld hl, sp+$2f
    inc bc
    rra
    nop
    ld l, c
    nop
    sub [hl]
    ld l, e
    or b
    ld b, e
    or h
    rst $38
    ld h, a
    push af
    ld l, [hl]
    sub c
    ld l, [hl]
    or d
    ld c, l
    rst $10
    rst $38
    jr z, jr_00a_68bb

    rst $00
    bit 6, h
    adc a
    or b
    xor l
    rst $38
    jp nc, $d6a5

    xor l
    sbc $7b
    adc h
    ld d, d
    rst $38
    xor l
    adc h
    ld [hl], e
    dec l
    or $e8
    ld h, c
    ld e, $ff
    jp z, Jump_00a_78b7

    ld d, b
    or l
    sbc h
    halt
    ld b, e
    rst $38
    cp h
    ld [hl], $cf
    rst $38
    nop
    rrca
    ldh a, [$ffc0]
    rst $38
    rst $08
    ld l, d
    sbc d
    ld d, a
    ld a, d
    xor h
    xor $9f
    rst $38
    ld b, d
    ld c, b
    or a
    rst $38
    nop
    add [hl]
    ld a, c
    ld h, b
    rst $38
    rst $20

jr_00a_68bb:
    or l
    call $ed4b
    ld d, l
    db $dd
    db $db
    cp $00
    ld [bc], a
    ld [hl+], a
    ei
    ld c, e
    sub $b6
    xor a
    push de
    rst $38

jr_00a_68cd:
    rst $30
    adc d
    ld e, l
    sub c
    cp [hl]
    ld c, [hl]

jr_00a_68d3:
    pop af
    and h
    db $fd
    ld e, e
    ld bc, $fd20
    ld [bc], a
    rst $18
    jr nz, jr_00a_68d3

    ld a, [bc]
    cp a
    swap l
    or h
    ld l, e
    ld b, d
    cp l
    ld b, b

jr_00a_68e7:
    rrca
    ld bc, $f7ff
    ld [$40bf], sp
    ld h, a
    sbc b
    add hl, de
    and $8f
    and $79
    ld d, $ef
    cpl
    add hl, bc
    rra
    nop
    ld l, c
    nop
    add hl, sp
    rst $38
    set 3, h
    ld l, $12
    and $a7
    ld d, c
    ld a, l
    ld a, a
    sub [hl]
    cp c
    ld d, [hl]
    ld [hl], a
    sub c
    dec l
    rst $18
    cpl

jr_00a_6910:
    ld [bc], a
    ldh a, [$ff1f]
    nop
    rra
    nop
    add a
    nop
    inc bc
    jr z, jr_00a_68cd

    ld a, l
    and l
    ld e, d
    cp a
    ld e, d
    or c

jr_00a_6921:
    sbc l
    ldh [c], a
    ld c, d
    or b
    inc bc
    ld h, $9c
    rst $38
    db $e3
    ret z

    scf
    or [hl]
    ld bc, $826d
    call nc, $03ff
    ccf
    nop
    ld b, b
    nop
    cp a
    ccf
    or b
    xor a
    ccf
    xor a
    jr nc, jr_00a_68e7

    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00a_6948

    rst $38
    ld hl, sp-$30
    cpl

jr_00a_6948:
    add c
    nop
    pop hl
    inc b
    db $fc
    nop
    ld [bc], a
    nop
    db $fd
    ccf
    cp $0d
    cp $f5
    ld b, $15
    ld [hl+], a
    nop
    ld h, e
    ld [bc], a
    rst $38
    xor a
    jr nc, jr_00a_6910

    jr nc, jr_00a_6921

    ccf
    ld b, b
    ccf
    pop af
    ccf
    inc d
    rlca
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $0d
    ld c, $ff
    db $fd
    cp $02
    db $fc
    db $fc
    nop
    cp a
    cpl
    rst $38
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $10
    ld h, a
    or [hl]
    cpl
    rst $30
    or a
    ld l, a
    sbc [hl]
    jr nz, jr_00a_69b5

    ei
    rst $18
    cp d
    rst $18
    ld a, a
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    and b
    inc l
    ld a, a
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    rst $10
    and b
    cpl
    rst $38
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    sub [hl]
    ei
    rst $38
    db $fd
    db $f4
    db $fd
    or $ff
    or $ed
    and $fd
    xor l

jr_00a_69b5:
    add b
    nop

jr_00a_69b7:
    cp a
    or $eb
    or $d0
    ld l, a
    rst $38
    sub d
    ld h, a
    sub b
    cpl
    sub a
    ld l, b
    cp b
    ld b, a
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    ccf

jr_00a_69cc:
    ret nz

    ld h, d
    rst $08
    rst $38
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_00a_69b7

    rst $38
    ld h, b
    rst $18
    jr nc, jr_00a_69cc

    rst $38
    nop
    ld h, $f3
    rst $38
    inc b
    ei
    db $fc
    inc bc

jr_00a_69e6:
    rlca
    ld hl, sp+$0c
    ei
    rst $38
    inc c
    ei

Jump_00a_69ed:
    jr jr_00a_69e6

    rst $38
    nop
    adc e
    or $ff
    add hl, bc
    and $09
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    rst $38
    inc bc
    db $fc
    dec c
    ld a, [$07f8]
    inc a
    ret nz

    rst $38
    sbc $2c
    rra
    and $af
    ld [hl], c
    ld e, e
    xor d
    rst $38
    cp [hl]
    ld e, c
    ld a, e
    add h
    ld [hl], $cf
    ld a, l
    inc bc
    rst $38
    or [hl]
    dec d
    db $dd
    ld [bc], a
    ld a, [$7c47]
    inc hl
    ccf
    and $25
    cp a
    ld b, [hl]
    ld c, [hl]
    or c
    ld h, e
    rrca
    ld h, a
    nop
    ld hl, sp+$63
    ld c, $67
    nop
    inc bc
    add hl, de
    and c
    ld d, l
    ld [hl], l
    sub l
    or a
    rst $18
    ld d, a
    ld a, l
    sbc a
    dec hl
    rst $18
    ld [bc], a
    add hl, hl
    db $fc
    and d
    rst $30
    db $fd
    ld b, d
    db $fd
    inc bc
    add hl, hl
    ld b, h
    cp a
    adc e
    db $f4
    rst $38
    dec h
    reti


    cp a
    ld [hl], b
    sub a
    ld l, a
    ld sp, $ffd1
    ldh [$ffa0], a
    and b
    ld h, b
    db $f4
    dec bc
    cp a
    or b
    rst $38
    rrca
    db $fc
    or e
    ld a, $7b
    sbc [hl]
    db $db
    xor $ff
    db $ed
    or $e5
    ld a, [$bf44]
    adc c
    or $ff
    ld h, $d9
    cp l
    ld h, e
    xor l
    ld e, c
    ld a, l
    sbc e
    rst $28
    xor a
    bit 5, a
    sbc e
    ret nz

    ccf
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    db $fc
    rlca
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    ei
    rst $38
    rst $30
    ld bc, $e142
    sbc [hl]
    db $fc
    jp $ffbc


    sbc e
    cp [hl]
    reti


    push af
    jp nc, $dbf4

    ld a, [hl]
    rst $38
    sbc e
    or h
    reti


    dec l
    res 5, [hl]
    ld e, e
    xor [hl]
    rst $38
    ld e, e
    ld h, h
    sbc e
    or h
    db $db
    ld h, h
    sbc c
    ld [hl], d
    rst $38
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $38
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $38
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $38
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$bcf7], sp
    rst $38
    db $db
    ccf
    sbc b
    dec h
    jp nc, $db64

    ld l, h
    ld a, a
    db $db
    ld a, $d9

jr_00a_6af3:
    dec l
    jp c, $9b24

    cpl
    ld hl, $0dfc
    ld [hl+], a
    ld bc, $ba0c
    ld [hl], e
    xor [hl]
    ld d, a
    ld d, c
    xor l
    rst $28
    sub l
    rst $28
    ld d, b
    xor e
    inc b
    inc c
    cp [hl]
    dec de
    ld a, [hl]
    rst $38
    dec sp
    xor [hl]
    adc l
    or $7d
    ldh a, [c]
    ld l, d
    sbc a
    rst $38
    sub b
    rst $28
    jr z, jr_00a_6af3

    or [hl]
    ld a, c
    and e
    ld e, h
    rst $38
    ld d, [hl]
    cp c
    sbc c
    and $4c
    cp a
    add [hl]
    ld sp, hl
    rst $38
    and a
    ld hl, sp+$0f
    ldh a, [rNR34]
    pop hl
    ld hl, sp+$07
    rst $38
    ld [hl+], a
    db $dd
    ld e, l
    ldh [c], a
    ld b, h
    cp e
    pop af
    ld [hl], c
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    ld e, [hl]
    cp a
    jr nc, @-$2f

    rst $38
    cp a
    ld b, b
    ld a, [hl]
    sbc c
    dec hl
    call c, $fae5
    rst $38
    call $9bf2
    db $e4
    ld a, [hl+]
    push de
    ld [de], a
    db $ed
    rst $38
    ld [hl], d
    sbc l
    inc hl
    call c, $39c6
    dec [hl]
    db $db
    rst $38
    push af
    add hl, de
    dec l
    res 5, l
    ld e, e
    ld h, a
    sbc e
    rst $38
    xor [hl]
    ld e, e
    halt
    sbc e
    ld [hl], $db
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
    db $fd
    db $db
    or [hl]
    sbc c
    or l
    rst $38
    jp nc, $dbf6

    db $fc
    db $db
    xor [hl]
    reti


    cp l
    rst $38
    jp c, $dbb4

    inc h
    set 4, l
    ld a, [de]
    ld l, $ff

Call_00a_6ba9:
    pop de
    or b
    ld c, a
    ld d, b
    xor a
    sub b
    ld l, a
    ld d, b
    rst $38
    xor a
    ccf
    ret nz

    rra
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_00a_6be2

    nop
    rst $38
    nop
    ld hl, sp+$07
    rrca
    rst $30
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    rst $38
    nop
    dec h
    db $d3
    rst $38
    and [hl]
    ld e, c
    ld [hl], l
    adc d
    ld c, $f3
    inc e
    di
    ccf
    ld a, [de]
    push af
    dec e
    ldh a, [c]
    ld hl, sp+$07
    nop
    ld [$fffd], sp

jr_00a_6be2:
    inc l
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rst $10
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    nop
    rst $38
    call $cf32
    jr nc, jr_00a_6c72

    adc b
    ld a, l
    sbc [hl]
    cp a
    call nc, Call_00a_4837
    cp a
    inc hl
    call c, Call_000_0301
    rst $18
    rst $38
    jr nz, @-$12

    inc de
    and [hl]
    reti


    and l
    and $6c
    rst $38
    xor a
    ld a, [$fa1d]
    ld b, $f3
    rrca
    ld hl, sp-$01
    rlca
    sbc l
    ld h, d
    rst $18
    jr nz, @-$0b

    rrca
    di
    rst $38
    rrca
    cp $01
    and d
    ld e, l
    ld h, d
    sub c
    add hl, sp
    rst $38
    ret z

    rla
    xor $bf
    ld h, a
    sbc h
    ld h, [hl]
    ld a, [de]
    rst $38
    and $db
    and l
    dec c
    set 1, c
    adc [hl]
    ld d, l
    rst $38
    cp [hl]
    db $eb
    inc d
    ld a, h
    add e
    ld e, l

jr_00a_6c45:
    and d
    rst $08
    rst $38
    jr nc, jr_00a_6c45

    inc b
    ld l, h
    xor e
    ld a, [de]
    db $fc
    ld h, a
    rst $38
    ei
    call z, $fb73
    inc c
    ldh [c], a
    dec e
    cp $ff
    ld bc, $40bf
    ld bc, $50ff

jr_00a_6c60:
    sbc a
    ret nc

    rst $38
    inc e
    or d
    ld a, e
    jr z, jr_00a_6c60

    ld d, $f7
    jr nc, @+$01

    ldh a, [$ff61]
    pop hl
    sbc e
    db $fc
    ld h, e

jr_00a_6c72:
    db $e4
    and e
    rst $38
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    rst $38
    cpl
    add $c7
    ld bc, $60ff
    cp a
    ret nc

    rst $38
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    rst $38
    ldh a, [$ff31]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    rst $38
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    rst $38
    ld l, $cc
    rst $08
    rst $38
    nop
    cp $01

Call_00a_6ca9:
    ldh a, [rIE]
    rrca
    db $e3
    dec de
    adc $3d
    adc l
    ld l, e
    add b
    rst $38
    ld l, l
    ld a, $f6
    rst $38
    nop
    ccf
    ret nz

    rrca
    rst $38
    ldh a, [$ffe7]
    ld hl, sp+$33
    db $fc
    ld bc, $6da6
    rst $38
    ld e, [hl]
    ret nc

    ld c, e
    ld h, h
    sbc e
    ld h, a
    sbc c
    xor a
    rst $38
    ld d, c
    rst $38
    ld b, b
    reti


    and $d6
    db $ed
    or a
    rst $38
    call $add7
    ld l, l
    sub e
    cp l
    jp $ffa7


    reti


    ld h, [hl]
    sbc c
    ld e, d
    cp l
    db $f4
    ccf
    ld l, e
    rst $38
    or a
    res 6, a
    ld b, h
    cp a
    adc b
    rst $30
    ld h, $ff
    reti


    or d
    ld a, l
    and c
    ld e, [hl]
    ld d, [hl]
    cp c
    sbc c
    rst $38
    and $4c
    cp a
    inc h

Jump_00a_6d00:
    db $db
    sbc e
    ld a, h
    ld hl, $deff
    sbc h
    db $e3
    ret z

    ccf
    ld [hl+], a
    db $dd
    ld e, l
    rst $38
    ldh [c], a
    ld b, h
    cp e
    ei
    sbc h
    ld h, e
    add h
    jp $24ff


    jp hl


    ld l, $f1
    ld a, [hl-]
    and l
    ld a, [hl]
    and b
    rst $38
    ld a, l
    jp nz, $013b

    rst $38

jr_00a_6d25:
    ld d, d
    sbc l
    pop de
    rst $38
    ld e, $fe
    scf
    ld l, a
    or a
    ld e, [hl]
    and a
    ld a, h
    rst $30
    add a
    add hl, hl
    sub $03
    ld [de], a
    add sp, $17
    ld sp, hl
    rlca
    rst $38
    cp h
    ld b, e
    rst $20
    jr jr_00a_6d25

    dec de
    ld [hl], a
    call $a3ff
    ld e, c
    xor h
    ld d, l
    adc d
    ld [hl], a
    srl [hl]
    rst $38
    db $dd
    xor [hl]
    ld [hl], h
    rst $08
    or c
    ld c, [hl]
    add c
    cp a
    rst $38
    jp nc, Jump_00a_51dd

    sbc $be
    ld [hl], a
    rst $28
    rst $30
    rst $38
    ld e, [hl]
    ld h, a
    inc a
    ld b, a
    xor c
    sub $fb
    sbc l
    rst $38
    ld h, e
    add l
    jp $e825


    cpl
    ldh a, [$ff3b]
    rst $38
    and h
    ld a, l
    and l
    ld a, l
    jp Jump_00a_603f


    ldh [rIE], a
    push bc
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $20
    ld a, a
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $80
    nop
    db $fd
    inc hl
    jr nz, jr_00a_6d91

jr_00a_6d91:
    ld h, [hl]
    rst $20
    add $c7
    dec l
    ld l, $ff
    ld e, c
    sbc $21
    pop hl
    ld h, a
    rst $20
    ld h, [hl]
    rst $20
    rst $38
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    ldh a, [$ffdf]
    ld b, $f7
    db $e4
    rst $20
    ld h, $22
    nop
    ld h, h
    rst $20
    rst $38
    call $29ce
    ld l, $53
    call c, $cff1
    rst $38
    jp nc, Jump_00a_69ed

    or $aa
    ld [hl], a
    rst $08
    rst $30
    rst $38
    sbc [hl]
    rst $20
    cp h
    rst $00
    xor c
    sub $f7
    sbc c
    rst $38
    ld a, e
    sbc l
    ei
    dec e
    jp c, $f43d

    dec sp
    rst $38
    and h
    ld e, e
    sbc d
    ld h, a
    rst $08
    inc sp
    ld [hl], d
    adc l
    rst $38
    ld [$f515], a
    jp c, $d6b9

    xor d
    rst $10
    rst $38
    ld a, c
    add a
    rst $08
    jr nc, jr_00a_6e26

    adc $56
    xor e
    rst $38
    and $1b
    ld hl, sp+$0f
    ret c

    cpl
    db $dd
    scf
    rst $38
    xor h
    ld a, e
    adc a
    ld a, b
    ld c, e
    cp h
    add hl, hl
    sbc $ff
    add $39
    inc de
    rst $28
    and l
    ld a, d
    ld b, d
    cp l
    rst $38
    adc h
    ld [hl], e
    ld b, e
    cp h
    ld [hl], $cf
    xor c
    ld d, a
    rst $38
    ld b, [hl]
    cp c
    add hl, hl
    sub $9a
    ld h, a
    ld d, h
    cp e
    rst $38
    and d
    ld a, l
    sbc l
    ld h, d
    ld c, b
    or a

jr_00a_6e26:
    ld c, [hl]
    or a
    rst $38
    xor d
    rst $10
    and h
    db $db
    ld h, h
    adc e
    ld c, b
    adc a
    rst $38
    jp nc, Jump_00a_7b1d

    or h
    xor e
    db $f4
    and h
    ld e, e
    rst $38
    and [hl]
    ld e, b
    rst $28
    ld de, $40bf
    ld e, l
    and $ff
    jp c, $b7e9

    call $cc36
    ld b, l
    cp d
    rst $38
    ld b, [hl]
    adc c
    sbc h
    inc de
    add sp, $77
    db $fd
    and $ff
    add hl, sp
    ld h, [hl]
    ld e, b
    ld h, a
    db $db
    and l
    ld e, a
    ld h, b
    rst $38
    rst $08
    ldh a, [$ff1f]
    ldh [$ffb9], a
    ld b, [hl]
    ei
    inc b
    rst $38
    rst $08
    ldh a, [$ffcf]
    ldh a, [$ff7f]
    add b
    db $e4
    sbc e
    rst $38
    ld h, [hl]
    sbc b
    xor a
    ld d, c
    cp a
    nop
    ld e, l
    ld h, [hl]
    cp $01
    inc bc
    sub $ac

jr_00a_6e7e:
    ld c, a
    or e
    xor l
    db $d3
    and l
    rst $38
    db $db
    ld h, a
    adc c
    ld c, d
    adc l
    sub $1f
    ld a, h
    rst $38
    or h
    xor b
    db $f4
    ld b, $f7
    ld h, e
    sbc e
    ldh a, [rIE]
    rra
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $00
    rst $38
    jr c, jr_00a_6ed7

    rst $08
    ld d, e
    call c, $f8cf
    inc de
    rst $38
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    xor c
    rst $18
    ld a, [hl]
    ld c, e
    cp h
    ld b, [hl]
    or a
    ld bc, $a202
    ld e, a
    rst $28
    ld a, $c7
    ld a, [hl]
    add c
    ld bc, $4702
    ret c

    rst $00
    rst $18
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $05
    ld [bc], a
    add hl, bc
    jp nc, $12ff

    call c, Call_00a_6ca9
    sub h
    ld [hl], a
    adc e
    ld a, e

jr_00a_6ed7:
    rst $30
    ret nz

    ccf
    ldh a, [rP1]
    jr z, jr_00a_6e7e

    ld e, e
    ld a, b
    dec hl
    rst $38
    sub l
    ld [hl], $19
    sbc $e1
    cp $03
    db $fc
    db $fd
    rrca
    nop
    ld [$bf44], sp
    sbc h
    db $e3
    dec sp
    ret c

    rst $38
    or h
    ld l, l
    cp e
    ld b, [hl]
    ld c, a
    adc b
    cp d
    rst $00
    rst $38
    ld l, c
    sbc c
    inc h
    db $db
    cp e
    ld b, h
    ld b, l
    add d
    rst $38
    xor b
    inc sp
    sbc $e1
    ei
    add d
    and a
    ld h, b
    ei
    ld [$0319], a

jr_00a_6f13:
    jr nc, jr_00a_6f13

    ld bc, $02fd
    db $fc
    rst $30
    inc bc
    db $e4
    dec de
    push hl
    jr nc, @+$81

    add b
    cp a
    ld b, b
    rst $38
    ccf
    ret nz

    daa
    ret c

    rst $38
    nop
    sbc a
    ld hl, sp-$41
    rlca
    ldh [$ff83], a
    ld h, h
    jp hl


    ld l, $05
    add hl, bc
    scf
    rst $18
    call $956a
    push af
    ld a, [de]
    rlca
    dec bc
    xor $b3
    rst $38
    push bc
    sbc d
    dec [hl]
    xor d
    ld d, c
    xor $d3
    ld a, h
    rst $38
    cp e
    ld [hl], l
    ld l, $f3
    adc l
    ld [hl], d
    rst $38
    nop
    rst $38
    or e
    ld c, h
    di
    inc c
    rla
    add sp, -$61
    ldh [rIE], a
    dec a
    jp nz, Jump_000_18e7

    daa
    ret c

    ld [hl], a
    adc l
    sbc $00
    inc bc
    jp c, Jump_00a_5f32

    and [hl]
    inc b
    ld c, $9e
    ei
    rst $38
    ld b, $e3
    add d
    ld h, a
    add sp, $2f
    push af
    scf
    ei
    and b
    ld [hl], a
    ld bc, $b50e
    push af
    ld c, h
    sbc $5b
    ld a, a
    rst $38
    and [hl]
    ld a, a
    xor c
    ld e, a
    ld d, [hl]
    cp e
    ld bc, $ff28
    adc l
    adc a
    sbc b
    sbc a
    rst $10
    cp $a8
    rst $38
    rst $28
    sbc b
    rst $38
    ld [hl+], a
    db $fd
    ld bc, $5c28
    call c, $ffa9
    ld l, e
    cpl
    rst $38
    sbc e
    ld a, a
    and l
    ld e, a
    ld b, [hl]
    cp $02
    ld [bc], a
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    ccf
    rst $38
    ld [hl], b
    rst $38
    add d
    db $fd
    dec e
    nop
    ld a, [hl+]
    rra
    dec a
    cp $3b
    dec a
    ld l, [hl]
    xor c
    call c, Call_00a_6003
    sbc e
    cp l
    rst $38
    ld c, [hl]
    ld a, e
    xor h
    or l
    ld c, e
    ld e, e
    and l
    scf
    rst $38
    adc $df
    ld d, d
    ld l, a
    xor c
    push hl
    and b
    halt
    rst $38
    ld d, c
    inc a
    adc e
    cp [hl]
    ld d, c

jr_00a_6fdf:
    rst $28
    inc e
    ld e, h
    rst $38

jr_00a_6fe3:
    and e
    ei
    ld b, $f7
    ld c, $b1
    ld c, [hl]
    ei
    rst $18
    inc b
    rst $20
    jr jr_00a_6fdf

    db $10
    jp nz, Jump_00a_603d

    rst $28

jr_00a_6ff5:
    rst $38
    ld [hl], b
    adc l
    ld [hl], d
    rst $18
    jr nz, jr_00a_6fe3

    jr jr_00a_6ff5

    pop af

Jump_00a_6fff:
    ld [$41c1], sp
    dec b
    ld [hl+], a
    add b
    ld [hl-], a
    ld [hl], a
    ld b, e
    cp a
    scf
    cp $00
    ld [hl+], a
    inc d
    ei
    ld hl, $26df
    rst $38
    sub a
    rst $38
    rst $38
    ld a, c
    ei
    ld e, [hl]
    rst $38
    ld [hl], b
    ld a, h
    add hl, hl
    rst $38
    sbc $46
    cp c
    sub e
    rst $28
    inc h
    rst $38
    db $db
    ld a, a
    rst $38
    cp a
    cp a
    xor d
    ei
    rst $10
    rst $18
    inc bc
    inc h
    rst $38
    add d
    ld a, a
    sub h
    ei
    ld h, b
    rst $38
    push de
    ld a, [$78ff]
    ld a, a
    ld a, a
    add b
    ld a, [$807a]
    ld a, a
    rst $38
    add b
    nop
    add b
    ld a, [de]
    push af
    ld [hl], l
    ld a, d
    add l
    rst $38
    ret nz

    ld d, d
    cp $01
    ld b, c
    ld b, b
    ld bc, $fffe
    ld bc, $0100
    ld c, b
    dec h
    inc h
    add d
    ld a, l
    rst $38
    ld bc, $46d0
    cp a
    adc c
    or $26
    reti


    rst $38
    or e
    ld a, l
    and [hl]
    ld e, e
    ld e, d
    or a
    sbc l
    and $fb
    ld d, c
    xor d
    ld bc, $e138
    sbc [hl]
    ld a, a
    add b
    ret z

    ld a, a
    ld a, a
    rst $38
    nop
    ld [hl], b
    rst $38
    rst $38
    nop
    ld bc, $ff02
    daa
    reti


    cp $01
    rlca
    cp $ff
    nop
    db $fd
    ld e, b
    nop
    ld bc, $c33c
    sbc e
    ld a, h
    ld h, c
    sbc [hl]
    rst $38
    call c, $a8a3
    rst $18
    ld d, d
    db $ed
    db $fd
    ld h, d
    rst $38
    xor h
    ld [hl], e
    ld l, d
    rst $38
    ld a, [bc]
    dec bc
    or [hl]
    or [hl]
    rst $38
    add hl, bc
    dec bc
    add e
    inc bc
    add [hl]
    ld b, $8b
    dec bc
    rst $38
    rst $38
    inc b
    xor c
    rst $10
    ld b, $f9
    and c
    cp $ff
    ld e, d
    ld a, a
    jp nc, Jump_000_28fd

    rst $38
    push bc
    ld a, [$c8fb]
    scf
    ld bc, $1f2e
    ldh [$ffbf], a
    ld c, a
    ldh a, [$ff7f]
    ccf
    ret


    halt
    sub [hl]
    add hl, hl
    sub c
    ld e, $01
    ld l, $ff
    ld sp, hl
    ld b, $fe
    di
    ld c, $fd
    sub e
    ld l, [hl]
    ccf
    ld l, e
    sub [hl]
    adc a
    ld a, [hl]
    ld e, h
    and e
    ld h, c
    ld c, c
    ld h, a
    ld d, b
    ld a, h
    ld h, e
    ld c, c
    ld h, a
    ld d, c
    ld l, a
    xor b
    ld a, [de]
    cp $77
    inc b
    ld c, e
    rst $38
    db $fc
    inc bc
    cp [hl]
    ld b, c
    set 1, e
    ldh [$ff60], a
    ei
    ei
    nop
    ld h, a
    ld c, l
    dec [hl]
    dec [hl]
    add hl, bc
    ld a, [bc]
    cp $fb
    ld b, b
    ld l, l
    ld h, [hl]
    ld c, l
    db $fd
    jp Jump_000_0ec5


    adc l
    rst $38
    adc $db
    or h
    ld l, h
    sub e
    ld e, l
    and d
    adc a
    rst $38
    ld [hl], b
    sbc e
    ld h, h
    ei
    ld a, e
    ld a, l
    add d
    pop hl
    ei
    ld [hl], a
    rst $38
    ldh [$ff0c], a
    ld d, a
    cp c

jr_00a_712d:
    rst $38
    ld bc, $ff7f
    add b
    ld hl, $a220
    ld e, l
    ld b, c
    ld l, b
    rst $38
    cp $e0
    inc c
    ldh [c], a
    sbc l
    rst $38
    add b
    cp $01
    ld h, $ff
    push de
    ld [$2b1d], a
    call z, $2bcc
    or [hl]
    rst $38

jr_00a_714d:
    ld a, e
    rst $10
    ld e, b
    cp a
    scf
    db $fc
    inc b
    rlca
    cp e
    rst $38
    or c
    ld h, b
    rrca
    db $e3
    rst $38
    ld l, a
    ret nz

    rrca
    ld e, h
    cp a
    rst $18
    ld [hl], c
    ld a, a
    ret c

    rst $38
    add h
    ld h, b
    db $10
    or $fb
    rst $38
    ld l, l
    nop
    ld de, $fff7
    or e
    or e
    db $dd
    rst $38
    sub e
    halt
    cp c
    rst $18
    jr c, jr_00a_712d

    pop de
    ld [hl], $ff
    push de
    jp hl


    jr jr_00a_71fb

    add sp, -$49
    db $ec
    sub l
    rst $38
    db $eb
    ld h, b
    sbc a
    add l
    ld a, a
    ld e, d
    cp $4b
    rst $38
    cp a
    inc d
    rst $38
    and e
    ld e, a
    inc de
    db $ec
    ld d, [hl]
    rst $38
    rst $38
    ld d, b
    ret nc

    ld l, l
    ld l, l
    sub b
    ret nc

    pop bc
    rst $38
    ret nz

    ld h, c
    ld h, b
    pop de
    ret nc

    rst $38
    jr nz, jr_00a_714d

    rst $38
    inc sp
    adc b
    ld l, $a2
    dec sp
    ret z

    ld l, [hl]
    and d
    rst $38
    ld a, e
    ld c, b
    xor [hl]
    or a
    rst $08
    ld c, a
    or b
    rst $30
    rst $38
    cp $8b
    xor $23
    cp d
    adc e
    xor $25
    rst $38
    cp [hl]
    adc d
    db $ed
    db $ed
    ldh a, [c]
    db $f4
    dec bc
    rst $38
    rst $38
    nop
    pop de
    ld l, $b2
    ld l, l
    db $ed
    ld [hl], e
    call z, Call_00a_73f7
    sbc e
    ld h, h
    ret nz

    ld h, b
    jr nc, @+$01

    nop
    sub e
    rst $38
    ld l, h
    sbc l
    ld l, [hl]
    ld l, l
    sbc [hl]
    and a
    ld e, b
    ld sp, hl
    sbc a
    ld b, $ef
    db $10
    db $fd
    ld b, $0f
    ld b, d
    rlca
    ld b, d
    or a
    rst $30
    ld a, d
    ld l, d
    ld c, [hl]
    add hl, bc
    ld [bc], a

jr_00a_71fb:
    rst $10
    cp h
    ld [hl], l
    rst $10
    cp h
    dec c
    ld b, h
    ld hl, $ff25
    nop
    db $fd
    inc bc
    ld h, e
    ld [hl], $cf
    rst $38
    ld d, b
    rst $38
    nop
    jp hl


    ld a, [de]
    rst $38
    nop
    cp a
    rst $18
    ret nz

    rst $38
    nop
    rst $20
    inc d
    ld h, c
    nop
    ld b, a
    cp h
    rst $38
    adc l
    di
    ld a, [hl-]
    add $b0
    ld l, b
    or b
    ld c, b
    rst $38
    ld d, h
    xor h
    sub e
    rst $28
    ld l, h
    sbc a
    db $e4
    dec de

jr_00a_7230:
    rst $38
    db $db
    db $ec
    dec l
    ld [hl-], a
    inc sp
    inc a
    ld c, h
    ld c, a
    cp a
    ld b, $07
    add [hl]
    add a
    add d
    add e
    ld bc, $2f5a
    rst $38
    ret nc

    sub b
    ld l, a
    xor h
    ld e, h
    ld d, b
    or b
    ld b, b
    rst $30
    and b
    jr nz, jr_00a_7230

    ld bc, $e35a
    inc e
    inc a
    jp Jump_00a_5aff


    ld h, [hl]
    inc h
    inc a
    ld l, b
    ld a, b
    ret z

    ld hl, sp-$01
    ld b, h
    cp a
    ld hl, sp-$79
    adc a
    ld [hl], b
    db $fc
    rst $38
    di
    ld c, $0e
    di
    cpl
    ld bc, $a15c
    ld e, [hl]
    ld a, h
    add e
    rst $38
    ld h, a
    ld a, b
    inc c
    rrca
    ld b, $07
    ld [bc], a
    inc bc
    rst $38
    ld b, a
    cp b
    adc b
    rst $30
    ld sp, $d0c9
    jr nc, @+$01

    and b
    ld h, b
    ret nz

    ld b, b
    ld b, b
    rst $08
    rst $28
    rst $38
    rst $28
    and h
    ld e, e
    ld e, e
    cp h
    ld [bc], a
    ld e, [hl]
    rst $30
    jp z, $fff5

    push hl
    ld a, [$fb64]
    cp a
    ld [hl], b
    rst $08
    ld [hl], b
    rst $38
    sbc a
    ld h, b
    rst $30
    ld [$1cef], sp
    or c
    ld c, [hl]
    rst $38
    xor c
    halt
    sbc a
    ld h, b
    pop af
    ld c, $fd
    ld [bc], a
    rst $38
    ei
    inc b
    dec [hl]
    adc $33
    call z, Call_000_06fd
    rst $38
    jp hl


    halt
    adc a
    ld [hl], b
    ld d, e
    cp e
    adc b
    db $fd
    rst $38
    ld h, $d1
    or d
    ld a, l
    or e
    ld d, h
    ld h, [hl]
    xor d
    rst $38
    cp l
    push hl
    ld a, [hl]
    or a
    db $db
    ld b, c
    xor l
    ld [de], a
    rst $38
    ld a, c
    sub [hl]
    dec sp
    call nc, Call_00a_515e
    inc bc
    di
    rst $38
    nop
    rst $38
    ld a, b
    add a
    db $ed
    add b
    or d
    ld c, l
    rst $38
    ld l, d
    db $dd
    ld l, l
    db $db
    sub h
    sbc e
    add hl, bc
    ld sp, hl
    cp $01
    ld bc, $7f54
    ld a, [de]
    push de
    or $17
    ld b, l
    rst $38
    xor [hl]
    ld h, h
    cp c
    add hl, hl
    inc de
    xor [hl]
    or l
    ld [hl], e
    ld h, a
    ld [$05f8], a
    jr nz, jr_00a_7375

    ldh [rIF], a
    db $db
    inc a
    ret nz

    ld b, h
    push de
    and b
    ld b, b
    inc e
    jr @-$7e

    inc e
    ld c, $61
    ld [hl], a

jr_00a_731b:
    rst $28
    jr jr_00a_731b

    db $fc
    ld h, b
    ld de, $b352
    db $e3
    inc hl
    and e
    ld h, e
    rst $38
    and e
    ld h, e
    and [hl]
    ld h, a
    rst $38
    ccf
    ld e, b
    cp a
    rst $38
    daa
    rst $18
    ld b, d
    jp $e767


    cp [hl]
    rst $38
    rst $38
    dec a
    rst $38
    or [hl]
    rst $38
    ld [$11ff], sp
    cp $7f
    ld b, $f8
    ld sp, $1df1
    db $fd
    rlca
    add b
    ld b, $ff
    ld b, a
    add b
    cp b
    jr c, jr_00a_7388

    ld c, a
    ld a, a
    add b
    rst $38
    ld e, b
    ld a, b
    sbc d
    ld a, [$f515]
    adc $3e
    rst $38
    inc sp
    rrca
    rst $08
    ret nz

    ret nc

    jr nc, @-$07

    rrca
    rst $38
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld d, l
    ld e, l
    xor a
    cp a
    ld sp, hl
    adc $90
    ld a, h
    pop hl

jr_00a_7375:
    ld a, e
    ld d, $17
    xor h
    xor a
    ld e, b
    rst $38
    ld e, a
    jp nz, Jump_000_1ffd

    ldh [$ffe0], a
    nop
    rra
    rst $38
    rra
    xor $f1

jr_00a_7388:
    pop de
    pop af
    and c
    pop hl
    ld h, b
    rst $38
    ldh [$ff60], a
    ldh [$ff38], a
    ld hl, sp-$21
    ccf
    ld c, l
    rst $38
    ccf
    and b
    sbc a
    and l
    ei
    and d
    db $fd
    jp $fcff


    jp nz, $82fd

    db $fd
    ld b, [hl]
    ld sp, hl
    sbc l
    rlca
    ldh [c], a
    xor b
    rst $10
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

Jump_00a_73bf:
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
    and e
    ld e, h
    rst $38
    rst $38
    nop
    jp $cb3c


    ld c, h
    ldh a, [c]
    ld a, l

Call_00a_73f7:
    adc [hl]
    rst $38
    ld [hl], c
    ret


    ld [hl], $83
    ld a, d
    ld [hl], l
    ld a, [$ffb7]
    ld a, b
    ld sp, hl
    inc b
    dec sp
    or [hl]
    ld b, l
    ld a, d
    or a
    rst $38

jr_00a_740b:
    ld hl, sp+$7d
    and d
    ld d, l
    xor b
    ld [hl], b
    db $db
    db $ec
    rst $38
    scf
    ld b, h
    rst $18
    reti


    ld l, [hl]
    ld hl, $d196
    rst $38

jr_00a_741d:
    add $cd
    halt
    jr nz, jr_00a_741d

    rst $38
    nop
    rst $08
    rst $38
    jr nc, @+$01

    nop
    ld sp, hl
    dec b
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    inc bc
    sbc a
    jr nz, @+$01

    nop
    db $d3
    rst $38
    inc [hl]
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    push af
    db $fd
    ld c, $61
    nop
    inc c
    rst $10
    daa
    ld a, [$f72a]
    rst $38
    add c
    ld l, e
    adc d
    ld l, a
    sbc a
    halt
    or h
    ld l, c
    rst $08
    ld [$ffd3], sp
    add b
    pop bc
    ld bc, $0027
    rst $20
    add hl, de
    cp $e9
    nop
    rst $38
    nop
    ld c, b
    cp b
    ret c

    cp b
    ld d, c
    rst $38
    or c
    sub e
    ld [hl], e
    and l
    ld h, l
    xor e
    ld l, e
    or e
    rst $38
    ld [hl], e
    or [hl]
    ld [hl], a
    sbc b
    pop hl
    ld d, l
    ld h, [hl]
    push de
    rst $38
    and $8a
    di
    adc d
    di
    ld a, [bc]
    di
    ld l, d
    rst $30
    di
    ld h, [hl]
    push af
    jr nz, jr_00a_748c

    jr jr_00a_740b

    ld a, a

jr_00a_748c:
    nop
    rst $38
    rst $38
    ld bc, $14f9
    rst $30
    db $10
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    nop
    add c
    ld a, b
    inc c
    rst $08
    nop
    db $fd
    rst $38
    ld d, l
    dec b
    ld a, a
    rst $38
    xor $1f
    ld a, a
    add b
    ld a, a
    ccf
    ret nz

    nop
    rst $38
    inc c
    db $fc
    ld bc, $0950
    db $eb
    cp a
    ret nz

    add b
    add hl, bc
    ld [bc], a
    ld hl, $8103
    rst $38
    ld b, c
    rst $38
    ld a, a
    ld h, e
    rst $38
    cp a
    add a
    xor c
    sbc c
    or b
    rst $38
    sub b
    and b
    add b
    and b
    add b
    ld b, b
    jr nz, jr_00a_7530

    rst $38
    jr nz, jr_00a_7534

    ld hl, $9b64
    cp e
    call z, $ffcd
    ldh a, [c]
    ld d, h
    ld a, e
    ld h, d
    ld a, l
    ld [hl], d
    ld a, l
    db $e3
    rst $38
    db $fc
    ld [hl], d
    ld a, l
    or h
    ld c, a
    and h
    ld e, a
    jp z, Jump_000_2dff

    db $db
    inc a
    db $eb
    inc e
    and l
    ld e, c
    or [hl]
    rst $38
    cpl
    db $db
    ld h, [hl]
    ld d, c
    xor h
    res 6, [hl]
    ld c, c
    rst $38
    ld a, [hl-]
    xor l
    xor $45
    xor [hl]
    ld d, l
    cp [hl]
    inc de
    rst $38
    db $fc
    dec bc
    db $f4
    ld d, b
    db $eb
    call z, $88d7
    rst $38
    rst $38
    ret


    ld a, [hl]
    pop bc
    sub [hl]
    sbc c
    ld l, $cd
    rst $38
    or $64
    cp a
    push af
    ld c, $ff
    nop
    cp $7e
    sub b
    ld b, $e5
    ld d, $ff
    nop
    rst $18
    ldh [rP1], a
    dec c
    rst $18
    ld [$00ff], sp

jr_00a_7530:
    ld l, c
    sbc d
    pop hl
    db $10

jr_00a_7534:
    rst $08

jr_00a_7535:
    jr nc, jr_00a_7535

    add c
    ld bc, $cf1a
    dec h
    or $26
    ei
    ld a, [de]
    rst $38
    di
    add l
    ld l, a
    sub h
    ld a, c
    sbc c
    ld [hl], e
    or d
    rst $38
    ld a, a
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ret nz

jr_00a_7551:
    ld a, a
    inc a
    ld h, d
    db $10
    ld h, b
    ld [de], a
    add b
    cp $01
    cp $d0
    inc c
    pop hl
    inc de
    db $fc
    ld h, b
    inc b
    ret nz

    nop
    sbc [hl]
    ld a, a
    call z, Call_000_203f
    rst $18
    rst $38
    xor h
    ld a, h
    add e
    ld h, d
    ld e, a
    ret nc

    ld e, a
    ret nz

    rst $38
    ld b, b
    rst $18
    inc c
    db $eb
    jr jr_00a_7551

    cp b
    and a
    ld c, a
    ld [hl], b
    ld c, a
    ldh [$ff1f], a
    ld h, c
    rrca
    sub e
    inc de
    ld b, b
    jp nc, $fe16

    ld d, e
    inc d
    ccf
    pop bc
    ld b, l
    and [hl]
    add [hl]
    ld b, a
    adc [hl]
    rst $38
    ld c, a
    cp b
    ld a, a
    ld b, e
    cp h
    add hl, sp
    add $2f
    rst $38
    pop de
    adc c
    or $a9
    or $a3
    ld a, h
    and d
    rst $38
    ld a, l
    jp nz, Jump_00a_527d

    db $fd
    jp Jump_00a_46fc


    rst $38
    ld sp, hl
    ld [hl+], a
    cp $12
    cp $06
    cp $14
    ei
    db $fc
    inc b
    ld [hl+], a
    nop
    ld b, $fe
    ld h, d
    ld [hl+], a
    ld [hl], l
    rst $38
    dec [hl]
    cp b
    ld a, b
    or b
    ld [hl], b
    ldh [$ff60], a
    ldh a, [$fffe]
    ld b, b
    nop
    pop hl
    ld h, c
    push hl
    ei
    halt
    ld a, c
    push hl
    rst $38
    ld a, [$7b76]
    db $e4
    ei
    adc $f1
    db $d3
    rst $38
    db $fc
    cp d
    db $fd
    sub [hl]
    ld l, e
    or b
    ld b, e
    or h
    rst $38
    ld h, a
    push af
    ld l, [hl]
    sub c
    ld l, [hl]
    or d
    ld c, l
    rst $10
    rst $38
    jr z, jr_00a_762f

    rst $00
    bit 6, h
    adc a
    or b
    xor l
    rst $38
    jp nc, $d6a5

    xor l
    sbc $7b
    adc h
    ld d, d
    rst $38
    xor l
    adc h
    ld [hl], e
    dec l
    or $e8
    ld h, c
    ld e, $ff
    jp z, Jump_00a_78b7

    ld d, b
    or l
    sbc h
    halt
    ld b, e
    rst $38
    cp h
    ld [hl], $cf
    rst $38
    nop
    rrca
    ldh a, [$ffc0]
    rst $38
    rst $08
    ld l, d
    sbc d
    ld d, a
    ld a, d
    xor h
    xor $9f
    rst $38
    ld b, d
    ld c, b
    or a
    rst $38
    nop
    add [hl]
    ld a, c
    ld h, b
    rst $38
    rst $20

jr_00a_762f:
    or l
    call $ed4b
    ld d, l
    db $dd
    db $db
    cp $00
    ld [bc], a
    ld [hl+], a
    ei
    ld c, e
    sub $b6
    xor a
    push de
    rst $38
    rst $30
    adc d
    ld e, l
    sub c
    cp [hl]
    ld c, [hl]

jr_00a_7647:
    pop af
    and h
    db $fd
    ld e, e
    ld bc, $fd20
    ld [bc], a
    rst $18
    jr nz, jr_00a_7647

    ld a, [bc]
    cp a
    swap l
    or h
    ld l, e
    ld b, d
    cp l
    ld b, b
    rrca
    ld bc, $f7ff
    ld [$40bf], sp
    ld h, a
    sbc b
    add hl, de
    and $ff
    and $79
    ld d, $ef
    ld d, b
    rst $18
    jr nz, @-$0f

    rst $18
    jr nz, @-$0f

    and b
    rst $28
    ld h, b
    and b
    nop
    ld b, b
    rst $18
    rst $18
    xor b
    ld l, a
    nop
    rst $38
    ld [bc], a
    jr nz, jr_00a_7681

jr_00a_7681:
    nop
    db $fd
    ld b, a
    ld bc, $03fd
    sub b
    ld d, $20
    nop
    call nc, $1023
    ld [hl+], a
    nop
    rst $38
    adc b
    rst $38

jr_00a_7693:
    add hl, sp
    set 3, h
    ld l, $12
    and $ff
    and a
    ld d, c
    ld a, l
    sub [hl]
    cp c
    ld d, [hl]
    ld [hl], a
    sub c
    di
    dec l
    rst $18
    pop bc
    ld [bc], a
    jr nz, jr_00a_76ac

    ei
    inc b
    rst $30

jr_00a_76ac:
    jr jr_00a_76e9

    rst $38
    ld h, b
    ld d, b
    add hl, hl
    ld [bc], a
    cp $03
    ldh a, [$ff15]
    inc hl
    nop
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    cp h
    ld a, a
    ld b, b
    ccf
    rst $38
    and c
    sbc [hl]
    sub a
    adc a
    xor b
    sbc b
    or b
    sub b
    rst $38
    ld d, e
    inc sp
    ld h, l
    dec h
    add hl, sp
    cp $91
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    ld b, d
    cp l
    sbc h
    db $e3
    adc d

jr_00a_76dc:
    push af
    rst $38

jr_00a_76de:
    push bc
    ld a, [$fbc4]
    add hl, hl
    sbc $c6
    add hl, sp
    rst $18
    ld a, a
    add b

jr_00a_76e9:
    pop af
    ld [hl], c
    rst $38
    jr nc, jr_00a_7708

    ld a, a
    add b
    cp a
    and $66
    xor c
    ld d, a
    ld b, [hl]
    cp c
    ld h, b
    ld a, [hl+]
    rst $20
    rst $30
    ld a, l
    ld a, l
    nop
    ret nz

    ld h, $7b
    ld a, e

jr_00a_7702:
    ccf
    nop
    rst $38
    ld b, b
    nop
    cp a

jr_00a_7708:
    ccf
    or b
    ccf
    xor a
    jr nc, jr_00a_7693

    xor b
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00a_7748

    ld d, b
    jr z, @-$7e

    jr z, jr_00a_76dc

    inc [hl]
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
    jr nc, jr_00a_76de

    jr nc, jr_00a_774f

    cp a
    ccf
    ld b, b
    ccf
    ccf
    inc d
    scf
    ld h, a
    inc bc
    ld h, e
    ld [bc], a
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    rst $38
    db $fc
    nop
    add c

jr_00a_7748:
    ld [hl], e
    ret z

    inc [hl]
    db $10
    add sp, -$01
    xor b

jr_00a_774f:
    ld e, b
    ld l, b
    sbc b
    rst $08
    ccf
    ld d, l
    cp a
    rst $38
    ld c, b
    cp a
    or c
    rst $38
    ld c, b
    ld l, a
    ld h, [hl]
    ld [hl], a
    rst $38
    ld [hl], d
    ld a, e
    push hl
    ld sp, hl
    push af
    ld sp, hl
    ld [$fffc], a
    ld d, d
    db $fc
    adc h
    rst $38
    ld [bc], a
    ld a, e
    ld b, c
    db $fd
    cp l
    ld hl, $3432
    ret nz

    rst $38
    jr c, jr_00a_77b8

    or c
    inc [hl]
    add b
    and e
    rst $38
    jr z, jr_00a_7702

    nop
    ldh [rNR41], a
    or d
    dec [hl]
    inc bc
    ldh [c], a
    jr nc, jr_00a_7798

    rst $38
    rst $38
    ld [hl], b
    ldh a, [$ffcf]
    ret nz

    ld [hl+], a
    cp $02
    rst $30
    cp [hl]
    ld [bc], a
    ld a, [hl]
    ld h, c
    db $10

jr_00a_7798:
    inc bc
    rst $38
    ldh [c], a
    cp $ff
    dec e
    inc e
    or e
    ld [hl], e
    and h
    ld h, h
    xor h
    ld l, h
    rst $38
    cp a
    ld a, a
    ld e, [hl]
    ccf
    jr nz, jr_00a_77cb

    db $fc
    ccf
    rst $30
    adc [hl]
    adc a
    push bc
    add b
    rra
    ret


    or $0a
    rst $30

jr_00a_77b8:
    rst $38
    inc d
    db $eb
    ld [de], a
    db $ed
    ld a, l
    add d
    xor b
    rst $10
    ei
    ei
    ld a, e
    add c
    rrca
    ld hl, sp+$78
    sbc $5e
    add b

jr_00a_77cb:
    ld a, a
    ld a, a

jr_00a_77cd:
    rst $38
    add b
    rst $28
    ld l, a
    rst $20
    rst $20
    add c
    rrca
    rst $30
    dec sp
    dec sp
    ld l, a
    and b
    jr @+$01

    nop
    ld e, a
    ld e, a
    ldh [$ff63], a
    rrca
    ld h, a
    nop
    ld h, e
    ld c, $67
    nop
    inc bc
    add hl, de
    and c
    ld d, l
    ld [hl], l
    ld a, a
    sub l
    or a
    ld d, a
    ld a, l
    sbc a
    dec hl
    rst $18
    ld [bc], a
    add hl, hl
    rst $18
    db $fc
    and d
    db $fd
    ld b, d
    db $fd
    inc bc
    add hl, hl
    ld b, h

Jump_00a_7800:
    cp a
    rst $38
    adc e
    db $f4
    dec h

jr_00a_7805:
    reti


    cp a
    ld [hl], b
    sub a
    ld l, a
    rst $38
    ld sp, $e0d1
    and b
    and b
    ld h, b
    db $f4
    dec bc
    rst $38
    cp a
    or b
    rrca
    db $fc
    or e
    ld a, $7b
    sbc [hl]
    rst $38
    db $db
    xor $ed
    or $e5
    ld a, [$bf47]
    rst $38
    xor b
    ret c

    ld d, b
    or b
    ret nc

    jr nc, jr_00a_77cd

    ld h, b
    cp $21
    nop
    or b
    ld [hl], b
    adc e
    db $fc
    ldh [rIE], a
    ld [hl], e
    rst $38
    ld a, a
    ld [hl], $3e
    ld e, d
    ld e, [hl]
    xor d
    xor [hl]
    ld e, c
    rst $38
    ld e, a
    xor l
    xor a
    adc $0f
    inc sp
    jp $ff8d


    pop af
    ld [hl+], a
    inc a
    inc de
    inc e
    db $10
    rra
    inc de
    rst $38
    rra
    db $f4
    db $fc
    ld b, b
    ret nz

    cp a
    add b
    ld d, d
    cp a
    inc sp
    add b
    ld b, b
    ld b, b
    ret nz

    add b
    stop
    adc a
    rst $38
    adc a
    or a
    adc a
    ld c, b
    jr c, jr_00a_7805

    ld a, b
    sbc b
    rst $38
    ld hl, sp-$14
    db $fc
    di
    rst $38
    db $eb
    rst $38
    db $f4
    rst $38
    rst $38
    db $eb
    add hl, bc
    sub h
    ldh [c], a
    ld l, [hl]
    ld [hl], d
    ld l, b
    rst $38
    ld [hl], h
    db $f4
    db $fc
    ldh a, [$fff8]
    ld e, c
    ld sp, hl
    xor c
    ei
    ld sp, hl
    rlca
    ld [de], a
    nop
    ld e, $1f
    dec a
    ccf
    ld [hl], b
    rst $38
    ld a, a
    db $e3
    rst $38
    rst $08
    rst $38
    ld d, h
    db $eb
    sbc e
    rst $38
    db $ec
    ld c, c
    or $8c
    di
    ld b, h
    ei
    ld b, $7f
    ld sp, hl
    add e
    db $fc
    jp nc, Jump_00a_78ed

    ld hl, sp-$7f
    rra
    cp a
    and l
    ld a, d
    ld b, d
    cp l
    adc h
    ld [hl], e

Jump_00a_78b7:
    ld bc, $8b2e
    db $fd
    adc e
    add c
    rra
    sbc d
    ld h, a

jr_00a_78c0:
    ld d, h
    cp e
    and d
    ld a, l
    rst $28
    sbc l
    ld h, d
    ld c, b
    or a
    inc bc
    inc c
    cp d
    ld [hl], e
    xor [hl]
    ld a, a
    ld d, a
    ld d, c
    xor l
    sub l
    rst $28
    ld d, b
    xor e
    inc b
    inc c
    rst $38
    cp [hl]
    dec de
    ld a, [hl]
    dec sp

jr_00a_78dd:
    xor [hl]
    adc l
    or $7d
    rst $38
    ldh a, [c]
    ld l, d
    sbc a
    sub b
    rst $28
    jr z, jr_00a_78c0

    or [hl]
    rst $38
    ld a, c
    and e

Jump_00a_78ed:
    ld e, h
    ld d, [hl]
    cp c
    sbc c
    and $4c
    rst $38
    cp a
    add [hl]
    ld sp, hl
    and a
    ld hl, sp+$0f
    ldh a, [rNR34]
    rst $38
    pop hl
    ld hl, sp+$07
    ld [hl+], a
    db $dd
    ld e, l
    ldh [c], a
    ld b, h
    ld sp, hl
    cp e
    and c
    dec h
    ldh [rNR22], a
    cp a
    jr nc, jr_00a_78dd

    cp a
    ld b, b
    rst $38
    ld a, [hl]
    sbc c
    dec hl
    call c, $fae5
    call $fff2
    sbc e
    db $e4
    ld a, [hl+]
    push de
    ld [de], a
    db $ed
    ld [hl], d
    sbc l
    rst $38
    inc hl
    call c, $39c6
    or b
    ld [hl], b
    cp c
    ld a, c
    rst $38
    cp a
    ld a, a
    sbc $3f
    ld b, b
    cp a
    or b
    ld c, a
    rst $38
    ld c, a
    or b
    ld [hl], $cf
    db $fc
    rst $38
    db $e4
    rst $20
    rst $38
    ld c, h
    rst $08
    ld hl, sp-$01
    and c
    rst $38
    ld b, [hl]
    ld sp, hl
    ld a, a
    dec e
    ldh [c], a
    add sp, $17
    and h
    db $fc
    ld d, a
    add b
    inc l
    rst $38
    add c
    rst $38
    adc h
    di
    ccf
    ret nz

    jp $ff3c


    ld [hl], $cf
    cp $fe
    db $fc
    db $fc
    ret nz

    ldh [rIE], a
    and b
    ldh [$ff31], a
    pop af
    sbc [hl]
    ld a, a
    ldh [$ff1f], a
    rst $38
    ld e, a
    and b
    ld e, $1f
    ld a, [de]
    rra
    inc l
    ccf
    rst $38
    jp nc, $a4ff

    rst $38
    add c
    cp $7f
    add b
    rst $38
    or [hl]
    ld c, a
    ld c, a
    rst $38
    and a
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    push hl
    rra
    jp nc, $ac2f

    ld [hl], e
    sbc a
    ld h, b
    rst $38
    ld c, b
    or a
    rst $18
    rst $38
    add a
    rst $20
    and d
    db $e3
    rst $38
    dec h
    rst $20
    and h
    rst $20
    jr @+$01

    ldh [$ff1f], a
    rst $38
    ccf
    ret nz

    adc e
    push af
    ld c, c
    or $85
    ld a, [$46ff]
    ld sp, hl
    add h
    ei
    ld c, $f1
    dec a
    jp nz, $c803

    scf
    ld bc, $50ff
    sbc a
    ret nc

    inc e
    or d
    ld a, e
    jr z, @-$06

    ld d, $f7
    jr nc, @-$0e

    ld h, c
    pop hl
    sbc e
    db $fc
    ld h, e
    db $e4
    and e
    db $e4
    ld e, c
    cp $b9
    cp [hl]
    ld e, c
    sbc $0c
    cpl
    add $c7
    ld h, b
    ldh [$ffc5], a
    push bc
    rst $00
    rst $00
    add $c7
    ld h, [hl]
    rst $20
    db $e3
    db $e3
    or b
    ldh a, [rNR21]
    rst $30
    and $e7
    db $e3
    db $e3
    inc hl
    db $e3
    inc hl
    db $e3
    ld h, [hl]
    rst $20
    add $c7
    dec l
    ld l, $59
    sbc $06
    rst $30
    ld h, e
    sbc e
    ldh a, [$ff1f]
    or d
    ld e, a
    ld h, $df
    ld a, c
    add a
    rst $00
    jr c, jr_00a_7a3b

    rst $08
    ld d, e
    call c, $f8cf
    inc de
    db $f4
    ld l, c
    xor [hl]
    push af
    ld [hl], $a1
    halt
    xor c
    ld a, [hl]
    ld c, e
    cp h
    or l
    push af
    ld c, h
    sbc $5b
    rst $38
    and [hl]
    ld a, a
    xor c
    ld e, a
    ld d, [hl]
    cp e
    sbc c
    and $4c
    cp a
    adc l
    adc a
    sbc b
    sbc a
    rst $10
    cp $a8
    rst $38
    sbc b
    rst $38
    ld [hl+], a
    db $fd
    ld e, l
    ldh [c], a
    ld b, h
    cp e
    ld bc, $60ff
    cp a
    ret nc

jr_00a_7a3b:
    inc e
    jp nc, $a81b

    ld a, b
    add [hl]
    ld [hl], a
    db $10
    ldh a, [$ff31]
    pop af
    sbc e
    db $fc
    ld l, e
    db $ec
    and e
    db $e4
    ld d, e
    db $f4
    cp c
    cp [hl]
    ld d, c
    sbc $09
    ld l, $cc
    rst $08
    ld hl, $67e1
    rst $20
    ld h, [hl]
    rst $20
    ld h, h
    rst $20
    inc h
    rst $20
    or e
    di
    sub b
    ldh a, [rTMA]
    rst $30
    db $e4
    rst $20
    ld h, $e7
    ld h, $e7
    ld h, $e7
    ld h, h
    rst $20
    call $29ce
    ld l, $53
    call c, $b746
    ld h, e
    sbc e
    ldh a, [$ff1f]
    and d
    ld e, a
    ld a, $c7
    ld a, [hl]
    add c
    rst $00
    jr c, jr_00a_7abb

    rst $08
    ld b, a
    ret c

    rst $00
    ldh a, [rWX]
    xor h
    ld sp, hl
    ld a, $f5
    ld [hl], $a1
    halt
    xor c
    ld a, [hl]
    ld c, e
    cp h
    ld e, h
    call c, Call_00a_6ba9
    cpl
    rst $38
    sbc e
    ld a, a
    and l
    ld e, a
    ld b, [hl]
    cp e
    sbc c
    and $4c
    cp a
    xor c
    xor a
    sub h
    sbc a
    ld l, c
    cp $d4
    rst $38
    ld [hl], b
    rst $38
    add d
    db $fd
    dec e
    ldh [c], a
    ld b, h
    cp e
    rst $38
    nop
    rst $18
    ld h, b
    rst $38

jr_00a_7abb:
    nop
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $08
    ld d, b
    rst $38
    nop
    jp hl


    ld a, [de]
    rst $38
    nop
    cp a
    ret nz

    rst $38
    nop
    rst $20
    inc d
    cp a
    ret nz

    rst $38
    nop
    ld hl, sp+$05
    rst $38
    nop
    cp $03
    rst $38
    nop
    db $db
    inc a
    rst $38
    nop
    sbc a
    and b
    rst $38
    nop
    rst $30
    jr @+$01

    nop
    rst $30
    ld c, $ff
    nop
    rst $38

jr_00a_7aef:
    nop
    rst $28
    jr jr_00a_7aef

    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    ld sp, hl
    dec b
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    sbc a
    jr nz, @+$01

    nop
    db $d3
    inc [hl]
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    push af
    ld c, $7f
    add b
    rst $38
    nop
    push af
    ld c, $ff
    nop
    cp $01
    rst $38

Jump_00a_7b1d:
    nop
    push hl
    ld d, $ff
    nop
    rst $18
    ldh [rIE], a
    nop
    rst $20
    ld [$00ff], sp
    ld l, c
    sbc d
    rst $38
    nop
    rst $38
    nop
    rst $08

jr_00a_7b31:
    jr nc, jr_00a_7b31

    ld bc, $00ff
    nop
    nop
    sbc d
    ld a, e
    nop
    nop
    sbc h
    ld a, e
    nop
    nop
    sbc [hl]
    ld a, e
    nop
    nop
    and b
    ld a, e
    nop
    nop
    ld b, $7c
    nop
    nop
    ld [$007c], sp
    nop
    ld a, [bc]
    ld a, h
    nop
    nop
    inc c
    ld a, h
    nop
    nop
    ld [hl], d
    ld a, h
    nop
    nop
    ld [hl], h
    ld a, h
    nop
    nop
    halt
    ld a, h
    nop
    nop
    ld a, b
    ld a, h
    nop
    nop
    and $7c
    nop
    nop
    add sp, $7c
    nop
    nop
    ld [$007c], a
    nop
    db $ec
    ld a, h
    nop
    nop
    ld l, d
    ld a, l
    nop
    nop
    ld l, h
    ld a, l
    nop
    nop
    ld l, [hl]
    ld a, l
    nop
    nop
    ld [hl], b
    ld a, l
    nop
    nop
    sub $7d
    nop
    nop
    ret c

    ld a, l
    nop
    nop
    jp c, $007d

    nop
    call c, $007d
    nop
    ld h, d
    ld a, [hl]
    and d
    ld a, e
    cp e
    ld a, e
    call nc, $ed7b
    ld a, e
    ld sp, hl
    nop
    inc de
    nop
    ld sp, hl
    ld hl, sp+$12
    nop
    pop af
    nop
    ld de, $f100
    ld hl, sp+$10
    nop
    jp hl


    nop
    rrca
    nop
    jp hl


    ld hl, sp+$0e
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
    nop
    rla
    nop
    pop af
    ld hl, sp+$16
    nop
    jp hl


    nop
    dec d
    nop
    jp hl


    ld hl, sp+$14
    nop
    add b
    ld sp, hl
    ld a, [$2019]
    ld sp, hl
    ld [bc], a
    jr jr_00a_7bfc

    pop af
    ld a, [$2017]
    pop af
    ld [bc], a
    ld d, $20
    jp hl


    ld a, [$2015]
    jp hl


    ld [bc], a
    inc d
    jr nz, @-$7e

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

jr_00a_7bfc:
    nop
    jp hl


    nop
    dec de
    nop
    jp hl


    ld hl, sp+$1a
    nop
    add b
    ld c, $7c
    daa
    ld a, h
    ld b, b
    ld a, h
    ld e, c
    ld a, h
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
    add b
    ld hl, sp+$00
    dec hl
    nop
    ld hl, sp-$08
    ld a, [hl+]
    nop
    ldh a, [rP1]
    add hl, hl
    nop
    ldh a, [$fff8]
    jr z, jr_00a_7c37

jr_00a_7c37:
    add sp, $00

jr_00a_7c39:
    daa
    nop
    add sp, -$08

jr_00a_7c3d:
    ld h, $00
    add b
    ld hl, sp-$08
    dec hl
    jr nz, jr_00a_7c3d

    nop
    ld a, [hl+]
    jr nz, jr_00a_7c39

    ld hl, sp+$29
    jr nz, jr_00a_7c3d

    nop
    jr z, jr_00a_7c70

    add sp, -$08
    daa
    jr nz, jr_00a_7c3d

    nop
    ld h, $20
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

jr_00a_7c70:
    nop
    add b
    ld a, d
    ld a, h
    sub e
    ld a, h
    or b
    ld a, h
    call $f97c
    nop
    scf
    nop
    ld sp, hl
    ld hl, sp+$36
    nop
    pop af
    nop
    dec [hl]
    nop
    pop af
    ld hl, sp+$34
    nop
    jp hl


    nop
    inc sp
    nop
    jp hl


    ld hl, sp+$32
    nop
    add b
    di
    ld [$003e], sp
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
    ld a, [hl-]
    nop
    add sp, $00
    add hl, sp
    nop
    add sp, -$08

jr_00a_7cad:
    jr c, jr_00a_7caf

jr_00a_7caf:
    add b
    di

jr_00a_7cb1:
    ldh a, [$ff3e]
    jr nz, jr_00a_7cad

    ld hl, sp+$3d
    jr nz, jr_00a_7cb1

    nop
    inc a
    jr nz, jr_00a_7cad

    ld hl, sp+$3b
    jr nz, jr_00a_7cb1

    nop
    ld a, [hl-]
    jr nz, jr_00a_7cad

    ld hl, sp+$39
    jr nz, jr_00a_7cb1

    nop
    jr c, jr_00a_7cec

    add b
    ld sp, hl
    nop
    ld b, h
    nop
    ld sp, hl
    ld hl, sp+$43
    nop
    pop af
    nop
    ld b, d
    nop
    pop af
    ld hl, sp+$41
    nop
    jp hl


    nop
    ld b, b
    nop
    jp hl


    ld hl, sp+$3f
    nop
    add b
    xor $7c
    rrca
    ld a, l
    inc l
    ld a, l

jr_00a_7cec:
    ld c, c
    ld a, l
    pop af
    ld [$004c], sp
    pop af
    ldh a, [rWX]
    nop
    ld sp, hl
    nop
    ld c, d
    nop
    ld sp, hl
    ld hl, sp+$49
    nop
    pop af
    nop
    ld c, b
    nop
    pop af
    ld hl, sp+$47
    nop
    jp hl


    nop
    ld b, [hl]
    nop
    jp hl


    ld hl, sp+$45
    nop
    add b
    ld sp, hl
    nop
    ld d, e
    nop
    ld sp, hl
    ld hl, sp+$52
    nop
    pop af
    ld [$0051], sp
    pop af
    nop
    ld d, b
    nop
    pop af
    ld hl, sp+$4f
    nop
    jp hl


    nop
    ld c, [hl]
    nop
    jp hl


    ld hl, sp+$4d

jr_00a_7d2a:
    nop
    add b
    ld sp, hl
    ld sp, hl

jr_00a_7d2e:
    ld d, e
    jr nz, jr_00a_7d2a

    ld bc, $2052
    pop af
    pop af
    ld d, c
    jr nz, jr_00a_7d2a

    ld sp, hl
    ld d, b
    jr nz, jr_00a_7d2e

jr_00a_7d3d:
    ld bc, $204f
    jp hl


    ld sp, hl
    ld c, [hl]
    jr nz, jr_00a_7d2e

    ld bc, $204d
    add b
    pop af
    ldh a, [rWX]
    nop
    ldh a, [$ff08]
    ld e, d
    nop
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
    ld d, l
    nop
    add sp, -$08
    ld d, h
    nop
    add b
    ld [hl], d
    ld a, l
    adc e
    ld a, l
    and h
    ld a, l
    cp l
    ld a, l
    ld sp, hl
    nop
    ld h, b
    nop
    ld sp, hl
    ld hl, sp+$5f
    nop
    pop af
    nop
    ld e, [hl]
    nop
    pop af
    ld hl, sp+$5d
    nop
    jp hl


    nop
    ld e, h
    nop
    jp hl


    ld hl, sp+$5b
    nop
    add b
    ld sp, hl
    ld bc, $0066
    ld sp, hl
    ld sp, hl
    ld h, l
    nop
    pop af
    ld bc, $0064
    pop af
    ld sp, hl
    ld h, e
    nop
    jp hl


    ld bc, $0062
    jp hl


    ld sp, hl
    ld h, c

jr_00a_7da2:
    nop
    add b
    ld sp, hl
    ld hl, sp+$66
    jr nz, jr_00a_7da2

    nop
    ld h, l
    jr nz, @-$0d

    ld hl, sp+$64
    jr nz, jr_00a_7da2

    nop
    ld h, e
    jr nz, @-$15

    ld hl, sp+$62
    jr nz, jr_00a_7da2

    nop
    ld h, c
    jr nz, jr_00a_7d3d

    ld sp, hl
    nop
    ld l, h
    nop
    ld sp, hl
    ld hl, sp+$6b
    nop
    pop af
    nop
    ld l, d
    nop
    pop af
    ld hl, sp+$69
    nop
    jp hl


    nop
    ld l, b
    nop
    jp hl


    ld hl, sp+$67
    nop
    add b
    sbc $7d
    rst $38
    ld a, l
    jr nz, @+$80

    ld b, c
    ld a, [hl]
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    dec d
    nop
    ldh a, [$fff9]
    inc d
    nop
    add sp, $01
    inc de
    nop
    add sp, -$07
    ld [de], a
    nop
    ldh [rSB], a
    ld de, $e000
    ld sp, hl
    stop
    add b
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    dec e
    nop
    ldh a, [$fff9]
    inc e
    nop
    add sp, $01
    dec de
    nop
    add sp, -$07
    ld a, [de]
    nop
    ldh [rSB], a
    add hl, de
    nop
    ldh [$fff9], a
    jr jr_00a_7e1f

jr_00a_7e1f:
    add b
    ld hl, sp+$01
    rla
    nop
    ld hl, sp-$07
    ld d, $00
    ldh a, [rSB]
    inc hl
    nop
    ldh a, [$fff9]
    ld [hl+], a
    nop
    add sp, $01
    ld hl, $e800
    ld sp, hl
    jr nz, jr_00a_7e38

jr_00a_7e38:
    ldh [rSB], a
    rra
    nop
    ldh [$fff9], a
    ld e, $00
    add b
    ld hl, sp+$00
    add hl, hl
    nop
    ld hl, sp-$08
    jr z, jr_00a_7e49

jr_00a_7e49:
    ldh a, [rP1]
    daa
    nop
    ldh a, [$fff8]
    ld h, $00
    add sp, $00
    dec h
    nop
    add sp, -$08
    inc h
    nop
    ldh [rSB], a
    ld de, $e000
    ld sp, hl
    stop
    add b
    ld h, h
    ld a, [hl]
    pop af
    ld [$0011], sp
    pop af
    ldh a, [rNR10]
    nop
    ld sp, hl
    nop
    rrca
    nop
    ld sp, hl
    ld hl, sp+$0e
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
    add b
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    or a
    ld a, [hl]
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
