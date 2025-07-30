; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    dec b
    xor a
    ld [$c7a0], a
    ld [$c780], a
    ld [$c820], a
    ld [$b88d], a
    ld [$b88c], a
    ld a, $01
    ld [$cb81], a
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
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
    ld [$c820], a
    ld a, $1d
    ld [$cb4e], a
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
    call $4525
    call Call_000_1287
    call Call_005_44b3
    call Call_005_45c7
    call $4525
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


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_000_3c1d
    call Call_005_40d2
    call Call_000_2b71
    call Call_000_362c
    call Call_005_433d
    ret


Call_005_40d2:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    call Call_005_43a4
    call Call_000_0ec6
    call Call_005_412b
    ldh a, [$ff8a]
    and $02
    jr z, jr_005_40fa

    call Call_005_439b
    ret


jr_005_40fa:
    ldh a, [$ff8b]
    and $08
    jr z, jr_005_4104

    call Call_000_1925
    ret


jr_005_4104:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_005_4377

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_005_4380

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_005_4389

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_005_4392

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


Call_005_412b:
    ldh a, [$ff8b]
    cp $01
    ret nz

    ld a, [$cb34]
    and $01
    jp z, Jump_005_4295

    ld a, [$cb33]
    or a
    jp z, Jump_005_4295

    cp $80
    jp z, Jump_005_4328

    push af
    call $444f
    pop af
    ld hl, $b8a3
    dec a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld a, $35
    call Call_000_23d8
    ld a, [$cb33]
    dec a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $462b
    add hl, de
    push hl
    ld de, $0008
    add hl, de
    pop de
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a

jr_005_4175:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4175

    ld a, [hl+]
    inc hl
    ld [bc], a
    inc bc
    ld a, [hl+]
    inc hl
    ld [bc], a
    ld a, $1f
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a

jr_005_418a:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_418a

    ld a, [hl+]
    inc hl
    ld [bc], a
    inc bc
    ld a, [hl+]
    inc hl
    ld [bc], a
    inc de
    inc de
    ld a, [de]
    inc de
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld c, a
    push bc
    ld a, [$b90c]
    call Call_000_071e
    pop bc
    ld a, b
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
    ld a, $00
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ld a, [$cb33]
    dec a
    cp $1d
    jr nz, jr_005_41cf

    ld a, $01
    ld [$b907], a
    jp Jump_005_426d


jr_005_41cf:
    ld hl, $1b22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, [hl]
    ld hl, $b8f8
    ld a, [$b8fb]
    cp $02
    jr z, jr_005_4245

    cp $01
    jr z, jr_005_4216

    ld a, [$b8f8]
    cp $ff
    jr z, jr_005_4206

    ld a, [$b8f9]
    cp $ff
    jr nz, jr_005_4206

    ld a, [$b8f9]
    call Call_005_429f
    ld a, b
    ld [$b8f9], a
    ld a, $01
    ld [$b8fb], a
    jr jr_005_426d

jr_005_4206:
    ld a, [$b8f8]
    call Call_005_429f
    ld a, b
    ld [$b8f8], a
    xor a
    ld [$b8fb], a
    jr jr_005_426d

jr_005_4216:
    ld a, [$b8f9]
    cp $ff
    jr z, jr_005_4234

    ld a, [$b8f8]
    cp $ff
    jr nz, jr_005_4234

    ld a, [$b8f8]
    call Call_005_429f
    ld a, b
    ld [$b8f8], a
    xor a
    ld [$b8fb], a
    jr jr_005_426d

jr_005_4234:
    ld a, [$b8f9]
    call Call_005_429f
    ld a, b
    ld [$b8f9], a
    ld a, $01
    ld [$b8fb], a
    jr jr_005_426d

jr_005_4245:
    ld a, [$b8f8]
    cp $ff
    jr nz, jr_005_425c

    ld a, [$b8f8]
    call Call_005_429f
    ld a, b
    ld [$b8f8], a
    xor a
    ld [$b8fb], a
    jr jr_005_426d

jr_005_425c:
    ld a, [$b8f9]
    call Call_005_429f
    ld a, b
    ld [$b8f9], a
    ld a, $01
    ld [$b8fb], a
    jr jr_005_426d

Jump_005_426d:
jr_005_426d:
    xor a
    ld [$c90e], a
    ld [$cb34], a
    push bc
    ld a, $03
    call Call_000_166a
    pop bc
    ld a, b
    call $16e3
    ld hl, $c62a
    ld a, [$c60a]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl+], a
    ld a, $10
    ld [$c912], a
    pop hl
    ret


Jump_005_4295:
    ld hl, $5231
    ld a, $01
    call Call_000_1f96
    pop hl
    ret


Call_005_429f:
    cp $ff
    ret z

    push bc
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_005_42a9:
    ld a, [hl+]
    cp c
    jr z, jr_005_42b0

    inc b
    jr jr_005_42a9

jr_005_42b0:
    ld a, b
    push bc
    ld hl, $b8a3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $01
    ld [hl], a
    ld a, b
    cp $1d
    jr z, jr_005_4325

    cp $1e
    jr z, jr_005_4325

    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $462b
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    push hl
    ld e, a
    ld h, b
    ld l, c

jr_005_42db:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_42db

    ld a, e
    inc e
    ld [hl+], a
    ld a, e
    ld [hl], a
    ld a, $0f
    add e
    ld e, a
    ld bc, $001f
    add hl, bc

jr_005_42ee:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_42ee

    ld a, e
    inc e
    ld [hl+], a
    ld a, e
    ld [hl], a
    pop de
    inc de
    inc de
    ld a, [de]
    inc de
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld c, a
    push bc
    ld a, [$b90c]
    call Call_000_071e
    pop bc
    ld a, b
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
    pop bc
    ld a, b
    inc a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    pop bc
    ret


jr_005_4325:
    pop bc
    pop bc
    ret


Jump_005_4328:
    ld a, $06
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    xor a
    ld [$c90f], a
    ret


Call_005_433d:
    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret nz

    ld a, [$c60d]
    cp $03
    ret nz

    ld a, [$c60b]
    cp $38
    ret nc

    ld a, $20
    ld [$c911], a
    ld a, [$c606]
    and $f8
    or $08
    ld [$c606], a
    ld a, [$c608]
    and $f8
    or $08
    ld [$c608], a
    ld a, $02
    ld [$c910], a
    ld a, $01
    ld [$c90f], a
    ret


Jump_005_4377:
    ld a, $02
    ld hl, $52ba
    call Call_000_1f96
    ret


Call_005_4380:
Jump_005_4380:
    ld a, $02
    ld hl, $5300
    call Call_000_1f96
    ret


Jump_005_4389:
    ld a, $02
    ld hl, $5346
    call Call_000_1f96
    ret


Jump_005_4392:
    ld a, $02
    ld hl, $538c
    call Call_000_1f96
    ret


Call_005_439b:
    ld a, $02
    ld hl, $53d2
    call Call_000_1f96
    ret


Call_005_43a4:
    ld a, [$c911]
    or a
    ret z

    ld a, [$c90f]
    cp $00
    jr nz, jr_005_43d3

    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_005_43bd

    pop hl
    ret


jr_005_43bd:
    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, [$cb51]
    ld [$cbe8], a
    ld a, $03
    ld [$c910], a
    ret


jr_005_43d3:
    ld a, [$c911]
    dec a
    ld [$c911], a
    cp $00
    jr z, jr_005_4413

    cp $1e
    jr nz, jr_005_442a

    ld hl, $9849

jr_005_43e5:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_43e5

    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld hl, $9869

jr_005_43f2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_43f2

    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld hl, $9889

jr_005_4407:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_005_4407

    ld a, $00
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


jr_005_4413:
    ld a, $08
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$cc79], a
    ld [$cc7b], a
    ld a, [$cb51]
    ld [$cbe8], a

jr_005_442a:
    call Call_005_4380
    pop hl
    ret


    nop
    nop
    ld bc, $0203
    inc de
    inc d
    ld d, $15
    rla
    dec c
    ld c, $10
    ld de, $1912
    jr jr_005_4450

    inc c
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec de
    inc e
    ld a, [de]
    dec e
    ld e, $21

jr_005_4450:
    cpl
    ld b, h
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, $01
    ld [$c7c0], a
    ld a, $0d
    ld [$c7c1], a
    ld a, b
    ld [$c7c2], a
    xor a
    ld [$c7c3], a
    ld a, $50
    ld [$c7d1], a
    xor a
    ld [$c7ce], a
    ld [$c7c5], a
    ld [$c7c4], a
    ld a, $50
    ld [$c7ca], a
    ld a, $10
    ld [$c7cb], a
    ld a, $01
    ld [$c7e0], a
    ld a, $0d
    ld [$c7e1], a
    ld a, b
    add $20
    ld [$c7e2], a
    xor a
    ld [$c7e3], a
    ld a, $50
    ld [$c7f1], a
    xor a
    ld [$c7ee], a
    ld [$c7e5], a
    ld [$c7e4], a
    ld a, $50
    ld [$c7ea], a
    ld a, $10
    ld [$c7eb], a
    ret


Call_005_44b3:
    ld hl, $9c00
    ld de, $44c1
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


    ret nz

    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $cdc6

    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    add $cd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    add $cd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $cdcd
    call $c7cd
    jp $c4c4


    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call nz, $fac5
    db $10
    ret


    cp $01
    jr z, jr_005_4543

    cp $02
    jr z, jr_005_4555

    ld hl, $4567
    ld de, $c600
    ld b, $20
    call Call_000_210f
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_005_4543:
    ld hl, $4587
    ld de, $c600
    ld b, $20
    call Call_000_210f
    xor a
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


jr_005_4555:
    ld hl, $45a7
    ld de, $c600
    ld b, $20
    call Call_000_210f
    xor a
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0058], sp
    add b
    nop
    ld d, b
    ld h, h
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_4580:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    nop
    ld [$0018], sp
    dec a
    nop
    db $10
    ld b, l
    nop
    inc bc
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
    ld bc, $ff00
    nop
    nop
    ld [$0058], sp
    dec l
    nop
    ld d, b
    dec [hl]
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


    xor e
    sbc c
    ld c, b
    nop
    ld b, $00
    rlca
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc c
    ld c, d
    nop
    rlca
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc c
    ld c, h
    nop
    ld [$0700], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc c
    ld c, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    xor e
    sbc c
    ld l, b
    nop
    ld b, $00
    rlca
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc c
    ld l, d
    nop
    rlca
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc c
    ld l, h
    nop
    ld [$0700], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc c
    ld l, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and c
    sbc c
    ld h, b
    nop
    ld bc, $0700
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    and e
    sbc c
    ld h, d
    nop
    ld [bc], a
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and l
    sbc c
    ld h, h
    nop
    inc bc
    nop
    rlca
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and a
    sbc c
    ld h, [hl]
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and a
    sbc c
    and [hl]
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and a
    sbc c
    and h
    nop
    inc b
    nop
    rlca
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    ld hl, $2899
    nop
    ld bc, $0500
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    inc hl
    sbc c
    ld a, [hl+]
    nop
    ld [bc], a
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    dec h
    sbc c
    inc l
    nop
    inc bc
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    daa
    sbc c
    ld l, $00
    inc b
    nop
    dec b
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    dec hl
    sbc c
    ld [$0600], sp
    nop
    dec b
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    dec l
    sbc c
    ld a, [bc]
    nop
    rlca
    nop
    dec b
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    cpl
    sbc c
    inc c
    nop
    ld [$0500], sp
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    ld sp, $0e99
    nop
    add hl, bc
    nop
    dec b
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    xor e
    sbc b
    ret c

    nop
    ld b, $00
    inc bc
    nop
    xor b
    nop
    xor c
    nop
    cp b
    nop
    cp c
    nop
    xor l
    sbc b
    jp c, Jump_000_0700

    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    xor a
    sbc b
    call c, Call_000_0800
    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    or c
    sbc b
    sbc $00
    add hl, bc
    nop
    inc bc
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    and e
    sbc b
    jp nc, $0200

    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and l
    sbc b
    call nc, $0300
    nop
    inc bc
    nop
    xor d
    nop
    xor e
    nop
    cp d
    nop
    cp e
    nop
    and a
    sbc b
    sub $00
    inc b
    nop
    inc bc
    nop
    xor [hl]
    nop
    xor a
    nop
    cp [hl]
    nop
    cp a
    nop
    nop
    nop
    rst $28
    ld c, b
    nop
    nop
    pop af
    ld c, b
    nop
    nop
    di
    ld c, b
    nop
    nop
    push af
    ld c, b
    nop
    nop
    rst $30
    ld c, b
    nop
    nop
    ld sp, hl
    ld c, b
    nop
    nop
    ei
    ld c, b
    nop
    nop
    db $fd
    ld c, b
    nop
    nop
    rst $38
    ld c, b
    nop
    nop
    ld bc, $0049
    nop
    inc bc
    ld c, c
    nop
    nop
    dec b
    ld c, c
    nop
    nop
    rlca
    ld c, c
    nop
    nop
    add hl, bc
    ld c, c
    nop
    nop
    dec bc
    ld c, c
    nop
    nop
    dec c
    ld c, c
    nop
    nop
    rrca
    ld c, c
    nop
    nop
    ld de, $0049
    nop
    inc de
    ld c, c
    nop
    nop
    dec d
    ld c, c
    nop
    nop
    rla
    ld c, c
    nop
    nop
    add hl, de
    ld c, c
    nop
    nop
    dec de
    ld c, c
    nop
    nop
    dec e
    ld c, c
    nop
    nop
    rra
    ld c, c
    nop
    nop
    ld hl, $0049
    nop
    inc hl
    ld c, c
    nop
    nop
    dec h
    ld c, c
    nop
    nop
    daa
    ld c, c
    nop
    nop
    add hl, hl
    ld c, c
    nop
    nop
    dec hl
    ld c, c
    nop
    nop
    dec l
    ld c, c
    nop
    nop
    jr nc, jr_005_48cb

    nop
    nop
    ld [hl-], a
    ld c, h
    nop
    nop
    inc [hl]
    ld c, h
    nop
    nop
    ld [hl], $4c
    nop
    nop
    jr c, jr_005_48db

    nop
    nop
    ld a, [hl-]
    ld c, h
    nop
    nop
    inc a
    ld c, h
    nop
    nop
    ld a, $4c
    nop
    nop
    ld b, b
    ld c, h
    nop
    nop
    ld b, d
    ld c, h
    nop
    nop
    ld b, h
    ld c, h
    nop
    nop
    ld b, [hl]
    ld c, h
    nop
    nop
    ld c, b
    ld c, h
    nop
    nop
    ld c, d
    ld c, h
    nop
    nop
    ld c, h
    ld c, h
    nop
    nop
    ld c, [hl]
    ld c, h
    nop
    nop
    ld d, b
    ld c, h
    nop
    nop
    ld d, d
    ld c, h
    nop
    nop
    ld d, h
    ld c, h
    nop
    nop
    ld d, [hl]
    ld c, h

jr_005_48cb:
    nop
    nop
    ld e, b
    ld c, h
    nop
    nop
    ld e, d
    ld c, h
    nop
    nop
    ld e, h
    ld c, h
    nop
    nop
    ld e, [hl]
    ld c, h

jr_005_48db:
    nop
    nop
    ld h, b
    ld c, h
    nop
    nop
    ld h, d
    ld c, h
    nop
    nop
    ld h, h
    ld c, h
    nop
    nop
    ld h, [hl]
    ld c, h
    nop
    nop
    ld l, b
    ld c, h
    cpl
    ld c, c
    ld c, b
    ld c, c
    ld h, c
    ld c, c
    ld a, d
    ld c, c
    sbc e
    ld c, c
    ret nz

    ld c, c
    push hl
    ld c, c
    ld b, $4a
    rla
    ld c, d
    inc [hl]
    ld c, d
    ld d, l
    ld c, d
    ld a, [hl]
    ld c, d
    sub e
    ld c, d
    and h
    ld c, d
    or l
    ld c, d
    add $4a
    rst $10
    ld c, d
    add sp, $4a
    dec b
    ld c, e
    ld [hl+], a
    ld c, e
    ld b, e
    ld c, e
    ld h, h
    ld c, e
    add l
    ld c, e
    xor [hl]
    ld c, e
    rst $00
    ld c, e
    db $e4
    ld c, e
    push af
    ld c, e
    ld b, $4c
    rla
    ld c, h
    jr nc, jr_005_4977

    jr nc, jr_005_4979

    jr nc, jr_005_497b

    ld hl, sp+$00
    pop af
    nop
    ld hl, sp-$08
    ldh a, [rP1]
    nop
    ld [$00cc], sp
    ld hl, sp+$08
    jp z, RST_00

    ldh a, [$ffcb]
    nop
    ld hl, sp-$10
    ret


    nop
    add b
    nop
    ld [$00cc], sp
    ld hl, sp+$08
    jp z, RST_00

    ldh a, [$ffcb]
    nop
    ld hl, sp-$10
    ret


    nop
    ld hl, sp+$00
    di
    nop
    ld hl, sp-$08
    ldh a, [c]
    nop
    add b
    nop
    ld [$00cc], sp
    ld hl, sp+$08
    jp z, $f800

    nop
    push af
    nop
    ld hl, sp-$08
    db $f4
    nop
    nop
    ldh a, [$ffcb]
    nop
    ld hl, sp-$10

jr_005_4977:
    ret


    nop

jr_005_4979:
    add b
    nop

jr_005_497b:
    db $10
    call z, $f800
    db $10
    jp z, RST_00

    add sp, -$35
    nop
    ld hl, sp-$18
    ret


    nop
    ld hl, sp+$08
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $30
    nop
    ld hl, sp-$10
    or $00
    add b
    nop
    inc d
    call z, $f800
    inc d
    jp z, RST_00

    db $e4
    rlc b
    ld hl, sp-$1c
    ret


    nop
    ld hl, sp+$0c
    db $fd
    nop
    ld hl, sp+$04
    db $fc
    nop
    ld hl, sp-$04
    ei
    nop
    ld hl, sp-$0c
    ld a, [$f800]
    db $ec
    ldh a, [rP1]
    add b
    nop
    jr nz, @-$32

    nop
    ld hl, sp+$20
    jp z, $f800

    jr @-$01

    nop
    ld hl, sp+$10
    db $fc
    nop
    ld hl, sp+$08
    ei
    nop
    ld hl, sp-$18
    rst $38
    nop
    ld hl, sp-$20
    cp $00
    nop
    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b
    ld hl, sp-$10
    pop af
    nop
    nop
    jr @-$32

    nop
    ld hl, sp+$18
    jp z, $f800

    db $10
    db $fd
    nop
    ld hl, sp+$08
    db $fc
    nop
    ld hl, sp+$00
    ei
    nop
    nop
    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b
    nop

jr_005_4a07:
    jr nz, @-$32

    nop
    ld hl, sp+$20
    jp z, RST_00

    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b
    nop
    inc d
    call z, $f800
    inc d
    jp z, $f800

    inc c
    db $fd
    nop
    ld hl, sp+$04
    db $fc
    nop
    ld hl, sp-$04
    ei
    nop
    nop
    db $e4
    rlc b
    ld hl, sp-$1c
    ret


    nop
    add b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    jr nz, jr_005_4a07

    nop
    ld hl, sp+$20
    jp z, $f800

    jr @-$01

    nop
    ld hl, sp+$10
    db $fc
    nop
    ld hl, sp+$08
    ei
    nop
    nop

jr_005_4a4d:
    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b
    ld hl, sp-$0c
    cp $00
    ld hl, sp-$14
    rst $30
    nop
    ld hl, sp-$04
    rst $30
    nop
    nop

jr_005_4a62:
    inc e
    call z, $f800
    inc e
    jp z, $f800

    inc d
    db $fd
    nop
    ld hl, sp+$0c
    db $fc
    nop
    ld hl, sp+$04

jr_005_4a73:
    ei
    nop
    nop
    call c, Call_000_00cb
    ld hl, sp-$24
    ret


    nop
    add b
    nop
    jr nz, jr_005_4a4d

    nop
    ld hl, sp+$20
    jp z, $f800

    ld [$00f9], sp
    nop
    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b
    nop
    jr jr_005_4a62

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b
    nop
    jr jr_005_4a73

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b
    nop
    inc c
    call z, $f800
    inc c
    jp z, RST_00

    db $ec
    rlc b
    ld hl, sp-$14
    ret


    nop
    add b
    nop
    ld [$00cc], sp
    ld hl, sp+$08
    jp z, RST_00

    ldh a, [$ffcb]
    nop
    ld hl, sp-$10

jr_005_4ad4:
    ret


    nop
    add b
    nop
    db $10
    call z, $f800
    db $10
    jp z, RST_00

    add sp, -$35
    nop
    ld hl, sp-$18
    ret


    nop
    add b
    ld hl, sp+$04
    ldh a, [c]
    nop
    ld hl, sp+$14
    ld sp, hl
    nop
    ld hl, sp-$04
    rst $30
    nop
    nop
    inc e
    call z, $f800
    inc e
    jp z, RST_00

    call c, Call_000_00cb
    ld hl, sp-$24
    ret


    nop
    add b
    nop
    jr nz, jr_005_4ad4

    nop
    ld hl, sp+$20
    jp z, $f800

    nop
    ldh a, [c]
    nop
    ld hl, sp+$10
    ld sp, hl
    nop
    ld hl, sp-$08
    rst $30
    nop
    nop
    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b

jr_005_4b22:
    ld hl, sp-$10
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp+$10
    pop af
    nop
    ld hl, sp+$08
    ldh a, [rP1]
    nop
    jr @-$32

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b

jr_005_4b43:
    ld hl, sp+$10
    di
    nop
    ld hl, sp+$08
    ldh a, [c]
    nop
    ld hl, sp-$10
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    nop

jr_005_4b54:
    jr jr_005_4b22

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b
    ld hl, sp+$10
    push af
    nop
    ld hl, sp+$08
    db $f4
    nop
    ld hl, sp-$10
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    nop
    jr jr_005_4b43

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b

jr_005_4b85:
    nop
    jr nz, jr_005_4b54

    nop

jr_005_4b89:
    ld hl, sp+$20
    jp z, $f800

    jr jr_005_4b89

    nop
    ld hl, sp+$10
    ld hl, sp+$00
    ld hl, sp+$08
    rst $30
    nop
    ld hl, sp+$00
    or $00
    ld hl, sp-$18
    ld sp, hl
    nop
    ld hl, sp-$08
    ld sp, hl
    nop
    nop
    ret c

    rlc b
    ld hl, sp-$28
    ret


    nop
    add b
    ld hl, sp+$00
    ldh a, [c]
    nop
    ld hl, sp-$08
    ei
    nop
    nop
    jr jr_005_4b85

    nop
    ld hl, sp+$18
    jp z, RST_00

    ldh [$ffcb], a
    nop
    ld hl, sp-$20
    ret


    nop
    add b
    ld hl, sp+$0c
    db $fd
    nop
    ld hl, sp+$04
    db $fc
    nop
    ld hl, sp-$04
    ei
    nop
    nop
    inc d
    call z, $f800
    inc d
    jp z, RST_00

    db $e4
    rlc b
    ld hl, sp-$1c
    ret


    nop
    add b
    nop
    inc d
    call z, $f800
    inc d
    jp z, RST_00

    db $e4
    rlc b
    ld hl, sp-$1c
    ret


    nop
    add b
    nop
    db $10
    call z, $f800
    db $10
    jp z, RST_00

    add sp, -$35
    nop
    ld hl, sp-$18
    ret


    nop
    add b
    nop
    db $10
    call z, $f800
    db $10
    jp z, RST_00

    add sp, -$35
    nop
    ld hl, sp-$18
    ret


    nop
    add b
    ld hl, sp+$0c
    ldh a, [rP1]
    ld hl, sp+$04
    ei
    nop
    nop
    inc e
    call z, $f800
    inc e
    jp z, RST_00

    call c, Call_000_00cb
    ld hl, sp-$24
    ret


    nop
    add b
    ld l, d
    ld c, h
    ld [hl], e
    ld c, h
    ld a, h
    ld c, h
    add l
    ld c, h
    sub [hl]
    ld c, h
    xor e
    ld c, h
    ret c

    ld c, h
    ld sp, hl
    ld c, h
    ld a, [hl-]
    ld c, l
    ld d, a
    ld c, l
    adc b
    ld c, l
    xor c
    ld c, l
    and $4d
    rla
    ld c, [hl]
    ld c, b
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    sub e
    ld c, [hl]
    ret nz

    ld c, [hl]
    push af
    ld c, [hl]
    ld d, $4f
    scf
    ld c, a
    ld e, b
    ld c, a
    add c
    ld c, a
    xor d
    ld c, a
    rst $00
    ld c, a
    ldh a, [rVBK]
    ld de, $3250
    ld d, b
    nop
    nop
    ld l, a
    nop
    nop
    ld hl, sp+$6e
    nop
    add b
    nop
    nop
    ld a, a
    nop
    nop
    ld hl, sp+$7e
    nop
    add b
    nop
    nop
    dec d
    nop
    nop
    ld hl, sp+$14
    nop
    add b
    nop
    ld [$0019], sp
    nop
    nop
    jr jr_005_4c8d

jr_005_4c8d:
    nop
    ld hl, sp+$17
    nop
    nop
    ldh a, [rNR21]
    nop
    add b
    nop
    db $ec
    ld l, [hl]
    nop
    nop
    inc c
    dec e
    nop
    nop
    inc b
    inc e
    nop
    nop
    db $fc
    dec de
    nop
    nop
    db $f4
    ld a, [de]
    nop
    add b
    nop
    jr @+$1f

    nop
    nop
    db $10
    inc e
    nop
    nop
    ld [$001b], sp
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld hl, sp+$31
    nop
    nop
    ldh a, [$ff30]
    nop
    ld hl, sp+$00
    ld [hl+], a
    nop
    ld hl, sp-$08
    ld hl, $f800
    ldh a, [rNR41]
    nop
    nop
    add sp, $1f
    nop
    nop
    ldh [rNR34], a
    nop
    add b
    nop
    ldh a, [$ff6f]
    nop
    nop
    db $10
    dec e
    nop
    nop
    ld [$001c], sp
    nop
    nop
    dec de
    nop
    nop
    ld hl, sp+$33
    nop
    ld hl, sp-$08
    inc hl
    nop
    nop
    add sp, $33
    nop
    ld hl, sp-$18
    inc hl
    nop
    add b
    nop
    jr @+$7f

    nop
    nop
    db $10
    ld a, h
    nop
    ld hl, sp+$18
    ld l, l
    nop
    ld hl, sp+$10
    ld l, h
    nop
    nop
    ld [$0037], sp
    nop
    nop
    ld [hl], $00
    nop
    ld hl, sp+$35
    nop
    ld hl, sp+$08
    daa
    nop
    ld hl, sp+$00
    ld h, $00
    ld hl, sp-$08
    dec h
    nop
    nop
    ldh a, [$ff32]
    nop
    ld hl, sp-$10
    ld [hl+], a
    nop
    nop
    add sp, $34
    nop
    ld hl, sp-$18
    inc h
    nop
    nop
    ldh [$ff33], a
    nop
    ld hl, sp-$20
    inc hl
    nop
    add b
    nop
    inc c
    dec e
    nop
    nop
    inc b
    inc e
    nop
    nop
    db $fc
    dec de
    nop
    nop
    db $f4
    add hl, sp
    nop
    nop
    db $ec
    jr c, jr_005_4d4e

jr_005_4d4e:
    ld hl, sp-$0c
    add hl, hl
    nop
    ld hl, sp-$14
    jr z, jr_005_4d56

jr_005_4d56:
    add b
    nop
    ldh a, [$ff6e]
    nop
    nop
    jr jr_005_4d7b

    nop
    nop
    db $10
    inc e
    nop
    nop
    ld [$001b], sp
    nop
    nop
    ld sp, $f800
    nop
    ld hl, $0000
    ld hl, sp+$3c
    nop
    ld hl, sp-$08
    inc l
    nop
    nop
    add sp, $3b
    nop

jr_005_4d7b:
    nop
    ldh [$ff3a], a
    nop
    ld hl, sp-$18
    dec hl
    nop
    ld hl, sp-$20
    ld a, [hl+]
    nop
    add b
    nop
    inc d
    dec e
    nop
    nop
    inc c
    inc e
    nop
    nop
    inc b
    dec de
    nop
    nop
    db $fc
    rla
    nop
    nop
    db $f4
    ld e, $00
    nop
    db $ec
    rla
    nop
    nop
    db $e4
    dec a
    nop
    ld hl, sp-$1c
    dec l
    nop
    add b
    nop
    jr jr_005_4e29

    nop
    nop
    db $10
    ld a, h
    nop
    ld hl, sp+$18
    ld l, l
    nop
    ld hl, sp+$10
    ld l, h
    nop
    nop
    ld [$0019], sp
    nop
    ldh [$ff3e], a
    nop
    ld hl, sp-$20
    ld l, $00
    nop
    nop
    ccf
    nop
    ld hl, sp+$00
    cpl
    nop
    nop
    ld hl, sp+$36
    nop
    ld hl, sp-$08
    ld h, $00
    nop
    ldh a, [$ff3b]
    nop
    ld hl, sp-$10
    dec hl
    nop
    nop
    add sp, $35
    nop
    ld hl, sp-$18
    dec h
    nop
    add b
    nop
    db $10
    ld a, l
    nop
    nop
    ld [$007c], sp
    ld hl, sp+$10
    ld l, l
    nop
    ld hl, sp+$08
    ld l, h
    nop
    nop
    nop
    ld d, e
    nop
    nop
    ld hl, sp+$52
    nop
    nop
    ldh a, [rHDMA1]
    nop
    nop
    add sp, $50
    nop
    ld hl, sp+$00
    ld b, e
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ld hl, sp-$10
    ld b, c
    nop
    ld hl, sp-$18
    ld b, b
    nop
    add b
    nop
    db $10
    ld e, e
    nop
    ld hl, sp+$10
    ld c, e
    nop
    nop
    ld [$0056], sp
    ld hl, sp+$08
    ld b, [hl]
    nop
    nop
    nop

jr_005_4e29:
    ld d, b
    nop
    ld hl, sp+$00
    ld b, b
    nop
    nop
    ld hl, sp+$55
    nop
    ld hl, sp-$08
    ld b, l
    nop
    nop
    ldh a, [rHDMA4]
    nop
    ld hl, sp-$10
    ld b, h
    nop
    nop
    add sp, $54
    nop
    ld hl, sp-$18
    ld b, h
    nop
    add b
    nop
    db $fc
    ld a, [hl-]
    nop
    ld hl, sp-$04
    ld a, [hl+]
    nop
    nop
    inc b
    scf
    nop
    ld hl, sp+$04
    daa
    nop
    nop
    db $f4
    ld a, $00
    ld hl, sp-$0c
    ld l, $00
    add b
    nop
    nop
    ld e, b
    nop
    nop
    ld hl, sp+$57
    nop
    ld hl, sp+$00
    ld c, b
    nop
    ld hl, sp-$08
    ld b, a
    nop
    add b
    nop
    ld [$0035], sp
    ld hl, sp+$08
    dec h
    nop
    nop
    nop
    inc [hl]
    nop
    ld hl, sp+$00
    inc h
    nop
    nop
    ld hl, sp+$5a
    nop
    nop
    ldh a, [$ff59]
    nop
    ld hl, sp-$08
    ld c, d
    nop
    ld hl, sp-$10
    ld c, c
    nop
    add b
    nop
    inc b
    ld a, [hl]
    nop
    nop
    inc d
    add hl, de
    nop
    nop
    inc c
    ld a, [hl-]
    nop
    ld hl, sp+$0c
    ld a, [hl+]
    nop
    nop
    db $fc
    rla
    nop
    nop
    db $f4
    ccf
    nop
    ld hl, sp-$0c
    cpl
    nop
    nop
    db $ec
    ld e, h
    nop
    ld hl, sp-$14
    ld c, h
    nop
    nop
    db $e4
    add hl, sp
    nop
    ld hl, sp-$1c
    add hl, hl
    nop
    add b
    nop
    nop
    ld a, [hl]
    nop
    nop
    jr @+$5f

    nop
    ld hl, sp+$18
    ld c, l
    nop
    nop
    db $10
    add hl, de
    nop
    nop
    ld [$003a], sp
    ld hl, sp+$08
    ld a, [hl+]
    nop
    nop
    ld hl, sp+$17
    nop
    nop
    ldh a, [$ff3f]
    nop
    ld hl, sp-$10
    cpl
    nop
    nop
    add sp, $5c
    nop
    ld hl, sp-$18
    ld c, h
    nop
    nop
    ldh [$ff39], a
    nop
    ld hl, sp-$20
    add hl, hl
    nop
    add b
    nop
    db $10
    ld l, a
    nop
    nop
    ld [$006e], sp
    nop
    nop
    add hl, de
    nop
    nop
    ld hl, sp+$5e
    nop
    ld hl, sp-$08
    ld c, [hl]
    nop
    nop
    ldh a, [rNR24]
    nop
    nop
    add sp, $39
    nop
    ld hl, sp-$18
    add hl, hl
    nop
    add b
    nop
    db $10
    ld a, a
    nop
    nop
    ld [$007e], sp
    nop
    nop
    add hl, de
    nop
    nop
    ld hl, sp+$5e
    nop
    ld hl, sp-$08
    ld c, [hl]
    nop
    nop
    ldh a, [rNR24]
    nop
    nop
    add sp, $39
    nop
    ld hl, sp-$18
    add hl, hl
    nop
    add b
    nop
    db $10
    dec d
    nop
    nop
    ld [$0014], sp
    nop
    nop
    add hl, de
    nop
    nop
    ld hl, sp+$5e
    nop
    ld hl, sp-$08
    ld c, [hl]
    nop
    nop
    ldh a, [rNR24]
    nop
    nop
    add sp, $39
    nop
    ld hl, sp-$18
    add hl, hl
    nop
    add b
    nop
    jr jr_005_4f74

    nop
    nop
    db $10
    jr jr_005_4f60

jr_005_4f60:
    nop
    ld [$0017], sp
    nop
    nop
    ld d, $00
    nop
    ld hl, sp+$19
    nop
    nop
    ldh a, [$ff5e]
    nop
    ld hl, sp-$10
    ld c, [hl]
    nop

jr_005_4f74:
    nop
    add sp, $19
    nop
    nop
    ldh [$ff39], a
    nop
    ld hl, sp-$20
    add hl, hl
    nop
    add b
    nop
    nop
    ld a, [hl]
    nop
    nop
    db $10
    ccf
    nop
    ld hl, sp+$10
    cpl
    nop
    nop
    ld [$0039], sp
    ld hl, sp+$08
    add hl, hl
    nop
    nop
    ld hl, sp+$1b
    nop
    nop
    ldh a, [rHDMA5]
    nop
    ld hl, sp-$10
    ld b, l
    nop
    nop
    add sp, $53
    nop
    ld hl, sp-$18
    ld b, e
    nop
    add b
    nop
    inc c
    dec e
    nop
    nop
    inc b
    inc e
    nop
    nop
    db $fc
    dec de
    nop
    nop
    db $f4
    ld d, l
    nop
    ld hl, sp-$0c
    ld b, l
    nop
    nop
    db $ec
    ld d, e
    nop
    ld hl, sp-$14
    ld b, e
    nop
    add b
    nop
    inc c
    ld d, c
    nop
    ld hl, sp+$0c
    ld b, c
    nop
    nop
    inc b
    ld [hl], c
    nop
    ld hl, sp+$04
    ld h, c
    nop
    nop
    db $fc
    ld d, e
    nop
    ld hl, sp-$04
    ld b, e
    nop
    nop
    db $f4
    ld d, b
    nop
    ld hl, sp-$0c
    ld b, b
    nop
    nop
    db $ec
    ld [hl], b
    nop
    ld hl, sp-$14
    ld h, b
    nop
    add b
    nop
    ld [$0074], sp
    nop
    nop
    ld [hl], e
    nop
    ld hl, sp+$08
    ld h, h
    nop
    ld hl, sp+$00
    ld h, e
    nop
    nop
    ld hl, sp+$56
    nop
    ld hl, sp-$08
    ld b, [hl]
    nop
    nop
    ldh a, [$ff72]
    nop
    ld hl, sp-$10
    ld h, d
    nop
    add b
    nop
    ld [$0055], sp
    ld hl, sp+$08
    ld b, l
    nop
    nop
    nop
    halt
    nop
    ld hl, sp+$00
    ld h, [hl]
    nop
    nop
    ld hl, sp+$75
    nop
    ld hl, sp-$08
    ld h, l
    nop
    nop
    ldh a, [$ff72]
    nop
    ld hl, sp-$10
    ld h, d
    nop
    add b
    nop
    inc d
    ld a, e
    nop
    nop
    inc c
    ld a, d
    nop
    ld hl, sp+$14
    ld l, e
    nop
    ld hl, sp+$0c
    ld l, d
    nop
    nop
    inc b
    dec de
    nop
    nop
    db $fc
    ld d, [hl]
    nop
    ld hl, sp-$04
    ld b, [hl]
    nop
    nop
    db $f4
    ld a, c
    nop
    nop
    db $ec
    ld a, b
    nop
    ld hl, sp-$0c
    ld l, c
    nop
    ld hl, sp-$14
    ld l, b
    nop
    nop
    db $e4

Call_005_5060:
    ld [hl], a
    nop
    ld hl, sp-$1c
    ld h, a
    nop
    add b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    ldh a, [rP1]
    rst $38
    nop
    ld hl, $2201
    ld [bc], a
    inc hl
    inc bc
    ld h, b
    inc b
    ld sp, $3205
    ld b, $33
    rlca
    ld [hl], b
    ld [$0941], sp
    ld b, d
    ld a, [bc]
    ld b, e
    dec bc
    cpl
    inc c
    cp d
    dec c
    cp e
    ld c, $c9
    rrca
    ccf
    db $10
    ld hl, $2211
    ld [de], a
    inc hl
    inc de
    ld h, b
    inc d
    ld sp, $3215
    ld d, $33
    rla
    ld [hl], b
    jr jr_005_515d

    add hl, de
    ld b, d
    ld a, [de]
    ld b, e
    dec de
    cpl
    inc e
    cp d
    dec e
    cp e
    ld e, $c9
    rra
    ccf
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

jr_005_515d:
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

Jump_005_516e:
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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
    ld a, [$cb8b]
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


    ret


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c606]
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
    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c608]
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
    ld a, [$c608]
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
    ld a, [$c606]
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
    dec [hl]
    ld e, h
    ret


    ld e, h
    ld e, a
    ld e, l
    push af
    ld e, l
    ret


    ld a, [$c606]
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
    ld a, [$c608]
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
    ld a, [$c608]
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


    ld a, [$c608]
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
    ld a, [$c606]
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
    ld a, [$c606]
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


    ld a, [$c608]
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
    ld a, [$c606]
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
    ld a, [$c606]
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


    ld a, [$c606]
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
    ld a, [$c608]
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
    ld a, [$c608]
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
    sbc [hl]
    ld e, [hl]
    db $f4
    ld e, [hl]
    ld c, l
    ld e, a
    and [hl]
    ld e, a
    ret


    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c608]
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
    ld a, [$c606]
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


    ld a, [$c606]
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
    ld a, [$c608]
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


    ld a, [$cb88]
    or a
    jp nz, Jump_005_61d3

    ld a, [$c760]
    or a
    ret z

    ld a, [$c770]
    or a
    jp z, Jump_005_60fc

    cp $02
    jp z, Jump_005_6121

    cp $03
    jp z, Jump_005_61ad

    cp $04
    jp z, Jump_005_61ca

    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_005_61ce

    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    push hl
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld b, h
    ld c, l
    pop hl
    call Call_005_6a70
    inc hl
    inc hl
    ld a, [hl+]
    cp $0e
    jp z, Jump_005_61ce

    ld a, [hl-]
    cp $81
    jr nz, jr_005_606e

    ld a, [hl]
    cp $39
    jp z, Jump_005_61ce

    cp $3a
    jp z, Jump_005_61ce

    cp $3b
    jp z, Jump_005_61ce

    cp $3c
    jp z, Jump_005_61ce

    cp $46
    jp nc, Jump_005_61ce

jr_005_606e:
    ld hl, $c766
    ld a, [$c76c]
    ld b, $00
    ld c, a
    and $80
    jr nz, jr_005_607d

    jr jr_005_607f

jr_005_607d:
    ld b, $ff

jr_005_607f:
    call Call_000_0a27

Jump_005_6082:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_60ad

    ld a, c
    cp $f0
    jr c, jr_005_60ad

    jr jr_005_60bb

jr_005_60ad:
    ld a, b
    or a
    jr nz, jr_005_60b6

    ld a, c
    cp $e0
    jr c, jr_005_60bb

jr_005_60b6:
    ld c, $c8
    jp Jump_005_61ce


jr_005_60bb:
    ld a, c
    ld [$c76a], a
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_60ee

    ld a, c
    cp $f0
    jr c, jr_005_60ee

    jr jr_005_60f7

jr_005_60ee:
    ld a, b
    or a
    jr z, jr_005_60f7

    ld c, $c8
    jp Jump_005_61ce


jr_005_60f7:
    ld a, c
    ld [$c76b], a
    ret


Jump_005_60fc:
    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_005_61ce

    ld a, [$cb5a]
    ld b, a
    ld a, [$c76a]
    add b
    ld [$c76a], a
    ld a, [$cb5b]
    ld b, a
    ld a, [$c76b]
    add b
    ld [$c76b], a
    ret


Jump_005_6121:
    ld a, [$cb4e]
    cp $0c
    ret nc

    ld a, [$c912]
    ld [$c771], a
    ld a, [$c771]
    or a
    ret z

    dec a
    ld [$c771], a
    cp $00
    jp z, Jump_005_61ce

    cp $b0
    jr nc, jr_005_6149

    cp $80
    jr nc, jr_005_6178

    cp $50
    jr nc, jr_005_615e

    jr jr_005_6192

jr_005_6149:
    ld a, [$c0a8]
    and $0f
    jp nz, Jump_005_6082

    ld hl, $c766
    ld bc, $ffff
    call Call_000_0a27
    jp Jump_005_6082


    ret


jr_005_615e:
    ld a, $17
    call Call_000_15f6
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_005_6082

    ld hl, $c766
    ld bc, $0001
    call Call_000_0a27
    jp Jump_005_6082


    ret


jr_005_6178:
    ld a, $15
    call Call_000_15f6
    ld a, [$c0a8]
    and $1f
    jp nz, Jump_005_6082

    ld hl, $c766
    ld bc, $0001
    call Call_000_0a27
    jp Jump_005_6082


    ret


jr_005_6192:
    ld a, $1a
    call Call_000_15f6
    ld hl, $c766
    ld bc, $0001
    call Call_000_0a27
    ld hl, $c768
    ld bc, $ffff
    call Call_000_0a27
    jp Jump_005_6082


    ret


Jump_005_61ad:
    ld a, [$c76c]
    cp $00
    jr z, jr_005_61c6

    ld hl, $c766
    ld bc, $0001
    call Call_000_0a27
    ld hl, $c768
    ld bc, $ffff
    call Call_000_0a27

jr_005_61c6:
    call Call_005_61e0
    ret


Jump_005_61ca:
    call Call_005_61e0
    ret


Jump_005_61ce:
    xor a
    ld [$c760], a
    ret


Jump_005_61d3:
    ld a, [$cb88]
    dec a
    ld [$cb88], a
    ld a, $c8
    ld [$c76a], a
    ret


Call_005_61e0:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_620b

    ld a, c
    cp $f0
    jr c, jr_005_620b

    jr jr_005_6216

jr_005_620b:
    ld a, b
    or a
    jr nz, jr_005_6214

    ld a, c
    cp $e0
    jr c, jr_005_6216

jr_005_6214:
    ld c, $c8

jr_005_6216:
    ld a, c
    ld [$c76a], a
    ld a, [$c768]
    ld l, a
    ld a, [$c769]
    ld h, a
    ld bc, $fff8
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_6249

    ld a, c
    cp $f0
    jr c, jr_005_6249

    jr jr_005_624f

jr_005_6249:
    ld a, b
    or a
    jr z, jr_005_624f

    ld c, $c8

jr_005_624f:
    ld a, c
    ld [$c76b], a
    ret


    ld a, [$c800]
    or a
    ret z

    ld a, [$c810]
    cp $06
    jr nz, jr_005_6265

    call Call_005_67a5
    jr jr_005_6299

jr_005_6265:
    cp $05
    jr nz, jr_005_626e

    call Call_005_674f
    jr jr_005_6299

jr_005_626e:
    cp $04
    jr nz, jr_005_6277

    call Call_005_6630
    jr jr_005_6299

jr_005_6277:
    cp $00
    jr nz, jr_005_6280

    call Call_005_67fb
    jr jr_005_6299

jr_005_6280:
    cp $01
    jr nz, jr_005_6289

    call Call_005_6324
    jr jr_005_6299

jr_005_6289:
    cp $02
    jr nz, jr_005_6292

    call Call_005_6437
    jr jr_005_6299

jr_005_6292:
    cp $03
    jr nz, jr_005_6292

    call Call_005_648e

jr_005_6299:
    ld a, [$c806]
    ld l, a
    ld a, [$c807]
    ld h, a
    ld a, [$c606]
    ld c, a
    ld a, [$c607]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60a]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_62c4

    ld a, c
    cp $f0
    jr c, jr_005_62c4

    jr jr_005_62d2

jr_005_62c4:
    ld a, b
    or a
    jr nz, jr_005_62cd

    ld a, c
    cp $e0
    jr c, jr_005_62d2

jr_005_62cd:
    ld c, $c8
    jp Jump_005_6313


jr_005_62d2:
    ld a, c
    ld [$c80a], a
    ld a, [$c808]
    ld l, a
    ld a, [$c809]
    ld h, a
    ld bc, $0000
    add hl, bc
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    ld a, [$c60b]
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_005_6305

    ld a, c
    cp $f0
    jr c, jr_005_6305

    jr jr_005_630e

jr_005_6305:
    ld a, b
    or a
    jr z, jr_005_630e

    ld c, $c8
    jp Jump_005_6313


jr_005_630e:
    ld a, c
    ld [$c80b], a
    ret


Jump_005_6313:
    ld a, [$c810]
    cp $05
    ret z

    cp $06
    ret z

    xor a
    ld [$c800], a
    ld [$c912], a
    ret


Call_005_6324:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_6332

    call Call_005_67fb
    ret


jr_005_6332:
    ld a, [$c813]
    cp $00
    jr z, jr_005_6355

    cp $01
    jr z, jr_005_6378

    cp $02
    jr z, jr_005_6392

    cp $03
    jr z, jr_005_63b5

    cp $04
    jp z, Jump_005_63d3

    cp $05
    jp z, Jump_005_63f1

    cp $06
    jp z, Jump_005_6410

    ret


jr_005_6355:
    ld a, $2e
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $27
    call Call_000_3e80
    ld a, $01
    ld [$c60d], a
    ld a, $48
    call Call_000_152f
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_005_6378:
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


jr_005_6392:
    xor a
    ld [$c760], a
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $03
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


jr_005_63b5:
    ld a, $01
    ld [$c80d], a
    ld a, $2d
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $10
    ld [$c811], a
    ld a, $04
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_005_63d3:
    ld a, $00
    ld [$c80d], a
    ld a, $2c
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $10
    ld [$c811], a
    ld a, $05
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_005_63f1:
    ld a, $02
    ld [$c80d], a
    ld a, $32
    call Call_000_153c
    ld a, $01
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $06
    ld [$c813], a
    ld a, $01
    ld [$c810], a
    ret


Jump_005_6410:
    ld a, $2e
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $28
    call Call_000_3e80
    ld a, $02
    ld [$c811], a
    ret


    xor a
    ld [$b890], a
    ld a, $2e
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $02
    ld [$c811], a
    ret


Call_005_6437:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_6445

    call Call_005_67fb
    ret


jr_005_6445:
    ld a, [$c813]
    cp $00
    jr z, jr_005_6451

    cp $01
    jr z, jr_005_6474

    ret


jr_005_6451:
    ld a, $16
    call Call_000_153c
    xor a
    ld [$c80c], a
    ld a, $2a
    call Call_000_3e80
    ld a, $01
    ld [$c60d], a
    ld a, $48
    call Call_000_152f
    ld a, $02
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ret


jr_005_6474:
    ld a, $01
    ld [$c80d], a
    ld a, $31
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    ld a, $20
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


Call_005_648e:
    ld a, [$b911]
    cp $00
    jr z, jr_005_64e3

    cp $01
    jp z, Jump_005_653b

    ld a, [$c813]
    cp $01
    jp z, Jump_005_64f7

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c802]
    cp $10
    call z, Call_005_6608
    cp $11
    call z, Call_005_6612
    cp $12
    call z, Call_005_661c
    cp $13
    call z, Call_005_6626
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jp z, Jump_005_65b5

    cp $08
    jp z, Jump_005_65ca

    cp $28
    jp z, Jump_005_65b5

    cp $30
    jp z, Jump_005_65f3

    cp $c0
    jp z, Jump_005_6536

    ret


jr_005_64e3:
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $01
    jr z, jr_005_64f7

    cp $02
    jr z, jr_005_64fb

    cp $03
    jr z, jr_005_6509

    ret


Jump_005_64f7:
jr_005_64f7:
    call Call_005_67fb
    ret


jr_005_64fb:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_6517

    call Call_005_67fb
    ret


jr_005_6509:
    ld a, [$c811]
    dec a
    ld [$c811], a
    or a
    jr z, jr_005_6536

    call Call_005_67fb
    ret


jr_005_6517:
    ld a, $00
    ld [$c80d], a
    ld a, $10
    call Call_000_153c
    ld a, $40
    ld [$c811], a
    ld a, $03
    ld [$c813], a
    ld a, $01
    ld [$c80c], a
    ld a, $03
    ld [$c810], a
    ret


Jump_005_6536:
jr_005_6536:
    xor a
    ld [$c800], a
    ret


Jump_005_653b:
    ld a, [$c813]
    cp $01
    jp z, Jump_005_64f7

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c802]
    cp $10
    call z, Call_005_6608
    cp $11
    call z, Call_005_6612
    cp $12
    call z, Call_005_661c
    cp $13
    call z, Call_005_6626
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $01
    jr z, jr_005_658b

    cp $08
    jr z, jr_005_65df

    cp $10
    jr z, jr_005_65f3

    cp $20
    jr z, jr_005_65b5

    cp $28
    jr z, jr_005_65ca

    cp $48
    jr z, jr_005_65df

    cp $50
    jr z, jr_005_65f3

    cp $80
    jr z, jr_005_6536

    ret


jr_005_658b:
    ld a, $01
    ld [$c80d], a
    ld a, $0d
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Jump_005_65b5:
jr_005_65b5:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Jump_005_65ca:
jr_005_65ca:
    ld a, $02
    ld [$c80d], a
    ld a, $12
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


jr_005_65df:
    ld a, $00
    ld [$c80d], a
    ld a, $0c
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a

Jump_005_65f3:
jr_005_65f3:
    ld a, $00
    ld [$c80d], a
    ld a, $10
    call Call_000_153c
    ld a, $02
    ld [$c813], a
    ld a, $03
    ld [$c810], a
    ret


Call_005_6608:
    ld hl, $c808
    ld bc, $0001
    call Call_000_0a27
    ret


Call_005_6612:
    ld hl, $c806
    ld bc, $ffff
    call Call_000_0a27
    ret


Call_005_661c:
    ld hl, $c806
    ld bc, $0001
    call Call_000_0a27
    ret


Call_005_6626:
    ld hl, $c808
    ld bc, $ffff
    call Call_000_0a27
    ret


Call_005_6630:
    ld a, $02
    ld [$c912], a
    ld a, [$c811]
    inc a
    ld [$c811], a
    ld a, [$c802]
    cp $38
    call z, Call_005_6608
    cp $39
    call z, Call_005_6612
    cp $3a
    call z, Call_005_661c
    cp $3b
    call z, Call_005_6626
    ld a, [$c813]
    cp $01
    jr z, jr_005_6684

    cp $02
    jr z, jr_005_665f

    ret


jr_005_665f:
    ld a, $02
    ld [$c813], a
    ld a, [$c811]
    cp $6c
    call z, Call_005_66ef
    cp $74
    call z, Call_005_673f
    cp $a4
    call z, Call_005_672f
    cp $b0
    call z, Call_005_670f
    ld a, [$c811]
    cp $b0
    call z, Call_005_66c5
    ret


jr_005_6684:
    ld a, $01
    ld [$c813], a
    ld a, [$c811]
    cp $01
    call z, Call_005_66cf
    cp $08
    call z, Call_005_66df
    cp $38
    call z, Call_005_66cf
    cp $40
    call z, Call_005_671f
    cp $e0
    jr z, jr_005_66a5

    ret


jr_005_66a5:
    call Call_005_66ff
    ld a, $d0
    ld [$c806], a
    xor a
    ld [$c807], a
    ld a, $60
    ld [$c808], a
    ld a, $01
    ld [$c809], a
    xor a
    ld [$c811], a
    ld a, $02
    ld [$c813], a
    ret


Call_005_66c5:
    xor a
    ld [$c810], a
    ld a, $35
    call Call_000_3e80
    ret


Call_005_66cf:
    ld a, $03
    ld [$c80d], a
    ld a, $37
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_66df:
    ld a, $03
    ld [$c80d], a
    ld a, $3b
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_66ef:
    ld a, $01
    ld [$c80d], a
    ld a, $35
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_66ff:
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_670f:
    ld a, $02
    ld [$c80d], a
    ld a, $36
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_671f:
    ld a, $02
    ld [$c80d], a
    ld a, $3a
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_672f:
    ld a, $00
    ld [$c80d], a
    ld a, $34
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_673f:
    ld a, $00
    ld [$c80d], a
    ld a, $38
    call Call_000_153c
    ld a, $04
    ld [$c810], a
    ret


Call_005_674f:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_005_6766

    cp $01
    jr z, jr_005_677b

    cp $02
    jr z, jr_005_677c

    ret


jr_005_6766:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_005_6787

    ld hl, $c806
    ld bc, $0001
    call Call_000_0a27
    ret


jr_005_677b:
    ret


jr_005_677c:
    ld a, $08
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_005_6787:
    ld a, $02
    ld [$c80d], a
    ld a, $16
    call Call_000_153c
    ld a, $05
    ld [$c810], a
    xor a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $37
    call Call_000_3e80
    ret


Call_005_67a5:
    ld a, [$c912]
    inc a
    ld [$c912], a
    ld a, [$c813]
    cp $00
    jr z, jr_005_67bc

    cp $01
    jr z, jr_005_67d1

    cp $02
    jr z, jr_005_67d2

    ret


jr_005_67bc:
    ld a, [$c811]
    inc a
    ld [$c811], a
    cp $10
    jr z, jr_005_67dd

    ld hl, $c806
    ld bc, $0001
    call Call_000_0a27
    ret


jr_005_67d1:
    ret


jr_005_67d2:
    ld a, $09
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


jr_005_67dd:
    ld a, $02
    ld [$c80d], a
    ld a, $0e
    call Call_000_153c
    ld a, $06
    ld [$c810], a
    xor a
    ld [$c811], a
    ld a, $01
    ld [$c813], a
    ld a, $38
    call Call_000_3e80
    ret


Call_005_67fb:
    ld a, [$c80c]
    or a
    ret z

    ld a, [$c80d]
    cp $00
    jr z, jr_005_6819

    cp $01
    jr z, jr_005_6823

    cp $02
    jr z, jr_005_682d

    ld hl, $c808
    ld bc, $ffff
    call Call_000_0a27
    ret


jr_005_6819:
    ld hl, $c808
    ld bc, $0001
    call Call_000_0a27
    ret


jr_005_6823:
    ld hl, $c806
    ld bc, $ffff
    call Call_000_0a27
    ret


jr_005_682d:
    ld hl, $c806
    ld bc, $0001
    call Call_000_0a27
    ret


    ld a, [$b911]
    cp $00
    jp z, Jump_005_6848

    cp $01
    jp z, Jump_005_68dd

    jp Jump_005_696a


    ret


Jump_005_6848:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c831]
    cp $59
    jr nc, jr_005_6895

    inc a
    ld [$c831], a
    cp $4d
    jr c, jr_005_687c

    cp $50
    jr z, jr_005_6884

    cp $58
    ret c

    cp $58
    jr z, jr_005_688f

    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_157d
    ret


jr_005_687c:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


jr_005_6884:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_157d
    ret


jr_005_688f:
    ld a, $32
    call Call_000_3e80
    ret


jr_005_6895:
    ld a, [$c831]
    cp $9a
    ret nc

    inc a
    ld [$c831], a
    cp $5b
    jr z, jr_005_68ac

    cp $99
    jr c, jr_005_68b7

    cp $99
    jr z, jr_005_68bf

    ret


jr_005_68ac:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_157d
    ret


jr_005_68b7:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


jr_005_68bf:
    xor a
    ld [$c820], a
    ld a, $33
    call Call_000_3e80
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_153c
    ld a, $03
    ld [$c810], a
    ld a, $01
    ld [$c813], a
    ret


Jump_005_68dd:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_005_6a50
    cp $09
    call z, Call_005_6a58
    cp $0a
    call z, Call_005_6a60
    cp $0b
    call z, Call_005_6a68
    ld a, [$c831]
    cp $83
    jp nc, Jump_005_693f

    inc a
    ld [$c831], a
    cp $01
    jp z, Jump_005_69d4

    cp $34
    jp z, Jump_005_69df

    cp $35
    jp z, Jump_005_69ea

    cp $36
    jp z, Jump_005_69f5

    cp $66
    jp z, Jump_005_69df

    cp $67
    jp z, Jump_005_69d4

    cp $7f
    jp z, Jump_005_69df

    cp $80
    jp z, Jump_005_6a00

    cp $82
    jp z, Jump_005_6a2c

    ret


Jump_005_693f:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $86
    jp z, Jump_005_6a16

    cp $8a
    jp z, Jump_005_6a21

    cp $9e
    jp z, Jump_005_6a00

    cp $a2
    jp z, Jump_005_6a0b

    cp $d4
    jp z, Jump_005_6a16

    cp $da
    jp z, Jump_005_6a21

    cp $fe
    jp z, Jump_005_6a32

    ret


Jump_005_696a:
    ld a, [$c912]
    cp $01
    ret nz

    inc a
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, [$c822]
    add $04
    cp $08
    call z, Call_005_6a50
    cp $09
    call z, Call_005_6a58
    cp $0a
    call z, Call_005_6a60
    cp $0b
    call z, Call_005_6a68
    ld a, [$c831]
    cp $71
    jp nc, Jump_005_69b4

    inc a
    ld [$c831], a
    cp $07
    jr z, jr_005_69d4

    cp $54
    jr z, jr_005_69df

    cp $5a
    jr z, jr_005_69f5

    cp $68
    jr z, jr_005_69ea

    cp $70
    jp z, Jump_005_6a2c

    ret


Jump_005_69b4:
    inc a
    ld [$c831], a
    ld a, [$c831]
    cp $75
    jp z, Jump_005_6a16

    cp $84
    jp z, Jump_005_6a0b

    cp $90
    jp z, Jump_005_6a00

    cp $98
    jp z, Jump_005_6a21

    cp $d8
    jr z, jr_005_6a32

    ret


Jump_005_69d4:
jr_005_69d4:
    ld a, $03
    ld [$c82d], a
    ld a, $0b
    call Call_000_157d
    ret


Jump_005_69df:
jr_005_69df:
    ld a, $03
    ld [$c82d], a
    ld a, $07
    call Call_000_157d
    ret


Jump_005_69ea:
jr_005_69ea:
    ld a, $01
    ld [$c82d], a
    ld a, $05
    call Call_000_157d
    ret


Jump_005_69f5:
jr_005_69f5:
    ld a, $01
    ld [$c82d], a
    ld a, $09
    call Call_000_157d
    ret


Jump_005_6a00:
    ld a, $02
    ld [$c82d], a
    ld a, $06
    call Call_000_157d
    ret


Jump_005_6a0b:
    ld a, $02
    ld [$c82d], a
    ld a, $0a
    call Call_000_157d
    ret


Jump_005_6a16:
    ld a, $00
    ld [$c82d], a
    ld a, $04
    call Call_000_157d
    ret


Jump_005_6a21:
    ld a, $00
    ld [$c82d], a
    ld a, $08
    call Call_000_157d
    ret


Jump_005_6a2c:
    ld a, $32
    call Call_000_3e80
    ret


Jump_005_6a32:
jr_005_6a32:
    xor a
    ld [$c820], a
    ld a, $33
    call Call_000_3e80
    ld a, $03
    ld [$c80d], a
    ld a, $0f
    call Call_000_153c
    ld a, $03
    ld [$c810], a
    ld a, $01
    ld [$c813], a
    ret


Call_005_6a50:
    ld a, [$c82b]
    inc a
    ld [$c82b], a
    ret


Call_005_6a58:
    ld a, [$c82a]
    dec a
    ld [$c82a], a
    ret


Call_005_6a60:
    ld a, [$c82a]
    inc a
    ld [$c82a], a
    ret


Call_005_6a68:
    ld a, [$c82b]
    dec a
    ld [$c82b], a
    ret


Call_005_6a70:
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
    ld a, c
    add $09
    ld l, a
    ld a, b
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
    ret


    nop
    inc b
    db $eb
    ld bc, $1e03
    nop
    ld bc, $0209
    ld [bc], a
    ld h, $36
    sbc $22
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    and e
    nop
    scf
    ld [de], a
    ld a, h
    ld a, [bc]
    ld [bc], a
    di
    ld bc, $3236
    inc sp
    inc [hl]
    dec [hl]
    or e
    ld [bc], a
    push af
    daa
    dec bc
    ld [bc], a
    ld d, l
    inc de
    nop
    ld d, e
    ld b, e
    ld b, h
    ld d, h
    ldh a, [c]
    or e
    nop
    ld d, [hl]
    rrca
    inc b
    jr nc, jr_005_6af3

    ld b, d
    ld b, [hl]
    ld b, a
    ld b, l
    db $fc
    rrca

jr_005_6af3:
    inc b
    nop
    ld [$d1d0], sp
    xor d
    xor e
    xor h
    xor l
    ccf
    xor [hl]
    xor a
    inc b
    dec b
    xor b
    xor c
    and e
    nop
    dec bc
    inc b
    rst $38
    ldh [$ffe1], a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $08
    dec b
    dec b
    cp b
    cp c
    and e
    nop
    dec bc
    ld b, $10
    ld de, $12ce
    nop
    ld hl, $0504
    and l
    nop
    dec bc
    ld [$0505], sp
    dec bc
    inc b
    dec b
    ld c, d
    nop
    rlca
    dec bc
    ld a, [bc]
    ld h, l
    rlca
    rrca
    ld [$1203], sp
    nop
    ld h, l
    rlca
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$0f30], sp
    ld [$080f], sp
    rrca
    ld [$0809], sp
    ld d, $17
    add l
    ld [$1a0a], sp
    dec de
    ld bc, $1413
    nop
    inc d
    dec d
    and l
    nop
    ld a, [bc]
    ld [hl+], a
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
    dec e
    nop
    nop
    ld [$fffd], sp
    ld l, $00
    or l
    ld a, [hl]
    db $d3
    ld d, d
    xor e
    ld l, [hl]
    rst $38
    db $dd
    ld e, [hl]
    adc e
    ld c, d
    and l
    ld a, [hl]
    rst $38
    nop
    rst $38
    push de
    ld a, [hl]
    push de
    halt
    xor e
    ld a, d
    xor c
    ld a, d
    rst $38
    cp l
    ld a, [hl]
    adc e
    ld l, [hl]
    sub e
    halt
    and l
    halt
    rst $38
    rst $38
    nop
    adc b
    rst $38
    ld h, c
    rst $38
    ld c, $6e
    cp a
    sbc d
    sbc e
    ld c, l
    ld a, a
    ld h, d
    rst $38
    pop hl
    inc bc
    ret


    rst $38
    ccf
    or d
    ld a, [hl]
    or a
    ld [hl], a
    sbc h
    ld a, h
    ret


    rst $38
    ld c, c
    cp e
    ld a, a
    add [hl]
    ld a, a
    rst $38
    nop
    call nz, $ffff
    or e
    rst $38
    ld b, a
    ld b, a
    inc a
    inc a
    rst $08
    rst $28
    rst $08
    call z, Call_000_38ff
    jr nz, @+$04

jr_005_6bf1:
    rst $30
    ld [$ffdb], sp
    daa
    ret c

    ccf
    jp $b63f


    ld a, a
    and e
    rst $38
    ld a, a
    cp b
    ld b, a

jr_005_6c01:
    rst $38
    nop
    ld [hl-], a
    call $ef33
    rst $38
    ld a, b
    rst $38
    rst $00
    ld h, b
    inc b
    adc h
    rst $38
    rst $00
    rst $38
    jr c, @+$01

    nop
    ld a, b
    add a
    xor a
    ld [hl], b
    ldh a, [rIE]
    nop
    and b
    ld b, b
    and b
    ld b, b
    or h
    ld b, b
    cp l
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $28
    db $10
    jr c, jr_005_6bf1

    db $e3
    rst $38
    inc e
    ld c, h
    inc sp
    ld a, [hl]
    rra
    sbc a
    dec b
    rst $00
    rst $38
    inc bc
    rst $38

jr_005_6c37:
    nop
    daa
    ret c

    sbc a
    ldh a, [$fff0]
    rst $38
    dec b
    ld h, b
    jp z, $d520

    db $f4
    ld [$751d], a
    jr nc, jr_005_6c4f

    ld [bc], a
    or e
    nop
    ld [bc], a
    dec h
    rst $00

jr_005_6c4f:
    inc de
    inc b
    ld [bc], a
    rst $38
    rrca
    ld h, b
    rst $18
    jr nz, jr_005_6c37

    db $f4
    db $eb
    dec e
    ld a, l
    ld [hl-], a
    ld [$9f02], sp
    sbc a
    ld h, l
    rst $00
    dec sp
    inc b
    inc b
    ld a, a
    add hl, bc
    ld h, b
    add $20
    reti


    db $f4
    ldh [c], a
    ld bc, $ff04
    cp $01
    inc hl
    call c, Call_000_22dd
    ld c, a
    jr nc, @+$01

    ld h, c
    sbc [hl]
    sbc l
    ld h, d
    rst $00
    jr jr_005_6c01

    ld a, a
    rst $38
    rst $30
    ld [$7f80], sp
    db $dd
    ld [hl+], a
    ld a, a
    nop
    cp $03
    dec bc
    nop
    rst $38
    ld [hl], a
    adc b
    nop
    rst $38
    db $dd
    ei
    ld [hl+], a
    rst $38
    inc b
    ld bc, $7eab
    xor e
    ld l, [hl]
    push de
    rst $38
    ld e, [hl]
    sub l
    ld e, [hl]
    cp l
    ld a, [hl]
    pop de
    halt
    ret


    rst $38
    ld l, [hl]
    and l
    ld l, [hl]
    rst $38
    nop
    ld h, d
    rst $38
    ld c, l
    rst $38
    ld a, a
    sbc d
    sbc e
    ld c, $6e
    ld h, c
    rst $38
    adc b
    ld a, [hl]
    nop
    db $10
    ret nz

    ld b, b
    ld h, b
    and b
    ld a, a
    ld b, b
    rlca
    ld bc, $033f
    ld [bc], a
    ld b, $05
    db $fd
    inc bc
    rlca
    ld [bc], a
    ld bc, $ff11
    and [hl]
    and $90
    sub b
    ld b, b
    ld b, b
    and b
    and b
    rst $38
    ret nz

    ret nz

    add b
    add b
    rst $38
    nop
    call nc, $ffff
    set 1, e
    dec d
    dec d
    inc bc
    inc bc
    dec b
    dec b
    cp a
    ld [bc], a
    ld [bc], a
    ld bc, $b201
    ld h, b
    and c
    rrca
    and b
    rst $38
    ld b, b
    sub b
    ld h, b
    sbc h
    ld h, b
    adc a
    ld d, b
    add b
    rst $38
    ld b, b
    and d
    nop
    inc hl
    ld bc, $0103
    ld [bc], a
    rst $38
    nop
    inc b
    ld [bc], a
    ld [$f604], sp
    ld c, $00
    rst $38
    nop
    jp nc, $60c8

    ld d, c
    jr nz, jr_005_6d18

jr_005_6d18:
    ldh [rIE], a
    pop de
    jr nc, @+$0c

    ld c, h
    ld [hl], c
    rlca
    jr jr_005_6d22

jr_005_6d22:
    rst $38
    nop
    and d
    ld [$5523], sp
    inc bc
    xor c
    ld [bc], a
    ld e, a
    ld d, h
    inc b
    xor d
    ld [$0254], sp
    ld [bc], a
    call $0200
    ld a, a
    db $10
    ldh [$ffd8], a
    db $10
    cpl
    ld c, h
    ld [hl], e
    ld [bc], a
    ld [bc], a
    rst $38
    ld e, h
    inc hl
    db $dd
    inc bc
    db $fd
    ld [bc], a
    db $fc
    inc b
    ld e, a
    ld a, [$f408]
    cp $06
    nop
    inc b
    call nz, Call_000_0403
    rst $38
    db $10
    ld h, $4c
    ld [hl], c
    inc bc
    inc e
    nop
    nop
    rst $38
    and e
    ld b, h
    inc hl
    sbc b
    inc bc
    ld h, h
    inc bc
    sbc b
    rst $38
    dec b
    ld h, d
    add hl, bc
    sub [hl]
    push af
    ld c, $4d
    cp $fc
    rlca
    rrca
    inc bc
    inc e
    ld bc, $77fe
    adc b
    ld bc, $f7fe
    db $dd
    ld [hl+], a
    cp $04
    ld de, $77c2
    jp nc, $ff7f

    add $6f
    and d
    ld l, e
    xor d
    ld l, e
    adc a
    ld b, b
    rst $38
    adc b
    ld b, a
    xor b
    ld h, a
    or d
    ld [hl], a
    or d
    ld [hl], a
    rst $38
    cp d
    ld a, a
    adc h
    ld l, a
    adc h
    ld l, a
    rst $38
    nop
    rst $28
    add e
    ld a, a
    add b
    ld a, a
    rlca
    ld [bc], a
    rst $38
    nop
    pop bc
    rst $30
    ret nz

    inc bc
    cp $07
    ld [bc], a
    db $fc
    rrca
    ld [de], a
    rlca
    ei
    jp nc, $07c7

    inc bc
    adc h
    ld l, a
    sub d
    ld [hl], a
    jp nz, Jump_005_77ff

    and a
    ld [hl], d
    rst $28
    ld a, [hl-]
    pop bc
    ld a, $d5
    rst $38
    ld a, $d7
    inc a
    db $db
    inc a
    jp hl


    ld e, $ab
    rst $38
    ld e, [hl]
    rst $38
    nop
    ld a, h
    add b
    xor a
    ld [hl], h
    cp $ff
    dec b
    and b
    ld e, a
    cp a
    ld b, b
    xor a

jr_005_6ddf:
    ld e, a

jr_005_6de0:
    or b
    rst $38
    ld d, b
    rst $38
    nop
    ccf
    jr nz, jr_005_6de0

    rla
    cpl
    rst $38
    ret nc

    ld [bc], a
    db $fd
    cp $01
    ei
    db $fd
    rlca
    rst $38
    dec b
    rst $38
    nop
    inc l
    jp nc, $e890

    and e
    rst $38
    ld d, b
    ld l, [hl]
    ret nz

    ld l, b
    add b
    call Call_005_4580
    rst $38
    ld [$00ff], sp
    rra
    jr nz, jr_005_6e10

    dec bc
    ld h, e
    rst $38
    add h

jr_005_6e10:
    cp d
    ld bc, $000b
    ld e, c
    nop
    ld d, c
    cp $00
    inc l
    ld h, $d8
    sub d
    db $fc

jr_005_6e1e:
    db $e3
    inc e
    ld a, h
    ld a, a
    ei
    ld [$f8f7], sp
    rst $20
    ld [hl-], a
    dec l
    ld bc, $fb24
    cp b
    ld b, a
    ld bc, $3a22
    ld e, a
    rra
    dec l
    rla
    sub l
    adc e
    ld b, $24
    adc $00
    ld [hl+], a
    jp hl


    ld bc, $0222
    jr nz, jr_005_6ea4

    rst $38
    ld b, c
    cp [hl]
    ld h, l
    sbc [hl]
    sbc l
    ld b, [hl]
    push bc

jr_005_6e4a:
    ld a, [hl+]
    cp $01
    jr nc, jr_005_6e4a

    inc b
    db $fc
    rrca
    db $ed
    ld e, $f7
    rst $18
    jr jr_005_6ddf

    ld a, b
    ei
    inc b
    ld bc, $0731
    ld hl, sp-$01
    rst $30
    jr jr_005_6e1e

    ld c, h
    ei
    inc b
    db $ed
    ld [de], a
    rst $38
    pop bc
    ld a, $bf
    ld [hl], b
    cp c
    ld [hl], a
    cp c
    ld [hl], a
    ei
    adc c
    ld h, a
    ld hl, $9900
    ld [hl], a
    ret


    ld [hl], a
    rst $38
    rst $38
    nop
    add b
    ld b, b
    or l
    ld d, l
    cp [hl]
    ld a, [hl]
    cp l
    cp a
    ld a, a
    or e
    ld a, a
    cp h
    ld e, a
    add b
    nop
    cpl
    ld bc, $00ff
    ld c, c
    ld b, b
    and c
    and b
    push af
    db $f4
    sbc e
    rst $38
    ld a, [$f4ed]
    ld bc, $f2fe
    rlca
    ld [hl-], a
    rst $38
    rst $28
    ld d, $cf

jr_005_6ea4:
    ld [de], a
    rr d
    rr b
    rst $18
    rl b
    rl h
    rst $08
    rlca
    inc d
    adc b
    ld c, e
    rst $38
    add b
    ld c, e
    and h
    ld l, a
    xor e
    ld e, [hl]
    add e
    ld a, [hl]
    db $eb
    sub e
    ld a, [hl]
    ld bc, $f710
    jr nz, jr_005_6ec4

jr_005_6ec4:
    reti


    ld [hl], $bf
    rst $38
    ld b, b
    or c
    ld d, b
    or a
    ld d, b
    or h
    ld d, e
    or a
    rst $38
    ld d, b
    xor a
    ld e, [hl]
    sbc a
    ld b, b
    add b
    ld b, b
    rst $38
    rst $38
    ld bc, $8446
    ld [hl], a
    add l
    ld d, $e4
    halt
    rst $38
    add h
    ld a, d
    cp h
    cp $02
    nop
    nop
    ld c, c
    rst $38
    and h
    ld l, b
    dec b
    inc h
    dec de
    di
    call z, $df18
    rlca
    ld c, $01
    inc de
    stop
    ld bc, $0b12
    rst $38
    ret nc

    inc de
    db $ed
    and $18
    ld c, $f2
    jr c, @-$03

    ret nz

    xor $00
    ld [hl+], a
    or $c9
    halt
    ld c, c
    ld [hl], $ff
    add hl, bc
    ldh [$ff9c], a
    ld b, a
    jr z, jr_005_6f8a

    inc c
    inc [hl]
    rst $38
    dec bc
    rrca
    nop
    ld [$0a90], sp
    add d
    add hl, bc
    rst $38
    pop bc
    ld b, $5a
    db $e4
    ld [$6894], sp
    ld e, d
    ei
    ld [hl+], a
    ldh [rSB], a
    ld [hl+], a
    ld d, a
    jr nz, jr_005_6f7e

    and b
    rst $10
    rst $28
    jr nc, jr_005_6f86

    ld e, h
    ld h, d
    ld bc, $a324
    ld e, h
    inc hl
    rst $38
    ld d, h
    inc bc
    xor b
    inc bc
    ld [hl], h
    dec b
    jp c, $ff09

    and [hl]
    pop af
    ld a, [bc]
    ld bc, $f102
    ld c, $d7
    rst $38
    jr c, @-$3f

    ld b, b
    ccf
    ret nz

    ld a, [hl]
    add c
    db $db
    rst $38
    inc h
    sbc a
    ld h, b
    rst $38
    nop
    ld hl, sp+$07
    cp l
    rst $18
    ld b, [hl]
    db $fd
    ld b, $fe
    inc bc
    ldh [rNR22], a
    inc b
    reti


    rst $38
    ld h, $ce
    ld sp, $77c9
    reti


    ld [hl], a
    ret


    ei
    ld h, a
    xor c
    jr nz, jr_005_6f7c

jr_005_6f7c:
    adc c
    ld b, a

jr_005_6f7e:
    adc c
    ld b, a
    xor c
    db $ed
    ld h, a
    nop
    ld b, d
    ld [hl], l

jr_005_6f86:
    xor a
    add b
    rrca
    cp [hl]

jr_005_6f8a:
    ld h, b
    cp c
    rst $38
    ld e, c
    sbc a
    ld h, b
    and b
    ld e, a
    rst $38
    nop
    ld b, c
    rst $38
    ld b, b
    xor c
    and b
    db $fd
    db $fc
    dec hl
    ld [$fffd], a
    ld a, h
    ccf
    cp $ed
    db $f4
    ld [hl-], a
    rst $20
    ld [hl-], a
    adc a
    rst $20
    ld a, [hl-]
    rst $28
    inc a
    ld [hl+], a
    nop
    pop bc
    nop
    ld hl, $ba12
    rst $38
    ld a, d
    cp a
    ld e, a
    add c
    ld a, a
    add d
    ld a, a
    and b
    cp $00
    inc de
    ld bc, $fffe
    nop

jr_005_6fc3:
    and c
    and b
    ld e, l
    ccf
    ld d, h
    xor e
    xor d
    ld a, a
    cp $09
    nop
    inc de
    ld bc, $ff40
    and a
    ld a, b
    ld hl, sp+$07
    ldh [rNR34], a
    ret nc

    dec l
    rst $28
    xor e
    ld d, h
    call nc, $012b
    ld b, b
    ld hl, sp+$07
    rrca
    rst $38
    ldh a, [rSC]
    dec c
    rst $38
    nop
    ld l, e
    ld a, a
    rst $18
    rst $38
    rst $18
    rst $38
    nop
    jr nz, jr_005_6fc3

    and b
    jp z, $ffc0

    dec d
    ld b, b
    xor a
    ld b, c
    cp [hl]
    add a
    ld a, b
    adc c
    ld a, h
    nop
    ld c, b
    inc bc
    ld e, $ac
    ld [hl], e
    sbc $bf
    dec b
    and b
    ld b, [hl]
    cp $01
    ld b, d
    sub e
    db $fc
    db $fc
    inc bc
    ld h, b
    sbc a
    add b
    rst $18
    ld a, a
    add c
    ld a, [hl]
    jp nz, Jump_000_033d

    inc b
    inc hl
    call c, Call_000_1cff
    db $e3
    ld a, [de]
    rst $28
    sbc a
    ld l, l
    ld [hl], a
    sbc e
    cp $01
    ld b, h
    add d
    db $fd
    sbc $21
    ld [hl], h
    bit 1, b
    rst $28
    or a
    ld h, h
    sbc e
    ld d, d
    nop
    ld [hl+], a
    cp $01
    ld h, e
    rst $38
    inc e
    dec e
    and d
    rrca
    ret nc

    dec bc
    db $e4
    rlca
    rst $18
    ldh a, [$ffe5]
    ld a, [de]
    cp a
    ld b, b
    ld hl, $ff41
    nop
    ld a, a
    ld sp, hl
    rlca
    rst $38
    nop
    rst $20
    rra
    cp a
    nop
    ld c, h
    or a
    ei
    inc b
    ld a, a
    ld h, b
    ld a, [hl-]
    sbc a
    ldh [rP1], a
    ld bc, $f8f8
    ld d, b
    jr z, jr_005_706e

    ld sp, $4e03
    ld sp, hl
    rlca
    adc c

jr_005_706e:
    rst $20
    add hl, sp

jr_005_7070:
    rst $38
    rst $30
    ld c, c
    ld [hl], a
    ld l, c
    rst $30
    sbc c

jr_005_7077:
    rst $30
    add hl, bc
    rst $38
    rst $30
    ld sp, hl
    rlca
    ccf
    ldh [$ff39], a
    rst $28
    ld [hl-], a
    rst $38
    rst $28
    jr c, jr_005_7070

    jr nc, jr_005_7077

    add hl, sp
    rst $28
    jr nc, @-$03

    rst $28
    ccf
    ld h, b
    inc bc
    adc b
    rst $28
    dec [hl]
    db $fd
    ld b, c
    cp a
    ld a, a
    ld h, d
    rst $30
    sub l
    db $fd
    nop
    ld [bc], a
    ld d, d
    jp nc, $bdff

    ld h, $ff
    sbc c
    rst $20
    jr z, @+$01

    ld b, $ef
    rst $38
    halt
    adc c
    rst $38
    ld c, $58
    xor e
    ld d, l
    cp c
    rst $38
    ld h, [hl]
    sbc h
    ld [hl], e
    and [hl]
    ld h, c
    cp e
    ld a, b
    and c
    rst $38
    ld h, b
    sbc d
    ld e, d
    add b
    ld b, b
    inc hl
    rst $28
    ld a, b
    rst $38
    ld a, b
    xor l
    dec l
    ld d, b
    or b
    ld h, $c6
    call c, Call_000_2cff
    sub d
    ld h, d
    ld h, b
    nop
    adc h
    ld [hl], e
    ld b, [hl]

jr_005_70d6:
    ei
    add hl, sp
    ccf
    and b
    dec [hl]
    inc e
    inc e
    inc bc
    inc bc
    db $10
    cp $00
    jr nz, jr_005_70d6

    ld [hl], d
    ld a, c
    cp a
    daa
    rst $00
    sub b
    rst $38
    ld h, b
    adc $36
    db $f4
    adc b
    ld h, $1a
    jr @+$01

    nop
    and $19
    ld a, a
    inc b
    dec b
    inc b
    ret nz

    rst $18
    ret nz

    ld a, [de]

Jump_005_70ff:
    ld a, [de]
    ld h, h
    ld h, h
    ld bc, $3802
    ret c

    rst $38
    ld [de], a
    ldh [c], a
    adc c
    ld [hl], c
    add $3a
    ld h, d
    inc e
    rst $38
    ld a, $00
    ld [hl-], a
    inc l
    inc c
    nop
    ld l, c
    sub $ff
    ld d, h
    ld c, e
    ld c, $01
    set 1, b
    ld bc, $fb00
    ld c, h
    ld c, h
    ld bc, $dd5f
    ld [hl+], a
    db $e3
    ld a, h
    ld e, l
    rst $38
    sbc [hl]
    dec a
    sbc $9b
    ld l, h
    jp hl


    ld d, $cd
    rst $30
    or [hl]
    ld a, l

jr_005_7137:
    adc $03
    jr jr_005_7137

    inc bc
    or d
    ld a, h
    cp a
    add [hl]
    ld a, l
    or h
    ld e, d
    xor b
    ld [hl], h
    ld bc, $325b
    rst $38
    push bc
    and c
    ld d, [hl]
    ld b, a
    xor b
    ld l, $57
    dec de
    rst $38
    cpl
    rrca
    rst $10
    rst $38
    nop
    ld b, b
    and c
    adc h
    rst $38
    ld d, d
    sbc [hl]
    ld hl, $528c
    ld b, b
    and c
    ret nz

    ei
    sbc a
    ld b, b
    and b
    ld [de], a
    rst $28
    db $10
    ld a, b
    add a
    ld h, e
    rst $38
    inc e
    ld l, h
    or e
    sbc $3f
    add l
    ld a, a
    cp e
    db $fc
    nop
    ld e, l
    ld [bc], a
    ld e, d
    ld [$a057], sp
    ld e, b
    and a
    ldh [$fff7], a
    sbc a
    ld e, b
    daa
    inc bc
    inc e
    dec de
    inc h
    call nc, $bf0b
    ld [hl], $cb
    rrca
    pop af
    scf
    rlc c
    ld e, h
    rst $28
    rst $38
    sub b
    ret nc

    cpl
    or b
    ld c, a
    xor a
    ld b, b
    and b
    rst $30
    ld b, c
    and b
    ld b, e
    ld bc, $a358
    ld e, h
    ld e, l
    and d
    rst $38
    ld l, a
    sub b
    and e
    ld e, h
    cpl
    ret nc

    ld sp, $ffca
    rst $38
    nop
    ld a, a
    add b
    cp b
    ld h, h
    ldh [rNR10], a
    rst $38
    ret nc

    ld hl, $14ab
    call nc, $aa0a
    ld d, l
    ld e, [hl]
    ld bc, $0c69
    inc de
    inc bc
    inc c
    add b
    dec a
    rst $38
    ld b, $20
    rst $38
    jp nz, Jump_000_35c0

    ld b, b
    xor d
    ld b, b
    sub l
    rst $00
    rst $38
    xor b
    ld c, c
    ld d, $ff
    nop
    cpl
    ld d, b
    jr c, @+$01

    rst $00
    inc hl
    ld e, h
    inc l
    db $d3
    ld e, [hl]
    cp a
    ld b, l
    rst $30
    cp a
    ld [hl], e
    cp a
    dec b
    jr nz, jr_005_7231

    cp b
    add b
    ld b, b
    rst $30
    add b
    inc b
    add b
    ld h, b
    inc e
    rst $38
    nop
    jp nz, $ff25

    ld bc, $0112
    jr jr_005_7205

    ld a, [de]

jr_005_7205:
    ld b, c
    cp [hl]
    db $ed
    and c
    nop
    ld b, [hl]
    ld h, $d9
    ld bc, $6420
    sbc d
    sbc b
    rst $38
    ld h, [hl]
    ret z

    dec [hl]
    and h
    dec de
    rst $38
    nop
    ld a, $ff
    pop bc
    dec bc
    inc d
    dec b
    ld a, [bc]
    rlca
    nop
    inc bc
    rst $38
    and h
    inc bc
    ld d, h
    inc bc
    db $ec
    sub b
    ld l, b
    and b
    rst $38
    ld d, c
    and b
    ld d, e

jr_005_7231:
    or b
    ld l, a
    xor c
    ld d, [hl]
    or a
    rst $38
    ld b, c
    jp c, $801a

    ld b, b
    rlca
    db $eb
    inc [hl]
    rst $38
    ret z

    ld l, l
    and c
    ret nc

    ld [hl], b
    ld h, $26
    call z, $ccff
    ld h, d
    ld h, d
    nop
    nop
    ld b, b
    and e
    ld h, c
    rst $38
    ld d, [hl]
    ld [hl-], a
    inc l
    jp nc, Jump_000_1ec4

    nop
    dec bc
    rst $38
    inc b
    jr jr_005_7275

jr_005_725e:
    rlca
    nop
    add $3a
    sub e
    rst $38
    ld l, l
    xor e
    ld b, l
    cp d
    ld d, h
    or c
    ld c, [hl]
    or c
    rst $38
    ld b, d
    ld c, [hl]
    add b
    add b
    nop
    rst $00
    cp b
    ld b, b

jr_005_7275:
    rst $38
    jr nc, jr_005_72a8

    inc c
    rst $38
    ret nz

    dec [hl]
    ld a, [bc]
    ld a, l
    ei
    ld h, d
    ld d, $00
    ld a, [hl-]
    call nz, $0638
    ld a, [de]
    add hl, de
    rst $38
    ld h, c
    ld a, [$5802]
    and b
    ld [hl], b
    add b
    ldh [c], a
    rst $38
    ld [hl+], a
    nop
    nop
    and b
    ld b, e
    ret nz

    inc hl
    ld h, b
    ld a, a
    inc de
    ldh a, [$ffcb]
    jr jr_005_72a7

    ld c, a
    ld b, b
    ld bc, $ff77
    ld a, a
    add b

jr_005_72a7:
    add a

jr_005_72a8:
    ld a, b
    adc l
    ld [hl], d
    db $fd
    ld b, $ff
    ld a, e
    sbc h
    pop hl
    ld h, $85
    adc [hl]
    ld c, l
    cp $ff
    sbc c
    ld h, [hl]
    cp h
    ld [hl], e
    sub [hl]
    ld [hl], c
    and e
    ld h, b

jr_005_72bf:
    rst $28
    cp e
    ld a, d
    and c
    ld h, c
    inc bc
    jr nz, jr_005_72bf

    ld a, b
    ld l, l
    rst $38
    xor l
    jr nc, @-$2e

    sub $26
    sbc h
    ld l, h
    ld h, d
    sub $00
    ld b, b
    ld c, h
    or e
    inc c
    jr nz, jr_005_730c

    dec bc
    jr nz, jr_005_725e

    ld b, $df
    add c
    ld c, [hl]
    ld b, e
    inc a
    db $fc
    ld b, $20
    ld [de], a
    xor h
    rst $38
    adc [hl]
    ld d, d
    push bc
    add hl, hl
    ldh [c], a
    sub h
    ld sp, $ff0a
    rra
    nop
    add hl, hl
    ld h, $06
    nop
    ld d, d
    xor l
    rst $38

jr_005_72fb:
    ld l, c
    ld d, [hl]
    inc e
    inc bc
    adc $c9
    inc bc
    nop
    db $fd
    ld c, l
    ld [bc], a
    jr nz, jr_005_72fb

    inc c
    ld l, a
    ld [hl], b
    sbc l

jr_005_730c:
    ld e, $ff
    ld e, l
    cp [hl]
    dec sp
    call c, $26d1
    sub l
    ld l, [hl]
    inc bc
    ld l, l
    sbc [hl]
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
    rst $38
    nop
    ld a, [hl]
    rst $38
    add c
    xor b
    ld [hl], h
    ld sp, hl
    nop
    or [hl]
    ld l, b
    sub d
    rst $38
    ld h, h
    or d
    ld b, b
    or d
    ld h, b
    rst $38
    nop
    cp a
    rst $38
    ld b, b
    adc b
    rla
    rst $08
    nop
    inc [hl]
    dec bc
    ld h, $ff
    inc de
    daa
    inc bc
    daa
    ld c, e
    rst $38
    nop
    daa
    rst $38
    ret c

    sub e
    db $fc
    sbc h
    ld h, d
    ld [hl], b
    call $bf40
    xor d
    add b
    ld d, l
    add b
    ld l, d
    rst $38
    jr nz, jr_005_7395

    inc c
    ld a, a
    db $d3

jr_005_7395:
    inc bc
    xor h
    ld bc, $0156
    xor [hl]
    ld b, b
    nop
    db $fd
    cp [hl]
    ld bc, $ff02
    add b
    pop bc
    ld h, $71
    adc $ff
    rrca
    ldh a, [$ff27]
    db $fc
    dec c
    ld [bc], a
    rst $38
    nop

jr_005_73b0:
    rst $38
    cp $01
    ccf
    ret nz

    pop bc
    ld h, $47
    sbc b
    cp a
    sbc e
    ld h, h
    cpl
    ret nc

    ld e, c
    and [hl]
    inc b
    ld [bc], a
    ld [hl+], a
    ei
    ld [hl], c
    ret z

    ld a, [bc]
    ld [bc], a
    ld [hl+], a
    ld b, a
    adc b
    sbc e
    inc h
    cp $00
    ld [bc], a
    ld h, $ff
    nop
    ld a, b
    add a
    and a
    ld a, b
    rst $38
    ld hl, sp+$07
    or c
    ld a, a
    add h
    ld a, a
    or b
    ld e, [hl]
    rst $38
    and h
    ld a, a
    rst $38
    nop
    rst $28
    db $10
    jr c, jr_005_73b0

    rst $38
    inc hl
    call c, $f38c
    ld h, $ff
    ld l, e
    ld a, a
    ei
    rst $18
    rst $18
    ld bc, $9108
    cp $9c
    ld h, e
    ld b, a
    ld a, a
    rst $38
    dec sp
    rst $38
    ldh [c], a
    rst $38
    ld de, $033f
    ld [bc], a
    rst $38
    db $e3
    inc e
    inc l
    di
    sbc $bf
    dec b
    rst $38
    ei
    or e
    rst $38
    ld [bc], a
    ld a, [bc]
    rst $38
    ldh [$ff1f], a
    ld a, b
    rst $38
    rst $18
    rrca
    rst $38
    ld hl, sp-$01
    cpl
    inc b
    ld [bc], a
    ld h, e
    sbc h
    rst $38
    call z, $1af3
    rst $38
    rst $38
    db $fd
    ld d, a
    ld e, e
    cp $01
    inc c
    add e
    db $fc
    call c, $6123
    rst $38
    ld [$ffdf], sp
    daa
    cp $0d
    dec c
    ld bc, $230a
    call c, $ddff
    ld [hl+], a
    rrca
    ldh a, [rNR44]
    call c, $f02f
    rst $38
    pop de
    cp $92
    ld h, b
    or d
    ld h, l
    sub [hl]
    ld l, c
    rst $38
    cp c
    ld h, [hl]
    cp b
    ld [hl], a
    and [hl]
    ld h, c
    sbc e
    ld e, d

jr_005_745b:
    rst $38
    add b
    ld b, b
    daa
    sbc e
    inc h
    ld e, b
    dec [hl]
    ret


    rst $38
    db $fc
    nop
    cp $06
    db $fc
    inc c
    ldh [c], a
    ld [hl+], a
    rst $38
    nop
    nop
    add b
    ld d, l
    ret nz

    ld a, [hl+]
    or b
    ld c, l
    rst $38
    sbc $a1
    jr nc, @+$11

    rrca
    nop
    db $10
    db $10
    rst $38
    nop
    nop
    ld [bc], a
    db $fc
    dec c
    di
    scf
    rst $00
    rst $38
    jr nc, jr_005_745b

    sub $16
    add b
    add b
    ld c, $0e
    rst $38
    nop
    nop
    ld [hl], c
    xor $60
    ld d, e
    jr nz, @+$15

    cp a
    ret nc

    adc $0c
    inc bc
    ld c, a
    ld c, h
    pop hl
    dec d
    ld b, l
    rst $38
    cp d
    add e
    ld a, h
    inc bc
    db $fc
    dec b
    ld a, [$ff1b]
    db $e4
    pop hl
    ld b, $85
    adc [hl]
    ld c, l
    cp $71
    ld a, a
    add sp, $60
    ld d, c
    jr nz, jr_005_74cc

    ret nc

    ret z

    ld b, $02
    ld a, a
    adc d
    add e
    ld b, h
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec b
    ld [bc], a
    rst $38
    adc a

jr_005_74cc:
    ld a, a
    cp e
    ld a, e
    sub b
    ld [hl], b
    and b
    ld h, b
    rst $18
    cp d
    ld a, d

jr_005_74d6:
    and c
    ld h, c
    sbc d
    nop
    ld [$ef23], sp
    rst $38
    ld a, b
    ld a, b
    dec l
    dec l
    ld d, b
    ld [hl], b
    ld h, $26
    rst $38
    call z, $62cc
    ld h, d
    nop
    nop
    ccf
    rst $38
    rst $38
    ld h, a
    ld h, a
    ld a, [hl-]
    ld a, [hl-]
    ret nz

    ret nz

    inc e
    inc e
    ei
    inc bc
    inc bc
    ld bc, $7208
    ld [hl], d
    ld a, c
    rst $38
    rlca
    rst $28
    rlca
    ret nc

    ret nc

    ld d, $04
    ld [$d3d3], sp
    ld l, [hl]
    rst $38
    ld l, [hl]
    inc b
    inc b
    ret nz

    ret nz

    ld a, [de]
    ld a, [de]
    ld h, h
    db $fd
    ld h, h
    ld bc, $380a
    ld hl, sp+$42
    ld b, d
    ld h, c
    ld h, c
    db $eb
    sbc d

jr_005_7521:
    sbc d
    and c
    ld e, $22
    nop
    inc c
    ld h, d
    db $e3
    ld b, c
    rst $38
    ld b, a
    inc bc
    inc bc
    jp z, Jump_000_00ca

    ld bc, $fe4c
    ld [bc], a
    ld a, [bc]
    call $633e
    ld a, h
    dec e
    ld e, $5d
    rst $18
    ld a, [hl]
    ld a, e
    db $fc
    ld hl, $0126
    ld a, [bc]
    ccf
    nop
    rst $38
    ld b, b
    nop
    cp a
    ccf
    or b
    ccf
    xor a
    jr nc, jr_005_74d6

    xor b
    ld [hl+], a
    nop
    rst $38
    ld b, c
    ld hl, $1e50
    add c
    nop
    pop hl
    ld [hl+], a
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
    jr nc, jr_005_7521

    jr nc, jr_005_7592

    cp a
    ccf
    ld b, b
    ccf
    ccf
    ld h, [hl]
    inc h
    ld h, l
    inc bc
    ld h, e
    ld [bc], a
    rst $38
    push af
    ld b, $0d
    ld c, $fd
    cp $02
    db $fc
    add e
    db $fc
    nop
    ld h, e
    dec b
    ld h, a
    nop
    ld h, e
    inc b
    ld h, a
    nop

jr_005_7592:
    jr nz, @+$18

    nop
    ld e, a
    ldh [rP1], a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    rst $38
    rrca
    nop
    rra
    rrca
    dec de
    inc c
    rra
    dec bc
    cp $25
    nop
    ldh [rP1], a
    ret nc

    ldh [$ff90], a
    ld h, b
    ret nc

    add hl, sp
    and b
    dec h
    nop
    and a
    ld bc, $0c1b
    db $10
    ld b, b
    add hl, de
    and a
    ld bc, $901f
    ld h, b
    db $10
    ldh [$ffe0], a
    rra
    ld l, $1f
    nop
    inc c
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    db $fc
    ld [$69bc], sp
    cp a
    sbc h

jr_005_75d7:
    ld l, c
    cp h
    ld c, c
    cp h
    ld l, b
    ld bc, $f828
    rst $38
    rlca
    dec bc
    inc b
    inc c
    db $e3
    ld c, $27
    dec bc
    rst $30
    rst $20
    rrca
    rlca
    ld bc, $9930
    and $af
    ld c, c
    rst $38
    ld l, e
    jp nc, $e437

    db $dd
    jp hl


    inc a
    ld [de], a
    cp $01
    jr nc, jr_005_75d7

    ld h, a
    db $e3
    sbc h
    call z, $9e33
    rst $18
    ld a, a
    add l
    ld a, a
    di

jr_005_760a:
    cp a
    nop
    inc sp
    nop
    jp $a4ff


    ret nz

    add hl, de
    ld b, b
    sbc [hl]
    ld b, b
    xor a
    ldh [$fff7], a
    rst $08
    jr nz, jr_005_7633

    ld b, $2a
    ld d, e
    ld a, [de]
    cpl
    rrca
    rst $38
    sub l
    rlca
    set 7, a
    nop
    ld h, $d9
    add a
    rst $38
    ld a, [$25de]
    ld a, l
    db $eb
    jr c, jr_005_760a

jr_005_7633:
    cpl
    rst $38
    sub $5d
    dec l
    add a
    ld a, b
    ld a, d
    add c
    and c
    rst $38
    ld e, h
    db $dd
    jr nz, @+$0f

    ldh a, [rNR44]
    ret nz

    dec e
    rst $30
    jp nz, $ce91

    ld bc, $af30
    ld [hl], b
    ldh a, [rP1]
    rst $38
    and b
    ld e, a
    and b
    ld b, b
    or h
    ld c, e
    cp l
    ld [hl], b

jr_005_7659:
    cp $05
    ld l, $4c
    or e
    ld a, [hl]
    rra
    sbc a
    ld h, l
    rst $00
    db $fd
    inc bc
    ld bc, $9f38
    ldh a, [$fff0]
    ld a, [bc]
    ld h, b
    jp z, Jump_000_20bf

    jp z, $eaf4

    dec e
    ld [hl-], a
    ld [$9f02], sp
    rst $28
    sbc a
    dec h
    rst $00
    dec hl
    inc b
    ld [bc], a
    dec b
    ld h, b
    rst $18
    sbc a
    jr nz, jr_005_7659

    db $f4
    db $eb
    dec e
    nop
    inc e
    ld a, [bc]
    inc b
    inc de
    db $e4
    ld b, $02
    ld bc, $e104
    ld bc, $0302
    jr nc, jr_005_76e6

    or b
    ld h, c
    ld a, a
    sbc [hl]
    sbc l
    ld b, d
    rst $00
    db $10
    sbc h
    ld l, b
    and b
    rrca
    rst $38
    ld l, b

jr_005_76a5:
    cp a
    ld h, b
    or b
    ld l, a
    or b
    ld l, a
    sbc a
    rst $38
    ld d, b
    add b
    ld b, b
    dec bc
    rlca
    ld [$0de0], sp
    rst $38
    dec b
    ld hl, sp+$00
    ld e, $e6
    inc e
    db $e4
    ld a, [$02ff]
    nop
    nop
    ld a, $d1
    ld a, a
    ld h, $5a
    cp a
    ld a, [hl+]
    ldh [$ff80], a
    ld e, h
    inc e
    ld b, e
    inc bc
    jr z, jr_005_7723

    rst $38
    add hl, sp
    xor a
    sbc a
    ld d, a
    call z, Call_000_26a8
    inc d
    rst $38
    sub l
    adc d
    add hl, bc
    ld b, $06
    nop
    ret nc

    jp Jump_005_70ff


jr_005_76e5:
    ld l, c

jr_005_76e6:
    ld [$c404], sp
    jp nz, $191a

    db $fd
    ld h, l
    ld [bc], a
    jr z, jr_005_770d

    ldh [rNR21], a
    add sp, $19
    ldh [c], a
    rst $38
    jp hl


    inc b
    and c
    ld e, h
    pop de
    ld c, $2e
    jr nz, @+$01

    nop
    nop
    ld d, d
    and e
    ld a, b
    rlca
    and h
    ld a, [bc]
    rst $38
    and l
    jr jr_005_76a5

    inc h

jr_005_770d:
    sbc h
    ld l, [hl]
    ld h, b
    ld bc, $00fe
    jr z, @+$28

    rlca
    ldh a, [rTAC]
    jr nc, jr_005_76e5

    nop
    rst $38
    ld a, l
    ret nz

    sbc e
    ld l, h
    dec e
    ld [bc], a
    dec c

jr_005_7723:
    cp $ff
    or d
    ld l, l
    and b
    ld b, b
    and b
    ld d, b
    and b
    ld d, b
    rst $18
    sub b
    ld l, a
    sbc h
    ld h, d
    adc a
    nop
    ld [$5ca2], sp
    rst $38
    inc hl
    ld bc, $fd03
    ld [bc], a
    inc b
    inc b
    ld a, [$08f7]
    inc d
    or $00
    ld [hl], $d2
    ret z

    ld h, b
    ld b, b
    rst $38
    jr nz, jr_005_774d

jr_005_774d:
    ldh [$ffc8], a
    jr nc, @+$0c

    ld c, h
    ld [hl], d
    rst $38
    rlca
    jr jr_005_7757

jr_005_7757:
    nop
    and d
    ld [$8923], sp
    rst $38
    inc bc
    xor c
    ld [bc], a
    xor b
    inc b
    xor d
    ld [$fea4], sp
    ld [bc], a
    ld [bc], a
    call Call_005_5060
    jr nz, jr_005_777d

    ldh [$ffd1], a
    rst $28
    db $10
    cpl
    ld c, h
    ld [hl], c
    ld [bc], a
    ld [bc], a
    ld e, h
    inc hl
    ld d, l
    ld a, [de]
    nop
    inc b
    ld d, h

jr_005_777d:
    nop
    inc b
    ld d, h
    cp $e0
    dec h
    ld [bc], a
    inc b
    ld bc, $ff02
    ld a, [hl+]
    ld c, h
    ld [hl], d
    inc bc
    inc e
    nop
    nop
    and e
    rst $38
    ld [$8823], sp
    inc bc
    ld d, h
    inc bc
    ld d, h
    dec b
    ld a, a
    xor d
    add hl, bc
    and [hl]
    push af
    ld c, $4d
    cp $b1
    ld l, $fe
    ld b, d
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    add c
    rst $38
    db $ed
    cp [hl]
    ld [$0101], sp
    rst $38
    db $fd
    rst $38
    ei
    ld [$c102], sp
    sub e
    rst $38
    db $dd
    jr nz, jr_005_77bd

jr_005_77bd:
    add hl, bc
    ld [bc], a
    ld a, l
    jr nz, jr_005_77c2

jr_005_77c2:
    rlca
    inc b
    rst $30
    ld c, d
    jr nz, @+$05

    rst $20
    ld [$fb05], sp
    ld [hl+], a
    nop
    rlca
    ld b, $d7
    ld [hl+], a
    nop
    ld a, $07
    rlca
    rst $38
    rst $38
    dec a
    rst $38
    call Call_000_070f
    ld [$5702], sp
    rst $38
    rst $38
    ld h, a
    ld b, $0a
    ld a, [$0902]
    db $fd
    ld a, [bc]
    inc b
    ld d, a
    rst $00
    rst $38
    xor e
    ld [$b70c], sp
    jr nc, jr_005_7844

    cp c
    ld [$770d], sp
    rst $18
    rst $38
    inc de
    ld [$fa06], sp
    rst $38

Jump_005_77ff:
    sbc a
    ldh [$ff0d], a
    dec b
    dec a
    inc c
    ld b, $df
    nop
    ld [$007f], sp
    nop
    jr nz, jr_005_780e

jr_005_780e:
    stop
    ld a, h
    ld b, b
    nop
    ld bc, $8238
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    nop
    inc bc
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
    ldh a, [$ff1f]
    nop
    rra
    nop
    rra
    nop
    rst $20
    inc de
    rst $38
    rst $20
    rst $38
    rst $10
    ld a, a
    rst $38
    or a

jr_005_7844:
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    rst $28
    rst $38
    nop
    rst $38
    rst $30
    jr nz, jr_005_7852

jr_005_7852:
    rst $28
    rst $38
    sbc a
    xor [hl]
    ld b, $01
    rst $10
    rst $38
    cp e
    jr nz, jr_005_785d

jr_005_785d:
    ld a, l
    ld b, $02
    db $fd
    xor e
    rst $38
    ei
    ld b, b
    ld [bc], a
    adc a
    ld [$ef02], sp
    ld b, b
    inc bc
    ei
    and d
    ld b, $04
    sbc c
    and b
    inc b
    inc sp
    nop
    inc bc
    dec b
    ei
    inc c
    inc bc
    ld l, l
    xor $20
    nop
    ld e, l
    rst $38
    sbc e
    ld b, $07
    and l
    rst $38
    cp a
    xor a
    rst $38
    ld l, a
    rst $38
    ld [hl], c
    ld b, $08
    sbc l
    jr nz, jr_005_7894

    ld d, l
    db $eb
    rst $38
    ld d, e

jr_005_7894:
    ld b, $09
    db $dd
    inc c
    rlca
    add c
    rst $38
    db $eb
    ret nc

    ld [hl+], a
    rlca
    dec b
    dec bc
    ld d, b
    dec bc
    ld b, d
    nop
    ld a, [$0b60]
    add c
    rst $38
    push hl
    db $ed
    ld b, $01
    rst $38
    and h
    rlca
    rlca
    ld bc, $ff01
    rst $18
    xor b
    jr nz, jr_005_78b9

jr_005_78b9:
    rlca
    ld [bc], a
    pop hl
    nop
    rst $08
    ld [$ef03], sp
    jr nz, jr_005_78c5

    ld a, l
    xor d

jr_005_78c5:
    ld [$ff04], sp
    ret nz

    ld b, $bd
    inc c
    ld bc, $08fd
    ld b, $9f
    ld d, d
    ldh [rTMA], a
    dec a
    ld [$a107], sp
    inc de
    ld bc, $0808
    inc bc
    inc c
    ld [$83b9], sp
    ld b, d
    ld [$0609], sp
    rst $38
    rst $38
    push de
    ld a, [bc]
    add hl, bc
    ld bc, $e010
    ld c, $09
    ld [$0321], sp
    rlca
    ld c, $01
    ret nz

    rla
    add hl, bc
    ld [$1981], sp
    push de
    cp e
    nop
    ld [de], a
    db $dd
    jr nz, jr_005_791c

    ld h, a
    ld b, $1c
    rst $20
    rst $38
    ld d, c
    sub a
    ld b, d
    inc e
    dec b
    dec e
    ld h, e
    rrca
    pop hl
    ld [$db1d], sp
    add d
    db $10
    ld a, [hl+]
    dec b
    rra
    ld a, l
    ld [bc], a
    dec e
    rst $08

jr_005_791c:
    ld b, $20
    cp l
    ld b, b
    rrca
    add c
    rrca
    ld b, h
    rlca

jr_005_7925:
    rra
    ld h, c
    rlca
    add c
    rrca
    add hl, de
    rrca
    inc hl
    ld [bc], a
    ld bc, $22ef
    inc hl
    ld d, h
    add hl, bc
    inc hl
    ld hl, $8723
    ld b, $03
    push de
    ld [hl+], a
    inc h
    rst $20
    ld b, $04
    jr nz, jr_005_7925

    ld [$0a07], sp
    and e
    ld a, [de]
    rrca
    inc h
    dec b
    rlca
    cp e
    inc c
    dec bc
    rlca
    jr nz, jr_005_79b0

    and c
    rst $38
    ld a, e
    rst $38
    ld h, c
    ld a, [bc]
    add hl, de
    rst $08
    add b
    inc l
    xor d
    rlca
    ld hl, $80b3
    dec l
    reti


    ld [$c722], sp
    ld b, b
    inc c
    jp Jump_000_0a4a


    ld hl, $0a83
    ld [hl+], a
    cp a
    ld [hl+], a
    nop
    add hl, bc
    inc hl
    or a
    ret nz

    jr nc, jr_005_798b

    rlca
    daa
    ld hl, $af24
    ld [$af27], sp
    ld [hl+], a
    nop
    rlca
    add hl, hl
    dec c
    ld [hl+], a
    call c, Call_000_3191
    add hl, bc
    rlca
    db $db

jr_005_798b:
    rst $38
    rlca
    ld [$fd2b], sp
    rst $38
    sbc l
    ld [bc], a
    inc c
    ld e, $83
    rst $38
    add hl, sp
    jr nz, jr_005_799a

jr_005_799a:
    rlca
    ld [bc], a
    jp nc, $e0aa

    ld [hl+], a
    rst $10
    ld a, [bc]
    daa
    ld bc, $3be0
    ld a, e
    ret nz

    ld [hl-], a
    add hl, hl
    and h
    ld h, b
    inc [hl]
    dec b
    add hl, de
    ccf

jr_005_79b0:
    ld h, b
    ld l, $09
    ld [hl-], a
    add a
    ldh [$ff3c], a
    rst $28
    ld b, e
    rst $38
    di
    ld [$211e], sp
    inc a
    pop bc
    rrca
    inc bc
    inc e
    and e
    jr nz, jr_005_79fd

    ld hl, $807d
    db $10
    rlca
    ld d, $01
    ccf
    rlca
    ld [bc], a
    sbc e
    nop
    ld b, b
    ld hl, $aa41
    dec b
    rra
    ld [hl], a
    nop
    ld b, b
    db $fd
    ld [$ad1a], sp
    jr nz, jr_005_79e1

jr_005_79e1:
    xor e
    ld b, h
    ld [$0d28], sp
    dec sp
    ei
    ld b, b
    ld d, $41
    nop
    dec b
    inc hl
    add e
    jr nz, jr_005_7a37

    ld d, c
    ld a, a
    and e
    dec l
    rrca
    ld e, $00
    dec h
    db $e3
    ret nz

    ld b, l
    ccf

jr_005_79fd:
    ld [hl+], a
    jr nz, @+$46

    rrca
    ld c, b
    inc bc
    ld bc, $40d7
    ld c, e
    rrca
    jr nz, jr_005_7a0b

    dec a

jr_005_7a0b:
    jp hl


    ldh [$ff4c], a
    ld c, [hl]
    rlca
    ld b, b
    rst $08
    rst $38
    ld [hl], e
    ldh [$ff09], a
    add hl, bc
    dec a
    jp $3b08


    dec d
    ld a, [$3162]
    rlca
    ld a, [bc]
    add hl, de
    dec b
    ld a, [bc]
    jr c, @-$5d

    ld a, [bc]
    add hl, bc

jr_005_7a28:
    ld [hl+], a
    ld d, l
    rst $28
    add b
    ld c, d
    ld b, e
    inc c
    inc e
    db $db
    ld a, [bc]
    ld b, b
    ld [hl], a
    ld b, b
    ld a, $3a

jr_005_7a37:
    dec bc
    inc b
    rst $28
    ld a, [bc]
    ld b, a
    rst $10
    rst $38
    dec bc
    ld a, [bc]
    ld c, b
    dec bc
    ld [$cedf], sp
    rst $38
    sub h
    rst $38
    ld d, [hl]
    ld a, [bc]
    ld b, l
    ld h, l
    rst $38
    add hl, hl
    ldh a, [c]
    ld c, $3e
    dec c
    ld d, a
    rst $28
    ret nz

    dec [hl]
    ld l, e
    ld h, b
    ld d, e
    dec b
    add hl, sp
    and c
    dec e
    nop
    ld a, $21
    rra
    dec bc
    jr c, jr_005_7a6b

    rra
    ei
    ret nz

    jr nz, jr_005_7a28

    xor d
    ld a, [bc]

jr_005_7a6b:
    add hl, de
    ld e, l
    ld a, [bc]
    ld e, c
    cp l
    ld h, b
    rlca
    db $db
    ld [$773a], sp
    ld [hl], d
    ret nz

    ld b, l
    ld d, e
    jr nz, jr_005_7a9a

    rlca
    inc e
    ld d, l
    rst $38
    ld c, l
    ld [$7501], sp
    xor l
    ldh [rP1], a
    ld e, l
    ld [$ab02], sp
    rst $38
    ld [hl], l
    jr nz, jr_005_7a8f

jr_005_7a8f:
    adc [hl]
    rlca
    ld b, l
    push de
    rst $38
    or l
    ldh [$ff65], a
    rlca
    ld b, [hl]
    dec c

jr_005_7a9a:
    ld [$fc55], sp
    ld [hl+], a
    nop
    rlca
    ld b, a
    ld [hl], $ff
    and $ff
    ld h, h
    rst $38
    ld bc, $08b4
    ld c, c
    dec bc
    ld c, d
    inc bc
    ld l, b
    ld b, $4b
    nop
    inc b
    ld e, e
    ldh a, [$fff1]
    ld e, $00
    ldh a, [c]
    xor a
    jr jr_005_7abc

jr_005_7abc:
    or $d9
    nop
    ld [bc], a
    sub e
    ld bc, $0ff7
    ld [bc], a
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
    nop
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
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld h, b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld b, l
    ld [bc], a
    di
    db $f4
    ld e, $00
    ld bc, $09f5
    inc b
    rrca
    ld a, [de]
    rrca
    ld a, [de]
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld a, [bc]
    dec c
    ld a, [bc]
    rrca
    inc b
    rrca
    ld b, $0f
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
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
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
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
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    nop
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    dec c
    ld [bc], a
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    rst $10
    call nc, $e3fd
    ld [hl], a
    rrca
    or a
    ld h, a
    rst $30
    ld l, a
    xor l
    xor l
    ld a, [$7ffa]
    ld b, b
    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $08
    rst $28
    rst $18
    cp a
    rst $18
    xor l
    xor l
    ld a, [$fffa]
    inc bc
    rst $38
    ld hl, sp-$01
    ei
    rst $30
    di
    push de
    ei
    db $fd
    ei
    xor l
    xor l
    ld a, [$7ffa]
    ld a, a
    sub $16
    ld sp, hl
    pop bc
    rst $38
    pop af
    rst $28
    and $ef
    or $bf
    cpl
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $10
    ld h, a
    or [hl]
    cpl
    or a
    ld l, a
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    rst $10
    di
    push de
    ei
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    sub [hl]
    ei
    db $fd
    db $f4
    db $fd
    or $ff
    or $ed
    and $ad
    db $f4
    db $fd
    or $bf

jr_005_7bb8:
    or $eb

jr_005_7bba:
    or $d9
    ld l, a
    jp c, $f96f

    ld l, a
    db $d3
    ld h, a
    or l
    cpl
    cp c
    ld l, a
    cp d
    ld l, a
    sub d
    ld l, a
    db $eb
    rst $18
    rst $20
    rst $18
    push hl
    rst $08
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_005_7bb8

    jr z, jr_005_7bba

    ld d, a
    ei
    ld d, [hl]
    ei
    ld d, l
    di
    inc d
    ei
    inc d
    ei
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    ld l, a
    or $ed
    or $6f
    or $cf
    and $49

jr_005_7bf4:
    db $f4
    ld e, c
    or $1b
    or $8f
    or $d0
    ld l, a
    sub d
    ld h, a
    sub b
    cpl
    sub a
    ld l, b
    cp b
    ld b, a
    ret nz

    ccf
    ldh [$ffdf], a
    ld a, a
    ld h, b
    ld h, d
    rst $08
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_005_7bf4

    ld h, b
    rst $18
    jr nc, @-$0f

    rst $38
    nop
    ld h, $f3
    inc b
    ei
    db $fc

jr_005_7c20:
    inc bc
    rlca
    ld hl, sp+$0c
    ei
    inc c
    ei
    jr jr_005_7c20

    rst $38
    nop
    adc e
    or $09
    and $09
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    db $fc
    ld c, $fa
    db $fd
    dec b
    xor l
    xor l
    ei
    ld a, [$797e]
    db $dd
    jp $d9ed


    dec a
    dec de
    rst $28
    bit 5, a
    ld e, e
    cp a
    and b
    rst $38
    rrca
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    ld e, l
    rst $28
    db $fd
    dec b
    rst $38
    ldh a, [rIE]
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    rst $38
    rst $30
    xor l
    xor l
    ld a, [$ff7a]
    sbc a
    cp $c6
    cp l
    sbc c
    cp a
    db $db
    or $d2
    push af
    reti


    or l
    sbc e
    push af
    reti


    ld l, l
    ld c, e
    db $ed
    db $db
    rst $20
    db $db
    ld l, $1b
    or $db
    halt
    ld e, e
    db $d3
    rst $20
    di
    rst $28
    ld [hl], a
    rst $28
    or $ef
    or d
    rst $28
    or l
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    rst $28
    rst $20
    xor e
    rst $30
    xor d
    rst $30
    adc e
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    db $fd
    reti


    or [hl]
    sbc d
    or a
    db $d3
    or $da
    db $fd
    reti


    xor a
    db $db
    cp [hl]
    jp c, $d9b5

    cp [hl]
    sbc e
    db $f4
    reti


    ld l, l
    ld c, e
    xor $db
    xor $db
    inc h
    dec de
    db $f4
    db $db
    ld h, h
    ld e, c
    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $b0e7
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    jr z, @-$07

    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    rst $20
    ld [$bdf7], sp
    reti


    ld a, $9a
    daa
    db $d3
    ld h, [hl]
    jp c, $d96d

    ccf
    db $db
    ld l, $da
    dec h
    sbc c
    and h
    adc e
    push hl
    jp c, Jump_005_516e

    ldh a, [$ffcf]
    ldh a, [$ffef]
    jr nc, jr_005_7d36

    ret nc

jr_005_7d08:
    rst $08
    ld a, a
    ld [hl], b
    rra
    ldh [$fff0], a
    rrca
    db $10
    rst $28
    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, jr_005_7d08

    rst $38

jr_005_7d1a:
    nop
    ld hl, sp+$07
    rrca

jr_005_7d1e:
    ldh a, [rNR23]

jr_005_7d20:
    rst $30
    jr jr_005_7d1a

    jr @-$07

    jr jr_005_7d1e

    jr jr_005_7d20

    rst $38
    nop
    dec h
    pop de
    and [hl]
    ld e, d
    ld [hl], a
    adc e
    ld c, $f2
    add hl, de
    pop af
    rra

jr_005_7d36:
    rst $30
    ld a, [de]
    ldh a, [c]
    db $fd
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
