; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    db $10
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $6de1
    ld c, $10
    ld de, $8800
    call Call_000_2f41
    ld hl, $6658
    ld c, $10
    ld de, $9000
    call Call_000_2f41
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    ld sp, $3e40
    ld b, b
    ld c, e
    ld b, b
    ld hl, $4909
    ld c, $10
    ld de, $8000
    call Call_000_2f41
    jr jr_010_4056

    ld hl, $4bcf
    ld c, $10
    ld de, $8000
    call Call_000_2f41
    jr jr_010_4056

    ld hl, $4582
    ld c, $10
    ld de, $8000
    call Call_000_2f41

jr_010_4056:
    ld hl, $44a9
    ld c, $10
    ld de, $9800
    call Call_000_2f41
    ld a, $66
    ld [$cb5c], a
    ld a, $04
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ldh [CameraY], a
    ldh [CameraX], a
    ld [$cc1d], a
    ld [$cc1c], a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld a, $1d
    ld [TransitionRelated], a
    call Call_010_4472
    ld a, $01
    call Call_000_166a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    ld hl, $40a0
    rst $00
    and [hl]
    ld b, b
    xor l
    ld b, b
    or h
    ld b, b
    ld a, $00
    call Call_000_1852
    jr jr_010_40b9

    ld a, $06
    call Call_000_1852
    jr jr_010_40b9

    ld a, $0c
    call Call_000_1852

jr_010_40b9:
    ld a, $83
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $2a
    call Call_000_23cf
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    call Call_000_0ae9
    call Call_000_2b71
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    ld a, [$cc1d]
    rst $00
    ld [bc], a
    ld b, c
    and d
    ld b, c
    nop
    ld b, d
    scf
    ld b, d
    ld [hl], l
    ld b, d
    call $3242
    ld b, e
    ld [hl], e
    ld b, e
    and a
    ld b, e
    call Call_000_0b43
    ld b, h
    add hl, sp

Jump_010_4101:
    ld b, h
    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $f8
    jr z, jr_010_412f

    and $01
    ret nz

    ld hl, PlayerXPosition
    dec [hl]
    ld hl, CameraXPosition
    dec [hl]
    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


jr_010_412f:
    ld a, [$cc28]
    call Call_000_0743
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_010_4169

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_06ce
    cp $05
    jr nc, jr_010_4169

    ld a, $0b
    ld [$cc1d], a
    ld a, $04
    call Call_000_15c0
    ld a, $48
    ld [$c76a], a
    ld a, $60
    ld [$c76b], a
    jr jr_010_416e

jr_010_4169:
    ld a, $01
    ld [$cc1d], a

jr_010_416e:
    xor a
    ld [$cc1c], a
    ld a, $00
    ld [$c60d], a
    ld a, $00
    call Call_000_166a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    ld hl, $418a
    rst $00
    sub b
    ld b, c
    sub [hl]
    ld b, c
    sbc h
    ld b, c
    ld a, $01
    call Call_000_1852
    ret


    ld a, $07
    call Call_000_1852
    ret


    ld a, $0d
    call Call_000_1852
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr z, jr_010_41ec

    ld a, $09
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    jp c, $e041

    ld b, c
    and $41
    ld a, $05
    call Call_000_1852
    ret


    ld a, $0b
    call Call_000_1852
    ret


    ld a, $11
    call Call_000_1852
    ret


jr_010_41ec:
    ld a, $06
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld a, $01

MoveToHouse::
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld a, $03
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c760], a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    dec h
    ld b, d
    dec hl
    ld b, d
    ld sp, $3e42
    inc bc
    call Call_000_1852
    ret


    ld a, $09
    call Call_000_1852
    ret


    ld a, $0f
    call Call_000_1852
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    jr z, jr_010_425e

    cp $40
    ret c

    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    dec [hl]
    ret


jr_010_425e:
    ld a, $04
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c800], a
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ret


    ld hl, $cc1c
    ld a, [hl]
    inc [hl]
    cp $70
    jr z, jr_010_4297

    cp $10
    jr c, jr_010_42ae

    cp $20
    jr z, jr_010_42b7

    cp $30
    jr z, jr_010_42c2

    cp $40
    jr z, jr_010_42b7

    cp $50
    jr z, jr_010_42c2

    cp $60
    jr z, jr_010_42b7

    ret


jr_010_4297:
    ld a, $05
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld [$c800], a
    ld a, $01
    ld [$c60d], a
    ld a, $02
    call Call_000_166a
    ret


jr_010_42ae:
    ld hl, $c60b
    inc [hl]
    ld hl, PlayerOrCameraYPosition
    inc [hl]
    ret


jr_010_42b7:
    ld a, $01
    ld [$c60d], a
    ld a, $00
    call Call_000_166a
    ret


jr_010_42c2:
    ld a, $02
    ld [$c60d], a
    ld a, $00
    call Call_000_166a
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $40
    jr z, jr_010_42f2

    ld hl, PlayerXPosition
    dec [hl]
    dec [hl]
    ld hl, CameraXPosition
    dec [hl]
    dec [hl]
    ld a, [$c603]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_23d8
    ret


Jump_010_42f2:
jr_010_42f2:
    ld hl, $42f9
    ld a, [$cc28]
    rst $00
    ld bc, $0b43
    ld b, e
    dec d
    ld b, e
    rra
    ld b, e
    ld a, [$b953]
    set 3, a
    ld [$b953], a
    jr jr_010_4327

    ld a, [$b969]
    set 3, a
    ld [$b969], a
    jr jr_010_4327

    ld a, [$b97f]
    set 3, a
    ld [$b97f], a
    jr jr_010_4327

    ld a, [$b995]
    set 3, a
    ld [$b995], a

jr_010_4327:
    ld a, $03
    ld [NextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jr z, jr_010_4347

    and $01
    ret nz

    ld hl, PlayerXPosition
    dec [hl]
    ld hl, CameraXPosition
    dec [hl]
    ret


jr_010_4347:
    ld a, $07
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    ld h, c
    ld b, e
    ld h, a
    ld b, e
    ld l, l
    ld b, e
    ld a, $04
    call Call_000_1852
    ret


    ld a, $0a
    call Call_000_1852
    ret


    ld a, $10
    call Call_000_1852
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    ret nz

    ld a, $08
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    sub l
    ld b, e
    sbc e
    ld b, e
    and c
    ld b, e
    ld a, $00
    call Call_000_1852
    ret


    ld a, $06
    call Call_000_1852
    ret


    ld a, $0c
    call Call_000_1852
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jp z, Jump_010_42f2

    and $01
    ret nz

    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $80
    ret nz

    ld a, $0a
    ld [$cc1d], a
    xor a
    ld [$cc1c], a
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    ld sp, hl
    ld b, e
    rst $38
    ld b, e
    dec b
    ld b, h
    ld a, $00
    call Call_000_1852
    ret


    ld a, $06
    call Call_000_1852
    ret


    ld a, $0c
    call Call_000_1852
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $c0
    jp z, Jump_010_42f2

    and $01
    ret nz

    ld hl, PlayerXPosition
    dec [hl]
    ld hl, CameraXPosition
    dec [hl]
    ld hl, $c800
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ld hl, $c800
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec [hl]
    ret


    ld hl, $cc1c
    inc [hl]
    ld a, [hl]
    cp $98
    ret nz

    ld a, $02
    ld [$cc1d], a
    ld a, $05
    call Call_000_15c0
    xor a
    ld [$cc1c], a
    ld hl, $40cf
    ld a, [$cc28]
    call Call_000_0743
    ld a, [hl]
    rst $00
    ld h, b
    ld b, h
    ld h, [hl]
    ld b, h
    ld l, h
    ld b, h
    ld a, $02
    call Call_000_1852
    ret


    ld a, $08
    call Call_000_1852
    ret


    ld a, $0e
    call Call_000_1852
    ret


Call_010_4472:
    ld hl, $4489
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld hl, $4499
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ret


    ld bc, $ff00
    nop
    nop
    ld [$00b0], sp
    ld b, b
    nop
    or b
    ld b, b
    nop
    ld bc, $0001
    ld bc, $ff0e
    nop
    nop
    ld [$00c8], sp
    ld c, b
    nop
    ret z

    ld c, b
    nop
    ld bc, $0000
    nop
    inc b
    xor l
    and [hl]
    rra
    nop
    and [hl]
    xor b
    jr jr_010_44b3

jr_010_44b3:
    and a
    rra
    nop
    and a

MoveToToolRoom::
    ld a, [hl]
    add hl, bc
    ld [bc], a
    dec b
    ld b, $51

Jump_010_44bd:
    ld d, d
    ld d, e
    add hl, bc
    rlca
    dec b
    rst $28
    dec b
    ld b, $05
    ld b, $09
    inc b
    dec d
    ld d, $61
    rst $30
    ld h, d
    ld h, e
    ld a, [bc]
    rlca
    rlca
    dec d
    ld d, $15
    ld d, $7e
    add hl, bc
    ld b, $00
    nop

Jump_010_44db:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec bc
    add hl, hl
    add hl, bc
    ld a, [hl]
    dec bc
    inc b
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    add hl, hl
    dec bc
    ld a, [bc]
    dec bc
    inc b
    ld bc, $001f
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    or h
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld c, e
    stop
    jr nz, @+$42

    rlca
    dec d
    inc h
    or a
    dec h
    ld h, $1d
    dec c
    ld [bc], a
    jr nc, jr_010_4560

jr_010_4510:
    rlca
    rla
    inc [hl]
    or a
    dec [hl]
    ld [hl], $1e
    rrca
    inc b
    dec b
    ld b, $e5
    inc de
    ld b, h
    or a
    ld b, l
    ld b, [hl]
    rra
    rrca
    inc b
    dec d
    ld d, $e5
    inc de
    inc c
    rst $00
    dec c
    ld c, $0f
    rrca
    inc b
    inc bc
    inc b
    pop bc
    rla
    dec b
    ld b, $e3
    inc bc
    inc b
    rrca
    inc b
    inc bc
    inc b
    pop bc
    rla
    dec d
    ld d, $13
    ld bc, $0914
    ld e, $ef
    rra
    rrca
    jr nz, jr_010_4559

    jr nz, jr_010_456b

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

jr_010_4559:
    nop
    rra
    nop
    rra
    nop
    rra
    nop

jr_010_4560:
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

jr_010_456b:
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
    dec b
    jr c, jr_010_4583

jr_010_4583:
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_010_4510

    nop
    add b
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $fb24
    nop
    ld a, [hl]
    ld b, b
    nop
    ld l, $00
    ld l, d
    nop
    ld h, $78
    rrca
    ld bc, $010f
    rrca
    ld bc, $7400
    nop
    ld e, [hl]
    ret nz

    ld bc, $2a07
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fe0
    ld bc, $010f
    rrca
    ld bc, $010f
    ld c, $01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rra
    rst $28
    rst $28
    rra
    ld e, e
    daa
    cpl
    rst $38
    ld de, $0133
    inc bc
    nop
    rlca
    cp $4e
    rst $38
    db $fc
    cp $fc
    db $fc
    ld hl, sp+$6c
    ld hl, sp-$04
    ei
    ld [$0898], sp
    ld [bc], a
    dec sp
    rlca
    ld a, [de]
    rlca
    rla
    cp e
    inc c
    inc c
    ld [$f602], sp
    inc c
    ld c, $0a
    inc b
    xor a
    di
    ld b, c
    pop bc
    ldh [$ff15], a
    rlca
    inc b
    ld hl, sp+$10
    ret nc

    add b
    rst $38
    ret nz

    nop
    ld bc, $0700
    nop
    dec c
    rlca
    rst $38
    rlca
    inc bc
    rlca
    ld bc, $020f
    rrca
    ld [bc], a
    rst $38
    rra
    rrca
    daa
    nop
    rst $38
    ld hl, $edd3
    rst $38
    rst $20
    ei
    di
    rst $18
    rst $38
    xor a
    cp $af
    ei
    db $fc
    rst $38
    dec b
    ld [bc], a
    inc b
    inc bc
    rrca
    nop
    ld [$07fd], sp
    rlca
    ld [bc], a
    inc de
    rst $38
    ld a, a
    adc a
    ld b, $ff
    ld [$0207], a
    rlca
    nop
    ld [bc], a
    rrca
    ld [$f302], sp
    rst $38
    rst $38
    xor e
    adc a
    cp $0d
    ld [bc], a
    ld b, $08
    ld b, $bf
    nop
    ld [bc], a
    rst $28
    ld h, a
    db $fc
    rst $38
    nop
    daa
    ld [$0422], sp
    nop
    nop
    dec hl
    inc b
    rst $38
    nop
    nop
    ldh [rP1], a
    sbc [hl]
    ldh [$ffc7], a
    ld a, [$e2ff]
    db $fc
    ld a, [$4dfc]
    cp $07
    cp $ff
    rra
    rrca
    rra
    rrca
    db $10
    rrca
    inc c
    rrca
    rrc a
    inc c
    db $e3
    add hl, hl
    db $fc
    ld b, b
    ld [$1225], sp
    dec l
    ld e, $f9
    ld e, $00
    ld [de], a
    inc hl
    ld [de], a
    cp $f8
    push hl
    cp $fe
    cp b
    inc h
    inc l
    ld c, c
    ld a, [bc]
    jr nz, jr_010_46b2

    nop
    ccf
    rlca
    ld b, l
    ld a, [bc]
    cp $fd
    adc a
    ld b, c
    dec bc
    rra
    rrca
    jr nc, jr_010_46ef

    ld e, h
    ld a, a

jr_010_46b2:
    rst $28
    ld a, a
    ld a, b

jr_010_46b5:
    jr nc, jr_010_46e7

    inc bc
    dec b
    cp $ff
    ld a, a
    and $40
    rla
    rst $38
    inc bc
    ld bc, $6505
    jr nc, jr_010_46cd

    nop
    inc e
    rst $18
    rlca
    cpl
    rra
    ld e, a

jr_010_46cd:
    ccf
    ld h, l
    ld sp, $00e0
    rst $38
    jr jr_010_46b5

    inc b
    ld hl, sp-$1e
    db $fc
    ld e, a
    dec a
    rst $38
    cp a
    ld h, d
    db $fd
    ld e, e
    rst $30
    ld l, a
    rst $38
    ld l, l
    rst $38
    rst $38
    ld l, l

jr_010_46e7:
    rst $18
    ld l, l
    rst $38
    ld e, a
    ld a, [$ffbc]
    db $fd

jr_010_46ef:
    ld b, [hl]
    and a
    jp c, $f6cf

    rst $28
    or [hl]
    rst $38
    rst $38
    or [hl]
    ei
    or [hl]
    rst $38
    ld a, [$5fbf]
    rst $38

jr_010_4700:
    ld l, b
    rra
    ld d, b
    cpl
    ld c, b
    scf
    daa
    jr jr_010_4700

    inc [hl]
    jr @+$1a

    ldh [$ff2d], a
    db $fd
    ld a, [$f816]
    ld a, a
    ld a, [bc]
    db $f4
    ld [de], a
    db $ec
    db $e4
    jr jr_010_4746

    ld [bc], a
    ld bc, $7fff
    rra
    jr z, @+$21

    jr nc, @+$11

    jr z, jr_010_473c

    db $fd
    daa
    ldh [c], a
    ld bc, $0000
    cp $f8
    inc d
    ld hl, sp-$61
    inc c
    ldh a, [rNR14]
    add sp, -$1c
    inc b
    ld bc, $0606
    ld l, c
    rst $28
    rst $38

jr_010_473c:
    ld h, [hl]
    rst $18
    ld h, [hl]
    ld [$9606], sp
    rst $38
    ld h, [hl]
    rst $28
    ei

jr_010_4746:
    ld h, [hl]
    rst $38
    ld a, [$0806]
    ld l, a
    ld hl, sp+$6f
    rst $30
    sbc $61
    ldh a, [rTAC]
    ld [$1ff6], sp
    or $7b
    ld a, e
    add [hl]
    rrca
    ld [$ff02], sp
    ld l, a
    rst $18
    ld h, c
    ld [$df0a], sp
    or $ff
    or $fb
    add [hl]
    add hl, bc
    inc b
    rst $38
    ld h, c
    cp [hl]
    inc c
    inc c
    add [hl]
    ei
    and $ff
    ld a, [$1007]
    jr @+$75

    rlca
    ld l, $00
    db $10
    ld bc, $300d
    rrca
    dec bc
    jr nz, @+$25

    ld a, h
    db $e3
    ld b, c
    ld bc, $0c0d
    ldh a, [rNR10]
    ldh [$ffe0], a
    ld c, d
    ld b, e
    ld hl, sp-$1b
    ld [bc], a
    dec b
    inc de
    db $e3
    ld [de], a
    add d
    db $fc
    ldh [c], a
    db $fc
    cp a
    ld a, l
    ld a, l
    add hl, bc
    add hl, bc
    cp a
    ld e, a
    ld sp, hl
    cp [hl]
    rst $38
    ld [$ff09], sp
    db $fd
    ld a, [$3fdf]
    ld c, b
    ccf
    jr nz, jr_010_47cf

    rst $38
    rra
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    rst $38
    nop
    nop
    ei
    db $fc
    ld [de], a
    db $fc
    inc b
    ld hl, sp-$03
    jr jr_010_47cf

    ld b, $02
    nop
    ccf
    ld [bc], a
    dec h
    dec de
    rst $18
    inc de
    rrca

jr_010_47cf:
    rla
    ld [$001b], sp
    inc hl
    nop
    nop
    rst $38
    ld b, b
    nop
    db $fc
    ld b, b
    cp h
    ret c

    add sp, -$10
    rst $28
    ld hl, sp+$10
    ret c

    ldh [rSTAT], a
    ld a, [de]
    ld a, [hl]
    ccf
    cp h
    ei
    ld a, a
    ld hl, sp+$20
    nop
    ldh a, [$ff7f]
    or c
    ld a, a
    db $f4
    rst $38
    ld hl, sp-$06
    db $fc
    ld a, [hl]
    db $fc
    dec a
    cp $1f
    cp $20
    nop
    ccf
    cp $fd
    cp $7b
    ld a, $5e
    rst $38
    ccf
    cpl
    rra
    rra
    inc c
    ld d, $0c
    ld a, [bc]
    db $fd
    inc b
    ld bc, $fe32
    cp h
    ld a, [$545c]
    cp b
    ld a, a
    ld hl, sp+$30
    ld l, b
    jr nc, jr_010_486f

    jr nz, jr_010_4891

    ldh [rBGP], a
    ld a, a
    ld a, e
    ld a, $5f
    dec a
    dec l
    ld e, $17
    db $e4
    ld bc, $058a
    ld [bc], a
    ret z

    ldh [rSB], a
    ld h, b
    ldh [c], a
    ld c, c
    inc bc
    ld [bc], a
    add hl, bc
    inc b
    cp d
    rst $20
    ld a, h
    ld [hl], h
    ld hl, sp+$07
    inc b
    ld b, $21
    ld h, c
    rst $38
    ld l, [hl]
    rst $28
    rst $18
    ld l, d
    rst $38
    ld c, [hl]
    dec b
    ld hl, $86ff
    rst $38
    ld a, a
    halt
    ei
    ld d, [hl]
    rst $38
    ld [hl], d
    cp a
    ld d, c
    inc c
    ld hl, $8af9
    dec bc
    ld hl, $3903
    rrca
    ld bc, $0e1f
    rra
    ld [hl], l
    ld a, [bc]
    ld b, b
    nop
    ld bc, $3904
    dec de
    di
    rst $28

jr_010_486f:
    nop
    add hl, sp
    rst $30
    rst $28
    db $fc
    rra
    inc bc
    ld b, c
    rst $30
    rrca
    ld c, $01
    cp a
    dec c
    nop
    ld a, [de]
    inc c
    dec c
    ld b, $05
    ld b, c
    ld [$f07f], a
    rst $30
    ld [bc], a
    dec c
    ld b, $1a
    inc c
    jr nc, jr_010_48a2

    ldh a, [$ffea]

jr_010_4891:
    ld e, e
    ld [hl], h
    ld [hl-], a
    and $5c
    dec b

jr_010_4897:
    inc b
    ld l, [hl]
    ld bc, $60d1
    rst $30
    ld l, e
    ld sp, $0431
    ld b, l

jr_010_48a2:
    db $fd
    ld hl, sp-$15
    pop af
    rst $18
    rst $30
    inc bc
    and [hl]
    jp Jump_010_7473


    inc e
    add b
    nop
    rra
    ret nz

    add b
    ld b, b
    add b
    add b
    add d
    ld l, $eb
    ld h, b
    rlca
    ld b, e
    rst $28
    dec bc
    dec b
    rrca
    dec b
    ld a, [bc]
    dec a
    cp a
    cp $bf
    di
    db $fc
    rst $38
    db $eb
    ld a, [hl-]
    ld bc, $103b
    rrca
    ld [$0007], sp
    ld [hl], d
    ld a, [de]
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
    ld [de], a
    nop
    nop
    ld [$005f], sp
    nop
    stop

jr_010_4910:
    ld a, h
    ld b, b
    nop
    jr c, jr_010_4897

    nop
    add b
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $fb24
    nop
    ld a, [hl]
    ld b, b
    nop
    ld l, $00
    ld l, d
    nop
    ld h, $78
    rrca
    ld bc, $010f
    rrca
    ld bc, $7400
    nop
    ld e, [hl]
    ret nz

    ld bc, $2a07
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fe0
    ld bc, $010f
    rrca
    ld bc, $010f
    ld c, $01
    add d
    ld a, a
    ld b, e
    cp a
    dec a
    ld a, $01
    inc bc
    ld bc, $e401
    jr jr_010_4910

jr_010_4963:
    rst $38
    cp $fa
    db $fc
    xor h
    ld hl, sp-$02
    inc b
    inc b
    sbc h
    db $e4
    add hl, de
    ld bc, $3d02
    ld [bc], a
    ld b, $e6
    ld a, [de]
    inc bc
    ld [bc], a
    ld hl, sp-$05
    ld d, b
    ld d, b
    db $e4
    dec de
    inc d
    nop
    ld a, a
    inc b
    ld a, [$5d7f]
    ld a, l
    ld a, $7f
    dec sp
    rst $38
    ld d, l
    jr nz, jr_010_498d

jr_010_498d:
    ld a, l
    ld a, a
    ld b, $01
    ccf
    rst $38
    inc de
    rst $38
    ld a, a
    rrca
    ld bc, $00ff
    nop
    ld hl, sp+$00
    rst $00
    ld a, b
    di
    db $fd
    rst $18
    db $fd
    cp $af
    cp $07
    jr nz, jr_010_49a9

jr_010_49a9:
    add d
    ld a, a
    rst $18
    ld h, e
    inc a
    ccf
    ld bc, $e603
    jr nz, jr_010_4963

    db $fc
    rra
    ei
    cp $76
    ld hl, sp-$08
    ld [$2b22], sp
    dec b
    inc b
    inc b
    db $fd
    ld a, l
    dec b
    inc b
    rst $38
    ld a, a
    add e
    ld a, h
    db $e3
    ld a, l
    db $d3
    ld a, a
    ld h, b
    rrca
    inc b
    adc l
    ld h, $80
    inc b
    daa
    inc bc
    nop
    rst $38
    dec b
    inc bc
    dec bc
    rlca
    rrca
    ld b, $17
    add hl, bc
    rst $38
    ld e, $05
    rra
    dec bc
    nop
    nop
    ldh [rP1], a
    rst $38
    db $10
    ldh [$ff88], a
    ldh a, [$ffe8]
    or b
    db $f4
    ld c, b
    cp a

jr_010_49f3:
    xor h
    ret nc

    call c, $1fe8
    ld a, [bc]
    jr nz, jr_010_49fb

jr_010_49fb:
    ld b, $7f
    rra
    rlca
    inc c
    rlca
    inc c
    inc bc
    rrca
    ld h, b
    db $10
    ei
    db $fc
    xor b
    jr nz, jr_010_4a0b

jr_010_4a0b:
    or b
    db $fc
    ldh a, [rNR23]
    ldh a, [$ffbf]
    jr jr_010_49f3

    ld hl, sp+$10
    stop
    inc bc
    ld [bc], a
    rrca
    jp nc, $0202

    rlca
    ldh [rNR50], a
    inc bc
    ld [bc], a
    ld hl, sp+$00
    ld [bc], a
    db $10
    ldh [$ffad], a

jr_010_4a28:
    ldh a, [$ffe0]
    dec h
    rra
    add hl, bc
    jr nz, jr_010_4a33

    ld [bc], a
    ld [$c804], sp

jr_010_4a33:
    ld a, [$0420]
    and b
    ld [$0b04], sp
    rra
    ld [$071f], sp
    ld a, $08
    ld b, $e8
    db $fc
    adc b
    db $fc
    ldh a, [$ff0d]
    ld [bc], a
    ld bc, $a306
    dec b
    inc bc
    ld h, c
    ld de, $0203
    inc bc
    ld b, $e0
    ldh [$ff2b], a
    ld bc, $00f7
    ld b, $01
    ldh [$ff0b], a
    rlca
    rla

jr_010_4a5f:
    ld c, $1f
    sbc $02
    inc c
    ret nz

    nop
    jr nc, jr_010_4a28

    ldh [$ff0b], a
    ldh a, [$fff4]
    di
    cp b
    db $fc
    inc bc
    inc c
    ld [bc], a
    ld b, $17
    rrca
    inc d
    rrca
    di
    rrca
    inc bc
    ld de, $0304
    ld b, $f4
    ld hl, sp+$14
    ld hl, sp-$07
    jr @+$04

    inc b
    ld hl, $0704
    ld bc, $050a
    dec b
    push af
    ld [bc], a
    add c
    inc b
    ld c, $30
    inc c
    ld b, b
    nop
    ldh a, [rLCDC]
    rst $38
    cp b
    ret nc

    ldh a, [rNR41]
    jr nc, jr_010_4a5f

    add sp, -$10
    rst $18
    cp b
    ldh a, [rNR14]

Jump_010_4aa5:
    rrca
    inc e
    jr nz, jr_010_4aa9

jr_010_4aa9:
    rla
    dec c
    rst $38
    dec c
    ld b, $0b
    ld b, $05
    ld [bc], a
    inc bc
    nop
    rst $38
    inc d
    ld hl, sp+$1c
    ld hl, sp-$44
    ld hl, sp-$0c
    ld a, b
    rst $38
    ld hl, sp-$10
    add sp, $30
    ld d, b
    jr nz, @+$62

    nop
    ldh [c], a
    dec b
    ld [bc], a
    add hl, bc
    ldh [c], a
    ld bc, $2000
    inc bc
    ld [bc], a
    ld e, b
    ret z

    or b
    ld [hl], e
    ret nc

    jr nz, jr_010_4ad8

    ld a, [bc]

jr_010_4ad8:
    inc b
    inc b

jr_010_4ada:
    rrca
    rrca
    rlca
    ld a, [bc]
    inc b
    rst $30
    ld e, b
    ret c

    or b
    inc bc
    inc b
    ld a, [bc]
    nop
    ccf
    ld [bc], a
    cp a
    ld a, l
    ld l, $7f
    ld [$77ff], sp
    nop
    inc hl
    ld [hl], a
    ei
    ld a, a
    ld [$1420], sp
    nop
    ld h, e
    cp h
    ld sp, hl
    ld a, [hl]
    rst $38
    cp $7f
    rst $10
    ld a, a
    add e
    ld a, a
    add e
    rst $38
    adc $a3
    ld a, [de]
    ret nz

    add b
    add b
    nop
    dec de
    ld b, c
    nop
    ld b, c
    ccf
    rst $20
    ld hl, $1f1e
    jr nz, jr_010_4b33

    dec h
    ld [hl+], a
    ld d, [hl]
    rst $38
    db $fd
    rst $38
    cp $d7
    jr c, jr_010_4ada

    nop
    inc [hl]
    jr jr_010_4b3e

    cp $e2
    inc a
    ret nz

    nop
    ldh [rLCDC], a
    and b
    ret nz

    ret nz

    db $10
    and $44

jr_010_4b33:
    rrca
    ld b, $0f
    ld b, $0d
    ld b, $1e
    ld h, b
    dec d
    push hl
    ld c, b

jr_010_4b3e:
    inc bc
    ld b, $1f
    cp l
    jp Jump_010_66ff


    ld h, [hl]
    ld l, b
    inc hl
    push bc
    inc hl
    ld c, $24
    xor h
    nop
    ld b, $09
    inc h
    db $fc
    adc b
    ret nz

    dec e
    dec b
    nop
    ld e, $00
    ld l, $06
    inc h
    ld [hl], b

jr_010_4b5d:
    db $fc
    ld d, b
    ld b, b
    nop
    add b
    dec b
    inc h
    ld b, $33
    rra
    rla
    cp a
    ld d, a
    rst $38
    ld d, a
    rrca
    ld sp, $3703
    rlca
    ld sp, $030e
    add hl, sp
    db $fc
    adc b
    adc b
    rra
    dec l
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
    rra
    nop
    inc d
    nop
    nop
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_010_4b5d

    nop
    add b
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    dec b
    ld bc, $fb24
    nop
    ld a, [hl]
    ld b, b
    nop
    ld l, $00
    ld l, d
    nop
    ld h, $78
    rrca
    ld bc, $010f
    rrca
    ld bc, $7400
    nop
    ld e, [hl]
    ret nz

    ld bc, $2a07
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0fe0
    ld bc, $010f
    rrca
    ld bc, $010f
    ld c, $01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, [de]
    rst $38
    rrca
    rst $30
    rst $30
    rrca
    dec l
    rst $38
    inc de
    dec de
    ld bc, $0003
    ld c, $fc
    ld a, [bc]
    rst $38
    db $fc
    ld e, h
    ld hl, sp-$0c
    ld hl, sp+$58
    ldh a, [$fff8]
    ei
    db $10
    or b
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    rlca
    rrca
    inc b
    inc b
    xor $08
    ld [bc], a
    db $ec
    jr @+$1a

    ld a, [bc]
    inc b
    ld e, a
    ld hl, $fb22
    ld bc, $0801
    inc b

jr_010_4c54:
    ldh a, [rNR41]
    ldh [$ff80], a
    add b
    ld a, [hl]
    ld [hl+], a
    rla
    inc bc
    nop
    ld b, $03
    inc bc
    ld bc, $0020
    rst $38
    nop
    dec b
    ld [bc], a
    nop
    nop
    or a
    nop
    rst $38
    rst $38
    inc hl
    db $d3
    db $ed
    rst $30
    ei
    rst $38
    rst $18
    cp $d7
    xor a
    db $fc
    xor a
    inc c
    ld [bc], a
    inc bc
    ld [$ff02], sp
    cp $07
    adc a
    db $fc
    rst $38
    ld b, e
    ld [hl+], a
    daa
    inc b
    ld hl, $291c
    ld [bc], a
    ld hl, $ff1d
    ret nz

    nop
    jr nc, jr_010_4c54

    adc [hl]
    ldh a, [$ffc7]
    ld a, [$f67f]
    ld hl, sp-$66
    db $fc
    dec b
    inc bc
    rlca
    jr nz, jr_010_4ca2

jr_010_4ca2:
    jp Jump_000_0304


    ld de, $e100
    ld e, $01
    ld c, $23
    ld c, $f5
    dec bc
    rst $20
    dec de
    ld b, $0e
    nop
    ld c, $25
    ld c, $4a
    db $fc
    db $fc
    ld a, b
    ld l, b
    jr z, jr_010_4d03

    ld a, [bc]

Jump_010_4cbf:
    ld hl, $0722
    nop
    cp a
    rlca
    ld b, e
    ld a, [bc]
    di
    cp $ff
    ld b, c
    add hl, bc
    ld hl, $0c05
    rrca
    rla
    rra
    rst $18
    rra
    ld e, $0c
    inc c
    db $fc
    ld b, b
    add hl, bc
    db $fc
    rst $38
    ld a, a
    cp $ff
    dec de
    rst $38
    dec c
    di
    ei
    nop
    dec b
    sbc [hl]
    add hl, hl
    inc b
    ld c, $03
    rla
    rrca
    add a
    dec l
    ld h, c
    add hl, bc
    adc b
    rst $38
    ldh a, [$ff2f]
    dec e
    ccf
    ld [bc], a
    ld a, l
    dec de
    ld a, a
    rst $38
    daa
    ld a, a
    dec [hl]
    ld a, a
    dec [hl]
    ld [hl], a
    dec l

jr_010_4d03:
    ld a, a
    rst $38
    cpl
    db $e4
    cp b
    db $fc
    ld b, b
    and [hl]
    ret c

    sbc $ff
    db $e4
    cp $ac
    cp $ac
    xor $b4
    cp $ff
    db $f4
    ld e, a
    cpl
    jr c, @+$11

    jr c, jr_010_4d25

    rla
    rst $28
    ld [$0c1a], sp
    inc c
    ldh [c], a

jr_010_4d25:
    add hl, hl
    ld a, [$1cf4]
    rst $38
    ldh a, [rNR32]
    ldh [$ffe8], a
    db $10
    ld e, b
    jr nc, jr_010_4d62

    ld a, $e2
    ld a, [hl+]
    ccf
    rrca
    jr c, jr_010_4d48

    jr jr_010_4d3b

jr_010_4d3b:
    ld [bc], a
    db $e3
    ld bc, $009e
    dec de
    ldh a, [rNR32]
    ldh a, [rNR23]
    nop
    ld [bc], a
    db $e3

jr_010_4d48:
    ld bc, $dd00
    nop
    ld [$3206], sp
    ld [hl], a
    ld a, [hl+]
    ld a, [bc]
    ld b, $4c
    xor $57
    ld d, h
    cp $f4
    ld b, $08
    scf
    jr nz, jr_010_4d5e

jr_010_4d5e:
    ld hl, $0808
    db $fd

jr_010_4d62:
    db $ec
    jr nz, jr_010_4d65

jr_010_4d65:
    add h
    cp $f4
    inc bc
    nop
    inc c

jr_010_4d6b:
    ld a, [hl]
    ld h, b
    dec bc
    cpl
    rra
    ccf
    dec e
    ld e, a
    ld [hl+], a
    add c
    ld a, [bc]
    cp $c1
    inc d
    ld [$c4f0], sp
    ld hl, sp-$0c
    cp b
    ld a, [$44f9]
    add c
    ld a, [bc]
    add e
    inc bc
    ld e, a
    cpl
    ld l, a
    rra
    jr z, jr_010_4d6b

    rra
    rla
    rrca
    dec bc
    rrca
    add e
    inc bc
    ld a, [$fff4]
    or $f8
    inc d
    ld hl, sp+$08
    ldh a, [$fff0]

jr_010_4d9d:
    nop
    rrca
    rrca
    rrca
    ld b, $06
    dec bc
    dec a
    add e
    db $10
    add l
    rrca
    add l
    db $10
    ld a, b
    add l
    rrca
    add l
    ld [$0f81], sp
    dec de
    rlca
    rlca
    inc bc
    add l
    ld [$81ee], sp
    rrca
    jr jr_010_4d9d

    ldh [$ff66], a
    ld b, c
    ld [bc], a
    nop
    rra
    rst $18
    ld [bc], a
    dec h
    dec de
    dec de
    rlca
    ld h, l
    ld b, d
    ld b, b
    nop
    rst $38
    ld hl, sp+$40
    cp h
    ret c

    ld hl, sp-$20
    rrca
    inc b
    db $fd
    dec c
    ld h, b
    ld d, $2e
    rra
    inc a
    rra
    ld e, b
    ccf
    rst $38
    ld a, b
    ccf
    ld a, c
    ccf
    ldh a, [rNR41]
    or b
    ret nz

    rst $38
    add sp, -$10
    ld [hl], h
    ld hl, sp+$3c
    ld hl, sp+$1a
    db $fc
    rst $38
    ld e, $fc
    cp $fc
    ld e, a
    ld a, $3e
    rra
    rst $38
    cpl
    rra
    rra
    inc c
    ld d, $0c
    ld a, [bc]
    inc b
    cp $e1
    add hl, de
    ld a, [$fcbc]
    ld e, b
    ld d, h
    cp b
    ld hl, sp-$41
    jr nc, jr_010_4e79

    jr nc, jr_010_4e63

    jr nz, @+$72

    ldh [$ff3f], a
    ld e, a
    ccf
    ld a, $3f
    dec e
    dec l
    ld e, $17
    ldh [rSB], a
    ld [hl], e
    dec bc
    adc d
    inc bc
    ld [bc], a
    add sp, -$20
    ld bc, $e260
    ld b, c
    inc bc
    ld [bc], a
    add hl, bc
    inc b
    cp h
    rst $20
    ld a, b
    ld [hl], h
    ld hl, sp+$07
    inc b
    dec b
    dec l
    rlca
    nop

jr_010_4e3b:
    rrca
    rst $08
    rlca
    rrca
    dec b
    rrca
    nop
    ld a, [bc]
    inc b
    dec l
    adc e
    rst $38
    rst $38
    ld [hl], a
    cp $57
    db $fc
    ld [hl], a
    rrca
    ld bc, $e70f
    rlca
    ld [$0007], sp
    jr z, jr_010_4e3b

    ld c, l
    ld hl, sp+$1f
    ld hl, sp-$01
    rst $38
    inc [hl]
    rst $38
    rra
    rst $28
    rst $30
    rrca

jr_010_4e63:
    cp a
    cp a
    ld h, b
    ld e, e
    jr nc, jr_010_4ea0

    inc bc
    inc e
    add b
    inc de
    cp b
    rst $38
    ldh a, [$ffe8]
    ldh a, [$ffb6]
    ret nz

    rlc [hl]
    sub [hl]
    rlca
    inc c

jr_010_4e79:
    ld c, h
    add b
    daa
    rrca
    sra b
    rrca
    ld b, $03
    ld b, $eb
    ld l, $2f

jr_010_4e86:
    ld c, $fc
    rlca
    nop
    pop hl
    ld l, $02
    and b
    scf
    inc b
    ld [hl+], a
    db $fc
    ld b, b
    inc sp
    ld bc, $fb3d
    rlca
    rrca
    nop
    ld a, [de]
    inc c
    cp e
    dec c
    ld b, $05

jr_010_4ea0:
    dec a
    ret c

    ldh [$ffec], a
    nop
    ld bc, $c534
    jr jr_010_4e86

    ld a, [de]
    nop
    ld b, c
    inc a
    jp hl


    ld e, b
    ld b, $2b
    ld sp, $df7f
    ld l, $7f
    ld a, [hl+]
    ld a, a
    ld l, $06
    dec hl
    adc h

Call_010_4ebd:
    cp $7f
    ld [hl], h
    cp $54
    cp $74
    ld e, a
    ld hl, $2b0c
    pop hl
    add h
    dec bc
    dec hl
    ld [$803f], sp
    ccf
    inc c
    ccf
    rst $18
    db $fc
    rst $18
    nop
    ld c, $0c
    ldh [c], a
    ld a, [hl-]
    rlca
    inc c
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
    rla
    nop
    ld a, $01
    ld [OutsideFarm], a
    ld a, [$ba49]
    or a
    jr nz, jr_010_4f2d

    call Call_010_5514
    call Call_010_5547
    ld a, $01
    ld [$ba49], a

jr_010_4f2d:
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    xor a
    ld [$c600], a
    ld [$c620], a
    ld [$c640], a
    ld [$c660], a
    ld [$c680], a
    ld [$c6a0], a
    ld [$c6c0], a
    ld [$c6e0], a
    ld [$c700], a
    ld [$c720], a
    ld [$c740], a
    ld [$c760], a
    ld [GrabbingDog?], a
    ld [$c800], a
    ld [$c820], a
    ld [$c800], a
    ld [$c880], a
    ld [$c780], a
    ld hl, $62b5
    ld c, $10
    ld de, $8800
    call Call_000_2f41
    ld hl, $6090
    ld c, $10
    ld de, $9000
    call Call_000_2f41
    ld hl, $64fd
    ld c, $10
    ld de, $9800
    call Call_000_2f41
    ld a, $00
    ld [$cb5c], a
    ld a, $77
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [TransitionRelated], a
    call Call_010_5590
    call Call_010_55b7
    ld a, $83
    ld [$c0a2], a
    ld a, $68
    ldh [WindowY], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld hl, PaletteRelated
    inc hl
    ld a, $72
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$ccb6], a
    ld [$cca6], a
    ld [$cca7], a
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_010_4fee
    call Call_000_2b71
    call Call_000_362c
    ret


    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call $54a3
    call Call_000_2b71
    call Call_000_362c
    ret


Call_010_4fee:
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

Jump_010_4ff7:
    ld a, [$cca6]
    rst $00
    dec d
    ld d, b
    ld b, h
    ld d, b
    ld d, h
    ld d, b
    ld a, $51
    ld e, b
    ld d, c
    ld h, e
    ld d, c
    ld [hl], e
    ld d, c
    sbc h
    ld d, c
    xor a
    ld d, c
    jp nz, Jump_000_1c51

    ld d, d
    dec e
    ld d, d
    dec l
    ld d, d
    ld hl, $cca7
    ld a, [hl]
    cp $30
    jr z, jr_010_5028

    cp $00
    jr nz, jr_010_502d

    ld a, $44
    call Call_000_23d5
    jr jr_010_502d

jr_010_5028:
    ld a, $2a
    call Call_000_23cf

jr_010_502d:
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    inc [hl]
    ld a, [hl]
    cp $30
    ret nz

    ld a, $01
    ld [$cca6], a
    xor a
    ld [$cca7], a
    ret


    ld hl, $cca7
    inc [hl]
    ld a, [hl]
    cp $1e
    ret c

    xor a
    ld [hl], a
    ld a, $02
    ld [$cca6], a
    ret


    ld b, $00
    ld c, $04
    ld hl, $b949

jr_010_505b:
    ld a, [hl]
    cp $ff
    jr z, jr_010_5061

    inc b

jr_010_5061:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_505b

    ld a, b
    call Call_000_3215
    ld a, [$ccd1]
    ld [$ccad], a
    ld a, $c3
    call Call_000_3e80
    ld a, $03
    ld [$cca6], a
    ld hl, $b949
    ld a, [hl+]
    cp $ff
    call z, Call_010_512c
    ld hl, $b95f
    ld a, [hl+]
    cp $ff
    call z, Call_010_512c
    ld hl, $b975
    ld a, [hl+]
    cp $ff
    call z, Call_010_512c
    ld hl, $b98b
    ld a, [hl+]
    cp $ff
    call z, Call_010_512c
    xor a
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ldh [$ffa7], a
    ld a, [$b949]
    cp $ff
    jr z, jr_010_50b9

    ld a, [$b94f]
    ldh [$ffa4], a

jr_010_50b9:
    ld a, [$b95f]
    cp $ff
    jr z, jr_010_50c5

    ld a, [$b965]
    ldh [$ffa5], a

jr_010_50c5:
    ld a, [$b975]
    cp $ff
    jr z, jr_010_50d1

    ld a, [$b97b]
    ldh [$ffa6], a

jr_010_50d1:
    ld a, [$b98b]
    cp $ff
    jr z, jr_010_50dd

    ld a, [$b991]
    ldh [$ffa7], a

jr_010_50dd:
    ld c, $00
    ldh a, [$ffa4]
    ld b, a
    ldh a, [$ffa5]
    cp b
    jr nc, jr_010_50e9

    jr jr_010_50ee

jr_010_50e9:
    ldh a, [$ffa5]
    ld c, $01
    ld b, a

jr_010_50ee:
    ldh a, [$ffa6]
    cp b
    jr nc, jr_010_50f5

    jr jr_010_50fa

jr_010_50f5:
    ldh a, [$ffa6]
    ld c, $02
    ld b, a

jr_010_50fa:
    ldh a, [$ffa7]
    cp b
    jr nc, jr_010_5101

    jr jr_010_5106

jr_010_5101:
    ldh a, [$ffa7]
    ld c, $03
    ld b, a

jr_010_5106:
    ld a, b
    ldh [$ffa4], a
    ld a, c
    ld hl, $5136
    call Call_000_0743
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cc00
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ldh a, [$ffa4]
    ld [$cc15], a
    ret


Call_010_512c:
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    and $02
    jr nz, jr_010_5152

    ld a, $04
    ld [$cca6], a
    ret


jr_010_5152:
    ld a, $06
    ld [$cca6], a
    ret


    ld a, $c6
    call Call_000_3e80
    ld a, $05
    ld [$cca6], a
    ret


    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $06
    ld [$cca6], a
    ret


    call Call_010_523d
    call $5329
    or a
    jr nz, jr_010_519c

    ld a, [$cca6]
    cp $06
    jp nz, Jump_010_4ff7

    ld a, [$ccb6]
    or a
    jr nz, jr_010_5191

    ld a, $c4
    call Call_000_3e80
    jr jr_010_5196

jr_010_5191:
    ld a, $f0
    call Call_000_3e80

jr_010_5196:
    ld a, $08
    ld [$cca6], a
    ret


jr_010_519c:
    ld a, [$cca6]
    cp $06
    jp nz, Jump_010_4ff7

    ld a, $c5
    call Call_000_3e80
    ld a, $08
    ld [$cca6], a
    ret


    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $09
    ld [$cca6], a
    call Call_000_393d
    ret


    ld hl, $cca7
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    dec [hl]
    ld a, [hl]
    cp $e0
    ret nz

    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [TimePaused], a
    ld a, $01
    ld [$c910], a
    xor a
    ld [$ba10], a
    ld [$ba11], a
    ld a, $02
    ld [$ba43], a
    xor a
    ld [$ba49], a
    ld [$b93f], a
    ld [$b940], a
    ld [$b941], a
    ld a, [$b8d1]
    or a
    jr z, jr_010_5206

Jump_010_5200:
    ld a, [$ba3a]
    or a
    jr z, jr_010_5211

jr_010_5206:
    ld a, $02
    ld [NextMapIndex], a
    ld a, $01
    ld [$c910], a
    ret


jr_010_5211:
    ld a, $21
    ld [NextMapIndex], a
    ld a, $ff
    ld [$ba3a], a
    ret


    ret


    ld a, $c7
    call Call_000_3e80
    ld a, $08
    ld [$cca6], a
    ld a, $01
    ld [$b8d1], a
    ret


    ld a, $c8
    call Call_000_3e80
    ld a, $08
    ld [$cca6], a
    ld a, $01
    ld [$b8d1], a
    ret


Call_010_523d:
    ld b, $00
    ld c, $04
    ld hl, $b949

jr_010_5244:
    ld a, [hl]
    cp $ff
    jr z, jr_010_524a

    inc b

jr_010_524a:
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_5244

    ld a, b
    cp $02
    jr c, jr_010_5265

    cp $04
    jr c, jr_010_526c

    ld a, $00
    ld [$cca8], a
    jr jr_010_5271

jr_010_5265:
    ld a, $02
    ld [$cca8], a
    jr jr_010_5271

jr_010_526c:
    ld a, $01
    ld [$cca8], a

jr_010_5271:
    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_010_5278:
    ld a, [hl]
    cp $ff
    jr z, jr_010_527e

    inc b

jr_010_527e:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_5278

    ld a, b
    cp $02
    jr c, jr_010_5299

    cp $04
    jr c, jr_010_52a0

    ld a, $00
    ld [$cca9], a
    jr jr_010_52a5

jr_010_5299:
    ld a, $02
    ld [$cca9], a
    jr jr_010_52a5

jr_010_52a0:
    ld a, $01
    ld [$cca9], a

jr_010_52a5:
    ld a, [$cc9c]
    cp $06
    jp c, Jump_010_52bd

    jr nz, jr_010_52b6

    ld a, [$cc9b]
    cp $40
    jr c, jr_010_52bd

jr_010_52b6:
    ld a, $00
    ld [$ccaa], a
    jr jr_010_52da

Jump_010_52bd:
jr_010_52bd:
    ld a, [$cc9c]
    cp $03
    jp c, Jump_010_52d5

    jr nz, jr_010_52ce

    ld a, [$cc9b]
    cp $20
    jr c, jr_010_52d5

jr_010_52ce:
    ld a, $01
    ld [$ccaa], a
    jr jr_010_52da

Jump_010_52d5:
jr_010_52d5:
    ld a, $02
    ld [$ccaa], a

jr_010_52da:
    ld a, [$ba37]
    or a
    jr nz, jr_010_52f0

    ld a, [$ba36]
    cp $13
    jr c, jr_010_52f7

    jr nz, jr_010_52f0

    ld a, [$ba35]
    cp $88
    jr c, jr_010_52f7

jr_010_52f0:
    ld a, $00
    ld [$ccab], a
    jr jr_010_5315

jr_010_52f7:
    ld a, [$ba36]
    cp $05
    jr c, jr_010_530e

    jr nz, jr_010_5307

    ld a, [$ba35]
    cp $dc
    jr c, jr_010_530e

jr_010_5307:
    ld a, $01
    ld [$ccab], a
    jr jr_010_5315

jr_010_530e:
    ld a, $02
    ld [$ccab], a
    jr jr_010_5315

jr_010_5315:
    ld a, [$cbe8]
    ld hl, $5326
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$ccac], a
    ret


    ld [bc], a
    ld bc, $af00
    ldh [$ffa4], a
    ldh [$ffa5], a
    ldh [$ffa6], a
    ld b, $05
    ld hl, $cca8

jr_010_5335:
    ld a, [hl]
    or a
    call z, Call_010_545b
    ld a, [hl]
    cp $01
    call z, Call_010_5461
    ld a, [hl]
    cp $02
    call z, Call_010_5467
    inc hl
    dec b
    jr nz, jr_010_5335

    ldh a, [$ffa4]
    cp $05
    jr c, jr_010_5357

    call z, Call_010_5417
    or a
    jp z, Jump_010_5412

jr_010_5357:
    ldh a, [$ffa6]
    cp $05
    jp nc, Jump_010_5414

    ld a, [$ba0f]
    bit 7, a
    jr nz, jr_010_537d

    set 7, a
    ld [$ba0f], a
    ld a, $00
    call Call_010_546d
    ld a, $01
    ld [$b90b], a
    ld [$ccb6], a
    call Call_000_1191
    jp Jump_010_5412


jr_010_537d:
    ldh a, [$ffa6]
    cp $02
    jp nc, Jump_010_5414

    ld a, [$ba0f]
    bit 6, a
    jr nz, jr_010_539d

    set 6, a
    ld [$ba0f], a
    ld a, $01
    call Call_010_546d
    ld a, $01
    ld [$b8bf], a
    jp Jump_010_5412


jr_010_539d:
    ldh a, [$ffa4]
    cp $04
    jr c, jr_010_5414

    ld a, [$ba0f]
    bit 5, a
    jr nz, jr_010_53bb

    set 5, a
    ld [$ba0f], a
    ld a, $02
    call Call_010_546d
    ld a, $01
    ld [$b8bd], a
    jr jr_010_5412

jr_010_53bb:
    ldh a, [$ffa4]
    cp $05
    jr c, jr_010_5414

    ld a, [$ba0f]
    bit 4, a
    jr nz, jr_010_53d9

    set 4, a
    ld [$ba0f], a
    ld a, $03
    call Call_010_546d
    ld a, $01
    ld [$b8be], a
    jr jr_010_5412

jr_010_53d9:
    ld a, [$b904]
    cp $06
    jr c, jr_010_5402

    ld a, [$ba11]
    or a
    jr nz, jr_010_5402

    ld a, [$ba10]
    cp $f1
    jr nc, jr_010_5402

    ld a, [$b8f2]
    cp $fa
    jr c, jr_010_5402

    ld a, [CurrentMoneyH]
    or a
    jr z, jr_010_5402

    ld a, [$b8ec]
    or a
    jr z, jr_010_5404

    jr jr_010_540b

jr_010_5402:
    jr jr_010_5414

jr_010_5404:
    ld a, $0b
    ld [$cca6], a
    jr jr_010_5412

jr_010_540b:
    ld a, $0c
    ld [$cca6], a
    jr jr_010_5412

Jump_010_5412:
jr_010_5412:
    xor a
    ret


Jump_010_5414:
jr_010_5414:
    ld a, $01
    ret


Call_010_5417:
    ld a, [$b904]
    cp $06
    jr c, jr_010_5446

    ld a, [$ba11]
    or a
    jr nz, jr_010_5446

    ld a, [$ba10]
    cp $f1
    jr nc, jr_010_5446

    ld a, [$b8f2]
    cp $fa
    jr c, jr_010_5446

    ld a, [CurrentMoneyH]
    or a
    jr z, jr_010_5446

    ld a, [$b8d1]
    or a
    jr nz, jr_010_5458

    ld a, [$b8ec]
    or a
    jr z, jr_010_5448

    jr jr_010_544f

jr_010_5446:
    jr jr_010_5458

jr_010_5448:
    ld a, $0b
    ld [$cca6], a
    jr jr_010_5456

jr_010_544f:
    ld a, $0c
    ld [$cca6], a
    jr jr_010_5456

jr_010_5456:
    xor a
    ret


jr_010_5458:
    ld a, $01
    ret


Call_010_545b:
    ldh a, [$ffa4]
    inc a
    ldh [$ffa4], a
    ret


Call_010_5461:
    ldh a, [$ffa5]
    inc a
    ldh [$ffa5], a
    ret


Call_010_5467:
    ldh a, [$ffa6]
    inc a
    ldh [$ffa6], a
    ret


Call_010_546d:
    ld hl, $5487
    ld b, a
    sla a
    ld c, a
    sla a
    add c
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $cc9d
    ld b, $07
    call Call_000_210f
    ret


    xor a
    xor a
    xor a
    xor a
    xor a
    inc [hl]
    ld sp, $afaf
    xor a
    ld [hl-], a
    add c
    or b
    inc b
    xor a
    xor a
    xor a
    ld [hl-], a
    add d
    ld d, b
    ld hl, $6300

jr_010_549e:
    ld d, d
    add c
    ld b, h
    db $10
    jr nz, jr_010_549e

    ld c, [hl]
    bit 0, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    ld a, [$cca6]
    rst $00
    dec d
    ld d, b
    ld b, h
    ld d, b
    cp h
    ld d, h
    rst $00
    ld d, h
    rst $10
    ld d, h
    ldh [rHDMA4], a
    ld a, $c9
    call Call_000_3e80
    ld a, $03
    ld [$cca6], a
    ret


    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    or a
    ret z

    ld a, $04
    ld [$cca6], a
    ret


    ld a, $05
    ld [$cca6], a
    call Call_000_393d
    ret


    ld hl, $cca7
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c80b
    dec [hl]
    ld a, [hl]
    cp $e0
    ret nz

    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [TimePaused], a
    ld a, $1d
    ld [TransitionRelated2], a
    ld a, $02
    ld [$ba43], a
    ld a, $26
    ld [NextMapIndex], a
    ld a, $00
    ld [$c90b], a
    ld a, $01
    ld [$ccc1], a
    ret


Call_010_5514:
    ld a, [$ba4a]
    cpl
    inc a
    call Call_000_0fb9
    xor a
    ld [$ba4a], a
    ld b, $00
    ld c, $04
    ld hl, $b9a7

jr_010_5527:
    ld a, [hl]
    cp $ff
    jr z, jr_010_5535

    inc b
    ld a, [$ba4a]
    add $0a
    ld [$ba4a], a

jr_010_5535:
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_010_5527

    ld a, [$ba4a]
    call Call_000_0fb9
    ret


Call_010_5547:
    ld a, [$ba4b]
    cpl
    inc a
    call Call_000_0fb9
    xor a
    ld [$ba4b], a
    ld b, a
    ld c, a
    ld hl, $a000

jr_010_5558:
    inc hl
    ld a, [hl]
    bit 6, a
    jr nz, jr_010_556d

    or a
    jr nz, jr_010_556e

    dec hl
    ld a, [hl+]
    cp $11
    jr z, jr_010_556d

    cp $12
    jr z, jr_010_556d

    jr jr_010_556e

jr_010_556d:
    inc bc

jr_010_556e:
    inc hl
    ld a, h
    cp $b8
    jr c, jr_010_5558

    ld a, l
    cp $80
    jr c, jr_010_5558

    ld a, b
    ld [$cc9c], a
    ld a, c
    ld [$cc9b], a
    ld h, b
    ld l, c
    ld a, $40
    call Call_000_06ce
    ld a, l
    ld [$ba4b], a
    call Call_000_0fb9
    ret


Call_010_5590:
    xor a
    ldh [CameraX], a
    ldh [CameraY], a
    ld [$c600], a
    ld [$c820], a
    ld hl, $55a7
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ret


    ld bc, $0007
    nop
    nop
    nop
    nop

Jump_010_55ae:
    nop
    nop
    nop
    ld d, b
    ldh [rP1], a
    nop
    nop
    nop

Call_010_55b7:
    ld hl, $9c00
    ld de, $55c5
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


    ld a, b
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, d
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
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, e
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    nop
    nop
    dec l
    ld d, [hl]
    inc sp
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    or c
    ld d, [hl]
    inc c
    nop
    xor a
    nop
    inc c
    ld hl, sp-$52
    nop
    inc b
    rrca
    xor l
    nop
    inc b
    rlca
    xor h
    nop
    inc b
    rst $38
    xor e
    nop
    inc b
    rst $30
    xor d
    nop
    inc b
    rst $28
    xor c
    nop
    db $fc
    rrca
    xor b
    nop
    db $fc
    rlca
    and a
    nop
    db $fc
    rst $38
    and [hl]
    nop
    db $fc
    rst $30
    and l
    nop
    db $fc
    rst $28
    and h
    nop
    db $f4
    nop
    and e
    nop
    db $f4
    ld hl, sp-$5e
    nop
    db $ec
    rst $38
    and c
    nop
    db $ec
    rst $30
    and b
    nop
    add b
    inc c
    nop
    xor a
    nop
    inc c
    ld hl, sp-$52
    nop
    inc b
    rlca
    cp d
    nop
    inc b
    rst $38
    cp c
    nop
    inc b
    rst $30
    cp b
    nop
    inc b
    rst $28
    or a
    nop
    db $fc
    rlca
    or [hl]
    nop
    db $fc
    rst $38
    or l
    nop
    db $fc
    rst $30
    or h
    nop
    db $fc
    rst $28
    or e
    nop
    db $f4
    inc bc
    or d
    nop
    db $f4
    ei
    or c
    nop
    db $f4
    di
    or b
    nop
    db $ec
    rst $38
    and c
    nop
    db $ec
    rst $30
    and b
    nop
    add b
    inc c
    nop
    xor a
    nop
    inc c
    ld hl, sp-$52
    nop
    inc b
    inc b
    jp $0400


    db $fc
    jp nz, $0400

    db $f4
    pop bc
    nop
    db $fc
    inc b
    ret nz

    nop
    db $fc
    db $fc
    cp a
    nop
    db $fc
    db $f4
    cp [hl]
    nop
    db $f4
    rlca
    cp l
    nop
    db $f4
    rst $38
    cp h
    nop
    db $f4
    rst $30
    cp e
    nop
    db $ec
    rst $38
    and c
    nop
    db $ec
    rst $30
    and b
    nop
    add b
    add sp, $56
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    adc h
    nop
    ld b, h
    nop
    ld d, c
    nop
    stop
    add c
    nop
    sub e
    nop
    inc sp
    nop
    reti


    nop
    ld b, b
    nop
    or e
    nop
    cp d
    nop
    stop
    ld d, d
    nop
    ld hl, $a100
    nop
    ld b, b
    nop
    ld sp, $1000
    nop
    add b
    nop
    ld [hl], h
    nop
    stop
    sub h
    nop
    or c
    nop
    ld h, b
    nop
    ld [hl+], a
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
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld a, b
    nop
    ld b, $00
    sbc c
    nop
    cp l
    nop
    reti


    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld hl, $7200
    nop
    sub e
    nop
    jr nc, jr_010_575b

jr_010_575b:
    ld h, c
    nop
    jr nc, jr_010_575f

jr_010_575f:
    ld bc, $bd00
    nop
    ld [hl+], a
    nop
    ld d, d
    nop
    ld [hl], e
    nop
    ld a, d
    nop
    sub e
    nop
    inc [hl]
    nop
    ld hl, $3000
    nop
    ld bc, $0100
    nop
    ld de, $c600
    nop
    sub h
    nop
    cp l
    nop
    ld [hl+], a
    nop
    ld [hl], e
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    inc bc
    nop
    ld d, e
    nop
    ld d, e
    nop
    reti


    nop
    ld de, $8300
    nop
    ld bc, $4000
    nop
    inc b
    nop
    ld d, b
    nop
    ld b, b
    nop
    cp l
    nop
    ld hl, $9200
    nop
    ld l, e
    nop
    xor a
    nop
    ld [hl], c
    nop
    ld de, $4400
    nop
    ld d, b
    nop
    ld b, b
    nop
    sub e
    nop
    inc sp
    nop
    reti


    nop
    ld bc, $0200
    nop
    sub h
    nop
    cp d
    nop
    ld [hl], d
    nop
    jp c, $af00

    nop
    xor a
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld h, h
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    and d
    nop
    reti


    nop
    inc b
    nop
    ld d, b
    nop
    ld b, b
    nop
    and b
    nop
    ld bc, $7a00
    nop
    sub e
    nop
    adc $00
    ld bc, $2000
    nop
    ld [de], a
    nop
    ld d, b
    nop
    add d
    nop
    ld b, c
    nop
    ld b, b
    nop
    add d
    nop
    ld b, e
    nop
    jp c, Jump_010_6000

    nop
    ld sp, $be00
    nop
    inc b
    nop
    ld hl, $0100
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
    ld [hl], b
    ld h, b
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    jr jr_010_582f

jr_010_582f:
    ld a, d
    nop
    ld d, $00
    reti


    nop
    ld [hl], e
    nop
    jr nc, jr_010_5839

jr_010_5839:
    ld hl, $a000
    nop
    ld [hl], b
    nop
    ld bc, $3000
    nop
    ld b, h
    nop
    jp c, $af00

    nop
    jr nc, jr_010_584b

jr_010_584b:
    rst $00
    nop
    inc sp
    nop
    ld h, c
    nop
    inc sp
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
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld h, b
    nop
    nop
    inc d
    nop
    inc [hl]
    nop
    ld hl, $6400
    nop
    nop
    nop
    inc [hl]
    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld hl, $da00
    nop
    dec bc
    nop
    ld b, e
    nop
    sub h
    nop
    sub e
    nop
    inc sp
    nop
    reti


    nop
    nop
    nop
    sub e
    nop
    inc [hl]
    nop
    ld bc, $0200
    nop
    ld h, b
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    and c
    nop
    ld sp, $9000
    nop
    ld [bc], a
    nop
    ld b, e
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
    ld l, a
    ld h, b
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    reti


    nop
    ld b, h
    nop
    sub h
    nop
    cp l
    nop
    add d
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
    ld [de], a
    nop
    ld a, d
    nop
    xor h
    nop
    ld [hl], b
    nop
    sub e
    nop
    adc $00
    inc b
    nop
    ld bc, $2100
    nop
    ld bc, $7200
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    xor a
    nop
    xor a
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld b, b
    nop
    sub h
    nop
    cp d
    nop
    ld [hl], d
    nop
    reti


    nop
    add [hl]
    nop
    sbc c
    nop
    xor c
    nop
    or [hl]
    nop
    sub [hl]
    nop
    ld a, d
    nop
    daa
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    reti


    nop
    call Call_000_1700
    nop
    ld d, b
    nop
    inc b
    nop
    jr nz, jr_010_5937

jr_010_5937:
    inc de
    nop
    and b
    nop
    reti


    nop
    ld b, h
    nop
    ld h, e
    nop
    ld b, b
    nop
    ld bc, $4400
    nop
    ld l, d
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
    ld l, a
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    inc hl
    nop
    ld bc, $4000
    nop
    add d
    nop
    ld [hl], d
    nop
    add d
    nop
    ld b, c
    nop
    reti


    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_010_5977

jr_010_5977:
    inc [hl]
    nop
    ld d, d
    nop
    jr nc, jr_010_597d

jr_010_597d:
    add c
    nop
    inc [hl]
    nop
    ld d, b
    nop
    ld bc, $1000
    nop
    ld b, b
    nop
    stop
    sub e
    nop
    jr nc, jr_010_598f

jr_010_598f:
    ld [hl], d
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
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
    ld b, e
    nop
    jp c, Jump_010_5200

    nop
    jr nc, jr_010_59b5

jr_010_59b5:
    add c
    nop
    ld de, $8100
    nop
    ld b, h
    nop
    ld [hl], d
    nop
    add d
    nop
    ld d, b
    nop
    reti


    nop
    rst $00
    nop
    ld [hl-], a
    nop
    ld b, h
    nop
    ld de, $1000
    nop
    ld bc, $bd00
    nop
    ld b, e
    nop
    jp c, $0200

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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    inc hl
    nop
    ld bc, $4000
    nop
    add d
    nop
    ld [hl], d
    nop
    add d
    nop
    ld b, c
    nop
    reti


    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_010_5a0f

jr_010_5a0f:
    inc [hl]
    nop
    ld d, d
    nop
    jr nc, jr_010_5a15

jr_010_5a15:
    add c
    nop
    inc [hl]
    nop
    ld d, b
    nop
    ld bc, $1000
    nop
    ld b, b
    nop
    stop
    sub e
    nop
    jr nc, jr_010_5a27

jr_010_5a27:
    ld [hl], d
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    jp c, $af00

    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    nop
    nop
    stop
    ld [de], a
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    ld bc, $bd00
    nop
    ld [hl], d
    nop
    xor h
    nop
    inc h
    nop
    sub h
    nop
    ld b, b
    nop
    ld bc, $6100
    nop
    cp l
    nop
    ld bc, $9300
    nop
    jr nc, jr_010_5a63

jr_010_5a63:
    ld b, h
    nop
    cp l
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld bc, $7300
    nop
    ld [hl], d
    nop
    jp c, $0200

    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    nop
    xor h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld bc, $3000
    nop
    ld bc, $7200
    nop
    ld a, d
    nop
    xor h
    nop
    ld [hl+], a
    nop
    ld a, d
    nop
    sub h
    nop
    and h
    nop
    ld [de], a
    nop
    ld bc, $3000
    nop
    ld bc, $7200
    nop
    jp c, $0400

    nop
    ld b, e
    nop
    and b
    nop
    ld bc, $da00
    nop
    ld bc, $7300
    nop
    ld [hl], h
    nop
    inc d
    nop
    ld [hl], e
    nop
    ld hl, $3300
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
    ld l, a
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    ldh [c], a
    nop
    xor h
    nop
    ld [hl+], a
    nop
    sub e
    nop
    and h
    nop
    ld [de], a
    nop
    ld bc, $3000
    nop
    stop
    sub e
    nop
    jr nc, jr_010_5aed

jr_010_5aed:
    ld [hl], d
    nop
    db $e4
    nop
    jp c, $af00

    nop
    jr nc, jr_010_5af7

jr_010_5af7:
    ld [hl+], a
    nop
    inc de
    nop
    inc sp
    nop
    ld [de], a
    nop
    add e
    nop
    inc sp
    nop
    nop
    nop
    add c
    nop
    and b
    nop
    inc [hl]
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
    add e
    ld h, b
    nop
    nop
    inc b
    nop
    db $e4
    nop
    dec d
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld l, d
    nop
    nop
    call z, $cc01
    ld [bc], a
    call z, $cc03
    ld [hl], h
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    add b
    nop
    stop
    ld b, c
    nop
    ld b, e
    nop
    ld h, d
    nop
    add b
    nop
    inc hl
    nop
    jr nc, jr_010_5b4b

jr_010_5b4b:
    ld h, b
    nop
    inc bc
    nop
    jp c, $af00

    nop
    xor a
    nop
    dec b
    nop
    ld a, d
    nop
    ld l, b
    nop
    sbc c
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
    add e
    ld h, b
    nop
    nop
    inc b
    nop
    db $e4
    nop
    dec d
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld l, d
    nop
    inc b
    call z, $cc05
    ld b, $cc
    rlca
    call z, Call_000_0074
    ld [hl], b
    nop
    ld [hl+], a
    nop
    add b
    nop
    stop
    ld b, c
    nop
    ld b, e
    nop
    ld h, d
    nop
    add b
    nop
    inc hl
    nop
    jr nc, jr_010_5b97

jr_010_5b97:
    ld h, b
    nop
    inc bc
    nop
    jp c, $af00

    nop
    xor a
    nop
    dec b
    nop
    ld a, d
    nop
    ld l, b
    nop
    sbc c
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
    add e
    ld h, b
    nop
    nop
    inc b
    nop
    db $e4
    nop
    dec d
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld l, d
    nop
    ld [$09cc], sp
    call z, $cc0a
    dec bc
    call z, Call_000_0074
    ld [hl], b
    nop
    ld [hl+], a
    nop
    add b
    nop
    stop
    ld b, c
    nop
    ld b, e
    nop
    ld h, d
    nop
    add b
    nop
    inc hl
    nop
    jr nc, jr_010_5be3

jr_010_5be3:
    ld h, b
    nop
    inc bc
    nop
    jp c, $af00

    nop
    xor a
    nop
    dec b
    nop
    ld a, d
    nop
    ld l, b
    nop
    sbc c
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
    add e
    ld h, b
    nop
    nop
    inc b
    nop
    db $e4
    nop
    dec d
    nop
    ld h, [hl]
    nop
    ld [hl], d
    nop
    ld l, d
    nop
    inc c
    call z, $cc0d
    ld c, $cc
    rrca
    call z, Call_000_0074
    ld [hl], b
    nop
    ld [hl+], a
    nop
    add b
    nop
    stop
    ld b, c
    nop
    ld b, e
    nop
    ld h, d
    nop
    add b
    nop
    inc hl
    nop
    jr nc, jr_010_5c2f

jr_010_5c2f:
    ld h, b
    nop
    inc bc
    nop
    jp c, $af00

    nop
    xor a
    nop
    dec b
    nop
    ld a, d
    nop
    ld l, b
    nop
    sbc c
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
    adc c
    ld h, b
    nop
    nop
    ld [de], a
    cp c
    inc de
    cp c
    ld b, h
    nop
    adc h
    nop
    inc d
    cp c
    dec d
    cp c
    sbc h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    db $10
    call z, $cc11
    ld [de], a
    call z, TimerOverflowInterrupt
    inc d
    nop
    ld b, h
    nop
    sbc h
    nop
    ld [hl], h
    nop
    ld [hl], e
    nop
    ld [hl+], a
    nop
    add e
    nop
    ld b, b
    nop
    ld bc, $ac00
    nop
    xor h
    nop
    xor h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    nop
    nop
    sub e
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
    ld sp, $9000
    nop
    sub h
    nop
    cp d
    nop
    jp c, $ac00

    nop
    nop
    nop
    add e
    nop
    db $e3
    nop
    ld b, [hl]
    nop
    ld a, d
    nop
    ld b, l
    nop
    ld d, b
    nop
    ld b, b
    nop
    or e
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
    ld l, e
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
    ld l, a
    ld h, b
    nop
    nop
    jr nc, jr_010_5ceb

jr_010_5ceb:
    ld hl, $1000
    nop
    reti


    nop
    ld [bc], a
    nop
    add b
    nop
    db $db
    nop
    cp l
    nop
    inc b
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld [hl], h
    nop
    ld [hl-], a
    nop
    sub h
    nop
    cp l
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
    jr nz, jr_010_5d17

jr_010_5d17:
    sub h
    nop
    inc [hl]
    nop
    cp a
    nop
    sbc c
    nop
    daa
    nop
    ld hl, $3300
    nop
    xor h
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
    ld l, a
    ld h, b
    nop
    nop
    inc bc
    nop
    sub e
    nop
    ld l, e
    nop
    ld h, c
    nop
    sub h
    nop
    ld b, b
    nop
    ld hl, $9400
    nop
    adc $00
    ld bc, $2100
    nop
    inc sp
    nop
    ld bc, $8200
    nop
    ld b, h
    nop
    ld l, e
    nop
    cp d
    nop
    sub e
    nop
    inc sp
    nop
    ld h, b
    nop
    cp d
    nop
    dec bc
    nop
    or c
    nop
    stop
    sub h
    nop
    and d
    nop
    add b
    nop
    ld bc, $2100
    nop
    stop
    xor h
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
    ld l, a
    ld h, b
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, d
    nop
    ld l, d
    nop
    dec bc
    nop
    sbc h
    nop
    jr nc, jr_010_5d8f

jr_010_5d8f:
    sub e
    nop
    ld sp, $9000
    nop
    sub e
    nop
    inc sp
    nop
    jr nc, jr_010_5d9b

jr_010_5d9b:
    ld b, h
    nop
    ld l, e
    nop
    xor a
    nop
    or c
    nop
    sub b
    nop
    nop
    nop
    reti


    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld [de], a
    nop
    stop
    inc bc
    nop
    add b
    nop
    ld b, b
    nop
    ld de, $9000

Jump_010_5dba:
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
    ld l, a
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    sub h
    nop
    reti


    nop
    ld bc, $2400
    nop
    ld bc, $bd00
    nop
    stop
    inc bc
    nop
    add d
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
    or c
    nop
    sub b
    nop
    nop
    nop
    ld b, e
    nop
    jp c, $f400

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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld hl, $d900
    nop
    ld hl, $6000
    nop
    sub e
    nop
    jr nc, jr_010_5e25

jr_010_5e25:
    jp c, $0200

    nop
    ld hl, $a000
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
    ld [bc], a
    nop
    ld hl, $a000
    nop
    reti


    nop
    ld hl, $9400
    nop
    or c
    nop
    sub b
    nop
    sub e
    nop
    jr nc, jr_010_5e4d

jr_010_5e4d:
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
    ld l, a
    ld h, b
    nop
    nop
    nop
    nop
    reti


    nop
    ld hl, $6000
    nop
    sub e
    nop
    jr nc, jr_010_5e71

jr_010_5e71:
    jp c, $0200

    nop
    ld hl, $2000
    nop
    sub h
    nop
    and b
    nop
    xor h
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    ld [bc], a
    nop
    ld hl, $2000
    nop
    sub h
    nop
    and b
    nop
    reti


    nop
    ld hl, $9400
    nop
    or c
    nop
    sub b
    nop
    sub e
    nop
    jr nc, jr_010_5e9d

jr_010_5e9d:
    ld [hl], e
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
    ld l, a
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    inc d
    nop
    ld h, e
    nop
    inc sp
    nop
    reti


    nop
    ld hl, $9300
    nop
    stop
    add c
    nop
    inc [hl]
    nop
    reti


    nop
    ld h, b
    nop
    ld bc, $9c00
    nop
    rlc b
    add l
    nop
    ld h, $00
    ld [hl], h
    nop
    stop
    inc de
    nop
    add d
    nop
    ld b, h
    nop
    or c
    nop
    sub b
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
    ld l, a
    ld h, b
    nop
    nop
    inc h
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    add d
    nop
    inc [hl]
    nop
    reti


    nop
    ld h, [hl]
    nop
    add a
    nop
    rla
    nop
    ld [hl], h
    nop
    jr nc, jr_010_5f13

jr_010_5f13:
    ldh [rP1], a
    ld a, d
    nop
    ld [de], a
    nop
    jr nz, jr_010_5f1b

jr_010_5f1b:
    sub h
    nop
    cp d
    nop
    ld hl, $3300
    nop
    ld [de], a
    nop
    add e
    nop
    add d
    nop
    stop
    add b
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
    nop
    nop
    ld h, h
    nop
    ld sp, $8400
    nop
    sub h
    nop
    reti


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
    ld [hl], e
    nop
    ld [hl+], a
    nop
    add e
    nop
    or d
    nop
    nop
    nop
    jr nc, jr_010_5f6d

jr_010_5f6d:
    inc bc
    nop
    inc sp
    nop
    ld [hl], b
    nop
    add d
    nop
    inc d
    nop
    inc [hl]
    nop
    ld h, h
    nop
    ld d, c
    nop
    ld [hl-], a
    nop
    ld [hl], d
    nop
    ld [bc], a
    nop
    or c
    nop
    sub b
    nop
    jp c, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, b
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
    jr nc, jr_010_5fa9

jr_010_5fa9:
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
    ld l, a
    ld h, b
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

Jump_010_6000:
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
    ld d, c
    nop
    add h
    nop
    and e
    nop
    inc sp
    nop
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
    ld l, a
    ld h, b
    nop
    nop
    ld d, c
    nop
    add h
    nop
    and b
    nop
    sub e
    nop
    jr nc, jr_010_6037

jr_010_6037:
    add $00
    sub h
    nop
    reti


    nop
    sbc l
    nop
    ld h, b
    nop
    cp l
    nop
    ld bc, $b100
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld b, c
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
    ret


    ld a, $06
    ld [$cb8d], a
    ld a, $20
    call Call_000_152f
    ret


    ld a, $44
    ld a, $00
    call Call_000_166a
    ret


    ld a, $02
    ld [$c8cd], a
    ret


    ld a, $00
    ld [$c8cd], a
    ret


    ret


    nop
    ld [$1df2], sp
    nop
    rst $38
    dec l
    nop
    inc e
    nop
    ld a, [$d4ff]
    rst $38
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add l
    ld a, [$f44b]
    rst $38
    add a
    ld hl, sp+$0f
    ldh a, [$ff81]
    cp $2a
    push de
    cp a
    ld d, a
    xor b
    xor a
    ld d, b
    ld a, a
    add b
    and e
    inc bc
    ld e, a
    db $fd
    and b
    dec hl
    inc b
    sub a
    add sp, $2f
    ret nc

    ld e, a
    and b
    ld a, [hl]
    ld b, c
    nop
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    add c
    ld [bc], a
    db $ec
    push bc
    ld [bc], a
    pop bc
    ld b, $fa
    dec b
    dec hl
    rlca
    add c
    ld a, a
    ld d, h
    ld a, a
    xor e
    ld [$f515], a
    ld a, [bc]
    cp $01
    inc b
    dec b
    rst $38
    rst $38
    dec hl
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    and c
    rst $38
    ld e, a
    jp nc, $e12f

    rra
    ldh a, [rIF]
    jp hl


    rst $18
    rla
    db $f4
    dec bc
    ld a, [$4105]
    nop
    db $fc
    inc bc
    rrca
    cp $01
    db $fd
    ld [bc], a
    add c
    ld [bc], a
    push bc
    ld [bc], a
    rrc e
    and e
    ld b, $f6
    ld hl, $3f07
    ret nz

    inc hl
    ld [$d02f], sp
    sub a
    add sp, -$01
    rrca
    ldh a, [$ff87]
    ld hl, sp+$4b
    db $f4
    add l
    ld a, [$c0e5]
    ld h, b
    inc c
    call nc, Call_000_0ce0
    push bc
    ld [bc], a
    xor a
    ld d, b
    ld d, a
    rra
    xor b
    ld a, [hl+]
    push de
    add c
    cp $0b
    db $10
    jp hl


    inc c
    and e
    ld b, $f6
    ld hl, $fc07
    inc bc
    inc hl
    ld [$0bf4], sp
    jp hl


    rla
    db $fc
    dec bc
    inc de
    push hl
    inc c
    cp $01
    push af
    ld a, [bc]
    ld [$ff15], a
    ld d, h

jr_010_6152:
    xor e
    add c
    ld a, a
    ldh a, [rIF]
    pop hl
    rra
    rst $18
    jp nc, $a12f

    ld e, a
    inc bc
    ld h, b
    inc c
    dec hl
    rst $38
    rst $38
    ld e, a
    rst $38
    ld l, l
    sub d
    ld a, [$d505]
    ld a, [hl+]
    ei
    ld a, [$8505]
    nop
    jr nz, jr_010_6152

    add b
    ld a, a
    ld c, b
    rla
    or a
    add b
    ld a, a
    add l
    nop
    ld [de], a
    db $10
    jr jr_010_61b1

    ld de, $0085
    sbc a
    ld e, e
    rst $38
    xor a
    rst $38
    ld d, [hl]
    ld b, b
    nop
    add l
    nop
    jp c, $ff4f

    push af
    rst $38
    ld l, d
    ld b, b
    nop
    add l
    nop
    ld c, b
    db $10
    dec de
    db $fc
    ld sp, $8517
    nop
    inc b
    ei
    ld bc, $12fe
    db $ed
    ei
    ld bc, $85fe
    nop
    or [hl]
    ld c, c
    ld e, a
    and b
    xor e
    rlca
    ld d, h

jr_010_61b1:
    ld e, a
    and b
    add l
    nop
    cpl
    jr nz, jr_010_61d7

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

jr_010_61d7:
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

jr_010_621e:
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

jr_010_6243:
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

jr_010_6254:
    rra
    nop
    ld hl, sp+$1f
    nop
    rra
    nop
    db $d3
    halt
    add b
    nop
    ldh [rP1], a
    ld hl, sp-$15
    nop
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    ret nz

    ret nz

    rst $38
    add b
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_010_621e

    ldh [c], a
    ld [hl+], a
    nop
    rst $38
    ld b, c
    ld a, b
    ld [hl], c
    ld [hl], a
    dec b
    ld a, c
    inc bc
    inc bc
    ld bc, $fd7f
    cp $0d
    cp $f5
    ld b, $15
    ld [hl+], a
    nop
    cp $63
    ld [bc], a
    xor a
    jr nc, jr_010_6243

    jr nc, jr_010_6254

    ccf
    ret nz

    rst $00
    cp a
    rst $38
    ret nz

    ld h, l
    ld a, e
    ld h, l
    inc bc
    ld h, e
    ld [bc], a
    push af
    ld b, $ff
    dec c
    ld c, $fd
    cp $03
    db $fd
    rst $38
    inc bc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop
    ld d, b
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
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add a
    nop
    inc bc
    inc bc
    rlca
    rst $38
    inc b
    dec c
    dec bc
    ld c, $0b
    dec c
    dec bc
    rlca
    rst $38
    inc b
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    db $fc
    rst $38
    inc b
    or $fa
    xor $1a
    or $fa
    db $fc

jr_010_6313:
    rst $30
    inc b
    ld hl, sp-$08
    pop bc
    ld bc, $171b
    ld e, $11
    rst $38
    ccf
    ld h, $3f
    jr z, jr_010_6362

    dec h
    ld l, a
    ld e, l
    rst $38
    ldh a, [rNR10]
    jr jr_010_6313

    inc c
    db $f4
    inc a
    call nz, $feff
    ld [hl-], a
    cp $8a
    cp $d2
    ei
    db $dd
    rst $38
    rlca
    rlca
    rrca
    ld [$171a], sp
    ccf
    cpl
    rst $38
    ld a, a
    ld e, a
    ld a, d
    ld e, a
    ld a, [$ebbf]
    cp h
    rst $38
    ld l, a
    ld d, h
    rst $38
    db $d3
    rst $38
    inc h
    cp a
    jp nc, $dfff

    rst $20
    rst $38
    ldh a, [$ffb2]
    db $ed
    or c
    ld l, [hl]
    rst $38
    cp $e5
    cp a
    ld e, c
    ld e, a

jr_010_6362:
    db $e4
    ld e, a
    jp hl


    rst $38
    rst $38
    inc e
    ld e, a
    pop hl
    jp hl


    or $f1
    ld c, $ff
    call c, $fe5c
    ld h, d
    db $eb
    sbc l
    cp a
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    db $eb
    rst $38
    xor e
    rst $38
    cp d
    rst $00
    cp $03
    add hl, bc
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rIE], a
    and b
    ldh [$ffa0], a
    rst $28
    or e
    db $fc
    xor h
    ld [hl], b
    rst $30
    ld d, b
    jr nz, jr_010_63b7

    add l
    ld a, [bc]
    db $ed
    sbc d
    halt
    ld e, l
    rst $38
    ld a, a
    ld e, l
    ld l, a
    ld e, h
    ld [hl-], a
    dec l
    inc e
    inc de
    rst $38
    ld a, [de]
    rla
    dec e
    rla
    xor $33
    db $fd
    sub a
    rst $38
    rst $38
    ld h, a
    xor $57
    jp hl


    ld d, [hl]
    rst $20

jr_010_63b7:
    ld e, c
    rst $38
    di
    ld e, l
    di
    ld e, l
    cp $39
    rst $00
    ld b, [hl]
    ccf
    pop bc
    ld b, c
    ret nz

    ld b, b
    add b
    add b
    and e
    dec c
    ld b, c
    inc b
    cp $e7
    nop
    nop
    nop
    ld a, e
    ld e, [hl]
    ccf
    ld h, $1f
    ld a, a
    jr jr_010_63e0

    ld b, $03
    ld [bc], a
    ld bc, $c101
    rrca

jr_010_63e0:
    rst $38
    di
    cp l
    cp $b2
    db $fc
    adc h
    ldh a, [$ffb0]
    db $dd
    ld h, b
    ld l, d
    ld [bc], a
    nop
    nop
    ld bc, $0012
    dec de
    ld a, [de]
    rst $38
    ccf
    jr nz, jr_010_6460

    ld e, a
    ret c

    cp a
    pop af
    adc [hl]
    rst $38
    rst $38
    ld sp, $44ff
    rst $38
    ld l, $7f
    xor $fe
    and c
    add hl, bc
    ld h, b
    and b
    ldh [rNR41], a
    ldh a, [$ff90]
    ldh a, [rIE]
    ld d, b
    ldh a, [$ff90]
    db $db
    db $eb
    inc bc
    ld [bc], a
    ld b, $bb
    dec b
    rlca
    jr nz, jr_010_641e

jr_010_641e:
    dec c
    dec bc
    rrca
    ld b, b
    inc de
    ld c, $ff
    dec bc
    rst $28
    ld d, h
    rst $38
    sub e
    cp a
    call nz, $6fdf
    ldh [c], a
    rst $28
    rst $30
    xor a
    nop
    rrca
    pop de
    ld l, $04
    rrca
    rst $30
    add sp, -$02
    dec e
    inc bc
    rrca
    ld hl, sp+$48
    db $ec
    inc [hl]
    rst $38
    cp h
    ld [hl], h
    ld a, h
    db $f4
    or $fa
    cp [hl]
    ld a, [$aeff]
    ld a, [$9a6e]
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rst $28
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $0e
    jp c, $ddf6

    db $fc
    rrca

jr_010_6460:
    ld c, $08
    ld c, $6a
    cp $6a
    call c, $c854
    pop af
    ld c, b
    dec b
    ld c, $01
    ld [$07c0], sp
    ld [$131f], sp
    rra
    rst $38
    inc d
    rra
    ld [de], a
    ld [hl], a
    ld l, [hl]
    ld hl, sp+$08
    adc h
    rst $38
    db $f4
    add [hl]
    ld a, [$e21e]
    rst $38
    add hl, de
    rst $38
    rst $18
    ld b, l
    rst $38
    jp hl


    db $fd
    xor $0b
    ld e, $c0
    ret nz

    rst $38
    dec e
    ld [de], a
    scf
    ld a, [hl+]
    dec sp
    inc l
    dec a
    ld l, $ff
    ld l, l
    ld e, [hl]
    ld [hl], l
    ld e, [hl]
    ld [hl], d
    ld e, l
    halt
    ld e, c
    rst $38
    rst $38
    sbc h
    rst $30
    ld l, e
    db $eb
    sbc h
    db $eb
    ld e, l
    rst $38
    rst $38
    db $e3
    db $eb
    inc e
    ld e, l
    cp [hl]
    ld a, $c1
    rst $38
    call c, $f6a4
    ld a, [hl+]
    xor $9a
    sbc $3a
    rst $38
    db $db
    cp l
    rst $10
    dec a
    daa
    db $dd
    scf
    call $75ff
    ld e, e
    ld l, [hl]
    ld d, e
    ccf
    dec hl
    dec e
    dec de
    rst $28
    ld b, $05
    inc bc
    ld [bc], a
    ld hl, $bd00
    ld b, [hl]
    rst $18
    rst $38
    or d
    rst $38
    xor h
    db $fd
    adc d
    ld e, l
    xor d
    sbc h
    rst $38
    ld l, e
    ld e, [hl]
    db $eb
    cp [hl]
    db $eb
    rst $10
    ld l, l
    cp e
    rst $38
    push hl
    cp $ea
    call c, Call_000_30ec
    ret nc

    ldh [$ff1f], a
    jr nz, @+$62

    and b
    ld h, b
    and b
    dec c
    dec h
    nop
    inc b
    rst $38
    inc bc
    inc b
    dec b
    ld bc, $1817
    add hl, de
    ld a, [de]
    db $fd
    ld [bc], a
    stop
    dec de
    inc e
    dec e
    ld e, $01
    ld [$09bb], sp
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld b, $01
    ld bc, $020b
    ld bc, $012b
    dec bc
    add hl, bc
    inc b
    rlca
    rrca
    ld [bc], a
    inc c
    add hl, bc
    ld b, $f0
    ld bc, $0d02
    inc b
    ld bc, $020f
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    inc bc
    inc d
    dec c
    rrca
    ld [bc], a
    push de
    ld [de], a
    add hl, bc
    ld d, $0e
    rrca
    ld [bc], a
    inc de
    add hl, bc
    jr jr_010_6564

    db $10
    db $dd
    ld de, $180b
    inc d
    dec d
    ld d, $09
    ld a, [de]
    ld a, b
    ld a, c
    ld a, [$001e]

jr_010_6564:
    ld a, d
    add hl, bc
    inc e
    ld a, [hl]
    nop
    add b
    add c
    add d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld a, a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    ld a, a
    dec bc
    ld [bc], a
    db $fc
    ld a, $1f
    inc c
    ld [bc], a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $38
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld e, e
    sbc [hl]
    sbc a
    dec bc
    inc b
    ld a, e
    ld a, h
    ld e, $00
    ld a, l
    ccf
    dec b
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
    dec bc
    inc l
    ld h, b
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec c
    ld bc, $70ff
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    rst $38
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ldh [$ff0d], a
    ld bc, $13ed
    db $ed
    inc d
    db $ed
    ld de, $12ed
    and b
    and c
    and d
    rst $38
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $18
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    dec c
    ld bc, $b1b0
    rst $38
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp a

Jump_010_65ff:
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    dec c
    ld bc, $ffc0
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld a, a
    ret


    jp z, $cccb

    call $cfce
    dec c
    ld bc, $d0ff
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    rst $38
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    cp $0d
    ld bc, $e1e0
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $ff
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $fd
    rst $28
    dec c
    ld bc, $f1f0
    ldh a, [c]
    di
    db $f4
    push af
    rst $38
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    cp $ff
    dec c
    ld bc, $0800
    rst $38
    jr nz, jr_010_667d

    adc h
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
    jp c, Jump_010_7dda

jr_010_667d:
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

Jump_010_66ff:
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

Jump_010_679a:
    inc e
    rst $30
    db $e3
    add hl, de
    rst $20

jr_010_679f:
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

Call_010_67af:
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
    jr nz, jr_010_679f

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
    jp c, Jump_010_44db

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
    jp z, Jump_010_723d

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
    jp nz, Jump_010_4cbf

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
    jp z, Jump_010_55ae

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
    call z, Call_010_4ebd
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
    call z, Call_000_34f4
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
    jp nc, Jump_000_3fef

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
    jr jr_010_6a5f

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

jr_010_6a5f:
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
    add c
    add c
    rst $38
    jr z, jr_010_6b41

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

jr_010_6b41:
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
    jp $4d3e


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

jr_010_6bf7:
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
    ld sp, $ffbd
    and c
    ld a, l
    ld h, c
    ld l, d
    halt
    jp nc, Jump_000_08ee

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
    jr z, jr_010_6bf7

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

jr_010_6cb9:
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
    jr nz, jr_010_6cb9

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
    jp nz, Jump_010_4101

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
    ldh a, [$ffbb]
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
    jp Jump_010_5dba


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

jr_010_6dd5:
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

jr_010_6dfd:
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

jr_010_6e0e:
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
    jr nc, jr_010_6dd5

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_010_6e35

    rst $38
    rst $38

jr_010_6e35:
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
    jr nc, jr_010_6dfd

    jr nc, jr_010_6e0e

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
    jr nc, jr_010_6eb2

    inc a
    jr nz, @+$06

    db $e3
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    ld [hl-], a

jr_010_6eb2:
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
    jr nz, jr_010_6eec

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

jr_010_6eec:
    jr nz, jr_010_6eee

jr_010_6eee:
    ret nc

    inc bc
    rlca
    ld hl, sp+$63
    db $10
    jr nz, jr_010_6ef6

jr_010_6ef6:
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
    jr nz, jr_010_6f4f

jr_010_6f4f:
    push de
    jr nz, jr_010_6f52

jr_010_6f52:
    pop de
    jr nz, jr_010_6f55

jr_010_6f55:
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
    jr nc, jr_010_6fa0

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
    jr nc, jr_010_6fa3

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

jr_010_6fa0:
    ld [bc], a
    rlca
    ei

jr_010_6fa3:
    ld [bc], a
    ld [bc], a
    ldh a, [$ff1f]
    ld c, b
    or b
    adc b
    ld [hl], b
    ld [$f0ff], sp
    ret c

    jr nz, jr_010_7001

    and b
    ldh a, [rNR41]
    ld [hl], b
    rst $38
    jr nz, jr_010_6fe8

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
    jp Jump_010_679a


    rst $38
    ld l, e
    sub h
    inc e
    db $e3

jr_010_6fe8:
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

jr_010_7001:
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
    jr z, jr_010_707b

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
    jr nz, jr_010_7090

    inc bc
    jr nz, @+$2a

    ret nc

    inc b
    ld hl, sp+$14
    add sp, -$03
    jr c, @+$22

jr_010_707b:
    jr nz, jr_010_70f1

    ld c, a
    ld a, [hl+]
    ld e, a
    ld b, h
    ccf

jr_010_7082:
    rst $38
    jp z, Jump_010_44bd

    cp e
    swap a
    db $e4
    rra
    rst $38
    cp e
    ld c, a
    ld [hl+], a

jr_010_708f:
    rst $18

jr_010_7090:
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
    jr c, jr_010_708f

    dec e
    ld [de], a
    pop hl
    rlca
    jr jr_010_70f2

    inc a
    stop
    jr @-$01

    jr jr_010_7082

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

jr_010_70f1:
    rst $38

jr_010_70f2:
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
    jr nz, jr_010_7152

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
    jr nz, jr_010_70f2

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

jr_010_7152:
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
    jr jr_010_7182

    jr z, jr_010_71a4

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
    jr jr_010_719e

    db $e3

jr_010_7182:
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

jr_010_719e:
    sbc a
    call c, $db3f
    rst $38
    inc a

jr_010_71a4:
    call nz, $e73b
    sbc a
    db $ec
    scf
    db $eb
    rst $38
    inc [hl]
    sub $e8
    and $98

jr_010_71b1:
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

jr_010_71c1:
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

jr_010_71cf:
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
    jr nc, jr_010_71b1

    rra
    jr jr_010_71cf

    jr z, jr_010_71c1

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

jr_010_721c:
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
    jr nc, jr_010_721c

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

Jump_010_723d:
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
    ld [$fffd], sp
    inc l
    nop
    add hl, de
    ld e, $7e
    ld a, a
    ccf
    ccf
    ld a, a
    rra
    rra
    rrca
    rrca
    rra
    rra
    rst $38
    ret nc

    ld bc, $d4ff
    ld h, e
    db $ec
    inc sp
    ld [hl], h
    sbc e
    cp d
    call $ddff
    and $ee
    di
    rst $00
    ld sp, hl
    rrca
    ldh a, [$fffb]
    or h
    di
    ld h, $00
    ld [hl], e
    ld [hl], h
    or e
    or h
    db $d3
    rst $38
    sub l
    xor h
    sub l
    xor h
    sbc e
    and h
    sub l
    xor [hl]
    cp $85
    nop
    ccf
    inc a
    dec a
    inc sp
    ld [hl], b
    ld l, h
    ld h, e
    cp a
    ld d, b
    and $d1
    jp z, Jump_010_4aa5

    jr nz, jr_010_72f3

jr_010_72f3:
    db $fc
    rst $38
    inc a
    inc a
    inc c
    adc $c6
    or $32
    rst $30
    rst $38
    sub e
    db $db
    xor c
    db $db
    xor c
    jp c, $ffa9

    cp b
    add hl, de
    nop
    ldh a, [rTAC]
    inc bc
    ld bc, $ff3f
    rlca
    sub b
    ld [$ffff], sp
    nop
    inc de
    db $ec
    ld c, c
    rst $30
    inc e
    db $e3
    rst $38
    cp e
    nop
    ld a, a
    jr nz, jr_010_7322

    ld e, a

jr_010_7322:
    rst $38
    dec hl
    ret nc

    add hl, bc
    ret


    sub [hl]
    ld [bc], a
    ld bc, $0606
    add c
    inc bc
    ld a, [$0241]
    add d
    ld [bc], a
    ret nc

    rst $38
    sub b
    rst $38
    cp a
    ld a, a
    cp a
    rst $10
    cp a
    ld h, b
    rst $38
    sbc a
    dec e
    rst $38

jr_010_7341:
    jr c, jr_010_7341

    ld d, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    ld [de], a
    sub a
    ret nz

    cp $fc
    rst $38
    ld hl, sp-$01
    rst $38
    ld de, $4fff
    ld a, a
    xor h
    cp h
    ld a, e
    rst $38
    rst $38
    add hl, bc
    sbc a
    nop
    rst $38
    inc h
    cp $da
    rst $38
    rst $38
    rrca
    ccf
    add a
    cp a
    ld c, l
    rst $38
    ld b, e
    rst $38
    rst $38
    rrca
    cp a
    ld d, e
    rst $38
    adc a
    cp a
    ld b, d
    ld bc, $2fcf
    db $10
    rra
    nop
    add $11
    ret nc

    ld de, $110f
    dec bc
    ld de, $1008
    rst $38
    inc l
    ld e, e
    and h
    or l

jr_010_7388:
    adc $c0
    and b
    rst $08
    rst $30
    and b
    jp z, $23a5

    nop
    ld b, b
    and b
    ld c, a
    and b
    rst $08
    dec bc
    add hl, bc
    ei
    add hl, bc
    and c
    rrca
    pop hl
    rrca
    dec bc
    add hl, bc
    rst $18
    ld a, [$aa09]
    rst $38
    push af
    ld a, [hl-]
    db $10
    dec h
    ld a, [$41ff]
    cp $ab
    db $fc
    ld d, c
    cp $e9
    cp $e7
    push af
    cp $b9
    ld b, b
    nop
    dec c
    ld a, [de]
    ldh [$ffe0], a
    ldh [$fffb], a
    jr nz, @+$62

    jr nz, jr_010_73c4

jr_010_73c4:
    ld a, [hl]
    ld a, $7e
    ld [bc], a
    rlca
    rst $38
    inc bc
    ld a, [hl]
    ld a, e
    ld [hl], b
    jr nc, jr_010_7388

    sbc b
    ld e, h
    rst $38
    call z, Call_010_67af
    ld d, a
    or e
    and h
    db $d3
    cp d
    rst $38
    ret


    jp nc, $ec69

jr_010_73e0:
    rst $38
    sub [hl]
    sbc a
    add hl, hl
    rst $38
    rst $38
    ret nc

    rst $38
    ld a, c
    rst $38
    db $e4
    rst $38
    ld c, c
    rst $38
    rst $18
    jr z, jr_010_73e0

    ld c, b
    rst $38
    and d
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, l
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ld h, a
    rst $38
    db $e3
    rst $38
    dec b
    rst $38
    cp a
    pop bc
    rst $08
    add e
    rst $28
    ld b, d
    rst $30
    and c
    rst $20
    xor a
    db $d3
    rst $18
    ld l, a
    ld c, $1f
    nop
    nop
    nop
    add b
    ccf
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ff1f]
    pop de
    ld hl, $110f
    cp $0a
    ld de, $7cc5
    db $ed
    inc a
    ld a, l
    sbc h
    cp c
    rst $38
    ret z

    reti


    ldh [$ffed], a
    ldh a, [$ffc7]
    ld hl, sp+$0f
    db $fd
    ldh a, [$ffc5]
    rrca
    rst $38
    nop
    cp a
    ld a, a
    add b
    ld a, a
    ei
    rst $38
    nop
    push bc
    rrca
    rst $38
    nop
    db $fd
    cp $01
    db $ed
    cp $12
    inc e
    rst $38
    cp $42
    nop
    db $ec
    rst $38
    add b
    cp $10
    dec d
    jp hl


    cp $f1
    cp $a9
    cp $d1
    ld a, a
    cp $a3
    db $fc
    dec b
    ld a, [$d42b]
    ld a, [$fe06]
    ld [bc], a
    ld a, [hl+]
    rlca
    ld a, e
    ld a, [hl]

Jump_010_7473:
    ld [bc], a
    ld a, [hl]
    ld a, $7c
    db $fd
    inc a
    ld b, c
    db $10

jr_010_747b:
    ld a, a
    ccf
    ld h, b
    ccf
    ld l, l
    or h
    rst $38
    db $fd
    inc b
    ld bc, $fdfc
    nop
    db $fd
    ld hl, sp-$01
    db $ed
    jr jr_010_747b

    ret c

    ld l, l
    ret c

    sub $ff
    rst $18
    xor d
    rst $38
    set 7, a
    ld [hl], e
    ld h, b
    ld c, $87
    rst $38
    ld a, a
    jp $0bf7


    rst $28
    xor l
    rst $38
    rst $30
    jr nc, jr_010_74cd

    ld sp, hl
    ei
    ldh [rIF], a
    and e
    ld h, $67
    rst $28
    inc sp
    rst $38
    ld [hl], d
    rst $38
    rst $38
    ld b, l
    rst $38
    and c
    cp a
    inc hl
    rst $20
    jp nz, $ffc3

    rst $00
    rra
    ld b, $6f
    rra
    add hl, de
    ld a, [hl+]
    jr nc, jr_010_74f0

    add b
    add b
    sub a
    ld hl, sp-$08
    rst $38
    ret nz

jr_010_74cd:
    inc d
    rrca
    or e
    ld [hl-], a
    add [hl]
    add hl, de
    inc a
    db $fd
    db $fc
    ld b, c
    dec hl
    dec sp
    inc a
    ld a, c
    ld a, [hl]
    add hl, sp
    ld a, $ff
    add hl, de
    ld e, $19
    ld e, $39
    ld a, $f1
    cp $ff
    inc bc
    db $fc
    rst $38
    db $fc
    cp $fa
    db $fc
    ei

jr_010_74f0:
    rst $38
    ld sp, hl
    add e
    sub h
    ld a, c
    jp nz, $ff44

    ld a, [hl]
    rst $38
    add c
    ld a, h
    rst $38
    ccf
    ld a, a
    ld e, a
    ccf
    ld e, a
    rst $38
    rra
    ld b, c
    ld hl, $c19e
    and b
    ld a, a
    ld a, [hl]
    rst $38
    add a
    ld a, $3f
    jp $a163


    push hl
    ld a, h
    rst $38
    cp a
    ld a, $cb
    ld [$5ea1], sp
    add c
    ld a, h
    rst $38
    xor c
    ld a, b
    rst $38
    rst $38

jr_010_7522:
    db $fc
    rst $38
    or e
    rst $38
    rst $38
    rst $00
    rst $20
    cp a
    cp a
    rst $38
    nop
    db $e4
    db $e4
    rst $10
    daa
    rst $38
    cp a
    ld [bc], a
    ld [bc], a
    sbc e
    ld [bc], a
    ld [bc], a
    adc c
    ld a, h
    ei
    cp l
    ld h, h
    pop bc
    rra
    ld h, b
    jr nz, jr_010_7522

    and b
    ld h, b
    rst $38
    and b
    ldh [rNR41], a
    rst $38
    rst $38
    add b
    ld a, a
    ld l, l
    call c, Call_000_0f40
    ld c, c
    nop
    jr c, @+$01

    dec a
    ld h, b
    ld e, $07
    rst $28
    rst $30
    add b
    sbc $00
    and b
    db $10
    push de
    rst $38
    dec l
    rst $38
    rst $38
    ld h, e
    db $e3
    add a
    sbc a
    ld a, [de]
    ld a, a
    pop de
    rst $38
    rst $18
    inc hl
    rst $38
    ld [bc], a
    rst $38
    ld d, h
    ldh a, [c]

jr_010_7573:
    ld [hl], $cf
    rst $38
    rst $38
    inc sp
    di

jr_010_7579:
    ret


    rst $08
    ld a, l
    db $fd
    rlca
    rst $20
    ld de, $0f03
    jr nz, jr_010_7573

    rrca
    add sp, $0f
    rst $38
    db $e4
    rrca
    rlca
    ld bc, $2965
    sbc e
    db $fc
    db $fc
    and e
    jr c, jr_010_759d

    ld c, $23
    nop
    dec b
    db $10
    ldh a, [c]
    rst $38
    adc c
    db $fc

jr_010_759d:
    di
    db $fd
    ei
    db $fd
    ei
    db $dd
    rst $38
    di
    or l
    db $eb
    ld l, d
    push de
    daa
    ld a, [$df4f]

jr_010_75ad:
    sub c
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld hl, $ef00
    rst $18
    rst $38
    rla
    rst $38
    rst $28
    cp a
    ld sp, hl
    jr c, jr_010_7579

    ld a, d
    rst $38
    xor a
    ld a, [hl]
    ei
    ld a, [hl-]
    rst $28
    ld a, $eb
    ld e, $ef
    ld h, e
    sbc l
    ccf
    jp Jump_000_3f71


    ld a, [$f4ff]
    db $eb
    rst $38
    jp c, VBlankInterrupt

    xor b
    ret nz

    ld sp, $42a7
    or l
    rst $38
    ld d, b
    xor a
    ld e, d
    cp a
    ld e, d
    xor a
    ld e, d
    db $ed
    ld e, a
    ld a, [de]
    ld a, a
    sbc c
    scf
    db $db
    ld bc, $ed0f
    jr nz, jr_010_75f1

jr_010_75f1:
    ld a, h
    adc l
    rrca
    add c
    db $10
    ld h, a
    jp c, Jump_000_00ff

    db $eb
    and d
    ld l, $55
    or $c0
    ld l, $fd
    or d
    ld b, l
    xor d
    and b
    cpl
    sbc $00
    dec b
    push af
    ld sp, hl
    add b
    dec d
    xor $c0
    dec d
    rst $28
    rst $38
    dec b
    rst $00
    rst $18
    ld a, $bf
    ld c, c
    ld a, a
    ld e, $40
    jr nz, jr_010_75ad

    rst $38
    di
    ld e, $bf
    cpl
    rrca
    dec bc
    ld d, c
    daa
    call c, Call_000_00ff
    rst $38
    sub a
    sbc d
    rst $28
    ld a, [$f24f]
    rst $38
    nop
    ld d, a
    ld sp, $b9d2
    ld h, b
    dec d
    ld de, $4880
    ld d, [hl]
    ret nz

    ld c, b
    rst $30
    rra
    rst $38
    scf
    ld b, b
    ld c, c
    nop
    rst $38
    sub h
    rst $38
    sub a
    ld l, l
    rst $38
    xor e

jr_010_764d:
    jr nz, @+$09

    cp a
    or d
    ld c, h
    push hl
    rrca
    ld sp, $3efb
    pop hl
    ld [bc], a
    ld l, $03
    db $fc
    ld b, [hl]
    ld a, [$fbac]
    ei
    ld a, c
    ld b, $20
    ret nz

    ccf
    ld [hl], h
    ld e, a
    ld a, [hl+]
    xor e
    ld e, a
    ld e, $06
    jr nz, jr_010_764d

    nop
    ld a, [hl+]
    cp e
    add b
    add hl, de
    or b
    cp a
    rst $38
    ld b, c
    rst $38
    sub b
    ldh a, [$ff2c]
    add b
    rrca
    ld h, b
    cp $30
    ld e, b
    ld a, [de]
    rst $38
    push bc
    db $dd
    rst $38
    rst $38
    ld b, b
    rst $38
    ld a, b
    inc e
    ld a, a
    jp $1eff


    rst $38
    db $e3
    rst $38
    db $e3
    ld hl, sp-$05
    add c
    db $fd
    ld b, h
    rst $38
    cpl
    ld a, e
    rst $38
    db $db
    ret nz

    dec l
    dec b
    ld a, a
    rra
    cp a
    and c
    rlca
    db $fd
    cp l
    ld h, b
    dec a
    ld a, a
    rst $38
    jp nz, Jump_010_65ff

    rst $38
    rst $18
    rst $20
    rst $38
    ld [hl-], a
    cp a
    ld [hl], e
    add b
    ld b, h
    jp nz, $0bcf

    ld [hl], c
    rst $30
    dec c
    ld e, l
    or $82
    rrca
    ld hl, $1030
    dec b
    ld b, b
    ld de, $1ff7
    ld a, a
    ld c, a
    add b
    rrca
    ld b, $ff
    add h
    rst $28
    rra
    jr z, @+$01

    dec c
    rst $38
    ld a, $0f
    jr nc, jr_010_76ea

    jr nz, @+$20

    nop
    ld d, c
    rst $28
    jp nz, $030e

    ld d, $01
    ld e, h
    cp [hl]
    inc b
    ld [hl], $fd

jr_010_76ea:
    nop
    ld b, [hl]
    adc b
    ld [$a261], sp
    ld h, c

jr_010_76f1:
    dec b
    jr nz, jr_010_76f1

    rrca
    jr nz, jr_010_76f9

    jr nz, jr_010_7702

jr_010_76f9:
    ld h, b
    ld a, [$ffff]
    db $ed
    rst $38
    ld a, e
    rst $38
    sub l

jr_010_7702:
    sbc a
    ld h, b
    cp a
    rst $28
    ldh [rIE], a
    dec bc
    ccf
    and [hl]
    add b
    inc a
    and a
    jp z, $4b40

    rst $38
    and b
    ld c, e
    ld l, a
    ld [hl], b
    ld h, d
    ld bc, $7f16
    rst $38
    ld d, a
    ld b, c
    rst $20
    ld h, d
    nop
    ld [hl-], a
    push hl
    add b
    ld c, h
    ld h, $a0
    ld c, h
    db $fd
    ld b, a
    add b
    dec e
    ld c, b
    rst $38
    nop
    adc a
    ld d, c
    rst $30
    rst $38
    ld l, h

jr_010_7733:
    db $fd
    ld h, h
    rst $20
    jr c, jr_010_7733

    add b
    adc l
    nop
    cpl
    inc c
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

jr_010_7755:
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
    dec de
    nop
    nop
    inc bc
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

jr_010_777d:
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
    jr nc, jr_010_7755

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_010_77b5

    rst $38
    rst $38

jr_010_77b5:
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
    jr nc, jr_010_777d

    jr nc, jr_010_77ee

    cp a
    ccf
    ld b, b
    ccf
    ccf
    inc d
    dec b
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
    jp Jump_000_00fc


    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop

jr_010_77ee:
    nop
    nop
    ld a, a
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ld bc, $c0e0
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
    ld de, $0000
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld h, h
    ld h, h
    ld h, h
    inc b
    add hl, bc
    ld a, [bc]
    reti


    dec bc
    jr z, jr_010_781c

jr_010_781c:
    add hl, bc
    ld [bc], a
    ld bc, $1013
    ld [bc], a
    inc b
    ld d, d
    adc l
    ld d, e
    stop
    ld d, l
    ld d, [hl]
    ld h, c
    nop
    and b
    nop
    add hl, bc
    inc b
    ld [hl+], a
    db $fd
    ld [de], a
    db $10
    ld [bc], a
    inc b
    ld e, e
    ld h, d
    ld h, c
    ld h, c
    ld h, a
    ld a, e
    ld h, l
    ld h, [hl]
    ld d, b
    nop
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    add hl, bc
    ld b, $fd
    ld a, [de]
    ld de, $0402
    ld l, e
    ld l, c
    ld h, c
    dec [hl]
    ld [hl], $7d
    ld h, c
    ld b, b
    nop
    ld e, l
    ld c, [hl]
    scf
    jr c, jr_010_7892

    add hl, bc
    ld [$2afb], sp
    ld de, $0420
    inc d
    ld l, d
    ld h, c
    ld h, a
    ld b, l
    ld a, l
    ld b, [hl]
    ld b, c
    nop
    ld e, l
    ld e, [hl]
    ld b, a
    ld c, b
    ld c, c
    add hl, bc
    ld a, [bc]
    rst $38
    ld a, [hl-]
    ld de, $2211
    inc hl
    inc h
    ld e, e
    ld h, c
    db $fd
    ld h, e
    pop hl
    inc bc
    ld h, c
    ld h, c
    ld e, l
    inc a
    dec a
    ld a, $96
    ld a, [bc]
    inc b
    dec de
    ld hl, $0210
    inc [hl]
    nop
    ld b, $22
    inc b
    ld h, c
    rst $28
    ld h, c

jr_010_7892:
    ld c, h
    ld c, l
    ld c, [hl]
    ld a, [bc]
    inc b
    dec hl
    ld [hl-], a
    dec b
    ld c, a
    ld b, $22
    ld b, h
    ld l, d
    dec b
    ld [$0420], sp
    ld e, [hl]
    ld a, [bc]
    ld [$3b7f], sp
    ld [hl-], a
    dec d
    ld d, $33
    ld b, h
    ld e, e
    dec b
    ld [$01fc], sp
    ld [bc], a
    ld a, [bc]
    ld [$324a], sp
    dec h
    ld h, $33
    ld b, h
    cp h
    ld bc, $2206
    inc c
    ld h, c
    ld h, c
    ld c, l
    ld c, [hl]
    ld a, [bc]
    inc c
    ld c, e
    ccf
    ld [$4241], sp
    ld b, e
    ld d, h
    ld l, d
    ld bc, $0210
    ld [$00fc], sp
    ld [bc], a
    ld a, [bc]
    inc c
    rla
    jr jr_010_78e6

    dec c
    ld e, c
    dec a
    db $d3
    ld l, $61
    ld de, $f10c
    inc bc
    ld h, e
    inc c

jr_010_78e6:
    ld [$2827], sp
    rst $18
    inc e
    dec e
    ld c, h
    ld c, h
    ld c, h
    db $e4
    ld bc, $6261
    adc [hl]
    dec c
    ld [$6851], sp
    ld l, $c1
    rlca
    push af
    inc bc
    ld c, $08
    ld d, c
    ld hl, $f25b
    ld bc, $0390
    inc d
    ld b, $0c
    db $10
    ld d, c
    or d
    dec bc
    and d
    dec b
    inc c
    inc de
    ld [$100c], sp
    ld d, c
    ld l, d
    sub l
    dec b
    rrca
    ld [$0604], sp
    or [hl]
    dec b
    nop
    ld [de], a
    ld [bc], a
    inc c
    db $10
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
    dec e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_010_7dda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
