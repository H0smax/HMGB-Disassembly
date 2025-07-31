; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc b
    xor a
    ld [GrabbingDog?], a
    ld [$c780], a
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $7698
    ld c, $04
    ld de, $8800
    call Call_000_2f41
    ld hl, $6ffe
    ld c, $04
    ld de, $9000
    call Call_000_2f41
    ld hl, $7b59
    ld c, $04
    ld de, $8000
    call Call_000_2f41
    ld a, $08
    ld [$cb5c], a
    ld a, $07
    ld [$cb5d], a
    ld [$cb5e], a
    ld hl, $6ec2
    ld c, $04
    ld de, $9800
    call Call_000_2f41
    ld a, $24
    ldh [$ff91], a
    xor a
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
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
    ld a, $00
    ld [$cc22], a
    call Call_004_4729
    call Call_000_126b
    call Call_004_46b7
    ld a, $00
    call Call_000_166a
    call Call_004_6afc
    ld a, [$b9a6]
    bit 0, a
    call nz, Call_004_5b87
    ld a, [$b9a6]
    bit 1, a
    call nz, Call_004_5b8c
    ld a, [$b9a6]
    bit 2, a
    call nz, Call_004_5b91
    ld a, [$b9a6]
    bit 3, a
    call nz, Call_004_5b96
    ld a, [$b9a4]
    bit 0, a
    call nz, Call_004_5bae
    ld a, [$b9a4]
    bit 1, a
    call nz, Call_004_5bb6
    ld a, [$b9a4]
    bit 2, a
    call nz, Call_004_5bbe
    ld a, [$b9a4]
    bit 3, a
    call nz, Call_004_5bc6
    ld a, [$b9a4]
    bit 4, a
    call nz, Call_004_5bdf
    ld a, [$b9a5]
    cp $00
    call nz, Call_004_5c34
    ld a, [$b8c1]
    or a
    call nz, Call_004_5c68
    xor a
    ld [$cc20], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    ld [$cc19], a
    ld [$cc1a], a
    ld a, $ff
    ld [$cc4a], a
    ld [$cc4b], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    ld a, $83
    ld [$c0a2], a
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
    call Call_004_4290
    call Call_000_2b71
    call Call_000_362c
    ld hl, $69f0
    ld a, $01
    call Call_000_1f96
    call Call_004_4240
    call Call_004_4254
    call Call_004_4268
    call Call_004_427c
    ld a, [TimePaused]
    or a
    ret nz

    ld hl, $414a
    ld a, [$cc1f]
    rst $00
    ld d, d
    ld b, c
    adc l
    ld b, c
    ret


    ld b, c
    inc b
    ld b, d
    ld a, $00
    ld [$cc1f], a
    ld hl, $b9a7
    ld de, $ba28
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $c880
    ld de, $cc4c
    ld b, $20
    call Call_000_210f
    call Call_004_63cc
    ld hl, $ba28
    ld de, $b9a7
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $cc4c
    ld de, $c880
    ld b, $20
    call Call_000_210f
    ld a, $01
    ld [$cc1f], a
    ld a, $01
    ld [$cc1f], a
    ld hl, $b9b3
    ld de, $ba28
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $c8a0
    ld de, $cc4c
    ld b, $20
    call Call_000_210f
    call Call_004_63cc
    ld hl, $ba28
    ld de, $b9b3
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $cc4c
    ld de, $c8a0
    ld b, $20
    call Call_000_210f
    ld a, $02
    ld [$cc1f], a
    ret


    ld a, $02
    ld [$cc1f], a
    ld hl, $b9bf
    ld de, $ba28
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $c8c0
    ld de, $cc4c
    ld b, $20
    call Call_000_210f
    call Call_004_63cc
    ld hl, $ba28
    ld de, $b9bf
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $cc4c

MoveToHouse::
    ld de, $c8c0
    ld b, $20
    call Call_000_210f
    ld a, $03
    ld [$cc1f], a
    ld a, $03
    ld [$cc1f], a
    ld hl, $b9cb
    ld de, $ba28
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $c8e0
    ld de, $cc4c
    ld b, $20
    call Call_000_210f
    call Call_004_63cc
    ld hl, $ba28
    ld de, $b9cb
    ld a, $0c
    ld b, a
    call Call_000_210f
    ld hl, $cc4c
    ld de, $c8e0
    ld b, $20
    call Call_000_210f
    ld a, $00
    ld [$cc1f], a
    ret


Call_004_4240:
    ld hl, $c88a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c886]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c888]
    sub b
    ld [hl+], a
    ret


Call_004_4254:
    ld hl, $c8aa
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8a6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8a8]
    sub b
    ld [hl+], a
    ret


Call_004_4268:
    ld hl, $c8ca
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8c6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8c8]
    sub b
    ld [hl+], a
    ret


Call_004_427c:
    ld hl, $c8ea
    ldh a, [$ff93]
    ld b, a
    ld a, [$c8e6]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c8e8]
    sub b
    ld [hl+], a
    ret


Call_004_4290:
    ld a, [TransitionRelated]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [TimePaused]
    or a
    ret nz

    call Call_004_4673
    call Call_004_554f
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ldh a, [$ff8b]
    and $01
    jr z, jr_004_42b8

    call Call_004_4c3d
    ret


jr_004_42b8:
    ldh a, [$ff8a]
    and $02
    jr z, jr_004_42d5

    call Call_004_43e6
    ld a, [$c603]
    and $01
    jr z, jr_004_42d4

    ld a, [$c605]
    cp $08
    jr nz, jr_004_42d4

    ld a, $34
    call Call_000_23d8

jr_004_42d4:
    ret


jr_004_42d5:
    ldh a, [$ff8b]
    and $08
    jr z, jr_004_42df

    call Call_000_1925
    ret


jr_004_42df:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_004_4306

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_004_433e

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_004_4376

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_004_43ae

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


Jump_004_4306:
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call $4745
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_433a

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_004_44f4

    ld a, [$cb32]
    and $01
    jp z, Jump_004_4507

    ret


jr_004_433a:
    call Call_004_4540
    ret


Jump_004_433e:
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_004_4881
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_4372

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_004_44f4

    ld a, [$cb32]
    and $01
    jp z, Jump_004_4507

    ret


jr_004_4372:
    call Call_004_4573
    ret


Jump_004_4376:
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_004_49bd
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_43aa

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_004_451a

    ld a, [$cb32]
    and $01
    jp z, Jump_004_452d

    ret


jr_004_43aa:
    call Call_004_45a1
    ret


Jump_004_43ae:
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_004_4af9
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_43e2

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_004_451a

    ld a, [$cb32]
    and $01
    jp z, Jump_004_452d

    ret


jr_004_43e2:
    call Call_004_4611
    ret


Call_004_43e6:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_004_4400

    ldh a, [$ff8a]
    and $20
    jr nz, jr_004_4404

    ldh a, [$ff8a]
    and $10
    jr nz, jr_004_4408

    ldh a, [$ff8a]
    and $40
    jr nz, jr_004_440c

    jr jr_004_4411

jr_004_4400:
    ld a, $00
    jr jr_004_440e

jr_004_4404:
    ld a, $01
    jr jr_004_440e

jr_004_4408:
    ld a, $02
    jr jr_004_440e

jr_004_440c:
    ld a, $03

jr_004_440e:
    ld [$c60d], a

jr_004_4411:
    ld a, [$c60d]
    cp $00
    jr z, jr_004_4457

    cp $01
    jr z, jr_004_448c

    cp $02
    jp z, Jump_004_44c0

    ld a, $02
    call Call_000_166a
    call Call_004_4881
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_4450

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_004_44f4

    ld a, [$cb32]
    and $01
    jp z, Jump_004_4507

    ret


jr_004_4450:
    call Call_004_4573
    call Call_004_4573
    ret


jr_004_4457:
    ld a, $02
    call Call_000_166a
    call $4745
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_4485

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jr z, jr_004_44f4

    ld a, [$cb32]
    and $01
    jp z, Jump_004_4507

    ret


jr_004_4485:
    call Call_004_4540
    call Call_004_4540
    ret


jr_004_448c:
    ld a, $02
    call Call_000_166a
    call Call_004_49bd
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_44b9

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jr z, jr_004_451a

    ld a, [$cb32]
    and $01
    jr z, jr_004_452d

    ret


jr_004_44b9:
    call Call_004_45a1
    call Call_004_45a1
    ret


Jump_004_44c0:
    ld a, $02
    call Call_000_166a
    call Call_004_4af9
    ldh a, [$ffa4]
    or a
    ret nz

    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_004_44ed

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jr z, jr_004_451a

    ld a, [$cb32]
    and $01
    jr z, jr_004_452d

    ret


jr_004_44ed:
    call Call_004_4611
    call Call_004_4611
    ret


Jump_004_44f4:
jr_004_44f4:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_151d
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_45a1
    ret


Jump_004_4507:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1526
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_4611
    ret


Jump_004_451a:
jr_004_451a:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_4573
    ret


Jump_004_452d:
jr_004_452d:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_004_4540
    ret


Call_004_4540:
    xor a
    ld [$c90e], a
    ld a, [PlayerOrCameraYPosition]
    cp $83
    jr nc, jr_004_4568

    ld a, [PlayerOrCameraYPosition]
    cp $5c
    jr nc, jr_004_4554

    jr jr_004_4561

jr_004_4554:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_004_455c:
    ld hl, PlayerOrCameraYPosition
    inc [hl]
    ret


jr_004_4561:
    ld hl, $c60b
    inc [hl]
    jr jr_004_455c

    ret


jr_004_4568:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    ret


Call_004_4573:
    xor a
    ld [$c90e], a
    ld a, [PlayerOrCameraYPosition]
    cp $0e
    ret c

    ld a, [PlayerOrCameraYPosition]
    cp $5d
    jr nc, jr_004_458d

    ld a, [PlayerOrCameraYPosition]
    cp $08
    jr c, jr_004_459a

    jr jr_004_459a

jr_004_458d:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_004_4595:
    ld hl, PlayerOrCameraYPosition
    dec [hl]
    ret


jr_004_459a:
    ld hl, $c60b
    dec [hl]
    jr jr_004_4595

    ret


Call_004_45a1:
    xor a
    ld [$c90e], a
    ld a, [CameraXPosition]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_004_45df

    cp $01
    jr z, jr_004_45e8

    ld a, [CameraXPosition]
    cp $b9
    jr nc, jr_004_45d8

    ld a, [$c607]
    cp $00
    jr nz, jr_004_45cb

    ld a, [CameraXPosition]
    cp $59
    jr c, jr_004_45d8

jr_004_45cb:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_45d3:
    ld hl, CameraXPosition
    dec [hl]
    ret


jr_004_45d8:
    ld hl, PlayerXPosition
    dec [hl]
    jr jr_004_45d3

    ret


jr_004_45df:
    ld hl, CameraXPosition
    dec [hl]
    ld hl, PlayerXPosition
    dec [hl]
    ret


jr_004_45e8:
    ld a, [CameraXPosition]
    cp $99
    jr nc, jr_004_460a

    ld a, [$c607]
    cp $00
    jr nz, jr_004_45fd

    ld a, [CameraXPosition]
    cp $59
    jr c, jr_004_460a

jr_004_45fd:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_004_4605:
    ld hl, CameraXPosition
    dec [hl]
    ret


jr_004_460a:
    ld hl, PlayerXPosition
    dec [hl]
    jr jr_004_4605

    ret


Call_004_4611:
    xor a
    ld [$c90e], a
    ld a, [CameraXPosition]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_004_4648

    cp $01
    jr z, jr_004_4651

    ld a, [CameraXPosition]
    cp $b8
    jr nc, jr_004_4641

    ld a, [CameraXPosition]
    cp $58
    jr c, jr_004_4641

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_463c:
    ld hl, CameraXPosition
    inc [hl]
    ret


jr_004_4641:
    ld hl, PlayerXPosition
    inc [hl]
    jr jr_004_463c

    ret


jr_004_4648:
    ld hl, CameraXPosition
    inc [hl]
    ld hl, PlayerXPosition
    inc [hl]
    ret


jr_004_4651:
    ld a, [CameraXPosition]
    cp $98
    jr nc, jr_004_466c

    ld a, [CameraXPosition]
    cp $58
    jr c, jr_004_466c

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_004_4667:
    ld hl, CameraXPosition
    inc [hl]
    ret


jr_004_466c:
    ld hl, PlayerXPosition
    inc [hl]
    jr jr_004_4667

    ret


Call_004_4673:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_004_4687

    pop hl
    ret


jr_004_4687:
    ld a, [$cc4a]
    cp $ff
    jr z, jr_004_46a4

    ld hl, $6e84
    call Call_000_0743
    ld a, [hl]
    cp $ff
    jr nz, jr_004_46a4

    ld a, [$cc4b]
    ld [hl], a
    xor a
    ld [$cb4a], a
    ld [$c620], a

jr_004_46a4:
    call Call_004_6e8c
    ld a, $01
    ld [NextMapIndex], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $02
    ld [$c910], a
    ret


Call_004_46b7:
    ld hl, $9c00
    ld de, $46c5
    ld b, $14
    ld c, $05
    call Call_000_0767
    ret


    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    and [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and [hl]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and a
    and e
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and l

Call_004_4729:
    ld hl, $4735
    ld de, $c600
    ld b, $10
    call Call_000_210f
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
    ld bc, $fa00
    ld b, $c6
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_47aa

    cp $ff
    jr z, jr_004_47aa

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_47aa

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_47aa

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_47aa

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_487c

jr_004_47aa:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_47ef

    cp $ff
    jr z, jr_004_47ef

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_47ef

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_47ef

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_47ef

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_487c

jr_004_47ef:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4833

    cp $ff
    jr z, jr_004_4833

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4833

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_4833

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4833

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_487c

jr_004_4833:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4877

    cp $ff
    jr z, jr_004_4877

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4877

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_4877

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4877

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_487c

jr_004_4877:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_487c:
jr_004_487c:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_4881:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc b
    inc b
    inc b
    inc b
    dec c
    dec c
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_48e6

    cp $ff
    jr z, jr_004_48e6

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_48e6

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_48e6

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_48e6

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_49b8

jr_004_48e6:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_492b

    cp $ff
    jr z, jr_004_492b

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_492b

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_492b

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_492b

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_49b8

jr_004_492b:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_496f

    cp $ff
    jr z, jr_004_496f

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_496f

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_496f

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_496f

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_49b8

jr_004_496f:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_49b3

    cp $ff
    jr z, jr_004_49b3

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_49b3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_49b3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_49b3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_49b8

jr_004_49b3:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_49b8:
jr_004_49b8:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_49bd:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc d
    inc d
    inc d
    inc d
    dec e
    dec e
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_4a22

    cp $ff
    jr z, jr_004_4a22

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4a22

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4a22

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4a22

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4af4

jr_004_4a22:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_4a67

    cp $ff
    jr z, jr_004_4a67

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4a67

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4a67

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4a67

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4af4

jr_004_4a67:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4aab

    cp $ff
    jr z, jr_004_4aab

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4aab

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4aab

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4aab

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4af4

jr_004_4aab:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4aef

    cp $ff
    jr z, jr_004_4aef

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_4aef

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_4aef

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4aef

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4af4

jr_004_4aef:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_4af4:
jr_004_4af4:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_4af9:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc d
    inc d
    inc d
    inc d
    dec e
    dec e
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr z, jr_004_4b5e

    cp $ff
    jr z, jr_004_4b5e

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4b5e

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4b5e

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4b5e

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4c30

jr_004_4b5e:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr z, jr_004_4ba3

    cp $ff
    jr z, jr_004_4ba3

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4ba3

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4ba3

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4ba3

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_4c30

jr_004_4ba3:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr z, jr_004_4be7

    cp $ff
    jr z, jr_004_4be7

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4be7

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4be7

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4be7

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4c30

jr_004_4be7:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr z, jr_004_4c2b

    cp $ff
    jr z, jr_004_4c2b

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_4c2b

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_4c2b

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_4c2b

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_4c30

jr_004_4c2b:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_4c30:
jr_004_4c30:
    ld a, $01
    ldh [$ffa4], a
    ret


    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c

Call_004_4c3d:
    ld a, [$cb4a]
    or a
    jp nz, Jump_004_4f68

    ld hl, $4c4b
    ld a, [$c60d]
    rst $00
    ld d, e
    ld c, h
    ld e, b
    ld c, h
    ld e, l
    ld c, h
    ld h, d
    ld c, h
    call $4745
    jr jr_004_4c65

    call Call_004_49bd
    jr jr_004_4c65

    call Call_004_4af9
    jr jr_004_4c65

    call Call_004_4881

jr_004_4c65:
    ldh a, [$ffa4]
    or a
    jr z, jr_004_4ccb

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [$ffaa]
    ld [$cc4a], a
    ld hl, $6e84
    call Call_000_0743
    ld a, $ff
    ld [hl], a
    ldh a, [$ffaa]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    cp $03
    jr z, jr_004_4ca9

    ld a, $27
    ld [$cb4a], a
    ld a, $74
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


jr_004_4ca9:
    ld a, $28
    ld [$cb4a], a
    ld a, $75
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


    add b
    ret z

    and b
    ret z

    ret nz

    ret z

    ldh [$ffc8], a

jr_004_4ccb:
    ld hl, $4cd2
    ld a, [$c60d]
    rst $00
    jp c, $df4c

    ld c, h
    db $e4
    ld c, h
    jp hl


    ld c, h
    call Call_004_5c99
    jr jr_004_4cec

    call Call_004_5eed
    jr jr_004_4cec

    call Call_004_6017
    jr jr_004_4cec

    call Call_004_5dc3

jr_004_4cec:
    ldh a, [$ffa4]
    or a
    jr z, jr_004_4d2c

    ldh a, [$ffa9]
    ld [$cc4b], a
    ldh a, [$ffaa]
    ld [$cc4a], a
    ld hl, $6e84
    call Call_000_0743
    ld a, $ff
    ld [hl], a
    ldh a, [$ffaa]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $00
    ld [hl], a
    ld a, [$cc4b]
    ld a, $26
    ld [$cb4a], a
    ld a, $73
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


jr_004_4d2c:
    ld a, [$cc1b]
    cp $00
    jr z, jr_004_4d34

    ret


jr_004_4d34:
    ld a, [$c90e]
    or a
    jp z, Jump_004_4f48

    ld a, [$cb33]
    cp $05
    jr z, jr_004_4d8b

    cp $06
    jr z, jr_004_4d96

    cp $07
    jr z, jr_004_4da1

    cp $08
    jr z, jr_004_4dac

    cp $1e
    jr z, jr_004_4db7

    ld a, [$b8fb]
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4e4d

    ld hl, $5231
    ld a, $01
    call Call_000_1f96
    ld a, [$b8fb]
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $11
    ret nz

    call Call_004_5836
    ld a, [de]
    cp $03
    jp z, Jump_004_502b

    ld a, $04
    ld [$cc20], a
    ret


jr_004_4d8b:
    ld a, $a2
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_004_4d96:
    ld a, $a4
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_004_4da1:
    ld a, $a3
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_004_4dac:
    ld a, $a5
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


jr_004_4db7:
    ld hl, $b8f8
    ld a, [$b8fb]
    cp $02
    jr z, jr_004_4df5

    cp $01
    jr z, jr_004_4de0

    ld a, [$b8f9]
    cp $ff
    jr z, jr_004_4de0

    ld a, [$b8f8]
    ld [$cc21], a
    call Call_004_63aa
    ld a, $11
    ld [$b8f8], a
    xor a
    ld [$b8fb], a
    jr jr_004_4e0e

jr_004_4de0:
    ld a, [$b8f9]
    ld [$cc21], a
    call Call_004_63aa
    ld a, $11
    ld [$b8f9], a
    ld a, $01
    ld [$b8fb], a
    jr jr_004_4e0e

jr_004_4df5:
    ld a, [$b8f8]
    cp $ff
    jr nz, jr_004_4de0

    ld a, [$b8f8]
    ld [$cc21], a
    call Call_004_63aa
    ld a, $11
    ld [$b8f8], a
    xor a
    ld [$b8fb], a

jr_004_4e0e:
    xor a
    ld [$b8c1], a
    ld [$cb34], a
    ld a, $03
    call Call_000_166a
    ld a, $11
    call $16e3
    ld hl, $c62a
    ld a, [PlayerXPosition]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl], a
    xor a
    ld [$c623], a
    ld a, $10
    ld [$c912], a
    ld a, $07
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$c90e], a
    ld hl, $d800
    ld de, $00bc
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


Jump_004_4e4d:
    ld a, [$cb33]
    cp $10
    jr z, jr_004_4e99

    cp $11
    jr z, jr_004_4eae

    cp $12
    jr z, jr_004_4ec3

    cp $13
    jp z, Jump_004_4ed8

    cp $14
    jp z, Jump_004_4f10

    cp $04
    ret nz

    ld a, [$b93a]
    ld l, a
    ld a, [$b93b]
    ld h, a
    or l
    ret z

    dec hl
    ld a, h
    ld [$b93b], a
    ld a, l
    ld [$b93a], a
    call Call_000_104c
    ld a, $20
    ld [$cb4a], a
    ld a, $19
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


jr_004_4e99:
    ld a, [$b9a4]
    res 0, a
    ld [$b9a4], a
    ld a, $00
    ld [$cc18], a
    ld hl, $d91e
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4eed

jr_004_4eae:
    ld a, [$b9a4]
    res 1, a
    ld [$b9a4], a
    ld a, $01
    ld [$cc18], a
    ld hl, $d8ce
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4eed

jr_004_4ec3:
    ld a, [$b9a4]
    res 2, a
    ld [$b9a4], a
    ld a, $02
    ld [$cc18], a
    ld hl, $d8ba
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_4eed

Jump_004_4ed8:
    ld a, [$b9a4]
    res 3, a
    res 4, a
    ld [$b9a4], a
    ld a, $03
    ld [$cc18], a
    ld hl, $d920
    xor a
    ld [hl+], a
    ld [hl], a

jr_004_4eed:
    ld a, $24
    ld [$cb4a], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $29
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


Jump_004_4f10:
    ld a, [$b9a4]
    res 3, a
    res 4, a
    ld [$b9a4], a
    ld a, $03
    ld [$cc18], a
    ld hl, $d920
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $25
    ld [$cb4a], a
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld a, $71
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    ret


Jump_004_4f48:
    ld a, [$b8fb]
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4e4d

    ld hl, $5231
    ld a, $01
    call Call_000_1f96
    ld a, $04
    ld [$cc20], a
    ret


Jump_004_4f68:
    call Call_004_4f6c
    ret


Call_004_4f6c:
    ld a, [$cb4a]
    ld hl, $4f73
    rst $00
    rst $10
    ld c, a
    ret c

    ld c, a
    pop af
    ld c, a
    pop af
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ldh a, [c]
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ldh a, [$ff50]
    ld a, $51
    adc h
    ld d, c
    adc h
    ld d, d
    ld [hl], b
    ld d, e
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    rst $10
    ld c, a
    ret


    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld a, $33
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


    ret


    ld a, $15
    call Call_000_166a
    call Call_004_5836
    ld a, [de]
    cp $03
    jr z, jr_004_5013

    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_004_5013:
    ld a, $19
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_004_5836
    ld a, [de]
    cp $03
    jr z, jr_004_502b

    ret


Jump_004_502b:
jr_004_502b:
    ld a, [$c60d]
    ld a, [CameraXPosition]
    cp $29
    jr c, jr_004_503f

    cp $39
    jr c, jr_004_5064

    cp $49
    jr c, jr_004_5089

    jr jr_004_50ae

jr_004_503f:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_5055

    ld a, $00
    ld [$cc20], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_5055:
    ld a, $00
    ld [$cc18], a
    ld a, [$b9a6]
    set 0, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_5064:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_507a

    ld a, $01
    ld [$cc20], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_507a:
    ld a, $01
    ld [$cc18], a
    ld a, [$b9a6]
    set 1, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_5089:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_509f

    ld a, $02
    ld [$cc20], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_509f:
    ld a, $02
    ld [$cc18], a
    ld a, [$b9a6]
    set 2, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_50ae:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_50c4

    ld a, $03
    ld [$cc20], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a
    jr jr_004_50d1

jr_004_50c4:
    ld a, $03
    ld [$cc18], a
    ld a, [$b9a6]
    set 3, a
    ld [$b9a6], a

jr_004_50d1:
    ld a, [$cb4a]
    cp $20
    jr z, jr_004_50e0

    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_004_50e0:
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_004_5836
    ld a, [de]
    cp $02
    jr z, jr_004_5115

    cp $09
    jr z, jr_004_5115

    ld a, $2a
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_004_5115:
    ld a, $29
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_004_5836
    ld a, [de]
    cp $02
    jp z, Jump_004_5454

    ld a, $04
    ld [$b9a5], a
    ld a, $00
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_004_5467

    ret


    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_004_5836
    ld a, [de]
    cp $02
    jr z, jr_004_5163

    cp $09
    jr z, jr_004_5163

    ld a, $72
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_004_5163:
    ld a, $71
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_004_5836
    ld a, [de]
    cp $02
    jp z, Jump_004_5454

    ld a, $84
    ld [$b9a5], a
    ld a, $01
    ld [$cc18], a
    ld a, [de]
    cp $09
    jp z, Jump_004_5467

    ret


    call Call_004_6141
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $73
    call $16e3
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6e84
    call Call_000_0743
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c60d]
    ld [hl], a
    ld hl, $51f9
    rst $00
    ld bc, $1e52
    ld d, d
    dec [hl]
    ld d, d
    ld c, h
    ld d, d
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jr jr_004_5267

    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jr jr_004_5267

    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jr jr_004_5267

    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a

Jump_004_5267:
jr_004_5267:
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $01
    ld [hl], a
    ld a, [$cc4a]
    ld b, a
    ld a, $ff
    ld [$cc4a], a
    ld [$cc4b], a
    ld a, b
    ld hl, $5284
    rst $00
    ld b, b
    ld b, d
    ld d, h
    ld b, d
    ld l, b
    ld b, d
    ld a, h
    ld b, d
    call Call_004_6141
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $74
    call $16e3
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6e84
    call Call_000_0743
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c60d]
    ld [hl], a
    ld hl, $52fc
    rst $00
    inc b
    ld d, e
    ld [hl+], a
    ld d, e
    ld a, [hl-]
    ld d, e
    ld d, d
    ld d, e
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp Jump_004_5267


    call Call_004_6141
    inc hl
    ld a, [hl]
    and $02
    ret nz

    inc de
    ld a, [de]
    and $02
    ret nz

    ld a, $75
    call $16e3
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ld a, [$cc4a]
    ld hl, $6e84
    call Call_000_0743
    ld a, [$cc4b]
    ld [hl], a
    ld a, $03
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $00
    ld [hl], a
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $01
    ld [hl], a
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [CameraXPosition]
    ld [hl+], a
    ld a, [$c607]
    ld [hl+], a
    ld a, [PlayerOrCameraYPosition]
    ld [hl+], a
    ld a, [$c609]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$c60d]
    ld [hl], a
    ld hl, $53e0
    rst $00
    add sp, $53
    ld b, $54
    ld e, $54
    ld [hl], $54
    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $17
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_004_5267


    ld a, [$cc4a]
    ld hl, $4cc3
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    sub $0f
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    sub $07
    ld [hl], a
    jp Jump_004_5267


Jump_004_5454:
    call Call_000_1c81
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_004_5467:
    ld a, $06
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


    sbc c
    and c
    inc b
    xor h
    xor l
    xor [hl]
    xor a
    nop
    sbc c
    pop bc
    inc b
    cp h
    cp l
    cp [hl]
    cp a
    nop
    sbc c
    pop hl
    inc b
    call z, $cecd
    rst $08
    nop
    sbc d
    ld bc, $dc04
    db $dd
    sbc $df
    nop
    sbc d
    ld bc, $6c04
    ld l, l
    ld l, [hl]
    ld a, a
    nop
    sbc c
    pop hl
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl]
    nop
    sbc c
    pop bc
    inc b
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, l
    nop
    sbc c
    and c
    inc b
    dec a
    ld a, $3f
    ld a, h
    nop
    cp a
    ld d, h
    bit 2, h
    rst $10
    ld d, h
    db $e3
    ld d, h
    sbc b
    and d
    ld [bc], a
    daa
    jr z, jr_004_54c5

jr_004_54c5:
    sbc b
    jp nz, $3702

    jr c, jr_004_54cb

jr_004_54cb:
    sbc b
    and h
    ld [bc], a
    daa
    jr z, jr_004_54d1

jr_004_54d1:
    sbc b
    call nz, $3702
    jr c, jr_004_54d7

jr_004_54d7:
    sbc b
    and [hl]
    ld [bc], a
    daa
    jr z, jr_004_54dd

jr_004_54dd:
    sbc b
    add $02
    scf
    jr c, jr_004_54e3

jr_004_54e3:
    sbc b
    xor b
    ld [bc], a
    daa
    jr z, jr_004_54e9

jr_004_54e9:
    sbc b
    ret z

    ld [bc], a
    scf
    jr c, jr_004_54ef

jr_004_54ef:
    rst $30
    ld d, h
    inc bc
    ld d, l
    rrca
    ld d, l
    dec de
    ld d, l
    sbc c
    db $ed
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    dec c
    ld [bc], a

Jump_004_5500:
    inc de
    inc de
    nop
    sbc c
    ld h, c
    ld [bc], a
    inc a
    inc de
    nop
    sbc c
    add c
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    cpl
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    ld c, a
    ld [bc], a
    inc de
    inc de
    nop
    sbc c
    rst $28
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    rrca
    ld [bc], a
    inc de
    inc de
    nop
    dec hl
    ld d, l
    scf
    ld d, l
    sbc c
    pop de
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    pop af
    ld [bc], a
    xor d
    xor e
    nop
    sbc c
    pop de
    ld [bc], a
    di
    db $f4
    nop
    sbc c
    pop af
    ld [bc], a
    push af
    or $00
    sbc c
    ld sp, $1302
    inc de
    nop
    sbc c
    ld d, c
    ld [bc], a
    inc de
    inc de
    nop

Call_004_554f:
    ld a, [$cc19]
    cp $00
    jp nz, Jump_004_57d5

    ld hl, $555e
    ld a, [$cc16]
    rst $00
    dec [hl]
    ld d, a
    ld l, [hl]
    ld d, l
    xor a
    ld d, l
    call z, Call_000_0d55
    ld d, [hl]
    ld e, h
    ld d, [hl]
    xor e
    ld d, [hl]
    ld hl, sp+$56
    ld hl, $5477
    ld a, [$cc17]
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08
    call $0635
    ld c, b

jr_004_5586:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5586

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_004_55a5

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_004_5735


jr_004_55a5:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5735


    ld a, [$cc17]
    cp $08
    jr nz, jr_004_55c2

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_004_5735


jr_004_55c2:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5735


    ld hl, $5497
    ld a, [$cc17]
    sla a
    sla a
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $08
    call $0635
    ld c, b

jr_004_55e4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_55e4

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_004_5603

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5735


jr_004_5603:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5735


    ld hl, $54b7
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call $0635
    ld c, b

jr_004_5633:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5633

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_5652

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5735


jr_004_5652:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5735


    ld hl, $54ef
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call $0635
    ld c, b

jr_004_5682:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5682

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_56a1

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jp Jump_004_5735


jr_004_56a1:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_004_5735


    ld hl, $5527
    ld a, [$cc18]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call $0635
    ld c, b

jr_004_56d1:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_56d1

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_56ef

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_004_5735

jr_004_56ef:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_004_5735

    ld hl, $5543
    ld a, [$cc17]
    sla a
    ld b, a
    sla a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call $0635
    ld c, b

jr_004_5710:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_5710

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_004_572e

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_004_5735

jr_004_572e:
    ld a, [$cc17]
    inc a
    ld [$cc17], a

Jump_004_5735:
jr_004_5735:
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_004_5746

    or a
    jr z, jr_004_5791

    ret


jr_004_5746:
    ld a, [$c602]
    cp $5f
    jr z, jr_004_575a

    cp $60
    jr z, jr_004_575a

    cp $61
    jr z, jr_004_575a

    cp $62
    jr z, jr_004_575a

    ret


jr_004_575a:
    ld a, [$cc20]
    cp $04
    jr nz, jr_004_576b

jr_004_5761:
    ld a, $1c
    call $16e3
    xor a
    ld [$cc20], a
    ret


jr_004_576b:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $11
    jr nz, jr_004_5761

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a

jr_004_578f:
    pop hl
    ret


jr_004_5791:
    ld a, [$cb91]
    or a
    jr z, jr_004_578f

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_004_57b9

    cp $6e
    jr z, jr_004_57c0

    cp $50
    jr z, jr_004_57c7

    cp $a0
    jr z, jr_004_57ce

jr_004_57b9:
    ld a, $8a
    call Call_000_152f
    pop hl
    ret


jr_004_57c0:
    ld a, $8b
    call Call_000_152f
    pop hl
    ret


jr_004_57c7:
    ld a, $8c
    call Call_000_152f
    pop hl
    ret


jr_004_57ce:
    ld a, $8d
    call Call_000_152f
    pop hl
    ret


Jump_004_57d5:
    ld a, [$c912]
    cp $01
    jp nz, Jump_004_5735

    ld hl, $57e4
    ld a, [$cc1e]
    rst $00
    db $ec
    ld d, a
    cp $57
    ld a, [bc]
    ld e, b
    ld d, $58
    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_004_5735


    ld a, $21
    ld [$cb4a], a
    ld a, $27
    call $16e3
    jr jr_004_5820

    ld a, $22
    ld [$cb4a], a
    ld a, $25
    call $16e3
    jr jr_004_5820

    ld a, $23
    ld [$cb4a], a
    ld a, $23
    call $16e3

jr_004_5820:
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    xor a
    ld [$cc19], a
    jp Jump_004_5735


Call_004_5836:
    ld a, [$c60d]
    rst $00
    ld b, e
    ld e, b
    rst $10
    ld e, b
    ld l, l
    ld e, c
    inc bc
    ld e, d
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
    ld l, a
    ld a, [$c609]
    ld h, a
    ld a, $26
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
    sub $1f
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
    add $1e
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
    add $0a
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
    add $0a
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


Call_004_5a9f:
    ld a, [PlayerXPosition]
    add b
    ld l, a
    ld h, $00
    ldh a, [$ff93]
    ld e, a
    ldh a, [$ff94]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    push af
    ld a, [$c60b]
    add c
    ld l, a
    ld h, $00
    ldh a, [$ff91]
    ld e, a
    ldh a, [$ff92]
    ld d, a
    add hl, de
    ld a, l
    srl a
    srl a
    srl a
    ld c, $20
    call Call_000_071e
    ld de, $9800
    add hl, de
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    ld a, [$c60d]
    cp $00
    jr nz, jr_004_5af8

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
    call Call_004_5a9f
    ret


jr_004_5af8:
    cp $01
    jr nz, jr_004_5b29

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
    jr z, jr_004_5b1b

    cp $0c
    jr nc, jr_004_5b1f

    cp $04
    jr nc, jr_004_5b23

jr_004_5b1b:
    ld b, $ec
    jr jr_004_5b25

jr_004_5b1f:
    ld b, $dc
    jr jr_004_5b25

jr_004_5b23:
    ld b, $e4

jr_004_5b25:
    call Call_004_5a9f
    ret


jr_004_5b29:
    cp $02
    jr nz, jr_004_5b5a

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
    jr z, jr_004_5b50

    cp $0c
    jr nc, jr_004_5b50

    cp $04
    jr nc, jr_004_5b54

    ld b, $1c
    jr jr_004_5b56

jr_004_5b50:
    ld b, $0c
    jr jr_004_5b56

jr_004_5b54:
    ld b, $14

jr_004_5b56:
    call Call_004_5a9f
    ret


jr_004_5b5a:
    ld a, [CameraXPosition]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [PlayerOrCameraYPosition]
    sub $0d
    and $0f
    cp $00
    jr z, jr_004_5b81

    cp $0b
    jr nc, jr_004_5b79

    cp $03
    jr nc, jr_004_5b7d

    ld c, $e8
    jr jr_004_5b83

jr_004_5b79:
    ld c, $d8
    jr jr_004_5b83

jr_004_5b7d:
    ld c, $e0
    jr jr_004_5b83

jr_004_5b81:
    ld c, $e8

jr_004_5b83:
    call Call_004_5a9f
    ret


Call_004_5b87:
    ld hl, $98a2
    jr jr_004_5b99

Call_004_5b8c:
    ld hl, $98a4
    jr jr_004_5b99

Call_004_5b91:
    ld hl, $98a6
    jr jr_004_5b99

Call_004_5b96:
    ld hl, $98a8

jr_004_5b99:
    ld a, $27
    ld [hl+], a
    ld a, $28
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $37
    ld [hl+], a
    ld a, $38
    ld [hl], a
    ret


Call_004_5bae:
    ld hl, $99ee
    ld a, $00
    ld b, a
    jr jr_004_5bcc

Call_004_5bb6:
    ld hl, $9962
    ld a, $01
    ld b, a
    jr jr_004_5bcc

Call_004_5bbe:
    ld hl, $9930
    ld a, $02
    ld b, a
    jr jr_004_5bcc

Call_004_5bc6:
    ld hl, $99f0
    ld a, $03
    ld b, a

jr_004_5bcc:
    ld a, $04
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $05
    ld [hl+], a
    ld a, $06
    ld [hl], a
    jr jr_004_5bf6

Call_004_5bdf:
    ld hl, $99f0
    ld a, $04
    ld b, a
    ld a, $f0
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f1
    ld [hl+], a
    ld a, $f2
    ld [hl], a

jr_004_5bf6:
    ld hl, $5bfb
    ld a, b
    rst $00
    dec b
    ld e, h
    dec c
    ld e, h
    dec d
    ld e, h
    dec e
    ld e, h
    dec h
    ld e, h
    ld de, $011e
    ld bc, $0110
    jr jr_004_5c2b

    ld de, $00ce
    ld bc, $0111
    jr jr_004_5c2b

    ld de, $00ba
    ld bc, $0112
    jr jr_004_5c2b

    ld de, $0120
    ld bc, $0113
    jr jr_004_5c2b

    ld de, $0120
    ld bc, $0114

jr_004_5c2b:
    ld hl, $d800
    add hl, de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_004_5c34:
    ld hl, $99d1
    ld a, [$b9a5]
    cp $80
    jr nc, jr_004_5c53

    ld a, $a8
    ld [hl+], a
    ld a, $a9
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $aa
    ld [hl+], a
    ld a, $ab
    ld [hl], a
    ret


jr_004_5c53:
    ld a, $f3
    ld [hl+], a
    ld a, $f4
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f5
    ld [hl+], a
    ld a, $f6
    ld [hl], a
    ret


Call_004_5c68:
    ld hl, $b8f8
    ld a, [hl+]
    cp $11
    ret z

    ld a, [hl]
    cp $11
    ret z

    ld hl, $9931
    ld a, $66
    ld [hl+], a
    ld a, $67
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $76
    ld [hl+], a
    ld a, $77
    ld [hl], a
    ld de, $00bc
    ld hl, $d800
    add hl, de
    ld bc, $011e
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_004_5c99:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc e
    inc e
    inc b
    inc b
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5cf8

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5cf8

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5cf8

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5cf8

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5dbe

jr_004_5cf8:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_5d39

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5d39

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5d39

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5d39

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5dbe

jr_004_5d39:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_5d79

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5d79

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5d79

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5d79

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5dbe

jr_004_5d79:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_5db9

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5db9

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_5db9

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5db9

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5dbe

jr_004_5db9:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_5dbe:
jr_004_5dbe:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_5dc3:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    dec d
    dec d
    inc b
    inc b
    dec c
    dec c
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5e22

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5e22

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5e22

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5e22

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5ee8

jr_004_5e22:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_5e63

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5e63

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5e63

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5e63

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_004_5ee8

jr_004_5e63:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_5ea3

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5ea3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5ea3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5ea3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5ee8

jr_004_5ea3:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_5ee3

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_5ee3

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_5ee3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_5ee3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_5ee8

jr_004_5ee3:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_5ee8:
jr_004_5ee8:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_5eed:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    dec b
    dec b
    inc d
    inc d
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_5f4c

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_5f4c

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_5f4c

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5f4c

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_6012

jr_004_5f4c:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_5f8d

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_5f8d

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_5f8d

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5f8d

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_6012

jr_004_5f8d:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_5fcd

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_5fcd

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_5fcd

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_5fcd

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6012

jr_004_5fcd:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_600d

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_600d

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_600d

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_600d

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6012

jr_004_600d:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_6012:
jr_004_6012:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6017:
    ld a, [CameraXPosition]
    sub $08
    ld b, a
    ld a, [CameraXPosition]
    add $08
    ld c, a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ld d, a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ld e, a
    inc c
    inc c
    inc d
    inc d
    dec e
    dec e
    ld a, [$b9a7]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$b9a7]
    cp $01
    jr nz, jr_004_6076

    ld a, [$c886]
    ldh [$ffa4], a
    ld a, [$c886]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c888]
    sub $08
    ldh [$ffa6], a
    ld a, [$c888]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6076

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6076

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6076

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_613c

jr_004_6076:
    ld a, [$b9b3]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$b9b3]
    cp $01
    jr nz, jr_004_60b7

    ld a, [$c8a6]
    ldh [$ffa4], a
    ld a, [$c8a6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8a8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8a8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_60b7

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_60b7

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_60b7

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_004_613c

jr_004_60b7:
    ld a, [$b9bf]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$b9bf]
    cp $01
    jr nz, jr_004_60f7

    ld a, [$c8c6]
    ldh [$ffa4], a
    ld a, [$c8c6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8c8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8c8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_60f7

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_60f7

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_60f7

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_613c

jr_004_60f7:
    ld a, [$b9cb]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$b9cb]
    cp $01
    jr nz, jr_004_6137

    ld a, [$c8e6]
    ldh [$ffa4], a
    ld a, [$c8e6]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c8e8]
    sub $08
    ldh [$ffa6], a
    ld a, [$c8e8]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6137

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6137

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6137

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_613c

jr_004_6137:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_004_613c:
jr_004_613c:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6141:
    ld a, [$c60d]
    rst $00
    ld c, [hl]
    ld h, c
    ldh [c], a
    ld h, c
    ld a, b
    ld h, d
    ld c, $63
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


Call_004_63aa:
    ld a, [$cc21]
    cp $ff
    ret z

    ld c, a
    ld hl, $1b22
    ld b, $00

jr_004_63b6:
    ld a, [hl+]
    cp c
    jr z, jr_004_63bd

    inc b
    jr jr_004_63b6

jr_004_63bd:
    ld a, b
    ld hl, $b8a3
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $01
    ld [hl], a
    ret


    ret


Call_004_63cc:
    ld a, [$ba28]
    cp $ff
    ret z

    ld a, [$ba28]
    cp $00
    ret z

    ld a, [$ba2c]
    ld b, a
    ld a, [$ba2d]
    inc a
    inc a
    ld [$ba2d], a
    cp b
    jp c, Jump_004_64b1

    xor a
    ld [$ba2d], a
    ld a, [$ba2b]
    cp $02
    jr nz, jr_004_6460

    ld a, [$cc59]
    ld hl, $63fa
    rst $00
    ld [bc], a
    ld h, h
    ld a, [de]
    ld h, h
    ld [hl-], a
    ld h, h
    ld c, d
    ld h, h
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $03
    jr nz, jr_004_6415

    ld a, $00

jr_004_6415:
    ld [$cc59], a
    jr jr_004_6460

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $02
    jr nz, jr_004_642d

    ld a, $01

jr_004_642d:
    ld [$cc59], a
    jr jr_004_6460

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $01
    jr nz, jr_004_6445

    ld a, $02

jr_004_6445:
    ld [$cc59], a
    jr jr_004_6460

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $00
    jr nz, jr_004_645d

    ld a, $03

jr_004_645d:
    ld [$cc59], a

jr_004_6460:
    call Call_000_0876
    ldh a, [$ff9c]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_004_646f

    add $60

jr_004_646f:
    sub $30
    ld [$ba2c], a
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_06ce
    cp $28
    jr c, jr_004_64a0

    cp $3c
    jr c, jr_004_6492

    jr jr_004_648b

jr_004_648b:
    ld a, $00
    ld [$ba2b], a
    jr jr_004_64b1

jr_004_6492:
    ld a, [$ba2b]
    cp $02
    jr z, jr_004_648b

    ld a, $01
    ld [$ba2b], a
    jr jr_004_64b1

jr_004_64a0:
    ld a, [$ba2b]
    cp $01
    jr z, jr_004_648b

    ld a, $02
    ld [$ba2b], a
    ld a, $20
    ld [$ba2c], a

Jump_004_64b1:
jr_004_64b1:
    ld a, [$ba2b]
    cp $02
    jr nz, jr_004_64be

    call Call_004_654e
    call Call_004_68a3

jr_004_64be:
    ld hl, $64c5
    ld a, [$ba2b]
    rst $00
    bit 4, h
    db $eb
    ld h, h
    inc b
    ld h, l
    ld a, [$ba28]
    cp $01
    jr z, jr_004_64dd

    cp $02
    jr z, jr_004_64e4

    ld a, $04
    call Call_000_18d2
    jr jr_004_651b

jr_004_64dd:
    ld a, $00
    call Call_000_18d2
    jr jr_004_651b

jr_004_64e4:
    ld a, $01
    call Call_000_18d2
    jr jr_004_651b

    ld a, [$ba28]
    cp $01
    jr z, jr_004_64dd

    cp $02
    jr z, jr_004_64fd

    ld a, $05
    call Call_000_18d2
    jr jr_004_651b

jr_004_64fd:
    ld a, $02
    call Call_000_18d2
    jr jr_004_651b

    ld a, [$ba28]
    cp $01
    jr z, jr_004_64dd

    cp $02
    jr z, jr_004_6516

    ld a, $06
    call Call_000_18d2
    jr jr_004_651b

jr_004_6516:
    ld a, $03
    call Call_000_18d2

jr_004_651b:
    ld hl, $c880
    ld a, [$cc1f]
    add a
    add a
    add a
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cc4e], a
    ld a, [hl+]
    ld [$cc4f], a
    ld a, [hl+]
    ld [$cc50], a
    ld a, [hl+]
    ld [$cc51], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$cc5d], a
    ret


Call_004_654e:
    ld hl, $6555
    ld a, [$cc59]
    rst $00
    ld e, l
    ld h, l
    ld a, [hl+]
    ld h, [hl]
    inc b
    ld h, a
    jp c, $fa67

    ld d, d
    call z, Call_000_07c6
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc52]
    add $07
    sub $07
    ld l, a
    ld a, [$cc53]
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
    ldh [$ffa5], a
    ld a, [$cc52]
    add $07
    add $07
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc54]
    ld l, a
    ld a, [$cc55]
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba30], a
    ld a, [hl+]
    ld [$ba31], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc54]
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc54]
    add $07
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc54]
    add $07
    sub $07
    ld l, a
    ld a, [$cc55]
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
    ldh [$ffa6], a
    ld a, [$cc52]
    add $07
    add $07
    sub $10
    ld l, a
    ld a, [$cc53]
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba30], a
    ld a, [hl+]
    ld [$ba31], a
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc54]
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc54]
    add $07
    sub $07
    ld l, a
    ld a, [$cc55]
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
    ldh [$ffa5], a
    ld a, [$cc54]
    add $07
    add $07
    ld l, a
    ld a, [$cc55]
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
    ld a, [$cc52]
    add $10
    ld l, a
    ld a, [$cc53]
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba30], a
    ld a, [hl+]
    ld [$ba31], a
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
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


    ld a, [$cc52]
    add $07
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc52]
    add $07
    add $07
    ld l, a
    ld a, [$cc53]
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
    ld a, [$cc52]
    add $07
    sub $07
    ld l, a
    ld a, [$cc53]
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
    ldh [$ffa6], a
    ld a, [$cc54]
    sub $02
    ld l, a
    ld a, [$cc55]
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
    push hl
    ldh a, [$ffa4]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba2e], a
    ld a, [hl+]
    ld [$ba2f], a
    pop hl
    push hl
    ldh a, [$ffa5]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba30], a
    ld a, [hl+]
    ld [$ba31], a
    pop hl
    ldh a, [$ffa6]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $d800
    add hl, de
    ld a, [hl+]
    ld [$ba32], a
    ld a, [hl+]
    ld [$ba33], a
    ret


Call_004_68a3:
    ld hl, $68aa
    ld a, [$cc59]
    rst $00
    or d
    ld l, b
    call nc, $f668
    ld l, b
    rla
    ld l, c
    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6938

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_004_6968

    ld a, [$ba33]
    and $02
    jr z, jr_004_6950

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6950

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jp z, Jump_004_6980

    ld a, [$ba33]
    and $02
    jr z, jr_004_6938

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6968

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_004_6938

    ld a, [$ba33]
    and $02
    jr z, jr_004_6980

    ret


    ld a, [$ba33]
    ld b, a
    ld a, [$ba31]
    or b
    and $02
    jr z, jr_004_6980

    ld a, [$ba2f]
    and $02
    ret nz

    ld a, [$ba31]
    and $02
    jr z, jr_004_6950

    ld a, [$ba33]
    and $02
    jr z, jr_004_6968

    ret


jr_004_6938:
    call Call_004_6998
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc54]
    add $01
    ld [$cc54], a
    ld a, [$cc55]
    adc $00
    ld [$cc55], a
    ret


jr_004_6950:
    call Call_004_6a4a
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc52]
    sub $01
    ld [$cc52], a
    ld a, [$cc53]
    sbc $00
    ld [$cc53], a
    ret


Jump_004_6968:
jr_004_6968:
    call Call_004_6aa3
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc52]
    add $01
    ld [$cc52], a
    ld a, [$cc53]
    adc $00
    ld [$cc53], a
    ret


Jump_004_6980:
jr_004_6980:
    call Call_004_69f1
    ldh a, [$ffa4]
    or a
    ret nz

    ld a, [$cc54]
    sub $01
    ld [$cc54], a
    ld a, [$cc55]
    sbc $00
    ld [$cc55], a
    ret


Call_004_6998:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_69e7

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [CameraXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_69e7

    ldh a, [$ffa7]
    cp e
    jr c, jr_004_69e7

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_69e7

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_69ec

jr_004_69e7:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_69ec:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_69f1:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6a40

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [CameraXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_004_6a40

    ldh a, [$ffa6]
    cp d
    jr nc, jr_004_6a40

    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6a40

    ldh a, [$ffa5]
    cp b
    jr nc, jr_004_6a45

jr_004_6a40:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6a45:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6a4a:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6a99

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [CameraXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_004_6a99

    ldh a, [$ffa4]
    cp b
    jr nc, jr_004_6a99

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6a99

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6a9e

jr_004_6a99:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6a9e:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6aa3:
    ld a, [$ba28]
    cp $01
    jr z, jr_004_6af2

    ld a, [$cc52]
    ld b, a
    ld a, [$cc52]
    add $08
    add $08
    ld c, a
    ld a, [$cc54]
    sub $08
    ld d, a
    ld a, [$cc54]
    add $08
    ld e, a
    ld a, [CameraXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_004_6af2

    ldh a, [$ffa5]
    cp c
    jr c, jr_004_6af2

    ldh a, [$ffa6]
    cp e
    jr nc, jr_004_6af2

    ldh a, [$ffa7]
    cp d
    jr nc, jr_004_6af7

jr_004_6af2:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_004_6af7:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_004_6afc:
    ld a, $00
    ld [$cc1f], a
    ld a, $00
    ld [$c88d], a
    ld a, [$b9a7]
    cp $ff
    jr nz, jr_004_6b14

    ld a, $00
    ld [$c880], a
    jr jr_004_6b42

jr_004_6b14:
    ld hl, $c886
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $54
    ld [hl], a
    ld hl, $6b30
    ld a, [$b9a7]
    rst $00
    ld l, $6c
    add hl, sp
    ld l, h
    ld b, h
    ld l, h
    ld c, a
    ld l, h

Jump_004_6b38:
    ld a, $01
    ld [$c880], a
    ld a, $14
    ld [$c881], a

jr_004_6b42:
    ld a, $01
    ld [$cc1f], a
    ld a, $00
    ld [$c8ad], a
    ld a, [$b9b3]
    cp $ff
    jr nz, jr_004_6b5a

    ld a, $00
    ld [$c8a0], a
    jr jr_004_6b88

jr_004_6b5a:
    ld hl, $c8a6
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $58
    ld [hl+], a
    ld a, $44
    ld [hl], a
    ld hl, $6b76
    ld a, [$b9b3]
    rst $00
    ld e, d
    ld l, h
    ld h, l
    ld l, h
    ld [hl], b
    ld l, h
    ld a, e
    ld l, h

Jump_004_6b7e:
    ld a, $01
    ld [$c8a0], a
    ld a, $15
    ld [$c8a1], a

jr_004_6b88:
    ld a, $02
    ld [$cc1f], a
    ld a, $00
    ld [$c8cd], a
    ld a, [$b9bf]
    cp $ff
    jr nz, jr_004_6ba0

    ld a, $00
    ld [$c8c0], a
    jr jr_004_6bce

jr_004_6ba0:
    ld hl, $c8c6
    ld a, $80
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $70
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $78
    ld [hl+], a
    ld a, $54
    ld [hl], a
    ld hl, $6bbc
    ld a, [$b9bf]
    rst $00
    add [hl]
    ld l, h
    sub c
    ld l, h
    sbc h
    ld l, h
    and a
    ld l, h

Jump_004_6bc4:
    ld a, $01
    ld [$c8c0], a
    ld a, $16
    ld [$c8c1], a

jr_004_6bce:
    ld a, $03
    ld [$cc1f], a
    ld a, $00
    ld [$c8ed], a
    ld a, [$b9cb]
    cp $ff
    jr nz, jr_004_6be6

    ld a, $00
    ld [$c8e0], a
    jr jr_004_6c14

jr_004_6be6:
    ld hl, $c8e6
    ld a, $28
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $34
    ld [hl], a
    ld hl, $6c02
    ld a, [$b9cb]
    rst $00
    or d
    ld l, h
    cp l
    ld l, h
    ret z

    ld l, h
    db $d3
    ld l, h

Jump_004_6c0a:
    ld a, $01
    ld [$c8e0], a
    ld a, $17
    ld [$c8e1], a

jr_004_6c14:
    call Call_004_4240
    call Call_004_4254
    call Call_004_4268
    call Call_004_427c
    xor a
    ld [$c88e], a
    ld [$c8ae], a
    ld [$c8ce], a
    ld [$c8ee], a
    ret


    ld a, $00
    ld [$b9a7], a
    call Call_004_6cde
    jp Jump_004_6b38


    ld a, $01
    ld [$b9a7], a
    call Call_004_6ce4
    jp Jump_004_6b38


    ld a, $02
    ld [$b9a7], a
    call Call_004_6cea
    jp Jump_004_6b38


    ld a, $03
    ld [$b9a7], a
    call Call_004_6cf0
    jp Jump_004_6b38


    ld a, $00
    ld [$b9b3], a
    call Call_004_6cde
    jp Jump_004_6b7e


    ld a, $01
    ld [$b9b3], a
    call Call_004_6ce4
    jp Jump_004_6b7e


    ld a, $02
    ld [$b9b3], a
    call Call_004_6cea
    jp Jump_004_6b7e


    ld a, $03
    ld [$b9b3], a
    call Call_004_6cf0
    jp Jump_004_6b7e


    ld a, $00
    ld [$b9bf], a
    call Call_004_6cde
    jp Jump_004_6bc4


    ld a, $01
    ld [$b9bf], a
    call Call_004_6ce4
    jp Jump_004_6bc4


    ld a, $02
    ld [$b9bf], a
    call Call_004_6cea
    jp Jump_004_6bc4


    ld a, $03
    ld [$b9bf], a
    call Call_004_6cf0
    jp Jump_004_6bc4


    ld a, $00
    ld [$b9cb], a
    call Call_004_6cde
    jp Jump_004_6c0a


    ld a, $01
    ld [$b9cb], a
    call Call_004_6ce4
    jp Jump_004_6c0a


    ld a, $02
    ld [$b9cb], a
    call Call_004_6cea
    jp Jump_004_6c0a


    ld a, $03
    ld [$b9cb], a
    call Call_004_6cf0
    jp Jump_004_6c0a


Call_004_6cde:
    ld a, $00
    call Call_000_18d2
    ret


Call_004_6ce4:
    ld a, $00
    call Call_000_18d2
    ret


Call_004_6cea:
    ld a, $01
    call Call_000_18d2
    ret


Call_004_6cf0:
    ld a, $04
    call Call_000_18d2
    ret


    ld hl, $b9a7
    ld b, $00
    ld a, [$b9a6]
    bit 4, a
    call nz, Call_004_6d84
    ld a, [$b9a6]
    bit 5, a
    call nz, Call_004_6d84
    ld a, [$b9a6]
    bit 6, a
    call nz, Call_004_6d84
    ld a, [$b9a6]
    bit 7, a
    call nz, Call_004_6d84
    ld a, b
    cp $04
    call c, Call_004_6dc7
    xor a
    ld [$b9a4], a
    ld a, $00
    ldh [$ffa5], a
    ld a, $00
    ldh [$ffa4], a
    call Call_004_6df1
    ld a, $01
    ldh [$ffa4], a
    call Call_004_6df1
    ld a, $02
    ldh [$ffa4], a
    call Call_004_6df1
    ld a, $03
    ldh [$ffa4], a
    call Call_004_6df1
    xor a
    ld [$b9a6], a
    ld hl, $b9a5
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    ld a, [hl]
    jr z, jr_004_6d57

    xor $80
    ret nz

jr_004_6d57:
    ldh a, [$ffa5]
    cp $04
    jr c, jr_004_6d5f

    inc [hl]
    ret


jr_004_6d5f:
    ld hl, $b9a7
    ld a, [hl]
    cp $ff
    jr z, jr_004_6d7a

    ld hl, $b9b3
    ld a, [hl]
    cp $ff
    jr z, jr_004_6d7a

    ld hl, $b9bf
    ld a, [hl]
    cp $ff
    jr z, jr_004_6d7a

    ld hl, $b9cb

jr_004_6d7a:
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$b9a5], a
    ret


Call_004_6d84:
    ld a, b
    cp $04
    ret z

    ld d, h
    ld e, l
    ld c, b

jr_004_6d8b:
    ld a, [hl]
    cp $02
    jr z, jr_004_6da7

    cp $03
    jr z, jr_004_6da7

    inc c
    ld a, c
    cp $04
    jr z, jr_004_6da4

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_004_6d8b

jr_004_6da4:
    ld h, d
    ld l, e
    ret


jr_004_6da7:
    inc hl
    inc hl
    ld a, [hl]
    cp $00
    jr z, jr_004_6dbb

    dec hl
    inc [hl]
    ld a, [hl]
    cp $03
    jr c, jr_004_6dba

    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_004_6dbb

jr_004_6dba:
    inc hl

jr_004_6dbb:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc b
    ret


Call_004_6dc7:
jr_004_6dc7:
    ld a, b
    cp $04
    ret z

    ld a, [hl]
    cp $02
    jr z, jr_004_6ddf

    cp $03
    jr z, jr_004_6ddf

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc b
    jr jr_004_6dc7

jr_004_6ddf:
    inc hl
    xor a
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc b
    jr jr_004_6dc7

Call_004_6df1:
    ldh a, [$ffa4]
    ld hl, $6e84
    call Call_000_0743
    ld a, [hl]
    cp $ff
    jr z, jr_004_6e78

    ldh a, [$ffa5]
    inc a
    ldh [$ffa5], a
    ld a, [hl]
    cp $00
    ret z

    cp $01
    jr z, jr_004_6e69

    ld a, $02
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    ret z

    ldh a, [$ffa4]
    ld hl, $6e1d
    rst $00
    dec h
    ld l, [hl]
    ld l, $6e
    scf
    ld l, [hl]
    ld c, h
    ld l, [hl]
    ld a, [$b9a4]
    set 0, a
    ld [$b9a4], a
    ret


    ld a, [$b9a4]
    set 1, a
    ld [$b9a4], a
    ret


    ld a, [$b9a4]
    set 2, a
    ld [$b9a4], a
    ld a, [$b9a3]
    or a
    ld a, $01
    ld [$b9a3], a
    ld [$b88f], a
    ret


    ld a, [$b9a4]
    set 3, a
    ld [$b9a4], a
    ldh a, [$ffa4]
    ld hl, $6e84
    call Call_000_0743
    ld a, [hl]
    cp $03
    ret nz

    ld a, [$b9a4]
    set 4, a
    ld [$b9a4], a
    ret


jr_004_6e69:
    inc hl
    ld a, [hl]
    cp $07
    jr c, jr_004_6e76

    xor a
    ld [hl], a
    dec hl
    ld a, $02
    ld [hl], a
    ret


jr_004_6e76:
    inc [hl]
    ret


jr_004_6e78:
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c

Call_004_6e8c:
    ld a, [CurrentHour]
    cp $06
    ret c

    ld a, [$b9a6]
    bit 0, a
    jr z, jr_004_6e9e

    set 4, a
    ld [$b9a6], a

jr_004_6e9e:
    ld a, [$b9a6]
    bit 1, a
    jr z, jr_004_6eaa

    set 5, a
    ld [$b9a6], a

jr_004_6eaa:
    ld a, [$b9a6]
    bit 2, a
    jr z, jr_004_6eb6

    set 6, a
    ld [$b9a6], a

jr_004_6eb6:
    ld a, [$b9a6]
    bit 3, a
    ret z

    set 7, a
    ld [$b9a6], a
    ret


    nop
    inc b
    ld l, e
    inc bc
    ld [bc], a
    ld e, $00
    inc bc
    add hl, bc
    ld [bc], a
    ld bc, $1d21
    nop
    dec hl
    ld [hl+], a
    ld de, $020a
    ld sp, $001d
    ld [hl-], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    ld l, [hl]
    rlca
    ld b, $23
    inc h
    dec h
    inc hl
    nop
    ld h, $41
    inc de
    nop
    db $fd
    ld b, d
    dec bc
    inc b
    inc sp
    inc [hl]
    dec [hl]
    ld b, a
    ld c, b
    ld l, b
    rst $38
    ld l, c
    ld l, d
    ld l, e
    ld [hl], $13
    inc de
    dec bc
    inc c
    rst $28
    ld d, b
    ld d, c
    ld d, d
    db $10
    dec bc
    ld b, $43
    ld b, h
    ld b, l
    rst $38
    ld d, a
    ld e, b
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld b, [hl]
    inc de
    ld a, a
    inc de
    dec de
    inc e
    ld h, b
    ld h, c
    ld h, d
    jr nz, jr_004_6f23

    ld [$53db], sp
    ld d, h
    inc d
    nop
    ld d, [hl]
    inc de
    stop
    ld [hl], b

jr_004_6f23:
    ld [hl], c
    cp e
    ld [hl], d
    jr nc, jr_004_6f33

    ld a, [bc]
    dec d
    ld d, $17
    inc hl
    nop
    jr @-$60

    ld bc, $6302

jr_004_6f33:
    ld h, h
    ld h, l
    ld b, b
    dec bc
    inc c
    ld h, b
    inc bc
    add hl, sp
    or a
    ld a, [hl-]
    dec sp
    inc a
    ret nc

    inc bc
    dec bc
    inc c
    ld hl, $1304
    db $fd
    inc de
    dec bc
    ld c, $2c
    inc de
    inc de
    ld e, c
    ld e, d
    ld e, e
    cp a
    ld e, h
    inc de
    add hl, hl
    ld a, [hl+]
    dec de
    inc e
    rrca
    ld [bc], a
    nop
    ld a, c
    ld bc, $03a1
    and c
    rlca
    ld e, c
    ld e, d
    ld c, e
    ld c, d
    ret nz

    ld [bc], a
    ld [hl], h
    ld b, b
    inc c
    dec bc
    ld [de], a
    ld e, h
    ld [hl], b
    add hl, bc
    add hl, hl

jr_004_6f6f:
    ld a, [hl+]
    dec hl
    ld [hl], b
    inc b
    db $db
    ld e, d
    ld e, e
    ld de, $1b02
    dec l
    dec bc
    inc d
    dec a
    ld a, $ef
    ccf
    ld a, h
    ld e, c
    ld e, d
    ld h, b
    ld [bc], a
    add hl, hl
    inc l
    ld e, c
    xor $70
    ld b, $13
    dec c
    dec e
    dec bc
    ld d, $4d
    ld c, [hl]
    ld c, a
    ld a, c
    ld a, l
    inc de
    ld b, $a1
    inc b
    inc de
    inc de
    ld c, $0f
    dec bc
    jr jr_004_6f6f

    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl]
    and l
    dec bc
    ld hl, $1e10
    rra
    ld e, $0b
    ld a, [de]
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, a
    and b
    dec bc
    inc sp
    ld [$1230], sp
    db $db
    ld l, $2f
    ld a, [bc]
    inc e
    inc bc
    ld [de], a
    inc de
    nop
    ld [hl], e
    ld [hl], h
    inc bc
    ld [hl], h
    ld [hl], l
    or h
    nop
    ld a, [bc]
    ld [hl+], a
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

jr_004_6fef:
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
    ld [$ff2d], sp
    inc l
    nop
    adc l
    ld a, h
    dec hl
    nop
    rst $38
    ld [hl-], a
    ld [bc], a
    inc de
    nop
    sbc $e3
    ld [bc], a
    pop hl
    ld h, b
    pop bc
    ld a, h
    ld hl, $c300
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld c, d
    ld a, a
    ld bc, $ffff
    ld b, h
    rst $30
    add c
    rst $38
    jr c, jr_004_6fef

    call nz, $ffbb
    add d
    ld b, h
    add d
    ld bc, $7e4b
    ld bc, $fffe
    ld b, l
    or $81
    cp $19
    cp $80
    rst $38
    rst $38
    ld [de], a
    sbc $80
    rst $38
    ld bc, $0182
    nop
    cp $20
    nop
    add d
    ld bc, $8282
    ld b, l
    ld b, [hl]
    cp d
    rst $38
    cp b
    rst $00
    nop
    nop
    add b
    nop
    ldh [rP1], a
    sub a
    ld hl, sp+$00
    cp $40
    nop
    ldh [$ffc0], a
    nop
    dec c
    add hl, bc
    ld a, b
    rst $38
    add a
    rst $08
    ld c, b
    add $42
    db $ec
    ld l, b
    sbc $ff
    ld a, [hl-]
    or [hl]
    ld [hl], c
    or a
    ld [hl], e
    or a
    ld [hl], e
    ld e, $ff
    pop hl
    di
    ld [de], a
    ld [hl], c
    ld d, b
    dec sp
    ld a, [de]
    ld [hl], a
    rst $38
    ld c, [hl]
    db $ed
    call c, Call_000_1c2d
    dec l
    inc e

jr_004_7087:
    rst $38
    rst $38
    nop
    ret nz

    ld b, b
    ldh [$ff60], a
    db $f4
    dec bc
    or [hl]
    rst $38
    ld a, a
    cp c
    ld h, l
    ldh [$ff1f], a
    xor [hl]
    ld a, l
    rst $38
    rst $38
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ccf
    ret nz

    rst $30
    ld a, a
    cp $9b
    cp $cf
    jr nc, jr_004_7087

    cp $01
    add hl, bc
    ld sp, hl
    rst $38
    ld b, b
    ld b, $40
    nop
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    ld e, a
    and b
    ld e, h
    rst $38
    ld sp, $69f1
    jp hl


    rst $38
    ld b, $86
    ret z

    ld hl, sp+$45
    rst $00
    ret nc

    ldh a, [rIE]
    db $ed
    ld d, $cd
    or $bd

jr_004_70d0:
    or $8d
    or [hl]
    rst $38
    dec c
    sub [hl]
    dec e
    ld [hl], $8d
    or $0d
    ld d, $ff
    rst $38
    nop
    ld e, l
    cp [hl]
    db $fd
    cp [hl]
    ld [hl], l
    cp [hl]
    rst $38
    ld a, c
    cp [hl]
    pop de
    cp [hl]
    ld l, c
    cp [hl]
    push de
    cp [hl]
    add e
    or c
    ld a, $2b
    nop
    nop
    db $10
    db $f4
    rrca
    add d
    db $10
    ld b, $0f
    jr @-$01

    rst $38
    inc bc
    ld c, $95
    ld [$4fb2], a
    ld e, e
    db $fc
    rst $38
    jr c, jr_004_70d0

    jp z, Jump_000_253d

    jp c, Jump_004_77a9

    cp a
    ld [hl], e
    adc h
    sub $4e
    push de
    ld c, l
    ld b, e
    nop
    rst $18
    rst $38
    ld b, b
    sub b
    ld l, a
    rst $38
    nop
    ld d, [hl]
    ld l, [hl]
    sub l
    rst $30
    xor l
    sub $ee
    ld b, c
    nop
    rst $38
    nop
    db $10
    rst $28
    rst $38
    rst $38
    nop
    xor e
    or a
    ld a, [hl+]
    ld [hl], $ab
    or a
    ld a, a
    ld [$ebf6], a
    rst $30
    rst $38
    nop
    ld [$0040], sp
    rst $28
    ld l, e
    ld [hl], d
    xor e
    or d
    ld b, e
    nop
    ei
    ld [bc], a
    add hl, bc
    rst $30
    or $ff
    nop
    ld b, c
    rrca
    or l
    ld [hl], e
    cp l
    ld a, e
    rst $38
    sbc l
    ld a, e
    ld a, l
    add e
    inc sp
    db $fc
    add h
    rst $38
    ei
    xor l
    sbc h
    ld hl, $af00
    sbc [hl]
    and a
    sbc [hl]
    cp $ff
    pop bc
    call nz, Call_000_113f
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    rst $18
    rrca
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    pop bc
    dec c
    ld e, b
    or a
    rst $38
    jr nc, @-$2f

    ld l, l
    cp [hl]
    rst $18
    jr nz, jr_004_71c0

    ld a, $ff
    ld [hl], a
    adc $01
    cp $ff
    nop
    ld d, $ed
    ei
    inc c
    di
    ld bc, $ff09
    nop
    dec c
    ld c, $fd
    rst $38
    ld b, $0d
    or $0d
    or $fd
    ld b, $80
    rst $38
    add b
    ld d, d
    db $d3
    ld [$8588], sp
    add a
    dec de
    rst $38
    ei
    xor a
    xor a
    sub h
    ld e, a
    ld c, b
    ld hl, sp+$6d
    rst $38
    halt
    adc l
    or [hl]
    ld l, l
    halt
    dec c
    or $2d
    rst $38
    ld [hl], $8d
    sub [hl]
    ld c, l
    or $4d

jr_004_71c0:
    halt
    ld l, c
    cp $80
    rrca
    ld c, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, l
    rst $38
    cp [hl]
    ld h, e
    sbc h
    ld d, l
    xor d
    rst $38
    nop
    ld bc, $fe7f
    ld bc, $7dfe
    cp $45
    add $23
    nop
    cp [hl]
    ld bc, $8322
    ld a, h
    xor e
    ld a, h
    sub e
    ld b, h
    nop
    rst $38
    ld a, a
    nop
    ret nc

    ld b, b
    rst $18
    ld b, b
    ret nc

    ld c, a
    ld hl, $c000
    add c
    nop
    ld [bc], a
    ld [de], a
    ld [hl], h
    inc h
    inc hl
    ld c, $09
    ld bc, $0e21
    add hl, bc
    nop
    rst $08
    ld sp, hl
    nop
    add hl, bc
    ldh a, [rNR42]
    nop
    add c
    nop
    ld d, d
    rst $28
    rst $38
    sub $ee
    rst $18
    ldh [$ff33], a
    ld c, a
    ret c

    jr c, @+$01

    jp $c843


    cp a
    add sp, -$28
    ld c, b
    rst $30
    rst $38
    ld l, l
    rst $30
    db $fd
    rlca
    rst $08
    pop af
    ld c, l
    ld c, d
    ld a, a
    add e
    db $fd
    ld c, l
    adc $1f
    ld a, c
    sub c
    db $10
    add hl, hl
    rst $38
    ld e, l
    db $fd
    ld [bc], a
    rst $38
    ld a, [hl-]
    ld a, [$ffd3]
    rst $38
    inc b
    db $fc
    or e
    di
    jr @+$01

    ld [hl], b
    ld hl, sp-$01
    rra
    rra
    add sp, -$18
    ld d, [hl]
    ld d, a
    ld e, $1e
    rst $38
    ret nz

    ret nz

    ld a, [bc]
    ld a, [bc]
    adc d
    rst $38
    db $db
    ei
    rst $38
    and h
    and h
    ld e, l
    ld e, l
    ldh a, [$fff0]
    dec bc
    rrca
    rst $38
    jr nz, jr_004_7283

    rst $18
    rst $18
    jr @+$01

    jp nz, $ffff

    ld b, b
    ld e, a
    xor b
    rst $38
    rlca
    rlca
    ld [$ef0f], sp
    ret


    ret


    db $10
    rra
    add hl, bc
    ld de, $2cd7
    ld a, a
    rst $38
    add b
    sub l
    ld [hl], l
    rst $38
    nop
    add c

jr_004_7283:
    ld bc, $afff
    nop
    ei
    ld a, a
    db $e4
    ld [bc], a
    ld hl, $403d
    ld de, $cefd
    ret nz

    ld [de], a
    add hl, de
    cp $63
    add b
    ld c, $e1
    cpl
    ld bc, $0efe
    ld bc, $0101
    cp $41
    ld [bc], a
    ld bc, $0f85
    dec b
    db $10
    add l
    rrca
    xor [hl]
    dec b
    db $10
    ret nc

    ld c, a
    jp nc, Jump_000_0024

    pop de
    jr nz, jr_004_72b5

jr_004_72b5:
    db $d3
    ld a, l
    ld c, a
    ld bc, $d30d
    db $eb
    ld d, $6e
    sub e
    ld b, b
    nop
    rst $08
    db $d3
    db $eb
    ld d, l
    ld l, l
    ld bc, $210d
    nop
    call z, $fff6
    xor l
    or a
    ld l, d
    ld [hl], d
    xor e
    or e
    add hl, bc
    ldh a, [rIE]
    add hl, hl
    ldh a, [$ff89]
    ret nc

    add hl, hl
    ld [hl], b
    xor c
    ldh a, [rIE]
    ret


    ret nc

    jp hl


    ldh a, [$ff09]
    ld d, b
    pop hl
    ld hl, $c3ff
    cp a
    xor [hl]
    ld a, [hl]
    ret c

    jr c, @-$48

    adc a
    rst $38
    rst $18
    ldh [$ff9c], a
    xor h
    call c, $9fec
    sbc d
    rst $38
    add e
    db $fd
    dec c
    ld c, $ff
    ld hl, sp-$0a
    ld c, $ff
    ld c, [hl]
    ret nc

    ld l, $36
    dec c
    dec d
    ld c, l
    rst $38
    rst $38
    db $10
    ldh a, [$ff8b]
    adc a
    ld a, [bc]
    ld a, [$fd21]
    rst $18
    ld b, h
    ld a, h
    inc hl
    db $e3
    sub l
    and b
    scf
    jr nc, jr_004_734e

    rst $38
    add h
    add h
    ld [hl], b
    ld [hl], b
    add c
    add c
    ld a, [de]
    ld a, [de]
    rst $38
    ldh a, [$fff0]
    add hl, hl
    add hl, hl
    ld d, l
    ld d, l
    adc d
    adc d
    rst $38
    nop
    nop
    dec b
    dec b
    ld b, b
    ld b, b
    inc b
    inc b
    rst $38
    ld bc, $9e01
    sbc [hl]
    ld hl, $4833
    ld c, a
    rst $38
    and d
    and e
    ld c, b
    rst $38
    jr nz, jr_004_736a

    inc d
    rla
    rst $28
    ldh [$ffe7], a

jr_004_734e:
    ld a, [bc]
    dec sp
    nop
    add hl, sp
    cp $46
    pop af
    rst $38
    sbc l
    jp $d92d


    cp l
    db $db
    cpl
    set 7, a
    xor a
    db $db
    ld e, a
    ld h, b
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $30
    rst $20

jr_004_736a:
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $28
    rst $38
    ld e, l
    rst $28
    ld a, [$ff07]
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
    rst $38
    rst $38
    rst $30
    ld bc, $a5fe
    cp $69
    ld a, [hl]
    ld e, a
    dec a
    ld a, $2d
    ld l, [hl]
    sbc c
    ld [bc], a
    ld de, $c07d
    rra
    jr @-$3d

    inc h
    ld h, c
    cpl
    ld bc, $832f
    ld a, h
    ld hl, $b200
    cpl
    ld [hl-], a

jr_004_73a4:
    jr nc, jr_004_73dd

    jp nc, $d34e

    ld h, b
    rrca
    db $d3
    ld c, a
    add c
    nop
    pop bc
    nop
    rst $28
    sbc e
    xor e
    ld e, l
    ld l, l
    ld b, c
    nop
    sbc [hl]
    xor [hl]
    db $dd
    db $fd
    db $ed
    ld bc, $6e0d
    halt
    db $ed
    push af
    ld l, [hl]
    halt
    rst $28
    ld c, h
    ld d, h
    ld l, $36
    ld b, c
    nop
    dec c
    dec d
    ret


    rst $38
    ret nc

    ld c, c
    ld d, b
    xor c
    or b
    ret


    ret nc

    xor c
    ld a, a
    or b
    adc c
    sub b
    xor c

jr_004_73dd:
    or b
    add hl, hl
    jr nc, jr_004_73f0

    inc de
    cp $0b
    inc de
    inc bc
    rst $38
    ld b, [hl]
    add $95
    rst $38
    ld b, e
    rst $38
    ei
    inc a
    db $fc

jr_004_73f0:
    ld b, c
    pop de
    inc bc
    rst $38
    nop
    rst $38
    rst $28
    sub $d6
    jr nc, @+$32

    jp Jump_000_38c3


    rst $38
    cp b
    rlca
    rlca
    ei
    ei
    inc b
    inc b
    di
    rst $38
    di
    or c
    or c
    ld c, $0e
    xor c
    xor c
    ld a, h
    rst $38
    ld a, h
    rst $00
    rst $00
    jr nc, @+$32

    adc $ce
    jr c, @+$01

    jr c, jr_004_73a4

    adc a
    inc de
    inc de
    adc $cf
    cp b
    rst $38
    rst $38
    inc h
    ccf
    ld c, c
    ld c, a
    ld [bc], a
    inc bc
    jr c, @+$01

    ccf
    ld [hl], l
    ld e, e
    dec [hl]
    reti


    ld l, l
    res 5, l
    rst $38
    db $db
    daa
    db $db
    xor [hl]
    db $db
    ld [hl], $db
    or [hl]
    rst $38
    db $db
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
    cp a
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $30
    ld bc, $454c
    rst $38
    or $82
    db $fd
    inc e
    ld a, [$f589]
    ld d, $ff
    adc $a5
    db $dd
    ld a, a
    add b
    add b
    ld b, b
    ld bc, $c1df
    ld [de], a
    ld d, d
    ld bc, $4141
    nop
    ld [bc], a
    ld b, d
    rst $38
    rst $38
    nop
    rrca
    adc a
    dec hl
    xor a
    rrca
    sbc a
    rst $38
    dec e
    sbc a
    ld a, [bc]
    adc a
    dec [hl]
    cp a
    ld a, [bc]
    sbc a
    cp a
    rst $18
    ld b, b
    ret nz

    ld b, b
    rst $18
    ld e, a
    ld hl, $df30
    and b
    ld [hl+], a
    jr nc, @+$06

    ld b, d
    ld d, e
    nop
    ld sp, $0c52
    ld d, [hl]
    ei
    ldh [rOBP1], a
    ei
    ld a, a
    ld a, [$02fb]
    dec bc
    ldh a, [c]
    ei
    ldh a, [c]
    ld b, b
    nop
    ld sp, hl
    ld [bc], a
    rrca
    inc de
    dec bc
    inc de
    ld [$07d8], sp
    rst $38
    add c
    rst $38
    rst $38
    inc de
    rst $38
    ld b, b
    rst $38
    ld bc, $60fd
    rst $38
    rst $38
    ld b, $ff
    cpl
    cpl
    rra
    rra
    ret c

    rst $38
    ld hl, sp+$05
    add a
    rrca
    rst $38
    add d
    add d
    rlca
    rst $38
    rst $38
    jr nz, @+$01

    adc $cf
    jr nz, jr_004_7502

    rst $30
    rst $38
    rst $38
    jr z, jr_004_750f

    db $dd
    rst $38
    cp h
    cp h
    set 7, a
    rlc b
    rst $38
    jp nc, $18f3

    rra
    ld c, a
    rst $28
    rst $38
    ld d, h
    ld d, a
    ldh [$ffa0], a
    ld [bc], a
    inc c
    rst $38
    ld [hl+], a
    rst $28
    rst $38
    ld a, [hl]

jr_004_7502:
    ld e, e
    inc [hl]
    nop
    db $10
    xor [hl]
    db $db
    ld l, $ff
    db $db
    and h
    db $db
    inc [hl]
    db $db

jr_004_750f:
    and h
    reti


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
    ld [$6ef7], sp
    rst $38
    ld e, [hl]
    dec h
    db $dd
    ld l, [hl]
    sbc $a5
    db $dd
    ld l, $de
    ld b, h
    nop
    dec h
    ld h, l
    ld a, [bc]
    ld c, d
    ld b, c
    nop
    dec d
    ld d, l
    rst $38
    ld c, d
    ld a, [bc]
    ld d, l
    dec d
    ld l, d
    ld a, [hl+]
    dec [hl]
    cp a
    rst $38
    ld a, [de]
    sbc a
    dec h
    xor a
    ld e, d
    rst $18
    or h

jr_004_755b:
    ccf
    db $fd
    jp nc, Jump_004_5500

    add b
    ld a, a
    ld h, l
    ld e, [hl]
    add hl, hl
    jp c, Jump_004_79ff

    jp c, $d2b3

    dec [hl]
    call nc, $dca9
    rst $38
    inc hl
    sbc $9f
    ldh [rSC], a
    db $fd
    cpl
    db $fd
    rst $38
    ld c, e
    reti


    jp z, Jump_004_7ad8

    ld hl, sp+$77
    db $fd
    ei
    ld [bc], a
    db $fd
    pop hl
    ld b, e
    and e
    cp $11
    ld e, h
    add hl, bc
    rst $28
    ld c, h
    rst $38
    cp $6b
    ld [bc], a
    ld [hl], $7f
    ret nz

    ld h, b
    rst $38
    sub l
    ld b, a
    xor b
    adc b
    ld d, b
    adc d
    ld h, b
    or d
    rst $38
    ld b, b
    ret c

    jr nz, jr_004_755b

    ld b, b
    db $fd
    ld [bc], a
    ld c, $ff
    ld d, e
    rlca
    xor b
    add d
    ld d, l
    ld b, d
    xor l
    dec sp
    rra
    inc b
    rla
    add hl, bc
    dec de
    inc b
    rrca
    ld hl, $340b
    rrca
    ld [bc], a
    cp $0b
    ld [hl], $64
    ld c, e
    dec h
    jp c, $d16e

    or b
    ei
    rst $08
    db $10
    jr nz, jr_004_75d9

    db $10
    rst $08
    adc a
    ldh a, [$ff1f]
    cp a
    ldh [$fff0], a
    rrca
    db $10
    rst $28
    jr nc, jr_004_75fc

    nop

jr_004_75d9:
    rst $38
    ld a, a
    nop
    ld hl, sp+$07
    rrca
    ldh a, [rNR23]
    rst $30
    dec h
    nop
    db $fc
    rrca
    ld a, [de]
    ld bc, $6f10
    sbc $a7
    call c, $db2d
    rst $38
    xor d
    rst $10
    dec [hl]
    rst $08
    cp a
    ret nz

    rst $38
    add b
    ld [hl], a
    add b
    ld a, a
    ld a, a

jr_004_75fc:
    or d
    cpl
    xor d
    rst $38
    ld e, l
    ld d, d
    ld e, a
    sub $e2
    ld l, a
    nop
    ret nc

    ld b, b
    ld [hl], b
    ld d, h
    and d
    ld h, l
    ld h, b
    nop
    rrca
    rra
    nop
    ret nz

    ret nz

    dec b
    ld h, c
    ld b, e
    ld [hl], h
    db $e3
    ld [hl-], a
    ld bc, $b762
    ld bc, $0600
    ldh [$ff6d], a
    inc bc
    inc bc
    dec b
    ld h, e
    ret z

    rst $38
    inc h
    add a
    ld d, b
    ret nz

    ld a, [hl+]
    or b
    ld c, l
    adc a
    rst $38
    ld [hl], b
    ldh [$ff9f], a
    ccf
    ret nz

    add b
    rst $38
    daa
    rst $38
    ld c, b
    jp nz, $8715

    jr z, jr_004_765a

    ld h, l
    ldh [c], a
    ld a, a
    dec e
    dec c
    ldh a, [c]
    ld sp, hl
    rlca
    rst $20
    jr jr_004_765a

    ld hl, $0bf8
    inc [hl]
    rrca
    ld [bc], a
    dec bc
    ld [hl], $4a
    ld a, a
    add c
    ld a, a
    db $e4
    rst $38
    sub a

jr_004_765a:
    ld sp, hl
    rst $00
    cp h
    sbc e
    cp h
    db $db
    or $ff
    jp nc, $dbf4

    cp $db
    or l
    sbc e
    or h
    rst $38
    db $d3
    push af
    db $db
    db $fc
    db $db
    xor h
    db $db
    cp [hl]
    rst $38
    jp c, $dbb4

    cp [hl]
    db $db
    dec a
    sbc e
    inc h
    rst $38
    db $d3
    ld h, l
    db $db
    ld l, h
    db $db
    inc a
    db $db
    ld l, $ff
    jp c, $9b24

    ld h, $d3
    and l

jr_004_768c:
    ld e, e
    ld [hl], h
    rst $30
    adc e
    dec c
    di
    ld b, c
    ld de, $f61a
    ldh a, [rIF]
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

jr_004_76b4:
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

jr_004_76e0:
    ccf
    xor a
    jr nc, jr_004_768c

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_004_76ec

    rst $38
    rst $38

jr_004_76ec:
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
    jr nc, jr_004_76b4

    jr nc, jr_004_7725

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

jr_004_7725:
    ld e, a
    and b
    rst $38
    ld e, h
    rst $38
    scf
    ldh a, [rBCPS]
    rst $20
    db $10
    adc b
    rst $38
    ret nc

    ldh [$ff60], a
    ret nc

    ldh [$ffc0], a
    db $ed
    ld d, $ff
    call $bdf6
    or $8d
    ld [hl], $4d
    sub [hl]
    rst $38
    ld e, l
    ld [hl], $2d
    ld d, [hl]
    dec l
    ld d, $a0
    add b

jr_004_774b:
    rst $38
    ld h, b
    ret nc

    jr nz, jr_004_76e0

    sub b
    adc b
    jr jr_004_774b

    rst $38
    xor a
    xor b
    sub h
    ld e, a
    ld c, b
    ld hl, sp+$2d
    ld d, $fe
    ld h, b
    ld bc, $4d56
    or [hl]
    xor l
    ld [hl], $8d
    sub [hl]
    rst $38
    ld c, l
    or $4d
    halt
    ld c, d
    ld a, a
    ld bc, $ffff
    ld b, h
    rst $30
    add e
    db $fc
    dec e
    db $e3
    rst $30
    adc a
    rst $28
    or a
    ld h, a
    rst $30
    ld l, a
    ld bc, $7f01
    ret nz

    rst $38
    rst $38
    rra
    rst $38
    rst $18
    rst $28
    rst $08
    rst $28
    rst $18
    cp a
    db $fd
    rst $18
    ld bc, $fc02
    inc bc
    rst $38
    ld hl, sp-$01
    ei
    cp a
    rst $30
    di
    push de
    ei
    db $fd
    ei
    inc bc
    inc bc
    pop bc
    rst $38
    ccf
    ld hl, sp-$39
    cp $f1
    rst $28
    and $ef

Jump_004_77a9:
    rst $38
    or $00
    nop
    rrca
    nop
    db $10
    rrca
    scf
    rst $38
    ld [$173e], sp
    ld e, a
    ld a, $7f
    ld b, $7f
    push af
    ld a, [hl-]
    ld hl, $8012
    ld b, d
    nop
    ld e, [hl]
    add b
    xor c
    sbc $fb
    call $e1fe
    ld bc, $0877
    cp $57
    ld a, a
    ld a, a
    ld e, $ff
    ld l, [hl]
    ld e, a
    ld [hl], $f7
    ld l, a
    db $e3
    ld bc, $9eff
    nop
    ld l, l
    sbc [hl]
    cp a
    cp $7f
    cp $ff
    cp $fc
    nop
    nop
    ld bc, $0200
    ld bc, $07ff
    nop
    dec b
    inc bc
    dec bc
    rlca
    dec de
    rrca
    rst $38
    rrca
    rlca
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    rst $38
    ldh [rP1], a
    ret nc

    ldh [$ffea], a
    ldh a, [$ff8d]
    ldh a, [c]
    rst $38
    ld a, a
    cp $03
    nop
    inc b
    inc bc
    rrca
    nop
    rst $38
    dec bc
    rlca
    ld a, a
    rlca
    sbc a
    ld a, c
    cp [hl]
    ld a, a
    rst $38
    cp a
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, Call_004_7f00
    xor [hl]
    call c, $ecde
    db $fd
    ldh [c], a
    rst $00
    jr nz, @+$06

    rst $38
    nop
    nop
    ld c, $00
    ld de, $2f0e
    db $10
    ld a, a
    ld [hl], $0f
    ld e, a
    ccf
    ld a, a
    cpl
    rst $18
    nop
    ld b, $fe
    ld b, e
    ld a, [de]
    add d
    nop
    ld e, l
    add d
    and a
    sbc $8f
    db $fd
    cp $e1
    ld bc, $003f
    dec l
    ld e, $5e
    dec a
    rst $30
    rst $18
    ld l, l
    ld a, l
    nop
    ld [bc], a
    jr nc, jr_004_785b

jr_004_785b:
    ld c, b
    jr nc, @+$01

    xor b
    ld [hl], b
    ld a, d
    ldh a, [$fffd]
    ldh a, [c]
    db $db
    and $ff
    rst $38
    or $f5
    cp $bf
    cpl
    cp [hl]
    ld l, a
    rst $38
    rst $10
    ld l, a
    rst $10
    ld h, a
    or [hl]
    cpl
    or a
    ld l, a
    rst $38
    sbc [hl]
    ld l, a
    cp d
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    rst $38
    and [hl]
    rst $08
    rst $20
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $38
    rst $20
    rst $18
    db $eb
    rst $18
    rst $18
    ei
    rst $38
    ei
    db $fd
    rst $10
    and b
    rrca
    push de
    ei
    ld b, l
    ei
    dec b
    ei
    rst $38
    sub [hl]
    ei
    db $fd
    db $f4
    db $fd
    or $ff
    or $f7
    db $ed
    and $ad
    add b
    nop
    cp a
    or $eb
    or $df
    cp e
    ld b, a
    rst $38
    ld a, a
    rst $38
    add b
    add hl, bc
    ld e, a
    ccf
    rst $38
    ld hl, $7f1e
    ld hl, $0031
    ld a, [$fffc]
    pop af
    cp $fd
    cp $7d
    cp $3a
    db $fc
    rst $38
    add h
    ld a, b
    ld hl, sp-$80
    add b
    nop
    rst $28
    rra
    cp $e6
    ld bc, $3820
    db $10
    stop
    cp $fc
    rst $38
    ld a, [$74fc]
    ld hl, sp+$08
    ldh a, [$ffb0]
    ld b, b
    rst $38
    ldh [$ff80], a
    ldh [rLCDC], a
    ret nz

    nop
    rra
    rrca
    rst $38
    cpl
    rra
    cpl
    rra
    dec l
    rra
    inc d
    rrca
    rst $38
    inc c
    inc bc
    rrca
    inc b
    ld b, $00
    rst $38
    cp $fd
    rst $38
    nop
    inc b
    ldh a, [c]
    db $fc
    sbc $e0
    inc c
    ldh a, [rIE]
    db $fc
    ld [$0008], sp
    ld e, a
    ccf
    ld e, a
    ccf
    sub a
    dec l
    rra
    db $10
    ldh [rSB], a
    inc bc
    and e
    ld [hl+], a
    ldh [c], a
    ld bc, $ffdc
    ldh [$ff08], a
    ldh a, [$fff0]
    nop
    ldh [rLCDC], a
    ld b, b
    rst $28
    nop
    ld a, a
    cpl
    cp a
    ld h, b
    ld de, $7f97
    ld b, e
    rst $38
    ccf
    jr nc, jr_004_7948

    ccf
    db $10
    jr jr_004_793d

jr_004_793d:
    dec c
    rst $38
    cp $f1
    cp $fa
    db $f4
    db $ec
    ldh a, [$ffd0]
    xor a

jr_004_7948:
    ldh [rNR41], a
    ret nz

    ret nz

    pop bc
    jr z, jr_004_798e

    push hl
    ld bc, $ff0f
    nop
    ld c, $04
    inc b
    nop
    pop hl
    cp $e2
    adc $e0
    inc bc
    or b
    ret nz

    ld h, b
    ret nz

    add hl, bc

jr_004_7963:
    pop hl
    inc l
    reti


jr_004_7966:
    ld l, a
    rst $38
    jp c, $f96f

    ld l, a
    db $d3
    ld h, a
    or l
    cpl
    db $dd
    cp c
    ldh [rIF], a
    sub d
    ld l, a
    db $eb
    ld h, b
    rrca
    push hl
    rst $08
    rst $38
    ld h, l
    rst $18
    xor b
    rst $18
    ld a, [hl+]
    rst $18
    jr nz, jr_004_7963

    rst $38
    jr z, jr_004_7966

    ld d, a
    ei
    ld d, [hl]
    ei
    ld d, l
    di
    rst $38

jr_004_798e:
    inc d
    ei
    inc d
    ei
    dec h
    ei
    and h
    ei
    rst $38
    add [hl]
    ei
    ld l, a
    or $ed
    or $6f
    or $ff
    rst $08
    and $49
    db $f4
    ld e, c
    or $1b
    or $ed
    adc a
    ld b, $20
    ld l, $17
    nop
    jr jr_004_79b9

    rst $38
    ld [hl], a
    ldh [$ff0d], a
    jr nz, jr_004_79d8

    inc sp
    add hl, hl

jr_004_79b9:
    ld [bc], a
    inc hl
    inc [hl]
    ld b, e
    jr nz, jr_004_7a28

    sbc [hl]
    xor l
    db $fd
    sbc $e6
    inc bc
    dec a
    ld a, a
    dec c
    rst $38
    ld [hl], l
    ld [hl], a
    push af
    rrca
    rst $20
    inc hl
    add hl, hl
    ldh [rNR44], a
    ld a, [$0ffc]
    nop
    rst $38
    ld [hl], b

jr_004_79d8:
    rrca
    rst $30
    ld c, b
    xor [hl]
    ld d, a
    ld a, a
    dec e
    rst $28
    rst $38
    ld l, l
    ld e, a
    dec [hl]
    inc bc
    inc h
    ld e, $00
    xor l
    cpl
    ld e, $5e
    cp h
    cp l
    ld h, b
    ld d, $fa
    nop
    inc h
    ld c, c
    add hl, sp
    db $fd
    inc a
    jr nz, jr_004_79f9

jr_004_79f9:
    ld e, d
    inc a
    cp l
    ld d, [hl]
    cp a
    ld a, a

Jump_004_79ff:
    ld a, a

jr_004_7a00:
    cp e
    ld l, a
    ld e, e
    inc a
    ld hl, $1e1e
    inc d
    dec sp
    ld sp, hl
    add b
    ld [hl+], a
    nop

jr_004_7a0d:
    rra
    nop
    ld a, b
    nop
    ret nc

    ld l, a
    sub d
    rst $38
    ld h, a

jr_004_7a16:
    sub b
    cpl
    sub a
    ld l, b
    cp b
    ld b, a
    ret nz

    rst $38
    ccf
    jr nz, jr_004_7a00

    sbc a

jr_004_7a22:
    ldh [$ff62], a
    rst $08
    ld h, b
    rst $38
    rst $18

jr_004_7a28:
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_004_7a0d

    ld h, b
    rst $38
    rst $18
    jr nc, jr_004_7a22

    rst $38
    nop
    ld h, $f3
    inc b
    rst $38
    ei
    db $fc
    inc bc

jr_004_7a3c:
    rlca
    ld hl, sp+$0c
    ei
    inc c
    rst $38
    ei
    jr jr_004_7a3c

    rst $38
    nop
    adc e
    or $09
    rst $38
    and $09
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    rst $38
    db $fc
    ld c, $fa
    ld hl, sp+$07
    ld [hl], a
    rrca
    sbc a
    ld a, h
    ld h, b
    add hl, hl
    ld bc, $2e20
    rra
    jr jr_004_7a6c

    rlca
    ld [$ff20], sp
    inc b
    ld hl, sp+$78

jr_004_7a6c:
    add b
    ret nz

    nop
    rst $38
    ld [hl], a
    cp e
    rst $30
    rrca
    ld hl, $bf1a
    ld a, a
    ld e, [hl]
    ld b, d
    jr jr_004_7a16

    db $fc

jr_004_7a7d:
    inc c
    ld [bc], a
    jp $df01


    ld a, $e3
    ld e, l
    rst $38
    jr nz, jr_004_7a7d

    and b
    nop
    dec e
    ldh [c], a
    nop
    ld [hl+], a
    ld a, [hl]
    db $fc
    ld a, $fc
    push bc
    adc h
    ldh [c], a
    inc hl
    nop
    nop
    inc h
    jp $0503


    inc h
    ldh a, [c]
    db $fc
    push de
    ld [$2400], a
    ld l, b
    inc b
    inc h
    ld b, b
    db $e3
    ld c, $7c
    cp e
    rrca
    ld l, a
    ld a, a
    ccf
    ld c, h
    jr nz, @+$2a

    inc bc
    rrca
    db $e3
    ld c, $07
    rrca
    ld sp, hl
    ld bc, $3640
    push bc
    rrca
    add h
    ld a, b
    cp d
    ld a, h
    db $dd
    cp $40
    ld h, $ff
    ld a, [hl]
    cp l
    ld a, [hl]
    ld e, d
    inc a
    inc a
    ld a, h
    jr nz, @+$12

    ld hl, $fd01
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $dd
    ld [bc], a

Jump_004_7ad8:
    ld bc, $0dfe
    ld [de], a
    or h
    ld a, b
    ld a, [$f97c]
    ld [hl], $b7
    db $eb
    ld e, [hl]
    rst $08
    nop

jr_004_7ae7:
    inc bc
    ld b, d
    ld [bc], a
    inc bc
    or [hl]
    ld a, b
    ld sp, hl
    db $e3
    ld a, [hl]
    ei
    jr nz, jr_004_7af4

    inc bc

jr_004_7af4:
    ld bc, $4403
    add c
    rst $38
    jr c, @+$01

    rst $00
    call nz, $82bb
    ld c, h
    add d
    dec c
    ld c, e
    rst $38
    ld a, [hl]
    ld bc, $45fe
    or $81
    cp $19
    rst $38
    cp $80
    rst $38
    ld [de], a
    sbc $80
    rst $38
    ld bc, $9edf
    ld bc, $01fe
    cp [hl]
    jr nz, jr_004_7b1d

jr_004_7b1d:
    cp $82
    rst $18
    ld a, l
    ld b, [hl]
    cp d
    cp b
    rst $00
    ld b, $4b
    adc c
    ret nc

    rst $18
    pop hl
    ld h, b
    db $d3
    ldh [$ffdf], a
    ld [$b64b], sp
    dec l
    rst $38
    sub $2d
    sub $a0
    sub a
    ld h, b
    rst $10
    jr nz, jr_004_7ba4

    sbc a
    sub b
    adc a
    ld b, $4b
    ld b, b
    ld bc, $d62d
    rlca
    ld c, e
    nop
    ld c, a
    inc e
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
    ld [$005f], sp
    nop
    stop
    ld a, h
    ld b, b
    nop
    jr c, jr_004_7ae7

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
    ld [hl+], a
    ldh a, [rIF]
    ld bc, $010f
    rrca
    ld bc, $0100
    ld d, [hl]
    nop
    ld h, $00
    rlca
    ld a, [hl+]
    nop
    ld e, d
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $0ffc
    ld bc, $0106
    rrca
    nop
    jr jr_004_7bb3

jr_004_7ba4:
    scf
    ld [$38ff], sp
    rla
    ld h, c
    ld a, $79
    ld b, $7d
    ld a, [hl-]
    ld a, [$0e21]
    add b

jr_004_7bb3:
    ld b, d
    nop
    ld e, [hl]
    add b
    daa
    sbc $31
    db $fd
    adc $e1
    ld bc, $0877
    cp b
    ld d, a
    ld h, c
    ld e, $bf
    pop af
    ld l, [hl]
    ld a, c
    ld d, $f1
    ld l, a
    db $e3
    ld bc, $ff9e
    nop
    ld h, c
    sbc [hl]
    ld d, c
    cp [hl]
    ld h, c
    cp [hl]
    and d
    rst $38
    db $fc
    nop
    nop
    ld bc, $0300
    ld bc, $ff07
    nop
    dec b
    inc bc
    ld a, [bc]
    rlca
    jr jr_004_7bf7

    ld [$07ff], sp
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    ldh [rIE], a
    nop
    sub b
    ldh [$ff0a], a

jr_004_7bf7:
    ldh a, [$ff7d]
    add d
    add l
    rst $38
    ld a, [hl]
    inc bc
    nop
    ld b, $03
    rrca
    nop
    dec bc
    rst $38
    rlca
    ld a, h
    rlca
    add h
    ld a, e
    cp d
    ld a, l
    adc h
    rst $38
    ld a, a
    add b
    nop
    ld b, b
    add b
    call c, Call_000_2200
    rst $30
    call c, $ec12
    pop hl
    ld bc, $fe79
    nop
    nop
    rst $38
    ld c, $00
    add hl, de
    ld c, $3f
    db $10
    jr nc, jr_004_7c38

    cp a
    ld h, b
    ccf
    ld l, b
    scf
    add sp, $57
    ld h, l
    dec e
    add d
    ld a, a
    nop
    ld e, l
    add d
    dec l

jr_004_7c38:
    sbc $01
    cp $e3
    ld bc, $31ff
    ld c, $61
    ld a, $ea
    ld d, l
    ld a, c
    daa
    db $fd
    jp hl


    nop
    ld [bc], a
    ld [hl], b
    nop
    adc b
    ld [hl], b
    ld c, d
    ldh a, [$ff9f]
    adc l
    ldh a, [c]
    adc l
    or $09
    jr nz, jr_004_7c58

jr_004_7c58:
    rlca
    inc c
    ld h, b
    rst $18
    ccf
    ld [hl], a
    ld [$77e9], sp
    dec bc
    inc c
    or c
    adc $f0
    add hl, hl
    ld c, $21
    ld [bc], a
    ld b, e
    inc hl
    ld b, e
    inc c
    ld h, a
    sbc [hl]
    ld sp, $ffce
    cp b
    ld b, a
    or b
    ld a, a
    or b
    ld a, a
    sub b
    ld a, a
    rst $38
    ld c, b
    ccf
    ld hl, $7f1e
    ld hl, $0031
    rst $38
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$39
    cp $41
    cp $ff
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld hl, sp-$80
    add b
    nop
    ei
    ldh a, [$ff1f]
    and $01
    jr nz, jr_004_7cd5

    db $10
    stop
    rst $38
    ld [hl+], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rIE]
    or b
    ld b, b
    ldh [$ff80], a
    ldh [rLCDC], a
    ret nz

    nop
    rst $38
    inc d
    rrca
    inc l
    rra
    jr z, jr_004_7cd8

    ld a, [hl+]
    dec e
    rst $38
    ld [de], a
    dec c
    ld c, $01
    rrca
    inc b
    ld b, $00
    rst $18
    ld a, c
    cp $e1
    cp $01
    ldh [$ff03], a
    ld e, $e0
    rst $38
    inc c
    ldh a, [$fffc]
    ld [$0008], sp

jr_004_7cd5:
    ld b, h
    ccf
    rst $38

jr_004_7cd8:
    ld b, b
    ccf
    jr nz, jr_004_7cfb

    jr jr_004_7ce5

    inc b
    inc bc
    ld sp, hl
    inc bc
    ldh [c], a
    inc hl
    db $e3

jr_004_7ce5:
    ld bc, $e01c
    ld [$f0f0], sp
    rst $38
    nop
    ldh [rLCDC], a
    ld b, b
    nop
    ld c, b
    scf
    adc h
    ei
    ld a, a
    add c
    jr nz, @+$0a

    ld e, b
    ccf

jr_004_7cfb:
    jr nc, jr_004_7d0c

    ccf
    rst $38
    db $10
    jr jr_004_7d02

jr_004_7d02:
    ld a, c
    add [hl]
    push hl
    ld a, [$dd06]
    ld hl, sp+$21
    ld b, $30

jr_004_7d0c:
    ret nz

    ret nz

    ldh [rNR52], a
    call z, $fd3f
    add b
    ldh [c], a
    ld bc, $0f32
    rrca
    nop
    ld c, $04
    rst $28
    inc b
    nop
    ld de, $e1ee
    inc bc
    jr nc, jr_004_7ce5

    ld h, b

jr_004_7d26:
    xor h
    ret nz

    add hl, bc
    pop hl
    jr z, jr_004_7d9c

    rrca
    dec b
    inc c
    ld [hl+], a
    ld h, b
    ld b, $07
    and $06
    inc c
    add d
    ld a, h
    nop
    inc c
    ret nz

    jr jr_004_7d26

    ld [hl], a
    ldh a, [$ffba]
    inc h
    ld [bc], a
    ld c, d
    jr nz, @+$08

    rrca
    nop
    add [hl]
    ldh [c], a
    dec c
    ld bc, $06fc
    ld [bc], a
    push hl
    rra
    ld h, d
    dec a
    ld [hl], d
    dec c
    ld [$db75], a
    ld [hl], e
    rrca
    db $eb
    rra
    ld [bc], a
    db $fc
    db $e3
    ld de, $3ec9
    rst $18
    db $e3
    ld e, l
    rst $38
    jr nz, @-$5e

    nop
    dec bc
    ld h, $f8
    rst $38
    ld b, d
    db $fc
    ld b, e
    db $fc
    ld h, c
    cp $b1
    ld a, [hl]
    rst $30
    jp hl


    sbc [hl]
    sbc d
    nop
    add hl, bc
    rrca
    nop
    ld a, b
    rrca
    rst $38
    or a
    ld c, b
    cp b
    ld d, a
    ld h, d
    dec e
    ldh a, [c]
    ld l, l
    rst $30
    ld e, d
    dec [hl]
    di
    ld [bc], a
    ld [hl+], a
    ld e, $00
    and c
    ld e, $ff
    ld d, d
    cp h
    ld h, c
    cp [hl]
    and c
    ld a, [hl]
    ld b, d
    db $fc
    ld l, $0d

jr_004_7d9c:
    inc d
    ld b, d
    db $fc
    ld [hl+], a
    ld [$4014], sp
    rra
    dec a
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
    ld d, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_004_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
