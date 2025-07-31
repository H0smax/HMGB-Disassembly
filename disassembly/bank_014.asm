; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    inc d
    ld bc, $e502
    ld b, c
    ld bc, $e702
    ld b, c
    ld bc, $e902
    ld b, c
    ld bc, $eb02
    ld b, c
    ld bc, $ed02
    ld b, c
    ld bc, $ef02
    ld b, c
    ld bc, $f102
    ld b, c
    ld bc, $f302
    ld b, c
    ld bc, $f502
    ld b, c
    ld bc, $f702
    ld b, c
    ld bc, $f902
    ld b, c
    ld bc, $fb02
    ld b, c
    ld bc, $fd02
    ld b, c
    ld bc, $ff02
    ld b, c
    ld bc, $0102
    ld b, d
    ld bc, $0302
    ld b, d
    ld bc, $0502
    ld b, d
    ld bc, $0702
    ld b, d
    ld bc, $0902
    ld b, d
    ld bc, $0b02
    ld b, d
    ld bc, $0d02
    ld b, d
    ld bc, $0f02
    ld b, d
    ld bc, $1102
    ld b, d
    ld bc, $1302
    ld b, d
    ld bc, $1502
    ld b, d
    ld bc, $1702
    ld b, d
    ld bc, $1902
    ld b, d
    ld bc, $1b02
    ld b, d
    ld bc, $1d02
    ld b, d
    ld bc, $2702
    ld b, d
    ld bc, $3102
    ld b, d
    ld bc, $6502
    ld b, h
    ld bc, $6702
    ld b, h
    ld bc, $7102
    ld b, h
    ld bc, $7302
    ld b, h
    ld bc, $7d02
    ld b, h
    ld bc, $7f02
    ld b, h
    ld bc, $8902
    ld b, h
    ld bc, $8b02
    ld b, h
    ld bc, $9502
    ld b, h
    ld bc, $9702
    ld b, h
    ld bc, $a102
    ld b, h
    ld bc, $a302
    ld b, h
    ld bc, $ad02
    ld b, h
    ld bc, $af02
    ld b, h
    ld bc, $b302
    ld b, h
    ld bc, $b702
    ld b, h
    ld bc, $bb02
    ld b, h
    ld bc, $4d02
    ld b, [hl]
    ld bc, $fe02
    ld b, [hl]
    ld bc, $6a02
    ld b, a
    ld bc, $b302
    ld b, a
    ld bc, $1a02
    ld c, b
    ld bc, $d502
    ld c, b
    ld bc, $2102
    ld c, c
    ld [bc], a
    ld [bc], a
    xor l
    ld c, d
    ld [bc], a
    ld [bc], a
    xor a
    ld c, d
    ld [bc], a
    ld [bc], a
    or c
    ld c, d
    ld [bc], a
    ld [bc], a
    or e
    ld c, d
    ld [bc], a
    ld [bc], a
    or l
    ld c, d
    ld [bc], a
    ld [bc], a
    or a
    ld c, d
    ld [bc], a
    ld [bc], a
    cp c
    ld c, d
    ld [bc], a
    ld [bc], a
    jp $024a


    ld [bc], a
    push bc
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $00
    ld c, d
    ld [bc], a
    ld [bc], a
    ret


    ld c, d
    ld [bc], a
    ld [bc], a
    db $d3
    ld c, d
    ld [bc], a
    ld [bc], a
    push de
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $10
    ld c, d
    ld [bc], a
    ld [bc], a
    reti


    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $db
    ld c, d
    ld [bc], a
    ld [bc], a
    db $dd
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $20
    ld c, d
    ld [bc], a
    ld [bc], a
    jp hl


    ld c, d
    ld [bc], a
    ld [bc], a
    db $eb
    ld c, d
    ld [bc], a
    ld [bc], a
    push af
    ld c, d
    ld [bc], a
    ld [bc], a
    rst $38
    ld c, d
    ld [bc], a
    ld [bc], a
    ld bc, $024b
    ld [bc], a
    inc bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec b
    ld c, e
    ld [bc], a
    ld [bc], a
    rlca
    ld c, e
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec bc
    ld c, e
    ld [bc], a
    ld [bc], a
    dec c
    ld c, e
    ld [bc], a
    ld [bc], a
    rrca
    ld c, e
    ld [bc], a
    ld [bc], a
    ld hl, $024b
    ld [bc], a
    inc sp
    ld c, e
    ld [bc], a
    ld [bc], a
    ld d, a
    ld c, l
    ld [bc], a
    ld [bc], a
    add $4d
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    inc l
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], $4e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld d, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, b
    ld c, [hl]
    ld bc, $3b02
    ld b, d
    ld [bc], a
    ld [bc], a
    ld l, d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    adc b
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sub d
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sbc h
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    sbc [hl]
    ld c, [hl]
    inc bc
    ld [bc], a
    ld b, b
    ld d, b
    inc bc
    ld [bc], a
    ld b, d
    ld d, b
    inc bc
    ld [bc], a
    ld b, h
    ld d, b
    nop
    nop
    ld b, [hl]
    ld d, b
    nop
    nop
    ld c, [hl]
    ld d, b
    nop
    nop
    ld d, [hl]
    ld d, b
    ld b, l
    ld b, d
    ld d, [hl]
    ld b, d
    ld h, a
    ld b, d
    ld a, b
    ld b, d
    adc c
    ld b, d
    sbc d
    ld b, d
    xor e
    ld b, d
    cp h
    ld b, d
    call $de42
    ld b, d
    rst $28
    ld b, d
    nop
    ld b, e
    ld de, $2243
    ld b, e
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ld d, l
    ld b, e
    ld h, [hl]
    ld b, e
    ld [hl], a
    ld b, e
    adc b
    ld b, e
    sbc c
    ld b, e
    xor d
    ld b, e
    cp e
    ld b, e
    call z, $dd43
    ld b, e
    xor $43
    db $10
    ld b, h
    ld [hl-], a
    ld b, h
    rst $38
    ld b, e
    ld d, h
    ld b, h
    rst $38
    ld b, e
    ld d, h
    ld b, h
    rst $38
    ld b, e
    ld hl, $5444
    ld b, h
    ld hl, $5444
    ld b, h
    ld hl, $4344
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld b, h
    xor $43
    ld d, h
    ld b, h
    xor $43
    ld d, h
    ld b, h
    xor $43
    nop
    nop
    ld de, $0010
    ld hl, sp+$10
    db $10
    ld hl, sp+$00
    ld bc, $f810
    ld hl, sp+$00
    db $10
    add b
    nop
    nop
    inc de
    stop
    ld hl, sp+$12
    db $10
    ld hl, sp+$00
    inc bc
    db $10
    ld hl, sp-$08
    ld [bc], a
    db $10
    add b
    nop
    nop
    dec d
    stop
    ld hl, sp+$14
    db $10
    ld hl, sp+$00
    dec b
    db $10
    ld hl, sp-$08
    inc b
    db $10
    add b
    nop
    nop
    rla
    stop
    ld hl, sp+$16
    db $10
    ld hl, sp+$00
    rlca
    db $10
    ld hl, sp-$08
    ld b, $10
    add b
    nop
    nop
    add hl, de
    stop
    ld hl, sp+$18
    db $10
    ld hl, sp+$00
    add hl, bc
    db $10
    ld hl, sp-$08
    ld [$8010], sp
    nop
    nop
    dec de
    stop
    ld hl, sp+$1a
    db $10
    ld hl, sp+$00
    dec bc
    db $10
    ld hl, sp-$08
    ld a, [bc]
    db $10
    add b
    nop
    nop
    dec e
    stop
    ld hl, sp+$1c
    db $10
    ld hl, sp+$00
    dec c
    db $10
    ld hl, sp-$08
    inc c
    db $10
    add b
    nop
    nop
    rra
    stop
    ld hl, sp+$1e
    db $10
    ld hl, sp+$00
    rrca
    db $10
    ld hl, sp-$08
    ld c, $10
    add b
    nop
    nop
    ld sp, $0010
    ld hl, sp+$30
    db $10
    ld hl, sp+$00
    ld hl, $f810
    ld hl, sp+$20
    db $10
    add b
    nop
    nop
    inc sp
    stop
    ld hl, sp+$32
    db $10
    ld hl, sp+$00
    inc hl
    db $10
    ld hl, sp-$08
    ld [hl+], a
    db $10
    add b
    nop
    nop
    dec [hl]
    stop
    ld hl, sp+$34
    db $10
    ld hl, sp+$00
    dec h
    db $10
    ld hl, sp-$08
    inc h
    db $10
    add b
    nop
    nop
    scf
    stop
    ld hl, sp+$36
    db $10
    ld hl, sp+$00
    daa
    db $10
    ld hl, sp-$08
    ld h, $10
    add b
    nop
    nop
    add hl, sp
    stop
    ld hl, sp+$38
    db $10
    ld hl, sp+$00
    add hl, hl
    db $10
    ld hl, sp-$08
    jr z, jr_014_4331

    add b
    nop
    nop
    dec sp
    stop
    ld hl, sp+$3a
    db $10
    ld hl, sp+$00
    dec hl
    db $10
    ld hl, sp-$08
    ld a, [hl+]

jr_014_4331:
    db $10
    add b
    nop
    nop
    dec a
    stop
    ld hl, sp+$3c
    db $10
    ld hl, sp+$00
    dec l
    db $10
    ld hl, sp-$08
    inc l
    db $10
    add b
    nop
    nop
    ccf
    stop
    ld hl, sp+$3e
    db $10
    ld hl, sp+$00
    cpl
    db $10
    ld hl, sp-$08
    ld l, $10
    add b
    nop
    nop
    ld d, c
    stop
    ld hl, sp+$50
    db $10
    ld hl, sp+$00
    ld b, c
    db $10
    ld hl, sp-$08
    ld b, b
    db $10
    add b
    nop
    nop
    ld d, e
    stop
    ld hl, sp+$52
    db $10
    ld hl, sp+$00
    ld b, e
    db $10
    ld hl, sp-$08
    ld b, d
    db $10
    add b
    nop
    nop
    ld d, l
    stop
    ld hl, sp+$54
    db $10
    ld hl, sp+$00
    ld b, l
    db $10
    ld hl, sp-$08
    ld b, h
    db $10
    add b
    nop
    nop
    ld d, a
    stop
    ld hl, sp+$56
    db $10
    ld hl, sp+$00
    ld b, a
    db $10
    ld hl, sp-$08
    ld b, [hl]
    db $10
    add b
    nop
    nop
    ld e, c
    stop
    ld hl, sp+$58
    db $10
    ld hl, sp+$00
    ld c, c
    db $10
    ld hl, sp-$08
    ld c, b
    db $10
    add b
    nop
    nop
    ld e, e
    stop
    ld hl, sp+$5a
    db $10
    ld hl, sp+$00
    ld c, e
    db $10
    ld hl, sp-$08
    ld c, d
    db $10
    add b
    nop
    nop
    ld e, l
    stop
    ld hl, sp+$5c
    db $10
    ld hl, sp+$00
    ld c, l
    db $10
    ld hl, sp-$08
    ld c, h
    db $10
    add b
    nop
    nop
    ld [hl], c
    stop
    ld hl, sp+$70
    db $10
    ld hl, sp+$00
    ld h, c
    db $10
    ld hl, sp-$08
    ld h, b
    db $10
    add b
    nop
    nop
    ld [hl], e
    stop
    ld hl, sp+$72
    db $10
    ld hl, sp+$00
    ld h, e
    db $10
    ld hl, sp-$08
    ld h, d
    db $10
    add b
    nop
    nop
    ld a, l
    stop
    ld hl, sp+$7c
    db $10
    ld hl, sp+$00
    ld l, l
    db $10
    ld hl, sp-$08
    ld l, h
    db $10
    add b
    nop
    nop
    ld a, a
    stop
    ld hl, sp+$7e
    db $10
    ld hl, sp+$00
    ld l, a
    db $10
    ld hl, sp-$08
    ld l, [hl]
    db $10
    add b
    nop
    nop
    pop de
    stop
    ld hl, sp-$30
    db $10
    ld hl, sp+$00
    pop bc
    db $10
    ld hl, sp-$08
    ret nz

    db $10
    add b
    nop
    nop
    pop af
    stop
    ld hl, sp-$10
    db $10
    ld hl, sp+$00
    pop hl
    db $10
    ld hl, sp-$08
    ldh [rNR10], a
    add b
    nop
    nop
    db $d3
    stop
    ld hl, sp-$2e
    db $10
    ld hl, sp+$00
    jp $f810


    ld hl, sp-$3e
    db $10
    add b
    nop
    nop
    di
    stop
    ld hl, sp-$0e
    db $10
    ld hl, sp+$00
    db $e3
    db $10
    ld hl, sp-$08
    ldh [c], a
    db $10
    add b
    ld hl, sp+$00
    sbc a
    nop
    nop
    nop
    sbc a
    nop
    nop
    ld hl, sp-$61
    nop
    ld hl, sp-$08
    sbc a
    nop
    add b
    cp a
    ld b, h
    ret nc

    ld b, h
    inc a
    ld b, [hl]
    ret nc

    ld b, h
    inc a
    ld b, [hl]
    ret nc

    ld b, h
    pop hl
    ld b, h
    ldh a, [c]
    ld b, h
    inc a
    ld b, [hl]
    ldh a, [c]
    ld b, h
    inc a
    ld b, [hl]
    ldh a, [c]
    ld b, h
    inc bc
    ld b, l
    inc d
    ld b, l
    inc a
    ld b, [hl]
    inc d
    ld b, l
    inc a
    ld b, [hl]
    inc d
    ld b, l
    dec h
    ld b, l
    ld [hl], $45
    inc a
    ld b, [hl]
    ld [hl], $45
    inc a
    ld b, [hl]
    ld [hl], $45
    ld b, a
    ld b, l
    ld e, b
    ld b, l
    inc a
    ld b, [hl]
    ld e, b
    ld b, l
    inc a
    ld b, [hl]
    ld e, b
    ld b, l
    ld l, c
    ld b, l
    ld a, d
    ld b, l
    inc a
    ld b, [hl]
    ld a, d
    ld b, l
    inc a
    ld b, [hl]
    ld a, d
    ld b, l
    adc e
    ld b, l
    and h
    ld b, l
    push bc
    ld b, l
    ldh a, [rLYC]
    ld bc, $d646
    ld b, l
    rst $20
    ld b, l
    ld a, [bc]
    ld b, [hl]
    dec hl
    ld b, [hl]
    nop
    nop
    push de
    nop
    nop
    ld hl, sp-$2c
    nop
    ld hl, sp+$00
    push bc
    nop
    ld hl, sp-$08
    call nz, $8000
    nop
    nop
    push af
    nop
    nop
    ld hl, sp-$0c
    nop
    ld hl, sp+$00
    push hl

Jump_014_44db:
    nop
    ld hl, sp-$08
    db $e4
    nop
    add b
    nop
    nop
    rst $10
    nop
    nop
    ld hl, sp-$2a
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    nop
    nop
    rst $30
    nop
    nop
    ld hl, sp-$0a
    nop
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    add b
    nop
    nop
    reti


    nop
    nop
    ld hl, sp-$28
    nop
    ld hl, sp+$00
    ret


    nop
    ld hl, sp-$08
    ret z

    nop
    add b
    nop
    nop
    ld sp, hl
    nop
    nop
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    jp hl


    nop
    ld hl, sp-$08
    add sp, $00
    add b
    nop
    nop
    db $db
    nop
    nop
    ld hl, sp-$26
    nop
    ld hl, sp+$00
    rlc b
    ld hl, sp-$08
    jp z, $8000

    nop
    nop
    ei
    nop
    nop
    ld hl, sp-$06
    nop
    ld hl, sp+$00
    db $eb
    nop
    ld hl, sp-$08
    ld [$8000], a
    nop
    nop
    db $dd
    nop
    nop
    ld hl, sp-$24
    nop
    ld hl, sp+$00
    call $f800
    ld hl, sp-$34
    nop
    add b
    nop
    nop
    db $fd
    nop
    nop
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    db $ed
    nop
    ld hl, sp-$08
    db $ec

jr_014_4567:
    nop
    add b
    nop
    nop
    rst $18
    nop
    nop
    ld hl, sp-$22

jr_014_4570:
    nop
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    add b
    nop
    nop
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    add b
    ld [bc], a
    inc b
    sub l
    nop
    ld [bc], a
    db $fc
    sub h
    nop
    ld [bc], a
    db $f4
    sub e
    nop
    ld a, [$8504]
    nop
    ld a, [$84fc]
    nop
    ld a, [$83f4]
    nop
    add b
    ld [hl+], a
    nop
    ld e, a
    nop
    ld [hl+], a
    ld hl, sp+$5e
    nop
    ld a, [de]
    nop
    ld c, a
    nop
    ld a, [de]
    ld hl, sp+$4e
    nop
    inc d
    nop
    ld e, a
    nop
    inc d
    ld hl, sp+$5e
    nop
    inc c
    nop
    ld c, a
    nop
    inc c
    ld hl, sp+$4e

jr_014_45c3:
    nop
    add b
    jr nc, jr_014_45c7

jr_014_45c7:
    ld e, a
    nop
    jr nc, jr_014_45c3

jr_014_45cb:
    ld e, [hl]
    nop
    jr z, jr_014_45cf

jr_014_45cf:
    ld c, a
    nop
    jr z, jr_014_45cb

jr_014_45d3:
    ld c, [hl]
    nop
    add b
    ld hl, sp+$1a
    add c
    jr nz, jr_014_45d3

jr_014_45db:
    ld [hl+], a
    add b
    jr nz, @-$06

    ld a, [bc]
    add c
    jr nz, jr_014_45db

    ld [de], a

jr_014_45e4:
    add b
    jr nz, jr_014_4567

    ld hl, sp+$2a
    add c
    jr nz, jr_014_45e4

    ld [hl-], a
    add b
    jr nz, jr_014_4570

    ld hl, sp-$22
    add c
    nop
    ld hl, sp-$2a
    add b
    nop
    ld hl, sp-$12
    add c
    nop
    ld hl, sp-$1a

jr_014_45fe:
    add b
    nop
    add b
    ld hl, sp-$32
    add c
    nop
    ld hl, sp-$3a
    add b
    nop
    add b
    sub $00
    ld e, a
    ld b, b
    sub $f8
    ld e, [hl]
    ld b, b
    sbc $00
    ld c, a
    ld b, b
    sbc $f8
    ld c, [hl]
    ld b, b
    db $e4
    nop
    ld e, a
    ld b, b
    db $e4
    ld hl, sp+$5e
    ld b, b
    db $ec
    nop
    ld c, a
    ld b, b
    db $ec

jr_014_4627:
    ld hl, sp+$4e
    ld b, b
    add b
    ret z

    nop
    ld e, a
    ld b, b
    ret z

    ld hl, sp+$5e
    ld b, b
    ret nc

    nop
    ld c, a
    ld b, b
    ret nc

    ld hl, sp+$4e
    ld b, b
    add b
    ld hl, sp+$00
    sbc a
    nop
    nop
    nop
    sbc a
    nop
    nop
    ld hl, sp-$61
    nop
    ld hl, sp-$08
    sbc a
    nop
    add b
    ld d, l
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    and a
    ld b, [hl]
    ret nc

    ld b, [hl]
    cp $fa
    sbc [hl]

jr_014_4658:
    ld h, b
    ld b, $fa
    adc [hl]
    ld h, b
    cp $07
    sbc l
    jr nz, jr_014_4658

    rlca
    adc l
    nop
    dec b
    inc bc
    sbc h
    nop
    ld sp, hl
    nop
    sbc [hl]
    nop
    pop af
    nop
    adc [hl]
    nop
    ldh a, [c]
    or $8b
    nop
    ld sp, hl
    ldh a, [c]
    adc a
    jr nz, @+$05

    ldh a, [$ff9c]
    jr nz, jr_014_45fe

    ld [$8ff8], sp
    ld h, b
    di
    cp $9c
    ld b, b
    dec b
    rlca
    sbc h
    nop
    inc b
    xor $9c
    jr nz, jr_014_4692

    ld a, [$409b]

jr_014_4692:
    ldh a, [$fff3]

jr_014_4694:
    adc e
    nop
    db $ed
    inc b
    adc a
    nop
    db $fd
    add hl, bc
    sbc l
    jr nz, jr_014_4694

    ld a, [bc]
    adc l
    nop
    ld hl, sp-$11
    adc a
    jr nz, jr_014_4627

    db $ed
    ei
    sbc h
    ld b, b
    db $ec
    dec b
    adc a
    nop
    dec b
    push af
    sbc e
    ld b, b
    dec b
    db $ec
    sbc h
    jr nz, jr_014_46c2

    ld [$009c], sp
    nop
    inc c
    sbc l
    ld h, b
    ld a, [bc]
    push af
    sbc h

jr_014_46c2:
    jr nz, @-$08

    inc c
    adc l
    nop
    rst $30
    db $ed
    adc a
    ld h, b
    xor $ef
    adc e
    nop
    add b
    ld [$8df9], a
    nop
    ld [$8be8], sp
    ld b, b
    ld c, $f5
    sbc h
    jr nz, jr_014_46eb

    xor $9b
    ld b, b
    db $eb
    ld b, $9d
    jr nz, jr_014_46e7

    dec c
    adc l

jr_014_46e7:
    nop
    rst $30
    ld c, $8c

jr_014_46eb:
    nop
    push af
    add sp, -$71
    ld h, b
    db $ed
    xor $8b
    ld b, b
    inc c
    ld a, [bc]
    sbc l
    jr nz, @-$7e

    ld hl, sp+$00
    sbc a
    nop
    add b
    ld b, $47
    rra
    ld b, a
    jr c, jr_014_474b

    ld d, c
    ld b, a
    nop
    ld [bc], a
    sbc l
    nop
    nop
    ld sp, hl
    sbc e
    nop
    ld hl, sp-$08
    adc e
    nop
    ld sp, hl
    ld bc, $008d
    cp $fe
    sbc h
    nop
    or $fe
    adc h
    nop
    add b
    nop
    db $fd
    sbc h
    nop
    ld bc, $9bf6
    nop
    rst $30
    push af
    adc e
    nop
    ld bc, $9d03
    nop
    rst $30
    ld [bc], a
    adc l
    nop

jr_014_4733:
    ldh a, [c]
    cp $8c
    nop
    add b
    pop af
    db $fd
    adc h
    jr nz, jr_014_4733

    db $f4
    adc e
    ld b, b
    dec b
    ei
    sbc h
    jr nz, @+$06

    di
    sbc e
    ld b, b
    or $06
    adc l

jr_014_474b:
    ld b, b
    inc b
    rlca
    sbc l
    ld b, b
    add b
    inc b
    pop af
    sbc e
    ld b, b
    rlca
    ei
    sbc h
    jr nz, jr_014_4761

    rlca
    sbc l

jr_014_475c:
    ld b, b
    or $08
    adc l
    ld b, b

jr_014_4761:
    ldh a, [$fffd]
    adc h
    jr nz, jr_014_475c

    ldh a, [c]
    adc e
    ld b, b
    add b
    ld [hl], b
    ld b, a
    add c
    ld b, a
    sub d
    ld b, a
    nop
    nop
    cp c
    nop
    nop
    ld hl, sp-$48
    nop
    ld hl, sp+$00
    xor c
    nop
    ld hl, sp-$08
    xor b
    nop
    add b
    nop
    nop
    cp e
    nop
    nop
    ld hl, sp-$46
    nop
    ld hl, sp+$00
    xor e
    nop
    ld hl, sp-$08
    xor d
    nop
    add b
    nop
    ld [$00bf], sp
    nop
    nop
    cp [hl]
    nop
    nop
    ld hl, sp-$43
    nop
    nop
    ldh a, [$ffbc]
    nop
    ld hl, sp+$08
    xor a
    nop
    ld hl, sp+$00
    xor [hl]
    nop
    ld hl, sp-$08
    xor l
    nop
    ld hl, sp-$10
    xor h
    nop
    add b
    push bc
    ld b, a
    sub $47
    rst $20
    ld b, a
    ld hl, sp+$47
    add hl, bc
    ld c, b
    ld hl, sp+$47
    add hl, bc
    ld c, b
    ld hl, sp+$47
    add hl, bc
    ld c, b
    nop
    nop
    ld [hl], l
    nop
    nop
    ld hl, sp+$74
    nop
    ld hl, sp+$00
    ld h, l
    nop
    ld hl, sp-$08
    ld h, h
    nop
    add b
    nop
    nop
    ld [hl], a
    nop
    nop
    ld hl, sp+$76
    nop
    ld hl, sp+$00
    ld h, a
    nop
    ld hl, sp-$08
    ld h, [hl]
    nop
    add b
    nop
    nop
    ld a, c
    nop
    nop
    ld hl, sp+$78
    nop
    ld hl, sp+$00
    ld l, c
    nop
    ld hl, sp-$08
    ld l, b
    nop
    add b
    nop
    nop
    ld a, e
    nop
    nop
    ld hl, sp+$7a
    nop
    ld hl, sp+$00
    ld l, e
    nop
    ld hl, sp-$08
    ld l, d
    nop
    add b
    nop
    ld hl, sp-$61
    nop
    nop
    nop
    sbc a
    nop
    ld hl, sp+$00
    sbc a
    nop
    ld hl, sp-$08
    sbc a
    nop
    add b
    inc l
    ld c, b
    ld d, l
    ld c, b
    ld a, [hl]
    ld c, b
    and a
    ld c, b
    ret nc

jr_014_4823:
    ld c, b
    and a
    ld c, b
    ret nc

    ld c, b
    and a
    ld c, b
    ret nc

    ld c, b
    dec b
    di
    adc c
    jr nz, jr_014_4823

    push af
    add [hl]
    nop
    db $fd
    ld hl, sp-$66
    nop
    db $fd
    ldh a, [$ff99]
    nop
    ld hl, sp-$02
    sbc b
    nop
    ldh a, [$fffe]
    adc b
    nop
    push af
    rlca
    adc c
    ld b, b
    rst $38
    rlca
    sub [hl]
    ld h, b
    rlca
    rst $38
    sub a
    nop

jr_014_4850:
    rst $38
    rst $38
    add a
    nop
    add b
    ld [$89f2], sp

jr_014_4858:
    jr nz, jr_014_4858

    or $9a

jr_014_485c:
    nop
    cp $ee
    sbc c
    nop
    ldh a, [$fff3]
    add [hl]
    jr nz, jr_014_485c

    db $fd
    sbc b
    jr nz, jr_014_4858

    db $fd
    adc b
    jr nz, jr_014_4877

    nop
    sub a
    nop
    ld bc, $8700
    nop
    db $fd

jr_014_4876:
    ld a, [bc]

jr_014_4877:
    sub [hl]
    ld h, b
    di
    ld a, [bc]
    adc c
    ld b, b
    add b
    ldh a, [c]
    ldh a, [$ff86]
    jr nz, jr_014_4876

    db $fc
    sbc b
    nop
    db $eb
    db $fc
    adc b
    nop
    rst $38
    ldh a, [c]
    sbc d
    ld b, b
    rst $38
    ld [$4099], a
    ld a, [bc]
    ldh a, [$ff89]
    jr nz, @+$0d

jr_014_4897:
    ld bc, $2097
    inc bc
    ld bc, $2087
    ld bc, $960c
    jr nz, jr_014_4897

    ld c, $89
    ld b, b
    add b
    di
    ld a, [$0098]
    db $eb
    ld a, [$0088]
    inc bc
    pop af
    sbc d
    ld b, b
    inc bc

jr_014_48b4:
    jp hl


    sbc c
    ld b, b
    rrca
    ldh a, [$ff89]
    jr nz, jr_014_48b4

    db $ec
    add [hl]
    jr nz, jr_014_48ce

    ld bc, $2097
    ld b, $01
    add a
    jr nz, @-$07

    db $10
    adc c
    ld b, b
    ld [$9610], sp

jr_014_48ce:
    jr nz, jr_014_4850

    ld hl, sp+$00
    sbc a
    nop
    add b
    db $dd
    ld c, b
    xor $48
    rst $38
    ld c, b
    db $10
    ld c, c
    nop
    nop
    or c
    nop
    nop
    ld hl, sp-$50
    nop
    ld hl, sp+$00
    and c
    nop
    ld hl, sp-$08
    and b
    nop
    add b
    nop
    nop
    or e
    nop
    nop
    ld hl, sp-$4e
    nop
    ld hl, sp+$00
    and e
    nop
    ld hl, sp-$08
    and d
    nop
    add b
    nop
    nop
    or l
    nop
    nop
    ld hl, sp-$4c
    nop
    ld hl, sp+$00
    and l
    nop
    ld hl, sp-$08
    and h
    nop
    add b
    nop
    nop
    or a
    nop
    nop
    ld hl, sp-$4a
    nop
    ld hl, sp+$00
    and a
    nop
    ld hl, sp-$08
    and [hl]
    nop
    add b
    add hl, sp
    ld c, c
    ld c, d
    ld c, c
    ld l, e
    ld c, c
    adc h
    ld c, c
    or c
    ld c, c
    jp nc, $f349

    ld c, c
    inc d
    ld c, d
    dec [hl]
    ld c, d
    ld d, [hl]
    ld c, d
    ld a, e
    ld c, d
    sbc h
    ld c, d
    ld [$b110], sp
    nop
    ld [$b008], sp
    nop
    nop
    db $10
    and c
    nop
    nop
    ld [$00a0], sp
    add b
    inc c
    dec bc
    or e
    nop
    inc c
    inc bc
    or d
    nop
    inc b
    dec bc
    and e
    nop
    inc b
    inc bc
    and d
    nop
    inc c
    or $b1
    nop
    inc c
    xor $b0
    nop
    inc b
    or $a1
    nop
    inc b
    xor $a0
    nop
    add b
    ld hl, sp-$10
    or c
    nop
    ld hl, sp-$18
    or b
    nop
    ldh a, [$fff0]
    and c
    nop
    ldh a, [$ffe8]
    and b
    nop
    rlca
    di
    or e
    nop
    rlca
    db $eb
    or d
    nop
    rst $38
    di
    and e
    nop
    rst $38
    db $eb
    and d
    nop
    add b
    inc c
    inc b
    or a
    nop
    inc c
    db $fc
    or [hl]
    nop
    inc b
    inc b
    and a
    nop
    inc b
    db $fc
    and [hl]
    nop
    inc bc
    di
    or l
    nop
    inc bc
    db $eb
    or h
    nop
    ei
    di
    and l
    nop
    ei
    db $eb
    and h
    nop
    db $f4
    di
    or e
    nop
    add b
    stop
    or l
    nop
    db $10
    ld hl, sp-$4c
    nop
    ld [$a500], sp
    nop
    ld [$a4f8], sp
    nop
    nop
    ldh a, [$ffb7]
    nop
    nop
    add sp, -$4a
    nop
    ld hl, sp-$10
    and a
    nop
    ld hl, sp-$18
    and [hl]
    nop
    add b
    ldh a, [rP1]
    or e
    nop
    ldh a, [$fff8]
    or d
    nop
    add sp, $00
    and e
    nop
    add sp, -$08
    and d
    nop
    nop
    db $10
    or l
    nop
    nop
    ld [$00b4], sp
    ld hl, sp+$10
    and l
    nop
    ld hl, sp+$08
    and h
    nop
    add b
    inc c
    db $f4
    or e
    nop
    inc c
    db $ec
    or d
    nop
    inc b
    db $f4
    and e
    nop
    inc b
    db $ec
    and d
    nop
    db $f4
    inc c
    or l
    nop
    db $f4
    inc b
    or h
    nop
    db $ec
    inc c
    and l
    nop
    db $ec
    inc b
    and h
    nop
    add b
    nop
    ldh a, [$ffb7]
    nop
    nop
    add sp, -$4a
    nop
    ld hl, sp-$10
    and a
    nop
    ld hl, sp-$18
    and [hl]
    nop
    stop
    or l
    nop
    db $10
    ld hl, sp-$4c
    nop
    ld [$a500], sp
    nop
    ld [$a4f8], sp
    nop
    add b
    inc c
    db $f4
    or a
    nop
    inc c
    db $ec
    or [hl]
    nop
    inc b
    db $f4
    and a
    nop
    inc b
    db $ec
    and [hl]
    nop
    db $f4
    db $f4
    or l
    nop
    db $f4
    db $ec
    or h
    nop
    db $ec
    db $f4
    and l
    nop
    db $ec
    db $ec
    and h
    nop
    add b
    ldh a, [rP1]
    or e
    nop
    ldh a, [$fff8]
    or d
    nop
    add sp, $00
    and e
    nop
    add sp, -$08
    and d
    nop
    nop
    ldh a, [$ffb5]
    nop
    nop
    add sp, -$4c
    nop
    ld hl, sp-$10
    and l
    nop
    ld hl, sp-$18
    and h
    nop
    stop
    or e
    nop
    add b
    inc c
    db $f4
    or c
    nop
    inc c
    db $ec
    or b
    nop
    inc b
    db $f4
    and c
    nop
    inc b
    db $ec
    and b
    nop
    db $f4
    db $f4
    or e
    nop
    db $f4
    db $ec
    or d
    nop
    db $ec
    db $f4
    and e
    nop
    db $ec
    db $ec
    and d
    nop
    add b
    ldh a, [rP1]
    or c
    nop
    ldh a, [$fff8]
    or b
    nop
    add sp, $00
    and c
    nop
    add sp, -$08
    and b
    nop
    add b
    scf
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld l, d
    ld c, e
    ld a, e
    ld c, e
    adc h
    ld c, e
    sbc l
    ld c, e
    ld b, [hl]
    ld c, l
    sbc l
    ld c, e
    ld b, [hl]
    ld c, l
    sbc l
    ld c, e
    xor [hl]
    ld c, e
    cp a
    ld c, e
    ret nc

    ld c, e
    pop hl
    ld c, e
    ld b, [hl]
    ld c, l
    pop hl
    ld c, e
    ld b, [hl]
    ld c, l
    pop hl
    ld c, e
    ldh a, [c]
    ld c, e
    inc bc
    ld c, h
    inc d
    ld c, h
    dec h
    ld c, h
    ld e, b
    ld c, h
    ld l, c
    ld c, h
    ld b, [hl]
    ld c, l
    ld l, c
    ld c, h
    ld b, [hl]
    ld c, l
    ld l, c
    ld c, h
    ld a, d
    ld c, h
    adc e
    ld c, h
    sbc h
    ld c, h
    ld b, [hl]
    ld c, l
    sbc h
    ld c, h
    ld b, [hl]
    ld c, l
    sbc h
    ld c, h
    xor l
    ld c, h
    ld b, [hl]
    ld c, l
    xor l
    ld c, h
    ld b, [hl]
    ld c, l
    xor l
    ld c, h
    cp [hl]
    ld c, h
    rst $08
    ld c, h
    ldh [$ff4c], a
    pop af
    ld c, h
    ld [bc], a
    ld c, l
    inc de
    ld c, l
    inc h
    ld c, l
    dec [hl]
    ld c, l
    ld l, d
    ld c, e
    ld a, d
    ld c, h
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld b, [hl]
    ld c, l
    ld a, e
    ld c, e
    ld e, c
    ld c, e
    adc e
    ld c, h
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ld c, b
    ld c, e
    ld e, c
    ld c, e
    ret nc

    ld c, e
    pop hl
    ld c, e
    nop
    nop
    ld de, $0000
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    ld bc, $f800
    ld hl, sp+$00
    nop
    add b
    nop
    nop
    inc de
    nop
    nop
    ld hl, sp+$12
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp-$08
    ld [bc], a
    nop
    add b
    nop
    nop
    dec d
    nop
    nop
    ld hl, sp+$14
    nop
    ld hl, sp+$00
    dec b
    nop
    ld hl, sp-$08
    inc b
    nop
    add b
    nop
    nop
    rla
    nop
    nop
    ld hl, sp+$16
    nop
    ld hl, sp+$00
    rlca
    nop
    ld hl, sp-$08
    ld b, $00
    add b
    nop
    nop
    add hl, de
    nop
    nop
    ld hl, sp+$18
    nop
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$8000], sp
    nop
    nop
    dec de
    nop
    nop
    ld hl, sp+$1a
    nop
    ld hl, sp+$00
    dec bc
    nop
    ld hl, sp-$08
    ld a, [bc]
    nop
    add b
    nop
    nop
    dec e
    nop
    nop
    ld hl, sp+$1c
    nop
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    add b
    nop
    nop
    ld sp, $0000
    ld hl, sp+$30
    nop
    ld hl, sp+$00
    ld hl, $f800
    ld hl, sp+$20
    nop
    add b
    nop
    nop
    inc sp
    nop
    nop
    ld hl, sp+$32
    nop
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    add b
    nop
    nop
    dec [hl]
    nop
    nop
    ld hl, sp+$34
    nop
    ld hl, sp+$00
    dec h
    nop
    ld hl, sp-$08
    inc h
    nop
    add b
    nop
    nop
    scf
    nop
    nop
    ld hl, sp+$36
    nop
    ld hl, sp+$00
    daa
    nop
    ld hl, sp-$08
    ld h, $00
    add b
    nop
    nop
    add hl, sp
    nop
    nop
    ld hl, sp+$38
    nop
    ld hl, sp+$00
    add hl, hl
    nop
    ld hl, sp-$08
    jr z, jr_014_4c02

jr_014_4c02:
    add b
    nop
    nop
    dec sp
    nop
    nop
    ld hl, sp+$3a
    nop
    ld hl, sp+$00
    dec hl
    nop
    ld hl, sp-$08
    ld a, [hl+]
    nop
    add b
    nop
    nop
    dec a
    nop
    nop
    ld hl, sp+$3c
    nop
    ld hl, sp+$00
    dec l
    nop
    ld hl, sp-$08
    inc l
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
    cpl
    nop
    ld hl, sp-$08
    ld l, $00
    add b
    nop
    nop
    ld d, c
    nop
    nop
    ld hl, sp+$50
    nop
    ld hl, sp+$00
    ld b, c
    nop
    ld hl, sp-$08
    ld b, b
    nop
    add b
    nop
    nop
    ld d, e
    nop
    nop
    ld hl, sp+$52
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    add b
    nop
    nop
    ld e, c
    nop
    nop
    ld hl, sp+$58
    nop
    ld hl, sp+$00
    ld c, c
    nop
    ld hl, sp-$08
    ld c, b
    nop
    add b
    nop
    nop
    ld e, e
    nop
    nop
    ld hl, sp+$5a
    nop
    ld hl, sp+$00
    ld c, e
    nop
    ld hl, sp-$08
    ld c, d
    nop
    add b
    ldh a, [rP1]
    rla
    nop
    ldh a, [$fff8]
    ld d, $00
    add sp, $00
    rlca
    nop
    add sp, -$08
    ld b, $00
    add b
    ldh a, [rP1]
    dec d
    nop
    ldh a, [$fff8]
    inc d
    nop
    add sp, $00
    dec b
    nop
    add sp, -$08
    inc b
    nop
    add b
    nop
    nop
    ld [hl], c
    nop
    nop
    ld hl, sp+$70
    nop
    ld hl, sp+$00
    ld h, c
    nop
    ld hl, sp-$08
    ld h, b
    nop
    add b
    nop
    nop
    ld [hl], e
    nop
    nop
    ld hl, sp+$72
    nop
    ld hl, sp+$00
    ld h, e
    nop
    ld hl, sp-$08
    ld h, d
    nop
    add b
    nop

Jump_014_4cbf:
    nop
    ld [hl], l
    stop
    ld hl, sp+$74
    db $10
    ld hl, sp+$00
    ld h, l
    db $10
    ld hl, sp-$08
    ld h, h
    db $10
    add b
    nop
    nop
    ld [hl], a
    stop
    ld hl, sp+$76
    db $10
    ld hl, sp+$00
    ld h, a
    db $10
    ld hl, sp-$08
    ld h, [hl]
    db $10
    add b
    nop
    nop
    ld a, c
    stop
    ld hl, sp+$78
    db $10
    ld hl, sp+$00
    ld l, c
    db $10
    ld hl, sp-$08
    ld l, b
    db $10
    add b
    nop
    nop
    ld a, e
    stop
    ld hl, sp+$7a
    db $10
    ld hl, sp+$00
    ld l, e
    db $10
    ld hl, sp-$08
    ld l, d
    db $10
    add b
    nop
    nop
    ld a, l
    nop
    nop
    ld hl, sp+$7c
    nop
    ld hl, sp+$00
    ld l, l
    nop
    ld hl, sp-$08
    ld l, h
    nop
    add b
    nop
    nop
    ld a, a
    nop
    nop
    ld hl, sp+$7e
    nop
    ld hl, sp+$00
    ld l, a
    nop
    ld hl, sp-$08
    ld l, [hl]
    nop
    add b
    nop
    nop
    sub c
    nop
    nop
    ld hl, sp-$70
    nop
    ld hl, sp+$00
    add c
    nop
    ld hl, sp-$08
    add b
    nop
    add b
    nop
    nop
    sub e
    nop
    nop
    ld hl, sp-$6e
    nop
    ld hl, sp+$00
    add e
    nop
    ld hl, sp-$08
    add d
    nop
    add b

jr_014_4d46:
    nop
    ld hl, sp+$0e
    nop
    nop
    nop
    ld c, $00
    ld hl, sp+$00
    ld c, $00
    ld hl, sp-$08
    ld c, $00
    add b
    ld h, c
    ld c, l
    ld l, d
    ld c, l
    ld a, e
    ld c, l
    sub h

jr_014_4d5e:
    ld c, l
    xor l
    ld c, l
    ld hl, sp-$08
    ld b, h
    jr nz, jr_014_4d5e

jr_014_4d66:
    nop
    ld d, h
    nop
    add b
    xor $f7
    ld b, l
    nop
    db $f4
    ldh a, [c]
    ld d, l
    nop
    or $06

jr_014_4d74:
    ld b, l
    jr nz, jr_014_4d66

    ld bc, $2055
    add b
    db $fc
    xor $55
    jr nz, jr_014_4d74

    ldh a, [rHDMA5]
    nop
    db $fc
    rlca
    ld d, l
    jr nz, @-$09

    inc c
    ld d, l
    nop
    db $ed
    inc bc
    ld d, l
    ld h, b
    db $ec
    db $f4
    ld d, l
    nop
    add b
    rst $28
    xor $55
    nop
    ld hl, sp+$0f
    ld d, l
    jr nz, jr_014_4da1

    add hl, bc
    ld d, l
    ld h, b
    inc b

jr_014_4da1:
    xor $55
    nop
    db $fc
    db $eb
    ld d, l
    ld b, b
    ldh a, [$ff0c]
    ld d, l
    ld b, b
    add b
    dec b
    rst $20
    ld d, l
    ld h, b
    inc bc
    ld [de], a
    ld d, l
    ld h, b
    dec c
    ld c, $55
    ld b, b
    ld c, $ed
    ld d, l
    ld b, b
    or $ec
    ld d, l
    ld b, b
    or $0d
    ld d, l
    jr nz, jr_014_4d46

    sub $4d
    db $eb
    ld c, l
    nop
    ld c, [hl]
    dec d
    ld c, [hl]
    sub $4d
    db $eb
    ld c, l
    nop
    ld c, [hl]
    dec d
    ld c, [hl]
    add sp, $02
    ld e, a
    nop
    add sp, -$06
    ld e, [hl]
    nop
    ldh [$fffa], a
    ld c, [hl]
    nop
    ldh a, [c]
    ld [bc], a
    ld e, h
    nop
    push af
    push af
    ld e, l
    nop
    add b
    add sp, -$08
    ld e, h
    nop
    add sp, $00
    ld c, [hl]
    nop
    ldh a, [rP1]
    ld e, [hl]
    nop
    ld sp, hl
    db $f4
    ld e, h
    nop
    ldh a, [$ff08]
    ld e, a
    nop
    add b
    ld sp, hl
    cp $5f
    nop
    ld sp, hl
    or $5e
    nop
    pop af
    or $4e
    nop
    db $ec
    ld sp, hl
    ld e, l
    nop
    db $ed
    inc b
    ld e, h
    nop
    add b
    db $eb
    db $fd
    ld e, h
    nop
    ldh a, [rTMA]
    ld e, l
    nop
    push af
    rst $30
    ld e, h
    nop
    add b
    cp c
    ld c, [hl]
    cpl
    ld d, b
    cp c
    ld c, [hl]
    cpl
    ld d, b
    cp c
    ld c, [hl]
    db $db
    ld c, [hl]
    cpl
    ld d, b
    db $db
    ld c, [hl]
    cpl
    ld d, b
    db $db
    ld c, [hl]
    db $fd
    ld c, [hl]
    cpl
    ld d, b
    db $fd
    ld c, [hl]
    cpl
    ld d, b
    db $fd
    ld c, [hl]
    rra
    ld c, a
    cpl
    ld d, b
    rra
    ld c, a
    cpl
    ld d, b
    rra
    ld c, a
    ld b, c
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, a
    ld h, e
    ld c, a
    cpl
    ld d, b
    ld h, e
    ld c, a
    cpl
    ld d, b
    ld h, e
    ld c, a
    xor b
    ld c, [hl]
    jp z, $ec4e

    ld c, [hl]
    ld c, $4f
    jr nc, jr_014_4eb7

    ld d, d
    ld c, a
    ld [hl], h
    ld c, a
    add l
    ld c, a
    and a
    ld c, a
    ret


    ld c, a
    db $eb
    ld c, a
    sub [hl]
    ld c, a
    cpl
    ld d, b
    sub [hl]
    ld c, a
    cpl
    ld d, b
    sub [hl]
    ld c, a
    cp b
    ld c, a
    cpl
    ld d, b
    cp b
    ld c, a
    cpl
    ld d, b
    cp b
    ld c, a
    jp c, Jump_000_2f4f

    ld d, b
    jp c, Jump_000_2f4f

    ld d, b
    jp c, $fc4f

    ld c, a
    cpl
    ld d, b
    db $fc
    ld c, a
    cpl
    ld d, b
    db $fc
    ld c, a
    dec c
    ld d, b
    ld e, $50
    cpl
    ld d, b
    ld e, $50
    cpl
    ld d, b
    ld e, $50
    nop
    nop
    sub l
    nop
    nop
    ld hl, sp-$6c
    nop
    ld hl, sp+$00
    add l
    nop
    ld hl, sp-$08
    add h

jr_014_4eb7:
    nop
    add b
    nop
    nop
    sub a
    nop

Call_014_4ebd:
    nop
    ld hl, sp-$6a
    nop
    ld hl, sp+$00
    add a
    nop
    ld hl, sp-$08
    add [hl]
    nop
    add b
    nop
    nop
    sbc c
    nop
    nop
    ld hl, sp-$68
    nop
    ld hl, sp+$00
    adc c
    nop
    ld hl, sp-$08
    adc b
    nop
    add b
    nop
    nop
    sbc e
    nop
    nop
    ld hl, sp-$66
    nop
    ld hl, sp+$00
    adc e
    nop
    ld hl, sp-$08
    adc d
    nop
    add b
    nop
    nop
    sbc l
    nop
    nop
    ld hl, sp-$64
    nop
    ld hl, sp+$00
    adc l
    nop
    ld hl, sp-$08
    adc h
    nop
    add b
    nop
    nop
    sbc a
    nop
    nop
    ld hl, sp-$62
    nop
    ld hl, sp+$00
    adc a
    nop
    ld hl, sp-$08
    adc [hl]
    nop
    add b
    nop
    nop
    or c
    nop
    nop
    ld hl, sp-$50
    nop
    ld hl, sp+$00
    and c
    nop
    ld hl, sp-$08
    and b
    nop
    add b
    nop
    nop
    or e
    nop
    nop
    ld hl, sp-$4e
    nop
    ld hl, sp+$00
    and e
    nop
    ld hl, sp-$08
    and d
    nop
    add b
    nop
    nop
    or l
    nop
    nop
    ld hl, sp-$4c
    nop
    ld hl, sp+$00
    and l
    nop
    ld hl, sp-$08
    and h
    nop
    add b
    nop
    nop
    or a
    nop
    nop
    ld hl, sp-$4a
    nop
    ld hl, sp+$00
    and a
    nop
    ld hl, sp-$08
    and [hl]
    nop
    add b
    nop
    nop
    cp c
    nop
    nop
    ld hl, sp-$48
    nop
    ld hl, sp+$00
    xor c
    nop
    ld hl, sp-$08
    xor b
    nop
    add b
    nop
    nop
    cp e
    nop
    nop
    ld hl, sp-$46
    nop
    ld hl, sp+$00
    xor e
    nop
    ld hl, sp-$08
    xor d
    nop
    add b
    nop
    nop
    cp l
    nop
    nop
    ld hl, sp-$44
    nop
    ld hl, sp+$00
    xor l
    nop
    ld hl, sp-$08
    xor h
    nop
    add b
    nop
    nop
    cp a
    nop
    nop
    ld hl, sp-$42
    nop
    ld hl, sp+$00
    xor a
    nop
    ld hl, sp-$08
    xor [hl]
    nop
    add b
    nop
    nop
    pop de
    nop
    nop
    ld hl, sp-$30
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    nop
    nop
    db $d3
    nop
    nop
    ld hl, sp-$2e
    nop
    ld hl, sp+$00
    jp $f800


    ld hl, sp-$3e
    nop
    add b
    nop
    nop
    push de
    nop
    nop
    ld hl, sp-$2c
    nop
    ld hl, sp+$00
    push bc
    nop
    ld hl, sp-$08
    call nz, $8000
    nop
    nop
    rst $10
    nop
    nop
    ld hl, sp-$2a
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    nop
    nop
    reti


    nop
    nop
    ld hl, sp-$28
    nop
    ld hl, sp+$00
    ret


    nop
    ld hl, sp-$08
    ret z

    nop
    add b
    nop
    nop
    db $db
    nop
    nop
    ld hl, sp-$26
    nop
    ld hl, sp+$00
    rlc b
    ld hl, sp-$08
    jp z, $8000

    nop
    nop
    db $dd
    nop
    nop
    ld hl, sp-$24
    nop
    ld hl, sp+$00
    call $f800
    ld hl, sp-$34
    nop
    add b
    nop
    nop
    rst $18
    nop
    nop
    ld hl, sp-$22
    nop
    ld hl, sp+$00
    rst $08
    nop
    ld hl, sp-$08
    adc $00
    add b
    nop
    nop
    pop af
    nop
    nop
    ld hl, sp-$10
    nop
    ld hl, sp+$00
    pop hl
    nop
    ld hl, sp-$08
    ldh [rP1], a
    add b
    nop
    nop
    xor c
    nop
    nop
    ld hl, sp-$58
    nop
    ld hl, sp+$00
    xor c
    nop
    ld hl, sp-$08
    xor b
    nop
    add b
    ld e, h
    ld d, l
    ld h, l
    ld d, l
    halt
    ld d, l
    ld e, h
    ld d, b
    sbc c
    ld d, b
    sub $50
    rlca
    ld d, c
    jr z, jr_014_50a1

    ld e, c
    ld d, c
    halt
    ld d, c
    adc e
    ld d, c
    sub b
    ld d, c
    xor c
    ld d, c
    jp nz, $fc51

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

jr_014_50a1:
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

Call_014_50bd:
    db $ec
    ei
    ld [hl-], a
    nop
    db $ec
    di
    ld sp, $e400
    inc bc
    jr nc, jr_014_50c9

jr_014_50c9:
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

jr_014_50f6:
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

jr_014_5122:
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

jr_014_5137:
    jr nz, jr_014_5122

    ld [bc], a
    ld a, [de]
    ld b, b
    ld [$1df8], a
    nop
    xor $fc
    dec de
    jr nz, jr_014_5137

    ei
    inc e
    jr nz, @-$03

jr_014_5149:
    nop
    jr jr_014_516c

    or $fd
    dec e
    jr nz, jr_014_5149

jr_014_5151:
    ld hl, sp+$1c
    nop
    ld sp, hl
    ld hl, sp+$1b
    ld b, b
    add b
    db $fc

jr_014_515a:
    ei

jr_014_515b:
    inc e
    jr nz, jr_014_5151

    inc bc
    ld d, $00
    or $fd
    ld a, [de]
    jr nz, jr_014_515a

    ld sp, hl
    dec de

jr_014_5168:
    nop
    or $f6
    rla

jr_014_516c:
    jr nz, jr_014_5168

    or $18
    nop
    ld a, [$1d04]
    jr nz, jr_014_50f6

    ei
    ld bc, $0018

jr_014_517a:
    ei
    dec b
    rla
    jr nz, jr_014_517a

    ld sp, hl
    inc e

jr_014_5181:
    jr nz, jr_014_5181

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
    jr jr_014_51b9

jr_014_51b9:
    ldh a, [rP1]
    inc e

jr_014_51bc:
    jr nz, jr_014_51bc

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
    jr nz, jr_014_515b

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

jr_014_5271:
    ld l, b
    nop
    add b
    ld hl, sp-$07
    ld h, a
    jr nz, jr_014_5271

    ld bc, $2066
    ldh a, [$fff9]
    ld h, l
    jr nz, jr_014_5271

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
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    db $ed
    ld d, e
    ldh a, [rHDMA3]
    ldh a, [rHDMA3]
    ldh a, [rHDMA3]
    ei
    ld d, e
    cp $53
    add hl, bc
    ld d, h
    inc c
    ld d, h
    rla
    ld d, h
    ld a, [de]
    ld d, h
    dec h
    ld d, h
    jr z, jr_014_539d

    inc sp
    ld d, h
    ld [hl], $54
    ld b, c
    ld d, h
    ld b, h
    ld d, h
    ld c, a
    ld d, h
    ld d, d
    ld d, h
    ld d, a
    ld d, h
    ld e, h
    ld d, h
    ld h, c
    ld d, h
    ld h, [hl]
    ld d, h
    ld l, a
    ld d, h
    ld a, b
    ld d, h
    ld a, a
    ld d, h
    sub d
    ld d, h
    and l
    ld d, h
    xor [hl]
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    rst $00
    ld d, h
    jp z, $d554

    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    dec l
    ld d, l
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    push de
    ld d, h
    ret c

    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    dec l
    ld d, l
    dec l
    ld d, l
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h

jr_014_539d:
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    db $e3
    ld d, h
    and $54
    ld sp, hl
    ld d, h
    inc c
    ld d, l
    ld de, $1c55
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    jr c, jr_014_5414

    jr c, jr_014_5416

    jr c, @+$57

    jr c, jr_014_541a

    jr c, jr_014_541c

    jr c, jr_014_541e

    ldh a, [rHDMA3]
    jr c, jr_014_5422

    jr c, jr_014_5424

    jr c, jr_014_5426

    jr c, jr_014_5428

    jr c, jr_014_542a

    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    dec l
    ld d, l
    jr c, jr_014_5434

    dec l
    ld d, l
    jr c, jr_014_5438

    jr c, jr_014_543a

    jr c, jr_014_543c

    dec sp
    ld d, l
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03

jr_014_5414:
    ld b, $04

jr_014_5416:
    rst $38
    ldh a, [rP1]
    rst $38

jr_014_541a:
    rra
    nop

jr_014_541c:
    ld b, $01

jr_014_541e:
    ld b, $02
    ld b, $03

jr_014_5422:
    ld b, $04

jr_014_5424:
    cp $f0

jr_014_5426:
    nop
    rst $38

jr_014_5428:
    rra
    nop

jr_014_542a:
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    cp $f0

jr_014_5434:
    nop
    rst $38
    rra
    nop

jr_014_5438:
    ld b, $01

jr_014_543a:
    ld b, $02

jr_014_543c:
    ld b, $03
    ld b, $04
    cp $f0
    nop
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    cp $f0
    nop
    rst $38
    ld [$0800], sp
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ld [$0800], sp
    ld bc, $08ff
    nop
    ld [$ff01], sp
    ld [$0800], sp
    ld bc, $0206
    inc b
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $0206
    inc b
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $0208
    rst $38
    inc c
    nop
    inc c
    ld bc, $020c
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
    ld [$0fff], sp
    nop
    ld [$0601], sp
    ld [bc], a
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
    ld [$08ff], sp
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$ff03], sp
    inc b
    nop
    inc b
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
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld b, $03
    ld b, $04
    ld b, $05
    ld b, $06
    ld b, $07
    ld b, $08
    rst $38
    rra
    nop
    rra
    ld bc, $08ff
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$1803], sp
    inc b
    rst $38
    ld [$0800], sp
    ld bc, $0208
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    rst $38
    rra
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    rst $38
    ldh a, [rP1]
    rst $38
    rrca
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$ff03], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $0208
    ld [$0803], sp
    ld [bc], a
    ld [$0803], sp
    ld [bc], a
    ld [$ff03], sp
    ld [$0800], sp
    ld bc, $0208
    rst $38
    db $fc
    db $fc
    ld l, [hl]
    nop
    db $f4
    db $fc
    ld l, l
    nop
    add b
    nop
    nop
    ld b, c
    nop
    nop
    ld hl, sp+$40
    nop
    ld hl, sp+$00
    ld sp, $f800
    ld hl, sp+$30
    nop
    add b
    nop
    nop
    and l
    nop
    nop
    ld hl, sp-$5c
    nop
    ld hl, sp+$00
    sub l
    nop
    ld hl, sp-$08
    sub h
    nop
    add b
    nop
    nop
    ld b, a
    ld d, a
    nop
    nop
    ld c, c
    ld d, a
    nop
    nop
    ld c, e
    ld d, a
    nop
    nop
    ld c, l
    ld d, a
    nop
    nop
    ld c, a
    ld d, a
    nop
    nop
    ld d, c
    ld d, a
    nop
    nop
    ld d, e
    ld d, a
    nop
    nop
    ld d, l
    ld d, a
    nop
    nop
    ld d, a
    ld d, a
    nop
    nop
    ld e, c
    ld d, a
    nop
    nop
    ld e, e
    ld d, a
    nop
    nop
    ld e, l
    ld d, a
    nop
    nop
    ld e, a
    ld d, a
    nop
    nop
    ld h, e
    ld d, a
    nop
    nop
    ld h, a
    ld d, a
    nop
    nop
    ld l, e
    ld d, a
    nop
    nop
    ld l, a
    ld d, a
    nop
    nop
    ld [hl], e
    ld d, a
    nop
    nop
    ld [hl], a
    ld d, a
    nop
    nop
    ld a, e
    ld d, a
    nop
    nop
    ld a, a
    ld d, a
    nop
    nop
    add e
    ld d, a
    nop
    nop
    add a
    ld d, a
    nop
    nop
    adc e
    ld d, a
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], b
    ld e, c
    nop
    nop
    ld [hl], d
    ld e, c
    nop
    nop
    ld [hl], h
    ld e, c
    nop
    nop
    halt
    ld e, c
    nop
    nop
    ld a, b
    ld e, c
    nop
    nop
    ld a, d
    ld e, c
    nop
    nop
    ld a, h
    ld e, c
    nop
    nop
    ld a, [hl]
    ld e, c
    nop
    nop
    add b
    ld e, c
    nop
    nop
    add d
    ld e, c
    nop
    nop
    add h
    ld e, c
    nop
    nop
    add [hl]
    ld e, c
    nop
    nop
    adc b
    ld e, c
    nop
    nop
    adc h
    ld e, c
    nop
    nop
    sub b
    ld e, c
    nop
    nop
    sub h
    ld e, c
    nop
    nop
    sbc b
    ld e, c
    nop
    nop
    sbc h
    ld e, c
    nop
    nop
    and b
    ld e, c
    nop
    nop
    and h
    ld e, c
    nop
    nop
    xor b
    ld e, c
    nop
    nop
    xor h
    ld e, c
    nop
    nop
    or b
    ld e, c
    nop
    nop
    or h
    ld e, c
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    dec e
    ld e, h
    nop
    nop
    rra
    ld e, h
    nop
    nop
    ld hl, $005c
    nop
    inc hl
    ld e, h
    nop
    nop
    dec h
    ld e, h
    nop
    nop
    daa
    ld e, h
    nop
    nop
    add hl, hl
    ld e, h
    nop
    nop
    dec hl
    ld e, h
    nop
    nop
    dec l
    ld e, h
    nop
    nop
    cpl
    ld e, h
    nop
    nop
    ld sp, $005c
    nop
    inc sp
    ld e, h
    nop
    nop
    dec [hl]
    ld e, h
    nop
    nop
    add hl, sp
    ld e, h
    nop
    nop
    dec a
    ld e, h
    nop
    nop
    ld b, c
    ld e, h
    nop
    nop
    ld b, l
    ld e, h
    nop
    nop
    ld c, c
    ld e, h
    nop
    nop
    ld c, l
    ld e, h
    nop
    nop
    ld d, c
    ld e, h
    nop
    nop
    ld d, l
    ld e, h
    nop
    nop
    ld e, c
    ld e, h
    nop
    nop
    ld e, l
    ld e, h
    nop
    nop
    ld h, c
    ld e, h
    nop
    nop
    ld h, l
    ld e, h
    nop
    nop
    ld l, c
    ld e, h
    nop
    nop
    ld l, l
    ld e, h
    nop
    nop
    ld [hl], c
    ld e, h
    nop
    nop
    ld [hl], l
    ld e, h
    nop
    nop
    ld [hl], a
    ld e, h
    nop
    nop
    ld a, c
    ld e, h
    nop
    nop
    ld a, e
    ld e, h
    nop
    nop
    sub e
    ld h, d
    nop
    nop
    sub a
    ld h, d
    nop
    nop
    sbc e
    ld h, d
    nop
    nop
    sbc a
    ld h, d
    nop
    nop
    and e
    ld h, d
    nop
    nop
    and l
    ld h, d
    nop
    nop
    and a
    ld h, d
    nop
    nop
    xor c
    ld h, d
    nop
    nop
    xor e
    ld h, d
    nop
    nop
    xor l
    ld h, d
    nop
    nop
    xor a
    ld h, d
    nop
    nop
    or c
    ld h, d
    nop
    nop
    ld a, l
    ld e, h
    nop
    nop
    ld a, a
    ld e, h
    nop
    nop
    add c
    ld e, h
    nop
    nop
    add e
    ld e, h
    or l
    ld e, b
    adc a
    ld d, a
    ld [hl+], a
    ld e, b
    inc l
    ld e, c
    add sp, $58
    adc $57
    ld h, c
    ld e, b
    add sp, $58
    ld sp, hl
    ld e, b
    db $e3
    ld d, a
    halt
    ld e, b
    ld sp, hl
    ld e, b
    add $58
    rst $10
    ld e, b
    and h
    ld d, a
    cp c
    ld d, a
    scf
    ld e, b
    ld c, h
    ld e, b
    dec a
    ld e, c
    ld c, [hl]
    ld e, c
    ld a, [bc]
    ld e, c
    dec de
    ld e, c
    ld hl, sp+$57
    dec c
    ld e, b
    adc e
    ld e, b
    and b
    ld e, b
    ld a, [bc]
    ld e, c
    dec de
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld e, a
    ld e, c
    inc l
    ld e, c
    ld hl, sp+$08
    cp d
    nop
    ld [bc], a
    nop
    pop af
    nop
    ld [bc], a
    ld hl, sp-$10
    nop
    ld a, [$e100]
    nop
    ld a, [$e0f8]
    nop
    add b
    ld hl, sp+$08
    cp d
    nop
    ld [bc], a
    nop
    db $e3
    nop
    ld [bc], a
    ld hl, sp-$1e
    nop
    ld a, [$e100]
    nop
    ld a, [$e0f8]
    nop
    add b
    ld hl, sp+$08
    cp d
    nop
    ld [bc], a
    nop
    di
    nop
    ld [bc], a
    ld hl, sp-$0e
    nop
    ld a, [$e100]
    nop
    ld a, [$e0f8]
    nop
    add b
    ld a, [$e4f8]
    nop
    ld hl, sp+$08
    cp d
    nop
    ld [bc], a
    nop
    pop af
    nop
    ld [bc], a
    ld hl, sp-$10
    nop
    ld a, [$e100]
    nop
    add b
    ld a, [$f4f8]
    nop
    ld hl, sp+$08
    cp d
    nop
    ld [bc], a
    nop
    pop af
    nop
    ld [bc], a
    ld hl, sp-$10
    nop
    ld a, [$e100]

jr_014_57f6:
    nop
    add b
    ld sp, hl
    ld [$00ba], sp
    inc bc
    nop
    or $00
    inc bc
    ld hl, sp-$0b
    nop
    ei
    nop
    and $00
    ei
    ld hl, sp-$1b

jr_014_580b:
    nop
    add b
    ld sp, hl
    ld [$00ba], sp
    inc bc
    nop
    ld hl, sp+$00
    inc bc
    ld hl, sp-$09
    nop
    ei
    nop
    add sp, $00
    ei
    ld hl, sp-$19

jr_014_5820:
    nop
    add b
    ld hl, sp-$10
    cp d
    jr nz, jr_014_5829

    ld hl, sp-$0f

jr_014_5829:
    jr nz, @+$04

    nop
    ldh a, [rNR41]
    ld a, [$e1f8]
    jr nz, @-$04

    nop
    ldh [rNR41], a
    add b
    ld hl, sp-$10
    cp d
    jr nz, jr_014_583e

    ld hl, sp-$1d

jr_014_583e:
    jr nz, jr_014_5842

    nop
    ldh [c], a

jr_014_5842:
    jr nz, jr_014_583e

    ld hl, sp-$1f
    jr nz, jr_014_5842

    nop
    ldh [rNR41], a
    add b
    ld hl, sp-$10
    cp d
    jr nz, jr_014_5853

    ld hl, sp-$0d

jr_014_5853:
    jr nz, jr_014_5857

    nop
    ldh a, [c]

jr_014_5857:
    jr nz, jr_014_5853

    ld hl, sp-$1f
    jr nz, jr_014_5857

    nop

jr_014_585e:
    ldh [rNR41], a
    add b
    ld a, [$e400]
    jr nz, jr_014_585e

    ldh a, [$ffba]
    jr nz, jr_014_586c

    ld hl, sp-$0f

jr_014_586c:
    jr nz, @+$04

    nop
    ldh a, [rNR41]
    ld a, [$e1f8]
    jr nz, jr_014_57f6

    ld a, [$f400]
    jr nz, @-$06

    ldh a, [$ffba]
    jr nz, jr_014_5881

    ld hl, sp-$0f

jr_014_5881:
    jr nz, @+$04

    nop
    ldh a, [rNR41]
    ld a, [$e1f8]
    jr nz, jr_014_580b

    ld sp, hl
    ldh a, [$ffba]
    jr nz, @+$05

    ld hl, sp-$0a
    jr nz, @+$05

    nop
    push af
    jr nz, @-$03

    ld hl, sp-$1a
    jr nz, @-$03

    nop
    push hl
    jr nz, jr_014_5820

    ld sp, hl
    ldh a, [$ffba]
    jr nz, @+$05

    ld hl, sp-$08
    jr nz, @+$05

    nop
    rst $30
    jr nz, @-$03

    ld hl, sp-$18
    jr nz, @-$03

    nop
    rst $20
    jr nz, @-$7e

    nop
    nop
    pop de
    nop
    nop
    ld hl, sp-$30
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    nop
    ld hl, sp-$50
    nop
    nop
    nop
    pop de
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    nop
    nop
    or c
    nop
    nop
    ld hl, sp-$30
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    nop
    nop
    db $d3
    nop
    nop
    ld hl, sp-$2e
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    nop
    nop
    jp RST_00


    ld hl, sp-$3e
    nop
    ld hl, sp+$00
    pop bc
    nop
    ld hl, sp-$08
    ret nz

    nop
    add b
    ld sp, hl
    nop
    or l
    nop
    ld sp, hl
    ld hl, sp-$4c
    nop
    ld bc, $b300
    nop
    ld bc, $b2f8
    nop
    add b
    ld bc, $d500
    nop
    ld bc, $d4f8
    nop
    ld sp, hl
    nop
    push bc
    nop
    ld sp, hl
    ld hl, sp-$3c
    nop
    add b
    nop
    nop
    rst $10
    nop
    nop
    ld hl, sp-$2a
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    nop
    ld hl, sp-$4a
    nop
    nop
    nop
    rst $10
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    nop
    ld hl, sp-$17
    nop
    nop
    nop
    or a
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    nop
    nop
    ld sp, hl
    nop
    nop
    ld hl, sp-$17
    nop
    ld hl, sp+$00
    rst $00
    nop
    ld hl, sp-$08
    add $00
    add b
    ld d, $5b
    cp b
    ld e, c
    ld h, a
    ld e, d
    cp c
    ld e, e
    ld h, c
    ld e, e
    inc bc
    ld e, d
    or d
    ld e, d
    ld h, c
    ld e, e
    ld a, d
    ld e, e
    inc e
    ld e, d
    bit 3, d
    ld a, d
    ld e, e
    cpl
    ld e, e
    ld c, b
    ld e, e
    pop de
    ld e, c
    ld [$8059], a
    ld e, d
    sbc c
    ld e, d
    db $eb
    ld e, e
    jp nc, $935b

    ld e, e
    and h
    ld e, e
    dec [hl]
    ld e, d
    ld c, [hl]
    ld e, d
    db $e4
    ld e, d
    db $fd
    ld e, d
    sub e
    ld e, e
    and h
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    inc b
    ld e, h
    cp c
    ld e, e
    nop
    ld [bc], a
    ld e, b
    nop
    nop
    ld a, [$0057]
    nop
    ldh a, [c]
    ld d, [hl]
    nop
    ld hl, sp+$02
    ld d, l
    nop
    ld hl, sp-$06
    ld d, h
    nop
    ld hl, sp-$0e
    ld d, e
    nop
    add b
    nop
    ld [bc], a
    ld e, d
    nop
    nop
    ld a, [$0059]
    nop
    ldh a, [c]
    ld d, [hl]
    nop
    ld hl, sp+$02
    ld d, l
    nop
    ld hl, sp-$06
    ld d, h
    nop
    ld hl, sp-$0e
    ld d, e
    nop
    add b
    nop
    ld [bc], a
    ld e, h
    nop
    nop
    ld a, [$005b]
    nop
    ldh a, [c]
    ld d, [hl]
    nop
    ld hl, sp+$02
    ld d, l
    nop
    ld hl, sp-$06
    ld d, h
    nop
    ld hl, sp-$0e

jr_014_5a00:
    ld d, e
    nop
    add b
    ld hl, sp-$06
    ld e, [hl]
    nop
    ld hl, sp-$0e
    ld e, l
    nop
    nop
    ld [bc], a
    ld e, b
    nop
    nop
    ld a, [$0057]
    nop
    ldh a, [c]
    ld d, [hl]
    nop
    ld hl, sp+$02

jr_014_5a19:
    ld d, l
    nop
    add b
    ld hl, sp-$06
    ld h, b
    nop
    ld hl, sp-$0e
    ld e, a
    nop
    nop
    ld [bc], a
    ld e, b
    nop
    nop
    ld a, [$0057]
    nop
    ldh a, [c]
    ld d, [hl]
    nop
    ld hl, sp+$02

jr_014_5a32:
    ld d, l
    nop
    add b
    nop
    ld [bc], a
    ld h, [hl]
    nop
    nop
    ld a, [$0065]
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld h, d
    nop
    ld hl, sp-$0e

jr_014_5a4b:
    ld h, c
    nop
    add b
    nop
    ld a, [$006a]
    nop
    ldh a, [c]
    ld l, c
    nop
    ld hl, sp-$06
    ld l, b
    nop
    ld hl, sp-$0e
    ld h, a
    nop
    nop
    ld [bc], a
    ld h, [hl]
    nop
    ld hl, sp+$02

jr_014_5a64:
    ld h, e
    nop
    add b
    nop
    or $58
    jr nz, jr_014_5a6c

jr_014_5a6c:
    cp $57
    jr nz, jr_014_5a70

jr_014_5a70:
    ld b, $56
    jr nz, jr_014_5a6c

jr_014_5a74:
    or $55
    jr nz, jr_014_5a70

    cp $54
    jr nz, jr_014_5a74

    ld b, $53
    jr nz, jr_014_5a00

    nop
    or $5a
    jr nz, jr_014_5a85

jr_014_5a85:
    cp $59
    jr nz, jr_014_5a89

jr_014_5a89:
    ld b, $56
    jr nz, jr_014_5a85

jr_014_5a8d:
    or $55
    jr nz, jr_014_5a89

    cp $54
    jr nz, jr_014_5a8d

    ld b, $53
    jr nz, jr_014_5a19

    nop
    or $5c
    jr nz, jr_014_5a9e

jr_014_5a9e:
    cp $5b
    jr nz, jr_014_5aa2

jr_014_5aa2:
    ld b, $56
    jr nz, jr_014_5a9e

jr_014_5aa6:
    or $55
    jr nz, jr_014_5aa2

    cp $54
    jr nz, jr_014_5aa6

    ld b, $53
    jr nz, jr_014_5a32

    ld hl, sp-$02
    ld e, [hl]
    jr nz, @-$06

    ld b, $5d
    jr nz, jr_014_5abb

jr_014_5abb:
    or $58
    jr nz, jr_014_5abf

jr_014_5abf:
    cp $57
    jr nz, jr_014_5ac3

jr_014_5ac3:
    ld b, $56
    jr nz, jr_014_5abf

    or $55
    jr nz, jr_014_5a4b

    ld hl, sp-$02
    ld h, b
    jr nz, @-$06

    ld b, $5f
    jr nz, jr_014_5ad4

jr_014_5ad4:
    or $58
    jr nz, jr_014_5ad8

jr_014_5ad8:
    cp $57
    jr nz, jr_014_5adc

jr_014_5adc:
    ld b, $56
    jr nz, jr_014_5ad8

    or $55
    jr nz, jr_014_5a64

    nop
    or $66
    jr nz, jr_014_5ae9

jr_014_5ae9:
    cp $65
    jr nz, jr_014_5aed

jr_014_5aed:
    ld b, $64
    jr nz, jr_014_5ae9

jr_014_5af1:
    or $63
    jr nz, jr_014_5aed

    cp $62
    jr nz, jr_014_5af1

    ld b, $61
    jr nz, @-$7e

    nop

jr_014_5afe:
    cp $6a
    jr nz, jr_014_5b02

jr_014_5b02:
    ld b, $69
    jr nz, jr_014_5afe

    cp $68
    jr nz, jr_014_5b02

jr_014_5b0a:
    ld b, $67
    jr nz, jr_014_5b0e

jr_014_5b0e:
    or $66
    jr nz, jr_014_5b0a

    or $63
    jr nz, @-$7e

    inc bc
    nop
    ld [hl], b
    nop
    inc bc
    ld hl, sp+$6f
    nop
    ei
    nop
    ld l, [hl]
    nop
    ei
    ld hl, sp+$6d
    nop
    di
    nop
    ld l, h
    nop
    di
    ld hl, sp+$6b
    nop
    add b
    inc bc
    ld hl, sp+$71
    nop
    inc bc
    nop
    ld [hl], b
    nop
    ei
    nop
    ld l, [hl]
    nop
    ei
    ld hl, sp+$6d
    nop
    di
    nop
    ld l, h
    nop
    di
    ld hl, sp+$6b
    nop
    add b
    inc bc
    nop
    ld [hl], d
    nop
    inc bc
    ld hl, sp+$6f
    nop
    ei
    nop
    ld l, [hl]
    nop
    ei
    ld hl, sp+$6d
    nop
    di
    nop
    ld l, h
    nop
    di
    ld hl, sp+$6b
    nop
    add b
    ei
    nop
    ld [hl], h
    nop
    ei
    ld hl, sp+$73
    nop
    inc bc
    nop
    ld [hl], b
    nop
    inc bc
    ld hl, sp+$6f
    nop
    di
    nop
    ld l, h
    nop
    di
    ld hl, sp+$6b
    nop
    add b
    ei
    nop
    halt
    nop
    ei
    ld hl, sp+$75
    nop
    inc bc
    nop
    ld [hl], b
    nop
    inc bc
    ld hl, sp+$6f
    nop
    di
    nop
    ld l, h
    nop
    di
    ld hl, sp+$6b
    nop
    add b
    ld bc, $7f00
    nop
    ld bc, $7ef8
    nop
    ld sp, hl
    nop
    ld a, l
    nop
    ld sp, hl
    ld hl, sp+$7c
    nop
    add b
    add hl, bc
    ld hl, sp+$7b
    nop
    ld bc, $7a00
    nop
    ld bc, $79f8
    nop
    ld sp, hl
    nop
    ld a, b
    nop
    ld sp, hl
    ld hl, sp+$77
    nop
    add b
    ldh a, [rP1]
    rst $28
    nop
    ldh a, [$fff8]
    xor $00
    nop
    nop
    db $fd
    nop
    nop
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    db $ed
    nop
    ld hl, sp-$08
    db $ec
    nop
    add b
    nop
    nop
    db $eb
    nop
    ldh a, [rP1]
    rst $28
    nop
    ldh a, [$fff8]
    xor $00
    nop
    ld hl, sp-$04
    nop
    ld hl, sp+$00
    db $ed
    nop
    ld hl, sp-$08
    db $ec
    nop
    add b
    nop
    nop
    ei
    nop
    nop
    ld hl, sp-$16
    nop
    ldh a, [rP1]
    rst $28
    nop
    ldh a, [$fff8]
    xor $00
    ld hl, sp+$00
    db $ed
    nop
    ld hl, sp-$08
    db $ec
    nop
    add b
    nop
    nop
    ei
    nop
    nop
    ld hl, sp-$06
    nop
    ldh a, [rP1]
    rst $28
    nop
    ldh a, [$fff8]
    xor $00
    ld hl, sp+$00
    db $ed
    nop
    ld hl, sp-$08
    db $ec
    nop
    add b
    ld b, a
    ld e, [hl]
    add l
    ld e, h
    ld h, [hl]
    ld e, l
    jr z, jr_014_5c84

    sub d
    ld e, [hl]
    ret nc

    ld e, h
    or c
    ld e, l
    sub d
    ld e, [hl]
    call nz, $025e
    ld e, l
    db $e3
    ld e, l
    call nz, Call_014_605e
    ld e, [hl]
    ld a, c
    ld e, [hl]
    sbc [hl]
    ld e, h
    or a
    ld e, h
    ld a, a
    ld e, l
    sbc b
    ld e, l
    ld b, c
    ld e, a
    ld e, d
    ld e, a
    or $5e
    rrca
    ld e, a
    inc [hl]
    ld e, l
    ld c, l
    ld e, l
    dec d
    ld e, [hl]
    ld l, $5e
    or $5e
    rrca
    ld e, a
    ld [hl], e
    ld e, a
    jr z, jr_014_5cb8

    ld [hl], e
    ld e, a
    jr z, @+$61

    ld [hl], e
    ld e, a
    jr z, @+$61

    ld [hl], e
    ld e, a
    jr z, @+$61

    bit 4, c
    db $e4
    ld h, c
    add hl, bc
    ld h, b
    ld [hl+], a
    ld h, b
    ld [$0360], a
    ld h, c
    bit 4, c
    db $e4
    ld h, c
    or d
    ld h, c
    ldh a, [$ff5f]
    pop de
    ld h, b
    or d
    ld h, c
    db $dd
    ld e, [hl]
    dec de
    ld e, l
    db $fc
    ld e, l
    db $dd

jr_014_5c84:
    ld e, [hl]
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    add b
    nop

jr_014_5cb8:
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    ld hl, sp-$06
    rra
    nop
    ld hl, sp-$0e
    ld e, $00
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_5cf9

jr_014_5cf9:
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    inc hl
    nop
    ld hl, sp-$0e
    ld [hl+], a
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    dec h
    nop
    ld hl, sp-$0e
    inc h
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ld [bc], a
    dec hl
    nop
    nop
    ld a, [$002a]
    nop
    ldh a, [c]
    add hl, hl
    nop
    ld hl, sp+$02
    jr z, jr_014_5d44

jr_014_5d44:
    ld hl, sp-$06
    daa
    nop
    ld hl, sp-$0e

jr_014_5d4a:
    ld h, $00
    add b
    nop
    ld a, [$002f]
    nop
    ldh a, [c]
    ld l, $00
    ld hl, sp-$06
    dec l
    nop
    ld hl, sp-$0e
    inc l
    nop
    nop
    ld [bc], a
    dec hl
    nop
    ld hl, sp+$02

jr_014_5d63:
    jr z, jr_014_5d65

jr_014_5d65:
    add b
    nop

jr_014_5d67:
    ld b, $df
    jr nz, jr_014_5d63

jr_014_5d6b:
    or $cf
    jr nz, jr_014_5d67

    cp $bf
    jr nz, jr_014_5d6b

    ld b, $af
    jr nz, jr_014_5d77

jr_014_5d77:
    or $19
    jr nz, jr_014_5d7b

jr_014_5d7b:
    cp $18
    jr nz, @-$7e

    nop

jr_014_5d80:
    ld b, $df
    jr nz, @-$06

jr_014_5d84:
    or $cf
    jr nz, jr_014_5d80

    cp $bf
    jr nz, jr_014_5d84

    ld b, $af
    jr nz, jr_014_5d90

jr_014_5d90:
    or $1b
    jr nz, jr_014_5d94

jr_014_5d94:
    cp $1a
    jr nz, @-$7e

    nop

jr_014_5d99:
    ld b, $df
    jr nz, @-$06

jr_014_5d9d:
    or $cf
    jr nz, jr_014_5d99

    cp $bf
    jr nz, jr_014_5d9d

    ld b, $af
    jr nz, jr_014_5da9

jr_014_5da9:
    or $1d
    jr nz, jr_014_5dad

jr_014_5dad:
    cp $1c
    jr nz, @-$7e

    nop
    ld b, $df
    jr nz, @-$06

    or $cf
    jr nz, jr_014_5dba

jr_014_5dba:
    or $19
    jr nz, jr_014_5dbe

jr_014_5dbe:
    cp $18
    jr nz, jr_014_5dba

    cp $1f
    jr nz, jr_014_5dbe

    ld b, $1e
    jr nz, jr_014_5d4a

    nop

jr_014_5dcb:
    ld b, $df
    jr nz, @-$06

jr_014_5dcf:
    or $cf
    jr nz, jr_014_5dcb

    cp $21
    jr nz, jr_014_5dcf

    ld b, $20
    jr nz, jr_014_5ddb

jr_014_5ddb:
    or $19
    jr nz, jr_014_5ddf

jr_014_5ddf:
    cp $18
    jr nz, jr_014_5d63

    nop

jr_014_5de4:
    ld b, $df
    jr nz, @-$06

jr_014_5de8:
    or $cf
    jr nz, jr_014_5de4

    cp $23
    jr nz, jr_014_5de8

    ld b, $22
    jr nz, jr_014_5df4

jr_014_5df4:
    or $19
    jr nz, jr_014_5df8

jr_014_5df8:
    cp $18
    jr nz, @-$7e

    nop

jr_014_5dfd:
    ld b, $df
    jr nz, @-$06

jr_014_5e01:
    or $cf
    jr nz, jr_014_5dfd

    cp $25
    jr nz, jr_014_5e01

    ld b, $24
    jr nz, jr_014_5e0d

jr_014_5e0d:
    or $19
    jr nz, jr_014_5e11

jr_014_5e11:
    cp $18
    jr nz, @-$7e

    nop
    or $2b
    jr nz, jr_014_5e1a

jr_014_5e1a:
    cp $2a
    jr nz, jr_014_5e1e

jr_014_5e1e:
    ld b, $29
    jr nz, jr_014_5e1a

jr_014_5e22:
    or $28
    jr nz, jr_014_5e1e

    cp $27
    jr nz, jr_014_5e22

    ld b, $26
    jr nz, @-$7e

    nop

jr_014_5e2f:
    cp $2f
    jr nz, jr_014_5e33

jr_014_5e33:
    ld b, $2e
    jr nz, jr_014_5e2f

    cp $2d
    jr nz, jr_014_5e33

jr_014_5e3b:
    ld b, $2c
    jr nz, jr_014_5e3f

jr_014_5e3f:
    or $2b
    jr nz, jr_014_5e3b

    or $28
    jr nz, @-$7e

    ld bc, $3500
    nop
    ld bc, $34f8
    nop
    ld sp, hl
    nop
    inc sp
    nop
    ld sp, hl
    ld hl, sp+$32
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld bc, $36f8
    nop
    ld bc, $3500
    nop
    ld sp, hl
    nop
    inc sp
    nop
    ld sp, hl
    ld hl, sp+$32
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld bc, $3700
    nop
    ld bc, $34f8
    nop
    ld sp, hl
    nop
    inc sp
    nop
    ld sp, hl
    ld hl, sp+$32
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld sp, hl
    nop
    add hl, sp
    nop
    ld sp, hl
    ld hl, sp+$38
    nop
    ld bc, $3500
    nop
    ld bc, $34f8
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld sp, hl
    nop
    dec sp
    nop
    ld sp, hl
    ld hl, sp+$3a
    nop
    ld bc, $3500
    nop
    ld bc, $34f8
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld sp, hl
    nop
    dec a
    nop
    ld sp, hl
    ld hl, sp+$3c
    nop
    ld bc, $3500
    nop
    ld bc, $34f8
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ld sp, hl
    nop
    ccf
    nop
    ld sp, hl
    ld hl, sp+$3e
    nop
    ld bc, $3500
    nop
    ld bc, $34f8
    nop
    pop af
    nop
    ld sp, $f100
    ld hl, sp+$30
    nop
    add b
    ei
    nop
    ld b, [hl]
    nop
    ei
    ld hl, sp+$45
    nop
    inc bc
    nop
    ld b, d
    nop
    inc bc
    ld hl, sp+$41
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$40
    nop
    add b
    inc bc
    nop
    ld c, b
    nop
    inc bc
    ld hl, sp+$47
    nop
    ei
    nop
    ld b, [hl]
    nop
    ei
    ld hl, sp+$45
    nop
    di
    nop
    ld b, h
    nop
    di
    ld hl, sp+$43
    nop
    add b
    ld bc, $4e00
    nop
    ld bc, $4df8
    nop
    ld sp, hl
    nop
    ld c, h
    nop
    ld sp, hl
    ld hl, sp+$4b
    nop
    pop af
    nop
    ld c, d
    nop
    pop af
    ld hl, sp+$49
    nop
    add b
    ld bc, $5200
    nop
    ld bc, $4ff8
    nop
    ld sp, hl
    nop
    ld c, h
    nop
    ld sp, hl
    ld hl, sp+$4b
    nop
    pop af
    nop
    ld c, d
    nop
    pop af
    ld hl, sp+$49
    nop
    add b
    ld bc, $4df8
    nop
    ld bc, $5000
    nop
    ld sp, hl
    nop
    ld c, h
    nop
    ld sp, hl
    ld hl, sp+$4b
    nop
    pop af
    nop
    ld c, d
    nop
    pop af
    ld hl, sp+$49
    nop
    add b
    ld bc, $5200
    nop
    ld bc, $51f8
    nop
    ld sp, hl
    nop
    ld c, h
    nop
    ld sp, hl
    ld hl, sp+$4b
    nop
    pop af
    nop
    ld c, d
    nop
    pop af
    ld hl, sp+$49
    nop
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    cp a
    nop
    ld hl, sp-$0e
    xor a
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    ld hl, sp-$06
    rra
    nop
    ld hl, sp-$0e
    ld e, $00
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_6000

jr_014_6000:
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]

jr_014_601f:
    jr nz, jr_014_6021

jr_014_6021:
    add b
    nop
    ldh a, [c]
    rst $18
    nop
    ld hl, sp+$02
    rst $08
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]

jr_014_6038:
    jr nz, jr_014_603a

jr_014_603a:
    add b
    nop
    ld [bc], a
    dec hl
    nop
    nop
    ld a, [$002a]
    nop
    ldh a, [c]
    add hl, hl
    nop
    ld hl, sp+$02
    jr z, jr_014_604b

jr_014_604b:
    ld hl, sp-$06
    daa
    nop
    ld hl, sp-$0e

jr_014_6051:
    ld h, $00
    add b
    nop
    ld a, [$002f]
    nop
    ldh a, [c]
    ld l, $00
    ld hl, sp-$06

Call_014_605e:
    dec l
    nop
    ld hl, sp-$0e
    inc l
    nop
    nop
    ld [bc], a
    dec hl
    nop
    ld hl, sp+$02

jr_014_606a:
    jr z, jr_014_606c

jr_014_606c:
    add b
    nop

jr_014_606e:
    ld b, $df
    jr nz, jr_014_606a

jr_014_6072:
    or $cf
    jr nz, jr_014_606e

    cp $bf
    jr nz, jr_014_6072

    ld b, $af
    jr nz, jr_014_607e

jr_014_607e:
    or $19
    jr nz, jr_014_6082

jr_014_6082:
    cp $18
    jr nz, @-$7e

    nop

jr_014_6087:
    ld b, $df
    jr nz, @-$06

jr_014_608b:
    or $cf
    jr nz, jr_014_6087

    cp $bf
    jr nz, jr_014_608b

    ld b, $af
    jr nz, jr_014_6097

jr_014_6097:
    or $1b
    jr nz, jr_014_609b

jr_014_609b:
    cp $1a
    jr nz, jr_014_601f

    nop

jr_014_60a0:
    ld b, $df
    jr nz, @-$06

jr_014_60a4:
    or $cf
    jr nz, jr_014_60a0

    cp $bf
    jr nz, jr_014_60a4

    ld b, $af
    jr nz, jr_014_60b0

jr_014_60b0:
    or $1d
    jr nz, jr_014_60b4

jr_014_60b4:
    cp $1c
    jr nz, jr_014_6038

    nop
    ld b, $df
    jr nz, @-$06

    or $cf
    jr nz, jr_014_60c1

jr_014_60c1:
    or $19
    jr nz, jr_014_60c5

jr_014_60c5:
    cp $18
    jr nz, jr_014_60c1

    cp $1f
    jr nz, jr_014_60c5

    ld b, $1e
    jr nz, jr_014_6051

    nop

jr_014_60d2:
    ld b, $df
    jr nz, @-$06

jr_014_60d6:
    or $cf
    jr nz, jr_014_60d2

    cp $21
    jr nz, jr_014_60d6

    ld b, $20
    jr nz, jr_014_60e2

jr_014_60e2:
    or $19
    jr nz, jr_014_60e6

jr_014_60e6:
    cp $18
    jr nz, jr_014_606a

    nop
    ld b, $df
    jr nz, @-$06

    or $cf
    jr nz, jr_014_60f3

jr_014_60f3:
    or $1b
    jr nz, jr_014_60f7

jr_014_60f7:
    cp $1a
    jr nz, jr_014_60f3

    cp $21
    jr nz, jr_014_60f7

    ld b, $20
    jr nz, @-$7e

    nop
    ld b, $df
    jr nz, @-$06

    or $cf
    jr nz, jr_014_610c

jr_014_610c:
    or $1d
    jr nz, jr_014_6110

jr_014_6110:
    cp $1c
    jr nz, jr_014_610c

    cp $21
    jr nz, jr_014_6110

    ld b, $20
    jr nz, @-$7e

    nop
    or $2b
    jr nz, jr_014_6121

jr_014_6121:
    cp $2a
    jr nz, jr_014_6125

jr_014_6125:
    ld b, $29
    jr nz, jr_014_6121

jr_014_6129:
    or $28
    jr nz, jr_014_6125

    cp $27
    jr nz, jr_014_6129

    ld b, $26
    jr nz, @-$7e

    nop

jr_014_6136:
    cp $2f
    jr nz, jr_014_613a

jr_014_613a:
    ld b, $2e
    jr nz, jr_014_6136

    cp $2d
    jr nz, jr_014_613a

jr_014_6142:
    ld b, $2c
    jr nz, jr_014_6146

jr_014_6146:
    or $2b
    jr nz, jr_014_6142

    or $28
    jr nz, @-$7e

    inc bc
    nop
    dec [hl]
    nop
    inc bc
    ld hl, sp+$34
    nop
    ei
    nop
    inc sp
    nop
    ei
    ld hl, sp+$32
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    inc bc
    ld hl, sp+$36
    nop
    inc bc
    nop
    dec [hl]
    nop
    ei
    nop
    inc sp
    nop
    ei
    ld hl, sp+$32
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    inc bc
    nop
    scf
    nop
    inc bc
    ld hl, sp+$34
    nop
    ei
    nop
    inc sp
    nop
    ei
    ld hl, sp+$32
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    ei
    nop
    add hl, sp
    nop
    ei
    ld hl, sp+$38
    nop
    inc bc
    nop
    dec [hl]
    nop
    inc bc
    ld hl, sp+$34
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    ei
    nop
    dec sp
    nop
    ei
    ld hl, sp+$3a
    nop
    inc bc
    nop
    dec [hl]
    nop
    inc bc
    ld hl, sp+$34
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    inc bc
    ld hl, sp+$36
    nop
    inc bc
    nop
    dec [hl]
    nop
    ei
    nop
    dec sp
    nop
    ei
    ld hl, sp+$3a
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    ei
    nop
    dec sp
    nop
    ei
    ld hl, sp+$3a
    nop
    inc bc
    nop
    scf
    nop
    inc bc
    ld hl, sp+$34
    nop
    di
    nop
    ld sp, $f300
    ld hl, sp+$30
    nop
    add b
    db $fd
    nop
    ld b, [hl]
    nop
    db $fd
    ld hl, sp+$45
    nop
    dec b
    nop
    ld b, d
    nop
    dec b
    ld hl, sp+$41
    nop
    push af
    nop
    ld sp, $f500
    ld hl, sp+$40
    nop
    add b
    dec b
    nop
    ld c, b
    nop
    dec b
    ld hl, sp+$47
    nop
    db $fd
    nop
    ld b, [hl]
    nop
    db $fd
    ld hl, sp+$45
    nop
    push af
    nop
    ld b, h
    nop
    push af
    ld hl, sp+$43
    nop
    add b
    inc bc
    nop
    ld c, [hl]
    nop
    inc bc
    ld hl, sp+$4d
    nop
    ei
    nop
    ld c, h
    nop
    ei
    ld hl, sp+$4b
    nop
    di
    nop
    ld c, d
    nop
    di
    ld hl, sp+$49
    nop
    add b
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld hl, sp+$4f
    nop
    ei
    nop
    ld c, h
    nop
    ei
    ld hl, sp+$4b
    nop
    di
    nop
    ld c, d
    nop
    di
    ld hl, sp+$49
    nop
    add b
    inc bc
    ld hl, sp+$4d
    nop
    inc bc
    nop
    ld d, b
    nop
    ei
    nop
    ld c, h
    nop
    ei
    ld hl, sp+$4b
    nop
    di
    nop
    ld c, d
    nop
    di
    ld hl, sp+$49
    nop
    add b
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld hl, sp+$51
    nop
    ei
    nop
    ld c, h
    nop
    ei
    ld hl, sp+$4b
    nop
    di
    nop
    ld c, d
    nop
    di
    ld hl, sp+$49
    nop
    add b
    call z, $b362
    ld h, d

jr_014_6297:
    call z, $b362
    ld h, d
    rla
    ld h, e
    cp $62
    rla
    ld h, e
    cp $62
    or e
    ld h, d
    or e
    ld h, d
    cp $62
    or e
    ld h, d
    push hl
    ld h, d
    push hl
    ld h, d
    jr nc, jr_014_6314

    jr nc, @+$65

    ld hl, sp-$0c
    ret z

    nop
    nop
    inc b
    cp e
    nop
    nop
    db $fc
    xor e
    nop
    nop
    db $f4
    xor d
    nop
    ld hl, sp+$04
    jp z, $f800

    db $fc
    ret


    nop
    add b
    nop
    inc b
    jp c, RST_00

    db $fc
    reti


    nop
    nop
    db $f4
    ret c

    nop
    ld hl, sp-$0c
    ret z

    nop
    ld hl, sp+$04
    jp z, $f800

    db $fc
    ret


    nop
    add b
    ld hl, sp-$04
    db $db
    nop
    ld hl, sp-$0c
    rlc b
    nop
    inc b
    cp e
    nop
    nop
    db $fc
    xor e
    nop
    nop
    db $f4
    xor d
    nop
    ld hl, sp+$04
    jp z, $8000

    ld hl, sp+$04
    ret z

    jr nz, jr_014_6303

jr_014_6303:
    db $f4
    cp e
    jr nz, jr_014_6307

jr_014_6307:
    db $fc
    xor e
    jr nz, jr_014_630b

jr_014_630b:
    inc b
    xor d
    jr nz, jr_014_6307

    db $f4
    jp z, $f820

    db $fc

jr_014_6314:
    ret


    jr nz, jr_014_6297

    nop
    db $f4
    jp c, RST_20

jr_014_631c:
    db $fc
    reti


    jr nz, jr_014_6320

jr_014_6320:
    inc b
    ret c

    jr nz, jr_014_631c

    inc b
    ret z

    jr nz, jr_014_6320

    db $f4
    jp z, $f820

    db $fc

jr_014_632d:
    ret


    jr nz, @-$7e

    ld hl, sp-$04
    db $db
    jr nz, jr_014_632d

    inc b
    sla b
    nop
    db $f4
    cp e
    jr nz, jr_014_633d

jr_014_633d:
    db $fc
    xor e
    jr nz, jr_014_6341

jr_014_6341:
    inc b
    xor d
    jr nz, jr_014_633d

    db $f4
    jp z, $8020

    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    add hl, hl
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    inc l
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    cpl
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    ld [hl-], a
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    scf
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    inc a
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, c
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, h
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld b, a
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, d
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld d, h
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, c
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld l, h
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    ld [hl], c
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    halt
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add c
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    add h
    ld h, h
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $1fff
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    rra
    nop
    rra
    ld bc, $f0ff
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    ld h, e
    ld h, a
    nop
    nop
    ld h, a
    ld h, a
    nop
    nop
    ld l, e
    ld h, a
    nop
    nop
    ld l, a
    ld h, a
    nop
    nop
    ld [hl], e
    ld h, a
    nop
    nop
    ld [hl], a
    ld h, a
    nop
    nop
    ld a, e
    ld h, a
    nop
    nop
    ld a, a
    ld h, a
    nop
    nop
    add e
    ld h, a
    nop
    nop
    add a
    ld h, a
    nop
    nop
    adc e
    ld h, a
    nop
    nop
    adc a
    ld h, a
    nop
    nop
    sub e
    ld h, a
    nop
    nop
    sub a
    ld h, a
    nop
    nop
    sbc e
    ld h, a

jr_014_64c3:
    nop
    nop
    sbc a
    ld h, a
    nop
    nop
    and e
    ld h, a
    nop
    nop
    and a
    ld h, a
    nop
    nop
    xor e
    ld h, a
    nop
    nop
    xor a
    ld h, a
    nop
    nop
    or e
    ld h, a
    nop
    nop
    or a
    ld h, a
    nop
    nop
    cp e
    ld h, a
    nop
    nop
    cp a
    ld h, a
    nop
    nop
    jp Jump_000_0067


    nop
    rst $00
    ld h, a
    nop
    nop
    bit 4, a
    nop
    nop
    rst $08
    ld h, a
    db $fc
    inc b
    jp hl


    nop
    db $f4
    db $fc
    ret c

    nop
    db $fc
    db $fc
    add sp, $00
    add b
    db $fc
    inc b
    jp c, $fc00

    db $fc
    reti


    nop
    add b
    db $f4
    db $fc
    db $db
    nop
    db $fc
    db $fc
    db $eb
    nop
    db $fc
    db $f4
    ld [$8000], a
    db $fc
    db $fc
    db $ec
    nop
    add b
    db $fc
    db $fc
    xor $00
    db $f4
    db $fc
    db $ed

jr_014_6526:
    nop
    add b
    db $fc
    db $fc
    rst $28
    nop
    add b
    db $fc
    db $f4
    jp hl


    jr nz, jr_014_6526

jr_014_6532:
    db $fc
    ret c

    jr nz, jr_014_6532

    db $fc
    add sp, $20
    add b

jr_014_653a:
    db $fc
    db $f4
    jp c, $fc20

    db $fc
    reti


    jr nz, jr_014_64c3

    nop
    nop
    pop bc
    nop
    nop
    ld hl, sp-$40
    nop

jr_014_654b:
    ld hl, sp+$00
    or c
    nop
    ld hl, sp-$08
    or b
    nop
    add b
    nop
    nop
    jp RST_00


    ld hl, sp-$3e
    nop
    ld hl, sp+$00
    or e
    nop
    ld hl, sp-$08
    or d
    nop
    add b
    nop
    nop
    push bc
    nop
    nop
    ld hl, sp-$3c
    nop
    ld hl, sp+$00
    or l
    nop
    ld hl, sp-$08
    or h
    nop
    add b
    nop
    nop
    rst $00
    nop
    nop
    ld hl, sp-$3a
    nop

jr_014_657e:
    ld hl, sp+$00
    or a
    nop
    ld hl, sp-$08
    or [hl]
    nop
    add b
    nop
    nop
    ret


    nop
    nop
    ld hl, sp-$38
    nop
    ld hl, sp+$00
    cp c
    nop
    ld hl, sp-$08
    cp b
    nop
    add b
    nop
    nop
    rlc b
    nop
    ld hl, sp-$36
    nop
    ld hl, sp+$00
    cp e
    nop
    ld hl, sp-$08
    cp d
    nop
    add b
    nop

jr_014_65aa:
    ld hl, sp-$37
    jr nz, jr_014_65ae

jr_014_65ae:
    nop
    ret z

    jr nz, jr_014_65aa

    ld hl, sp-$47
    jr nz, jr_014_65ae

    nop
    cp b
    jr nz, jr_014_653a

    nop
    ld hl, sp-$35
    jr nz, jr_014_65bf

jr_014_65bf:
    nop
    jp z, $f820

    ld hl, sp-$45
    jr nz, jr_014_65bf

    nop
    cp d
    jr nz, jr_014_654b

    nop
    nop
    pop hl
    nop
    nop
    ld hl, sp-$20
    nop
    ld hl, sp+$00
    pop de
    nop
    ld hl, sp-$08
    ret nc

    nop
    add b
    nop
    nop
    db $e3
    nop
    nop
    ld hl, sp-$1e
    nop
    ld hl, sp+$00
    db $d3
    nop
    ld hl, sp-$08
    jp nc, $8000

    nop
    ld hl, sp-$1f
    jr nz, jr_014_65f2

jr_014_65f2:
    nop
    ldh [rNR41], a
    ld hl, sp-$08
    pop de
    jr nz, jr_014_65f2

    nop
    ret nc

    jr nz, jr_014_657e

    nop

jr_014_65ff:
    ld hl, sp-$1d
    jr nz, jr_014_6603

jr_014_6603:
    nop
    ldh [c], a
    jr nz, jr_014_65ff

    ld hl, sp-$2d
    jr nz, jr_014_6603

    nop
    jp nc, $8020

    nop
    nop
    push hl
    nop
    nop
    ld hl, sp-$1c
    nop
    ld hl, sp+$00
    push de
    nop
    ld hl, sp-$08
    call nc, $8000
    nop
    nop
    rst $20
    nop
    nop
    ld hl, sp-$1a
    nop
    ld hl, sp+$00
    rst $10
    nop
    ld hl, sp-$08
    sub $00
    add b
    nop

jr_014_6632:
    ld hl, sp-$1b
    jr nz, jr_014_6636

jr_014_6636:
    nop
    db $e4
    jr nz, jr_014_6632

    ld hl, sp-$2b
    jr nz, jr_014_6636

    nop
    call nc, $8020
    nop
    ld hl, sp-$19
    jr nz, jr_014_6647

jr_014_6647:
    nop
    and $20

jr_014_664a:
    ld hl, sp-$08
    rst $10
    jr nz, jr_014_6647

    nop
    sub $20
    add b
    nop
    nop
    dec h
    nop
    nop
    ld hl, sp+$24
    nop
    ld hl, sp+$00
    dec d
    nop
    ld hl, sp-$08
    inc d
    nop
    add b
    nop
    nop
    daa
    nop
    nop
    ld hl, sp+$26
    nop
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    add b
    nop
    nop
    add hl, hl
    nop
    nop
    ld hl, sp+$28
    nop
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_014_6685

jr_014_6685:
    add b
    nop
    nop
    dec hl
    nop
    nop
    ld hl, sp+$2a
    nop
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    add b
    nop
    nop
    dec l
    nop
    nop
    ld hl, sp+$2c
    nop

jr_014_669f:
    ld hl, sp+$00
    dec e
    nop
    ld hl, sp-$08
    inc e
    nop
    add b
    nop
    nop
    cpl
    nop
    nop
    ld hl, sp+$2e
    nop
    ld hl, sp+$00
    rra
    nop
    ld hl, sp-$08
    ld e, $00
    add b
    nop

jr_014_66ba:
    ld hl, sp+$2d
    jr nz, jr_014_66be

jr_014_66be:
    nop
    inc l
    jr nz, jr_014_66ba

    ld hl, sp+$1d
    jr nz, jr_014_66be

    nop
    inc e
    jr nz, jr_014_664a

    nop
    ld hl, sp+$2f
    jr nz, jr_014_66cf

jr_014_66cf:
    nop
    ld l, $20

jr_014_66d2:
    ld hl, sp-$08
    rra
    jr nz, jr_014_66cf

    nop
    ld e, $20
    add b
    nop
    nop
    ld sp, $0000
    ld hl, sp+$30
    nop
    ld hl, sp+$00
    ld hl, $f800
    ld hl, sp+$20
    nop
    add b
    nop
    nop
    inc sp
    nop
    nop
    ld hl, sp+$32
    nop
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp-$08
    ld [hl+], a
    nop
    add b
    nop
    ld hl, sp+$31
    jr nz, jr_014_6702

jr_014_6702:
    nop
    jr nc, @+$22

    ld hl, sp-$08
    ld hl, $f820
    nop
    jr nz, jr_014_672d

    add b
    nop

jr_014_670f:
    ld hl, sp+$33
    jr nz, jr_014_6713

jr_014_6713:
    nop
    ld [hl-], a
    jr nz, jr_014_670f

    ld hl, sp+$23
    jr nz, jr_014_6713

    nop
    ld [hl+], a
    jr nz, jr_014_669f

    nop
    nop
    scf
    nop
    nop
    ld hl, sp+$36
    nop
    ld hl, sp+$00
    dec [hl]
    nop
    ld hl, sp-$08

jr_014_672d:
    inc [hl]
    nop
    add b
    nop
    nop
    dec sp
    nop
    nop
    ld hl, sp+$3a
    nop
    ld hl, sp+$00
    add hl, sp
    nop
    ld hl, sp-$08
    jr c, jr_014_6740

jr_014_6740:
    add b
    nop
    ld hl, sp+$37
    jr nz, jr_014_6746

jr_014_6746:
    nop
    ld [hl], $20
    ld hl, sp-$08
    dec [hl]
    jr nz, jr_014_6746

    nop
    inc [hl]
    jr nz, jr_014_66d2

    nop

jr_014_6753:
    ld hl, sp+$3b
    jr nz, jr_014_6757

jr_014_6757:
    nop
    ld a, [hl-]
    jr nz, jr_014_6753

    ld hl, sp+$39
    jr nz, jr_014_6757

    nop
    jr c, jr_014_6782

    add b
    rra
    ld h, l
    jr z, jr_014_67cc

    rst $30
    ld h, h
    inc b
    ld h, l
    dec l
    ld h, l
    ld a, [hl-]
    ld h, l
    dec c
    ld h, l
    ld a, [de]
    ld h, l
    ld b, e
    ld h, l
    ld d, h
    ld h, l
    add a
    ld h, l
    sbc b
    ld h, l
    xor c
    ld h, l
    cp d
    ld h, l
    ld h, l
    ld h, l
    halt

jr_014_6782:
    ld h, l
    bit 4, l
    call c, $cb65
    ld h, l
    call c, $ed65
    ld h, l
    cp $65
    db $ed
    ld h, l
    cp $65
    rrca
    ld h, [hl]
    jr nz, jr_014_67fd

    rrca
    ld h, [hl]
    jr nz, jr_014_6801

    ld sp, $4266
    ld h, [hl]
    ld sp, $4266
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld h, h
    ld h, [hl]
    sub a
    ld h, [hl]
    xor b
    ld h, [hl]
    cp c
    ld h, [hl]
    jp z, Jump_014_7566

    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $db
    ld h, [hl]
    db $ec
    ld h, [hl]
    db $db
    ld h, [hl]
    db $ec
    ld h, [hl]
    db $fd
    ld h, [hl]
    ld c, $67
    db $fd
    ld h, [hl]
    ld c, $67
    rra
    ld h, a
    jr nc, @+$69

    rra
    ld h, a
    jr nc, jr_014_6832

    ld b, c

jr_014_67cc:
    ld h, a
    ld d, d
    ld h, a
    ld b, c
    ld h, a
    ld d, d
    ld h, a
    dec bc
    ld l, b
    dec bc
    ld l, b
    dec bc
    ld l, b
    dec bc
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    dec d
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    ld a, [de]
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    inc h
    ld l, b

jr_014_67fd:
    inc h
    ld l, b
    inc h
    ld l, b

jr_014_6801:
    inc h
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    add hl, hl
    ld l, b
    rrca
    nop
    rrca
    ld bc, $0fff
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0fff
    nop
    rrca
    ld bc, $0fff

jr_014_6820:
    nop
    rrca
    ld bc, $1fff
    nop
    rra
    ld bc, $0fff
    nop
    rrca
    ld bc, $00ff
    nop
    ld [hl], $68

jr_014_6832:
    nop
    nop
    jr c, jr_014_689e

    ld c, b
    ld l, b
    ld a, c
    ld l, b

jr_014_683a:
    or d
    ld l, b
    db $eb
    ld l, b
    inc h
    ld l, c
    ld e, l
    ld l, c
    sub [hl]
    ld l, c
    rst $08
    ld l, c
    ld [$f96a], sp
    reti


    push bc
    nop
    ld bc, $c5f8
    nop
    ld de, $c516
    nop
    ret


    ret c

    push bc
    nop
    ret c

    jr z, jr_014_6820

    nop
    ret nz

    add hl, hl
    push bc
    nop
    add hl, hl
    jr nc, @-$39

    nop
    inc a
    nop
    push bc
    nop
    jr z, jr_014_683a

    push bc
    nop
    ld hl, sp+$40
    push bc
    nop
    db $ed
    cp b
    push bc
    nop
    ldh [$ff08], a
    push bc
    nop
    add b
    rst $20
    call z, Call_000_00d5
    add sp, $02
    push de
    nop
    call nz, $d518
    nop
    db $fc
    scf
    push de
    nop
    inc h
    ld sp, $00d5
    jp c, $d53b

    nop
    ld [$d506], sp
    nop
    ld [hl-], a
    db $eb
    push de
    nop
    ld a, [$d5cd]
    nop
    rst $10

jr_014_689e:
    and $d5
    nop
    dec h
    cp e
    push de
    nop
    ld [$d523], sp
    nop
    scf
    ld c, $d5
    nop
    push bc
    ret nz

    push de
    nop
    add b
    or $f9
    push de
    nop
    add hl, sp
    scf
    push de
    nop
    add sp, $36
    push de
    nop
    add hl, bc
    inc a
    push de
    nop
    ld a, [de]
    jr z, @-$29

    nop
    inc d
    inc de
    push de
    nop
    ret nc

    inc de
    push de
    nop
    cp b
    jr @-$29

    nop
    ld b, b
    add sp, -$2b
    nop
    jp hl


    db $ed
    push de
    nop
    ld [hl], $c0
    push de
    nop
    rlca
    ret z

    push de
    nop
    rst $30
    ret c

    push de
    nop
    pop de
    pop bc
    push de
    nop
    add b
    rlca
    rst $30
    push de
    nop
    cp d
    dec sp
    push de
    nop
    or $35
    push de
    nop
    jr jr_014_692f

    push de
    nop
    cpl
    ld [hl+], a
    push de
    nop
    jp nz, $d519

    nop
    db $db
    ld de, $00d5
    rra
    ld d, $d5
    nop
    ld a, [$d5ef]
    nop
    cp b
    db $ec
    push de
    nop
    ld b, c
    push bc
    push de
    nop
    rst $18
    jp z, Jump_000_00d5

    inc de
    ret nz

    push de
    nop
    add hl, bc
    reti


    push de
    nop
    add b
    ret nc

    ld [de], a
    push de
    nop
    and $16
    push de
    nop
    ret z

    ld b, d
    push de

jr_014_692f:
    nop
    inc bc
    inc a
    push de
    nop
    ld h, $31
    push de
    nop
    ld b, b
    add hl, hl
    push de
    nop
    dec l
    ld c, $d5
    nop
    inc de
    cp $d5
    nop
    jp nz, $d5f0

    nop
    dec b
    add sp, -$2b
    nop
    rla
    ret nc

    push de
    nop
    cp [hl]
    pop bc
    push de
    nop
    db $ec
    ret nc

    push de
    nop
    ld hl, $d5bc
    nop
    add b
    call c, $d510
    nop
    db $f4
    dec bc
    push de
    nop
    add hl, sp
    dec sp
    push de
    nop
    inc d
    dec sp
    push de
    nop
    jp c, $d53c

    nop
    cp e
    ld a, [hl+]
    push de
    nop
    dec a
    ld a, [bc]
    push de
    nop
    dec h
    nop
    push de
    nop
    jp nc, $d5e8

    nop
    rla
    db $e4
    push de
    nop
    rst $38
    set 2, l
    nop
    cpl

jr_014_698a:
    cp [hl]
    push de
    nop
    inc hl
    call Call_000_00d5
    adc $bf
    push de

jr_014_6994:
    nop
    add b
    ld b, b
    rst $00
    push de
    nop
    dec c
    jp Jump_000_00d5


    call c, $d5c7
    nop
    scf
    call nc, Call_000_00d5
    ldh [c], a
    db $ec
    push de
    nop
    jr z, jr_014_6994

    push de
    nop
    ld a, [hl-]
    ld a, [$00d5]
    cp e
    jr jr_014_698a

    nop
    rlca
    ld b, $d5
    nop
    db $eb
    inc d
    push de
    nop
    sla c
    push de
    nop
    ld h, $30
    push de
    nop
    jp hl


    scf
    push de
    nop
    cp c
    inc a
    push de
    nop
    add b
    cp b

jr_014_69d0:
    cp $d5
    nop
    cp e
    jp nc, Jump_000_00d5

    inc hl
    cp e
    push de
    nop
    set 0, b
    push de
    nop
    rst $28
    rst $08
    push de
    nop
    call $d542
    nop
    jr c, jr_014_6a24

    push de
    nop
    ld a, [$d539]
    nop
    jp c, $d52d

    nop
    rl l
    push de
    nop
    ei
    rlca
    push de
    nop
    ld hl, $d516
    nop
    ld a, [$d5f0]
    nop
    inc a
    db $ec
    push de
    nop
    add b

jr_014_6a08:
    db $d3
    ret c

    push de
    nop
    jr c, jr_014_69d0

    push de
    nop
    inc b
    ret


    push de
    nop

jr_014_6a14:
    rst $18
    ret z

    push de
    nop
    cp e
    rst $28
    push de
    nop
    ld c, $e4
    push de
    nop
    rst $08
    inc b
    push de
    nop

jr_014_6a24:
    inc de
    ld de, $00d5
    ld a, [hl-]
    dec bc
    push de
    nop
    ldh [c], a
    dec d
    push de
    nop
    db $ed
    jr z, jr_014_6a08

    nop
    cp d
    dec sp
    push de
    nop
    ld [de], a
    inc a
    push de
    nop
    ldh [c], a
    jr c, jr_014_6a14

    nop
    add b
    ld b, l
    ld l, d
    ld c, b
    ld l, d
    ldh a, [rP1]
    rst $38
    rra
    nop
    rra
    ld bc, $021f
    rra
    inc bc
    rra
    inc b
    rra
    dec b
    rra
    ld b, $1f
    rlca
    rst $38
    nop
    nop
    and c
    ld l, d
    nop
    nop
    xor c
    ld l, d
    nop
    nop
    xor e
    ld l, d
    nop
    nop
    xor l
    ld l, d
    nop
    nop
    or c
    ld l, d
    nop
    nop
    or e
    ld l, d
    nop
    nop
    ld b, [hl]
    ld l, h
    nop
    nop
    ld c, [hl]
    ld l, h
    nop
    nop
    ld d, b
    ld l, h
    nop
    nop
    ld d, d
    ld l, h
    nop
    nop
    ld d, [hl]
    ld l, h
    nop
    nop
    ld e, b
    ld l, h
    nop
    nop
    ld h, a
    ld l, [hl]
    nop
    nop
    ld l, a
    ld l, [hl]
    nop
    nop
    ld [hl], c
    ld l, [hl]
    nop
    nop
    ld [hl], e
    ld l, [hl]
    nop
    nop
    ld [hl], a
    ld l, [hl]
    nop
    nop
    ld a, c
    ld l, [hl]
    jp z, $b56a

    ld l, d
    rst $18
    ld l, d
    or l
    ld l, d
    or l
    ld l, d
    pop af
    ld l, e
    ld c, b
    ld l, e
    ld h, c
    ld l, e
    cp [hl]
    ld l, e
    db $f4
    ld l, d
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld hl, sp+$51
    nop
    ei
    nop
    ld d, b
    nop
    ei
    ld hl, sp+$4f
    nop
    ld sp, hl
    ld [$0026], sp
    add b
    ei
    nop
    ld d, b
    nop
    ei
    ld hl, sp+$4f
    nop
    inc bc
    nop
    add hl, de
    nop
    inc bc
    ld hl, sp+$18
    nop
    ld sp, hl
    ld [$0026], sp
    add b
    ei
    nop
    ld d, b
    nop
    ei
    ld hl, sp+$4f
    nop
    inc bc
    nop
    dec de
    nop
    inc bc
    ld hl, sp+$1a
    nop
    ld sp, hl
    ld [$0026], sp
    add b
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld hl, sp+$51
    nop
    ei
    nop
    ld d, b
    nop
    ei
    ld hl, sp+$1c
    nop
    ld sp, hl
    ld [$0026], sp
    add b
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld hl, sp+$51
    nop
    ei
    nop
    ld d, b
    nop
    ei
    ld hl, sp+$1d
    nop
    ld sp, hl
    ld [$0026], sp
    add b
    inc b
    nop
    ld hl, $0400
    ld hl, sp+$20
    nop
    db $fc
    nop
    rra
    nop
    db $fc
    ld hl, sp+$1e
    nop
    ld a, [$2608]
    nop
    add b
    inc b
    nop
    dec h
    nop
    inc b
    ld hl, sp+$24
    nop
    db $fc
    nop
    inc hl
    nop
    db $fc
    ld hl, sp+$22
    nop
    ld a, [$2608]
    nop
    add b
    ld [bc], a
    rlca
    ld b, h
    nop
    ld [bc], a
    rst $38
    ld b, e
    nop
    ld [bc], a
    rst $30
    ld b, d
    nop
    ld a, [$4107]
    nop
    ld a, [$40ff]
    nop
    ld a, [$3ff7]
    nop
    add b
    ld [bc], a
    rlca
    ld c, d
    nop
    ld [bc], a
    rst $38
    ld c, c
    nop
    ld [bc], a
    rst $30
    ld c, b
    nop
    ld a, [$4707]
    nop
    ld a, [$46ff]
    nop
    ld a, [$45f7]
    nop
    add b
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld hl, sp+$29
    nop
    ld hl, sp+$00
    jr z, jr_014_6b86

jr_014_6b86:
    ld hl, sp-$08
    daa
    nop
    add b
    nop
    ld hl, sp+$2b
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld hl, sp+$00
    jr z, jr_014_6b97

jr_014_6b97:
    ld hl, sp-$08
    daa
    nop
    add b
    nop
    nop
    inc l
    nop
    nop
    ld hl, sp+$29
    nop
    ld hl, sp+$00
    jr z, jr_014_6ba8

jr_014_6ba8:
    ld hl, sp-$08
    daa
    nop
    add b
    nop
    nop
    ld l, $00
    nop
    ld hl, sp+$2d
    nop
    ld hl, sp+$00
    jr z, jr_014_6bb9

jr_014_6bb9:
    ld hl, sp-$08
    daa
    nop
    add b
    nop
    nop
    jr nc, jr_014_6bc2

jr_014_6bc2:
    nop
    ld hl, sp+$2f
    nop
    ld hl, sp+$00
    jr z, jr_014_6bca

jr_014_6bca:
    ld hl, sp-$08
    daa
    nop
    add b
    ld bc, $3200
    nop
    ld bc, $31f8
    nop
    ld sp, hl
    nop
    jr z, jr_014_6bdb

jr_014_6bdb:
    ld sp, hl
    ld hl, sp+$27
    nop
    add b
    ld bc, $3600
    nop
    ld bc, $35f8
    nop
    ld sp, hl
    nop
    inc [hl]
    nop
    ld sp, hl
    ld hl, sp+$33
    nop
    add b
    nop
    nop
    ld c, [hl]
    nop
    nop
    ld hl, sp+$4d
    nop
    ld hl, sp+$00
    ld c, h
    nop
    ld hl, sp-$08
    ld c, e
    nop
    add b
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld hl, sp+$39
    nop
    ld hl, sp+$00
    jr c, jr_014_6c0e

jr_014_6c0e:
    ld hl, sp-$08
    scf
    nop
    add b
    nop
    ld hl, sp+$3b
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld hl, sp+$00
    jr c, jr_014_6c1f

jr_014_6c1f:
    ld hl, sp-$08
    scf
    nop
    add b
    nop
    ld hl, sp+$3d
    nop
    nop
    nop
    inc a
    nop
    ld hl, sp+$00
    jr c, jr_014_6c30

jr_014_6c30:
    ld hl, sp-$08
    scf
    nop
    add b
    nop
    nop
    ld a, $00
    nop
    ld hl, sp+$3d
    nop
    ld hl, sp+$00
    jr c, jr_014_6c41

jr_014_6c41:
    ld hl, sp-$08
    scf
    nop
    add b
    ld [hl], e
    ld l, h
    ld e, d
    ld l, h
    adc h
    ld l, h
    ld e, d
    ld l, h
    ld e, d
    ld l, h
    ld [$096d], a
    ld l, l
    ld h, $6d
    xor e
    ld l, l
    and l
    ld l, h
    nop
    ldh a, [c]
    ld h, b
    nop
    ld hl, sp+$02
    ld e, a
    nop
    ld hl, sp-$06
    ld e, [hl]
    nop
    ld hl, sp-$0e
    ld e, l
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, b
    nop
    ld hl, sp+$02
    ld e, a
    nop
    ld hl, sp-$06
    ld e, [hl]
    nop
    ld hl, sp-$0e
    ld e, l
    nop
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    add b
    nop
    ldh a, [c]
    ld h, b
    nop
    ld hl, sp+$02
    ld e, a
    nop
    ld hl, sp-$06
    ld e, [hl]
    nop
    ld hl, sp-$0e
    ld e, l
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    add b
    nop
    ldh a, [c]
    ld h, b
    nop
    ld hl, sp+$02
    ld e, a
    nop
    ld hl, sp-$06
    rra
    nop
    ld hl, sp-$0e
    ld e, $00
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, b
    nop
    ld hl, sp+$02
    ld e, a
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_6cce

jr_014_6cce:
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ld [bc], a
    daa
    nop
    nop
    ld a, [$0026]
    nop
    ldh a, [c]
    dec h
    nop
    ld hl, sp+$02
    inc h
    nop
    ld hl, sp-$06
    inc hl
    nop
    ld hl, sp-$0e
    ld [hl+], a
    nop
    add b
    nop
    ld a, [$002b]
    nop
    ldh a, [c]
    ld a, [hl+]
    nop
    nop
    ld [bc], a
    daa
    nop
    ld hl, sp+$02
    inc h
    nop
    ld hl, sp-$06
    add hl, hl
    nop
    ld hl, sp-$0e
    jr z, jr_014_6d08

jr_014_6d08:
    add b
    rst $30
    ld [bc], a
    ld e, a
    nop
    rst $30
    ld a, [$004c]
    rst $30
    ldh a, [c]
    ld c, e
    nop
    rlca
    ld bc, $0050
    rst $38
    inc bc
    ld c, a
    nop
    rst $38
    ei
    ld c, [hl]
    nop
    rst $38
    di
    ld c, l
    nop
    add b
    rlca
    ld [bc], a
    ld e, b
    nop
    rlca
    ld a, [$0057]
    rst $38
    ld [bc], a
    ld d, [hl]
    nop
    rst $38
    ld a, [$0055]
    rst $38
    ldh a, [c]
    ld d, h
    nop
    rst $30
    ld [bc], a
    ld d, e
    nop
    rst $30
    ld a, [$0052]
    rst $30
    ldh a, [c]
    ld d, c
    nop
    add b
    inc bc
    nop
    ld sp, $0300
    ld hl, sp+$30
    nop
    ei
    nop
    cpl
    nop
    ei
    ld hl, sp+$2e
    nop
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    add b
    inc bc
    ld hl, sp+$32
    nop
    inc bc
    nop
    ld sp, $fb00
    nop
    cpl
    nop
    ei
    ld hl, sp+$2e
    nop
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    add b
    inc bc
    nop
    inc sp
    nop
    inc bc
    ld hl, sp+$30
    nop
    ei
    nop
    cpl
    nop
    ei
    ld hl, sp+$2e
    nop
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    add b
    ei
    nop
    dec [hl]
    nop
    ei
    ld hl, sp+$34
    nop
    inc bc
    nop
    ld sp, $0300
    ld hl, sp+$30
    nop
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    add b
    ei
    nop
    scf
    nop
    ei
    ld hl, sp+$36
    nop
    inc bc
    nop
    ld sp, $0300
    ld hl, sp+$30
    nop
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    add b
    add hl, bc
    ld hl, sp+$3c
    nop
    ld bc, $3b00
    nop
    ld bc, $3af8
    nop
    ld sp, hl
    nop
    add hl, sp
    nop
    ld sp, hl
    ld hl, sp+$38
    nop
    add b
    ld bc, $4000
    nop
    ld bc, $3ff8
    nop
    ld sp, hl
    nop
    ld a, $00
    ld sp, hl
    ld hl, sp+$3d
    nop
    add b
    di
    nop
    dec l
    nop
    di
    ld hl, sp+$2c
    nop
    inc bc
    nop
    ld e, h
    nop
    inc bc
    ld hl, sp+$5b
    nop
    ei
    nop
    ld e, d
    nop
    ei
    ld hl, sp+$59
    nop
    add b
    ld [bc], a
    nop
    ld b, [hl]
    nop
    ld [bc], a
    ld hl, sp+$45
    nop
    ld a, [$4400]
    nop
    ld a, [$43f8]
    nop
    ldh a, [c]
    nop
    ld b, d
    nop
    ldh a, [c]
    ld hl, sp+$41
    nop
    add b
    ld [bc], a
    nop
    ld c, b
    nop
    ld [bc], a
    ld hl, sp+$45
    nop
    ld a, [$4400]
    nop
    ld a, [$43f8]
    nop
    ldh a, [c]
    nop
    ld b, d
    nop
    ldh a, [c]
    ld hl, sp+$41
    nop
    add b
    ld [bc], a
    nop
    ld c, d
    nop
    ld [bc], a
    ld hl, sp+$47
    nop
    ld a, [$4400]
    nop
    ld a, [$43f8]
    nop
    ldh a, [c]
    nop
    ld b, d
    nop
    ldh a, [c]
    ld hl, sp+$41
    nop
    add b
    ld [bc], a
    nop
    ld c, d
    nop
    ld [bc], a
    ld hl, sp+$49
    nop
    ld a, [$4400]
    nop
    ld a, [$43f8]
    nop
    ldh a, [c]
    nop
    ld b, d
    nop
    ldh a, [c]
    ld hl, sp+$41
    nop
    add b
    sub h
    ld l, [hl]
    ld a, e
    ld l, [hl]
    xor l
    ld l, [hl]
    ld a, e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    db $e3
    ld [hl], b
    adc [hl]
    ld l, a
    xor a
    ld l, a
    ld hl, sp+$6e
    add $6e
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld h, d
    nop
    ld hl, sp-$0e
    ld h, c
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld h, d
    nop
    ld hl, sp-$0e
    ld h, c
    nop
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld h, d
    nop
    ld hl, sp-$0e
    ld h, c
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    rra
    nop
    ld hl, sp-$0e
    ld e, $00
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    inc hl
    nop
    ld hl, sp-$0e
    ld [hl+], a
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    dec h
    nop
    ld hl, sp-$0e
    inc h
    nop
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_6f21

jr_014_6f21:
    nop
    ld [bc], a
    add hl, de
    nop
    nop
    ld a, [$0018]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_6f3a

jr_014_6f3a:
    nop
    ld [bc], a
    dec de
    nop
    nop
    ld a, [$001a]
    add b
    nop
    ldh a, [c]
    ld h, h
    nop
    ld hl, sp+$02
    ld h, e
    nop
    ld hl, sp-$06
    ld hl, $f800
    ldh a, [c]
    jr nz, jr_014_6f53

jr_014_6f53:
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld a, [$001c]
    add b
    nop
    ld [bc], a
    dec hl
    nop
    nop
    ld a, [$002a]
    nop
    ldh a, [c]
    add hl, hl
    nop
    ld hl, sp+$02
    jr z, jr_014_6f6c

jr_014_6f6c:
    ld hl, sp-$06
    daa
    nop
    ld hl, sp-$0e
    ld h, $00
    add b
    nop
    ld a, [$002f]
    nop
    ldh a, [c]
    ld l, $00
    ld hl, sp-$06
    dec l
    nop
    ld hl, sp-$0e
    inc l
    nop
    nop
    ld [bc], a
    dec hl
    nop
    ld hl, sp+$02
    jr z, jr_014_6f8d

jr_014_6f8d:
    add b
    rst $38
    ldh a, [c]
    ld h, h
    nop
    rst $30
    ld [bc], a
    ld h, e
    nop
    rlca
    ld [bc], a
    ld e, h
    nop
    rlca
    ld a, [$005b]
    rst $38
    ld [bc], a
    ld e, d
    nop
    rst $38
    ld a, [$0059]
    rst $30
    ld a, [$0058]
    rst $30
    ldh a, [c]
    ld d, a
    nop
    add b
    rst $38
    ldh a, [c]
    ld h, h
    nop
    rst $30
    ld [bc], a
    ld h, e
    nop
    rlca
    ld [bc], a
    ld h, b

Call_014_6fba:
    nop
    rst $38
    ld a, [bc]
    ld e, a
    nop
    rst $38
    ld [bc], a
    ld e, [hl]
    nop
    rst $38
    ld a, [$005d]
    rst $30
    ld a, [$0058]
    rst $30
    ldh a, [c]
    ld d, a
    nop
    add b
    ld [bc], a
    nop
    dec [hl]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ld a, [$3300]
    nop
    ld a, [$32f8]
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld [bc], a
    ld hl, sp+$36
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld a, [$3300]
    nop
    ld a, [$32f8]
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld [bc], a
    nop
    scf
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ld a, [$3300]
    nop
    ld a, [$32f8]
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld a, [$3900]
    nop
    ld a, [$38f8]
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld a, [$3d00]
    nop
    ld a, [$3cf8]
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld a, [$3f00]
    nop
    ld a, [$3ef8]
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld a, [$3b00]
    nop
    ld a, [$3af8]
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld [bc], a
    ld hl, sp+$36
    nop
    ld a, [$3b00]
    nop
    ld a, [$3af8]
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld [bc], a
    nop
    scf
    nop
    ld a, [$3b00]
    nop
    ld a, [$3af8]
    nop
    ld [bc], a
    ld hl, sp+$34
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    push af
    ld hl, sp+$40
    nop
    db $fd
    nop
    dec a
    nop
    db $fd
    ld hl, sp+$3c
    nop
    dec b
    nop
    ld b, d
    nop
    dec b
    ld hl, sp+$41
    nop
    push af
    nop
    ld sp, $8000
    dec b
    nop
    ld c, b
    nop
    dec b
    ld hl, sp+$47
    nop
    db $fd
    nop
    ld b, [hl]
    nop
    db $fd
    ld hl, sp+$45
    nop
    push af
    nop
    ld b, h
    nop
    push af
    ld hl, sp+$43
    nop
    add b
    ld [bc], a
    nop
    ld d, [hl]
    nop
    ld [bc], a
    ld hl, sp+$55
    nop
    ld a, [$5400]
    nop
    ld a, [$53f8]
    nop
    ldh a, [c]
    nop
    ld sp, $f200
    ld hl, sp+$30
    nop
    add b
    ld [bc], a
    nop
    ld c, [hl]
    nop
    ld [bc], a
    ld hl, sp+$4d
    nop
    ld a, [$4c00]
    nop
    ld a, [$4bf8]
    nop
    ldh a, [c]
    nop
    ld c, d
    nop
    ldh a, [c]
    ld hl, sp+$49
    nop
    add b
    ld [bc], a
    nop
    ld d, b
    nop
    ld [bc], a
    ld hl, sp+$4d
    nop
    ld a, [$4c00]
    nop
    ld a, [$4bf8]
    nop
    ldh a, [c]
    nop
    ld c, d
    nop
    ldh a, [c]
    ld hl, sp+$49
    nop
    add b
    ld [bc], a
    nop
    ld d, d
    nop
    ld [bc], a
    ld hl, sp+$4f
    nop
    ld a, [$4c00]
    nop
    ld a, [$4bf8]
    nop
    ldh a, [c]
    nop
    ld c, d
    nop
    ldh a, [c]
    ld hl, sp+$49
    nop
    add b
    ld [bc], a
    nop
    ld d, d
    nop
    ld [bc], a
    ld hl, sp+$51
    nop
    ld a, [$4c00]
    nop
    ld a, [$4bf8]
    nop
    ldh a, [c]
    nop
    ld c, d
    nop
    ldh a, [c]
    ld hl, sp+$49
    nop
    add b
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    add a
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    sub b
    ld [hl], c
    add h
    ld [hl], c
    add h
    ld [hl], c
    ldh a, [rP1]
    rst $38
    rrca
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    ld [$0800], sp
    ld bc, $00ff
    ld [$005f], sp
    nop
    stop
    jr c, jr_014_71e2

    nop
    ld a, h
    rrca
    ld bc, $0fc0
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0106
    inc d
    nop
    rra
    ld l, [hl]
    nop
    inc h
    nop
    ld l, $42
    nop
    rrca
    ld bc, $010f
    ldh [rIF], a
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $0024
    ld a, [hl]
    ld a, $00
    ld [bc], a
    ld a, $00
    ld l, d
    nop
    ld [hl+], a
    rrca
    ld bc, $010f
    ld a, [$010e]
    nop
    ret nz

    dec b
    halt
    nop
    ld h, $00
    ld a, [hl-]

jr_014_71e2:
    inc bc
    nop
    ld a, [bc]
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    db $fc
    rrca
    ld bc, $0102
    ld b, $00
    rrca
    inc b
    dec bc
    rlca
    rst $38
    rrca
    rlca
    rrca
    dec b
    rrca
    dec b
    rla
    dec c
    rst $38
    rra
    rrca
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    rst $38
    ret nc

    and b
    xor h
    ret nc

    rst $18
    ldh [$ffe3], a
    rst $38
    ei
    ld a, a
    rst $38
    add a
    rra
    ret nz

    nop
    or b
    ret nz

    add sp, -$31
    ret nc

    ld d, $0f
    rrca
    ld [$3020], a
    ld [bc], a
    ld a, a
    sbc c
    rst $38
    ld a, a
    rst $18
    jr c, @-$47

    ld e, b
    cp d
    ld d, c
    db $eb
    rst $38
    db $10
    jr c, jr_014_7239

jr_014_7239:
    db $e4
    ret c

    or h
    ret z

Jump_014_723d:
    call nc, $88ff
    xor h
    ret nz

    ld h, h
    ret nz

    ldh [rLCDC], a
    and b
    di
    ld b, b
    ret nz

    ld l, $06
    add c
    inc b
    ret nz

    add b
    ldh a, [rP1]
    ld a, a
    call z, $bfb0
    ret nz

    db $e3
    rst $38
    rst $38
    ld a, [bc]
    ld b, $bf
    cp b
    ret nz

    db $e4
    ret c

    rra
    rrca
    ld hl, $0106
    db $fc
    ld [hl+], a
    nop
    pop hl
    rra
    ld a, a
    rst $38
    rst $38
    ld a, a
    or c
    ld a, a
    rst $38
    rst $10
    cp b
    ld a, l
    adc b
    sbc $09
    ld d, $09
    rst $38
    add hl, de
    nop
    ldh a, [c]
    call z, $c0af
    ldh [$ff80], a
    rst $38
    and b
    ret nz

    ld [hl], b
    ret nz

    ret nc

    and b
    or b
    nop
    db $e3
    add b
    nop
    inc bc
    add hl, bc
    rlca
    inc bc
    ld bc, $d109
    ccf
    ld a, a
    cp a
    ldh [$ffea], a
    sub c
    ld [$3311], a
    ldh [rNR44], a
    ldh a, [c]
    rst $38
    call z, $c4aa
    and $80
    ld h, h
    ret nz

    or b
    cp a
    ld h, b
    ldh a, [rNR41]
    ld d, b
    jr nz, jr_014_72e2

    xor d
    inc l
    dec de
    rst $38
    nop
    ccf
    ld [de], a
    rla
    ld c, $1f
    rrca
    rra
    rst $38
    dec bc
    rra
    dec bc
    cpl
    dec de
    ld a, $1f
    dec l
    ei
    ld e, $1f
    ld h, b
    ld c, $a0
    ld b, b
    ld d, b
    and b
    or b
    sbc a
    ret nz

    ret c

    ldh [$ffe7], a
    ld hl, sp-$10
    add hl, bc
    ld [$8010], sp
    rst $38
    nop
    ld [hl], b
    add b
    ret z

    or b

jr_014_72e2:
    inc bc
    nop
    dec b
    cp a
    ld [bc], a
    rlca
    ld bc, $0107

jr_014_72eb:
    inc bc
    db $e4
    jr nc, jr_014_736e

    rst $38
    rst $38
    and a
    ld a, a
    ld sp, hl
    rst $00
    ld h, a
    add c
    add [hl]
    ld sp, hl
    ld bc, $0180
    add b
    dec bc
    db $e4
    sbc b
    ld e, [hl]
    add b
    add b
    xor a
    nop
    ld b, b
    add b
    ret nz

    jr nz, jr_014_730a

jr_014_730a:
    ld b, b
    and b
    nop
    dec c
    rst $10
    nop
    rra
    add hl, bc
    ld c, c
    ld b, $80
    ld b, b
    dec bc
    ret nz

    nop
    cp a
    and c
    ld b, b
    ld e, a
    and c
    or e
    rst $08
    rlca
    ld b, $dc
    rst $38
    nop
    and [hl]
    ret c

    ei
    ret nz

    ldh [$ffc0], a
    or b
    rst $28
    ret nz

    dec l
    ld e, $1e
    ld [$7f36], a
    rst $38
    cp h
    rst $38
    ld a, a
    ld a, e
    inc e
    ld e, h
    jr z, jr_014_7399

    jr z, jr_014_72eb

    ei
    ld e, b
    ld hl, sp+$00
    ld d, $ec
    ldh a, [$ffd4]
    jr c, jr_014_7385

    call c, $397f
    call nz, Call_000_0339
    nop
    ld [bc], a
    and b
    add hl, bc
    dec b
    inc bc
    rst $38
    rrca
    rlca
    rla
    rrca
    ld e, $0f
    ld e, $09
    db $eb
    rra
    ld a, [bc]
    and b
    ld [$e000], sp
    ld [de], a
    ldh [rBCPS], a
    ldh a, [rIE]
    ld a, b
    ldh a, [$ff78]
    sub b

jr_014_736e:
    ld hl, sp+$50
    rra
    add hl, bc
    rst $38
    rra
    dec bc
    rla
    dec c
    rla
    dec c
    dec de
    dec b
    ld e, a
    rra
    dec bc
    dec c
    inc bc
    inc bc
    and b
    ld a, [bc]
    ldh [$ff0e], a

jr_014_7385:
    ld [bc], a
    ld sp, hl
    dec de
    nop
    ld [bc], a
    ret nz

    jr nz, jr_014_7390

    dec e
    dec bc
    dec bc

jr_014_7390:
    nop
    rst $38
    ld hl, sp-$70
    ld hl, sp-$30
    add sp, -$50
    ret c

jr_014_7399:
    and b
    ccf
    add sp, -$70
    ldh a, [$ffc0]
    and b
    ret nz

    ld bc, $631d
    ld b, b
    cp l
    ld [bc], a
    and b
    inc hl
    add hl, bc
    ld b, $09
    ld b, $e5
    ld b, $1f
    and h
    inc b
    rlca
    pop hl
    ld b, $f0
    db $e3
    ld b, $04
    rlca
    rla
    nop

jr_014_73bc:
    rlca
    dec de
    ccf
    dec b
    rla
    add hl, bc
    rrca
    inc bc
    dec b
    nop
    rlca
    dec b
    ld a, [bc]
    call $e216
    add hl, bc
    rra
    add hl, bc
    ld [$e00a], sp
    add hl, bc
    ld hl, sp-$70
    ld a, [hl]
    db $e4
    add hl, bc
    dec c
    cpl
    inc de
    dec l
    dec de
    dec de
    xor h
    ld b, a
    cp a
    ld h, [hl]
    nop
    ld e, d
    inc h
    ld b, $03
    ld hl, $0700
    rst $28
    nop
    inc c
    inc bc
    dec bc
    ld b, b
    ld c, $17
    rrca
    ld h, b
    db $fd
    ret nz

    ld hl, $e000
    nop
    jr nc, jr_014_73bc

    ret nc

    ldh [rIE], a
    add sp, -$10
    add sp, -$10
    rra
    rrca
    dec e
    ld c, $77
    dec de
    inc c
    ld e, $c0
    ld [hl+], a
    dec e
    ld [$e00c], sp
    ld b, e
    cp $60

jr_014_7414:
    rrca
    or b
    ld e, b
    or b
    ld hl, sp+$10
    xor b
    db $10
    daa
    cp b
    db $10
    or b
    ld bc, $042f
    inc b
    inc b
    nop
    inc b
    ld h, c
    ld [de], a
    sub $0b
    inc b
    ld hl, sp-$10
    and b
    inc c
    ld c, $21
    inc b
    dec e
    ld [$14e7], sp
    ld [$201c], sp
    inc b
    inc bc
    inc b
    ld l, b
    sub b
    ld a, b
    rst $08
    sub b
    ret nc

    nop
    ld b, b
    ldh [rOBP0], a
    inc bc
    ld b, $16
    add hl, bc
    or a
    ld e, $09
    dec bc
    ld b, b
    stop
    nop
    add b
    dec d
    or b
    rst $38
    ld a, b
    or b
    ret c

    jr nc, jr_014_7414

    db $10
    jr z, @+$12

    daa
    jr c, jr_014_7472

    jr nc, jr_014_7466

    ld b, $e7

jr_014_7466:
    add hl, bc
    rra
    ld [bc], a
    ld a, [bc]
    rst $20
    add hl, bc
    rst $38

jr_014_746d:
    ld a, b
    ldh a, [rNR33]
    ld c, $17

jr_014_7472:
    inc c
    dec bc
    inc b
    rst $30
    dec bc
    inc b
    dec b
    db $e4
    ld d, h
    ld a, b
    or b
    ld l, b
    or b
    sbc a
    ld d, b
    and b
    ld d, b
    and b
    ld h, b
    ld h, b
    inc hl
    pop hl
    ld c, [hl]
    rra
    rst $38
    ld c, $16
    dec c
    ld l, $19
    dec [hl]
    ld [$fb38], sp
    db $10
    jr jr_014_749a

    ld [bc], a
    ldh a, [rBCPS]

jr_014_749a:
    or b
    or h
    jr jr_014_746d

    xor h
    db $10
    sbc h
    ld [$0103], sp
    ld bc, $7e51
    nop
    rst $00
    ld e, d
    nop
    inc a
    add d
    nop
    rrca
    ld bc, $5aa9
    ld a, $00
    ei
    ld b, c
    ld a, $cb
    ld e, e
    add b
    nop
    and h
    ld e, e
    ld h, h
    rst $38
    dec de
    or c
    ld a, [hl]
    ld hl, sp+$3f
    cp h
    ld a, a
    ld e, d
    rst $38
    dec a
    cp $43
    rst $20
    nop
    ld a, [hl]
    add b
    ld b, l
    rst $38
    cp d
    add d
    ld a, l
    inc bc
    db $fc
    ld b, $f8
    inc bc
    rst $28
    db $fc
    ld [hl], e
    adc [hl]
    adc [hl]
    xor d
    ld e, [hl]
    inc c
    nop
    adc d
    rst $38
    inc b
    ld a, d
    add h
    ld b, [hl]
    cp b
    add d
    ld a, h
    ld [bc], a
    ldh a, [$ff0c]
    ld [bc], a
    and c
    dec b
    and e
    inc b
    jp hl


    ld sp, $b04e
    add l
    ld a, d
    ld a, [hl]
    rst $00
    ld bc, $7fb0
    ld sp, hl
    ld a, $bc
    ld a, a
    and e
    inc sp
    rst $38
    ld h, b
    add b
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
    ei
    ld b, $f8
    ld b, e
    ld h, h
    ld b, c
    nop

jr_014_7514:
    cp [hl]
    ld b, c
    add b
    rst $18
    ld a, a
    ld h, h
    dec de
    ld h, l
    ld a, [de]
    push bc
    dec [hl]
    ld h, [hl]
    add b
    cp a
    ld e, d
    and h
    ld b, h
    cp b
    add h
    ld a, b
    ld b, c
    inc l
    inc b
    rst $38
    inc bc
    ld [$0f07], sp
    nop
    ld a, [bc]
    dec b
    db $10
    ei
    rrca
    dec d
    jr nc, jr_014_7584

    ldh [rP1], a
    db $10
    ldh [$ff08], a
    rst $38
    ldh a, [$fff8]
    nop
    jr z, jr_014_7514

    inc b
    ld hl, sp+$54
    di
    xor b
    rlca
    add h
    ld bc, $27c0
    rlca
    dec bc
    rlca
    dec e
    ei
    dec bc
    ldh a, [$ff84]
    ld bc, $b04c
    ret z

    ldh a, [$ffe8]

jr_014_755c:
    rst $30
    ld [hl], b
    ld e, h
    add sp, $41
    jr nc, @+$0e

    inc bc
    inc de
    inc c

Jump_014_7566:
    rst $38
    ld [hl+], a
    dec e
    jr c, @+$09

    add hl, bc
    ld b, $19
    ld b, $fe
    ld bc, $1804
    ldh [$ffe4], a
    jr jr_014_7599

    call c, $cf0e
    ldh a, [rOBP0]
    or b
    ld c, h
    ld sp, $e420
    inc a
    ld b, b
    add b

jr_014_7584:
    rst $28
    ld h, b
    add b
    sub b
    ld h, b
    pop bc
    ld b, e
    ld b, $01
    ld [$073f], sp
    ld de, $150e
    ld a, [bc]
    add hl, de
    jr nz, jr_014_759c

    add c
    ld c, [hl]

jr_014_7599:
    rst $38
    jr nc, jr_014_755c

jr_014_759c:
    ld [$44f0], sp
    cp b
    ld d, h
    xor b
    cp $21
    dec b
    ld l, b
    ldh a, [$ffd2]
    ldh [$ffed], a
    ld [de], a
    ld a, [bc]
    rst $38
    db $f4
    ld d, h
    xor b
    sub h
    ld l, b
    add sp, $50
    ld [hl], b
    ld l, l
    nop
    and e
    inc de
    ld a, $01
    dec h
    inc e
    ld [bc], a
    db $fc

jr_014_75bf:
    inc hl
    nop
    rst $18
    inc h
    ret c

    call c, $d888
    ldh [rOCPS], a
    ld e, e
    inc a
    rst $20
    ld a, $01
    ld d, $80
    inc sp
    ld b, [hl]
    inc d
    ldh a, [rDIV]
    ld hl, sp-$4d
    or $0c
    and c
    jr z, jr_014_75bf

    ld [hl], e
    or b
    ld a, a
    dec h
    inc b
    ld c, $ff
    dec b
    rlca
    ld bc, $0001
    ld c, $f0
    ld b, $bf
    db $fc
    inc b
    ld hl, sp+$18
    ldh [$ff60], a
    ldh [c], a
    ld b, d
    add b
    ei
    nop
    add hl, de
    add b
    dec c
    dec de
    rlca
    dec d
    dec bc
    inc de
    rst $08
    inc c
    ld c, $04
    inc b
    ldh [$ff6f], a
    add e
    dec c
    ld d, h
    add sp, -$05
    db $e4
    jr jr_014_7631

    ld hl, $040b
    add hl, bc
    rlca
    add hl, bc
    rst $18
    rlca
    inc b
    inc bc
    rlca
    ld [bc], a
    inc hl
    ld c, b
    add sp, $10
    rst $38
    ret z

    ldh a, [$ffc8]
    ldh a, [$ff90]

jr_014_7624:
    ld h, b
    ld [hl], b
    jr nz, jr_014_7624

    or b
    inc c
    ldh [$ff72], a
    add hl, sp
    rla
    dec hl
    rla
    dec e

jr_014_7631:
    inc bc
    rst $28
    dec bc
    inc b
    rlca
    ld [bc], a
    pop hl
    add hl, hl
    nop
    nop
    adc $ff
    db $f4
    ld [$5c74], a
    ldh [$ffe8], a
    db $10
    ld [hl], b
    ei
    jr nz, jr_014_7668

    ldh [c], a
    ld [hl], h
    ld [$0ef0], sp
    ldh a, [rTIMA]
    ccf
    ld a, [$f806]
    inc h
    ret c

    ld hl, sp+$20
    dec l
    nop
    dec b
    ei
    rlca
    dec b
    ldh [rSC], a
    jr jr_014_7668

    dec d
    ld a, [bc]
    inc d
    rst $28
    dec bc
    dec bc
    dec b

jr_014_7668:
    rlca
    nop
    dec l
    ret nc

    ldh [$ffee], a
    rst $08
    db $10
    add hl, bc
    or $56
    inc b
    rrca
    and a
    inc h
    add b
    ld a, a
    rrca
    ld l, h
    inc de
    or c
    ld a, [hl]
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
    jp c, Jump_014_7dda

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

jr_014_77c5:
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
    jp nz, Jump_000_1cfd

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
    jr nz, jr_014_77c5

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
    jp c, Jump_014_44db

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
    jp z, Jump_014_723d

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
    cp a
    jp nz, Jump_014_4cbf

    dec a
    call z, Call_014_50bd
    inc de
    ld hl, sp-$01
    ld a, [$f1e6]
    ret


    db $d3
    xor e
    or $a6
    rst $38
    call nc, Call_014_7f8c
    xor a
    rst $38
    nop
    jp $ff42


    ei
    ld a, d
    or l
    inc [hl]
    xor c
    ld l, d
    bit 1, d
    rst $28
    db $d3
    ld d, d
    rst $30
    ld a, [hl]
    ld d, b

jr_014_78e3:
    dec d
    rra
    sbc a
    add a
    rst $38
    ld c, a
    ld b, e
    cp e
    or l
    ld l, a
    ld h, l
    dec hl
    ld sp, $efff
    push hl
    ld b, l
    ld b, l
    ld [de], a
    ld [de], a
    or l
    or l
    rst $38
    ld [hl+], a
    ld [hl+], a
    push de
    push de
    xor e
    xor d
    ld [de], a
    dec d
    rst $38
    add l
    adc e
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld c, [hl]
    rst $38
    xor [hl]
    or c
    halt
    adc [hl]
    sub b
    ld [hl], b
    ret nz

    ret nz

    rst $38
    nop
    nop
    ld d, h
    ld d, h
    and b
    and b
    db $fc
    inc bc
    cp a
    ei
    db $fc
    rrca
    rrca
    ld bc, $0101
    daa
    and h
    rst $38
    di
    ccf
    and b
    db $ed
    db $db
    jp c, Jump_000_2eb6

    rst $38
    sub $fb
    rst $00
    ld e, a
    or e
    ld a, $41
    db $e4
    rst $38
    scf
    dec h
    call Call_014_6fba
    db $ed
    or a
    ld a, d
    rst $38
    scf
    ld l, a
    ld [hl], c
    push af
    xor $ab
    db $dd
    xor [hl]
    rst $38
    pop af
    ccf
    xor h
    call nc, $bfeb
    ret nz

    ld a, c
    rst $38
    or [hl]
    pop de
    xor b
    jr c, jr_014_78e3

    inc e
    ld l, h
    db $f4
    rst $38
    add a
    xor l
    ld [hl], l
    sub $3b
    cp l
    jp $ffa2


    db $dd
    ld c, a
    cp l
    and $7c
    inc hl
    dec a
    ld b, b
    rst $38
    rst $38
    sbc e
    db $e4
    ld l, $da
    ld e, h
    or h
    inc l
    rst $38
    call nc, $a45c
    sub [hl]
    ld a, d
    ld a, $c1
    ld b, b
    rst $38
    rst $38
    ldh a, [c]
    sbc a
    ld hl, sp+$2f
    ld e, b
    rla
    ld e, c
    rst $38
    rla
    ld a, $31
    ld [hl], l
    ld l, [hl]
    xor d
    db $dd
    and a
    rst $38
    db $f4
    ld a, $a2
    db $eb
    call $d2b3
    dec h
    rst $38
    pop de
    jp nc, $39e8

    or [hl]
    rra
    ld a, b
    and h
    rst $38
    rst $30
    xor l
    ld hl, $0d7a
    push de
    sbc e
    xor d
    ld a, a
    scf
    push de
    ld h, a
    ld [hl], $de
    db $dd
    inc sp
    dec c
    jr nc, @+$01

    call z, Call_014_4ebd
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
    ld d, [hl]
    adc [hl]
    rst $38
    ld d, [hl]
    add [hl]
    ld [hl], a
    xor a
    ld d, a
    adc a
    ld [hl], l
    xor a
    cp $21
    nop
    ld d, c
    and a
    sub l
    inc a
    sbc l
    ld a, [hl]
    xor l
    rst $38
    ld a, [hl]
    xor c
    ld a, [hl]
    sub c
    ld a, [hl]
    or l
    ld a, [hl]
    or l
    rst $38
    inc a
    sub l
    ld a, [hl]
    ld e, e
    ld d, c
    ld l, e
    ld h, c
    rst $28
    rst $38
    push af
    ld l, e
    pop hl
    ld l, a
    push hl
    ld l, a
    push hl
    ld a, a
    rst $38
    push af
    ld l, e
    push hl
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

    ret nz

    add b
    ld a, [hl]
    stop
    ret nz

    ret nz

    add [hl]
    add [hl]
    ld [$0f08], sp
    scf
    rst $38
    xor a
    ret c

    ld e, e
    or d
    push de
    or [hl]
    jp $ffbc


    ccf
    pop bc
    add $f1
    scf
    cp h
    dec e
    ld a, [hl]
    rst $38
    db $ec
    inc de
    ei
    dec c
    ld e, l
    or [hl]
    or l
    sub $ff
    ldh [c], a
    db $dd
    cp l
    jp $be76


    sbc l
    ld a, a
    rst $38
    or [hl]
    adc $6b
    sub a
    or $b9
    rst $00
    cp b
    rst $30
    ccf
    ret nz

    rst $00
    ld [bc], a
    ld [bc], a
    ld h, d
    ld a, l
    rst $00
    ld sp, hl
    rst $38
    adc c
    or $f5
    ld c, $7e
    add c
    db $fd
    add e
    cp $01
    ld [bc], a
    ld l, a
    ret c

    db $db
    or d
    ld d, l
    or [hl]
    ld b, e
    rst $38
    cp h
    dec a
    jp $f98e


    inc hl
    db $fc
    add hl, bc
    rst $38
    cp $cc
    inc sp
    ldh a, [c]
    dec c
    ld e, c
    cp [hl]
    and e
    rst $38
    call nz, $c9f7
    cp h
    jp $bf61


    adc b
    rst $38
    ld a, a
    cp a
    db $e4
    dec [hl]
    sub b
    db $eb
    cp b
    cp e
    rst $30
    ld b, [hl]
    db $fd
    inc sp
    nop
    inc b
    cp [hl]
    dec e
    ld a, [hl]
    ld [hl], d
    rst $38
    and l
    ld l, c
    adc [hl]
    ld d, l
    sbc d
    rst $28
    ld [hl], h
    or d
    ld a, a
    ld c, a
    push hl
    rla
    halt
    cp [hl]
    ld e, l
    cp a
    dec c
    ld b, b
    rst $38
    ld l, d
    ld l, d
    or h
    or h
    cp d
    add $35
    rst $30
    rst $38
    pop bc
    ld a, e
    and l
    ld h, a
    ld hl, sp+$06
    add c
    ld a, e
    rst $38
    ld d, b
    xor a
    ld d, e
    xor h
    ld e, h
    and e
    ld h, c
    sbc a
    ei
    ld hl, $21df
    nop
    rra
    ldh [rIE], a
    nop
    add c
    ei
    ld a, [hl]
    add e
    ld h, $00
    rst $38
    nop
    ld l, e
    push af
    bit 7, a
    dec h
    dec sp
    push bc

jr_014_7add:
    rlca
    ld sp, hl
    rrca
    ei
    ld hl, $ff00
    rst $38
    rlca
    xor a
    rst $18
    xor a
    rst $18
    xor [hl]
    sbc $ff
    xor h
    call c, $dfaf
    rst $20
    rst $18
    rst $10
    rst $28
    rst $38
    pop de
    rst $28
    nop
    nop
    jr jr_014_7b14

    ld h, b
    ld h, b
    rst $38
    ret nz

    ret nz

    pop hl
    pop hl
    add e
    add e
    rst $00
    rst $00
    rst $38
    rst $08
    rst $08
    nop
    nop
    inc d
    inc d
    ld [hl], $36
    rst $38
    cp [hl]
    cp [hl]
    cp e

jr_014_7b14:
    cp a
    dec sp
    ccf
    di
    rst $38
    rst $38
    ld h, c
    rst $38
    or a
    call nz, $925e
    rst $00
    add l
    rst $38
    db $d3
    sub d
    jp hl


    jr z, jr_014_7add

    ld d, h
    sbc $20
    rst $38
    ld l, h
    inc e
    and h
    rst $30
    and l
    dec l
    ld a, [hl]
    ld bc, $e5ff
    and [hl]
    cp $51
    push af
    add a
    ld [hl], $5e
    rst $28
    ld a, l
    ld d, e
    and h
    rst $10
    nop
    add hl, sp
    db $fd
    push hl
    xor a
    rst $30
    ld [hl-], a
    rst $38
    call Call_000_3902
    and b
    rst $30
    inc b
    jp hl


    rst $38
    sub $bb
    pop bc
    or a
    ld [$29ff], sp
    add $ff
    ld sp, $449a
    rst $38
    ld [hl], e
    and h
    sbc l
    ld l, b
    rst $38
    xor [hl]
    ld d, e
    ld l, d
    sub l
    rst $18

jr_014_7b69:
    ld a, [bc]
    db $f4
    xor e
    cp a
    ld l, d
    sub h
    rst $38
    dec d
    ret nz

    ccf
    ldh [rLY], a
    ld a, a
    ei
    rst $38
    ld a, a
    ld [hl], b
    ld a, $61
    rst $18
    ld b, c
    pop de
    ld d, c
    ei
    inc bc
    db $fc
    ldh [rLY], a
    cp $ff
    cp $ff
    nop
    rst $38
    ld a, l
    inc b
    ld a, l
    inc b
    ld c, l
    ld c, h
    ld c, h
    di
    rst $38
    sub e
    db $ec
    jr nz, jr_014_7b69

    ld c, l
    xor [hl]
    ccf
    pop bc
    rst $38
    adc [hl]
    db $fc
    ld [hl+], a
    db $fc
    ld [$bcff], sp
    db $e3
    rst $38
    dec hl
    sbc h
    pop hl
    and b
    xor l
    sbc $3f
    pop hl
    rst $38
    add $f4
    ld [hl], $bc
    dec e
    ld a, a
    sbc c
    ld a, e
    rst $38
    sbc b
    ld a, d
    adc l
    ld a, a
    adc l
    ld a, a
    adc e
    ld a, l
    rst $38
    ld b, l
    cp e
    dec sp
    rst $00
    ld b, $fe
    db $10
    db $10
    rst $38
    add c
    add c
    jr z, jr_014_7bf6

    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, l
    rst $38
    add a
    add [hl]
    inc de
    db $10
    ld c, [hl]
    ld c, l
    ld b, d
    ld b, d
    rst $38
    inc b
    inc b
    ld d, c
    ld d, c
    rst $38
    ret nz

    db $ec
    inc e
    rst $38
    and h
    ld h, a
    sbc b
    sbc b
    ld h, e
    ld h, e
    inc hl
    inc hl
    rst $38
    db $10
    db $10
    ld d, b
    ld d, b
    ld hl, sp+$08
    ld l, [hl]
    ld [hl], d

jr_014_7bf6:
    rst $38
    ld c, e
    call z, Call_000_3211
    add h
    adc l
    xor l
    xor l
    rst $38
    ld h, $3f
    ret z

    rst $10
    or h
    ei
    ccf
    ld e, b
    rst $38
    ld d, [hl]
    ld l, b
    inc a
    ld hl, $101b
    ld [bc], a
    sbc $ff
    ld b, c
    cp a

jr_014_7c14:
    db $10
    rst $28
    ccf
    ret nz

    pop af
    ld bc, $0eff
    dec bc
    ld h, a
    sbc h
    call z, $e473
    db $e4
    rst $38
    push bc
    db $fd
    rla
    rst $28
    inc hl
    rst $18
    ldh [rNR34], a
    rst $38
    push af
    rst $08
    cp l
    ld l, e
    ld e, e
    add a
    or [hl]
    adc $ff
    dec a
    add e
    adc $b9
    or a
    ld c, h
    ld a, [hl]
    or e
    db $fc
    nop
    jr nz, jr_014_7c43

    ld a, [de]

jr_014_7c43:
    ld b, c
    xor c

jr_014_7c45:
    adc $7d
    or d
    rst $18
    db $fd
    ld h, h
    dec b
    ld a, [de]
    add e
    ld a, [hl]
    jp $a33e


    ld e, [hl]
    db $db
    swap [hl]
    ld b, e
    nop
    db $d3
    ld l, $41
    nop
    xor c
    ld d, [hl]
    inc hl
    push de
    ld a, [hl+]
    add c
    jr jr_014_7c14

    ld c, h
    ld h, $00
    nop
    ldh a, [rKEY1]
    ld sp, $db00
    rst $18
    ld b, c
    ld hl, $e000
    ld e, a
    ld b, c
    ld d, l
    rst $38
    ld a, a
    ld a, e
    cp a
    ld b, b
    ld h, c
    rrca
    ld a, l
    inc b
    dec b
    ld hl, sp+$41
    ld d, l
    db $fc
    ld h, c
    ld b, l
    ld bc, $b832
    ld l, a
    ld e, b
    rst $10
    or l
    ld a, e
    rst $38
    db $fc
    rlca
    and c
    ld a, a
    adc b
    ld a, a
    and h
    rst $30
    rst $38
    ld [hl], l
    adc l
    jp c, $7557

    ei
    xor d
    ld [hl], a
    rst $38
    push af
    rlca
    or [hl]
    ld a, $1d
    ld a, a
    and e
    ld h, d
    rst $38
    ret


    jr c, jr_014_7c45

    ld a, b
    call $853c
    ld a, h
    rst $38
    push bc
    inc a
    adc e
    ld a, [hl]
    rst $00
    ld a, $97
    sub c
    rst $38
    inc l
    ld a, [hl+]
    sub [hl]
    sbc d
    dec l
    ld sp, $a1bd
    rst $38
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, Jump_000_08ee

    ld c, a
    rst $38
    ld d, h
    call c, $9b1a
    ld [hl], $b6
    daa
    or a
    rst $38
    ld [hl+], a
    or e
    ld e, b
    ret c

    sub a
    rst $18
    ld [bc], a
    and $ff
    ld [hl+], a
    ld [hl-], a
    ld e, e
    db $db
    ld h, l
    ld l, l
    db $e4
    db $ed
    rst $38
    ld e, c
    reti


    dec bc
    dec de
    sub $f6
    db $10
    ld h, a
    rst $38
    dec sp
    ld c, h
    ld [de], a
    daa
    dec d
    ld [hl+], a
    dec c
    ld [hl], a
    rst $38
    ld a, [hl+]
    pop de
    ld e, $e7
    adc c
    ldh a, [c]
    ld c, h
    or e
    rst $38
    daa
    call c, $e619
    and [hl]
    ld a, c
    ld h, h
    sbc a
    rst $38
    jp z, $b435

    db $db
    rst $10
    jr z, @-$66

    ld b, [hl]
    rst $38
    ld [hl], c
    xor e
    db $f4
    ld [$67b9], a
    ld l, e
    add a
    rst $38
    cp e
    rst $30
    ld c, d
    and [hl]
    xor c
    ld h, a
    ld b, e
    db $fc
    rst $18
    sbc [hl]
    ldh [c], a
    dec hl
    call Call_000_0033
    ld a, [hl-]
    sub d
    add sp, -$01
    add hl, hl
    or $0f
    ld hl, sp+$40
    rst $38
    sbc [hl]
    ld [hl], e
    rst $38
    ld a, b
    rrca
    call nc, $a99b
    scf
    call c, $ff6f
    ld hl, $ccdf
    inc sp
    add b
    ld b, b
    cp a
    ld a, a
    db $fd
    cp a
    ld hl, $001d
    add d
    ld a, h
    or l
    ld a, c
    xor e
    rst $38
    ld [hl], e
    inc de
    ld [hl+], a
    xor a
    adc $5d
    sbc [hl]
    cp e
    rst $38
    inc a
    ld [hl], a
    ld a, b
    jp hl


    or $d7
    xor $af
    rst $38
    sbc $ab
    ld [hl], a
    or l
    ld a, e
    cp $01
    add c
    ei
    ld b, d
    cp [hl]
    ld h, h
    ld [bc], a
    ld a, a
    add b
    ld [hl], b
    or b
    ld a, c
    rst $30
    cp c
    ld h, b
    and b
    or b
    rrca
    cp a
    ccf
    ret nz

    jr nz, @+$01

    rst $18
    db $fd
    inc bc
    ccf
    dec a
    rst $00
    push bc
    rlca
    rst $38
    dec b
    ccf
    dec a
    inc bc
    db $fd
    db $fd
    inc bc
    add a
    rst $38
    ld a, e
    ld e, h
    db $e3
    and [hl]
    push de
    ld e, e
    cp d
    add hl, sp
    rst $38
    call nz, $fb17
    adc a
    ld sp, hl
    ld [hl+], a
    db $fd
    ld a, [bc]
    rst $38
    db $fd
    cp h
    jp $9527


    db $d3
    ld [$ffa9], a
    db $e4
    scf
    ei
    push bc
    di
    ld [hl], $bd
    ld e, $f9
    ld a, l
    ld bc, $4917
    nop
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

Jump_014_7dda:
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
    ldh a, [$ffbb]
    ld a, b
    rst $38
    ld e, l
    cp h
    cpl
    sbc $ff
    nop
    dec hl
    jp c, Jump_000_29ff

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

jr_014_7ead:
    cp $01
    jr nz, jr_014_7ead

    add a
    push de
    ld l, l
    xor d
    rst $18
    push hl
    rst $38
    xor a
    ld [hl], d
    cp a
    push bc
    ld [hl], a
    or [hl]
    ld a, $9d
    ld bc, $ff7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_014_7f8c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
