; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    db $05

    xor a
    ld [GrabbingDog], a
    ld [$c780], a
    ld [$c820], a
    ld [$b88d], a
    ld [$b88c], a
    ld a, $01
    ld [OutsideFarm], a
    call Call_000_0f81
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $7319
    ld c, $05
    ld de, $8800
    call Call_000_2f41
    ld hl, $6b95
    ld c, $05
    ld de, $9000
    call Call_000_2f41
    ld hl, $7807
    ld c, $05
    ld de, $8000
    call Call_000_2f41
    ld hl, $6ab6
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    ld a, $cd
    ld [$cb5c], a
    ld a, $c8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $07
    ldh [WindowX], a
    ld a, $68
    ldh [WindowY], a
    ld [$c820], a
    ld a, $1d
    ld [TransitionRelated], a
    ld a, $22
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, [$cbe8]
    ld [$cb51], a
    ld a, $00
    ld [$cbe8], a
    call Call_005_4525
    call Call_000_1287
    call Call_005_44b3
    call Call_005_45c7
    call Call_005_4525
    ld a, $00
    call Call_000_166a
    ld a, $83
    ld [$c0a2], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    call Call_000_0f40
    call Call_000_3d18
    ret


    db $cd, $e9, $0a, $af, $ea, $5a, $cb, $ea, $5b, $cb, $cd, $1d, $3c, $cd, $d2, $40
    db $cd, $71, $2b, $cd, $2c, $36, $cd, $3d, $43, $c9, $fa, $4e, $cb, $b7, $c0, $fa
    db $4f, $cb, $b7, $c0, $fa, $56, $cb, $b7, $c0, $fa, $52, $cb, $fe, $ff, $c0, $cd
    db $a4, $43, $cd, $c6, $0e, $cd, $2b, $41, $f0, $8a, $e6, $02, $28, $04, $cd, $9b
    db $43, $c9, $f0, $8b, $e6, $08, $28, $04, $cd, $25, $19, $c9, $f0, $8a, $e6, $80
    db $c2, $77, $43, $f0, $8a, $e6, $40, $c2, $80, $43, $f0, $8a, $e6, $20, $c2, $89
    db $43, $f0, $8a, $e6, $10, $c2, $92, $43, $fa, $12, $c9, $b7, $c0, $3e, $00, $cd
    db $6a, $16, $c9, $f0, $8b, $fe, $01, $c0, $fa, $34, $cb, $e6, $01, $ca, $95, $42
    db $fa, $33, $cb, $b7, $ca, $95, $42, $fe, $80, $ca, $28, $43, $f5, $cd, $4f, $44
    db $f1, $21, $a3, $b8, $3d, $85, $6f, $3e, $00, $8c, $67, $af, $77, $3e, $35, $cd
    db $d8, $23, $fa, $33, $cb, $3d, $26, $00, $6f, $29, $29, $29, $29, $11, $2b, $46
    db $19, $e5, $11, $08, $00, $19, $d1, $1a, $13, $4f, $1a, $13, $47, $f0, $41, $e6
    db $02, $20, $fa, $2a, $23, $02, $03, $2a, $23, $02, $3e, $1f, $81, $4f, $3e, $00
    db $88, $47, $f0, $41, $e6, $02, $20, $fa, $2a, $23, $02, $03, $2a, $23, $02, $13
    db $13, $1a, $13, $13, $47, $1a, $13, $4f, $c5, $fa, $0c, $b9, $cd, $1e, $07, $c1
    db $78, $87, $85, $6f, $3e, $00, $8c, $67, $fa, $0d, $b9, $57, $fa, $0e, $b9, $5f
    db $19, $3e, $00, $22, $3e, $01, $77, $fa, $33, $cb, $3d, $fe, $1d, $20, $08, $3e
    db $01, $ea, $07, $b9, $c3, $6d, $42, $21, $22, $1b, $85, $6f, $3e, $00, $8c, $67
    db $46, $21, $f8, $b8, $fa, $fb, $b8, $fe, $02, $28, $62, $fe, $01, $28, $2f, $fa
    db $f8, $b8, $fe, $ff, $28, $18, $fa, $f9, $b8, $fe, $ff, $20, $11, $fa, $f9

MoveToHouse::
    db $b8, $cd, $9f, $42, $78, $ea, $f9, $b8, $3e, $01, $ea, $fb, $b8, $18, $67, $fa
    db $f8, $b8, $cd, $9f, $42, $78, $ea, $f8, $b8, $af, $ea, $fb, $b8, $18, $57, $fa
    db $f9, $b8, $fe, $ff, $28, $17, $fa, $f8, $b8, $fe, $ff, $20, $10, $fa, $f8, $b8
    db $cd, $9f, $42, $78, $ea, $f8, $b8, $af, $ea, $fb, $b8, $18, $39, $fa, $f9, $b8
    db $cd, $9f, $42, $78, $ea, $f9, $b8, $3e, $01, $ea, $fb, $b8, $18, $28, $fa, $f8
    db $b8, $fe, $ff, $20, $10, $fa, $f8, $b8, $cd, $9f, $42, $78, $ea, $f8, $b8, $af
    db $ea, $fb, $b8, $18, $11, $fa, $f9, $b8, $cd, $9f, $42, $78, $ea, $f9, $b8, $3e
    db $01, $ea, $fb, $b8, $18, $00, $af, $ea, $0e, $c9, $ea, $34, $cb, $c5, $3e, $03
    db $cd, $6a, $16, $c1, $78, $cd, $e3, $16, $21, $2a, $c6, $fa, $0a, $c6, $d6, $00
    db $22, $fa, $0b, $c6, $d6, $1c, $22, $3e, $10, $ea, $12, $c9, $e1, $c9, $21, $31
    db $52, $3e, $01, $cd, $96, $1f, $e1, $c9, $fe, $ff, $c8, $c5, $4f, $21, $22, $1b
    db $06, $00, $2a, $b9, $28, $03, $04, $18, $f9, $78, $c5, $21, $a3, $b8, $85, $6f
    db $3e, $00, $8c, $67, $3e, $01, $77, $78, $fe, $1d, $28, $62, $fe, $1e, $28, $5e
    db $6f, $26, $00, $29, $29, $29, $29, $01, $2b, $46, $09, $2a, $4f, $2a, $47, $7e
    db $e5, $5f, $60, $69, $f0, $41, $e6, $02, $20, $fa, $7b, $1c, $22, $7b, $77, $3e
    db $0f, $83, $5f, $01, $1f, $00, $09, $f0, $41, $e6, $02, $20, $fa, $7b, $1c, $22
    db $7b, $77, $d1, $13, $13, $1a, $13, $13, $47, $1a, $13, $4f, $c5, $fa, $0c, $b9
    db $cd, $1e, $07, $c1, $78, $87, $85, $6f, $3e, $00, $8c, $67, $fa, $0d, $b9, $57
    db $fa, $0e, $b9, $5f, $19, $c1, $78, $3c, $22, $3e, $01, $77, $c1, $c9, $c1, $c1
    db $c9, $3e, $06, $ea, $50, $cb, $3e, $1d, $ea, $4f, $cb, $fa, $51, $cb, $ea, $e8
    db $cb, $af, $ea, $0f, $c9, $c9, $fa, $4f, $cb, $b7, $c0, $fa, $11, $c9, $b7, $c0
    db $fa, $0d, $c6, $fe, $03, $c0, $fa, $0b, $c6, $fe, $38, $d0, $3e, $20, $ea, $11
    db $c9, $fa, $06, $c6, $e6, $f8, $f6, $08, $ea, $06, $c6, $fa, $08, $c6, $e6, $f8
    db $f6, $08, $ea, $08, $c6, $3e, $02, $ea, $10, $c9, $3e, $01, $ea, $0f, $c9, $c9
    db $3e, $02, $21, $ba, $52, $cd, $96, $1f, $c9, $3e, $02, $21, $00, $53, $cd, $96
    db $1f, $c9, $3e, $02, $21, $46, $53, $cd, $96, $1f, $c9, $3e, $02, $21, $8c, $53
    db $cd, $96, $1f, $c9, $3e, $02, $21, $d2, $53, $cd, $96, $1f, $c9, $fa, $11, $c9
    db $b7, $c8, $fa, $0f, $c9, $fe, $00, $20, $23, $fa, $11, $c9, $3d, $ea, $11, $c9
    db $fe, $00, $28, $02, $e1, $c9, $3e, $01, $ea, $50, $cb, $3e, $1d, $ea, $4f, $cb
    db $fa, $51, $cb, $ea, $e8, $cb, $3e, $03, $ea, $10, $c9, $c9, $fa, $11, $c9, $3d
    db $ea, $11, $c9, $fe, $00, $28, $35, $fe, $1e, $20, $48, $21, $49, $98, $f0, $41
    db $e6, $02, $20, $fa, $3e, $00, $22, $77, $21, $69, $98, $f0, $41, $e6, $02, $20
    db $fa, $3e, $00, $22, $77, $3e, $1f, $85, $6f, $3e, $00, $8c, $67, $21, $89, $98
    db $f0, $41, $e6, $02, $20, $fa, $3e, $00, $22, $77, $e1, $c9, $3e, $08, $ea, $50
    db $cb, $3e, $1d, $ea, $4f, $cb, $af, $ea, $79, $cc, $ea, $7b, $cc, $fa, $51, $cb
    db $ea, $e8, $cb, $cd, $80, $43, $e1, $c9, $00, $00, $01, $03, $02, $13, $14, $16
    db $15, $17, $0d, $0e, $10, $11, $12, $19, $18, $0f, $0c, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $1b, $1c, $1a, $1d, $1e, $21, $2f, $44, $85, $6f, $3e, $00, $8c
    db $67, $7e, $47, $3e, $01, $ea, $c0, $c7, $3e, $0d, $ea, $c1, $c7, $78, $ea, $c2
    db $c7, $af, $ea, $c3, $c7, $3e, $50, $ea, $d1, $c7, $af, $ea, $ce, $c7, $ea, $c5
    db $c7, $ea, $c4, $c7, $3e, $50, $ea, $ca, $c7, $3e, $10, $ea, $cb, $c7, $3e, $01
    db $ea, $e0, $c7, $3e, $0d, $ea, $e1, $c7, $78, $c6, $20, $ea, $e2, $c7, $af, $ea
    db $e3, $c7, $3e, $50, $ea, $f1, $c7, $af, $ea, $ee, $c7, $ea, $e5, $c7, $ea, $e4
    db $c7, $3e, $50, $ea, $ea, $c7, $3e, $10, $ea, $eb, $c7, $c9

Call_005_44b3:
    ld hl, $9c00
    ld de, $44c1
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


    db $c0, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1
    db $c1, $c1, $c1, $c2, $c6, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd
    db $cd, $cd, $cd, $cd, $cd, $cd, $cd, $c7, $c6, $cd, $cd, $cd, $cd, $cd, $cd, $cd
    db $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $c7, $c6, $cd, $cd, $cd
    db $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $c7
    db $c3, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4, $c4
    db $c4, $c4, $c4, $c5

Call_005_4525:
    ld a, [$c910]
    cp $01
    jr z, jr_005_4543

    cp $02
    jr z, jr_005_4555

    ld hl, $4567
    ld de, $c600
    ld b, $20
    call Call_000_210f
    ld a, $24
    ldh [CameraY], a
    xor a
    ldh [CameraX], a
    ret


jr_005_4543:
    ld hl, $4587
    ld de, $c600
    ld b, $20
    call Call_000_210f
    xor a
    ldh [CameraY], a
    xor a
    ldh [CameraX], a
    ret


jr_005_4555:
    ld hl, $45a7
    ld de, $c600
    ld b, $20
    call Call_000_210f
    xor a
    ldh [CameraY], a
    xor a
    ldh [CameraX], a
    ret


    db $01, $00, $ff, $00, $00, $08, $58, $00, $80, $00, $50, $64, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $01, $00, $ff, $00, $00, $08, $18, $00, $3d, $00, $10, $45, $00, $03, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $01, $00, $ff, $00, $00, $08, $58, $00, $2d, $00, $50, $35, $00, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Call_005_45c7:
    ld b, $00
    ld hl, $b8a3

jr_005_45cc:
    ld a, [hl+]
    cp $00
    jr z, jr_005_4624

    ld a, b
    push hl
    ld de, $462b
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    ld c, a
    inc de
    push de
    ld [hl+], a
    inc a
    ld [hl], a
    add $0f
    ld d, a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, d
    ld [hl+], a
    inc a
    ld [hl], a
    pop de
    inc de
    ld a, [de]
    ld c, a
    push bc
    inc de
    inc de
    ld a, [de]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop bc
    ld a, c
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, b
    inc a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    pop hl

jr_005_4624:
    inc b
    ld a, b
    cp $1d
    jr nz, jr_005_45cc

    ret


    db $ab, $99, $48, $00, $06, $00, $07, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $ad, $99, $4a, $00, $07, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $af, $99, $4c, $00, $08, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $b1, $99, $4e, $00, $09, $00, $07, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $ab, $99, $68, $00, $06, $00, $07, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $ad, $99, $6a, $00, $07, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $af, $99, $6c, $00, $08, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $b1, $99, $6e, $00, $09, $00, $07, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $a1, $99, $60, $00, $01, $00, $07, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $a3, $99, $62, $00, $02, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $a5, $99, $64, $00, $03, $00, $07, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $a7, $99, $66, $00, $04, $00, $07, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $a7, $99, $a6, $00, $04, $00, $07, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $a7, $99, $a4, $00, $04, $00, $07, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $21, $99, $28, $00, $01, $00, $05, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $23, $99, $2a, $00, $02, $00, $05, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $25, $99, $2c, $00, $03, $00, $05, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $27, $99, $2e, $00, $04, $00, $05, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $2b, $99, $08, $00, $06, $00, $05, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $2d, $99, $0a, $00, $07, $00, $05, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $2f, $99, $0c, $00, $08, $00, $05, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $31, $99, $0e, $00, $09, $00, $05, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $ab, $98, $d8, $00, $06, $00, $03, $00, $a8, $00, $a9, $00, $b8, $00, $b9, $00
    db $ad, $98, $da, $00, $07, $00, $03, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $af, $98, $dc, $00, $08, $00, $03, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $b1, $98, $de, $00, $09, $00, $03, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $a3, $98, $d2, $00, $02, $00, $03, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $a5, $98, $d4, $00, $03, $00, $03, $00, $aa, $00, $ab, $00, $ba, $00, $bb, $00
    db $a7, $98, $d6, $00, $04, $00, $03, $00, $ae, $00, $af, $00, $be, $00, $bf, $00
    db $00, $00, $ef, $48, $00, $00, $f1, $48, $00, $00, $f3, $48, $00, $00, $f5, $48
    db $00, $00, $f7, $48, $00, $00, $f9, $48, $00, $00, $fb, $48, $00, $00, $fd, $48
    db $00, $00, $ff, $48, $00, $00, $01, $49, $00, $00, $03, $49, $00, $00, $05, $49
    db $00, $00, $07, $49, $00, $00, $09, $49, $00, $00, $0b, $49, $00, $00, $0d, $49
    db $00, $00, $0f, $49, $00, $00, $11, $49, $00, $00, $13, $49, $00, $00, $15, $49
    db $00, $00, $17, $49, $00, $00, $19, $49, $00, $00, $1b, $49, $00, $00, $1d, $49
    db $00, $00, $1f, $49, $00, $00, $21, $49, $00, $00, $23, $49, $00, $00, $25, $49
    db $00, $00, $27, $49, $00, $00, $29, $49, $00, $00, $2b, $49, $00, $00, $2d, $49
    db $00, $00, $30, $4c, $00, $00, $32, $4c, $00, $00, $34, $4c, $00, $00, $36, $4c
    db $00, $00, $38, $4c, $00, $00, $3a, $4c, $00, $00, $3c, $4c, $00, $00, $3e, $4c
    db $00, $00, $40, $4c, $00, $00, $42, $4c, $00, $00, $44, $4c, $00, $00, $46, $4c
    db $00, $00, $48, $4c, $00, $00, $4a, $4c, $00, $00, $4c, $4c, $00, $00, $4e, $4c
    db $00, $00, $50, $4c, $00, $00, $52, $4c, $00, $00, $54, $4c, $00, $00, $56, $4c
    db $00, $00, $58, $4c, $00, $00, $5a, $4c, $00, $00, $5c, $4c, $00, $00, $5e, $4c
    db $00, $00, $60, $4c, $00, $00, $62, $4c, $00, $00, $64, $4c, $00, $00, $66, $4c
    db $00, $00, $68, $4c, $2f, $49, $48, $49, $61, $49, $7a, $49, $9b, $49, $c0, $49
    db $e5, $49, $06, $4a, $17, $4a, $34, $4a, $55, $4a, $7e, $4a, $93, $4a, $a4, $4a
    db $b5, $4a, $c6, $4a, $d7, $4a, $e8, $4a, $05, $4b, $22, $4b, $43, $4b, $64, $4b
    db $85, $4b, $ae, $4b, $c7, $4b, $e4, $4b, $f5, $4b, $06, $4c, $17, $4c, $30, $4c
    db $30, $4c, $30, $4c, $f8, $00, $f1, $00, $f8, $f8, $f0, $00, $00, $08, $cc, $00
    db $f8, $08, $ca, $00, $00, $f0, $cb, $00, $f8, $f0, $c9, $00, $80, $00, $08, $cc
    db $00, $f8, $08, $ca, $00, $00, $f0, $cb, $00, $f8, $f0, $c9, $00, $f8, $00, $f3
    db $00, $f8, $f8, $f2, $00, $80, $00, $08, $cc, $00, $f8, $08, $ca, $00, $f8, $00
    db $f5, $00, $f8, $f8, $f4, $00, $00, $f0, $cb, $00, $f8, $f0, $c9, $00, $80, $00
    db $10, $cc, $00, $f8, $10, $ca, $00, $00, $e8, $cb, $00, $f8, $e8, $c9, $00, $f8
    db $08, $f9, $00, $f8, $00, $f8, $00, $f8, $f8, $f7, $00, $f8, $f0, $f6, $00, $80
    db $00, $14, $cc, $00, $f8, $14, $ca, $00, $00, $e4, $cb, $00, $f8, $e4, $c9, $00
    db $f8, $0c, $fd, $00, $f8, $04, $fc, $00, $f8, $fc, $fb, $00, $f8, $f4, $fa, $00
    db $f8, $ec, $f0, $00, $80, $00, $20, $cc, $00, $f8, $20, $ca, $00, $f8, $18, $fd
    db $00, $f8, $10, $fc, $00, $f8, $08, $fb, $00, $f8, $e8, $ff, $00, $f8, $e0, $fe
    db $00, $00, $d8, $cb, $00, $f8, $d8, $c9, $00, $80, $f8, $f0, $f1, $00, $00, $18
    db $cc, $00, $f8, $18, $ca, $00, $f8, $10, $fd, $00, $f8, $08, $fc, $00, $f8, $00
    db $fb, $00, $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $00, $20, $cc, $00, $f8
    db $20, $ca, $00, $00, $d8, $cb, $00, $f8, $d8, $c9, $00, $80, $00, $14, $cc, $00
    db $f8, $14, $ca, $00, $f8, $0c, $fd, $00, $f8, $04, $fc, $00, $f8, $fc, $fb, $00
    db $00, $e4, $cb, $00, $f8, $e4, $c9, $00, $80, $f8, $f0, $f0, $00, $00, $20, $cc
    db $00, $f8, $20, $ca, $00, $f8, $18, $fd, $00, $f8, $10, $fc, $00, $f8, $08, $fb
    db $00, $00, $d8, $cb, $00, $f8, $d8, $c9, $00, $80, $f8, $f4, $fe, $00, $f8, $ec
    db $f7, $00, $f8, $fc, $f7, $00, $00, $1c, $cc, $00, $f8, $1c, $ca, $00, $f8, $14
    db $fd, $00, $f8, $0c, $fc, $00, $f8, $04, $fb, $00, $00, $dc, $cb, $00, $f8, $dc
    db $c9, $00, $80, $00, $20, $cc, $00, $f8, $20, $ca, $00, $f8, $08, $f9, $00, $00
    db $d8, $cb, $00, $f8, $d8, $c9, $00, $80, $00, $18, $cc, $00, $f8, $18, $ca, $00
    db $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $00, $18, $cc, $00, $f8, $18, $ca
    db $00, $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $00, $0c, $cc, $00, $f8, $0c
    db $ca, $00, $00, $ec, $cb, $00, $f8, $ec, $c9, $00, $80, $00, $08, $cc, $00, $f8
    db $08, $ca, $00, $00, $f0, $cb, $00, $f8, $f0, $c9, $00, $80, $00, $10, $cc, $00
    db $f8, $10, $ca, $00, $00, $e8, $cb, $00, $f8, $e8, $c9, $00, $80, $f8, $04, $f2
    db $00, $f8, $14, $f9, $00, $f8, $fc, $f7, $00, $00, $1c, $cc, $00, $f8, $1c, $ca
    db $00, $00, $dc, $cb, $00, $f8, $dc, $c9, $00, $80, $00, $20, $cc, $00, $f8, $20
    db $ca, $00, $f8, $00, $f2, $00, $f8, $10, $f9, $00, $f8, $f8, $f7, $00, $00, $d8
    db $cb, $00, $f8, $d8, $c9, $00, $80, $f8, $f0, $f9, $00, $f8, $00, $f9, $00, $f8
    db $10, $f1, $00, $f8, $08, $f0, $00, $00, $18, $cc, $00, $f8, $18, $ca, $00, $00
    db $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $f8, $10, $f3, $00, $f8, $08, $f2, $00
    db $f8, $f0, $f9, $00, $f8, $00, $f9, $00, $00, $18, $cc, $00, $f8, $18, $ca, $00
    db $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $f8, $10, $f5, $00, $f8, $08, $f4
    db $00, $f8, $f0, $f9, $00, $f8, $00, $f9, $00, $00, $18, $cc, $00, $f8, $18, $ca
    db $00, $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $00, $20, $cc, $00, $f8, $20
    db $ca, $00, $f8, $18, $f9, $00, $f8, $10, $f8, $00, $f8, $08, $f7, $00, $f8, $00
    db $f6, $00, $f8, $e8, $f9, $00, $f8, $f8, $f9, $00, $00, $d8, $cb, $00, $f8, $d8
    db $c9, $00, $80, $f8, $00, $f2, $00, $f8, $f8, $fb, $00, $00, $18, $cc, $00, $f8
    db $18, $ca, $00, $00, $e0, $cb, $00, $f8, $e0, $c9, $00, $80, $f8, $0c, $fd, $00
    db $f8, $04, $fc, $00, $f8, $fc, $fb, $00, $00, $14, $cc, $00, $f8, $14, $ca, $00
    db $00, $e4, $cb, $00, $f8, $e4, $c9, $00, $80, $00, $14, $cc, $00, $f8, $14, $ca
    db $00, $00, $e4, $cb, $00, $f8, $e4, $c9, $00, $80, $00, $10, $cc, $00, $f8, $10
    db $ca, $00, $00, $e8, $cb, $00, $f8, $e8, $c9, $00, $80, $00, $10, $cc, $00, $f8
    db $10, $ca, $00, $00, $e8, $cb, $00, $f8, $e8, $c9, $00, $80, $f8, $0c, $f0, $00
    db $f8, $04, $fb, $00, $00, $1c, $cc, $00, $f8, $1c, $ca, $00, $00, $dc, $cb, $00
    db $f8, $dc, $c9, $00, $80, $6a, $4c, $73, $4c, $7c, $4c, $85, $4c, $96, $4c, $ab
    db $4c, $d8, $4c, $f9, $4c, $3a, $4d, $57, $4d, $88, $4d, $a9, $4d, $e6, $4d, $17
    db $4e, $48, $4e, $61, $4e, $72, $4e, $93, $4e, $c0, $4e, $f5, $4e, $16, $4f, $37
    db $4f, $58, $4f, $81, $4f, $aa, $4f, $c7, $4f, $f0, $4f, $11, $50, $32, $50, $00
    db $00, $6f, $00, $00, $f8, $6e, $00, $80, $00, $00, $7f, $00, $00, $f8, $7e, $00
    db $80, $00, $00, $15, $00, $00, $f8, $14, $00, $80, $00, $08, $19, $00, $00, $00
    db $18, $00, $00, $f8, $17, $00, $00, $f0, $16, $00, $80, $00, $ec, $6e, $00, $00
    db $0c, $1d, $00, $00, $04, $1c, $00, $00, $fc, $1b, $00, $00, $f4, $1a, $00, $80
    db $00, $18, $1d, $00, $00, $10, $1c, $00, $00, $08, $1b, $00, $00, $00, $32, $00
    db $00, $f8, $31, $00, $00, $f0, $30, $00, $f8, $00, $22, $00, $f8, $f8, $21, $00
    db $f8, $f0, $20, $00, $00, $e8, $1f, $00, $00, $e0, $1e, $00, $80, $00, $f0, $6f
    db $00, $00, $10, $1d, $00, $00, $08, $1c, $00, $00, $00, $1b, $00, $00, $f8, $33
    db $00, $f8, $f8, $23, $00, $00, $e8, $33, $00, $f8, $e8, $23, $00, $80, $00, $18
    db $7d, $00, $00, $10, $7c, $00, $f8, $18, $6d, $00, $f8, $10, $6c, $00, $00, $08
    db $37, $00, $00, $00, $36, $00, $00, $f8, $35, $00, $f8, $08, $27, $00, $f8, $00
    db $26, $00, $f8, $f8, $25, $00, $00, $f0, $32, $00, $f8, $f0, $22, $00, $00, $e8
    db $34, $00, $f8, $e8, $24, $00, $00, $e0, $33, $00, $f8, $e0, $23, $00, $80, $00
    db $0c, $1d, $00, $00, $04, $1c, $00, $00, $fc, $1b, $00, $00, $f4, $39, $00, $00
    db $ec, $38, $00, $f8, $f4, $29, $00, $f8, $ec, $28, $00, $80, $00, $f0, $6e, $00
    db $00, $18, $1d, $00, $00, $10, $1c, $00, $00, $08, $1b, $00, $00, $00, $31, $00
    db $f8, $00, $21, $00, $00, $f8, $3c, $00, $f8, $f8, $2c, $00, $00, $e8, $3b, $00
    db $00, $e0, $3a, $00, $f8, $e8, $2b, $00, $f8, $e0, $2a, $00, $80, $00, $14, $1d
    db $00, $00, $0c, $1c, $00, $00, $04, $1b, $00, $00, $fc, $17, $00, $00, $f4, $1e
    db $00, $00, $ec, $17, $00, $00, $e4, $3d, $00, $f8, $e4, $2d, $00, $80, $00, $18
    db $7d, $00, $00, $10, $7c, $00, $f8, $18, $6d, $00, $f8, $10, $6c, $00, $00, $08
    db $19, $00, $00, $e0, $3e, $00, $f8, $e0, $2e, $00, $00, $00, $3f, $00, $f8, $00
    db $2f, $00, $00, $f8, $36, $00, $f8, $f8, $26, $00, $00, $f0, $3b, $00, $f8, $f0
    db $2b, $00, $00, $e8, $35, $00, $f8, $e8, $25, $00, $80, $00, $10, $7d, $00, $00
    db $08, $7c, $00, $f8, $10, $6d, $00, $f8, $08, $6c, $00, $00, $00, $53, $00, $00
    db $f8, $52, $00, $00, $f0, $51, $00, $00, $e8, $50, $00, $f8, $00, $43, $00, $f8
    db $f8, $42, $00, $f8, $f0, $41, $00, $f8, $e8, $40, $00, $80, $00, $10, $5b, $00
    db $f8, $10, $4b, $00, $00, $08, $56, $00, $f8, $08, $46, $00, $00, $00, $50, $00
    db $f8, $00, $40, $00, $00, $f8, $55, $00, $f8, $f8, $45, $00, $00, $f0, $54, $00
    db $f8, $f0, $44, $00, $00, $e8, $54, $00, $f8, $e8, $44, $00, $80, $00, $fc, $3a
    db $00, $f8, $fc, $2a, $00, $00, $04, $37, $00, $f8, $04, $27, $00, $00, $f4, $3e
    db $00, $f8, $f4, $2e, $00, $80, $00, $00, $58, $00, $00, $f8, $57, $00, $f8, $00
    db $48, $00, $f8, $f8, $47, $00, $80, $00, $08, $35, $00, $f8, $08, $25, $00, $00
    db $00, $34, $00, $f8, $00, $24, $00, $00, $f8, $5a, $00, $00, $f0, $59, $00, $f8
    db $f8, $4a, $00, $f8, $f0, $49, $00, $80, $00, $04, $7e, $00, $00, $14, $19, $00
    db $00, $0c, $3a, $00, $f8, $0c, $2a, $00, $00, $fc, $17, $00, $00, $f4, $3f, $00
    db $f8, $f4, $2f, $00, $00, $ec, $5c, $00, $f8, $ec, $4c, $00, $00, $e4, $39, $00
    db $f8, $e4, $29, $00, $80, $00, $00, $7e, $00, $00, $18, $5d, $00, $f8, $18, $4d
    db $00, $00, $10, $19, $00, $00, $08, $3a, $00, $f8, $08, $2a, $00, $00, $f8, $17
    db $00, $00, $f0, $3f, $00, $f8, $f0, $2f, $00, $00, $e8, $5c, $00, $f8, $e8, $4c
    db $00, $00, $e0, $39, $00, $f8, $e0, $29, $00, $80, $00, $10, $6f, $00, $00, $08
    db $6e, $00, $00, $00, $19, $00, $00, $f8, $5e, $00, $f8, $f8, $4e, $00, $00, $f0
    db $19, $00, $00, $e8, $39, $00, $f8, $e8, $29, $00, $80, $00, $10, $7f, $00, $00
    db $08, $7e, $00, $00, $00, $19, $00, $00, $f8, $5e, $00, $f8, $f8, $4e, $00, $00
    db $f0, $19, $00, $00, $e8, $39, $00, $f8, $e8, $29, $00, $80, $00, $10, $15, $00
    db $00, $08, $14, $00, $00, $00, $19, $00, $00, $f8, $5e, $00, $f8, $f8, $4e, $00
    db $00, $f0, $19, $00, $00, $e8, $39, $00, $f8, $e8, $29, $00, $80, $00, $18, $19
    db $00, $00, $10, $18, $00, $00, $08, $17, $00, $00, $00, $16, $00, $00, $f8, $19
    db $00, $00, $f0, $5e, $00, $f8, $f0, $4e, $00, $00, $e8, $19, $00, $00, $e0, $39
    db $00, $f8, $e0, $29, $00, $80, $00, $00, $7e, $00, $00, $10, $3f, $00, $f8, $10
    db $2f, $00, $00, $08, $39, $00, $f8, $08, $29, $00, $00, $f8, $1b, $00, $00, $f0
    db $55, $00, $f8, $f0, $45, $00, $00, $e8, $53, $00, $f8, $e8, $43, $00, $80, $00
    db $0c, $1d, $00, $00, $04, $1c, $00, $00, $fc, $1b, $00, $00, $f4, $55, $00, $f8
    db $f4, $45, $00, $00, $ec, $53, $00, $f8, $ec, $43, $00, $80, $00, $0c, $51, $00
    db $f8, $0c, $41, $00, $00, $04, $71, $00, $f8, $04, $61, $00, $00, $fc, $53, $00
    db $f8, $fc, $43, $00, $00, $f4, $50, $00, $f8, $f4, $40, $00, $00, $ec, $70, $00
    db $f8, $ec, $60, $00, $80, $00, $08, $74, $00, $00, $00, $73, $00, $f8, $08, $64
    db $00, $f8, $00, $63, $00, $00, $f8, $56, $00, $f8, $f8, $46, $00, $00, $f0, $72
    db $00, $f8, $f0, $62, $00, $80, $00, $08, $55, $00, $f8, $08, $45, $00, $00, $00
    db $76, $00, $f8, $00, $66, $00, $00, $f8, $75, $00, $f8, $f8, $65, $00, $00, $f0
    db $72, $00, $f8, $f0, $62, $00, $80, $00, $14, $7b, $00, $00, $0c, $7a, $00, $f8
    db $14, $6b, $00, $f8, $0c, $6a, $00, $00, $04, $1b, $00, $00, $fc, $56, $00, $f8
    db $fc, $46, $00, $00, $f4, $79, $00, $00, $ec, $78, $00, $f8, $f4, $69, $00, $f8
    db $ec, $68, $00, $00, $e4, $77, $00, $f8, $e4, $67, $00, $80, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50
    db $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $e7, $50, $f0, $00, $ff

    db $00, $21, $01, $22, $02, $23, $03, $60, $04, $31, $05, $32, $06, $33, $07, $70
    db $08, $41, $09, $42, $0a, $43, $0b, $2f, $0c, $ba, $0d, $bb, $0e, $c9, $0f, $3f

    db $10, $21, $11, $22, $12, $23, $13, $60, $14, $31, $15, $32, $16, $33, $17, $70
    db $18, $41, $19, $42, $1a, $43, $1b, $2f, $1c, $ba, $1d, $bb, $1e, $c9, $1f, $3f

    ld a, [$cb7d]
    or a
    ret z

    ld a, [$cb7d]
    dec a
    ld [$cb7d], a
    ld a, [$cb7d]
    cp $0f
    jr z, jr_005_5142

    cp $07
    jr z, jr_005_514c

    ret


jr_005_5142:
    ld a, $35
    call Call_000_23d8
    ld hl, $50ea
    jr jr_005_514f

jr_005_514c:
    ld hl, $510a

jr_005_514f:
    ld d, h
    ld e, l
    ld c, $10

jr_005_5153:
    push bc
    inc de
    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9000
    add hl, bc
    ld a, h
    cp $98
    jr c, jr_005_516a

    ld bc, $f000
    add hl, bc

jr_005_516a:
    ld b, h
    ld c, l
    dec de
    ld a, [de]
    push de
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7b3b
    add hl, de
    ld e, c
    ld d, b
    ld b, $08

jr_005_517e:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_005_517e

    pop de
    inc de
    inc de
    pop bc
    dec c
    jr nz, jr_005_5153

    ret


    ld a, [CameraXPosition]
    sub $07
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $07
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [$cb30], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb31], a
    ld a, [hl+]
    ld [$cb32], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [$cb33], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [CameraXPosition]
    sub $07
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $07
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [$cb30], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb31], a
    ld a, [hl+]
    ld [$cb32], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [$cb33], a
    ld a, [hl+]
    ld [$cb34], a
    ld a, [$cb84]
    or a
    call nz, Call_005_535f
    ld a, [$cb4a]
    or a
    call nz, Call_005_535f
    ld a, [GrabbingDog3]
    or a
    call nz, Call_005_5399
    ret


Call_005_535f:
    ld a, [$cb30]
    and $80
    ret z

    ld a, [$cb2f]
    cp $66
    jr nz, jr_005_5372

    ld a, $01
    ld [$cb30], a
    ret


jr_005_5372:
    cp $83
    jr nz, jr_005_537c

    ld a, $01
    ld [$cb30], a
    ret


jr_005_537c:
    cp $a7
    jr nz, jr_005_5386

    ld a, $01
    ld [$cb30], a
    ret


jr_005_5386:
    cp $b6
    jr nz, jr_005_5390

    ld a, $01
    ld [$cb30], a
    ret


jr_005_5390:
    cp $c7
    ret nz

    ld a, $01
    ld [$cb30], a
    ret


Call_005_5399:
    ld a, [$cb30]
    and $80
    ret z

    ld a, [$cb2f]
    cp $83
    jr nz, jr_005_53ac

    ld a, $01
    ld [$cb30], a
    ret


jr_005_53ac:
    cp $a7
    jr nz, jr_005_53b6

    ld a, $01
    ld [$cb30], a
    ret


jr_005_53b6:
    cp $b6
    ret nz

    ld a, $01
    ld [$cb30], a
    ret


    db $c9

    ld a, [PlayerOrCameraYPosition]
    add $03
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [CameraXPosition]
    sub $09
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [$cb30], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb31], a
    ld a, [hl+]
    ld [$cb32], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [$cb33], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [PlayerOrCameraYPosition]
    add $03
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [CameraXPosition]
    add $08
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb2f], a
    ld a, [hl+]
    ld [$cb30], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb31], a
    ld a, [hl+]
    ld [$cb32], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb35], a
    ld a, l
    ld [$cb36], a
    ld a, [hl+]
    ld [$cb33], a
    ld a, [hl+]
    ld [$cb34], a
    ret


    ld a, [CameraXPosition]
    sub $07
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $07
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    sub $08
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [CameraXPosition]
    sub $07
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $07
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $10
    add $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [CameraXPosition]
    sub $11
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa6], a
    ld a, [CameraXPosition]
    add $10
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3d], a
    ld a, [hl+]
    ld [$cb3e], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb3f], a
    ld a, [hl+]
    ld [$cb40], a
    ldh a, [$ffa6]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, h
    ld [$cb43], a
    ld a, l
    ld [$cb44], a
    ld a, [hl+]
    ld [$cb41], a
    ld a, [hl+]
    ld [$cb42], a
    ret


    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0d
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb46], a
    ld a, [hl+]
    ld [$cb47], a
    dec hl
    dec hl
    ld a, h
    ld [$cb48], a
    ld a, l
    ld [$cb49], a
    ret


    ld a, [CameraXPosition]
    sub $07
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $07
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    ld a, l
    sub $12
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld c, l
    ld a, [$b90c]
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    pop hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [CameraXPosition]
    sub $06
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $06
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $10
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $12
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld c, l
    ld a, [$b90c]
    call Call_000_071e
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    pop hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [PlayerOrCameraYPosition]
    add $03
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    sub $08
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    ld a, l
    sub $12
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [PlayerOrCameraYPosition]
    add $03
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $0f
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa5], a
    ld a, [CameraXPosition]
    add $08
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb37], a
    ld a, [hl+]
    ld [$cb38], a
    ldh a, [$ffa5]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb39], a
    ld a, [hl+]
    ld [$cb3a], a
    ret


    ld a, [$c60d]
    rst $00

    db $35, $5c, $c9, $5c, $5f, $5d, $f5, $5d

    db $c9

    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    push hl
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $18
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    sub $18
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    push hl
    ld a, [CameraXPosition]
    sub $11
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $17
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    push hl
    ld a, [CameraXPosition]
    add $10
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    ld a, l
    sub $0f
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    push hl
    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    ld a, l
    sub $08
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ret


    ld a, [$c60d]
    rst $00

    db $9e, $5e, $f4, $5e, $4d, $5f, $a6, $5f

    db $c9

    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $2f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    sub $28
    ld l, a
    ld a, [$c607]
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    ld a, [PlayerOrCameraYPosition]
    add $08
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $27
    ld l, a
    ld a, [$c607]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    sla a
    push af
    ldh a, [$ffa4]
    ld c, a
    ld a, [$b90c]
    call Call_000_071e
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    add $02
    ld l, a
    ld a, [$c609]
    adc $00
    ld h, a
    ld a, l
    sub $1f
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, [$b90c]
    ld c, l
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$b90d]
    ld d, a
    ld a, [$b90e]
    ld e, a
    add hl, de
    ret


    db $fa, $88, $cb, $b7, $c2, $d3, $61, $fa, $60, $c7, $b7, $c8, $fa, $70, $c7, $b7
    db $ca, $fc, $60, $fe, $02, $ca, $21, $61, $fe, $03, $ca, $ad, $61, $fe, $04, $ca
    db $ca, $61, $fa, $71, $c7, $b7, $c8, $3d, $ea, $71, $c7, $fe, $00, $ca, $ce, $61
    db $fa, $66, $c7, $6f, $fa, $67, $c7, $67, $e5, $fa, $68, $c7, $6f, $fa, $69, $c7
    db $67, $44, $4d, $e1, $cd, $70, $6a, $23, $23, $2a, $fe, $0e, $ca, $ce, $61, $3a
    db $fe, $81, $20, $1a, $7e, $fe, $39, $ca, $ce, $61, $fe, $3a, $ca, $ce, $61, $fe
    db $3b, $ca, $ce, $61, $fe, $3c, $ca, $ce, $61, $fe, $46, $d2, $ce, $61, $21, $66
    db $c7, $fa, $6c, $c7, $06, $00, $4f, $e6, $80, $20, $02, $18, $02, $06, $ff, $cd
    db $27, $0a, $fa, $66, $c7, $6f, $fa, $67, $c7, $67, $fa, $06, $c6, $4f, $fa, $07
    db $c6, $47, $7d, $91, $4f, $7c, $98, $47, $fa, $0a, $c6, $81, $4f, $3e, $00, $88
    db $47, $78, $fe, $ff, $20, $07, $79, $fe, $f0, $38, $02, $18, $0e, $78, $b7, $20
    db $05, $79, $fe, $e0, $38, $05, $0e, $c8, $c3, $ce, $61, $79, $ea, $6a, $c7, $fa
    db $68, $c7, $6f, $fa, $69, $c7, $67, $01, $f8, $ff, $09, $fa, $08, $c6, $4f, $fa
    db $09, $c6, $47, $7d, $91, $4f, $7c, $98, $47, $fa, $0b, $c6, $81, $4f, $3e, $00
    db $88, $47, $78, $fe, $ff, $20, $07, $79, $fe, $f0, $38, $02, $18, $09, $78, $b7
    db $28, $05, $0e, $c8, $c3, $ce, $61, $79, $ea, $6b, $c7, $c9, $fa, $71, $c7, $b7
    db $c8, $3d, $ea, $71, $c7, $fe, $00, $ca, $ce, $61, $fa, $5a, $cb, $47, $fa, $6a
    db $c7, $80, $ea, $6a, $c7, $fa, $5b, $cb, $47, $fa, $6b, $c7, $80, $ea, $6b, $c7
    db $c9, $fa, $4e, $cb, $fe, $0c, $d0, $fa, $12, $c9, $ea, $71, $c7, $fa, $71, $c7
    db $b7, $c8, $3d, $ea, $71, $c7, $fe, $00, $ca, $ce, $61, $fe, $b0, $30, $0a, $fe
    db $80, $30, $35, $fe, $50, $30, $17, $18, $49, $fa, $a8, $c0, $e6, $0f, $c2, $82
    db $60, $21, $66, $c7, $01, $ff, $ff, $cd, $27, $0a, $c3, $82, $60, $c9, $3e, $17
    db $cd, $f6, $15, $fa, $a8, $c0, $e6, $1f, $c2, $82, $60, $21, $66, $c7, $01, $01
    db $00, $cd, $27, $0a, $c3, $82, $60, $c9, $3e, $15, $cd, $f6, $15, $fa, $a8, $c0
    db $e6, $1f, $c2, $82, $60, $21, $66, $c7, $01, $01, $00, $cd, $27, $0a, $c3, $82
    db $60, $c9, $3e, $1a, $cd, $f6, $15, $21, $66, $c7, $01, $01, $00, $cd, $27, $0a
    db $21, $68, $c7, $01, $ff, $ff, $cd, $27, $0a, $c3, $82, $60, $c9, $fa, $6c, $c7
    db $fe, $00, $28, $12, $21, $66, $c7, $01, $01, $00, $cd, $27, $0a, $21, $68, $c7
    db $01, $ff, $ff, $cd, $27, $0a, $cd, $e0, $61, $c9, $cd, $e0, $61, $c9, $af, $ea
    db $60, $c7, $c9, $fa, $88, $cb, $3d, $ea, $88, $cb, $3e, $c8, $ea, $6a, $c7, $c9
    db $fa, $66, $c7, $6f, $fa, $67, $c7, $67, $fa, $06, $c6, $4f, $fa, $07, $c6, $47
    db $7d, $91, $4f, $7c, $98, $47, $fa, $0a, $c6, $81, $4f, $3e, $00, $88, $47, $78
    db $fe, $ff, $20, $07, $79, $fe, $f0, $38, $02, $18, $0b, $78, $b7, $20, $05, $79
    db $fe, $e0, $38, $02, $0e, $c8, $79, $ea, $6a, $c7, $fa, $68, $c7, $6f, $fa, $69
    db $c7, $67, $01, $f8, $ff, $09, $fa, $08, $c6, $4f, $fa, $09, $c6, $47, $7d, $91
    db $4f, $7c, $98, $47, $fa, $0b, $c6, $81, $4f, $3e, $00, $88, $47, $78, $fe, $ff
    db $20, $07, $79, $fe, $f0, $38, $02, $18, $06, $78, $b7, $28, $02, $0e, $c8, $79
    db $ea, $6b, $c7, $c9, $fa, $00, $c8, $b7, $c8, $fa, $10, $c8, $fe, $06, $20, $05
    db $cd, $a5, $67, $18, $34, $fe, $05, $20, $05, $cd, $4f, $67, $18, $2b, $fe, $04
    db $20, $05, $cd, $30, $66, $18, $22, $fe, $00, $20, $05, $cd, $fb, $67, $18, $19
    db $fe, $01, $20, $05, $cd, $24, $63, $18, $10, $fe, $02, $20, $05, $cd, $37, $64
    db $18, $07, $fe, $03, $20, $fc, $cd, $8e, $64, $fa, $06, $c8, $6f, $fa, $07, $c8
    db $67, $fa, $06, $c6, $4f, $fa, $07, $c6, $47, $7d, $91, $4f, $7c, $98, $47, $fa
    db $0a, $c6, $81, $4f, $3e, $00, $88, $47, $78, $fe, $ff, $20, $07, $79, $fe, $f0
    db $38, $02, $18, $0e, $78, $b7, $20, $05, $79, $fe, $e0, $38, $05, $0e, $c8, $c3
    db $13, $63, $79, $ea, $0a, $c8, $fa, $08, $c8, $6f, $fa, $09, $c8, $67, $01, $00
    db $00, $09, $fa, $08, $c6, $4f, $fa, $09, $c6, $47, $7d, $91, $4f, $7c, $98, $47
    db $fa, $0b, $c6, $81, $4f, $3e, $00, $88, $47, $78, $fe, $ff, $20, $07, $79, $fe
    db $f0, $38, $02, $18, $09, $78, $b7, $28, $05, $0e, $c8, $c3, $13, $63, $79, $ea
    db $0b, $c8, $c9, $fa, $10, $c8, $fe, $05, $c8, $fe, $06, $c8, $af, $ea, $00, $c8
    db $ea, $12, $c9, $c9, $fa, $11, $c8, $3d, $ea, $11, $c8, $b7, $28, $04, $cd, $fb
    db $67, $c9, $fa, $13, $c8, $fe, $00, $28, $1c, $fe, $01, $28, $3b, $fe, $02, $28
    db $51, $fe, $03, $28, $70, $fe, $04, $ca, $d3, $63, $fe, $05, $ca, $f1, $63, $fe
    db $06, $ca, $10, $64, $c9, $3e, $2e, $cd, $3c, $15, $af, $ea, $0c, $c8, $3e, $27
    db $cd, $80, $3e, $3e, $01, $ea, $0d, $c6, $3e, $48, $cd, $2f, $15, $3e, $02, $ea
    db $11, $c8, $3e, $01, $ea, $13, $c8, $c9, $3e, $01, $ea, $0d, $c8, $3e, $31, $cd
    db $3c, $15, $3e, $ff, $ea, $0c, $c8, $3e, $20, $ea, $11, $c8, $3e, $02, $ea, $13
    db $c8, $c9, $af, $ea, $60, $c7, $3e, $01, $ea, $0d, $c8, $3e, $31, $cd, $3c, $15
    db $3e, $ff, $ea, $0c, $c8, $3e, $20, $ea, $11, $c8, $3e, $03, $ea, $13, $c8, $3e
    db $01, $ea, $10, $c8, $c9, $3e, $01, $ea, $0d, $c8, $3e, $2d, $cd, $3c, $15, $af
    db $ea, $0c, $c8, $3e, $10, $ea, $11, $c8, $3e, $04, $ea, $13, $c8, $3e, $01, $ea
    db $10, $c8, $c9, $3e, $00, $ea, $0d, $c8, $3e, $2c, $cd, $3c, $15, $af, $ea, $0c
    db $c8, $3e, $10, $ea, $11, $c8, $3e, $05, $ea, $13, $c8, $3e, $01, $ea, $10, $c8
    db $c9, $3e, $02, $ea, $0d, $c8, $3e, $32, $cd, $3c, $15, $3e, $01, $ea, $0c, $c8
    db $3e, $20, $ea, $11, $c8, $3e, $06, $ea, $13, $c8, $3e, $01, $ea, $10, $c8, $c9
    db $3e, $2e, $cd, $3c, $15, $af, $ea, $0c, $c8, $3e, $28, $cd, $80, $3e, $3e, $02
    db $ea, $11, $c8, $c9, $af, $ea, $90, $b8, $3e, $2e, $cd, $3c, $15, $af, $ea, $0c
    db $c8, $3e, $02, $ea, $11, $c8, $c9, $fa, $11, $c8, $3d, $ea, $11, $c8, $b7, $28
    db $04, $cd, $fb, $67, $c9, $fa, $13, $c8, $fe, $00, $28, $05, $fe, $01, $28, $24
    db $c9, $3e, $16, $cd, $3c, $15, $af, $ea, $0c, $c8, $3e, $2a, $cd, $80, $3e, $3e
    db $01, $ea, $0d, $c6, $3e, $48, $cd, $2f, $15, $3e, $02, $ea, $11, $c8, $3e, $01
    db $ea, $13, $c8, $c9, $3e, $01, $ea, $0d, $c8, $3e, $31, $cd, $3c, $15, $3e, $ff
    db $ea, $0c, $c8, $3e, $20, $ea, $11, $c8, $3e, $02, $ea, $13, $c8, $c9, $fa, $11
    db $b9, $fe, $00, $28, $4e, $fe, $01, $ca, $3b, $65, $fa, $13, $c8, $fe, $01, $ca
    db $f7, $64, $3c, $ea, $12, $c9, $3e, $00, $cd, $6a, $16, $fa, $02, $c8, $fe, $10
    db $cc, $08, $66, $fe, $11, $cc, $12, $66, $fe, $12, $cc, $1c, $66, $fe, $13, $cc
    db $26, $66, $fa, $11, $c8, $3c, $ea, $11, $c8, $fe, $01, $ca, $b5, $65, $fe, $08
    db $ca, $ca, $65, $fe, $28, $ca, $b5, $65, $fe, $30, $ca, $f3, $65, $fe, $c0, $ca
    db $36, $65, $c9, $3c, $ea, $12, $c9, $fa, $13, $c8, $fe, $01, $28, $09, $fe, $02
    db $28, $09, $fe, $03, $28, $13, $c9, $cd, $fb, $67, $c9, $fa, $11, $c8, $3d, $ea
    db $11, $c8, $b7, $28, $12, $cd, $fb, $67, $c9, $fa, $11, $c8, $3d, $ea, $11, $c8
    db $b7, $28, $23, $cd, $fb, $67, $c9, $3e, $00, $ea, $0d, $c8, $3e, $10, $cd, $3c
    db $15, $3e, $40, $ea, $11, $c8, $3e, $03, $ea, $13, $c8, $3e, $01, $ea, $0c, $c8
    db $3e, $03, $ea, $10, $c8, $c9, $af, $ea, $00, $c8, $c9, $fa, $13, $c8, $fe, $01
    db $ca, $f7, $64, $3c, $ea, $12, $c9, $3e, $00, $cd, $6a, $16, $fa, $02, $c8, $fe
    db $10, $cc, $08, $66, $fe, $11, $cc, $12, $66, $fe, $12, $cc, $1c, $66, $fe, $13
    db $cc, $26, $66, $fa, $11, $c8, $3c, $ea, $11, $c8, $fe, $01, $28, $1d, $fe, $08
    db $28, $6d, $fe, $10, $28, $7d, $fe, $20, $28, $3b, $fe, $28, $28, $4c, $fe, $48
    db $28, $5d, $fe, $50, $28, $6d, $fe, $80, $28, $ac, $c9, $3e, $01, $ea, $0d, $c8
    db $3e, $0d, $cd, $3c, $15, $3e, $02, $ea, $13, $c8, $3e, $03, $ea, $10, $c8, $c9
    db $3e, $01, $ea, $0d, $c8, $3e, $11, $cd, $3c, $15, $3e, $02, $ea, $13, $c8, $3e
    db $03, $ea, $10, $c8, $c9, $3e, $02, $ea, $0d, $c8, $3e, $0e, $cd, $3c, $15, $3e
    db $02, $ea, $13, $c8, $3e, $03, $ea, $10, $c8, $c9, $3e, $02, $ea, $0d, $c8, $3e
    db $12, $cd, $3c, $15, $3e, $02, $ea, $13, $c8, $3e, $03, $ea, $10, $c8, $c9, $3e
    db $00, $ea, $0d, $c8, $3e, $0c, $cd, $3c, $15, $3e, $02, $ea, $13, $c8, $3e, $03
    db $ea, $10, $c8, $3e, $00, $ea, $0d, $c8, $3e, $10, $cd, $3c, $15, $3e, $02, $ea
    db $13, $c8, $3e, $03, $ea, $10, $c8, $c9, $21, $08, $c8, $01, $01, $00, $cd, $27
    db $0a, $c9, $21, $06, $c8, $01, $ff, $ff, $cd, $27, $0a, $c9, $21, $06, $c8, $01
    db $01, $00, $cd, $27, $0a, $c9, $21, $08, $c8, $01, $ff, $ff, $cd, $27, $0a, $c9
    db $3e, $02, $ea, $12, $c9, $fa, $11, $c8, $3c, $ea, $11, $c8, $fa, $02, $c8, $fe
    db $38, $cc, $08, $66, $fe, $39, $cc, $12, $66, $fe, $3a, $cc, $1c, $66, $fe, $3b
    db $cc, $26, $66, $fa, $13, $c8, $fe, $01, $28, $2a, $fe, $02, $28, $01, $c9, $3e
    db $02, $ea, $13, $c8, $fa, $11, $c8, $fe, $6c, $cc, $ef, $66, $fe, $74, $cc, $3f
    db $67, $fe, $a4, $cc, $2f, $67, $fe, $b0, $cc, $0f, $67, $fa, $11, $c8, $fe, $b0
    db $cc, $c5, $66, $c9, $3e, $01, $ea, $13, $c8, $fa, $11, $c8, $fe, $01, $cc, $cf
    db $66, $fe, $08, $cc, $df, $66, $fe, $38, $cc, $cf, $66, $fe, $40, $cc, $1f, $67
    db $fe, $e0, $28, $01, $c9, $cd, $ff, $66, $3e, $d0, $ea, $06, $c8, $af, $ea, $07
    db $c8, $3e, $60, $ea, $08, $c8, $3e, $01, $ea, $09, $c8, $af, $ea, $11, $c8, $3e
    db $02, $ea, $13, $c8, $c9, $af, $ea, $10, $c8, $3e, $35, $cd, $80, $3e, $c9, $3e
    db $03, $ea, $0d, $c8, $3e, $37, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $03, $ea, $0d, $c8, $3e, $3b, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $01, $ea, $0d, $c8, $3e, $35, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $01, $ea, $0d, $c8, $3e, $39, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $02, $ea, $0d, $c8, $3e, $36, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $02, $ea, $0d, $c8, $3e, $3a, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $00, $ea, $0d, $c8, $3e, $34, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $3e
    db $00, $ea, $0d, $c8, $3e, $38, $cd, $3c, $15, $3e, $04, $ea, $10, $c8, $c9, $fa
    db $12, $c9, $3c, $ea, $12, $c9, $fa, $13, $c8, $fe, $00, $28, $09, $fe, $01, $28
    db $1a, $fe, $02, $28, $17, $c9, $fa, $11, $c8, $3c, $ea, $11, $c8, $fe, $10, $28
    db $16, $21, $06, $c8, $01, $01, $00, $cd, $27, $0a, $c9, $c9, $3e, $08, $ea, $0f
    db $c9, $3e, $20, $ea, $11, $c9, $c9, $3e, $02, $ea, $0d, $c8, $3e, $16, $cd, $3c
    db $15, $3e, $05, $ea, $10, $c8, $af, $ea, $11, $c8, $3e, $01, $ea, $13, $c8, $3e
    db $37, $cd, $80, $3e, $c9, $fa, $12, $c9, $3c, $ea, $12, $c9, $fa, $13, $c8, $fe
    db $00, $28, $09, $fe, $01, $28, $1a, $fe, $02, $28, $17, $c9, $fa, $11, $c8, $3c
    db $ea, $11, $c8, $fe, $10, $28, $16, $21, $06, $c8, $01, $01, $00, $cd, $27, $0a
    db $c9, $c9, $3e, $09, $ea, $0f, $c9, $3e, $20, $ea, $11, $c9, $c9, $3e, $02, $ea
    db $0d, $c8, $3e, $0e, $cd, $3c, $15, $3e, $06, $ea, $10, $c8, $af, $ea, $11, $c8
    db $3e, $01, $ea, $13, $c8, $3e, $38, $cd, $80, $3e, $c9, $fa, $0c, $c8, $b7, $c8
    db $fa, $0d, $c8, $fe, $00, $28, $12, $fe, $01, $28, $18, $fe, $02, $28, $1e, $21
    db $08, $c8, $01, $ff, $ff, $cd, $27, $0a, $c9, $21, $08, $c8, $01, $01, $00, $cd
    db $27, $0a, $c9, $21, $06, $c8, $01, $ff, $ff, $cd, $27, $0a, $c9, $21, $06, $c8
    db $01, $01, $00, $cd, $27, $0a, $c9, $fa, $11, $b9, $fe, $00, $ca, $48, $68, $fe
    db $01, $ca, $dd, $68, $c3, $6a, $69, $c9, $fa, $12, $c9, $fe, $01, $c0, $3c, $ea
    db $12, $c9, $3e, $00, $cd, $6a, $16, $fa, $31, $c8, $fe, $59, $30, $37, $3c, $ea
    db $31, $c8, $fe, $4d, $38, $16, $fe, $50, $28, $1a, $fe, $58, $d8, $fe, $58, $28
    db $1e, $3e, $02, $ea, $2d, $c8, $3e, $06, $cd, $7d, $15, $c9, $fa, $2b, $c8, $3d
    db $ea, $2b, $c8, $c9, $3e, $02, $ea, $2d, $c8, $3e, $06, $cd, $7d, $15, $c9, $3e
    db $32, $cd, $80, $3e, $c9, $fa, $31, $c8, $fe, $9a, $d0, $3c, $ea, $31, $c8, $fe
    db $5b, $28, $09, $fe, $99, $38, $10, $fe, $99, $28, $14, $c9, $3e, $00, $ea, $2d
    db $c8, $3e, $08, $cd, $7d, $15, $c9, $fa, $2b, $c8, $3c, $ea, $2b, $c8, $c9, $af
    db $ea, $20, $c8, $3e, $33, $cd, $80, $3e, $3e, $03, $ea, $0d, $c8, $3e, $0f, $cd
    db $3c, $15, $3e, $03, $ea, $10, $c8, $3e, $01, $ea, $13, $c8, $c9, $fa, $12, $c9
    db $fe, $01, $c0, $3c, $ea, $12, $c9, $3e, $00, $cd, $6a, $16, $fa, $22, $c8, $c6
    db $04, $fe, $08, $cc, $50, $6a, $fe, $09, $cc, $58, $6a, $fe, $0a, $cc, $60, $6a
    db $fe, $0b, $cc, $68, $6a, $fa, $31, $c8, $fe, $83, $d2, $3f, $69, $3c, $ea, $31
    db $c8, $fe, $01, $ca, $d4, $69, $fe, $34, $ca, $df, $69, $fe, $35, $ca, $ea, $69
    db $fe, $36, $ca, $f5, $69, $fe, $66, $ca, $df, $69, $fe, $67, $ca, $d4, $69, $fe
    db $7f, $ca, $df, $69, $fe, $80, $ca, $00, $6a, $fe, $82, $ca, $2c, $6a, $c9, $3c
    db $ea, $31, $c8, $fa, $31, $c8, $fe, $86, $ca, $16, $6a, $fe, $8a, $ca, $21, $6a
    db $fe, $9e, $ca, $00, $6a, $fe, $a2, $ca, $0b, $6a, $fe, $d4, $ca, $16, $6a, $fe
    db $da, $ca, $21, $6a, $fe, $fe, $ca, $32, $6a, $c9, $fa, $12, $c9, $fe, $01, $c0
    db $3c, $ea, $12, $c9, $3e, $00, $cd, $6a, $16, $fa, $22, $c8, $c6, $04, $fe, $08
    db $cc, $50, $6a, $fe, $09, $cc, $58, $6a, $fe, $0a, $cc, $60, $6a, $fe, $0b, $cc
    db $68, $6a, $fa, $31, $c8, $fe, $71, $d2, $b4, $69, $3c, $ea, $31, $c8, $fe, $07
    db $28, $32, $fe, $54, $28, $39, $fe, $5a, $28, $4b, $fe, $68, $28, $3c, $fe, $70
    db $ca, $2c, $6a, $c9, $3c, $ea, $31, $c8, $fa, $31, $c8, $fe, $75, $ca, $16, $6a
    db $fe, $84, $ca, $0b, $6a, $fe, $90, $ca, $00, $6a, $fe, $98, $ca, $21, $6a, $fe
    db $d8, $28, $5f, $c9, $3e, $03, $ea, $2d, $c8, $3e, $0b, $cd, $7d, $15, $c9, $3e
    db $03, $ea, $2d, $c8, $3e, $07, $cd, $7d, $15, $c9, $3e, $01, $ea, $2d, $c8, $3e
    db $05, $cd, $7d, $15, $c9, $3e, $01, $ea, $2d, $c8, $3e, $09, $cd, $7d, $15, $c9
    db $3e, $02, $ea, $2d, $c8, $3e, $06, $cd, $7d, $15, $c9, $3e, $02, $ea, $2d, $c8
    db $3e, $0a, $cd, $7d, $15, $c9, $3e, $00, $ea, $2d, $c8, $3e, $04, $cd, $7d, $15
    db $c9, $3e, $00, $ea, $2d, $c8, $3e, $08, $cd, $7d, $15, $c9, $3e, $32, $cd, $80
    db $3e, $c9, $af, $ea, $20, $c8, $3e, $33, $cd, $80, $3e, $3e, $03, $ea, $0d, $c8
    db $3e, $0f, $cd, $3c, $15, $3e, $03, $ea, $10, $c8, $3e, $01, $ea, $13, $c8, $c9
    db $fa, $2b, $c8, $3c, $ea, $2b, $c8, $c9, $fa, $2a, $c8, $3d, $ea, $2a, $c8, $c9
    db $fa, $2a, $c8, $3c, $ea, $2a, $c8, $c9, $fa, $2b, $c8, $3d, $ea, $2b, $c8, $c9
    db $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d
    db $7d, $e0, $a4, $79, $c6, $09, $6f, $78, $ce, $00, $67, $cb, $3c, $cb, $1d, $cb
    db $3c, $cb, $1d, $cb, $3c, $cb, $1d, $cb, $3c, $cb, $1d, $fa, $0c, $b9, $4d, $cd
    db $1e, $07, $f0, $a4, $cb, $27, $85, $6f, $3e, $00, $8c, $67, $fa, $0d, $b9, $57
    db $fa, $0e, $b9, $5f, $19, $c9

    db $00, $04, $eb, $01, $03, $1e, $00, $01, $09, $02, $02, $26, $36, $de, $22, $00
    db $22, $23, $24, $25, $a3, $00, $37, $12, $7c, $0a, $02, $f3, $01, $36, $32, $33
    db $34, $35, $b3, $02, $f5, $27, $0b, $02, $55, $13, $00, $53, $43, $44, $54, $f2
    db $b3, $00, $56, $0f, $04, $30, $06, $42, $46, $47, $45, $fc, $0f, $04, $00, $08
    db $d0, $d1, $aa, $ab, $ac, $ad, $3f, $ae, $af, $04, $05, $a8, $a9, $a3, $00, $0b
    db $04, $ff, $e0, $e1, $ba, $bb, $bc, $bd, $be, $bf, $cf, $05, $05, $b8, $b9, $a3
    db $00, $0b, $06, $10, $11, $ce, $12, $00, $21, $04, $05, $a5, $00, $0b, $08, $05
    db $05, $0b, $04, $05, $4a, $00, $07, $0b, $0a, $65, $07, $0f, $08, $03, $12, $00
    db $65, $07, $0f, $08, $0f, $08, $0f, $08, $0f, $08, $0f, $08, $0f, $08, $0f, $08
    db $30, $0f, $08, $0f, $08, $0f, $08, $09, $08, $16, $17, $85, $08, $0a, $1a, $1b
    db $01, $13, $14, $00, $14, $15, $a5, $00, $0a, $22, $1f, $00, $00, $1f, $00, $1f
    db $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $00, $1f
    db $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1d, $00

    db $00, $08, $fd, $ff, $2e, $00, $b5, $7e, $d3, $52, $ab, $6e, $ff, $dd, $5e, $8b
    db $4a, $a5, $7e, $ff, $00, $ff, $d5, $7e, $d5, $76, $ab, $7a, $a9, $7a, $ff, $bd
    db $7e, $8b, $6e, $93, $76, $a5, $76, $ff, $ff, $00, $88, $ff, $61, $ff, $0e, $6e
    db $bf, $9a, $9b, $4d, $7f, $62, $ff, $e1, $03, $c9, $ff, $3f, $b2, $7e, $b7, $77
    db $9c, $7c, $c9, $ff, $49, $bb, $7f, $86, $7f, $ff, $00, $c4, $ff, $ff, $b3, $ff
    db $47, $47, $3c, $3c, $cf, $ef, $cf, $cc, $ff, $38, $20, $02, $f7, $08, $db, $ff
    db $27, $d8, $3f, $c3, $3f, $b6, $7f, $a3, $ff, $7f, $b8, $47, $ff, $00, $32, $cd
    db $33, $ef, $ff, $78, $ff, $c7, $60, $04, $8c, $ff, $c7, $ff, $38, $ff, $00, $78
    db $87, $af, $70, $f0, $ff, $00, $a0, $40, $a0, $40, $b4, $40, $bd, $ff, $70, $ff
    db $00, $ef, $10, $38, $c7, $e3, $ff, $1c, $4c, $33, $7e, $1f, $9f, $05, $c7, $ff
    db $03, $ff, $00, $27, $d8, $9f, $f0, $f0, $ff, $05, $60, $ca, $20, $d5, $f4, $ea
    db $1d, $75, $30, $06, $02, $b3, $00, $02, $25, $c7, $13, $04, $02, $ff, $0f, $60
    db $df, $20, $df, $f4, $eb, $1d, $7d, $32, $08, $02, $9f, $9f, $65, $c7, $3b, $04
    db $04, $7f, $09, $60, $c6, $20, $d9, $f4, $e2, $01, $04, $ff, $fe, $01, $23, $dc
    db $dd, $22, $4f, $30, $ff, $61, $9e, $9d, $62, $c7, $18, $80, $7f, $ff, $f7, $08
    db $80, $7f, $dd, $22, $7f, $00, $fe, $03, $0b, $00, $ff, $77, $88, $00, $ff, $dd
    db $fb, $22, $ff, $04, $01, $ab, $7e, $ab, $6e, $d5, $ff, $5e, $95, $5e, $bd, $7e
    db $d1, $76, $c9, $ff, $6e, $a5, $6e, $ff, $00, $62, $ff, $4d, $ff, $7f, $9a, $9b
    db $0e, $6e, $61, $ff, $88, $7e, $00, $10, $c0, $40, $60, $a0, $7f, $40, $07, $01
    db $3f, $03, $02, $06, $05, $fd, $03, $07, $02, $01, $11, $ff, $a6, $e6, $90, $90
    db $40, $40, $a0, $a0, $ff, $c0, $c0, $80, $80, $ff, $00, $d4, $ff, $ff, $cb, $cb
    db $15, $15, $03, $03, $05, $05, $bf, $02, $02, $01, $01, $b2, $60, $a1, $0f, $a0
    db $ff, $40, $90, $60, $9c, $60, $8f, $50, $80, $ff, $40, $a2, $00, $23, $01, $03
    db $01, $02, $ff, $00, $04, $02, $08, $04, $f6, $0e, $00, $ff, $00, $d2, $c8, $60
    db $51, $20, $00, $e0, $ff, $d1, $30, $0a, $4c, $71, $07, $18, $00, $ff, $00, $a2
    db $08, $23, $55, $03, $a9, $02, $5f, $54, $04, $aa, $08, $54, $02, $02, $cd, $00
    db $02, $7f, $10, $e0, $d8, $10, $2f, $4c, $73, $02, $02, $ff, $5c, $23, $dd, $03
    db $fd, $02, $fc, $04, $5f, $fa, $08, $f4, $fe, $06, $00, $04, $c4, $03, $04, $ff
    db $10, $26, $4c, $71, $03, $1c, $00, $00, $ff, $a3, $44, $23, $98, $03, $64, $03
    db $98, $ff, $05, $62, $09, $96, $f5, $0e, $4d, $fe, $fc, $07, $0f, $03, $1c, $01
    db $fe, $77, $88, $01, $fe, $f7, $dd, $22, $fe, $04, $11, $c2, $77, $d2, $7f, $ff
    db $c6, $6f, $a2, $6b, $aa, $6b, $8f, $40, $ff, $88, $47, $a8, $67, $b2, $77, $b2
    db $77, $ff, $ba, $7f, $8c, $6f, $8c, $6f, $ff, $00, $ef, $83, $7f, $80, $7f, $07
    db $02, $ff, $00, $c1, $f7, $c0, $03, $fe, $07, $02, $fc, $0f, $12, $07, $fb, $d2
    db $c7, $07, $03, $8c, $6f, $92, $77, $c2, $ff, $77, $a7, $72, $ef, $3a, $c1, $3e
    db $d5, $ff, $3e, $d7, $3c, $db, $3c, $e9, $1e, $ab, $ff, $5e, $ff, $00, $7c, $80
    db $af, $74, $fe, $ff, $05, $a0, $5f, $bf, $40, $af, $5f, $b0, $ff, $50, $ff, $00
    db $3f, $20, $f8, $17, $2f, $ff, $d0, $02, $fd, $fe, $01, $fb, $fd, $07, $ff, $05
    db $ff, $00, $2c, $d2, $90, $e8, $a3, $ff, $50, $6e, $c0, $68, $80, $cd, $80, $45
    db $ff, $08, $ff, $00, $1f, $20, $04, $0b, $63, $ff, $84, $ba, $01, $0b, $00, $59
    db $00, $51, $fe, $00, $2c, $26, $d8, $92, $fc, $e3, $1c, $7c, $7f, $fb, $08, $f7
    db $f8, $e7, $32, $2d, $01, $24, $fb, $b8, $47, $01, $22, $3a, $5f, $1f, $2d, $17
    db $95, $8b, $06, $24, $ce, $00, $22, $e9, $01, $22, $02, $20, $62, $ff, $41, $be
    db $65, $9e, $9d, $46, $c5, $2a, $fe, $01, $30, $fb, $04, $fc, $0f, $ed, $1e, $f7
    db $df, $18, $87, $78, $fb, $04, $01, $31, $07, $f8, $ff, $f7, $18, $bb, $4c, $fb
    db $04, $ed, $12, $ff, $c1, $3e, $bf, $70, $b9, $77, $b9, $77, $fb, $89, $67, $21
    db $00, $99, $77, $c9, $77, $ff, $ff, $00, $80, $40, $b5, $55, $be, $7e, $bd, $bf
    db $7f, $b3, $7f, $bc, $5f, $80, $00, $2f, $01, $ff, $00, $49, $40, $a1, $a0, $f5
    db $f4, $9b, $ff, $fa, $ed, $f4, $01, $fe, $f2, $07, $32, $ff, $ef, $16, $cf, $12
    db $cb, $1a, $cb, $18, $df, $cb, $10, $cb, $14, $cf, $07, $14, $88, $4b, $ff, $80
    db $4b, $a4, $6f, $ab, $5e, $83, $7e, $eb, $93, $7e, $01, $10, $f7, $20, $00, $d9
    db $36, $bf, $ff, $40, $b1, $50, $b7, $50, $b4, $53, $b7, $ff, $50, $af, $5e, $9f
    db $40, $80, $40, $ff, $ff, $01, $46, $84, $77, $85, $16, $e4, $76, $ff, $84, $7a
    db $bc, $fe, $02, $00, $00, $49, $ff, $a4, $68, $05, $24, $1b, $f3, $cc, $18, $df
    db $07, $0e, $01, $13, $10, $00, $01, $12, $0b, $ff, $d0, $13, $ed, $e6, $18, $0e
    db $f2, $38, $fb, $c0, $ee, $00, $22, $f6, $c9, $76, $49, $36, $ff, $09, $e0, $9c
    db $47, $28, $72, $0c, $34, $ff, $0b, $0f, $00, $08, $90, $0a, $82, $09, $ff, $c1
    db $06, $5a, $e4, $08, $94, $68, $5a, $fb, $22, $e0, $01, $22, $57, $20, $4a, $a0
    db $d7, $ef, $30, $4d, $5c, $62, $01, $24, $a3, $5c, $23, $ff, $54, $03, $a8, $03
    db $74, $05, $da, $09, $ff, $a6, $f1, $0a, $01, $02, $f1, $0e, $d7, $ff, $38, $bf
    db $40, $3f, $c0, $7e, $81, $db, $ff, $24, $9f, $60, $ff, $00, $f8, $07, $bd, $df
    db $46, $fd, $06, $fe, $03, $e0, $17, $04, $d9, $ff, $26, $ce, $31, $c9, $77, $d9
    db $77, $c9, $fb, $67, $a9, $20, $00, $89, $47, $89, $47, $a9, $ed, $67, $00, $42
    db $75, $af, $80, $0f, $be, $60, $b9, $ff, $59, $9f, $60, $a0, $5f, $ff, $00, $41
    db $ff, $40, $a9, $a0, $fd, $fc, $2b, $ea, $fd, $ff, $7c, $3f, $fe, $ed, $f4, $32
    db $e7, $32, $8f, $e7, $3a, $ef, $3c, $22, $00, $c1, $00, $21, $12, $ba, $ff, $7a
    db $bf, $5f, $81, $7f, $82, $7f, $a0, $fe, $00, $13, $01, $fe, $ff, $00, $a1, $a0
    db $5d, $3f, $54, $ab, $aa, $7f, $fe, $09, $00, $13, $01, $40, $ff, $a7, $78, $f8
    db $07, $e0, $1e, $d0, $2d, $ef, $ab, $54, $d4, $2b, $01, $40, $f8, $07, $0f, $ff
    db $f0, $02, $0d, $ff, $00, $6b, $7f, $df, $ff, $df, $ff, $00, $20, $d0, $a0, $ca
    db $c0, $ff, $15, $40, $af, $41, $be, $87, $78, $89, $7c, $00, $48, $03, $1e, $ac
    db $73, $de, $bf, $05, $a0, $46, $fe, $01, $42, $93, $fc, $fc, $03, $60, $9f, $80
    db $df, $7f, $81, $7e, $c2, $3d, $03, $04, $23, $dc, $ff, $1c, $e3, $1a, $ef, $9f
    db $6d, $77, $9b, $fe, $01, $44, $82, $fd, $de, $21, $74, $cb, $48, $ef, $b7, $64
    db $9b, $52, $00, $22, $fe, $01, $63, $ff, $1c, $1d, $a2, $0f, $d0, $0b, $e4, $07
    db $df, $f0, $e5, $1a, $bf, $40, $21, $41, $ff, $00, $7f, $f9, $07, $ff, $00, $e7
    db $1f, $bf, $00, $4c, $b7, $fb, $04, $7f, $60, $3a, $9f, $e0, $00, $01, $f8, $f8
    db $50, $28, $06, $31, $03, $4e, $f9, $07, $89, $e7, $39, $ff, $f7, $49, $77, $69
    db $f7, $99, $f7, $09, $ff, $f7, $f9, $07, $3f, $e0, $39, $ef, $32, $ff, $ef, $38
    db $ea, $30, $ef, $39, $ef, $30, $fb, $ef, $3f, $60, $03, $88, $ef, $35, $fd, $41
    db $bf, $7f, $62, $f7, $95, $fd, $00, $02, $52, $d2, $ff, $bd, $26, $ff, $99, $e7
    db $28, $ff, $06, $ef, $ff, $76, $89, $ff, $0e, $58, $ab, $55, $b9, $ff, $66, $9c
    db $73, $a6, $61, $bb, $78, $a1, $ff, $60, $9a, $5a, $80, $40, $23, $ef, $78, $ff
    db $78, $ad, $2d, $50, $b0, $26, $c6, $dc, $ff, $2c, $92, $62, $60, $00, $8c, $73
    db $46, $fb, $39, $3f, $a0, $35, $1c, $1c, $03, $03, $10, $fe, $00, $20, $f2, $72
    db $79, $bf, $27, $c7, $90, $ff, $60, $ce, $36, $f4, $88, $26, $1a, $18, $ff, $00
    db $e6, $19, $7f, $04, $05, $04, $c0, $df, $c0, $1a, $1a, $64, $64, $01, $02, $38
    db $d8, $ff, $12, $e2, $89, $71, $c6, $3a, $62, $1c, $ff, $3e, $00, $32, $2c, $0c
    db $00, $69, $d6, $ff, $54, $4b, $0e, $01, $cb, $c8, $01, $00, $fb, $4c, $4c, $01
    db $5f, $dd, $22, $e3, $7c, $5d, $ff, $9e, $3d, $de, $9b, $6c, $e9, $16, $cd, $f7
    db $b6, $7d, $ce, $03, $18, $fc, $03, $b2, $7c, $bf, $86, $7d, $b4, $5a, $a8, $74
    db $01, $5b, $32, $ff, $c5, $a1, $56, $47, $a8, $2e, $57, $1b, $ff, $2f, $0f, $d7
    db $ff, $00, $40, $a1, $8c, $ff, $52, $9e, $21, $8c, $52, $40, $a1, $c0, $fb, $9f
    db $40, $a0, $12, $ef, $10, $78, $87, $63, $ff, $1c, $6c, $b3, $de, $3f, $85, $7f
    db $bb, $fc, $00, $5d, $02, $5a, $08, $57, $a0, $58, $a7, $e0, $f7, $9f, $58, $27
    db $03, $1c, $1b, $24, $d4, $0b, $bf, $36, $cb, $0f, $f1, $37, $cb, $01, $5c, $ef
    db $ff, $90, $d0, $2f, $b0, $4f, $af, $40, $a0, $f7, $41, $a0, $43, $01, $58, $a3
    db $5c, $5d, $a2, $ff, $6f, $90, $a3, $5c, $2f, $d0, $31, $ca, $ff, $ff, $00, $7f
    db $80, $b8, $64, $e0, $10, $ff, $d0, $21, $ab, $14, $d4, $0a, $aa, $55, $5e, $01
    db $69, $0c, $13, $03, $0c, $80, $3d, $ff, $06, $20, $ff, $c2, $c0, $35, $40, $aa
    db $40, $95, $c7, $ff, $a8, $49, $16, $ff, $00, $2f, $50, $38, $ff, $c7, $23, $5c
    db $2c, $d3, $5e, $bf, $45, $f7, $bf, $73, $bf, $05, $20, $40, $b8, $80, $40, $f7
    db $80, $04, $80, $60, $1c, $ff, $00, $c2, $25, $ff, $01, $12, $01, $18, $01, $1a
    db $41, $be, $ed, $a1, $00, $46, $26, $d9, $01, $20, $64, $9a, $98, $ff, $66, $c8
    db $35, $a4, $1b, $ff, $00, $3e, $ff, $c1, $0b, $14, $05, $0a, $07, $00, $03, $ff
    db $a4, $03, $54, $03, $ec, $90, $68, $a0, $ff, $51, $a0, $53, $b0, $6f, $a9, $56
    db $b7, $ff, $41, $da, $1a, $80, $40, $07, $eb, $34, $ff, $c8, $6d, $a1, $d0, $70
    db $26, $26, $cc, $ff, $cc, $62, $62, $00, $00, $40, $a3, $61, $ff, $56, $32, $2c
    db $d2, $c4, $1e, $00, $0b, $ff, $04, $18, $17, $07, $00, $c6, $3a, $93, $ff, $6d
    db $ab, $45, $ba, $54, $b1, $4e, $b1, $ff, $42, $4e, $80, $80, $00, $c7, $b8, $40
    db $ff, $30, $30, $0c, $ff, $c0, $35, $0a, $7d, $fb, $62, $16, $00, $3a, $c4, $38
    db $06, $1a, $19, $ff, $61, $fa, $02, $58, $a0, $70, $80, $e2, $ff, $22, $00, $00
    db $a0, $43, $c0, $23, $60, $7f, $13, $f0, $cb, $18, $07, $4f, $40, $01, $77, $ff
    db $7f, $80, $87, $78, $8d, $72, $fd, $06, $ff, $7b, $9c, $e1, $26, $85, $8e, $4d
    db $fe, $ff, $99, $66, $bc, $73, $96, $71, $a3, $60, $ef, $bb, $7a, $a1, $61, $03
    db $20, $f8, $78, $6d, $ff, $ad, $30, $d0, $d6, $26, $9c, $6c, $62, $d6, $00, $40
    db $4c, $b3, $0c, $20, $32, $0b, $20, $81, $06, $df, $81, $4e, $43, $3c, $fc, $06
    db $20, $12, $ac, $ff, $8e, $52, $c5, $29, $e2, $94, $31, $0a, $ff, $1f, $00, $29
    db $26, $06, $00, $52, $ad, $ff, $69, $56, $1c, $03, $ce, $c9, $03, $00, $fd, $4d
    db $02, $20, $f3, $0c, $6f, $70, $9d, $1e, $ff, $5d, $be, $3b, $dc, $d1, $26, $95
    db $6e, $03, $6d, $9e

    db $00, $08, $00, $2f, $01, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f
    db $00, $1f, $00, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f
    db $00, $1f, $00, $1f, $00, $e0, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $a5, $00
    db $ff, $00, $7e, $ff, $81, $a8, $74, $f9, $00, $b6, $68, $92, $ff, $64, $b2, $40
    db $b2, $60, $ff, $00, $bf, $ff, $40, $88, $17, $cf, $00, $34, $0b, $26, $ff, $13
    db $27, $03, $27, $4b, $ff, $00, $27, $ff, $d8, $93, $fc, $9c, $62, $70, $cd, $40
    db $bf, $aa, $80, $55, $80, $6a, $ff, $20, $03, $0c, $7f, $d3, $03, $ac, $01, $56
    db $01, $ae, $40, $00, $fd, $be, $01, $02, $ff, $80, $c1, $26, $71, $ce, $ff, $0f
    db $f0, $27, $fc, $0d, $02, $ff, $00, $ff, $fe, $01, $3f, $c0, $c1, $26, $47, $98
    db $bf, $9b, $64, $2f, $d0, $59, $a6, $04, $02, $22, $fb, $71, $c8, $0a, $02, $22
    db $47, $88, $9b, $24, $fe, $00, $02, $26, $ff, $00, $78, $87, $a7, $78, $ff, $f8
    db $07, $b1, $7f, $84, $7f, $b0, $5e, $ff, $a4, $7f, $ff, $00, $ef, $10, $38, $c7
    db $ff, $23, $dc, $8c, $f3, $26, $ff, $6b, $7f, $fb, $df, $df, $01, $08, $91, $fe
    db $9c, $63, $47, $7f, $ff, $3b, $ff, $e2, $ff, $11, $3f, $03, $02, $ff, $e3, $1c
    db $2c, $f3, $de, $bf, $05, $ff, $fb, $b3, $ff, $02, $0a, $ff, $e0, $1f, $78, $ff
    db $df, $0f, $ff, $f8, $ff, $2f, $04, $02, $63, $9c, $ff, $cc, $f3, $1a, $ff, $ff
    db $fd, $57, $5b, $fe, $01, $0c, $83, $fc, $dc, $23, $61, $ff, $08, $df, $ff, $27
    db $fe, $0d, $0d, $01, $0a, $23, $dc, $ff, $dd, $22, $0f, $f0, $23, $dc, $2f, $f0
    db $ff, $d1, $fe, $92, $60, $b2, $65, $96, $69, $ff, $b9, $66, $b8, $77, $a6, $61
    db $9b, $5a, $ff, $80, $40, $27, $9b, $24, $58, $35, $c9, $ff, $fc, $00, $fe, $06
    db $fc, $0c, $e2, $22, $ff, $00, $00, $80, $55, $c0, $2a, $b0, $4d, $ff, $de, $a1
    db $30, $0f, $0f, $00, $10, $10, $ff, $00, $00, $02, $fc, $0d, $f3, $37, $c7, $ff
    db $30, $d0, $d6, $16, $80, $80, $0e, $0e, $ff, $00, $00, $71, $ee, $60, $53, $20
    db $13, $bf, $d0, $ce, $0c, $03, $4f, $4c, $e1, $15, $45, $ff, $ba, $83, $7c, $03
    db $fc, $05, $fa, $1b, $ff, $e4, $e1, $06, $85, $8e, $4d, $fe, $71, $7f, $e8, $60
    db $51, $20, $10, $d0, $c8, $06, $02, $7f, $8a, $83, $44, $03, $04, $05, $0a, $05
    db $02, $ff, $8f, $7f, $bb, $7b, $90, $70, $a0, $60, $df, $ba, $7a, $a1, $61, $9a
    db $00, $08, $23, $ef, $ff, $78, $78, $2d, $2d, $50, $70, $26, $26, $ff, $cc, $cc
    db $62, $62, $00, $00, $3f, $ff, $ff, $67, $67, $3a, $3a, $c0, $c0, $1c, $1c, $fb
    db $03, $03, $01, $08, $72, $72, $79, $ff, $07, $ef, $07, $d0, $d0, $16, $04, $08
    db $d3, $d3, $6e, $ff, $6e, $04, $04, $c0, $c0, $1a, $1a, $64, $fd, $64, $01, $0a
    db $38, $f8, $42, $42, $61, $61, $eb, $9a, $9a, $a1, $1e, $22, $00, $0c, $62, $e3
    db $41, $ff, $47, $03, $03, $ca, $ca, $00, $01, $4c, $fe, $02, $0a, $cd, $3e, $63
    db $7c, $1d, $1e, $5d, $df, $7e, $7b, $fc, $21, $26, $01, $0a, $3f, $00, $ff, $40
    db $00, $bf, $3f, $b0, $3f, $af, $30, $85, $a8, $22, $00, $ff, $41, $21, $50, $1e
    db $81, $00, $e1, $22, $fc, $ff, $00, $02, $00, $fd, $fe, $0d, $fe, $f5, $f3, $06
    db $15, $22, $00, $63, $02, $af, $30, $b0, $30, $1f, $bf, $3f, $40, $3f, $3f, $66
    db $24, $65, $03, $63, $02, $ff, $f5, $06, $0d, $0e, $fd, $fe, $02, $fc, $83, $fc
    db $00, $63, $05, $67, $00, $63, $04, $67, $00, $20, $16, $00, $5f, $e0, $00, $f8
    db $00, $fe, $40, $00, $e0, $c0, $00, $ff, $0f, $00, $1f, $0f, $1b, $0c, $1f, $0b
    db $fe, $25, $00, $e0, $00, $d0, $e0, $90, $60, $d0, $39, $a0, $25, $00, $a7, $01
    db $1b, $0c, $10, $40, $19, $a7, $01, $1f, $90, $60, $10, $e0, $e0, $1f, $2e, $1f
    db $00, $0c, $30, $ff, $78, $87, $8f, $70, $fc, $08, $bc, $69, $bf, $9c, $69, $bc
    db $49, $bc, $68, $01, $28, $f8, $ff, $07, $0b, $04, $0c, $e3, $0e, $27, $0b, $f7
    db $e7, $0f, $07, $01, $30, $99, $e6, $af, $49, $ff, $6b, $d2, $37, $e4, $dd, $e9
    db $3c, $12, $fe, $01, $30, $d8, $67, $e3, $9c, $cc, $33, $9e, $df, $7f, $85, $7f
    db $f3, $bf, $00, $33, $00, $c3, $ff, $a4, $c0, $19, $40, $9e, $40, $af, $e0, $f7
    db $cf, $20, $17, $06, $2a, $53, $1a, $2f, $0f, $ff, $95, $07, $cb, $ff, $00, $26
    db $d9, $87, $ff, $fa, $de, $25, $7d, $eb, $38, $d7, $2f, $ff, $d6, $5d, $2d, $87
    db $78, $7a, $81, $a1, $ff, $5c, $dd, $20, $0d, $f0, $23, $c0, $1d, $f7, $c2, $91
    db $ce, $01, $30, $af, $70, $f0, $00, $ff, $a0, $5f, $a0, $40, $b4, $4b, $bd, $70
    db $fe, $05, $2e, $4c, $b3, $7e, $1f, $9f, $65, $c7, $fd, $03, $01, $38, $9f, $f0
    db $f0, $0a, $60, $ca, $bf, $20, $ca, $f4, $ea, $1d, $32, $08, $02, $9f, $ef, $9f
    db $25, $c7, $2b, $04, $02, $05, $60, $df, $9f, $20, $d5, $f4, $eb, $1d, $00, $1c
    db $0a, $04, $13, $e4, $06, $02, $01, $04, $e1, $01, $02, $03, $30, $4f, $b0, $61
    db $7f, $9e, $9d, $42, $c7, $10, $9c, $68, $a0, $0f, $ff, $68, $bf, $60, $b0, $6f
    db $b0, $6f, $9f, $ff, $50, $80, $40, $0b, $07, $08, $e0, $0d, $ff, $05, $f8, $00
    db $1e, $e6, $1c, $e4, $fa, $ff, $02, $00, $00, $3e, $d1, $7f, $26, $5a, $bf, $2a
    db $e0, $80, $5c, $1c, $43, $03, $28, $52, $ff, $39, $af, $9f, $57, $cc, $a8, $26
    db $14, $ff, $95, $8a, $09, $06, $06, $00, $d0, $c3, $ff, $70, $69, $08, $04, $c4
    db $c2, $1a, $19, $fd, $65, $02, $28, $1c, $e0, $16, $e8, $19, $e2, $ff, $e9, $04
    db $a1, $5c, $d1, $0e, $2e, $20, $ff, $00, $00, $52, $a3, $78, $07, $a4, $0a, $ff
    db $a5, $18, $99, $24, $9c, $6e, $60, $01, $fe, $00, $28, $26, $07, $f0, $07, $30
    db $cb, $00, $ff, $7d, $c0, $9b, $6c, $1d, $02, $0d, $fe, $ff, $b2, $6d, $a0, $40
    db $a0, $50, $a0, $50, $df, $90, $6f, $9c, $62, $8f, $00, $08, $a2, $5c, $ff, $23
    db $01, $03, $fd, $02, $04, $04, $fa, $f7, $08, $14, $f6, $00, $36, $d2, $c8, $60
    db $40, $ff, $20, $00, $e0, $c8, $30, $0a, $4c, $72, $ff, $07, $18, $00, $00, $a2
    db $08, $23, $89, $ff, $03, $a9, $02, $a8, $04, $aa, $08, $a4, $fe, $02, $02, $cd
    db $60, $50, $20, $10, $e0, $d1, $ef, $10, $2f, $4c, $71, $02, $02, $5c, $23, $55
    db $1a, $00, $04, $54, $00, $04, $54, $fe, $e0, $25, $02, $04, $01, $02, $ff, $2a
    db $4c, $72, $03, $1c, $00, $00, $a3, $ff, $08, $23, $88, $03, $54, $03, $54, $05
    db $7f, $aa, $09, $a6, $f5, $0e, $4d, $fe, $b1, $2e, $fe, $42, $00, $ff, $ff, $ef
    db $ff, $81, $ff, $ed, $be, $08, $01, $01, $ff, $fd, $ff, $fb, $08, $02, $c1, $93
    db $ff, $dd, $20, $00, $09, $02, $7d, $20, $00, $07, $04, $f7, $4a, $20, $03, $e7
    db $08, $05, $fb, $22, $00, $07, $06, $d7, $22, $00, $3e, $07, $07, $ff, $ff, $3d
    db $ff, $cd, $0f, $07, $08, $02, $57, $ff, $ff, $67, $06, $0a, $fa, $02, $09, $fd
    db $0a, $04, $57, $c7, $ff, $ab, $08, $0c, $b7, $30, $50, $b9, $08, $0d, $77, $df
    db $ff, $13, $08, $06, $fa, $ff, $9f, $e0, $0d, $05, $3d, $0c, $06, $df

    db $00, $08, $7f, $00, $00, $20, $00, $10, $00, $7c, $40, $00, $01, $38, $82, $00
    db $0f, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $0f, $01, $00, $03, $01, $1f
    db $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $1f, $00, $f0, $1f, $00
    db $1f, $00, $1f, $00, $e7, $13, $ff, $e7, $ff, $d7, $7f, $ff, $b7, $ff, $77, $ff
    db $ff, $ff, $d0, $00, $ef, $ff, $00, $ff, $f7, $20, $00, $ef, $ff, $9f, $ae, $06
    db $01, $d7, $ff, $bb, $20, $00, $7d, $06, $02, $fd, $ab, $ff, $fb, $40, $02, $8f
    db $08, $02, $ef, $40, $03, $fb, $a2, $06, $04, $99, $a0, $04, $33, $00, $03, $05
    db $fb, $0c, $03, $6d, $ee, $20, $00, $5d, $ff, $9b, $06, $07, $a5, $ff, $bf, $af
    db $ff, $6f, $ff, $71, $06, $08, $9d, $20, $04, $55, $eb, $ff, $53, $06, $09, $dd
    db $0c, $07, $81, $ff, $eb, $d0, $22, $07, $05, $0b, $50, $0b, $42, $00, $fa, $60
    db $0b, $81, $ff, $e5, $ed, $06, $01, $ff, $a4, $07, $07, $01, $01, $ff, $df, $a8
    db $20, $00, $07, $02, $e1, $00, $cf, $08, $03, $ef, $20, $02, $7d, $aa, $08, $04
    db $ff, $c0, $06, $bd, $0c, $01, $fd, $08, $06, $9f, $52, $e0, $06, $3d, $08, $07
    db $a1, $13, $01, $08, $08, $03, $0c, $08, $b9, $83, $42, $08, $09, $06, $ff, $ff
    db $d5, $0a, $09, $01, $10, $e0, $0e, $09, $08, $21, $03, $07, $0e, $01, $c0, $17
    db $09, $08, $81, $19, $d5, $bb, $00, $12, $dd, $20, $1a, $67, $06, $1c, $e7, $ff
    db $51, $97, $42, $1c, $05, $1d, $63, $0f, $e1, $08, $1d, $db, $82, $10, $2a, $05
    db $1f, $7d, $02, $1d, $cf, $06, $20, $bd, $40, $0f, $81, $0f, $44, $07, $1f, $61
    db $07, $81, $0f, $19, $0f, $23, $02, $01, $ef, $22, $23, $54, $09, $23, $21, $23
    db $87, $06, $03, $d5, $22, $24, $e7, $06, $04, $20, $e3, $08, $07, $0a, $a3, $1a
    db $0f, $24, $05, $07, $bb, $0c, $0b, $07, $20, $5f, $a1, $ff, $7b, $ff, $61, $0a
    db $19, $cf, $80, $2c, $aa, $07, $21, $b3, $80, $2d, $d9, $08, $22, $c7, $40, $0c
    db $c3, $4a, $0a, $21, $83, $0a, $22, $bf, $22, $00, $09, $23, $b7, $c0, $30, $14
    db $07, $27, $21, $24, $af, $08, $27, $af, $22, $00, $07, $29, $0d, $22, $dc, $91
    db $31, $09, $07, $db, $ff, $07, $08, $2b, $fd, $ff, $9d, $02, $0c, $1e, $83, $ff
    db $39, $20, $00, $07, $02, $d2, $aa, $e0, $22, $d7, $0a, $27, $01, $e0, $3b, $7b
    db $c0, $32, $29, $a4, $60, $34, $05, $19, $3f, $60, $2e, $09, $32, $87, $e0, $3c
    db $ef, $43, $ff, $f3, $08, $1e, $21, $3c, $c1, $0f, $03, $1c, $a3, $20, $37, $21
    db $7d, $80, $10, $07, $16, $01, $3f, $07, $02, $9b, $00, $40, $21, $41, $aa, $05
    db $1f, $77, $00, $40, $fd, $08, $1a, $ad, $20, $00, $ab, $44, $08, $28, $0d, $3b
    db $fb, $40, $16, $41, $00, $05, $23, $83, $20, $46, $51, $7f, $a3, $2d, $0f, $1e
    db $00, $25, $e3, $c0, $45, $3f, $22, $20, $44, $0f, $48, $03, $01, $d7, $40, $4b
    db $0f, $20, $01, $3d, $e9, $e0, $4c, $4e, $07, $40, $cf, $ff, $73, $e0, $09, $09
    db $3d, $c3, $08, $3b, $15, $fa, $62, $31, $07, $0a, $19, $05, $0a, $38, $a1, $0a
    db $09, $22, $55, $ef, $80, $4a, $43, $0c, $1c, $db, $0a, $40, $77, $40, $3e, $3a
    db $0b, $04, $ef, $0a, $47, $d7, $ff, $0b, $0a, $48, $0b, $08, $df, $ce, $ff, $94
    db $ff, $56, $0a, $45, $65, $ff, $29, $f2, $0e, $3e, $0d, $57, $ef, $c0, $35, $6b
    db $60, $53, $05, $39, $a1, $1d, $00, $3e, $21, $1f, $0b, $38, $07, $1f, $fb, $c0
    db $20, $bf, $aa, $0a, $19, $5d, $0a, $59, $bd, $60, $07, $db, $08, $3a, $77, $72
    db $c0, $45, $53, $20, $1e, $07, $1c, $55, $ff, $4d, $08, $01, $75, $ad, $e0, $00
    db $5d, $08, $02, $ab, $ff, $75, $20, $00, $8e, $07, $45, $d5, $ff, $b5, $e0, $65
    db $07, $46, $0d, $08, $55, $fc, $22, $00, $07, $47, $36, $ff, $e6, $ff, $64, $ff
    db $01, $b4, $08, $49, $0b, $4a, $03, $68, $06, $4b

    db $00, $04, $5b, $f0, $f1, $1e, $00, $f2, $af, $18, $00, $f6, $d9, $00, $02, $93
    db $01, $f7, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $00, $0f
    db $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $60
    db $0f, $02, $0f, $02, $0f, $02, $0f, $02, $45, $02, $f3, $f4, $1e, $00, $01, $f5
    db $09, $04, $0f, $1a, $0f, $1a, $0f, $06, $0f, $02, $0f, $02, $0f, $02, $00, $0f
    db $02, $0f, $0a, $0d, $0a, $0f, $04, $0f, $06, $0f, $02, $0f, $02, $0f, $02, $00
    db $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02
    db $00, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f, $02, $0f
    db $02, $00, $0f, $02, $0f, $02, $0f, $02, $0d, $02

    db $ad, $ad, $fa, $fa, $7f, $7f, $d7, $d4, $fd, $e3, $77, $0f, $b7, $67, $f7, $6f
    db $ad, $ad, $fa, $fa, $7f, $40, $ff, $1f, $ff, $df, $ef, $cf, $ef, $df, $bf, $df
    db $ad, $ad, $fa, $fa, $ff, $03, $ff, $f8, $ff, $fb, $f7, $f3, $d5, $fb, $fd, $fb
    db $ad, $ad, $fa, $fa, $7f, $7f, $d6, $16, $f9, $c1, $ff, $f1, $ef, $e6, $ef, $f6
    db $bf, $2f, $be, $6f, $d7, $6f, $d7, $67, $b6, $2f, $b7, $6f, $9e, $6f, $ba, $6f
    db $fb, $df, $ba, $df, $a6, $cf, $e7, $df, $ed, $df, $ef, $df, $e7, $df, $eb, $df
    db $df, $fb, $ff, $fb, $d7, $f3, $d5, $fb, $d5, $fb, $45, $fb, $05, $fb, $96, $fb
    db $fd, $f4, $fd, $f6, $ff, $f6, $ed, $e6, $ad, $f4, $fd, $f6, $bf, $f6, $eb, $f6
    db $d9, $6f, $da, $6f, $f9, $6f, $d3, $67, $b5, $2f, $b9, $6f, $ba, $6f, $92, $6f
    db $eb, $df, $e7, $df, $e5, $cf, $65, $df, $a8, $df, $2a, $df, $20, $df, $28, $df
    db $57, $fb, $56, $fb, $55, $f3, $14, $fb, $14, $fb, $25, $fb, $a4, $fb, $86, $fb
    db $6f, $f6, $ed, $f6, $6f, $f6, $cf, $e6, $49, $f4, $59, $f6, $1b, $f6, $8f, $f6
    db $d0, $6f, $92, $67, $90, $2f, $97, $68, $b8, $47, $c0, $3f, $e0, $df, $7f, $60
    db $62, $cf, $60, $df, $3f, $c0, $e0, $1f, $20, $df, $60, $df, $30, $ef, $ff, $00
    db $26, $f3, $04, $fb, $fc, $03, $07, $f8, $0c, $fb, $0c, $fb, $18, $f7, $ff, $00
    db $8b, $f6, $09, $e6, $09, $f4, $e9, $16, $1d, $e2, $03, $fc, $0e, $fa, $fd, $05
    db $ad, $ad, $fb, $fa, $7e, $79, $dd, $c3, $ed, $d9, $3d, $1b, $ef, $cb, $6f, $5b
    db $bf, $a0, $ff, $0f, $ff, $ef, $f7, $e7, $f7, $ef, $df, $ef, $fd, $ef, $5d, $ef
    db $fd, $05, $ff, $f0, $ff, $f7, $ef, $e7, $ab, $f7, $fb, $f7, $bf, $f7, $ff, $f7
    db $ad, $ad, $fa, $7a, $ff, $9f, $fe, $c6, $bd, $99, $bf, $db, $f6, $d2, $f5, $d9
    db $b5, $9b, $f5, $d9, $6d, $4b, $ed, $db, $e7, $db, $2e, $1b, $f6, $db, $76, $5b
    db $d3, $e7, $f3, $ef, $77, $ef, $f6, $ef, $b2, $ef, $b5, $ef, $75, $ef, $b3, $ef
    db $ef, $e7, $ab, $f7, $aa, $f7, $8b, $f7, $0b, $f7, $2d, $f7, $ae, $f7, $ad, $f7
    db $fd, $d9, $b6, $9a, $b7, $d3, $f6, $da, $fd, $d9, $af, $db, $be, $da, $b5, $d9
    db $be, $9b, $f4, $d9, $6d, $4b, $ee, $db, $ee, $db, $24, $1b, $f4, $db, $64, $59
    db $72, $e7, $f2, $ef, $54, $ef, $55, $ef, $90, $ef, $94, $ef, $31, $e7, $b0, $ef
    db $aa, $e7, $a9, $f7, $28, $f7, $4a, $f7, $48, $f7, $0d, $f7, $0d, $e7, $08, $f7
    db $bd, $d9, $3e, $9a, $27, $d3, $66, $da, $6d, $d9, $3f, $db, $2e, $da, $25, $99
    db $a4, $8b, $e5, $da, $6e, $51, $f0, $cf, $f0, $ef, $30, $2f, $d0, $cf, $7f, $70
    db $1f, $e0, $f0, $0f, $10, $ef, $30, $ef, $30, $ef, $30, $ef, $30, $ef, $ff, $00
    db $f8, $07, $0f, $f0, $18, $f7, $18, $f7, $18, $f7, $18, $f7, $18, $f7, $ff, $00
    db $25, $d1, $a6, $5a, $77, $8b, $0e, $f2, $19, $f1, $1f, $f7, $1a, $f2, $fd, $0d
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff
