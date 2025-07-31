; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld bc, $a1cd
    db $20, $cd
    or b
    db $20, $cd
    ld c, [hl]
    ld sp, $84fa
    cp b
    cp $01
    jr z, jr_001_4031

    cp $02
    jr z, jr_001_4049

    cp $03
    jr z, jr_001_4061

    ld hl, $478a
    ld c, $0b
    ld de, $8800
    call Call_000_2f41
    ld hl, $4001
    ld c, $0b
    ld de, $9000
    call Call_000_2f41
    jr jr_001_4077

jr_001_4031:
    ld hl, $54c8
    ld c, $0b
    ld de, $8800
    call Call_000_2f41
    ld hl, $4c4e
    ld c, $0b
    ld de, $9000
    call Call_000_2f41
    jr jr_001_4077

jr_001_4049:
    ld hl, $6205
    ld c, $0b
    ld de, $8800
    call Call_000_2f41
    ld hl, $5a75
    ld c, $0b
    ld de, $9000
    call Call_000_2f41
    jr jr_001_4077

jr_001_4061:
    ld hl, $6ec3
    ld c, $0b
    ld de, $8800
    call Call_000_2f41
    ld hl, $66c9
    ld c, $0b
    ld de, $9000
    call Call_000_2f41

jr_001_4077:
    ld hl, $7195
    ld c, $14
    ld de, $8000
    call Call_000_2f41
    ld a, [$b8ea]
    cp $00
    jr z, jr_001_40ab

    cp $02
    jr z, jr_001_4093

    cp $03
    jr z, jr_001_40a0

    jr jr_001_40ab

jr_001_4093:
    ld hl, $7443
    ld c, $13
    ld de, $81d0
    call Call_000_2f41
    jr jr_001_40ab

jr_001_40a0:
    ld hl, $7711
    ld c, $13
    ld de, $81d0
    call Call_000_2f41

jr_001_40ab:
    ld a, [$b8db]
    cp $01
    jr z, jr_001_40ff

    ld hl, $7a05
    ld c, $13
    ld de, $85a0
    call Call_000_2f41
    ld hl, $7de7
    ld de, $8ae0
    ld b, $20
    call Call_000_210f
    ld hl, $7ee7
    ld de, $8be0
    ld b, $20
    call Call_000_210f
    ld hl, $7e07
    ld de, $8ce0
    ld b, $20
    call Call_000_210f
    ld hl, $7f07
    ld de, $8de0
    ld b, $20
    call Call_000_210f
    ld hl, $7e27
    ld de, $8ee0
    ld b, $20
    call Call_000_210f
    ld hl, $7f27
    ld de, $8fe0
    ld b, $20
    call Call_000_210f

jr_001_40ff:
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$cb79], a
    ld [OutsideFarm], a
    xor a
    ldh [CameraX], a
    ldh [CameraY], a
    ld a, $1d
    ld [TransitionRelated], a
    ld a, $07
    ldh [WindowX], a
    ld a, $68
    ldh [WindowY], a
    ld a, $80
    ld [$b90c], a
    xor a
    ld [$4000], a
    ld a, $a0
    ld [$b90d], a
    xor a
    ld [$b90e], a
    ld [$cb84], a
    ld [$cb82], a
    ld [$cb89], a
    call Call_001_6b29
    call Call_000_0b02
    call Call_000_113f
    ld a, $00
    call Call_000_166a
    call Call_001_71d3
    call Call_001_6cd0
    call Call_000_0f40
    ld a, [$b89c]
    cp $01
    jr z, jr_001_416a

    ld a, [$b8ea]
    cp $00
    jr z, jr_001_416a

    ld a, $01
    ld [$b88d], a

jr_001_416a:
    xor a
    ld [OutsideFarm], a
    ld [$cb7a], a
    ld [$cb7b], a
    ld [$cb7c], a
    ld [$cb79], a
    ld [$cb7d], a
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
    call Call_001_715a
    call Call_001_6c75
    call Call_000_3d18
    ld a, [$b8a0]
    cp $01
    jr z, jr_001_41aa

    cp $03
    jr z, jr_001_41aa

    cp $02
    jr z, jr_001_41ae

    ret


jr_001_41aa:
    call Call_001_6950
    ret


jr_001_41ae:
    call Call_001_6985
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_001_6acb
    call Call_001_684b
    call Call_001_547e
    call Call_000_3c1d
    call Call_001_43a3
    call Call_000_2b71
    call Call_000_362c
    call Call_001_69f0
    call Call_001_69b2
    call Call_001_6b16
    call Call_001_773b
    call Call_001_7464
    call Call_001_7b72
    call Call_001_7841
    ret


Call_001_41e7:
    ld a, [$c90f]
    or a
    ret z

    ld a, $01
    ld [OutsideFarm], a
    ld a, [$c911]
    dec a
    ld [$c911], a
    jr z, jr_001_425e

    cp $13
    jr nc, jr_001_4200

    pop hl
    ret


jr_001_4200:
    call Call_001_661c
    ld a, [$c90f]
    cp $05
    jr z, MoveToAnimalShop

    cp $06
    jp z, MoveToHouse2?

    cp $07
    jp z, Jump_001_42e5

    cp $08
    jp z, Jump_001_4304

    cp $09
    jp z, Jump_001_434a

    cp $0a
    jp z, Jump_001_4381

    ld a, [$c911]
    cp $1e
    jr nz, jr_001_4279

    ld b, $fa
    ld c, $e0
    call Call_000_1960
    call Call_000_0d2b
    ld a, $a9
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ld a, $a9
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ld a, $a9
    ld [hl+], a
    ld [hl], a
    pop hl
    ret


jr_001_425e:
    ld a, [$c90f]
    ld b, a
    ld a, [wMapIndex]
    add b
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c7c0], a
    ld a, [wNextMapIndex]
    cp $02
    jr z, jr_001_4279

jr_001_4279:
    pop hl
    ret


MoveToAnimalShop::
    ld a, $13
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    pop hl
    ret


MoveToHouse2?::
    ld a, $02
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld a, $01
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [$cb84], a
    ld [$cb82], a
    pop hl
    ld a, [$b8e1]
    or a
    ret z

    ld a, [GrabbingDog3?]
    or a
    jr z, jr_001_42cc

    xor a
    ld [$b8e1], a
    ld [GrabbingDog3?], a
    ret


jr_001_42cc:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Jump_001_42e5:
    ld a, $1d
    ld [TransitionRelated2], a
    ld a, $1c
    ld [wNextMapIndex], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld a, $05
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    pop hl
    ret


Jump_001_4304:
    ld a, $01
    ld [$ccb8], a
    ld a, $0f
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    ld [$c800], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    ld [$c800], a
    ld [$c620], a
    ld [$cb4a], a
    ld [$cb84], a
    ld [$cb82], a
    ld [GrabbingDog3?], a
    ld [$cb89], a
    ld a, $00
    call Call_000_166a
    pop hl
    ret


Jump_001_434a:
    ld a, $02
    ld [$ccb8], a
    ld a, $0f
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    ld [$c800], a
    ld [$c620], a
    ld [$cb4a], a
    ld [$cb84], a
    ld [$cb82], a
    ld [GrabbingDog3?], a
    ld [$cb89], a
    pop hl
    ret


Jump_001_4381:
    ld a, $00
    ld [$ccb8], a
    ld a, $0f
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    xor a
    ld [$c90f], a
    ld [$c911], a
    ld [$c910], a
    xor a
    ld [$c7c0], a
    ld [GrabbingDog?], a
    pop hl
    ret


Call_001_43a3:
    ld a, [TransitionRelated]
    or a
    ret nz

    ld a, [TransitionRelated2]
    or a
    ret nz

    ld a, [TimePaused]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    call Call_001_41e7
    call Call_001_49be
    call Call_001_4409
    call Call_000_0ec6
    ldh a, [$ff8b]
    and $01
    jr z, jr_001_43ce

    call Call_001_5231
    ret


jr_001_43ce:
    ldh a, [$ff8a]
    and $02
    jr z, jr_001_43d8

    call Call_001_466d
    ret


jr_001_43d8:
    ldh a, [$ff8b]
    and $08
    jr z, jr_001_43e2

    call Call_000_1925
    ret


jr_001_43e2:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_001_44ef

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_001_454d

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_001_45ae

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_001_460f

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


Call_001_4409:
    ld a, [$cb85]
    or a
    jr nz, jr_001_4416

    ld a, [$cb86]
    or a
    jr nz, jr_001_4439

    ret


jr_001_4416:
    dec a
    ld [$cb85], a
    ld a, [$c60d]
    cp $00
    jr z, jr_001_4435

    cp $01
    jr z, jr_001_442d

    cp $02
    jr z, jr_001_4431

    call Call_001_4584
    ret


jr_001_442d:
    call Call_001_45e5
    ret


jr_001_4431:
    call Call_001_4646
    ret


jr_001_4435:
    call Call_001_4526
    ret


jr_001_4439:
    dec a
    ld [$cb86], a
    cp $00
    jr nz, jr_001_4445

    xor a
    ld [$c780], a

jr_001_4445:
    ld a, [$c60d]
    cp $00
    jr z, jr_001_4460

    cp $01
    jr z, jr_001_4458

    cp $02
    jr z, jr_001_445c

    call Call_001_661c
    ret


jr_001_4458:
    call Call_001_6678
    ret


jr_001_445c:
    call Call_001_66ea
    ret


jr_001_4460:
    call Call_001_65c0
    ret


Call_001_4464:
    ld a, [$cb84]
    or a
    ret nz

    xor a
    ld [$cb82], a
    ld a, [$c780]
    or a
    ret z

    ld a, [$c78d]
    cp $01
    jr z, jr_001_44b6

    cp $02
    jr z, jr_001_44b6

    ld a, [PlayerXPosition]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_448c

    cpl
    inc a

jr_001_448c:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_44a6

    sub b
    bit 7, a
    jr z, jr_001_44a1

    cpl
    inc a

jr_001_44a1:
    cp $1c
    ret nc

    jr jr_001_44b0

jr_001_44a6:
    sub b
    bit 7, a
    jr z, jr_001_44ad

    cpl
    inc a

jr_001_44ad:
    cp $08
    ret nc

jr_001_44b0:
    ld a, $01
    ld [$cb82], a
    ret


jr_001_44b6:
    ld a, [PlayerXPosition]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_44c5

    cpl
    inc a

jr_001_44c5:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_44df

    sub b
    bit 7, a
    jr z, jr_001_44da

    cpl
    inc a

jr_001_44da:
    cp $1c
    ret nc

    jr jr_001_44b0

jr_001_44df:
    sub b
    bit 7, a
    jr z, jr_001_44e6

    cpl
    inc a

jr_001_44e6:
    cp $05
    ret nc

    ld a, $01
    ld [$cb82], a
    ret


Jump_001_44ef:
    ld a, [$cb84]
    or a
    jp nz, Jump_001_466d

    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld a, [$b88c]
    or a
    jr nz, jr_001_4526

    ld de, $0004
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0004
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

Call_001_4526:
jr_001_4526:
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4549

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_4956

    ld a, [$cb32]
    and $01
    jp z, Jump_001_4970

    ret


jr_001_4549:
    call Call_001_65c0
    ret


Jump_001_454d:
    ld a, [$cb84]
    or a
    jp nz, Jump_001_466d

    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld a, [$b88c]
    or a
    jr nz, jr_001_4584

    ld de, $00fc
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $00fc
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

Call_001_4584:
jr_001_4584:
    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_45a7

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_4956

    ld a, [$cb32]
    and $01
    jp z, Jump_001_4970

    ret


jr_001_45a7:
    call Call_001_6854
    call Call_001_661c
    ret


Jump_001_45ae:
    ld a, [$cb84]
    or a
    jp nz, Jump_001_466d

    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld a, [$b88c]
    or a
    jr nz, jr_001_45e5

    ld de, $fc00
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $fc00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

Call_001_45e5:
jr_001_45e5:
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4608

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_498a

    ld a, [$cb32]
    and $01
    jp z, Jump_001_49a4

    ret


jr_001_4608:
    call Call_001_6920
    call Call_001_6678
    ret


Jump_001_460f:
    ld a, [$cb84]
    or a
    jp nz, Jump_001_466d

    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    ld a, [$b88c]
    or a
    jr nz, jr_001_4646

    ld de, $0400
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0400
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

Call_001_4646:
jr_001_4646:
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4669

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_498a

    ld a, [$cb32]
    and $01
    jp z, Jump_001_49a4

    ret


jr_001_4669:
    call Call_001_66ea
    ret


Call_001_466d:
Jump_001_466d:
    ld a, [$c603]
    and $01
    jr z, jr_001_4680

    ld a, [$c605]
    cp $08
    jr nz, jr_001_4680

    ld a, $34
    call Call_000_23d8

jr_001_4680:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_001_469a

    ldh a, [$ff8a]
    and $20
    jr nz, jr_001_469e

    ldh a, [$ff8a]
    and $10
    jr nz, jr_001_46a2

    ldh a, [$ff8a]
    and $40
    jr nz, jr_001_46a6

    jr jr_001_46b6

jr_001_469a:
    ld a, $00
    jr jr_001_46a8

jr_001_469e:
    ld a, $01
    jr jr_001_46a8

jr_001_46a2:
    ld a, $02
    jr jr_001_46a8

jr_001_46a6:
    ld a, $03

jr_001_46a8:
    ld hl, $c60d
    ld [hl], a
    xor a
    ld [$cb30], a
    ld [$cb32], a
    ld [$cb34], a

jr_001_46b6:
    ld a, [$c60d]
    cp $00
    jp z, Jump_001_476d

    cp $01
    jp z, Jump_001_480f

    cp $02
    jp z, Jump_001_48b4

    ld a, [GrabbingDog3?]
    or a
    jp nz, Jump_001_454d

    ld a, $02
    call Call_000_166a
    ld de, $00fc
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $00fc
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4753

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_4956

    ld a, [$cb32]
    and $01
    jp z, Jump_001_4970

    ld a, [$cb33]
    cp $01
    jr z, jr_001_4718

    cp $0f
    jr z, jr_001_4718

    ret


jr_001_4718:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_6815
    ld a, [$cb38]
    and $01
    ret nz

    ld d, $00
    ld e, $d8
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld d, $00
    ld e, $e0
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld a, $04
    call Call_000_166a
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_23d8
    ret


jr_001_4753:
    call Call_001_6854
    call Call_001_661c
    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4769

    ret


jr_001_4769:
    call Call_001_661c
    ret


Jump_001_476d:
    ld a, [GrabbingDog3?]
    or a
    jp nz, Jump_001_44ef

    ld a, $02
    call Call_000_166a
    ld de, $0004
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0004
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_47f8

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_4956

    ld a, [$cb32]
    and $01
    jp z, Jump_001_4970

    ld a, [$cb33]
    cp $01
    jr z, jr_001_47bd

    cp $0f
    jr z, jr_001_47bd

    ret


jr_001_47bd:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_681e
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $00
    ld e, $28
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld d, $00
    ld e, $20
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    ld a, $04
    call Call_000_166a
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_23d8
    ret


jr_001_47f8:
    call Call_001_65c0
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_480b

    ret


jr_001_480b:
    call Call_001_65c0
    ret


Jump_001_480f:
    ld a, [GrabbingDog3?]
    or a
    jp nz, Jump_001_45ae

    ld a, $02
    call Call_000_166a
    ld de, $fc00
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $fc00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_489a

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_498a

    ld a, [$cb32]
    and $01
    jp z, Jump_001_49a4

    ld a, [$cb33]
    cp $01
    jr z, jr_001_485f

    cp $0f
    jr z, jr_001_485f

    ret


jr_001_485f:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_6827
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $d8
    ld e, $00
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld d, $e0
    ld e, $00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    ld a, $04
    call Call_000_166a
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_23d8
    ret


jr_001_489a:
    call Call_001_6920
    call Call_001_6678
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_48b0

    ret


jr_001_48b0:
    call Call_001_6678
    ret


Jump_001_48b4:
    ld a, [GrabbingDog3?]
    or a
    jp nz, Jump_001_460f

    ld a, $02
    call Call_000_166a
    ld de, $0400
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld de, $0400
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_493f

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_001_498a

    ld a, [$cb32]
    and $01
    jp z, Jump_001_49a4

    ld a, [$cb33]
    cp $01
    jr z, jr_001_4904

    cp $0f
    jr z, jr_001_4904

    ret


jr_001_4904:
    ld a, $12
    ldh [$ffa4], a
    call Call_001_6830
    ld a, [$cb38]
    and $01
    ret nz

    ld a, [$cb3a]
    and $01
    ret nz

    ld d, $28
    ld e, $00
    call Call_001_4464
    ld a, [$cb82]
    or a
    ret nz

    ld d, $20
    ld e, $00
    call Call_000_19ac
    ld a, [$cb89]
    or a
    ret nz

    ld a, $04
    call Call_000_166a
    ld a, $24
    ld [$c90d], a
    ld a, $33
    call Call_000_23d8
    ret


jr_001_493f:
    call Call_001_66ea
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_001_4952

    ret


jr_001_4952:
    call Call_001_66ea
    ret


Jump_001_4956:
    ld a, [$cb33]
    cp $0f
    jr z, jr_001_4963

    ld a, [$cb34]
    and $01
    ret nz

jr_001_4963:
    call Call_000_151d
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_6678
    ret


Jump_001_4970:
    ld a, [$cb33]
    cp $0f
    jr z, jr_001_497d

    ld a, [$cb34]
    and $01
    ret nz

jr_001_497d:
    call Call_000_1526
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_66ea
    ret


Jump_001_498a:
    ld a, [$cb33]
    cp $0f
    jr z, jr_001_4997

    ld a, [$cb34]
    and $01
    ret nz

jr_001_4997:
    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_661c
    ret


Jump_001_49a4:
    ld a, [$cb33]
    cp $0f
    jr z, jr_001_49b1

    ld a, [$cb34]
    and $01
    ret nz

jr_001_49b1:
    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_001_65c0
    ret


Call_001_49be:
    ld a, [$c90d]
    or a
    ret z

    ld a, [$c90d]
    dec a
    ld [$c90d], a
    ld a, [$c90d]
    ld b, a
    ld a, $23
    sub b
    ld hl, $4a19
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_001_4a17

    ld b, a
    ld a, [$c60d]
    cp $00
    jp z, Jump_001_49fb

    cp $01
    jp z, Jump_001_4a05

    cp $02
    jp z, Jump_001_4a0f

jr_001_49f1:
    push bc
    call Call_001_661c
    pop bc
    dec b
    jr nz, jr_001_49f1

    jr jr_001_4a17

Jump_001_49fb:
jr_001_49fb:
    push bc
    call Call_001_65c0
    pop bc
    dec b
    jr nz, jr_001_49fb

    jr jr_001_4a17

Jump_001_4a05:
jr_001_4a05:
    push bc
    call Call_001_6678
    pop bc
    dec b
    jr nz, jr_001_4a05

    jr jr_001_4a17

Jump_001_4a0f:
jr_001_4a0f:
    push bc
    call Call_001_66ea
    pop bc
    dec b
    jr nz, jr_001_4a0f

jr_001_4a17:
    pop hl
    ret


    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102

Jump_001_4a3d:
    ld a, [GrabbingDog3?]
    or a
    ret nz

    ld a, [$b8ea]
    cp $01
    ret z

    call Call_001_4a65
    ld a, $01
    ld [$cb84], a
    xor a
    ld [$cb82], a
    ld a, $10
    ld [$c912], a
    ld [$cb86], a
    ld a, [$c60d]
    add $0c
    call Call_000_152f
    ret


Call_001_4a65:
    ld a, [$c60d]
    cp $00
    jr z, jr_001_4ac1

    cp $01
    jp z, Jump_001_4b0c

    cp $02
    jp z, Jump_001_4b55

    ld hl, PlayerOrCameraYPosition
    ld bc, $0015
    call Call_000_0a27
    call Call_001_6815
    ld hl, PlayerOrCameraYPosition
    ld bc, $ffeb
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_001_6815
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ret


jr_001_4ac1:
    ld hl, PlayerOrCameraYPosition
    ld bc, $ffec
    call Call_000_0a27
    call Call_001_681e
    ld hl, PlayerOrCameraYPosition
    ld bc, $0014
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_001_681e
    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jp nz, Jump_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ret


Jump_001_4b0c:
    ld hl, CameraXPosition
    ld bc, $0014
    call Call_000_0a27
    call Call_001_6827
    ld hl, CameraXPosition
    ld bc, $ffec
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_001_6827
    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4b9c

    ld a, [$cb3a]
    and $01
    jp nz, Jump_001_4b9c

    ret


Jump_001_4b55:
    ld hl, CameraXPosition
    ld bc, $ffec
    call Call_000_0a27
    call Call_001_6830
    ld hl, CameraXPosition
    ld bc, $0014
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4b9c

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4b9c

    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_001_6830
    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb38]
    and $01
    jr nz, jr_001_4b9c

    ld a, [$cb3a]
    and $01
    jr nz, jr_001_4b9c

    ret


Jump_001_4b9c:
jr_001_4b9c:
    pop hl
    ret


Jump_001_4b9e:
    ld a, [$c60d]
    cp $01
    jr z, jr_001_4bb5

    cp $02
    jp z, Jump_001_4bb5

    cp $00
    jp z, Jump_001_4cc8

    cp $03
    jp z, Jump_001_4dd6

    ret


Jump_001_4bb5:
jr_001_4bb5:
    ld d, $00
    ld e, $18
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4c41

    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4c41

    ld hl, PlayerOrCameraYPosition
    ld bc, $0010
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff0
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4c41

    ld hl, PlayerOrCameraYPosition
    ld bc, $0018
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $ffe8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4c41

    ld a, [$c60d]
    ld [$c78d], a
    add $00
    call Call_000_160f
    ld a, $00
    ld [$c60d], a
    jp Jump_001_4ee2


jr_001_4c41:
    ld d, $00
    ld e, $e8
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    ret nz

    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, PlayerOrCameraYPosition
    ld bc, $fff0
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $0010
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, PlayerOrCameraYPosition
    ld bc, $ffe8
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $0018
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, $00
    ld [$c78d], a
    add $00
    call Call_000_160f
    ld a, $03
    ld [$c60d], a
    jp Jump_001_4ee2


Jump_001_4cc8:
    ld d, $18
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4d51

    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4d51

    ld hl, CameraXPosition
    ld bc, $0010
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff0
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4d51

    ld hl, CameraXPosition
    ld bc, $0018
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $ffe8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4d51

    ld a, $02
    ld [$c60d], a
    ld [$c78d], a
    add $00
    call Call_000_160f
    jp Jump_001_4ee2


jr_001_4d51:
    ld d, $e8
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    ret nz

    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $fff0
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0010
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $ffe8
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0018
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, $01
    ld [$c60d], a
    ld [$c78d], a
    add $00
    call Call_000_160f
    jp Jump_001_4ee2


Jump_001_4dd6:
    ld d, $e8
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4e5f

    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4e5f

    ld hl, CameraXPosition
    ld bc, $fff0
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0010
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4e5f

    ld hl, CameraXPosition
    ld bc, $ffe8
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0018
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr nz, jr_001_4e5f

    ld a, $01
    ld [$c60d], a
    ld [$c78d], a
    add $00
    call Call_000_160f
    jp Jump_001_4ee2


jr_001_4e5f:
    ld d, $18
    ld e, $00
    xor a
    ld [$cb84], a
    call Call_000_19ac
    ld a, $01
    ld [$cb84], a
    ld a, [$cb89]
    or a
    jr nz, jr_001_4e5f

    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $0010
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff0
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $0018
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $ffe8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, $02
    ld [$c60d], a
    ld [$c78d], a
    add $00
    call Call_000_160f

Jump_001_4ee2:
    xor a
    ld [$cb84], a
    ld [$cb82], a
    ld a, $01
    ld [$c780], a
    xor a
    ld [$c78c], a
    ld [$c792], a
    ld a, $40
    ld [$c791], a
    ld a, [CameraXPosition]
    ld [$c786], a
    ld a, [$c607]
    ld [$c787], a
    ld a, [PlayerOrCameraYPosition]
    ld [$c788], a
    ld a, [$c609]
    ld [$c789], a
    ld a, $18
    ld [$cb85], a
    ld [$c912], a
    ld a, [$c60d]
    add $68
    call Call_000_152f
    pop hl
    ret


Jump_001_4f24:
    ld a, $01
    ld [GrabbingDog3?], a
    xor a
    ld [GrabbingDog?], a
    ld [$cb89], a
    ret


Jump_001_4f31:
    ld a, [$c60d]
    cp $01
    jr z, jr_001_4f48

    cp $02
    jp z, Jump_001_4fe0

    cp $00
    jp z, Jump_001_513d

    cp $03
    jp z, Jump_001_506e

    ret


jr_001_4f48:
    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $fff2
    call Call_000_0a27
    call Call_000_151d
    ld hl, CameraXPosition
    ld bc, $000e
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$c60d]
    ld [$c7ad], a
    add $00
    call Call_000_1634
    ld a, [CameraXPosition]
    sub $10
    ld [$c7a6], a
    ld a, [$c607]
    sbc $00
    ld [$c7a7], a
    ld a, [PlayerOrCameraYPosition]
    ld [$c7a8], a
    ld a, [$c609]
    ld [$c7a9], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5218
    ld a, $01
    ld [GrabbingDog?], a
    xor a
    ld [GrabbingDog3?], a
    ld a, [$b8db]
    cp $00
    jp z, Jump_001_4fd6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ret


Jump_001_4fd6:
    ld a, [$c7ad]
    ld b, a
    add $00
    call Call_000_164f
    ret


Jump_001_4fe0:
    ld hl, CameraXPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld hl, CameraXPosition
    ld bc, $000e
    call Call_000_0a27
    call Call_000_1526
    ld hl, CameraXPosition
    ld bc, $fff2
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$c60d]
    ld [$c7ad], a
    add $00
    call Call_000_1634
    ld a, [CameraXPosition]
    add $10
    ld [$c7a6], a
    ld a, [$c607]
    adc $00
    ld [$c7a7], a
    ld a, [PlayerOrCameraYPosition]
    ld [$c7a8], a
    ld a, [$c609]
    ld [$c7a9], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5218
    ld a, $01
    ld [GrabbingDog?], a
    xor a
    ld [GrabbingDog3?], a
    ld a, [$b8db]
    cp $00
    jp z, Jump_001_4fd6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ret


Jump_001_506e:
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $02
    ret nz

    ld hl, PlayerOrCameraYPosition
    ld bc, $fff2
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $000e
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $02
    ret nz

    ld hl, PlayerOrCameraYPosition
    ld bc, $ffe8
    call Call_000_0a27
    call Call_000_1514
    ld hl, PlayerOrCameraYPosition
    ld bc, $0018
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $02
    ret nz

    ld a, [$c60d]
    ld [$c7ad], a
    add $00
    call Call_000_1634
    ld a, [PlayerOrCameraYPosition]
    sub $18
    ld [$c7a8], a
    ld a, [$c609]
    sbc $00
    ld [$c7a9], a
    ld a, [CameraXPosition]
    ld [$c7a6], a
    ld a, [$c607]
    ld [$c7a7], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5218
    ld a, $01
    ld [GrabbingDog?], a
    xor a
    ld [GrabbingDog3?], a
    ld a, [$b8db]
    cp $00
    jp z, Jump_001_4fd6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ret


Jump_001_513d:
    ld hl, PlayerOrCameraYPosition
    ld bc, $0004
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $fffc
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_516c

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_516c

    ret


jr_001_516c:
    ld hl, PlayerOrCameraYPosition
    ld bc, $0008
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff8
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_519b

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_519b

    ret


jr_001_519b:
    ld hl, PlayerOrCameraYPosition
    ld bc, $000e
    call Call_000_0a27
    call Call_000_150b
    ld hl, PlayerOrCameraYPosition
    ld bc, $fff2
    call Call_000_0a27
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    ret nz

    ld a, [$cb35]
    cp $d9
    jr nz, jr_001_51ca

    ld a, [$cb36]
    cp $3c
    jr nz, jr_001_51ca

    ret


jr_001_51ca:
    ld a, [$c60d]
    ld [$c7ad], a
    add $00
    call Call_000_1634
    ld a, [PlayerOrCameraYPosition]
    add $10
    ld [$c7a8], a
    ld a, [$c609]
    adc $00
    ld [$c7a9], a
    ld a, [CameraXPosition]
    ld [$c7a6], a
    ld a, [$c607]
    ld [$c7a7], a
    ld a, $3c
    ld [$c7b1], a
    xor a
    ld [$c7b2], a
    call Call_001_5218
    ld a, $01
    ld [GrabbingDog?], a
    xor a
    ld [GrabbingDog3?], a
    ld a, [$b8db]
    cp $00
    jp z, Jump_001_4fd6

    ld a, [$c7ad]
    ld b, a
    add $20
    call Call_000_164f
    ret


Call_001_5218:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_001_5231:
    ld a, [$cb4a]
    or a
    jr nz, jr_001_5253

    ld a, [$cb82]
    or a
    jp nz, Jump_001_4a3d

    ld a, [$cb84]
    or a
    jp nz, Jump_001_4b9e

    ld a, [$cb89]
    or a
    jp nz, Jump_001_4f24

    ld a, [GrabbingDog3?]
    or a
    jp nz, Jump_001_4f31

jr_001_5253:
    ld a, [$b8fb]
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_5ddd

    ld a, [wMapIndex]
    cp $02
    ret z

    ld a, [$cb4a]
    or a
    jp nz, Jump_001_55a1

    ld a, [$c90e]
    or a
    ret z

    ld a, [$cb33]
    cp $6a
    jr c, jr_001_528c

    cp $70
    jr nc, jr_001_528c

    ld a, [$cb34]
    cp $81
    jr nz, jr_001_528c

    jp Jump_001_5423


jr_001_528c:
    ld a, [$cb33]
    cp $02
    jr nz, jr_001_52a6

    ld a, $01
    ld [$cb4a], a
    ld a, $18
    call $16e3
    xor a
    ld [$c90e], a
    ldh [$ffa4], a
    jp Jump_001_5376


jr_001_52a6:
    cp $03
    jr nz, jr_001_52ba

    ld a, $02
    ld [$cb4a], a
    ld a, $0f
    call $16e3
    xor a
    ldh [$ffa4], a
    jp Jump_001_5376


jr_001_52ba:
    cp $01
    jr nz, jr_001_52ce

    ld a, $03
    ld [$cb4a], a
    ld a, $17
    call $16e3
    xor a
    ldh [$ffa4], a
    jp Jump_001_5376


jr_001_52ce:
    ld a, [$cb34]
    and $40
    ret z

    ld a, [$cb33]
    cp $60
    jr z, jr_001_52f8

    cp $88
    jr z, jr_001_5308

    cp $98
    jr z, jr_001_5318

    cp $ac
    jr z, jr_001_5328

    cp $b8
    jr z, jr_001_5338

    cp $cc
    jr z, jr_001_5348

    cp $dc
    jr z, jr_001_5358

    cp $f0
    jr z, jr_001_5368

    ret


jr_001_52f8:
    ld a, $10
    ld [$cb4a], a
    ld a, $1b
    call $16e3
    ld a, $02
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5308:
    ld a, $11
    ld [$cb4a], a
    ld a, $1a
    call $16e3
    ld a, $04
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5318:
    ld a, $12
    ld [$cb4a], a
    ld a, $1f
    call $16e3
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5328:
    ld a, $13
    ld [$cb4a], a
    ld a, $21
    call $16e3
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5338:
    ld a, $14
    ld [$cb4a], a
    ld a, $6a
    call $16e3
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5348:
    ld a, $15
    ld [$cb4a], a
    ld a, $6b
    call $16e3
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5358:
    ld a, $16
    ld [$cb4a], a
    ld a, $6c
    call $16e3
    ld a, $01
    ldh [$ffa4], a
    jr jr_001_5376

jr_001_5368:
    ld a, $17
    ld [$cb4a], a
    ld a, $69
    call $16e3
    ld a, $03
    ldh [$ffa4], a

Jump_001_5376:
jr_001_5376:
    ld a, $35
    call Call_000_23d8
    ldh a, [$ffa4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5456
    add hl, bc
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    ldh [$ffa5], a
    ld a, [hl+]
    ldh [$ffa6], a
    ld a, [hl+]
    ldh [$ffa7], a
    ld a, [hl+]
    ldh [$ffa8], a
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [$cb35]
    ld h, a
    ld a, [$cb36]
    ld l, a
    ldh a, [$ffa4]
    ld [hl+], a
    ldh a, [$ffa5]
    ld [hl+], a
    ld a, [$c60d]
    cp $00
    jr nz, jr_001_53bd

    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $04
    call Call_000_1960
    jr jr_001_53f8

jr_001_53bd:
    cp $01
    jr nz, jr_001_53d4

    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $ec
    call Call_000_1960
    jr jr_001_53f8

jr_001_53d4:
    cp $02
    jr nz, jr_001_53eb

    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld b, $0c
    call Call_000_1960
    jr jr_001_53f8

jr_001_53eb:
    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld c, $e8
    call Call_000_1960

jr_001_53f8:
    call Call_000_0d2b
    ldh a, [$ffa6]
    ld [hl+], a
    call Call_000_0d2b
    ldh a, [$ffa7]
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_0d2b
    ldh a, [$ffa8]
    ld [hl+], a
    call Call_000_0d2b
    ldh a, [$ffa9]
    ld [hl], a
    ld a, $03
    call Call_000_166a
    ld a, $1a
    ld [$c912], a
    ret


Jump_001_5423:
    ld a, [$b938]
    ld b, a
    ld a, [$b939]
    or b
    ret z

    ld a, $03
    ld [$cb4a], a
    ld a, $17
    call $16e3
    xor a
    ld [$c90e], a
    ld a, $03
    call Call_000_166a
    ld a, $1a
    ld [$c912], a
    ld hl, $b938
    ld bc, $fffe
    call Call_000_0a27
    call Call_000_0fe5
    ld a, $35
    call Call_000_23d8
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1000
    db $10
    db $10
    stop
    nop
    ld e, h
    ld b, c
    daa
    jr z, jr_001_54a2

    jr c, jr_001_546d

jr_001_546d:
    nop
    db $ec
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop
    add d
    ld b, c
    dec l
    ld l, $3d
    ld a, $00
    nop

Call_001_547e:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    ld a, [GrabbingDog3?]
    or a
    ret nz

    ld a, [$c90e]
    or a
    ret z

    ld a, [TimePaused]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$cb34]
    cp $81
    ret nz

jr_001_54a2:
    ld a, [$cb33]
    cp $41
    jr z, jr_001_54bf

    cp $42
    jr z, jr_001_54ca

    cp $43
    jr z, jr_001_54d5

    cp $44
    jr z, jr_001_54e0

    cp $45
    jr z, jr_001_54eb

    cp $d6
    jp z, Jump_001_5546

    ret


jr_001_54bf:
    ld a, $19
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_001_54ca:
    ld a, $18
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_001_54d5:
    ld a, $1a
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_001_54e0:
    ld a, $1b
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_001_54eb:
    ld a, [$b890]
    cp $01
    jr z, jr_001_5502

    ld a, [$c800]
    or a
    ret nz

    ld a, $1c
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_001_5502:
    xor a
    ld [$b890], a
    ld a, $32
    call Call_000_153c
    ld a, $02
    ld [$c80d], a
    ld a, [CameraXPosition]
    sub $60
    ld [$c806], a
    ld a, [$c607]
    sbc $00
    ld [$c807], a
    ld a, [PlayerOrCameraYPosition]
    ld [$c808], a
    ld a, [$c609]
    sbc $00
    ld [$c809], a
    ld a, $01
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [$c912], a
    ld a, $00
    ld [$c813], a
    ret


Jump_001_5546:
    ld a, [$b891]
    or a
    ret z

    xor a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, $1a
    call Call_000_153c
    ld a, $02
    ld [$c80d], a
    ld a, [CameraXPosition]
    sub $60
    ld [$c806], a
    ld a, [$c607]
    sbc $00
    ld [$c807], a
    ld a, [PlayerOrCameraYPosition]
    ld [$c808], a
    ld a, [$c609]
    sbc $00
    ld [$c809], a
    ld a, $02
    ld [$c810], a
    ld a, $01
    ld [$c80c], a
    ld a, $40
    ld [$c811], a
    ld [$c912], a
    ld a, $00
    ld [$c813], a
    ld a, $0a
    call Call_000_0fb9
    ret


Jump_001_55a1:
    call Call_001_55a5
    ret


Call_001_55a5:
    ld a, [$cb4a]
    rst $00
    reti


    ld d, l
    jp c, $f655

    ld d, l
    sbc h
    ld d, [hl]
    reti


    ld e, d
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    reti


    ld d, l
    push af
    ld e, d
    inc l
    ld e, e
    ld h, e
    ld e, e
    sbc d
    ld e, e
    pop de
    ld e, e
    ld [$3f5c], sp
    ld e, h
    halt
    ld e, h
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld a, $33
    call $16e3
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    call Call_001_6839
    call Call_001_5774
    call Call_001_5836
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_001_561c

    ld a, [de]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_561c:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    and $01
    ret nz

    ld a, [de]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    inc hl
    ld a, [hl-]
    cp $48
    jr nz, jr_001_5647

    ld a, [hl]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_5647:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    and $01
    ret nz

    ld a, [hl]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    dec hl
    push hl
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    pop hl
    xor a
    ld [$cb4a], a
    ld a, $03
    ld [hl+], a
    ld a, $01
    ld [hl], a
    call Call_001_6769
    call Call_000_199c
    call Call_000_0d2b
    ld a, $03
    ld [hl+], a
    ld a, $04
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ld a, $13
    ld [hl+], a
    ld a, $14
    ld [hl], a
    xor a
    ld [$c620], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    call Call_001_6839
    call Call_001_5774
    call Call_001_5836
    inc de
    ld a, [de]
    dec de
    cp $48
    jr nz, jr_001_56c2

    ld a, [de]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_56c2:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    jr nz, jr_001_56d6

    ld a, b
    cp $6a
    jr c, jr_001_56d6

    cp $70
    jr nc, jr_001_56d6

    jp Jump_001_5753


jr_001_56d6:
    ld a, [de]
    and $01
    ret nz

    ld a, [de]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    inc hl
    ld a, [hl-]
    cp $48
    jr nz, jr_001_56fe

    ld a, [hl]
    cp $44
    ret z

    cp $45
    ret z

    cp $46
    ret z

    cp $47
    ret z

    cp $48
    ret z

    cp $49
    ret z

jr_001_56fe:
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    and $01
    ret nz

    ld a, [hl]
    and $80
    ret nz

    ld a, b
    cp $10
    ret z

    cp $13
    ret z

    dec hl
    push hl
    ld a, $06
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    pop hl
    xor a
    ld [$cb4a], a
    ld a, $01
    ld [hl+], a
    ld a, $01
    ld [hl], a
    call Call_001_6769
    call Call_000_199c
    call Call_000_0d2b
    ld a, $20
    ld [hl+], a
    ld a, $40
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    ld a, $30
    ld [hl+], a
    ld a, $50
    ld [hl], a
    xor a
    ld [$c620], a
    ld a, $36
    call Call_000_23d8
    ret


Jump_001_5753:
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    ld hl, $b938
    ld bc, $0002
    call Call_000_0a27
    call Call_000_0fe5
    ld a, $36
    call Call_000_23d8
    ret


Call_001_5774:
    ld a, [$c780]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    push hl
    push de
    ld bc, $0012
    ld de, $0000
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_001_58fb
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_5834

    ret


Jump_001_5834:
    pop hl
    ret


Call_001_5836:
    ld a, [GrabbingDog?]
    or a
    ret z

    push hl
    push de
    ld bc, $0000
    ld de, $0000
    call Call_001_5917
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    push hl
    push de
    ld bc, $0000
    ld de, $fff0
    call Call_001_5917
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    push hl
    push de
    ld bc, $0000
    ld de, $0010
    call Call_001_5917
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    push hl
    push de
    ld bc, $fff0
    ld de, $0000
    call Call_001_5917
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    push hl
    push de
    ld bc, $0010
    ld de, $0000
    call Call_001_5917
    pop de
    pop hl
    call Call_001_58d9
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    call Call_001_58ea
    ldh a, [$ffae]
    or a
    jp nz, Jump_001_58d7

    ret


Jump_001_58d7:
    pop hl
    ret


Call_001_58d9:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp l
    jr nz, jr_001_58e6

    ld a, b
    cp h
    jr nz, jr_001_58e6

    ret


jr_001_58e6:
    xor a
    ldh [$ffae], a
    ret


Call_001_58ea:
    ld a, $01
    ldh [$ffae], a
    ld a, c
    cp e
    jr nz, jr_001_58f7

    ld a, b
    cp d
    jr nz, jr_001_58f7

    ret


jr_001_58f7:
    xor a
    ldh [$ffae], a
    ret


Call_001_58fb:
    ld a, [$c786]
    ld l, a
    ld a, [$c787]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c788]
    ld l, a
    ld a, [$c789]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_001_5933
    ld b, h
    ld c, l
    ret


Call_001_5917:
    ld a, [$c7a6]
    ld l, a
    ld a, [$c7a7]
    ld h, a
    add hl, bc
    push hl
    ld a, [$c7a8]
    ld l, a
    ld a, [$c7a9]
    ld h, a
    add hl, de
    ld b, h
    ld c, l
    pop hl
    call Call_001_5933
    ld b, h
    ld c, l
    ret


Call_001_5933:
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


    ld a, [$c788]
    add $00
    ld l, a
    ld a, [$c789]
    adc $08
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
    ld a, [$c786]
    add $00
    ld l, a
    ld a, [$c787]
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
    ld b, h
    ld c, l
    ret


    ld a, [$c7a8]
    add $00
    ld l, a
    ld a, [$c7a9]
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
    ld a, [$c7a6]
    add $00
    ld l, a
    ld a, [$c7a7]
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
    ld b, h
    ld c, l
    ret


Call_001_5a2f:
    call Call_001_6839
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    cp $81
    ret nz

    ld a, b
    cp $20
    jr c, jr_001_5a44

    cp $24
    jr nc, jr_001_5a44

    jr jr_001_5a68

jr_001_5a44:
    cp $24
    jr c, jr_001_5a4e

    cp $2d
    jr nc, jr_001_5a4e

    jr jr_001_5a68

jr_001_5a4e:
    cp $2d
    jr c, jr_001_5a58

    cp $31
    jr nc, jr_001_5a58

    jr jr_001_5a68

jr_001_5a58:
    cp $31
    jr c, jr_001_5a62

    cp $35
    jr nc, jr_001_5a62

    jr jr_001_5a68

jr_001_5a62:
    cp $35
    ret c

    cp $39
    ret nc

jr_001_5a68:
    ld a, $36
    call Call_000_23d8
    ld a, $01
    ld [$cb80], a
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    ld a, $32
    call $16e3
    ld a, [$c60d]
    cp $00
    jr z, jr_001_5a8e

    cp $03
    jr z, jr_001_5a8e

    pop hl
    ret


jr_001_5a8e:
    ld hl, CameraXPosition
    ld bc, $000a
    call Call_000_0a27
    call Call_001_6839
    ld hl, CameraXPosition
    ld bc, $fff6
    call Call_000_0a27
    ld a, [de]
    cp $0e
    jr z, jr_001_5ac5

    ld hl, CameraXPosition
    ld bc, $fff6
    call Call_000_0a27
    call Call_001_6839
    ld hl, CameraXPosition
    ld bc, $000a
    call Call_000_0a27
    ld a, [de]
    cp $0e
    jr z, jr_001_5acf

    pop hl
    ret


    ret


jr_001_5ac5:
    ld a, [$c64a]
    sub $0a
    ld [$c64a], a
    pop hl
    ret


jr_001_5acf:
    ld a, [$c64a]
    add $0a
    ld [$c64a], a
    pop hl
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16e3
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $1e
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $1d
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $20
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $22
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $6e
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $6f
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $70
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


    call Call_001_5a2f
    ld a, $08
    ld [$c912], a
    ld a, $15
    call Call_000_166a
    call Call_001_6842
    ld a, [hl]
    cp $39
    jp z, Jump_001_5da9

    cp $3a
    jp z, Jump_001_5da9

    cp $3b
    jp z, Jump_001_5da9

    cp $3c
    jp z, Jump_001_5da9

    call Call_001_5d2b
    ld a, $6d
    call $16e3
    xor a
    ld [$cb4a], a
    ld a, $36
    call Call_000_23d8
    ret


Call_001_5cad:
    xor a
    ldh [$ffae], a
    ld a, [$c78d]
    cp $01
    jr z, jr_001_5cf3

    cp $02
    jr z, jr_001_5cf3

    ld a, [PlayerXPosition]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_5cca

    cpl
    inc a

jr_001_5cca:
    cp $0a
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_5ce4

    sub b
    bit 7, a
    jr z, jr_001_5cdf

    cpl
    inc a

jr_001_5cdf:
    cp $1c
    ret nc

    jr jr_001_5cee

jr_001_5ce4:
    sub b
    bit 7, a
    jr z, jr_001_5ceb

    cpl
    inc a

jr_001_5ceb:
    cp $08
    ret nc

jr_001_5cee:
    ld a, $01
    ldh [$ffae], a
    ret


jr_001_5cf3:
    ld a, [PlayerXPosition]
    add d
    ld b, a
    ld a, [$c78a]
    sub b
    bit 7, a
    jr z, jr_001_5d02

    cpl
    inc a

jr_001_5d02:
    cp $0f
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c78b]
    cp b
    jr nc, jr_001_5d1c

    sub b
    bit 7, a
    jr z, jr_001_5d17

    cpl
    inc a

jr_001_5d17:
    cp $1c
    ret nc

    jr jr_001_5cee

jr_001_5d1c:
    sub b
    bit 7, a
    jr z, jr_001_5d23

    cpl
    inc a

jr_001_5d23:
    cp $05
    ret nc

    ld a, $01
    ldh [$ffae], a
    ret


Call_001_5d2b:
    ld a, [$b8ea]
    cp $03
    ret nz

    ld a, [$c60d]
    cp $00
    jr z, jr_001_5d55

    cp $01
    jr z, jr_001_5d68

    cp $02
    jp z, Jump_001_5d7b

    ld a, [$cb82]
    or a
    jp nz, Jump_001_5d8b

    ld de, $00f0
    call Call_001_5cad
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5d8b


jr_001_5d55:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5d8b

    ld de, $0010
    call Call_001_5cad
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5d8b


jr_001_5d68:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5d8b

    ld de, $f000
    call Call_001_5cad
    ldh a, [$ffae]
    or a
    ret z

    jp Jump_001_5d8b


Jump_001_5d7b:
    ld a, [$cb82]
    or a
    jr nz, jr_001_5d8b

    ld de, $1000
    call Call_001_5cad
    ldh a, [$ffae]
    or a
    ret z

Jump_001_5d8b:
jr_001_5d8b:
    ld a, $36
    call Call_000_23d8
    ld a, $01
    ld [$cb80], a
    ld a, [sCurrentHour]
    cp $11
    jr nc, jr_001_5da7

    ld a, [$cb4a]
    call Call_000_1c81
    ld a, $36
    call Call_000_23d8

jr_001_5da7:
    pop hl
    ret


Jump_001_5da9:
    ld a, $36
    call Call_000_23d8
    ld a, $01
    ld [$cb80], a
    ld hl, $9800
    ld bc, $0400

jr_001_5db9:
    ld a, [hl+]
    cp $21
    jr z, jr_001_5dc3

    dec bc
    ld a, c
    or b
    jr nz, jr_001_5db9

jr_001_5dc3:
    ld a, $20
    ld [$cb7d], a
    ld a, l
    ld [$cb7e], a
    ld a, h
    ld [$cb7f], a
    ld a, [sCurrentHour]
    cp $11
    ret nc

    ld a, [$cb4a]
    call Call_000_1c81
    ret


Jump_001_5ddd:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $0b
    jp z, Jump_001_5e7c

    cp $0c
    jp z, Jump_001_5f3c

    cp $0d
    jp z, Jump_001_5f52

    cp $0e
    jp z, Jump_001_5fa9

    cp $13
    jp z, Jump_001_5ff3

    cp $14
    jp z, Jump_001_600d

    cp $16
    jp z, Jump_001_6039

    cp $15
    jp z, Jump_001_6090

    cp $09
    jp z, Jump_001_60da

    cp $0a
    jp z, Jump_001_60ea

    cp $08
    jp z, Jump_001_6167

    cp $00
    jp z, Jump_001_6177

    cp $52
    jp z, Jump_001_6177

    cp $01
    jp z, Jump_001_6177

    cp $02
    jp z, Jump_001_61b3

    cp $53
    jp z, Jump_001_61c3

    cp $54
    jp z, Jump_001_61d3

    cp $12
    jp z, Jump_001_6023

    cp $10
    jp z, Jump_001_620b

    cp $11
    jp z, Jump_001_620b

    cp $03
    jp z, Jump_001_624b

    cp $06
    jp z, Jump_001_6274

    cp $07
    jp z, Jump_001_629e

    cp $04
    jp z, Jump_001_62c8

    cp $05
    jp z, Jump_001_62f8

    cp $4e
    jp z, Jump_001_6322

    cp $4f
    jp z, Jump_001_634c

    cp $50
    jp z, Jump_001_6376

    cp $51
    jp z, Jump_001_63a0

    ret


Jump_001_5e7c:
    ld b, $02
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $06
    call Call_000_166a
    ld a, $34
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, [$c60d]
    call Call_001_63ca
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $02
    jr z, jr_001_5ee0

    ld a, [$cb42]
    and $40
    ret z

    ld a, [$cb41]
    ld b, a
    and $f0
    cp $49
    jr z, jr_001_5ee6

    cp $50
    jr z, jr_001_5eec

    cp $60
    jr z, jr_001_5eec

    cp $70
    jr z, jr_001_5ef6

    cp $80
    jr z, jr_001_5ef6

    cp $90
    jr z, jr_001_5f00

    cp $a0
    jr z, jr_001_5f0a

    cp $b0
    jr z, jr_001_5f14

    cp $c0
    jr z, jr_001_5f1e

    cp $d0
    jr z, jr_001_5f28

    cp $e0
    jr z, jr_001_5f32

    ret


jr_001_5ee0:
    ld a, $01
    ld [$cb45], a
    ret


jr_001_5ee6:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_5eec:
    ld a, b
    cp $54
    ret c

    ld a, $03
    ld [$cb45], a
    ret


jr_001_5ef6:
    ld a, b
    cp $76
    ret c

    ld a, $04
    ld [$cb45], a
    ret


jr_001_5f00:
    ld a, b
    cp $94
    ret c

    ld a, $05
    ld [$cb45], a
    ret


jr_001_5f0a:
    ld a, b
    cp $a6
    ret c

    ld a, $06
    ld [$cb45], a
    ret


jr_001_5f14:
    ld a, b
    cp $b4
    ret c

    ld a, $07
    ld [$cb45], a
    ret


jr_001_5f1e:
    ld a, b
    cp $c6
    ret c

    ld a, $08
    ld [$cb45], a
    ret


jr_001_5f28:
    ld a, b
    cp $d6
    ret c

    ld a, $09
    ld [$cb45], a
    ret


jr_001_5f32:
    ld a, b
    cp $e4
    ret c

    ld a, $0a
    ld [$cb45], a
    ret


Jump_001_5f3c:
    ld b, $02
    call Call_000_19f9
    ld a, $07
    call Call_000_166a
    ld a, $34
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ret


Jump_001_5f52:
    ld b, $02
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $08
    call Call_000_166a
    ld a, $34
    ld [$c912], a
    ld a, [$c60d]
    call Call_001_63ca
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_5f7d

    ld a, $01
    ld [$cb45], a
    ret


jr_001_5f7d:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_5f91

    cp $05
    jr z, jr_001_5f97

    cp $06
    jr z, jr_001_5f9d

    cp $07
    jr z, jr_001_5fa3

    ret


jr_001_5f91:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_5f97:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_5f9d:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_5fa3:
    ld a, $05
    ld [$cb45], a
    ret


Jump_001_5fa9:
    ld b, $02
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $09
    call Call_000_166a
    ld a, $34
    ld [$c912], a
    ld a, [$c60d]
    call Call_001_63ca
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_001_5fdb

    cp $09
    jr z, jr_001_5fe1

    cp $0a
    jr z, jr_001_5fe7

    cp $0b
    jr z, jr_001_5fed

    ret


jr_001_5fdb:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_5fe1:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_5fe7:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_5fed:
    ld a, $05
    ld [$cb45], a
    ret


Jump_001_5ff3:
    ld b, $03
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $84
    call Call_000_152f
    ld a, $50
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ret


Jump_001_600d:
    ld b, $03
    call Call_000_19f9
    ld a, $0d
    call Call_000_166a
    ld a, $44
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ret


Jump_001_6023:
    ld b, $03
    call Call_000_19f9
    ld a, $85
    call Call_000_152f
    ld a, $56
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ret


Jump_001_6039:
    ld b, $03
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $0f
    call Call_000_166a
    ld a, $3e
    ld [$c912], a
    ld a, [$c60d]
    call Call_001_63ca
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $03
    jr nz, jr_001_6064

    ld a, $01
    ld [$cb45], a
    ret


jr_001_6064:
    ld a, [$cb41]
    cp $04
    jr z, jr_001_6078

    cp $05
    jr z, jr_001_607e

    cp $06
    jr z, jr_001_6084

    cp $07
    jr z, jr_001_608a

    ret


jr_001_6078:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_607e:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_6084:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_608a:
    ld a, $05
    ld [$cb45], a
    ret


Jump_001_6090:
    ld b, $03
    call Call_000_19f9
    xor a
    ld [$cb45], a
    ld a, $0e
    call Call_000_166a
    ld a, $44
    ld [$c912], a
    ld a, [$c60d]
    call Call_001_63ca
    ld a, [$cb42]
    or a
    ret z

    ld a, [$cb41]
    cp $08
    jr z, jr_001_60c2

    cp $09
    jr z, jr_001_60c8

    cp $0a
    jr z, jr_001_60ce

    cp $0b
    jr z, jr_001_60d4

    ret


jr_001_60c2:
    ld a, $02
    ld [$cb45], a
    ret


jr_001_60c8:
    ld a, $03
    ld [$cb45], a
    ret


jr_001_60ce:
    ld a, $04
    ld [$cb45], a
    ret


jr_001_60d4:
    ld a, $05
    ld [$cb45], a
    ret


Jump_001_60da:
    ld b, $02
    call Call_000_19f9
    ld a, $0b
    call Call_000_166a
    ld a, $64
    ld [$c912], a
    ret


Jump_001_60ea:
    ld b, $02
    call Call_000_19f9
    ld a, $0c
    call Call_000_166a
    ld a, [$b908]
    or a
    jr z, jr_001_6101

    ld a, $56
    ld [$c912], a
    jr jr_001_6106

jr_001_6101:
    ld a, $10
    ld [$c912], a

jr_001_6106:
    ld a, [$c60d]
    call Call_000_191c
    ld a, [$c60d]
    cp $00
    jr z, jr_001_612b

    cp $01
    jr z, jr_001_613a

    cp $02
    jp z, Jump_001_6149

    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $ff80
    add hl, bc
    ld a, [hl]
    jr jr_001_6156

jr_001_612b:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0080
    add hl, bc
    ld a, [hl]
    jr jr_001_6156

jr_001_613a:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $fffe
    add hl, bc
    ld a, [hl]
    jr jr_001_6156

Jump_001_6149:
    ld a, [$cb48]
    ld h, a
    ld a, [$cb49]
    ld l, a
    ld bc, $0002
    add hl, bc
    ld a, [hl]

jr_001_6156:
    cp $20
    ret c

    cp $39
    ret nc

    ld a, $19
    call Call_000_166a
    ld a, $36
    ld [$c912], a
    ret


Jump_001_6167:
    ld b, $02
    call Call_000_19f9
    ld a, $14
    call Call_000_166a
    ld a, $32
    ld [$c912], a
    ret


Jump_001_6177:
    ld a, $17
    call Call_000_166a
    ld a, $40
    ld [$c912], a
    ld a, $5a
    call $16e3
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $00
    jr z, jr_001_61a3

    cp $01
    jr z, jr_001_61ab

    xor a
    ld [$b8b1], a
    call Call_001_62f2
    ret


jr_001_61a3:
    xor a
    ld [$b8ab], a
    call Call_001_62f2
    ret


jr_001_61ab:
    xor a
    ld [$b8b2], a
    call Call_001_62f2
    ret


Jump_001_61b3:
    ld b, $02
    call Call_000_19f9
    ld a, $0a
    call Call_000_166a
    ld a, $4c
    ld [$c912], a
    ret


Jump_001_61c3:
    ld b, $03
    call Call_000_19f9
    ld a, $16
    call Call_000_166a
    ld a, $35
    ld [$c912], a
    ret


Jump_001_61d3:
    ld b, $03
    call Call_000_19f9
    ld a, $63
    call Call_000_152f
    ld a, $69
    ld [$c912], a
    ld a, [$b88a]
    cp $03
    jr z, jr_001_61f5

    ld a, [$b89f]
    cp $03
    ret z

    ld a, $01
    ld [$b89f], a
    ret


jr_001_61f5:
    ld a, $02
    ld [$b89f], a
    ret


    ld b, $02
    call Call_000_19f9
    ld a, $63
    call Call_000_152f
    ld a, $60
    ld [$c912], a
    ret


Jump_001_620b:
    ld a, $18
    call Call_000_166a
    ld a, $36
    call Call_000_23d8
    ld a, $5a
    ld [$c912], a
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_001_623b

    ld a, [$b947]
    dec a
    ld [$b947], a
    ret nz

    xor a
    ld [$b8c1], a
    call Call_001_62f2
    ret


jr_001_623b:
    ld a, [$b946]
    dec a
    ld [$b946], a
    ret nz

    xor a
    ld [$b8c0], a
    call Call_001_62f2
    ret


Jump_001_624b:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    xor a
    ld [$cb74], a
    ld a, [$b8da]
    dec a
    ld [$b8da], a
    or a
    ret nz

    ld [$b8b4], a
    call Call_001_62f2
    ret


Jump_001_6274:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $01
    ld [$cb74], a
    ld a, [$b8d4]
    dec a
    ld [$b8d4], a
    or a
    ret nz

    ld [$b8b7], a
    call Call_001_62f2
    ret


Jump_001_629e:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $02
    ld [$cb74], a
    ld a, [$b8d5]
    dec a
    ld [$b8d5], a
    or a
    ret nz

    ld [$b8b8], a
    call Call_001_62f2
    ret


Jump_001_62c8:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $03
    ld [$cb74], a
    ld a, [$b8d2]
    dec a
    ld [$b8d2], a
    or a
    ret nz

    ld [$b8b5], a
    call Call_001_62f2
    ret


Call_001_62f2:
    ld a, $50
    ld [$cb8f], a
    ret


Jump_001_62f8:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $04
    ld [$cb74], a
    ld a, [$b8d3]
    dec a
    ld [$b8d3], a
    or a
    ret nz

    ld [$b8b6], a
    call Call_001_62f2
    ret


Jump_001_6322:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $05
    ld [$cb74], a
    ld a, [$b8d6]
    dec a
    ld [$b8d6], a
    or a
    ret nz

    ld [$b8b9], a
    call Call_001_62f2
    ret


Jump_001_634c:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $06
    ld [$cb74], a
    ld a, [$b8d7]
    dec a
    ld [$b8d7], a
    or a
    ret nz

    ld [$b8ba], a
    call Call_001_62f2
    ret


Jump_001_6376:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $07
    ld [$cb74], a
    ld a, [$b8d8]
    dec a
    ld [$b8d8], a
    or a
    ret nz

    ld [$b8bb], a
    call Call_001_62f2
    ret


Jump_001_63a0:
    ld b, $01
    call Call_000_19f9
    ld a, $3e
    call Call_000_152f
    ld a, $55
    ld [$c912], a
    ld a, [$c60d]
    call Call_000_191c
    ld a, $08
    ld [$cb74], a
    ld a, [$b8d9]
    dec a
    ld [$b8d9], a
    or a
    ret nz

    ld [$b8bc], a
    call Call_001_62f2
    ret


Call_001_63ca:
    ld a, [$c60d]
    cp $00
    jr z, jr_001_63df

    cp $01
    jp z, Jump_001_63e3

    cp $02
    jp z, Jump_001_63e7

    call Call_000_18f8
    ret


jr_001_63df:
    call Call_000_1901
    ret


Jump_001_63e3:
    call Call_000_190a
    ret


Jump_001_63e7:
    call Call_000_1913
    ret


    ld a, [$cb43]
    ld h, a
    ld a, [$cb44]
    ld l, a
    ld a, [$cb45]
    cp $01
    jr nz, jr_001_6400

    ld a, $00
    ld [hl+], a
    ld [hl+], a
    jr jr_001_6445

jr_001_6400:
    cp $02
    jr nz, jr_001_641d

jr_001_6404:
    push hl
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, [$b90c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_001_6445

jr_001_641d:
    cp $03
    jr nz, jr_001_6425

    dec hl
    dec hl
    jr jr_001_6404

jr_001_6425:
    cp $04
    jr nz, jr_001_6436

    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_001_6404

jr_001_6436:
    dec hl
    dec hl
    ld a, [$b90c]
    ld b, a
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr jr_001_6404

jr_001_6445:
    ld a, [$c60d]
    cp $00
    jr z, jr_001_648d

    cp $01
    jp z, Jump_001_64ae

    cp $02
    jp z, Jump_001_64d2

    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [PlayerOrCameraYPosition]
    and $0f
    cp $0c
    jr z, jr_001_647f

    or $10
    sub $0d
    cp $10
    jr z, jr_001_647f

    cp $11
    jr z, jr_001_647f

    cp $12
    jr z, jr_001_647f

    cp $09
    jr c, jr_001_6481

    sub $08
    jr jr_001_6481

jr_001_647f:
    ld a, $00

jr_001_6481:
    ld c, a
    ld a, $e8
    sub c
    ld c, a
    call Call_000_1960
    jp Jump_001_64f0


    ret


jr_001_648d:
    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [PlayerOrCameraYPosition]
    and $0f
    jr z, jr_001_64a4

    cp $01
    jr z, jr_001_64a4

    ld c, a
    ld a, $10
    sub c

jr_001_64a4:
    add $04
    ld c, a
    call Call_000_1960
    jp Jump_001_64f0


    ret


Jump_001_64ae:
    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [CameraXPosition]
    and $0f
    sub $08
    bit 7, a
    jr z, jr_001_64c7

    cpl
    inc a

jr_001_64c7:
    ld b, a
    ld a, $ec
    sub b
    ld b, a
    call Call_000_1960
    jr jr_001_64f0

    ret


Jump_001_64d2:
    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [CameraXPosition]
    and $0f
    ld b, a
    ld a, $08
    sub b
    add $0c
    ld b, a
    call Call_000_1960
    jr jr_001_64f0

    ret


Jump_001_64f0:
jr_001_64f0:
    ld a, [$cb45]
    cp $01
    jr nz, jr_001_6512

    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_001_6512:
    ld a, [$cb45]
    cp $02
    jr nz, jr_001_658c

Jump_001_6519:
    push hl
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_001_65b2
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    push hl
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_001_65b2
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, $40
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_001_65b2
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, $20
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_001_65b2
    call Call_000_199c
    call Call_000_0d2b
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


jr_001_658c:
    cp $03
    jr nz, jr_001_6595

    dec hl
    dec hl
    jp Jump_001_6519


jr_001_6595:
    cp $04
    jr nz, jr_001_65a4

    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_001_6519


jr_001_65a4:
    dec hl
    dec hl
    ld a, l
    sub $40
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jp Jump_001_6519


    ret


Call_001_65b2:
    push de
    ld a, l
    and $3f
    cp $20
    jr nz, jr_001_65be

    ld de, $0020
    add hl, de

jr_001_65be:
    pop de
    ret


Call_001_65c0:
    ld a, $05
    ld [$c611], a
    xor a
    ld [$c90e], a
    ld a, [$c609]
    cp $02
    jr nz, jr_001_65d6

    ld a, [PlayerOrCameraYPosition]
    cp $e8
    ret nc

jr_001_65d6:
    ld a, [$c609]
    cp $02
    jr nz, jr_001_65e4

    ld a, [PlayerOrCameraYPosition]
    cp $c0
    jr nc, jr_001_6615

jr_001_65e4:
    ld a, [$c609]
    cp $00
    jr nz, jr_001_65f2

    ld a, [PlayerOrCameraYPosition]
    cp $48
    jr c, jr_001_6615

jr_001_65f2:
    ld hl, $cb5b
    dec [hl]
    ld hl, CameraY
    inc [hl]
    ldh a, [CameraY]
    and $0f
    cp $00
    call z, Call_001_72e8

jr_001_6603:
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    inc hl
    ld a, l
    ld [PlayerOrCameraYPosition], a
    ld a, h
    ld [$c609], a
    ret


jr_001_6615:
    ld hl, $c60b
    inc [hl]
    jr jr_001_6603

    ret


Call_001_661c:
    ld a, $05
    ld [$c611], a
    xor a
    ld [$c90e], a
    ld a, [$c609]
    cp $00
    jr nz, jr_001_6632

    ld a, [PlayerOrCameraYPosition]
    cp $0e
    ret c

jr_001_6632:
    ld a, [$c609]
    cp $02
    jr nz, jr_001_6640

    ld a, [PlayerOrCameraYPosition]
    cp $c1
    jr nc, jr_001_6671

jr_001_6640:
    ld a, [$c609]
    cp $00
    jr nz, jr_001_664e

    ld a, [PlayerOrCameraYPosition]
    cp $49
    jr c, jr_001_6671

jr_001_664e:
    ld hl, $cb5b
    inc [hl]
    ld hl, CameraY
    dec [hl]
    ldh a, [CameraY]
    and $0f
    cp $0f
    call z, Call_001_7299

jr_001_665f:
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    dec hl
    ld a, l
    ld [PlayerOrCameraYPosition], a
    ld a, h
    ld [$c609], a
    ret


jr_001_6671:
    ld hl, $c60b
    dec [hl]
    jr jr_001_665f

    ret


Call_001_6678:
    ld a, $05
    ld [$c611], a
    xor a
    ld [$c90e], a
    ld a, [$c607]
    cp $00
    jr nz, jr_001_668e

    ld a, [CameraXPosition]
    cp $18
    ret c

jr_001_668e:
    ld a, [$b90b]
    or a
    jr z, jr_001_66a4

    ld a, [$c607]
    cp $03
    jr nz, jr_001_66b2

    ld a, [CameraXPosition]
    cp $b1
    jr nc, jr_001_66e3

    jr jr_001_66b2

jr_001_66a4:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_66b2

    ld a, [CameraXPosition]
    cp $c1
    jr nc, jr_001_66e3

jr_001_66b2:
    ld a, [$c607]
    cp $00
    jr nz, jr_001_66c0

    ld a, [CameraXPosition]
    cp $51
    jr c, jr_001_66e3

jr_001_66c0:
    ld hl, $cb5a
    inc [hl]
    ld hl, CameraX
    dec [hl]
    ldh a, [CameraX]
    and $0f
    cp $0f
    call z, Call_001_7337

jr_001_66d1:
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    dec hl
    ld a, l
    ld [CameraXPosition], a
    ld a, h
    ld [$c607], a
    ret


jr_001_66e3:
    ld hl, PlayerXPosition
    dec [hl]
    jr jr_001_66d1

    ret


Call_001_66ea:
    ld a, $05
    ld [$c611], a
    xor a
    ld [$c90e], a
    ld a, [$b90b]
    or a
    jr z, jr_001_6716

    ld a, [$c607]
    cp $03
    jr nz, jr_001_6706

    ld a, [CameraXPosition]
    cp $e8
    ret nc

jr_001_6706:
    ld a, [$c607]
    cp $03
    jr nz, jr_001_6731

    ld a, [CameraXPosition]
    cp $b0
    jr nc, jr_001_6762

    jr jr_001_6731

jr_001_6716:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_6723

    ld a, [CameraXPosition]
    cp $f8
    ret nc

jr_001_6723:
    ld a, [$c607]
    cp $02
    jr nz, jr_001_6731

    ld a, [CameraXPosition]
    cp $c0
    jr nc, jr_001_6762

jr_001_6731:
    ld a, [$c607]
    cp $00
    jr nz, jr_001_673f

    ld a, [CameraXPosition]
    cp $50
    jr c, jr_001_6762

jr_001_673f:
    ld hl, $cb5a
    dec [hl]
    ld hl, CameraX
    inc [hl]
    ldh a, [CameraX]
    and $0f
    cp $00
    call z, Call_001_738c

jr_001_6750:
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    inc hl
    ld a, l
    ld [CameraXPosition], a
    ld a, h
    ld [$c607], a
    ret


jr_001_6762:
    ld hl, PlayerXPosition
    inc [hl]
    jr jr_001_6750

    ret


Call_001_6769:
    ld a, [$c60d]
    cp $00
    jr nz, jr_001_6786

    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [PlayerOrCameraYPosition]
    dec a
    and $08
    cpl
    add $10
    ld c, a
    call Call_000_1960
    ret


jr_001_6786:
    cp $01
    jr nz, jr_001_67b7

    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [CameraXPosition]
    sub $08
    and $0f
    cp $00
    jr z, jr_001_67a9

    cp $0c
    jr nc, jr_001_67ad

    cp $04
    jr nc, jr_001_67b1

jr_001_67a9:
    ld b, $ec
    jr jr_001_67b3

jr_001_67ad:
    ld b, $dc
    jr jr_001_67b3

jr_001_67b1:
    ld b, $e4

jr_001_67b3:
    call Call_000_1960
    ret


jr_001_67b7:
    cp $02
    jr nz, jr_001_67e8

    ld a, [PlayerOrCameraYPosition]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [CameraXPosition]
    sub $08
    and $0f
    cp $00
    jr z, jr_001_67de

    cp $0c
    jr nc, jr_001_67de

    cp $04
    jr nc, jr_001_67e2

    ld b, $1c
    jr jr_001_67e4

jr_001_67de:
    ld b, $0c
    jr jr_001_67e4

jr_001_67e2:
    ld b, $14

jr_001_67e4:
    call Call_000_1960
    ret


jr_001_67e8:
    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [PlayerOrCameraYPosition]
    sub $0d
    and $0f
    cp $00
    jr z, jr_001_680f

    cp $0b
    jr nc, jr_001_6807

    cp $03
    jr nc, jr_001_680b

    ld c, $e8
    jr jr_001_6811

jr_001_6807:
    ld c, $d8
    jr jr_001_6811

jr_001_680b:
    ld c, $e0
    jr jr_001_6811

jr_001_680f:
    ld c, $e8

jr_001_6811:
    call Call_000_1960
    ret


Call_001_6815:
    ld hl, $598c
    ld a, $05
    call Call_000_1f96
    ret


Call_001_681e:
    ld hl, $5a2e
    ld a, $05
    call Call_000_1f96
    ret


Call_001_6827:
    ld hl, $5ad4
    ld a, $05
    call Call_000_1f96
    ret


Call_001_6830:
    ld hl, $5b7e
    ld a, $05
    call Call_000_1f96
    ret


Call_001_6839:
    ld hl, $5c28
    ld a, $05
    call Call_000_1f96
    ret


Call_001_6842:
    ld hl, $5e91
    ld a, $05
    call Call_000_1f96
    ret


Call_001_684b:
    ld hl, $512a
    ld a, $05
    call Call_000_1f96
    ret


Call_001_6854:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb2f]
    cp $3d
    jr nz, jr_001_6874

    ld a, [$cb31]
    cp $3d
    jr nz, jr_001_6874

    call Call_001_68c3
    pop hl
    ret


jr_001_6874:
    cp $3e
    jr nz, jr_001_6889

    ld a, [$cb31]
    cp $3e
    jr nz, jr_001_6889

    ld a, [GrabbingDog3?]
    or a
    ret nz

    call Call_001_68fb
    pop hl
    ret


jr_001_6889:
    cp $3f
    jr nz, jr_001_689e

    ld a, [$cb31]
    cp $3f
    jr nz, jr_001_689e

    ld a, [GrabbingDog3?]
    or a
    ret nz

    call Call_001_6906
    pop hl
    ret


jr_001_689e:
    ld a, [$cb30]
    and $40
    ret nz

    ld a, [$cb32]
    and $40
    ret nz

    ld a, [$cb2f]
    cp $40
    jr nz, jr_001_68c2

    ld a, [$cb31]
    cp $40
    jr nz, jr_001_68c2

    ld a, [GrabbingDog3?]
    or a
    ret nz

    call Call_001_6911
    pop hl
    ret


jr_001_68c2:
    ret


Call_001_68c3:
    ld a, $01
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ld a, [$b8e1]
    or a
    ret z

    ld a, [GrabbingDog3?]
    or a
    jr z, jr_001_68e2

    ld a, $00
    ld [$b8e1], a
    ret


jr_001_68e2:
    ld a, [$c7a6]
    ld [$b8e2], a
    ld a, [$c7a7]
    ld [$b8e3], a
    ld a, [$c7a8]
    ld [$b8e4], a
    ld a, [$c7a9]
    ld [$b8e5], a
    ret


Call_001_68fb:
    ld a, $02
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_001_6906:
    ld a, $03
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ret


Call_001_6911:
    ld a, $04
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ret


Call_001_6920:
    ld a, [$cb84]
    or a
    ret nz

    ld a, [GrabbingDog3?]
    or a
    ret nz

    ld a, [$cb4a]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb2f]
    cp $13
    ret nz

    ld a, [$cb30]
    cp $00
    ret nz

    ld a, $05
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    xor a
    ld [$c910], a
    ld [$cd2a], a
    ret


Call_001_6950:
    ld a, $01
    ld [$c7c0], a
    ld a, $0f
    ld [$c7c1], a
    ld a, $00
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
    call Call_000_2331
    ld a, $40
    call Call_000_23d8
    ret


Call_001_6985:
    ld a, $01
    ld [$c7c0], a
    ld a, $0f
    ld [$c7c1], a
    ld a, $01
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
    ld a, $48
    ld [$c7cb], a
    ret


Call_001_69b2:
    ld a, [TransitionRelated]
    or a
    ret nz

    ld a, [TransitionRelated2]
    or a
    ret nz

    ld a, [TimePaused]
    or a
    ret nz

    ld a, [$cb79]
    or a
    ret nz

    ld a, [$ba40]
    or a
    ret z

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, $3c
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ld a, $01
    ld [$b900], a
    ld a, [$b8ec]
    ld b, a
    ld a, $16
    add b
    call Call_000_3e80
    ld a, $f0
    ld [$cb79], a
    ret


Call_001_69f0:
    ld a, [$cb84]
    or a
    ret nz

    ld a, [GrabbingDog3?]
    or a
    ret nz

    ld a, [$cb4a]
    or a
    ret nz

    ld a, [TimePaused]
    or a
    ret nz

    ld a, [$c602]
    cp $20
    ret z

    cp $b5
    ret z

    cp $8e
    ret z

    cp $99
    jr c, jr_001_6a19

    cp $a1
    jr nc, jr_001_6a19

    ret


jr_001_6a19:
    ldh a, [$ff8a]
    or a
    jr z, jr_001_6a29

    xor a
    ld [$cb7c], a
    ld [$cb7a], a
    ld [$cb7b], a
    ret


jr_001_6a29:
    ld a, [$cb7a]
    add $01
    ld [$cb7a], a
    ld a, [$cb7b]
    adc $00
    ld [$cb7b], a
    cp $01
    ret nz

    ld a, [$cb7a]
    cp $ff
    ret nz

    call Call_001_6fe4
    xor a
    ld [$cb7a], a
    ld [$cb7b], a
    ld a, [$c60d]
    cp $00
    jr z, jr_001_6a77

    cp $01
    jr z, jr_001_6a93

    cp $02
    jr z, jr_001_6aaf

    ldh a, [$ff9c]
    and $01
    jr z, jr_001_6a6c

    ld a, $9f
    call Call_000_152f
    ld a, $e4
    ld [$cb7c], a
    ret


jr_001_6a6c:
    ld a, $a0
    call Call_000_152f
    ld a, $4e
    ld [$cb7c], a
    ret


jr_001_6a77:
    ldh a, [$ff9c]
    and $01
    jr z, jr_001_6a88

    ld a, $99
    call Call_000_152f
    ld a, $9f
    ld [$cb7c], a
    ret


jr_001_6a88:
    ld a, $9a
    call Call_000_152f
    ld a, $f8
    ld [$cb7c], a
    ret


jr_001_6a93:
    ldh a, [$ff9c]
    and $01
    jr z, jr_001_6aa4

    ld a, $9b
    call Call_000_152f
    ld a, $3e
    ld [$cb7c], a
    ret


jr_001_6aa4:
    ld a, $9c
    call Call_000_152f
    ld a, $e1
    ld [$cb7c], a
    ret


jr_001_6aaf:
    ldh a, [$ff9c]
    and $01
    jr z, jr_001_6ac0

    ld a, $9d
    call Call_000_152f
    ld a, $4e
    ld [$cb7c], a
    ret


jr_001_6ac0:
    ld a, $9e
    call Call_000_152f
    ld a, $4e
    ld [$cb7c], a
    ret


Call_001_6acb:
    ld a, [$cb79]
    or a
    ret z

    dec a
    ld [$cb79], a
    or a
    jr z, jr_001_6ae9

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [TransitionRelated2]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr nz, jr_001_6ae9

    ret


jr_001_6ae9:
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [TimePaused], a
    ld [$cb5f], a
    call Call_000_3e2a
    ld a, $06
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    ld a, $01
    ld [$c910], a
    call Call_001_41e7
    pop hl
    ret


Call_001_6b16:
    ld a, [sCurrentHour]
    cp $06
    jr c, jr_001_6b23

    ld a, [sCurrentHour]
    cp $12
    ret c

jr_001_6b23:
    ld a, $bd
    ld [PaletteRelated], a
    ret


Call_001_6b29:
    ld a, [GrabbingDog3?]
    or a
    jr nz, jr_001_6b59

    ld a, [$b8e1]
    or a
    jr z, jr_001_6b59

    ld a, [$b8e2]
    ld [$c7a6], a
    ld a, [$b8e3]
    ld [$c7a7], a
    ld a, [$b8e4]
    ld [$c7a8], a
    ld a, [$b8e5]
    ld [$c7a9], a
    ld a, $01
    ld [GrabbingDog?], a
    ld a, $05
    ld [$c7a1], a
    jr jr_001_6b5d

jr_001_6b59:
    xor a
    ld [GrabbingDog?], a

jr_001_6b5d:
    ld hl, $6bf5
    ld a, [$c910]
    sla a
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $c600
    ld b, $10
    call Call_000_210f
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld a, [$b891]
    or a
    jr z, jr_001_6bbc

    ld a, $22
    call Call_000_15f6
    ld a, $88
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $bc
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $04
    ld [$c770], a
    xor a
    ld [$c76c], a
    jr jr_001_6be4

jr_001_6bbc:
    ld a, [$b890]
    or a
    jr z, jr_001_6be4

    ld a, $1d
    call Call_000_15f6
    ld a, $89
    ld [$c766], a
    ld a, $01
    ld [$c767], a
    ld a, $25
    ld [$c768], a
    ld a, $01
    ld [$c769], a
    ld a, $03
    ld [$c770], a
    xor a
    ld [$c76c], a

jr_001_6be4:
    ld a, [$c910]
    cp $05
    jr z, jr_001_6bec

    ret


jr_001_6bec:
    ld a, $28
    ldh [CameraX], a
    ld a, $88
    ldh [CameraX], a
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0078], sp
    jr nc, jr_001_6c00

    ld d, b

jr_001_6c00:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0138], sp
    jr nc, jr_001_6c10

    ld d, b

jr_001_6c10:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$01c8], sp
    jr nc, jr_001_6c20

    ld d, b

jr_001_6c20:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0188], sp
    or b
    ld bc, $5850
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    jr nc, jr_001_6c40

    ld d, b

jr_001_6c40:
    ld e, b
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    nop
    ld [$0078], sp
    sub b
    ld bc, $5850
    nop
    ld [bc], a
    ld bc, $0100
    inc b
    ld [bc], a
    nop
    nop
    ld [$0060], sp
    sub b
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0004
    nop
    nop
    ld [$0100], sp
    jr nc, jr_001_6c70

    nop

jr_001_6c70:
    nop
    nop
    nop
    nop
    nop

Call_001_6c75:
    ld a, [$b8ea]
    or a
    ret z

    ld a, [$b88c]
    cp $01
    jr z, jr_001_6c9b

    ld hl, $6c65
    ld de, $c780
    ld b, $10
    call Call_000_210f
    ld a, [$c78d]
    ld b, a
    add $00
    call Call_000_160f
    ld a, $01
    ld [$c793], a
    ret


jr_001_6c9b:
    ld hl, $6c55
    ld de, $c780
    ld b, $10
    call Call_000_210f
    ld a, [$c78d]
    ld b, a
    add $00
    call Call_000_160f
    xor a
    ld [$c793], a
    ret


    ld bc, $020b
    nop
    nop
    ld [$0060], sp
    sub b
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $2100
    or h
    ld l, h
    ld de, $c800
    ld b, $10
    call Call_000_210f
    ret


Call_001_6cd0:
    ld hl, $9c00
    ld de, UD
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


UD::
    db $a0, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1, $a1
    db $a1, $a1, $a1, $a2, $f9, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8
    db $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a5, $f9, $a8, $a8, $a8, $a8, $a8, $a8, $a8
    db $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a5, $f9, $a8, $a8, $a8
    db $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a8, $a5
    db $a3, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b
    db $5b, $5b, $5b, $a4

UF::
    ld a, [$cb14]
    or a
    jr nz, jr_001_6d67

    ld a, [$cb15]
    or a
    jr nz, jr_001_6d76

    ld a, [$cb16]
    or a
    jr nz, jr_001_6d8a

    ld a, [$cb17]
    or a
    jr nz, jr_001_6da3

    ld a, [$cb18]
    or a
    jr nz, jr_001_6db1

    ld a, [$cb19]
    or a
    jr nz, jr_001_6dbf

    ret


jr_001_6d67:
    ld de, $c913
    ld hl, $8000
    xor a
    ld [$cb14], a
    ld c, $0a
    jp Jump_001_6e03


jr_001_6d76:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb15], a
    ld a, [$c820]
    or a
    jr nz, jr_001_6d9f

    ld c, $04
    jr jr_001_6dcf

jr_001_6d8a:
    ld de, $c9f3
    ld hl, $80e0
    xor a
    ld [$cb16], a
    ld a, [wMapIndex]
    cp $03
    jr nz, jr_001_6dbb

    cp $04
    jr nz, jr_001_6dbb

jr_001_6d9f:
    ld c, $06
    jr jr_001_6dcf

jr_001_6da3:
    ld de, $ca33
    ld hl, $8120
    xor a
    ld [$cb17], a
    ld c, $08
    jr jr_001_6dcf

jr_001_6db1:
    ld de, $c9b3
    ld hl, $80a0
    xor a
    ld [$cb18], a

jr_001_6dbb:
    ld c, $0a
    jr jr_001_6dcf

jr_001_6dbf:
    ld de, $cab3
    ld hl, $81a0
    xor a
    ld [$cb19], a
    ld c, $02
    jr jr_001_6dcf

    ld c, $08

jr_001_6dcf:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_001_6dcf

    ret


Jump_001_6e03:
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    ret


Call_001_6fe4:
    ld a, [wMapIndex]
    cp $01
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$b8a0]
    cp $01
    ret z

    ld a, [$b8a0]
    cp $02
    ret z

    ld a, [$b890]
    or a
    ret nz

    ld a, [$b891]
    or a
    ret nz

    ldh a, [$ff9c]
    and $0f
    cp $0f
    jr z, jr_001_7018

    cp $0e
    jr z, jr_001_705b

    cp $0d
    jp z, Jump_001_709b

    ret


jr_001_7018:
    ld a, $01
    call Call_000_0fb9
    ld [$c912], a
    ld a, $0d
    call Call_000_15dd
    ld a, [CameraXPosition]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [PlayerOrCameraYPosition]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
    call Call_001_70db
    ret


jr_001_705b:
    ld a, $01
    call Call_000_0fb9
    ld a, $07
    call Call_000_15dd
    ld a, [CameraXPosition]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [PlayerOrCameraYPosition]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
    call Call_001_70db
    ret


Jump_001_709b:
    ld a, $01
    call Call_000_0fb9
    ld a, $11
    call Call_000_15dd
    ld a, [CameraXPosition]
    sub $58
    ld [$c766], a
    ld a, [$c607]
    sbc $00
    ld [$c767], a
    ld a, [PlayerOrCameraYPosition]
    sub $20
    ld [$c768], a
    ld a, [$c609]
    sbc $00
    ld [$c769], a
    ld a, $01
    ld [$c770], a
    ld a, $02
    ld [$c76c], a
    ld a, $64
    ld [$c771], a
    ld [$c912], a
    call Call_001_70db
    ret


Call_001_70db:
    ld a, [$c766]
    ld l, a
    ld a, [$c767]
    ld h, a
    ld a, [$c768]
    ld c, a
    ld a, [$c769]
    ld b, a
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
    ld a, [hl+]
    cp $0e
    jp z, Jump_001_7155

    ld a, [hl-]
    cp $81
    ret nz

    ld a, [hl]
    cp $39
    jp z, Jump_001_7155

    cp $3a
    jp z, Jump_001_7155

    cp $3b
    jp z, Jump_001_7155

    cp $3c
    jp z, Jump_001_7155

    cp $46
    jp nc, Jump_001_7155

    ret


Jump_001_7155:
    xor a
    ld [$c760], a
    ret


Call_001_715a:
    ld a, [$b88c]
    or a
    ret nz

    ld a, [$b88d]
    or a
    ret nz

    ld a, [$b8a0]
    cp $01
    ret z

    ld a, [$b8a0]
    cp $02
    ret z

    call Call_000_0890
    ldh a, [$ff9d]
    and $0f
    cp $0f
    jr z, jr_001_7180

    cp $07
    jr z, jr_001_7180

    ret


jr_001_7180:
    ld a, [sCurrentHour]
    cp $06
    ret nz

    ld a, [sTimerMinutes]
    cp $00
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    call Call_000_0fb9
    ld a, $16
    call Call_000_15f6
    ld a, [CameraXPosition]
    add $08
    ld [$c766], a
    ld a, [$c607]
    adc $00
    ld [$c767], a
    ld a, [PlayerOrCameraYPosition]
    add $10
    ld [$c768], a
    ld a, [$c609]
    adc $00
    ld [$c769], a
    ld a, $02
    ld [$c770], a
    ld a, $ff
    ld [$c76c], a
    ld a, $ff
    ld [$c771], a
    ld [$c912], a
    xor a
    ld [$cb88], a
    ret


Call_001_71d3:
    ld a, [CameraXPosition]
    ld l, a
    ld a, [$c607]
    ld h, a
    ld a, l
    sub $60
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call Call_000_06ce
    add $20
    ldh [CameraX], a
    ld a, l
    ldh [$ffa4], a
    ld a, [PlayerOrCameraYPosition]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, l
    sub $58
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld a, $10
    call Call_000_06ce
    add $20
    ldh [CameraY], a
    ld c, l
    ld a, $80
    call Call_000_071e
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $a000
    add hl, de
    push hl
    ld de, $9842
    ld b, $0b

jr_001_7222:
    push hl
    push de
    ld c, $0d

jr_001_7226:
    call Call_000_13db
    inc hl
    inc hl
    inc de
    inc de
    dec c
    jr nz, jr_001_7226

    pop de
    ld hl, $0040
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_7222

    pop hl
    ld b, h
    ld c, l
    ld a, $42
    ld [$cb23], a
    ld a, $98
    ld [$cb24], a
    ld a, $c2
    ld [$cb25], a
    ld a, $9a
    ld [$cb26], a
    ld a, $42
    ld [$cb1f], a
    ld a, $98
    ld [$cb20], a
    ld a, $58
    ld [$cb21], a
    ld a, $98
    ld [$cb22], a
    ld a, l
    ld [$cb2b], a
    ld a, h
    ld [$cb2c], a
    ld de, $0500
    add hl, de
    ld a, l
    ld [$cb2d], a
    ld a, h
    ld [$cb2e], a
    ld h, b
    ld l, c
    ld a, l
    ld [$cb27], a
    ld a, h
    ld [$cb28], a
    ld de, $0016
    add hl, de
    ld a, l
    ld [$cb29], a
    ld a, h
    ld [$cb2a], a
    ret


Call_001_7299:
    ld de, $cb23
    call Call_001_7435
    ld de, $cb25
    call Call_001_7435
    ld de, $cb1f
    call Call_001_7435
    ld de, $cb21
    call Call_001_7435
    ld de, $cb2b
    call Call_001_73fd
    ld de, $cb2d
    call Call_001_73fd
    ld de, $cb27
    call Call_001_73fd
    ld de, $cb29
    call Call_001_73fd
    ld a, [$cb2b]
    ld l, a
    ld a, [$cb2c]
    ld h, a
    ld a, [$cb23]
    ld [$cb1d], a
    ld a, [$cb24]
    ld [$cb1e], a
    ld b, $0c

jr_001_72df:
    call Call_000_1499
    inc hl
    inc hl
    dec b
    jr nz, jr_001_72df

    ret


Call_001_72e8:
    ld de, $cb23
    call Call_001_744c
    ld de, $cb25
    call Call_001_744c
    ld de, $cb1f
    call Call_001_744c
    ld de, $cb21
    call Call_001_744c
    ld de, $cb2b
    call Call_001_740c
    ld de, $cb2d
    call Call_001_740c
    ld de, $cb27
    call Call_001_740c
    ld de, $cb29
    call Call_001_740c
    ld a, [$cb2d]
    ld l, a
    ld a, [$cb2e]
    ld h, a
    ld a, [$cb25]
    ld [$cb1d], a
    ld a, [$cb26]
    ld [$cb1e], a
    ld b, $0c

jr_001_732e:
    call Call_000_1499
    inc hl
    inc hl
    dec b
    jr nz, jr_001_732e

    ret


Call_001_7337:
    ld de, $cb23
    call Call_001_7428
    ld de, $cb25
    call Call_001_7428
    ld de, $cb1f
    call Call_001_7428
    ld de, $cb21
    call Call_001_7428
    ld de, $cb2b
    call Call_001_73ef
    ld de, $cb2d
    call Call_001_73ef
    ld de, $cb27
    call Call_001_73ef
    ld de, $cb29
    call Call_001_73ef
    ld a, [$cb27]
    ld l, a
    ld a, [$cb28]
    ld h, a
    ld a, [$cb1f]
    ld [$cb1d], a
    ld a, [$cb20]
    ld [$cb1e], a
    ld b, $0c

jr_001_737d:
    call Call_000_1425
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_737d

    ret


Call_001_738c:
    ld de, $cb23
    call Call_001_741b
    ld de, $cb25
    call Call_001_741b
    ld de, $cb1f
    call Call_001_741b
    ld de, $cb21
    call Call_001_741b
    ld de, $cb2b
    call Call_001_73e1
    ld de, $cb2d
    call Call_001_73e1
    ld de, $cb27
    call Call_001_73e1
    ld de, $cb29
    call Call_001_73e1
    ld a, [$cb29]
    ld l, a
    ld a, [$cb2a]
    ld h, a
    ld a, [$cb21]
    ld [$cb1d], a
    ld a, [$cb22]
    ld [$cb1e], a
    ld b, $0c

jr_001_73d2:
    call Call_000_1425
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_001_73d2

    ret


Call_001_73e1:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld h, a
    inc hl
    inc hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_001_73ef:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    dec de
    ld h, a
    dec hl
    dec hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_001_73fd:
    ld a, [de]
    sub $80
    ld l, a
    inc de
    ld a, [de]
    sbc $00
    ld h, a
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_740c:
    ld a, [de]
    add $80
    ld l, a
    inc de
    ld a, [de]
    adc $00
    ld h, a
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_741b:
    ld a, [de]
    ld b, a
    inc a
    inc a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [de], a
    ret


Call_001_7428:
    ld a, [de]
    ld b, a
    dec a
    dec a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [de], a
    ret


Call_001_7435:
    ld a, [de]
    sub $40
    ld l, a
    inc de
    ld a, [de]
    sbc $00
    ld h, a
    cp $97
    jr nz, jr_001_7446

    ld bc, $0400
    add hl, bc

jr_001_7446:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_744c:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld bc, $0040
    add hl, bc
    ld a, h
    cp $9c
    jr nz, jr_001_745e

    ld a, h
    sub $04
    ld h, a

jr_001_745e:
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ret


Call_001_7464:
    ld a, [$b88d]
    or a
    jr nz, jr_001_747f

    ld a, [$b88c]
    or a
    ret nz

    call Call_001_7675
    call Call_001_7690
    call Call_001_76cc
    call Call_001_76e9
    call Call_001_7712
    ret


jr_001_747f:
    ld a, [$b88d]
    ld [$b88c], a
    xor a
    ld [$b88d], a
    ld [$cbf6], a
    ld a, $01
    ld [OutsideFarm], a
    xor a
    ld [sTimerMinutes], a
    ld a, $01
    ld [sTimerSeconds], a
    ld a, [$b88c]
    cp $01
    jp z, Jump_001_74f8

    cp $02
    jp z, Jump_001_750a

    cp $03
    jp z, Jump_001_751a

    cp $04
    jp z, Jump_001_7536

    cp $05
    jp z, Jump_001_7546

    cp $06
    jp z, Jump_001_7575

    cp $07
    jp z, Jump_001_7589

    cp $08
    jp z, Jump_001_759d

    cp $09
    jp z, Jump_001_75ad

    cp $0a
    jp z, Jump_001_75bd

    cp $0b
    jp z, Jump_001_75df

    cp $0c
    jp z, Jump_001_75ef

    cp $0d
    jp z, Jump_001_75ff

    cp $0f
    jp z, Jump_001_761e

    cp $10
    jp z, Jump_001_7623

    cp $10
    jp z, Jump_001_7623

    cp $12
    jp z, Jump_001_7633

    cp $13
    jp z, Jump_001_7643

    ret


Jump_001_74f8:
    ld a, $01
    ld [$b8ea], a
    call Call_001_6c75
    call Call_001_7653
    ld a, [sCurrentDay]
    ld [$b8eb], a
    ret


Jump_001_750a:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_751a:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $24
    call Call_000_153c
    call Call_001_7653
    ld a, [sDayRelated]
    ld [$b894], a
    ld a, [$b88a]
    ld [$b895], a
    ret


Jump_001_7536:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_7546:
    call $6cc4
    ld a, [$b8ec]
    cp $00
    jr z, jr_001_755d

    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_153c
    call Call_001_7653
    ret


jr_001_755d:
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_153c
    call Call_001_7653
    ld a, [$b896]
    cp $02
    ret z

    ld a, $01
    ld [$b896], a
    ret


Jump_001_7575:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $2c
    call Call_000_153c
    call Call_001_7653
    xor a
    ld [$c80c], a
    ret


Jump_001_7589:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_153c
    call Call_001_7653
    xor a
    ld [$c80c], a
    ret


Jump_001_759d:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $1c
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_75ad:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_75bd:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $14
    call Call_000_153c
    call Call_001_7653
    ld a, [sCurrentDay]
    ld [$ba3b], a
    ld a, [sCurrentSeason]
    ld [$ba3c], a
    ld a, [sCurrentYear]
    ld [$ba3d], a
    ret


Jump_001_75df:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_75ef:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_75ff:
    call $6cc4
    ld hl, $c806
    ld bc, $0004
    call Call_000_0a27
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    call Call_001_7653
    ld a, [sCurrentDay]
    ld [$b89b], a
    ret


Jump_001_761e:
    ld a, $01
    ld [$b89d], a

Jump_001_7623:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $34
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_7633:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $3d
    call Call_000_153c
    call Call_001_7653
    ret


Jump_001_7643:
    call $6cc4
    ld a, [$c80d]
    ld b, a
    add $0c
    call Call_000_153c
    call Call_001_7653
    ret


Call_001_7653:
    ld a, $00
    ld [$cbf4], a
    ld a, $01
    ld [$cbf5], a
    ld a, $01
    ld [$cbf1], a
    ld hl, $7ce7
    ld a, l
    ld [$cbf2], a
    ld a, h
    ld [$cbf3], a
    xor a
    ld [$cbee], a
    ld [$cbef], a
    ret


Call_001_7675:
    ld a, [sCurrentHour]
    cp $0c
    ret nz

    ld a, [sTimerMinutes]
    cp $00
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    ld [sTimerSeconds], a
    ld [$cb90], a
    ret


Call_001_7690:
    ld a, [sCurrentHour]
    cp $12
    ret nz

    ld a, [sTimerMinutes]
    cp $00
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    ld [sTimerSeconds], a
    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, $02
    ld [$cb90], a
    ld a, [$b899]
    and $01
    ret z

    ld a, $03
    ld [$b899], a
    ret


Call_001_76cc:
    ld a, [sCurrentHour]
    cp $11
    ret nz

    ld a, [sTimerMinutes]
    cp $00
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    ld [sTimerSeconds], a
    ld a, $03
    ld [$cb90], a
    ret


Call_001_76e9:
    ld a, [sCurrentSeason]
    cp $01
    ret nz

    ld a, [sCurrentDay]
    cp $13
    ret nz

    ld a, [sCurrentHour]
    cp $12
    ret nz

    ld a, [sTimerMinutes]
    cp $01
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    ld [sTimerSeconds], a
    ld a, $04
    ld [$cb90], a
    ret


Call_001_7712:
    ld a, [sCurrentSeason]
    cp $03
    ret nz

    ld a, [sCurrentDay]
    cp $17
    ret nz

    ld a, [sCurrentHour]
    cp $12
    ret nz

    ld a, [sTimerMinutes]
    cp $01
    ret nz

    ld a, [sTimerSeconds]
    cp $00
    ret nz

    ld a, $01
    ld [sTimerSeconds], a
    ld a, $05
    ld [$cb90], a
    ret


Call_001_773b:
    ld a, [$c912]
    or a
    ret nz

    ld a, [$c90d]
    or a
    ret nz

    ld a, [$cb90]
    or a
    ret z

    cp $01
    jr z, jr_001_7761

    cp $02
    jr z, jr_001_7761

    cp $03
    jr z, jr_001_77a5

    cp $04
    jp z, Jump_001_77e3

    cp $05
    jp z, Jump_001_7812

    ret


jr_001_7761:
    xor a
    ld [$cb90], a
    ld hl, $5dee
    ld a, $02
    call Call_000_1f96
    ld a, [$cb8d]
    cp $ff
    ret z

    ld a, $60
    ld [$c912], a
    ld a, [$cb8d]
    and $01
    jr z, jr_001_779e

    ld a, [$cb8d]
    cp $01
    jr nz, jr_001_7794

    ld a, $e6
    ld [$c912], a
    ld a, $8e
    call Call_000_152f
    call Call_000_1b00
    ret


jr_001_7794:
    ld a, $b5
    call Call_000_152f
    call Call_000_1b00
    pop hl
    ret


jr_001_779e:
    ld a, $20
    call Call_000_152f
    pop hl
    ret


jr_001_77a5:
    ld a, $c8
    ld [$cbeb], a
    ld a, $00
    call Call_000_166a
    xor a
    ld [$cb90], a
    ld a, [$b93d]
    ld b, a
    ld a, [$b93e]
    or b
    jr z, jr_001_77d6

    ld a, [$b93d]
    ld [$b8fc], a
    ld a, [$b93e]
    ld [$b8fd], a
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ld a, $1f
    call Call_000_3e80
    ret


jr_001_77d6:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ld a, $20
    call Call_000_3e80
    ret


Jump_001_77e3:
    xor a
    ld [$cb90], a
    call $6cc4
    ld a, $02
    ld [$c80d], a
    ld a, $1a
    call Call_000_153c
    ld a, $05
    ld [$c810], a
    xor a
    ld [$c811], a
    ld [$c813], a
    xor a
    ld [$c806], a
    ld [$c807], a
    ld a, $40
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ret


Jump_001_7812:
    xor a
    ld [$cb90], a
    call $6cc4
    ld a, $02
    ld [$c80d], a
    ld a, $12
    call Call_000_153c
    ld a, $06
    ld [$c810], a
    xor a
    ld [$c811], a
    ld [$c813], a
    xor a
    ld [$c806], a
    ld [$c807], a
    ld a, $40
    ld [$c912], a
    ld a, $00
    call Call_000_166a
    ret


Call_001_7841:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbf6]
    or a
    ret z

    ld a, $01
    ld [sTimerSeconds], a
    ld a, [$b88c]
    cp $01
    jr z, jr_001_78a7

    cp $02
    jr z, jr_001_78c6

    cp $03
    jp z, Jump_001_78f1

    cp $04
    jp z, Jump_001_791c

    cp $05
    jp z, Jump_001_7947

    cp $06
    jp z, Jump_001_798e

    cp $07
    jp z, Jump_001_79b9

    cp $08
    jp z, Jump_001_79e2

    cp $09
    jp z, Jump_001_7a0b

    cp $0a
    jp z, Jump_001_7a34

    cp $0b
    jp z, Jump_001_7a5d

    cp $0c
    jp z, Jump_001_7a86

    cp $0d
    jp z, Jump_001_7aaf

    cp $0f
    jp z, Jump_001_7aea

    cp $10
    jp z, Jump_001_7af7

    cp $12
    jp z, Jump_001_7b20

    cp $13
    jp z, Jump_001_7b49

    ret


jr_001_78a7:
    ld a, [$cbf6]
    dec a
    ld [$cbf6], a
    or a
    ret nz

    xor a
    ld [$b88c], a
    ld a, $07
    ld [$c90f], a
    ld a, $20
    ld [$c911], a
    call Call_001_41e7
    xor a
    ld [OutsideFarm], a
    ret


jr_001_78c6:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $41
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_78f1:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $28
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_791c:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $10
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7947:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $01
    ld a, [$b8ec]
    or a
    jr z, jr_001_7975

    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $30
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


jr_001_7975:
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $20
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_798e:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld b, a
    ld a, $30
    add b
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_79b9:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_79e2:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $21
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7a0b:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7a34:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $19
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7a5d:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7a86:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7aaf:
    ld a, [$cbf6]
    cp $01
    ret nz

    ld a, [$b89a]
    or a
    jr z, jr_001_7ac7

    ld a, $03
    ld [$c80d], a
    ld a, $13
    call Call_000_153c
    jr jr_001_7ad1

jr_001_7ac7:
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_153c

jr_001_7ad1:
    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7aea:
    ld a, $02
    ld [$b89d], a
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a

Jump_001_7af7:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $39
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7b20:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $42
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Jump_001_7b49:
    ld a, [$cbf6]
    cp $01
    ret nz

    xor a
    ld [$b88c], a
    ld [$cbf6], a
    ld a, $ff
    ld [$c912], a
    ld a, $01
    ld [$c80d], a
    ld a, $11
    call Call_000_153c
    ld a, $ff
    ld [$c80c], a
    xor a
    ld [OutsideFarm], a
    call Call_000_3e54
    ret


Call_001_7b72:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbee]
    cp $f5
    ret nz

    inc a
    ld [$cbee], a
    xor a
    ld [$cbf1], a
    ld a, $02
    ld [$c912], a
    ld a, [$b88c]
    cp $01
    jp z, Jump_001_7be3

    cp $02
    jp z, Jump_001_7be9

    cp $03
    jp z, Jump_001_7bef

    cp $04
    jp z, Jump_001_7bf5

    cp $05
    jp z, Jump_001_7bfb

    cp $06
    jp z, Jump_001_7c06

    cp $07
    jp z, Jump_001_7c0c

    cp $08
    jp z, Jump_001_7c12

    cp $09
    jp z, Jump_001_7c18

    cp $0a
    jp z, Jump_001_7c1e

    cp $0b
    jp z, Jump_001_7c24

    cp $0c
    jp z, Jump_001_7c73

    cp $0d
    jp z, Jump_001_7c79

    cp $0f
    jp z, Jump_001_7c7f

    cp $10
    jp z, Jump_001_7c85

    cp $12
    jp z, Jump_001_7c8b

    cp $13
    jp z, Jump_001_7ce1

    ret


Jump_001_7be3:
    ld a, $1e
    call Call_000_3e80
    ret


Jump_001_7be9:
    ld a, $21
    call Call_000_3e80
    ret


Jump_001_7bef:
    ld a, $22
    call Call_000_3e80
    ret


Jump_001_7bf5:
    ld a, $23
    call Call_000_3e80
    ret


Jump_001_7bfb:
    ld a, [$b8ec]
    ld b, a
    ld a, $24
    add b
    call Call_000_3e80
    ret


Jump_001_7c06:
    ld a, $26
    call Call_000_3e80
    ret


Jump_001_7c0c:
    ld a, $29
    call Call_000_3e80
    ret


Jump_001_7c12:
    ld a, $2b
    call Call_000_3e80
    ret


Jump_001_7c18:
    ld a, $2c
    call Call_000_3e80
    ret


Jump_001_7c1e:
    ld a, $2d
    call Call_000_3e80
    ret


Jump_001_7c24:
    ld a, [$b911]
    cp $00
    jr z, jr_001_7c4e

    ld a, $0d
    ld [$cbf7], a
    ld a, $0a
    ld [$cbf8], a
    ld [$cbf9], a
    ld a, $0f
    ld [$cbfa], a
    ld a, $0a
    ld [$cbfb], a
    ld [$cbfc], a
    ld [$cbfd], a
    ld a, $2e
    call Call_000_3e80
    ret


jr_001_7c4e:
    ld a, $0b
    ld [$cbf7], a
    ld a, $0a
    ld [$cbf8], a
    ld [$cbf9], a
    ld a, $0c
    ld [$cbfa], a
    ld a, $0f
    ld [$cbfb], a
    ld a, $0a
    ld [$cbfc], a
    ld [$cbfd], a
    ld a, $2e
    call Call_000_3e80
    ret


Jump_001_7c73:
    ld a, $2f
    call Call_000_3e80
    ret


Jump_001_7c79:
    ld a, $30
    call Call_000_3e80
    ret


Jump_001_7c7f:
    ld a, $34
    call Call_000_3e80
    ret


Jump_001_7c85:
    ld a, $36
    call Call_000_3e80
    ret


Jump_001_7c8b:
    ld a, [$b911]
    cp $01
    jr z, jr_001_7c98

    ld a, $3a
    call Call_000_3e80
    ret


jr_001_7c98:
    ld a, $39
    call Call_000_3e80
    xor a
    ld [$b897], a
    ld a, $01
    ld [$ba42], a
    ld a, $01
    ld [$b8a9], a
    ld a, [$b8a5]
    or a
    jr nz, jr_001_7cc0

    ld a, [$b8f8]
    cp $0d
    jr z, jr_001_7cc5

    ld a, [$b8f9]
    cp $0d
    jr z, jr_001_7cd3

    ret


jr_001_7cc0:
    xor a
    ld [$b8a5], a
    ret


jr_001_7cc5:
    ld a, $ff
    ld [$b8f8], a
    ld hl, $4542
    ld a, $08
    call Call_000_1f96
    ret


jr_001_7cd3:
    ld a, $ff
    ld [$b8f9], a
    ld hl, $4542
    ld a, $08
    call Call_000_1f96
    ret


Jump_001_7ce1:
    ld a, $3b
    call Call_000_3e80
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_7da5

jr_001_7da5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7dd0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    inc e
    nop
    ccf

jr_001_7dec:
    inc e
    ld a, a
    inc hl
    db $e3
    ld b, b
    ld b, a
    ld [bc], a
    rlca
    inc bc
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$ff80], a
    ldh a, [$ffa0]
    ldh a, [$ff60]
    add sp, -$10
    nop
    nop
    nop
    nop
    ld d, $00
    ccf
    ld [de], a
    ld e, $0b
    dec e
    dec bc
    rrca
    dec b
    rrca
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_001_7e1d

jr_001_7e1d:
    ld [hl], b
    jr nz, jr_001_7dd0

    ld h, b
    ld d, b
    ldh [$fff0], a
    ldh [rSVBK], a
    and b
    ld b, $00
    rlca
    ld [bc], a
    ld b, $03
    dec b
    inc bc
    rrca
    inc bc
    ld c, $03
    rrca
    dec b
    ld b, $03
    jr nc, jr_001_7e39

jr_001_7e39:
    ld [hl], b
    jr nz, jr_001_7dec

    ld h, b
    ld d, b
    ldh [$fff8], a
    ldh [$ffb8], a
    ldh [$ff78], a
    ret nc

    or b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld c, $1e
    add hl, bc
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    db $ec
    cp b
    inc a
    ret z

    ret c

    jr nz, jr_001_7f6e

    and b
    ldh a, [rNR41]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    rlca
    ld bc, $0205
    rlca
    inc bc
    dec b
    inc bc
    rlca
    ld [bc], a
    dec c
    ld b, $06
    nop
    ldh a, [rLCDC]
    ret nc

    and b
    ret nc

    ld h, b
    ldh a, [$ffe0]
    ret nc

    ld h, b
    ld [hl], b
    jr nz, jr_001_7f7c

    jr nc, jr_001_7f56

    nop
    dec b
    ld [bc], a
    rra
    ld [bc], a
    ld a, a
    add hl, de
    rst $38
    ld h, [hl]
    ld l, a
    ld bc, $060d
    ld c, $04
    inc b
    nop
    ret nc

    and b
    ldh a, [$ffa0]
    ret nc

    ld h, b
    xor b
    ldh a, [$fff8]
    ld h, b
    ld e, b
    jr nc, jr_001_7f7c

    db $10
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7f56:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7f6e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
