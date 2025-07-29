; Disassembly of "HMGB.sgb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    inc bc
    xor a
    ld [$c7a0], a
    ld [$c780], a
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $7a86
    ld c, $0f
    ld de, $8800
    call Call_000_2f41
    ld hl, $780b
    ld c, $03
    ld de, $9000
    call Call_000_2f41
    ld hl, $5ab0
    ld c, $0d
    ld de, $8000
    call Call_000_2f41
    ld hl, $594a
    ld c, $0d
    ld de, $9800
    call Call_000_2f41
    ld a, $66
    ld [$cb5c], a
    ld a, $04
    ld [$cb5d], a
    ld [$cb5e], a
    xor a
    ld [$c911], a
    ld [$cb56], a
    ld a, $44
    ldh [$ff91], a
    ld a, $20
    ldh [$ff93], a
    ld a, $07
    ldh [$ff96], a
    ld a, $68
    ldh [$ff95], a
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
    ld a, $01
    ld [$cc22], a
    call Call_003_61fe
    call Call_000_124f
    call Call_003_618c
    ld a, $00
    call Call_000_166a
    ld hl, $6f69
    ld a, $0f
    call Call_000_1f96
    call Call_003_762f
    ld hl, $6fb3
    ld a, $0f
    call Call_000_1f96
    ld a, [$b943]
    or a
    call nz, Call_003_630d
    ld a, [$b944]
    or a
    call nz, Call_003_6316
    xor a
    ld [$cc20], a
    ld [$cc27], a
    ld [$cc16], a
    ld [$cc17], a
    ld [$cc18], a
    ld [$cc19], a
    ld [$cc1a], a
    ld [$cc26], a
    ld [$cc29], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    ld [$cc28], a
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
    ld a, [$b8c0]
    or a
    call nz, Call_003_631f
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_003_40fe

    call Call_003_6349
    ret


jr_003_40fe:
    ld a, [$b9a1]
    and $0f
    cp $0f
    ret nz

    call Call_000_3d18
    ld a, [$b9a2]
    cp $ff
    ret z

    call Call_003_6328
    ld a, $1e
    call Call_000_0fb9
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    ld a, [$b9a1]
    and $f0
    or a
    jr z, jr_003_4137

    call Call_000_3c1d
    call Call_000_2b71
    call Call_000_362c
    call Call_003_4275
    ret


jr_003_4137:
    ld a, [$b9a1]
    and $0f
    cp $0f
    jr z, jr_003_414d

    call Call_000_3c1d
    call Call_000_2b71
    call Call_000_362c
    call Call_003_42c7
    ret


jr_003_414d:
    call Call_000_3c1d
    call Call_003_519a
    call Call_000_2b71
    call Call_000_362c
    ld hl, $69f0
    ld a, $01
    call Call_000_1f96
    call Call_003_62e6
    call Call_003_4319
    call Call_003_432d
    call Call_003_4341
    call Call_003_4355
    ld a, [$cc1b]
    cp $00
    ret nz

    ld hl, $417d
    ld a, [$cb62]
    rst $00
    add l
    ld b, c
    pop bc
    ld b, c
    db $fd
    ld b, c
    add hl, sp
    ld b, d
    ld a, $00
    ld [$cb62], a
    ld hl, $b949
    ld de, $ba12
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $c800
    ld de, $cc2a
    ld b, $20
    call Call_000_210f
    call Call_003_66b0
    ld hl, $ba12
    ld de, $b949
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $cc2a
    ld de, $c800
    ld b, $20
    call Call_000_210f
    ld a, $01
    ld [$cb62], a
    ret


    ld a, $01
    ld [$cb62], a
    ld hl, $b95f
    ld de, $ba12
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $c820
    ld de, $cc2a
    ld b, $20
    call Call_000_210f
    call Call_003_66b0
    ld hl, $ba12
    ld de, $b95f
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $cc2a
    ld de, $c820
    ld b, $20
    call Call_000_210f
    ld a, $02
    ld [$cb62], a
    ret


    ld a, $02
    ld [$cb62], a
    ld hl, $b975
    ld de, $ba12
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $c840
    ld de, $cc2a
    ld b, $20
    call Call_000_210f
    call Call_003_66b0
    ld hl, $ba12
    ld de, $b975
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $cc2a
    ld de, $c840
    ld b, $20
    call Call_000_210f
    ld a, $03
    ld [$cb62], a
    ret


    ld a, $03
    ld [$cb62], a
    ld hl, $b98b
    ld de, $ba12
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $c860
    ld de, $cc2a
    ld b, $20
    call Call_000_210f
    call Call_003_66b0
    ld hl, $ba12
    ld de, $b98b
    ld a, $16
    ld b, a
    call Call_000_210f
    ld hl, $cc2a
    ld de, $c860
    ld b, $20
    call Call_000_210f
    ld a, $00
    ld [$cb62], a
    ret


Call_003_4275:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_003_42ba

    ld a, [$cc27]
    or a
    jr nz, jr_003_429e

    ld a, [$b8ec]
    or a
    jr nz, jr_003_4292

    ld a, $e7
    call Call_000_3e80
    jr jr_003_4297

jr_003_4292:
    ld a, $e8
    call Call_000_3e80

jr_003_4297:
    ld a, $f0
    ld [$cc27], a
    jr jr_003_42ba

jr_003_429e:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_003_42ba

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $25
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_003_42ba:
    call Call_003_4319
    call Call_003_432d
    call Call_003_4341
    call Call_003_4355
    ret


Call_003_42c7:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    jr nz, jr_003_430c

    ld a, [$cc27]
    or a
    jr nz, jr_003_42f0

    ld a, [$b8ec]
    or a
    jr nz, jr_003_42e4

    ld a, $a9
    call Call_000_3e80
    jr jr_003_42e9

jr_003_42e4:
    ld a, $ad
    call Call_000_3e80

jr_003_42e9:
    ld a, $f0
    ld [$cc27], a
    jr jr_003_430c

jr_003_42f0:
    ld a, [$cc27]
    dec a
    ld [$cc27], a
    or a
    jr nz, jr_003_430c

    ld a, [$b9a1]
    and $0f
    ld [$b9a2], a
    ld a, $23
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a

jr_003_430c:
    call Call_003_4319
    call Call_003_432d
    call Call_003_4341
    call Call_003_4355
    ret


Call_003_4319:
    ld hl, $c80a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c806]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c808]
    sub b
    ld [hl+], a
    ret


Call_003_432d:
    ld hl, $c82a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c826]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c828]
    sub b
    ld [hl+], a
    ret


Call_003_4341:
    ld hl, $c84a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c846]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c848]
    sub b
    ld [hl+], a
    ret


Call_003_4355:
    ld hl, $c86a
    ldh a, [$ff93]
    ld b, a
    ld a, [$c866]
    sub b
    ld [hl+], a
    ldh a, [$ff91]
    ld b, a
    ld a, [$c868]
    sub b
    ld [hl+], a
    ret


    sbc d
    ld hl, $ac04
    xor l
    xor [hl]
    rrca
    nop
    sbc d
    ld b, c
    inc b
    cp h
    cp l
    cp [hl]
    rra
    nop
    sbc d
    ld h, c
    inc b
    call z, $cecd
    cpl
    nop
    sbc d
    add c
    inc b
    call c, $dedd
    ccf
    nop
    sbc d
    add c
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b
    nop
    sbc d
    ld h, c
    inc b
    ld l, l
    ld l, [hl]
    ld l, a
    ld c, b
    nop
    sbc d
    ld b, c
    inc b
    ld e, l
    ld e, [hl]
    ld e, a
    jr c, jr_003_43a1

jr_003_43a1:
    sbc d
    ld hl, $4d04
    ld c, [hl]
    ld c, a
    jr z, jr_003_43a9

jr_003_43a9:
    or e
    ld b, e
    cp a
    ld b, e
    bit 0, e
    rst $10
    ld b, e
    db $e3
    ld b, e
    sbc b
    jp z, $a802

    xor c
    nop
    sbc b
    ld [$b802], a
    cp c
    nop
    sbc c
    adc d
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    xor d
    ld [bc], a
    cp b
    cp c
    nop
    sbc b
    ret nc

    ld [bc], a
    xor b
    xor c
    nop
    sbc b
    ldh a, [rSC]
    cp b
    cp c
    nop
    sbc c
    sub b
    ld [bc], a
    xor b
    xor c
    nop
    sbc c
    or b
    ld [bc], a
    cp b
    cp c
    nop
    sbc d
    ld d, h
    ld [bc], a
    xor b
    xor c
    nop
    sbc d
    ld [hl], h
    ld [bc], a
    cp b
    cp c
    nop
    sbc b
    pop hl
    ld [bc], a
    ld a, e
    ld a, h
    nop
    sbc b
    pop hl
    ld [bc], a
    ld l, c
    ld l, d
    nop
    sbc c
    ld bc, $7902
    ld a, d
    nop
    sbc b
    pop hl
    ld [bc], a
    dec l
    ld l, $00
    sbc c
    ld bc, $3d02
    ld a, $00
    sbc b
    and c
    ld [bc], a
    ld l, e
    ld l, h
    nop
    sbc b
    and c
    ld [bc], a
    ld h, a
    ld l, b
    nop
    sbc b
    pop bc
    ld [bc], a
    ld [hl], a
    ld a, b
    nop
    sbc b
    and c
    ld [bc], a
    dec c
    ld c, $00
    sbc b
    pop bc
    ld [bc], a
    dec e
    ld e, $00
    rst $28
    ld b, e
    dec c
    ld b, h
    push af
    ld b, e
    inc de
    ld b, h
    ld bc, $1f44
    ld b, h
    sbc d
    ld h, l
    ld [bc], a
    inc de
    inc de
    nop
    sbc d
    add l
    ld [bc], a
    inc de
    inc de
    nop

Call_003_4443:
    ld a, [$cc19]
    cp $ff
    jp z, Jump_003_4822

    ld hl, $4452
    ld a, [$cc16]
    rst $00
    ld h, b
    ld b, l
    halt
    ld b, h
    or a
    ld b, h
    call nc, $1344
    ld b, l
    inc bc
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    or $46
    ld b, [hl]
    ld b, a
    db $e3
    ld b, a
    ld hl, $4369
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
    call Call_000_0635
    ld c, b

jr_003_448e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_448e

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_003_44ad

    xor a
    ld [$cc17], a
    ld a, $02
    ld [$cc16], a
    jp Jump_003_4560


jr_003_44ad:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld a, [$cc17]
    cp $08
    jr nz, jr_003_44ca

    xor a
    ld [$cc17], a
    ld a, $03
    ld [$cc16], a
    jp Jump_003_4560


jr_003_44ca:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld hl, $4389
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
    call Call_000_0635
    ld c, b

jr_003_44ec:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_44ec

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $03
    jr nz, jr_003_450a

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_003_4560

jr_003_450a:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_003_4560

    ld hl, $43a9
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
    call Call_000_0635
    ld c, b

jr_003_4539:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4539

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr nz, jr_003_4557

    xor a
    ld [$cc17], a
    ld a, $00
    ld [$cc16], a
    jr jr_003_4560

jr_003_4557:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jr jr_003_4560

Jump_003_4560:
jr_003_4560:
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_003_4571

    or a
    jr z, jr_003_45bf

    ret


jr_003_4571:
    ld a, [$c602]
    cp $5f
    jr z, jr_003_4585

    cp $60
    jr z, jr_003_4585

    cp $61
    jr z, jr_003_4585

    cp $62
    jr z, jr_003_4585

    ret


jr_003_4585:
    ld a, [$cc20]
    cp $05
    jr nz, jr_003_4596

jr_003_458c:
    ld a, $1c
    call $16e3
    xor a
    ld [$cc20], a
    ret


jr_003_4596:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr nz, jr_003_458c

    ld a, [$cc20]
    ld [$cc18], a
    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cc20], a
    or a
    jr z, jr_003_45bf

jr_003_45bd:
    pop hl
    ret


jr_003_45bf:
    ld a, [$cb91]
    or a
    jr z, jr_003_45bd

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_003_45e7

    cp $6e
    jr z, jr_003_45ee

    cp $50
    jr z, jr_003_45f5

    cp $a0
    jr z, jr_003_45fc

jr_003_45e7:
    ld a, $8a
    call Call_000_152f
    pop hl
    ret


jr_003_45ee:
    ld a, $8b
    call Call_000_152f
    pop hl
    ret


jr_003_45f5:
    ld a, $8c
    call Call_000_152f
    pop hl
    ret


jr_003_45fc:
    ld a, $8d
    call Call_000_152f
    pop hl
    ret


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_4634

    ld a, [$cc18]
    ld hl, $442b
    call Call_000_0743
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
    call Call_000_0635
    ld c, b

jr_003_4628:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4628

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_4634:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_464c

    xor a
    ld [$cc17], a
    ld a, $06
    ld [$cc16], a
    ld a, $00
    call Call_000_166a
    jp Jump_003_4560


jr_003_464c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld a, [$cc17]
    cp $02
    jr nc, jr_003_4687

    ld a, [$cc18]
    ld hl, $4433
    call Call_000_0743
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
    call Call_000_0635
    ld c, b

jr_003_467b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_467b

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_4687:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_469c

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_4560


jr_003_469c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld a, [$cc17]
    cp $02
    jr nc, jr_003_46d7

    ld a, [$cc18]
    ld hl, $442f
    call Call_000_0743
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
    call Call_000_0635
    ld c, b

jr_003_46cb:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_46cb

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_46d7:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_46ec

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_4560


jr_003_46ec:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_4727

    ld a, [$cc18]
    ld hl, $442b
    call Call_000_0743
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
    call Call_000_0635
    ld c, b

jr_003_471b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_471b

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_4727:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_473c

    xor a
    ld [$cc17], a
    ld a, [$cc16]
    inc a
    ld [$cc16], a
    jp Jump_003_4560


jr_003_473c:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


    ld a, [$cc17]
    cp $00
    jr nz, jr_003_4777

    ld a, [$cc18]
    ld hl, $4433
    call Call_000_0743
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
    call Call_000_0635
    ld c, b

jr_003_476b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_476b

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a

jr_003_4777:
    ld a, [$cc17]
    cp $08
    jr nz, jr_003_47b9

    xor a
    ld [$cc17], a
    ld [$cc16], a
    ld [$cc19], a
    ld a, [$b8fb]
    ld [$cc1a], a
    ld a, $02
    ld [$b8fb], a
    ld a, [$cc18]
    or a
    jr z, jr_003_47c3

    xor a
    ld [$cc18], a
    ld a, $29
    ld [$cb4a], a
    ld a, $61
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    jp Jump_003_4560


jr_003_47b9:
    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


jr_003_47c3:
    xor a
    ld [$cc18], a
    ld a, $2a
    ld [$cb4a], a
    ld a, $64
    call $16e3
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    jp Jump_003_4560


    ld hl, $4437
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
    call Call_000_0635
    ld c, b

jr_003_47fb:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_47fb

    ldh a, [$ff97]
    dec c
    add c
    ldh [$ff97], a
    ld a, [$cc17]
    cp $01
    jr z, jr_003_4818

    ld a, [$cc17]
    inc a
    ld [$cc17], a
    jp Jump_003_4560


jr_003_4818:
    xor a
    ld [$cc17], a
    ld [$cc16], a
    jp Jump_003_4560


Jump_003_4822:
    ld a, [$cc19]
    cp $ff
    ret nz

    ld a, [$c912]
    cp $01
    jp nz, Jump_003_4560

    ld hl, $4837
    ld a, [$cc1e]
    rst $00
    ccf
    ld c, b
    ld d, c
    ld c, b
    ld e, l
    ld c, b
    ld l, c
    ld c, b
    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    xor a
    ld [$cc19], a
    jp Jump_003_4560


    ld a, $21
    ld [$cb4a], a
    ld a, $27
    call $16e3
    jr jr_003_4873

    ld a, $22
    ld [$cb4a], a
    ld a, $25
    call $16e3
    jr jr_003_4873

    ld a, $23
    ld [$cb4a], a
    ld a, $23
    call $16e3

jr_003_4873:
    ld a, $35
    call Call_000_23d8
    ld a, $1a
    ld [$c912], a
    ld a, $03
    call Call_000_166a
    xor a
    ld [$cc19], a
    jp Jump_003_4560


Call_003_4889:
    ld a, [$cb56]
    or a
    ret nz

    ld a, [$cc1b]
    or a
    ret nz

    ld a, [$cb34]
    and $01
    jr z, jr_003_48b6

    ld a, [$cb33]
    cp $05
    jp z, Jump_003_4ccf

    cp $06
    jp z, Jump_003_4cda

    cp $07
    jp z, Jump_003_4ce5

    cp $08
    jp z, Jump_003_4cf0

    cp $1d
    jp z, Jump_003_4cfb

jr_003_48b6:
    ld a, [$b8fb]
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jp z, Jump_003_4b47

    ld hl, $5231
    ld a, $01
    call Call_000_1f96
    ld a, [$b8fb]
    cp $00
    jr nz, jr_003_48dc

    ld a, [$b8f8]
    jr jr_003_48df

jr_003_48dc:
    ld a, [$b8f9]

jr_003_48df:
    ldh [$ffab], a
    cp $0b
    jp z, Jump_003_49eb

    cp $0c
    jp z, Jump_003_49eb

    cp $0d
    jp z, Jump_003_49eb

    cp $0e
    jp z, Jump_003_49eb

    cp $13
    jp z, Jump_003_49eb

    cp $14
    jp z, Jump_003_49eb

    cp $16
    jp z, Jump_003_49eb

    cp $15
    jp z, Jump_003_49eb

    cp $00
    jp z, Jump_003_4afa

    cp $08
    jr z, jr_003_492c

    cp $09
    jp z, Jump_003_49a4

    cp $52
    jp z, Jump_003_4ab2

    cp $01
    jp z, Jump_003_4a41

    cp $02
    jp z, Jump_003_4b43

    cp $10
    jp z, Jump_003_4e8c

    ret


jr_003_492c:
    ld hl, $4933
    ld a, [$c60d]
    rst $00
    dec sp
    ld c, c
    ld b, b
    ld c, c
    ld b, l
    ld c, c
    ld c, d
    ld c, c
    call Call_003_59a4
    jr jr_003_494d

    call Call_003_5d98
    jr jr_003_494d

    call Call_003_5f92
    jr jr_003_494d

    call Call_003_5b9e

jr_003_494d:
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    call Call_003_634a
    ld [$cc1e], a
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 1, a
    ret nz

    set 1, a
    ld [hl], a
    ld a, [$b8fb]
    ld [$cc1a], a
    ld a, $02
    ld [$b8fb], a
    ld a, $ff
    ld [$cc19], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $4c
    ld [$cc25], a
    ret


Jump_003_49a4:
    ld hl, $49ab
    ld a, [$c60d]
    rst $00
    or e
    ld c, c
    cp b
    ld c, c
    cp l
    ld c, c
    jp nz, $cd49

    and h
    ld e, c
    jr jr_003_49c5

    call Call_003_5d98
    jr jr_003_49c5

    call Call_003_5f92
    jr jr_003_49c5

    call Call_003_5b9e

jr_003_49c5:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 0, a
    ret nz

    set 0, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $66
    ld [$cc25], a
    ret


Jump_003_49eb:
    ld hl, $49f2
    ld a, [$c60d]
    rst $00
    ld a, [$ff49]
    ld c, c
    inc b
    ld c, d
    add hl, bc
    ld c, d
    call Call_003_59a4
    jr jr_003_4a0c

    call Call_003_5d98
    jr jr_003_4a0c

    call Call_003_5f92
    jr jr_003_4a0c

    call Call_003_5b9e

jr_003_4a0c:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $518a
    ldh a, [$ffaa]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $0a
    call Call_003_75b6
    ldh a, [$ffaa]
    or $10
    ld [$cc24], a
    ld a, $34
    ld [$cc25], a
    dec hl
    inc [hl]
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    call Call_003_75a1
    ret


Jump_003_4a41:
    ld a, [$cc23]
    or a
    ret nz

    ld hl, $4a4d
    ld a, [$c60d]
    rst $00
    ld d, l
    ld c, d
    ld e, d
    ld c, d
    ld e, a
    ld c, d
    ld h, h
    ld c, d
    call Call_003_59a4
    jr jr_003_4a67

    call Call_003_5d98
    jr jr_003_4a67

    call Call_003_5f92
    jr jr_003_4a67

    call Call_003_5b9e

jr_003_4a67:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    jr z, jr_003_4a8d

    cp $04
    ret nz

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $02
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl], a

jr_003_4a8d:
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 7, a
    ret nz

    set 7, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    dec hl
    xor a
    ld [hl], a
    ret


Jump_003_4ab2:
    ld hl, $4ab9
    ld a, [$c60d]
    rst $00
    pop bc
    ld c, d
    add $4a
    bit 1, d
    ret nc

    ld c, d
    call Call_003_59a4
    jr jr_003_4ad3

    call Call_003_5d98
    jr jr_003_4ad3

    call Call_003_5f92
    jr jr_003_4ad3

    call Call_003_5b9e

jr_003_4ad3:
    ldh a, [$ffa4]
    or a
    ret z

    ldh a, [$ffa9]
    cp $02
    ret nz

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $1e
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    ret


Jump_003_4afa:
    ld hl, $4b01
    ld a, [$c60d]
    rst $00
    add hl, bc
    ld c, e
    ld c, $4b
    inc de
    ld c, e
    jr jr_003_4b54

    call Call_003_59a4
    jr jr_003_4b1b

    call Call_003_5d98
    jr jr_003_4b1b

    call Call_003_5f92
    jr jr_003_4b1b

    call Call_003_5b9e

jr_003_4b1b:
    ldh a, [$ffa4]
    or a
    ret z

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, [hl]
    cp $04
    ret nz

    ld a, $02
    ld [hl], a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $40
    ld [$cc25], a
    ret


Jump_003_4b43:
    call Call_003_622a
    ret


Jump_003_4b47:
    ld a, [$cb4a]
    or a
    jp nz, Jump_003_4dd0

    ld hl, $4b55
    ld a, [$c60d]

jr_003_4b54:
    rst $00
    ld e, l
    ld c, e
    ld h, d
    ld c, e
    ld h, a
    ld c, e
    ld l, h
    ld c, e
    call Call_003_59a4
    jr jr_003_4b6f

    call Call_003_5d98
    jr jr_003_4b6f

    call Call_003_5f92
    jr jr_003_4b6f

    call Call_003_5b9e

jr_003_4b6f:
    ldh a, [$ffa4]
    or a
    jp z, Jump_003_4cb9

    ld a, [$cc1b]
    cp $00
    ret nz

    ldh a, [$ffa9]
    ld hl, $4b81
    rst $00
    adc e
    ld c, e
    adc e
    ld c, e
    adc e
    ld c, e
    jp hl


    ld c, e
    ld e, e
    ld c, h
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl]
    ld [$cc03], a
    ld a, [$b8ec]
    or a
    jr nz, jr_003_4bbd

    ld a, $a6
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    jr jr_003_4bc7

jr_003_4bbd:
    ld a, $aa
    call Call_000_3e80
    ld a, $00
    call Call_000_166a

jr_003_4bc7:
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl+]
    ld [$cc03], a
    ld a, [hl]
    sla a
    ld hl, $515e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc13], a
    ld a, [hl]
    ld [$cc14], a
    ld a, [$b8ec]
    or a
    jr nz, jr_003_4c2f

    ld a, $a7
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    jr jr_003_4c39

jr_003_4c2f:
    ld a, $ab
    call Call_000_3e80
    ld a, $00
    call Call_000_166a

jr_003_4c39:
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cc00], a
    ld a, [hl+]
    ld [$cc01], a
    ld a, [hl+]
    ld [$cc02], a
    ld a, [hl]
    ld [$cc03], a
    ld a, [$b8ec]
    or a
    jr nz, jr_003_4c8d

    ld a, $a8
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    jr jr_003_4c97

jr_003_4c8d:
    ld a, $ac
    call Call_000_3e80
    ld a, $00
    call Call_000_166a

jr_003_4c97:
    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    bit 2, a
    ret nz

    set 2, a
    ld [hl], a
    ldh a, [$ffaa]
    ld [$cc24], a
    ld a, $02
    ld [$cc25], a
    ret


Jump_003_4cb9:
    ld a, [$cc1b]
    cp $00
    jr z, jr_003_4cc1

    ret


jr_003_4cc1:
    ld a, [$c90e]
    or a
    ret z

    ld a, [$cb33]
    cp $04
    jp z, Jump_003_4da0

    ret


Jump_003_4ccf:
    ld a, $a2
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_003_4cda:
    ld a, $a0
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_003_4ce5:
    ld a, $a3
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_003_4cf0:
    ld a, $a1
    call Call_000_3e80
    ld a, $00
    call Call_000_166a
    ret


Jump_003_4cfb:
    ld hl, $b8f8
    ld a, [$b8fb]
    cp $02
    jr z, jr_003_4d43

    cp $01
    jr z, jr_003_4d29

    ld a, [$b8f9]
    cp $ff
    jr z, jr_003_4d29

    ld a, [$b8f8]
    ld [$cc21], a
    ld hl, $63aa
    ld a, $04
    call Call_000_1f96
    ld a, $10
    ld [$b8f8], a
    xor a
    ld [$b8fb], a
    jr jr_003_4d61

jr_003_4d29:
    ld a, [$b8f9]
    ld [$cc21], a
    ld hl, $63aa
    ld a, $04
    call Call_000_1f96
    ld a, $10
    ld [$b8f9], a
    ld a, $01
    ld [$b8fb], a
    jr jr_003_4d61

jr_003_4d43:
    ld a, [$b8f8]
    cp $ff
    jr nz, jr_003_4d29

    ld a, [$b8f8]
    ld [$cc21], a
    ld hl, $63aa
    ld a, $04
    call Call_000_1f96
    ld a, $10
    ld [$b8f8], a
    xor a
    ld [$b8fb], a

jr_003_4d61:
    xor a
    ld [$b8c0], a
    ld [$cb34], a
    ld a, $03
    call Call_000_166a
    ld a, $10
    call $16e3
    ld hl, $c62a
    ld a, [$c60a]
    sub $00
    ld [hl+], a
    ld a, [$c60b]
    sub $1c
    ld [hl], a
    xor a
    ld [$c623], a
    ld a, $10
    ld [$c912], a
    ld a, $11
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$c90e], a
    ld hl, $d800
    ld de, $015a
    add hl, de
    ld [hl+], a
    ld [hl], a
    ret


Jump_003_4da0:
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


Jump_003_4dd0:
    call Call_003_4dd4
    ret


Call_003_4dd4:
    ld a, [$cb4a]
    ld hl, $4ddb
    rst $00
    ld sp, $324e
    ld c, [hl]
    ld c, e
    ld c, [hl]
    ld c, e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ccf
    ld c, a
    cp b
    ld c, a
    ld [hl-], a
    ld d, b
    ld sp, $314e
    ld c, [hl]
    ld sp, $314e
    ld c, [hl]
    ld sp, $ac4e
    ld d, b
    pop af
    ld d, b
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
    call Call_003_5653
    ld a, [de]
    cp $0b
    jr z, jr_003_4e7d

    cp $0c
    jr z, jr_003_4e7d

    cp $0d
    jr z, jr_003_4e7d

    cp $0e
    jr z, jr_003_4e7d

    cp $0f
    jr z, jr_003_4e7d

    xor a
    ld [$cb4a], a
    ld a, $1c
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_4e7d:
    ld a, $19
    call $16e3
    ld a, $08
    ld [$c912], a
    ld a, $36
    call Call_000_23d8

Jump_003_4e8c:
    call Call_003_5653
    ld a, [de]
    cp $0b
    jr z, jr_003_4eaf

    cp $0c
    jr z, jr_003_4ebe

    cp $0d
    jr z, jr_003_4ecd

    cp $0e
    jr z, jr_003_4edc

    cp $0f
    jr z, jr_003_4eeb

    ld a, [$cb4a]
    cp $20
    ld a, $05
    ld [$cc20], a
    ret


jr_003_4eaf:
    ld a, $00
    ld [$cc18], a
    ld a, [$b948]
    set 0, a
    ld [$b948], a
    jr jr_003_4ef8

jr_003_4ebe:
    ld a, $01
    ld [$cc18], a
    ld a, [$b948]
    set 1, a
    ld [$b948], a
    jr jr_003_4ef8

jr_003_4ecd:
    ld a, $02
    ld [$cc18], a
    ld a, [$b948]
    set 2, a
    ld [$b948], a
    jr jr_003_4ef8

jr_003_4edc:
    ld a, $03
    ld [$cc18], a
    ld a, [$b948]
    set 3, a
    ld [$b948], a
    jr jr_003_4ef8

jr_003_4eeb:
    ld a, $04
    ld [$cc18], a
    ld a, [$b948]
    set 4, a
    ld [$b948], a

jr_003_4ef8:
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $10
    jr z, jr_003_4f1a

    ld a, $04
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_003_4f1a:
    ld a, [$cc18]
    ld [$cc20], a
    xor a
    ld [$cc17], a
    xor a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_003_4f2c:
jr_003_4f2c:
    call Call_000_1c81
    ld a, $01
    ld [$cc16], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_4f7e

    cp $20
    jr z, jr_003_4f7e

    cp $21
    jr z, jr_003_4f7e

    ld a, [$cb33]
    cp $20
    jr z, jr_003_4f7e

    cp $21
    jr z, jr_003_4f7e

    ld a, $28
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_4f7e:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_4f89

    inc a

Call_003_4f86:
    ld [$b942], a

jr_003_4f89:
    ld a, $27
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_4f2c

    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ld a, [$cb33]
    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ret


    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_4ff7

    cp $20
    jr z, jr_003_4ff7

    cp $21
    jr z, jr_003_4ff7

    ld a, [$cb33]
    cp $20
    jr z, jr_003_4ff7

    cp $21
    jr z, jr_003_4ff7

    ld a, $26
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_4ff7:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_5002

    inc a
    ld [$b942], a

jr_003_5002:
    ld a, $25
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jp z, Jump_003_4f2c

    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ld a, [$cb33]
    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ret


    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_5071

    cp $20
    jr z, jr_003_5071

    cp $21
    jr z, jr_003_5071

    ld a, [$cb33]
    cp $20
    jr z, jr_003_5071

    cp $21
    jr z, jr_003_5071

    ld a, $24
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_5071:
    ld a, [$b942]
    cp $c9
    jr nc, jr_003_507c

    inc a
    ld [$b942], a

jr_003_507c:
    ld a, $23
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jp z, Jump_003_4f2c

    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ld a, [$cb33]
    cp $20
    jp z, Jump_003_5136

    cp $21
    jp z, Jump_003_5149

    ret


    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_50d8

    ld a, $5b
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_50d8:
    ld a, $61
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jp z, Jump_003_4f2c

    ret


    ld a, [$cc1a]
    ld [$b8fb], a
    ld a, $02
    ld [$cc1a], a
    ld a, $15
    call Call_000_166a
    xor a
    ld [$cb4a], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jr z, jr_003_511d

    ld a, $5e
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    ret


jr_003_511d:
    ld a, $64
    call $16e3
    ld a, $36
    call Call_000_23d8
    ld a, $08
    ld [$c912], a
    call Call_003_5653
    ld a, [de]
    cp $02
    jp z, Jump_003_4f2c

    ret


Jump_003_5136:
    ld a, $05
    ld [$cc16], a
    xor a
    ld [$cc18], a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


Jump_003_5149:
    ld a, $05
    ld [$cc16], a
    ld a, $01
    ld [$cc18], a
    xor a
    ld [$cc17], a
    ld [$cb4a], a
    ld [$c620], a
    ret


jr_003_515e:
    inc c
    dec bc
    inc c
    dec bc
    inc c
    ld a, [bc]
    dec bc
    dec e
    dec bc
    inc e
    dec bc
    dec de
    dec bc
    ld a, [de]
    dec bc
    rrca
    dec bc
    ld c, $0b
    dec c
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    xor a
    dec e
    xor a
    inc e
    xor a
    dec de
    xor a
    ld a, [de]
    xor a
    rrca
    xor a
    ld c, $af
    dec c
    xor a
    inc c
    xor a
    dec bc
    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    nop
    ret z

    jr nz, jr_003_515e

    ld b, b
    ret z

    ld h, b
    ret z

Call_003_519a:
    ld a, [$cb4e]
    or a
    ret nz

    ld a, [$cb4f]
    or a
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    call Call_003_561a
    call Call_003_4443
    ld a, [$c912]
    or a
    ret nz

    xor a
    ld [$cc20], a
    ld a, [$cc16]
    cp $05
    ret nc

    ldh a, [$ff8b]
    and $01
    jr z, jr_003_51c8

    call Call_003_4889
    ret


jr_003_51c8:
    ldh a, [$ff8a]
    and $02
    jr z, jr_003_51e5

    call Call_003_5374
    ld a, [$c603]
    and $01
    jr z, jr_003_51e4

    ld a, [$c605]
    cp $08
    jr nz, jr_003_51e4

    ld a, $34
    call Call_000_23d8

jr_003_51e4:
    ret


jr_003_51e5:
    ldh a, [$ff8b]
    and $08
    jr z, jr_003_51ef

    call Call_000_1925
    ret


jr_003_51ef:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_003_5214

    ldh a, [$ff8a]
    and $40
    jr nz, jr_003_5252

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_003_5290

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_003_52cd

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


jr_003_5214:
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_003_59a4
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_524e

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_549b

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54ae

    ret


jr_003_524e:
    call Call_003_54e7
    ret


jr_003_5252:
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_003_5b9e
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_528c

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_549b

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54ae

    ret


jr_003_528c:
    call Call_003_551a
    ret


Jump_003_5290:
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_003_5d98
    ldh a, [$ffa4]
    or a
    jr nz, jr_003_530a

    xor a
    ld [$cc29], a
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_52c9

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_54c1

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54d4

    ret


jr_003_52c9:
    call Call_003_5548
    ret


Jump_003_52cd:
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_003_5f92
    ldh a, [$ffa4]
    or a
    jr nz, jr_003_530a

    xor a
    ld [$cc29], a
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_5306

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_54c1

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54d4

    ret


jr_003_5306:
    call Call_003_55b8
    ret


Jump_003_530a:
jr_003_530a:
    ld a, [$cc29]
    cp $08
    jr c, jr_003_536f

    ld hl, $518a
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $03
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld hl, $5192
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $0d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$c60d]
    ld [hl], a
    xor a
    ld [$cc29], a
    ld a, [$cc28]
    cp $ff
    ret nz

    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    add $08
    cp $6c
    ret c

    cp $84
    ret nc

    inc hl
    ld a, [hl+]
    cp $a0
    ret c

    inc hl
    ldh a, [$ffaa]
    ld [$cc28], a
    ld hl, $5192
    ldh a, [$ffaa]
    call Call_000_0743
    ld a, $00
    ld [hl], a
    ret


jr_003_536f:
    inc a
    ld [$cc29], a
    ret


Call_003_5374:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_003_538e

    ldh a, [$ff8a]
    and $20
    jr nz, jr_003_5392

    ldh a, [$ff8a]
    and $10
    jr nz, jr_003_5396

    ldh a, [$ff8a]
    and $40
    jr nz, jr_003_539a

    jr jr_003_539f

jr_003_538e:
    ld a, $00
    jr jr_003_539c

jr_003_5392:
    ld a, $01
    jr jr_003_539c

jr_003_5396:
    ld a, $02
    jr jr_003_539c

jr_003_539a:
    ld a, $03

jr_003_539c:
    ld [$c60d], a

jr_003_539f:
    ld a, [$c60d]
    cp $00
    jr z, jr_003_53eb

    cp $01
    jr z, jr_003_5427

    cp $02
    jp z, Jump_003_5461

    ld a, $02
    call Call_000_166a
    call Call_003_5b9e
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_53e4

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_549b

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54ae

    ret


jr_003_53e4:
    call Call_003_551a
    call Call_003_551a
    ret


jr_003_53eb:
    ld a, $02
    call Call_000_166a
    call Call_003_59a4
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_5420

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_003_549b

    ld a, [$cb32]
    and $01
    jp z, Jump_003_54ae

    ret


jr_003_5420:
    call Call_003_54e7
    call Call_003_54e7
    ret


jr_003_5427:
    ld a, $02
    call Call_000_166a
    call Call_003_5d98
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_545a

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jr z, jr_003_54c1

    ld a, [$cb32]
    and $01
    jr z, jr_003_54d4

    ret


jr_003_545a:
    call Call_003_5548
    call Call_003_5548
    ret


Jump_003_5461:
    ld a, $02
    call Call_000_166a
    call Call_003_5f92
    ldh a, [$ffa4]
    or a
    jp nz, Jump_003_530a

    xor a
    ld [$cc29], a
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_003_5494

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jr z, jr_003_54c1

    ld a, [$cb32]
    and $01
    jr z, jr_003_54d4

    ret


jr_003_5494:
    call Call_003_55b8
    call Call_003_55b8
    ret


Jump_003_549b:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_151d
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_5548
    ret


Jump_003_54ae:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1526
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_55b8
    ret


Jump_003_54c1:
jr_003_54c1:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_1514
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_551a
    ret


Jump_003_54d4:
jr_003_54d4:
    ld a, [$cb34]
    and $01
    ret nz

    call Call_000_150b
    ld a, [$cb34]
    and $01
    ret nz

    call Call_003_54e7
    ret


Call_003_54e7:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $a3
    jr nc, jr_003_550f

    ld a, [$c608]
    cp $5c
    jr nc, jr_003_54fb

    jr jr_003_5508

jr_003_54fb:
    ld hl, $cb5b
    dec [hl]
    ld hl, $ff91
    inc [hl]

jr_003_5503:
    ld hl, $c608
    inc [hl]
    ret


jr_003_5508:
    ld hl, $c60b
    inc [hl]
    jr jr_003_5503

    ret


jr_003_550f:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, $18
    ld [$c911], a
    ret


Call_003_551a:
    xor a
    ld [$c90e], a
    ld a, [$c608]
    cp $0e
    ret c

    ld a, [$c608]
    cp $5d
    jr nc, jr_003_5534

    ld a, [$c608]
    cp $08
    jr c, jr_003_5541

    jr jr_003_5541

jr_003_5534:
    ld hl, $cb5b
    inc [hl]
    ld hl, $ff91
    dec [hl]

jr_003_553c:
    ld hl, $c608
    dec [hl]
    ret


jr_003_5541:
    ld hl, $c60b
    dec [hl]
    jr jr_003_553c

    ret


Call_003_5548:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $18
    ret c

    ld a, [$cc22]
    cp $00
    jr z, jr_003_5586

    cp $01
    jr z, jr_003_558f

    ld a, [$c606]
    cp $b9
    jr nc, jr_003_557f

    ld a, [$c607]
    cp $00
    jr nz, jr_003_5572

    ld a, [$c606]
    cp $59
    jr c, jr_003_557f

jr_003_5572:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_003_557a:
    ld hl, $c606
    dec [hl]
    ret


jr_003_557f:
    ld hl, $c60a
    dec [hl]
    jr jr_003_557a

    ret


jr_003_5586:
    ld hl, $c606
    dec [hl]
    ld hl, $c60a
    dec [hl]
    ret


jr_003_558f:
    ld a, [$c606]
    cp $99
    jr nc, jr_003_55b1

    ld a, [$c607]
    cp $00
    jr nz, jr_003_55a4

    ld a, [$c606]
    cp $59
    jr c, jr_003_55b1

jr_003_55a4:
    ld hl, $cb5a
    inc [hl]
    ld hl, $ff93
    dec [hl]

jr_003_55ac:
    ld hl, $c606
    dec [hl]
    ret


jr_003_55b1:
    ld hl, $c60a
    dec [hl]
    jr jr_003_55ac

    ret


Call_003_55b8:
    xor a
    ld [$c90e], a
    ld a, [$c606]
    cp $f8
    ret nc

    ld a, [$cc22]
    cp $00
    jr z, jr_003_55ef

    cp $01
    jr z, jr_003_55f8

    ld a, [$c606]
    cp $b8
    jr nc, jr_003_55e8

    ld a, [$c606]
    cp $58
    jr c, jr_003_55e8

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_003_55e3:
    ld hl, $c606
    inc [hl]
    ret


jr_003_55e8:
    ld hl, $c60a
    inc [hl]
    jr jr_003_55e3

    ret


jr_003_55ef:
    ld hl, $c606
    inc [hl]
    ld hl, $c60a
    inc [hl]
    ret


jr_003_55f8:
    ld a, [$c606]
    cp $98
    jr nc, jr_003_5613

    ld a, [$c606]
    cp $58
    jr c, jr_003_5613

    ld hl, $cb5a
    dec [hl]
    ld hl, $ff93
    inc [hl]

jr_003_560e:
    ld hl, $c606
    inc [hl]
    ret


jr_003_5613:
    ld hl, $c60a
    inc [hl]
    jr jr_003_560e

    ret


Call_003_561a:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$c911]
    or a
    ret z

    dec a
    ld [$c911], a
    cp $00
    jr z, jr_003_562e

    pop hl
    ret


jr_003_562e:
    call Call_003_74d2
    ld a, [$cc28]
    cp $ff
    jr nz, jr_003_5648

    ld a, $01
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ld a, $01
    ld [$c910], a
    ret


jr_003_5648:
    ld a, $07
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    ret


Call_003_5653:
    ld a, [$c60d]
    rst $00
    ld h, b
    ld d, [hl]
    db $f4
    ld d, [hl]
    adc d
    ld d, a
    jr nz, @+$5a

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
    ld a, [$c608]
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


Call_003_58bc:
    ld a, [$c60a]
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
    jr nz, jr_003_5915

    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    dec a
    and $08
    cpl
    add $10
    ld c, a
    call Call_003_58bc
    ret


jr_003_5915:
    cp $01
    jr nz, jr_003_5946

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
    sub $08
    and $0f
    cp $00
    jr z, jr_003_5938

    cp $0c
    jr nc, jr_003_593c

    cp $04
    jr nc, jr_003_5940

jr_003_5938:
    ld b, $ec
    jr jr_003_5942

jr_003_593c:
    ld b, $dc
    jr jr_003_5942

jr_003_5940:
    ld b, $e4

jr_003_5942:
    call Call_003_58bc
    ret


jr_003_5946:
    cp $02
    jr nz, jr_003_5977

    ld a, [$c608]
    sub $08
    and $08
    add $08
    cpl
    inc a
    ld c, a
    ld a, [$c606]
    sub $08
    and $0f
    cp $00
    jr z, jr_003_596d

    cp $0c
    jr nc, jr_003_596d

    cp $04
    jr nc, jr_003_5971

    ld b, $1c
    jr jr_003_5973

jr_003_596d:
    ld b, $0c
    jr jr_003_5973

jr_003_5971:
    ld b, $14

jr_003_5973:
    call Call_003_58bc
    ret


jr_003_5977:
    ld a, [$c606]
    and $08
    cpl
    inc a
    ld b, a
    ld a, [$c608]
    sub $0d
    and $0f
    cp $00
    jr z, jr_003_599e

    cp $0b
    jr nc, jr_003_5996

    cp $03
    jr nc, jr_003_599a

    ld c, $e8
    jr jr_003_59a0

jr_003_5996:
    ld c, $d8
    jr jr_003_59a0

jr_003_599a:
    ld c, $e0
    jr jr_003_59a0

jr_003_599e:
    ld c, $e8

jr_003_59a0:
    call Call_003_58bc
    ret


Call_003_59a4:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
    ld d, a
    ld a, [$c608]
    add $08
    ld e, a
    inc e
    inc e
    inc b
    inc b
    dec c
    dec c
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_003_5a37

    ld a, [$b949]
    cp $00
    jr z, jr_003_5a06

    cp $ff
    jr z, jr_003_5a37

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5a06

    cp $03
    jr z, jr_003_5a06

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_003_5a22

jr_003_5a06:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_003_5a22:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5a37

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5a37

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5a37

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5b99

jr_003_5a37:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5aac

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5a7b

    cp $ff
    jr z, jr_003_5aac

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5a7b

    cp $03
    jr z, jr_003_5a7b

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_003_5a97

jr_003_5a7b:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_003_5a97:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5aac

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5aac

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5aac

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5b99

jr_003_5aac:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5b20

    ld a, [$b975]
    cp $00
    jr z, jr_003_5af0

    cp $ff
    jr z, jr_003_5b20

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5af0

    cp $03
    jr z, jr_003_5af0

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_003_5b0c

jr_003_5af0:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_003_5b0c:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5b20

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5b20

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5b20

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5b99

jr_003_5b20:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5b94

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5b64

    cp $ff
    jr z, jr_003_5b94

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5b64

    cp $03
    jr z, jr_003_5b64

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_003_5b80

jr_003_5b64:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_003_5b80:
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5b94

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_5b94

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5b94

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5b99

jr_003_5b94:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5b99:
jr_003_5b99:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5b9e:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
    ld d, a
    ld a, [$c608]
    add $08
    ld e, a
    dec d
    dec d
    inc b
    inc b
    dec c
    dec c
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_003_5c31

    ld a, [$b949]
    cp $00
    jr z, jr_003_5c00

    cp $ff
    jr z, jr_003_5c31

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5c00

    cp $03
    jr z, jr_003_5c00

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_003_5c1c

jr_003_5c00:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_003_5c1c:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5c31

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5c31

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5c31

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5d93

jr_003_5c31:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5ca6

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5c75

    cp $ff
    jr z, jr_003_5ca6

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5c75

    cp $03
    jr z, jr_003_5c75

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_003_5c91

jr_003_5c75:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_003_5c91:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5ca6

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5ca6

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5ca6

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_5d93

jr_003_5ca6:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5d1a

    ld a, [$b975]
    cp $00
    jr z, jr_003_5cea

    cp $ff
    jr z, jr_003_5d1a

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5cea

    cp $03
    jr z, jr_003_5cea

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_003_5d06

jr_003_5cea:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_003_5d06:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5d1a

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5d1a

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5d1a

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5d93

jr_003_5d1a:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5d8e

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5d5e

    cp $ff
    jr z, jr_003_5d8e

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5d5e

    cp $03
    jr z, jr_003_5d5e

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_003_5d7a

jr_003_5d5e:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_003_5d7a:
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_5d8e

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_5d8e

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_5d8e

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_5d93

jr_003_5d8e:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5d93:
jr_003_5d93:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5d98:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
    ld d, a
    ld a, [$c608]
    add $08
    ld e, a
    dec b
    dec b
    inc d
    inc d
    dec e
    dec e
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_003_5e2b

    ld a, [$b949]
    cp $00
    jr z, jr_003_5dfa

    cp $ff
    jr z, jr_003_5e2b

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5dfa

    cp $03
    jr z, jr_003_5dfa

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_003_5e16

jr_003_5dfa:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_003_5e16:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5e2b

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5e2b

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5e2b

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_5f8d

jr_003_5e2b:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_5ea0

    ld a, [$b95f]
    cp $00
    jr z, jr_003_5e6f

    cp $ff
    jr z, jr_003_5ea0

    ld a, [$c82d]
    cp $00
    jr z, jr_003_5e6f

    cp $03
    jr z, jr_003_5e6f

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_003_5e8b

jr_003_5e6f:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_003_5e8b:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5ea0

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5ea0

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5ea0

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_5f8d

jr_003_5ea0:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $02
    jr z, jr_003_5f14

    ld a, [$b975]
    cp $00
    jr z, jr_003_5ee4

    cp $ff
    jr z, jr_003_5f14

    ld a, [$c84d]
    cp $00
    jr z, jr_003_5ee4

    cp $03
    jr z, jr_003_5ee4

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_003_5f00

jr_003_5ee4:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_003_5f00:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5f14

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5f14

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5f14

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_5f8d

jr_003_5f14:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_5f88

    ld a, [$b98b]
    cp $00
    jr z, jr_003_5f58

    cp $ff
    jr z, jr_003_5f88

    ld a, [$c86d]
    cp $00
    jr z, jr_003_5f58

    cp $03
    jr z, jr_003_5f58

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_003_5f74

jr_003_5f58:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_003_5f74:
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_5f88

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_5f88

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_5f88

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_5f8d

jr_003_5f88:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_5f8d:
jr_003_5f8d:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_5f92:
    ld a, [$c606]
    sub $08
    ld b, a
    ld a, [$c606]
    add $08
    ld c, a
    ld a, [$c608]
    sub $0c
    ld d, a
    ld a, [$c608]
    add $08
    ld e, a
    inc c
    inc c
    inc d
    inc d
    dec e
    dec e
    ld a, [$b949]
    ldh [$ffa9], a
    ld a, $00
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $00
    jr z, jr_003_6025

    ld a, [$b949]
    cp $00
    jr z, jr_003_5ff4

    cp $ff
    jr z, jr_003_6025

    ld a, [$c80d]
    cp $00
    jr z, jr_003_5ff4

    cp $03
    jr z, jr_003_5ff4

    ld a, [$c806]
    sub $04
    ldh [$ffa4], a
    ld a, [$c806]
    add $12
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a
    jr jr_003_6010

jr_003_5ff4:
    ld a, [$c806]
    ldh [$ffa4], a
    ld a, [$c806]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c808]
    sub $08
    ldh [$ffa6], a
    ld a, [$c808]
    add $08
    ldh [$ffa7], a

jr_003_6010:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6025

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_6025

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6025

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_6187

jr_003_6025:
    ld a, [$b95f]
    ldh [$ffa9], a
    ld a, $01
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $01
    jr z, jr_003_609a

    ld a, [$b95f]
    cp $00
    jr z, jr_003_6069

    cp $ff
    jr z, jr_003_609a

    ld a, [$c82d]
    cp $00
    jr z, jr_003_6069

    cp $03
    jr z, jr_003_6069

    ld a, [$c826]
    sub $04
    ldh [$ffa4], a
    ld a, [$c826]
    add $12
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a
    jr jr_003_6085

jr_003_6069:
    ld a, [$c826]
    ldh [$ffa4], a
    ld a, [$c826]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c828]
    sub $08
    ldh [$ffa6], a
    ld a, [$c828]
    add $08
    ldh [$ffa7], a

jr_003_6085:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_609a

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_609a

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_609a

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_6187

jr_003_609a:
    ld a, [$b975]
    ldh [$ffa9], a
    ld a, $02
    ldh [$ffaa], a

Call_003_60a3:
    ld a, [$cc28]
    cp $02
    jr z, jr_003_610e

    ld a, [$b975]
    cp $00
    jr z, jr_003_60de

    cp $ff
    jr z, jr_003_610e

    ld a, [$c84d]
    cp $00
    jr z, jr_003_60de

    cp $03
    jr z, jr_003_60de

    ld a, [$c846]
    sub $04
    ldh [$ffa4], a
    ld a, [$c846]
    add $12
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a
    jr jr_003_60fa

jr_003_60de:
    ld a, [$c846]
    ldh [$ffa4], a
    ld a, [$c846]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c848]
    sub $08
    ldh [$ffa6], a
    ld a, [$c848]
    add $08
    ldh [$ffa7], a

jr_003_60fa:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_610e

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_610e

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_610e

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_6187

jr_003_610e:
    ld a, [$b98b]
    ldh [$ffa9], a
    ld a, $03
    ldh [$ffaa], a
    ld a, [$cc28]
    cp $03
    jr z, jr_003_6182

    ld a, [$b98b]
    cp $00
    jr z, jr_003_6152

    cp $ff
    jr z, jr_003_6182

    ld a, [$c86d]
    cp $00
    jr z, jr_003_6152

    cp $03
    jr z, jr_003_6152

    ld a, [$c866]
    sub $04
    ldh [$ffa4], a
    ld a, [$c866]
    add $12
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a
    jr jr_003_616e

jr_003_6152:
    ld a, [$c866]
    ldh [$ffa4], a
    ld a, [$c866]
    add $08
    add $08
    ldh [$ffa5], a
    ld a, [$c868]
    sub $08
    ldh [$ffa6], a
    ld a, [$c868]
    add $08
    ldh [$ffa7], a

jr_003_616e:
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6182

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_6182

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6182

    ldh a, [$ffa7]
    cp d
    jr nc, jr_003_6187

jr_003_6182:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_6187:
jr_003_6187:
    ld a, $01
    ldh [$ffa4], a
    ret


Call_003_618c:
    ld hl, $9c00
    ld de, $619a
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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

Call_003_61fe:
    ld hl, $620a
    ld de, $c600
    ld b, $20
    call Call_000_210f
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0078], sp
    and b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_622a:
    ld a, $3c
    ld [$cc26], a
    ret


Call_003_6230:
    ldh a, [$ffa4]
    ld hl, $518a
    call Call_000_0743
    ld a, [hl]
    cp $03
    ret z

    cp $04
    ret z

    cp $ff
    ret z

    ldh a, [$ffa4]
    ld hl, $5192
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld b, a
    ld a, [$c606]
    cp b
    jr c, jr_003_625f

    sub b
    ldh [$ffa5], a
    jr jr_003_6265

jr_003_625f:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa5], a

jr_003_6265:
    inc hl
    inc hl
    ld a, [hl]
    ld b, a
    ld a, [$c608]
    cp b
    jr c, jr_003_6274

    sub b
    ldh [$ffa6], a
    jr jr_003_627a

jr_003_6274:
    ld c, a
    ld a, b
    ld b, c
    sub b
    ldh [$ffa6], a

jr_003_627a:
    ld b, a
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_62a8

    ldh a, [$ffa4]
    ld hl, $5192
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, a
    ld a, [$c606]
    cp b
    jr c, jr_003_62a3

    ld a, $02
    ld [hl], a
    jr jr_003_62cc

jr_003_62a3:
    ld a, $01
    ld [hl], a
    jr jr_003_62cc

jr_003_62a8:
    ldh a, [$ffa4]
    ld hl, $5192
    call Call_000_0743
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, a
    ld a, [$c608]
    cp b
    jr c, jr_003_62c9

    ld a, $00
    ld [hl], a
    jr jr_003_62cc

jr_003_62c9:
    ld a, $03
    ld [hl], a

jr_003_62cc:
    ldh a, [$ffa4]
    ld hl, $518a
    call Call_000_0743
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $03
    ld [hl+], a
    ld a, $e0
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


Call_003_62e6:
    ld a, [$cc26]
    or a
    ret z

    dec a
    ld [$cc26], a
    ret nz

    ld a, $00
    ldh [$ffa4], a
    call Call_003_6230
    ld a, $01
    ldh [$ffa4], a
    call Call_003_6230
    ld a, $02
    ldh [$ffa4], a
    call Call_003_6230
    ld a, $03
    ldh [$ffa4], a
    call Call_003_6230
    ret


Call_003_630d:
    ld hl, $6ee0
    ld a, $0f
    call Call_000_1f96
    ret


Call_003_6316:
    ld hl, $6f0c
    ld a, $0f
    call Call_000_1f96
    ret


Call_003_631f:
    ld hl, $6f38
    ld a, $0f
    call Call_000_1f96
    ret


Call_003_6328:
    ld hl, $518a

Call_003_632b:
    ld a, [$b9a2]
    call Call_000_0743
    ld a, $01
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld d, h
    ld e, l
    ld hl, $cd2c
    ld b, $04
    call Call_000_210f
    ld a, $ff
    ld [$b9a2], a
    ret


Call_003_6349:
    ret


Call_003_634a:
    cp $0a
    jr c, jr_003_6358

    cp $50
    jr c, jr_003_635b

    cp $a0
    jr c, jr_003_6363

    jr jr_003_636b

jr_003_6358:
    ld a, $00
    ret


jr_003_635b:
    ld a, b
    cp $00
    jr nz, jr_003_6358

    ld a, $01
    ret


jr_003_6363:
    ld a, b
    cp $00
    jr nz, jr_003_6358

    ld a, $02
    ret


jr_003_636b:
    ld a, b
    cp $00
    jr nz, jr_003_6358

    ld a, $03
    ret


    ld a, [$b949]
    cp $ff
    jr z, jr_003_63a0

    ld a, [$b953]
    bit 0, a
    jr z, jr_003_638d

    ld a, [$b94f]
    add $03
    jr nc, jr_003_638a

    ld a, $ff

jr_003_638a:
    ld [$b94f], a

jr_003_638d:
    ld a, [$b953]
    bit 2, a
    jr z, jr_003_63a0

    ld a, [$b94f]
    add $01
    jr nc, jr_003_639d

    ld a, $ff

jr_003_639d:
    ld [$b94f], a

jr_003_63a0:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_63cd

    ld a, [$b969]
    bit 0, a
    jr z, jr_003_63ba

    ld a, [$b965]
    add $03
    jr nc, jr_003_63b7

    ld a, $ff

jr_003_63b7:
    ld [$b965], a

jr_003_63ba:
    ld a, [$b969]
    bit 2, a
    jr z, jr_003_63cd

    ld a, [$b965]
    add $01
    jr nc, jr_003_63ca

    ld a, $ff

jr_003_63ca:
    ld [$b965], a

jr_003_63cd:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_63fa

    ld a, [$b97f]
    bit 0, a
    jr z, jr_003_63e7

    ld a, [$b97b]
    add $03
    jr nc, jr_003_63e4

    ld a, $ff

jr_003_63e4:
    ld [$b97b], a

jr_003_63e7:
    ld a, [$b97f]
    bit 2, a
    jr z, jr_003_63fa

    ld a, [$b97b]
    add $01
    jr nc, jr_003_63f7

    ld a, $ff

jr_003_63f7:
    ld [$b97b], a

jr_003_63fa:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_6427

    ld a, [$b995]
    bit 0, a
    jr z, jr_003_6414

    ld a, [$b991]
    add $03
    jr nc, jr_003_6411

    ld a, $ff

jr_003_6411:
    ld [$b991], a

jr_003_6414:
    ld a, [$b995]
    bit 2, a
    jr z, jr_003_6427

    ld a, [$b991]
    add $01
    jr nc, jr_003_6424

    ld a, $ff

jr_003_6424:
    ld [$b991], a

jr_003_6427:
    ld a, [$b8a0]
    cp $00
    jp nz, Jump_003_657f

    ld a, [$b949]
    cp $ff
    jr z, jr_003_643d

    ld a, [$b953]
    bit 3, a
    jr nz, jr_003_6467

jr_003_643d:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_644b

    ld a, [$b969]
    bit 3, a
    jr nz, jr_003_6467

jr_003_644b:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_6459

    ld a, [$b97f]
    bit 3, a
    jr nz, jr_003_6467

jr_003_6459:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_6497

    ld a, [$b995]
    bit 3, a
    jr z, jr_003_6497

jr_003_6467:
    ld a, [$b94f]
    add $05
    jr nc, jr_003_6470

    ld a, $ff

jr_003_6470:
    ld [$b94f], a
    ld a, [$b965]
    add $05
    jr nc, jr_003_647c

    ld a, $ff

jr_003_647c:
    ld [$b965], a
    ld a, [$b97b]
    add $05
    jr nc, jr_003_6488

    ld a, $ff

jr_003_6488:
    ld [$b97b], a
    ld a, [$b991]
    add $05
    jr nc, jr_003_6494

    ld a, $ff

jr_003_6494:
    ld [$b991], a

Jump_003_6497:
jr_003_6497:
    ld a, [$b949]
    cp $ff
    jr z, jr_003_64b5

    cp $00
    jr z, jr_003_64b5

    cp $01
    jr z, jr_003_64b5

    ld a, [$b953]
    bit 4, a
    jr nz, jr_003_64b5

    ld hl, $b949
    ld b, $08
    call Call_003_75b6

jr_003_64b5:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_64d3

    cp $00
    jr z, jr_003_64d3

    cp $01
    jr z, jr_003_64d3

    ld a, [$b969]
    bit 4, a
    jr nz, jr_003_64d3

    ld hl, $b95f
    ld b, $08
    call Call_003_75b6

jr_003_64d3:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_64f1

    cp $00
    jr z, jr_003_64f1

    cp $01
    jr z, jr_003_64f1

    ld a, [$b97f]
    bit 4, a
    jr nz, jr_003_64f1

    ld hl, $b975
    ld b, $08
    call Call_003_75b6

jr_003_64f1:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_650f

    cp $00
    jr z, jr_003_650f

    cp $01
    jr z, jr_003_650f

    ld a, [$b995]
    bit 4, a
    jr nz, jr_003_650f

    ld hl, $b98b
    ld b, $08
    call Call_003_75b6

jr_003_650f:
    call Call_003_73e0
    ld a, [$b949]
    cp $ff
    jr z, jr_003_6523

    ld a, [$b949]
    ld a, $00
    ldh [$ffa4], a
    call Call_003_7031

jr_003_6523:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_6534

    ld a, [$b95f]
    ld a, $01
    ldh [$ffa4], a
    call Call_003_7031

jr_003_6534:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_6545

    ld a, [$b975]
    ld a, $02
    ldh [$ffa4], a
    call Call_003_7031

jr_003_6545:
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_6556

    ld a, [$b98b]
    ld a, $03
    ldh [$ffa4], a
    call Call_003_7031

jr_003_6556:
    xor a
    ld [$b948], a
    ld [$b953], a
    ld [$b969], a
    ld [$b97f], a
    ld [$b995], a
    ld hl, $b949
    call Call_003_75a1
    ld hl, $b95f
    call Call_003_75a1
    ld hl, $b975
    call Call_003_75a1
    ld hl, $b98b
    call Call_003_75a1
    ret


Jump_003_657f:
    ld a, [$b949]
    cp $ff
    jr z, jr_003_65c9

    ld a, [$b953]
    bit 3, a
    jr z, jr_003_65c9

    ld a, $01
    ld [$b952], a
    ld hl, $b949
    ld b, $0a
    call Call_003_75b6
    ld a, [$b949]
    cp $02
    jr nz, jr_003_65c9

    xor a
    ld [$b94e], a
    ld a, [$b95d]
    or a
    jr nz, jr_003_65c9

    call Call_000_0876
    ldh a, [$ff9c]
    cp $10
    jr nc, jr_003_65c9

    ld a, $04
    ld [$b949], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_65c9

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0fb9

jr_003_65c9:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_6613

    ld a, [$b969]
    bit 3, a
    jr z, jr_003_6613

    ld a, $01
    ld [$b968], a
    ld hl, $b95f
    ld b, $0a
    call Call_003_75b6
    ld a, [$b95f]
    cp $02
    jr nz, jr_003_6613

    xor a
    ld [$b964], a
    ld a, [$b973]
    or a
    jr nz, jr_003_6613

    call Call_000_0876
    ldh a, [$ff9c]
    cp $02
    jr nc, jr_003_6613

    ld a, $04
    ld [$b95f], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_6613

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0fb9

jr_003_6613:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_665d

    ld a, [$b97f]
    bit 3, a
    jr z, jr_003_665d

    ld a, $01
    ld [$b97e], a
    ld hl, $b975
    ld b, $0a
    call Call_003_75b6
    ld a, [$b975]
    cp $02
    jr nz, jr_003_665d

    xor a
    ld [$b97a], a
    ld a, [$b989]
    or a
    jr nz, jr_003_665d

    call Call_000_0876
    ldh a, [$ff9c]
    cp $02
    jr nc, jr_003_665d

    ld a, $04
    ld [$b975], a
    ld a, [$b945]
    cp $0a
    jr nc, jr_003_665d

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0fb9

jr_003_665d:
    ld a, [$b98b]
    cp $ff
    jp z, Jump_003_6497

    ld a, [$b995]
    bit 3, a
    jp z, Jump_003_6497

    ld a, $01
    ld [$b994], a
    ld hl, $b98b
    ld b, $0a
    call Call_003_75b6
    ld a, [$b98b]
    cp $02
    jp nz, Jump_003_6497

    xor a
    ld [$b990], a
    ld a, [$b99f]
    or a
    jp nz, Jump_003_6497

    call Call_000_0876
    ldh a, [$ff9c]
    cp $02
    jp nc, Jump_003_6497

    ld a, $04
    ld [$b98b], a
    ld a, [$b945]
    cp $0a
    jp nc, Jump_003_6497

    inc a
    ld [$b945], a
    ld a, $f6
    call Call_000_0fb9
    jp Jump_003_6497


Call_003_66b0:
    ld a, [$cc24]
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_003_66df

    ld a, [$cc25]
    sub $04
    ld [$cc25], a
    jr z, jr_003_66c6

    jr nc, jr_003_670e

jr_003_66c6:
    ld a, $01
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_003_6894


jr_003_66df:
    ld a, [$cc24]
    and $0f
    ld b, a
    ld a, [$cb62]
    cp b
    jr nz, jr_003_670e

    ld a, [$cc25]
    sub $02
    ld [$cc25], a
    jr nz, jr_003_670e

    ld a, $06
    ld [$ba1d], a
    ld a, $3c
    ld [$ba1e], a
    xor a
    ld [$ba1f], a
    ld [$cc25], a
    ld a, $ff
    ld [$cc24], a
    jp Jump_003_6894


jr_003_670e:
    ld a, [$ba12]
    cp $ff
    ret z

    ld a, [$ba1e]
    ld b, a
    ld a, [$ba1f]
    inc a
    inc a
    inc a
    inc a
    ld [$ba1f], a
    cp b
    jp c, Jump_003_6825

    xor a
    ld [$ba1f], a
    ld a, [$ba1d]
    cp $03
    jr nz, jr_003_679e

    ld a, [$cc37]
    ld hl, $6738
    rst $00
    ld b, b
    ld h, a
    ld e, b
    ld h, a
    ld [hl], b
    ld h, a
    adc b
    ld h, a
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $03
    jr nz, jr_003_6753

    ld a, $00

jr_003_6753:
    ld [$cc37], a
    jr jr_003_679e

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $02
    jr nz, jr_003_676b

    ld a, $01

jr_003_676b:
    ld [$cc37], a
    jr jr_003_679e

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $01
    jr nz, jr_003_6783

    ld a, $02

jr_003_6783:
    ld [$cc37], a
    jr jr_003_679e

    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_06ce
    cp $00
    jr nz, jr_003_679b

    ld a, $03

jr_003_679b:
    ld [$cc37], a

jr_003_679e:
    call Call_000_0876
    ldh a, [$ff9c]
    and $f8
    ld b, a
    cp $60
    ld a, b
    jr nc, jr_003_67ad

    add $60

jr_003_67ad:
    sub $30
    ld [$ba1e], a
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_06ce
    cp $1e
    jr c, jr_003_67d1

    cp $28
    jr c, jr_003_67d8

    cp $3c
    jr c, jr_003_67ea

    cp $5a
    jr c, jr_003_6801

    jr jr_003_6801

jr_003_67d1:
    ld a, $00
    ld [$ba1d], a
    jr jr_003_6825

jr_003_67d8:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_67d1

    cp $05
    jr z, jr_003_67d1

    ld a, $04
    ld [$ba1d], a
    jr jr_003_6825

jr_003_67ea:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_67f5

    cp $00
    jr nz, jr_003_67d1

jr_003_67f5:
    ld a, $03
    ld [$ba1d], a
    ld a, $c0
    ld [$ba1e], a
    jr jr_003_6825

jr_003_6801:
    ld a, [$ba1d]
    cp $03
    jr z, jr_003_67d1

    cp $05
    jr z, jr_003_67d1

    ld a, $02
    ld [$ba1d], a
    jr jr_003_6825

    ld a, [$ba1d]
    cp $04
    jr z, jr_003_681e

    cp $00
    jr nz, jr_003_67d1

jr_003_681e:
    ld a, $05
    ld [$ba1d], a
    jr jr_003_6825

Jump_003_6825:
jr_003_6825:
    ld a, [$ba1d]
    cp $03
    jr nz, jr_003_6844

    ld a, [$ba12]
    cp $03
    jr z, jr_003_6844

    cp $04
    jr z, jr_003_6844

    call Call_003_69d8
    ld a, [$ba1f]
    bit 1, a
    jr nz, jr_003_6844

    call Call_003_6d31

jr_003_6844:
    ld hl, $684b
    ld a, [$ba1d]
    rst $00
    ld e, c
    ld l, b
    sub h
    ld l, b
    ret


    ld l, b
    or $68
    cpl
    ld l, c
    ld e, e
    ld l, c
    add a
    ld l, c
    ld a, [$ba12]
    cp $00
    jr z, jr_003_6874

    cp $01
    jr z, jr_003_687c

    cp $02
    jr z, jr_003_6884

    cp $03
    jr z, jr_003_688c

Jump_003_686c:
jr_003_686c:
    ld a, $13
    call Call_000_1889
    jp Jump_003_69a5


Jump_003_6874:
jr_003_6874:
    ld a, $00
    call Call_000_1889
    jp Jump_003_69a5


Jump_003_687c:
jr_003_687c:
    ld a, $06
    call Call_000_1889
    jp Jump_003_69a5


jr_003_6884:
    ld a, $0c
    call Call_000_1889
    jp Jump_003_69a5


Jump_003_688c:
jr_003_688c:
    ld a, $15
    call Call_000_1889
    jp Jump_003_69a5


Jump_003_6894:
    ld a, [$ba12]
    cp $00
    jr z, jr_003_68a9

    cp $01
    jr z, jr_003_68b1

    cp $02
    jr z, jr_003_68b9

    cp $03
    jr z, jr_003_68c1

    jr jr_003_686c

jr_003_68a9:
    ld a, $01
    call Call_000_1889
    jp Jump_003_69a5


jr_003_68b1:
    ld a, $07
    call Call_000_1889
    jp Jump_003_69a5


jr_003_68b9:
    ld a, $0d
    call Call_000_1889
    jp Jump_003_69a5


jr_003_68c1:
    ld a, $16
    call Call_000_1889
    jp Jump_003_69a5


    ld a, [$ba12]
    cp $00
    jr z, jr_003_68de

    cp $01
    jr z, jr_003_68e6

    cp $02
    jr z, jr_003_68ee

    cp $03
    jr z, jr_003_688c

    jr jr_003_686c

jr_003_68de:
    ld a, $02
    call Call_000_1889
    jp Jump_003_69a5


jr_003_68e6:
    ld a, $08
    call Call_000_1889
    jp Jump_003_69a5


jr_003_68ee:
    ld a, $0e
    call Call_000_1889
    jp Jump_003_69a5


    ld a, [$ba12]
    cp $00
    jr z, jr_003_6911

    cp $01
    jr z, jr_003_6919

    cp $02
    jr z, jr_003_6921

    cp $03
    jr z, jr_003_6928

    ld a, $12
    call Call_000_1889
    jp Jump_003_69a5


jr_003_6911:
    ld a, $03
    call Call_000_1889
    jp Jump_003_69a5


jr_003_6919:
    ld a, $09
    call Call_000_1889
    jp Jump_003_69a5


jr_003_6921:
    ld a, $0f
    call Call_000_1889
    jr jr_003_69a5

jr_003_6928:
    ld a, $14
    call Call_000_1889
    jr jr_003_69a5

    ld a, [$ba12]
    cp $00
    jr z, jr_003_6946

    cp $01
    jr z, jr_003_694d

    cp $02
    jr z, jr_003_6954

    cp $03
    jp z, Jump_003_688c

    jp Jump_003_686c


jr_003_6946:
    ld a, $04
    call Call_000_1889
    jr jr_003_69a5

jr_003_694d:
    ld a, $0a
    call Call_000_1889
    jr jr_003_69a5

jr_003_6954:
    ld a, $10
    call Call_000_1889
    jr jr_003_69a5

    ld a, [$ba12]
    cp $00
    jr z, jr_003_6972

    cp $01
    jr z, jr_003_6979

    cp $02
    jr z, jr_003_6980

    cp $03
    jp z, Jump_003_688c

    jp Jump_003_686c


jr_003_6972:
    ld a, $05
    call Call_000_1889
    jr jr_003_69a5

jr_003_6979:
    ld a, $0b
    call Call_000_1889
    jr jr_003_69a5

jr_003_6980:
    ld a, $11
    call Call_000_1889
    jr jr_003_69a5

    ld a, [$ba12]
    cp $00
    jp z, Jump_003_6874

    cp $01
    jp z, Jump_003_687c

    cp $02
    jr z, jr_003_69a0

    cp $03
    jp z, Jump_003_688c

    jp Jump_003_686c


jr_003_69a0:
    ld a, $17
    call Call_000_1889

Jump_003_69a5:
jr_003_69a5:
    ld hl, $c800
    ld a, [$cb62]
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
    ld [$cc2c], a
    ld a, [hl+]
    ld [$cc2d], a
    ld a, [hl+]
    ld [$cc2e], a
    ld a, [hl+]
    ld [$cc2f], a
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
    ld [$cc3b], a
    ret


Call_003_69d8:
    ld hl, $69df
    ld a, [$cc37]
    rst $00
    rst $20
    ld l, c
    or [hl]
    ld l, d
    sub b
    ld l, e
    ld h, [hl]
    ld l, h
    ld a, [$cc30]
    add $07
    ld l, a
    ld a, [$cc31]
    adc $00
    ld h, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l

Jump_003_69ff:
    srl h
    rr l
    ld a, l
    ldh [$ffa4], a
    ld a, [$cc30]
    add $07
    sub $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc32]
    ld l, a
    ld a, [$cc33]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc32]
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    sub $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc30]
    add $07
    add $07
    sub $10
    ld l, a
    ld a, [$cc31]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc32]
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    sub $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc32]
    add $07
    add $07
    ld l, a
    ld a, [$cc33]
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
    ld a, [$cc30]
    add $10
    ld l, a
    ld a, [$cc31]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


    ld a, [$cc30]
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    add $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc30]
    add $07
    sub $07
    ld l, a
    ld a, [$cc31]
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
    ld a, [$cc32]
    sub $02
    ld l, a
    ld a, [$cc33]
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
    ld [$ba20], a
    ld a, [hl+]
    ld [$ba21], a
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
    ld [$ba22], a
    ld a, [hl+]
    ld [$ba23], a
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
    ld [$ba24], a
    ld a, [hl+]
    ld [$ba25], a
    ret


Call_003_6d31:
    ld hl, $6d38
    ld a, [$cc37]
    rst $00
    ld b, b
    ld l, l
    ld l, e
    ld l, l
    sub l
    ld l, l
    cp [hl]
    ld l, l
    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_003_6de6

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6d64

    ld a, [$ba23]
    and $02
    jp z, Jump_003_6e18

    ld a, [$ba25]
    and $02
    jp z, Jump_003_6dff

jr_003_6d64:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jp z, Jump_003_6dff

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6d8e

    ld a, [$ba23]
    and $02
    jr z, jr_003_6de6

    ld a, [$ba25]
    and $02
    jp z, Jump_003_6e31

jr_003_6d8e:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_003_6e18

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6db7

    ld a, [$ba23]
    and $02
    jp z, Jump_003_6e31

    ld a, [$ba25]
    and $02
    jr z, jr_003_6de6

jr_003_6db7:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


    ld a, [$ba25]
    ld b, a
    ld a, [$ba23]
    or b
    and $02
    jr z, jr_003_6e31

    ld a, [$ba21]
    and $02
    jr nz, jr_003_6ddf

    ld a, [$ba23]
    and $02
    jr z, jr_003_6dff

    ld a, [$ba25]
    and $02
    jr z, jr_003_6e18

jr_003_6ddf:
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Jump_003_6de6:
jr_003_6de6:
    call Call_003_6e4a
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc32]
    add $01
    ld [$cc32], a
    ld a, [$cc33]
    adc $00
    ld [$cc33], a
    ret


Jump_003_6dff:
jr_003_6dff:
    call Call_003_6f3d
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc30]
    sub $01
    ld [$cc30], a
    ld a, [$cc31]
    sbc $00
    ld [$cc31], a
    ret


Jump_003_6e18:
jr_003_6e18:
    call Call_003_6fb7
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc30]
    add $01
    ld [$cc30], a
    ld a, [$cc31]
    adc $00
    ld [$cc31], a
    ret


Jump_003_6e31:
jr_003_6e31:
    call Call_003_6ec3
    ldh a, [$ffa4]
    cp $00
    ret nz

    ld a, [$cc32]
    sub $01
    ld [$cc32], a
    ld a, [$cc33]
    sbc $00
    ld [$cc33], a
    ret


Call_003_6e4a:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6e6b

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_003_6e83

jr_003_6e6b:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $12
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_003_6e83:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6eb3

    ldh a, [$ffa7]
    cp e
    jr c, jr_003_6eb3

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6eb3

    ldh a, [$ffa5]
    cp b
    jr nc, jr_003_6eb8

jr_003_6eb3:
    ld a, $00
    ldh [$ffa4], a
    ret


jr_003_6eb8:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_6ec3:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6ee4

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_003_6efc

jr_003_6ee4:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_003_6efc:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp d
    jr c, jr_003_6f2d

    ldh a, [$ffa6]
    cp d
    jr nc, jr_003_6f2d

    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_6f2d

    ldh a, [$ffa5]
    cp b
    jp nc, Jump_003_6f32

jr_003_6f2d:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_6f32:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_6f3d:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6f5e

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_003_6f76

jr_003_6f5e:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_003_6f76:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp b
    jr c, jr_003_6fa7

    ldh a, [$ffa4]
    cp b
    jr nc, jr_003_6fa7

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_6fa7

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_6fac

jr_003_6fa7:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_6fac:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_6fb7:
    ld a, [$ba12]
    cp $00
    jr nz, jr_003_6fd8

    ld a, [$cc30]
    ld b, a
    ld a, [$cc30]
    add $08
    add $08
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a
    jr jr_003_6ff0

jr_003_6fd8:
    ld a, [$cc30]
    sub $04
    ld b, a
    ld a, [$cc30]
    add $0c
    ld c, a
    ld a, [$cc32]
    sub $08
    ld d, a
    ld a, [$cc32]
    add $08
    ld e, a

jr_003_6ff0:
    ld a, [$c606]
    sub $08
    ldh [$ffa4], a
    ld a, [$c606]
    add $08
    ldh [$ffa5], a
    ld a, [$c608]
    sub $0c
    ldh [$ffa6], a
    ld a, [$c608]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp c
    jr nc, jr_003_7021

    ldh a, [$ffa5]
    cp c
    jr c, jr_003_7021

    ldh a, [$ffa6]
    cp e
    jr nc, jr_003_7021

    ldh a, [$ffa7]
    cp d
    jp nc, Jump_003_7026

jr_003_7021:
    ld a, $00
    ldh [$ffa4], a
    ret


Jump_003_7026:
    ld a, $01
    ldh [$ffa4], a
    ld a, [$ba1e]
    ld [$ba1f], a
    ret


Call_003_7031:
    ld hl, $73d8
    call Call_000_0743
    ld a, [hl]
    ld hl, $703c
    rst $00
    ld b, [hl]
    ld [hl], b
    ld l, b
    ld [hl], b
    adc d
    ld [hl], b
    ld d, c
    ld [hl], d
    ld a, e
    ld [hl], e
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $0e
    jr nc, jr_003_705d

    inc [hl]
    ret


jr_003_705d:
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $01
    ld [hl], a
    ret


    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_003_707f

    inc [hl]
    ret


jr_003_707f:
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $02
    ld [hl], a
    ret


    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    jr nz, jr_003_70b9

    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    cp $03
    jr c, jr_003_70b1

    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], a
    jr jr_003_70b9

jr_003_70b1:
    inc [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a

jr_003_70b9:
    ld hl, $70bf
    ldh a, [$ffa4]
    rst $00
    rst $00
    ld [hl], b
    ret nc

    ld [hl], b
    reti


    ld [hl], b
    ldh [c], a
    ld [hl], b
    ld a, [$b948]
    bit 0, a
    jr nz, jr_003_7149

    jr jr_003_70e9

    ld a, [$b948]
    bit 1, a
    jr nz, jr_003_7149

    jr jr_003_70e9

    ld a, [$b948]
    bit 2, a
    jr nz, jr_003_7149

    jr jr_003_70e9

    ld a, [$b948]
    bit 3, a
    jr nz, jr_003_7149

jr_003_70e9:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_003_712e

    call Call_000_0876
    ldh a, [$ff9c]
    cp $08
    jr nc, jr_003_712f

    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_003_712e:
    dec [hl]

jr_003_712f:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a
    ret


jr_003_7149:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $09
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $01
    ret z

    dec hl
    ld a, [hl]
    ld de, $724e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    dec hl
    ld a, [hl]
    cp c
    ret c

    xor a
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $01
    ld [hl], a
    ret


    ld a, [$b8a0]
    cp $00
    jr z, jr_003_71ce

    cp $01
    jr z, jr_003_71ce

    cp $02
    jr z, jr_003_71ce

    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_003_71ce

    call Call_000_0876
    ldh a, [$ff9c]
    cp $08
    jr nc, jr_003_71ce

    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


jr_003_71ce:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    rst $00
    and $71
    rst $30
    ld [hl], c
    rst $38
    ld [hl], c
    ld a, [$b884]
    cp $00
    ret z

    cp $02
    ret z

    ld a, [$b883]
    cp $0e
    ret nz

    jr jr_003_720b

    ld a, [$b883]
    cp $0e
    ret nz

    jr jr_003_720b

    ld a, [$b883]
    cp $00
    jr z, jr_003_720b

    cp $0e
    jr z, jr_003_720b

    ret


jr_003_720b:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    ret nz

    call Call_000_0876
    ldh a, [$ff9c]
    cp $08
    ret nc

    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $04
    ld [hl], a
    ld a, [$b945]
    cp $0a
    ret nc

    inc a
    ld [$b945], a
    ret


    inc d
    ld a, [bc]
    dec b
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $15
    jr nc, jr_003_726b

    inc [hl]
    inc hl
    jp Jump_003_736e


jr_003_726b:
    ld a, [$b9a2]
    cp $ff
    jr z, jr_003_727d

    ld b, a
    ld a, [$b9a1]
    and $f0
    or b
    ld [$b9a1], a
    ret


jr_003_727d:
    ld a, $00
    ldh [$ffa5], a
    ld a, [$b949]
    cp $ff
    jr z, jr_003_72b4

    ld a, $01
    ldh [$ffa5], a
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_72b4

    ld a, $02
    ldh [$ffa5], a
    ld a, [$b975]
    cp $ff
    jr z, jr_003_72b4

    ld a, $03
    ldh [$ffa5], a
    ld a, [$b98b]
    cp $ff
    jr z, jr_003_72b4

    ld a, [$b9a1]
    and $f0
    or $0f
    ld [$b9a1], a
    ret


jr_003_72b4:
    ld a, [$b9a1]
    and $f0
    ld b, a
    ldh a, [$ffa5]
    or b
    ld [$b9a1], a
    ld hl, $73d8
    ldh a, [$ffa5]
    call Call_000_0743
    ld a, $00
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld d, h
    ld e, l
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp $50
    jr c, jr_003_72f8

    cp $a0
    jr c, jr_003_72fd

    ld a, $50
    ld [de], a
    jr jr_003_7300

jr_003_72f8:
    ld a, $14
    ld [de], a
    jr jr_003_7300

jr_003_72fd:
    ld a, $32
    ld [de], a

jr_003_7300:
    inc de
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_06ce
    cp $0a
    jr c, jr_003_731b

    cp $5f
    jr c, jr_003_7320

    ld a, $02
    ld [de], a
    jr jr_003_7323

jr_003_731b:
    ld a, $00
    ld [de], a
    jr jr_003_7323

jr_003_7320:
    ld a, $01
    ld [de], a

jr_003_7323:
    inc de
    call Call_000_0876
    ldh a, [$ff9c]
    ld h, $00
    ld l, a
    ld a, $64
    call Call_000_06ce
    cp $0a
    jr c, jr_003_733e

    cp $5f
    jr c, jr_003_7343

    ld a, $02
    ld [de], a
    jr jr_003_7346

jr_003_733e:
    ld a, $00
    ld [de], a
    jr jr_003_7346

jr_003_7343:
    ld a, $01
    ld [de], a

jr_003_7346:
    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $02
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $1e
    jr nc, jr_003_736d

    ld a, $ff

jr_003_736d:
    ld [hl], a

Jump_003_736e:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    bit 4, a
    ret nz

    dec hl
    ld a, $01
    ld [hl], a
    ret


    ld hl, $73d8
    ldh a, [$ffa4]
    call Call_000_0743
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc [hl]
    ld a, [hl]
    cp $07
    jr nc, jr_003_739f

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    bit 4, a
    ret nz

    dec hl
    ld a, $01
    ld [hl], a
    ret


jr_003_739f:
    xor a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ldh a, [$ffa4]
    ld hl, $73ac
    rst $00
    or h
    ld [hl], e
    cp l
    ld [hl], e
    add $73
    rst $08
    ld [hl], e
    ld a, [$b9a1]
    set 4, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 5, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 6, a
    ld [$b9a1], a
    ret


    ld a, [$b9a1]
    set 7, a
    ld [$b9a1], a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c

Call_003_73e0:
    call Call_003_74ad
    ld a, [$b949]
    cp $02
    jr z, jr_003_73ee

    cp $04
    jr nz, jr_003_7417

jr_003_73ee:
    ld a, [$b953]
    bit 7, a
    jr z, jr_003_7417

    xor a
    ld [$b94e], a
    ld [$b952], a
    ld a, [$b94f]
    add $0a
    jr nc, jr_003_7405

    ld a, $ff

jr_003_7405:
    ld [$b94f], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_7417

    ld a, $03
    ld [$b949], a
    ld a, $01
    ldh [$ffa5], a

jr_003_7417:
    ld a, [$b95f]
    cp $02
    jr z, jr_003_7422

    cp $04
    jr nz, jr_003_744b

jr_003_7422:
    ld a, [$b969]
    bit 7, a
    jr z, jr_003_744b

    xor a
    ld [$b964], a
    ld [$b968], a
    ld a, [$b965]
    add $0a
    jr nc, jr_003_7439

    ld a, $ff

jr_003_7439:
    ld [$b965], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_744b

    ld a, $03
    ld [$b95f], a
    ld a, $01
    ldh [$ffa5], a

jr_003_744b:
    ld a, [$b975]
    cp $02
    jr z, jr_003_7456

    cp $04
    jr nz, jr_003_747f

jr_003_7456:
    ld a, [$b97f]
    bit 7, a
    jr z, jr_003_747f

    xor a
    ld [$b97a], a
    ld [$b97e], a
    ld a, [$b97b]
    add $0a
    jr nc, jr_003_746d

    ld a, $ff

jr_003_746d:
    ld [$b97b], a
    ldh a, [$ffa5]
    cp $01
    jr z, jr_003_747f

    ld a, $03
    ld [$b975], a
    ld a, $01
    ldh [$ffa5], a

jr_003_747f:
    ld a, [$b98b]
    cp $02
    jr z, jr_003_7489

    cp $04
    ret nz

jr_003_7489:
    ld a, [$b995]
    bit 7, a
    ret z

    xor a
    ld [$b990], a
    ld [$b994], a
    ld a, [$b991]
    add $0a
    jr nc, jr_003_749f

    ld a, $ff

jr_003_749f:
    ld [$b991], a
    ldh a, [$ffa5]
    cp $01
    ret z

    ld a, $03
    ld [$b98b], a
    ret


Call_003_74ad:
    ld a, [$b949]
    cp $03
    jr z, jr_003_74cd

    ld a, [$b95f]
    cp $03
    jr z, jr_003_74cd

    ld a, [$b975]
    cp $03
    jr z, jr_003_74cd

    ld a, [$b98b]
    cp $03
    jr z, jr_003_74cd

    xor a
    ldh [$ffa5], a
    ret


jr_003_74cd:
    ld a, $01
    ldh [$ffa5], a
    ret


Call_003_74d2:
    ld a, [$b882]
    cp $06
    ret c

    ld a, [$b949]
    cp $ff
    jr z, jr_003_750b

    ld a, [$b949]
    cp $03
    jr nz, jr_003_74ef

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_7503

    jr jr_003_750b

jr_003_74ef:
    ld a, [$b949]
    cp $02
    jr z, jr_003_74fc

    cp $04
    jr nz, jr_003_74fc

    jr jr_003_750b

jr_003_74fc:
    ld a, [$b948]
    bit 0, a
    jr z, jr_003_750b

jr_003_7503:
    ld a, [$b953]
    set 4, a
    ld [$b953], a

jr_003_750b:
    ld a, [$b95f]
    cp $ff
    jr z, jr_003_753e

    ld a, [$b95f]
    cp $03
    jr nz, jr_003_7522

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_7536

    jr jr_003_753e

jr_003_7522:
    ld a, [$b95f]
    cp $02
    jr z, jr_003_752f

    cp $04
    jr nz, jr_003_752f

    jr jr_003_753e

jr_003_752f:
    ld a, [$b948]
    bit 1, a
    jr z, jr_003_753e

jr_003_7536:
    ld a, [$b969]
    set 4, a
    ld [$b969], a

jr_003_753e:
    ld a, [$b975]
    cp $ff
    jr z, jr_003_7571

    ld a, [$b975]
    cp $03
    jr nz, jr_003_7555

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_7569

    jr jr_003_7571

jr_003_7555:
    ld a, [$b975]
    cp $02
    jr z, jr_003_7562

    cp $04
    jr nz, jr_003_7562

    jr jr_003_7571

jr_003_7562:
    ld a, [$b948]
    bit 2, a
    jr z, jr_003_7571

jr_003_7569:
    ld a, [$b97f]
    set 4, a
    ld [$b97f], a

jr_003_7571:
    ld a, [$b98b]
    cp $ff
    ret z

    ld a, [$b98b]
    cp $03
    jr nz, jr_003_7586

    ld a, [$b948]
    bit 4, a
    jr nz, jr_003_7598

    ret


jr_003_7586:
    ld a, [$b98b]
    cp $02
    jr z, jr_003_7592

    cp $04
    jr nz, jr_003_7592

    ret


jr_003_7592:
    ld a, [$b948]
    bit 3, a
    ret z

jr_003_7598:
    ld a, [$b995]
    set 4, a
    ld [$b995], a
    ret


Call_003_75a1:
    ld a, [hl]
    cp $ff
    ret nz

    xor a
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_003_75b6:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $64
    jr c, jr_003_75cf

    ld a, [hl]
    sub b
    ld [hl], a
    cp $64
    ret nc

    ld a, $f6
    call Call_000_0fb9
    ret


jr_003_75cf:
    sub b
    ld [hl], a
    ret nc

    xor a
    ld [hl], a
    ret


    ld a, $ff
    ld [$b949], a
    ld [$b95f], a
    ld [$b975], a
    ld [$b98b], a
    ld a, $af
    ld hl, $b94a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b960
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b976
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $b98c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$b9a2], a
    ld a, $0f
    ld [$b9a1], a
    ld a, $ff
    ld [$b9a7], a
    ld [$b9b3], a
    ld [$b9bf], a
    ld [$b9cb], a
    ld a, $18
    ld [$b9eb], a
    ld [$b9ed], a
    ld a, $1e
    ld [$b9ef], a
    ld [$b9f1], a
    ld a, $e0
    ld [$ba06], a
    ret


Call_003_762f:
    ld a, $00
    ld [$cb62], a
    ld a, $02
    ld [$c80d], a
    ld a, [$b949]
    cp $ff
    jr nz, jr_003_7647

    ld a, $00
    ld [$c800], a
    jr jr_003_766e

jr_003_7647:
    ld hl, $c806
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b949]
    rst $00
    ld b, l
    ld [hl], a
    ld c, e
    ld [hl], a
    ld d, c
    ld [hl], a
    ld d, a
    ld [hl], a
    ld h, b
    ld [hl], a

Jump_003_7664:
    ld a, $01
    ld [$c800], a
    ld a, $10
    ld [$c801], a

jr_003_766e:
    ld a, $01
    ld [$cb62], a
    ld a, $02
    ld [$c82d], a
    ld a, [$b95f]
    cp $ff
    jr nz, jr_003_7686

    ld a, $00
    ld [$c820], a
    jr jr_003_76ad

jr_003_7686:
    ld hl, $c826
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $68
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b95f]
    rst $00
    ld h, [hl]
    ld [hl], a
    ld l, h
    ld [hl], a
    ld [hl], d
    ld [hl], a
    ld a, b
    ld [hl], a
    add c
    ld [hl], a

Jump_003_76a3:
    ld a, $01
    ld [$c820], a
    ld a, $11
    ld [$c821], a

jr_003_76ad:
    ld a, $02
    ld [$cb62], a
    ld a, $01
    ld [$c84d], a
    ld a, [$b975]
    cp $ff
    jr nz, jr_003_76c5

    ld a, $00
    ld [$c840], a
    jr jr_003_76ec

jr_003_76c5:
    ld hl, $c846
    ld a, $a8
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $38
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b975]
    rst $00
    add a
    ld [hl], a
    adc l
    ld [hl], a
    sub e
    ld [hl], a
    sbc c
    ld [hl], a
    and d
    ld [hl], a

Jump_003_76e2:
    ld a, $01
    ld [$c840], a
    ld a, $12
    ld [$c841], a

jr_003_76ec:
    ld a, $03
    ld [$cb62], a
    ld a, $01
    ld [$c86d], a
    ld a, [$b98b]
    cp $ff
    jr nz, jr_003_7704

    ld a, $00
    ld [$c860], a
    jr jr_003_772b

jr_003_7704:
    ld hl, $c866
    ld a, $a8
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $68
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$b98b]
    rst $00
    xor b
    ld [hl], a
    xor [hl]
    ld [hl], a
    or h
    ld [hl], a
    cp d
    ld [hl], a
    jp $3e77


    ld bc, $60ea
    ret z

    ld a, $13
    ld [$c861], a

jr_003_772b:
    call Call_003_4319
    call Call_003_432d
    call Call_003_4341
    call Call_003_4355
    xor a
    ld [$c80e], a
    ld [$c82e], a
    ld [$c84e], a
    ld [$c86e], a
    ret


    call Call_003_77c9
    jp Jump_003_7664


    call Call_003_77cf
    jp Jump_003_7664


    call Call_003_77d5
    jp Jump_003_7664


    ld de, $c800
    call Call_003_77db
    jp Jump_003_7664


    call Call_003_7805
    jp Jump_003_7664


    call Call_003_77c9
    jp Jump_003_76a3


    call Call_003_77cf
    jp Jump_003_76a3


    call Call_003_77d5
    jp Jump_003_76a3


    ld de, $c820
    call Call_003_77db
    jp Jump_003_76a3


    call Call_003_7805
    jp Jump_003_76a3


    call Call_003_77c9
    jp Jump_003_76e2


    call Call_003_77cf
    jp Jump_003_76e2


    call Call_003_77d5
    jp Jump_003_76e2


    ld de, $c840
    call Call_003_77db
    jp Jump_003_76e2


    call Call_003_7805
    jp Jump_003_76e2


    call Call_003_77c9
    jp $7721


    call Call_003_77cf
    jp $7721


    call Call_003_77d5
    jp $7721


    ld de, $c860
    call Call_003_77db
    jp $7721


    call Call_003_7805
    jp $7721


Call_003_77c9:
    ld a, $00
    call Call_000_1889
    ret


Call_003_77cf:
    ld a, $06
    call Call_000_1889
    ret


Call_003_77d5:
    ld a, $0c
    call Call_000_1889
    ret


Call_003_77db:
    push de
    ld a, $0d
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $01
    ld [de], a
    pop de
    ld a, $06
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $c8
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    inc de
    ld a, $98
    ld [de], a
    inc de
    ld a, $00
    ld [de], a
    ld a, $15
    call Call_000_1889
    ret


Call_003_7805:
    ld a, $13
    call Call_000_1889
    ret


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
    ei
    rst $38
    ld a, [hl]
    ldh [rSB], a
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
    ld a, a
    ld b, b
    rst $38
    ld h, b
    sub l
    ld b, [hl]
    xor b
    adc l
    ld d, b
    sub b
    ld h, b
    rst $38
    or d
    ld c, b
    jp z, $b230

    ld c, b
    ld a, [$ff07]
    dec c
    ld d, e
    call nz, Call_003_632b
    dec d
    ld [de], a
    dec c
    rst $38
    sbc d
    dec h
    and [hl]
    jr @-$64

    dec h
    rst $38
    nop
    db $fd
    ld bc, $0740
    ret


    cp $7b
    add [hl]
    ld c, l
    add [hl]
    rst $38
    rst $08
    nop
    ld c, c
    add [hl]
    res 0, d
    ld c, l
    inc b
    rst $38
    call $cf84
    add [hl]
    call $cb84
    add d
    rst $38
    call $4f84
    ld b, $ff
    nop
    ret nz

    ld b, b
    rst $38
    ldh [$ff60], a
    db $f4
    dec bc
    or [hl]
    ld a, a
    cp c
    ld h, l
    rst $38
    ldh [$ff1f], a
    xor [hl]
    ld a, l
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    ccf
    ret nz

    rst $30
    cp $9b
    cp $ff
    rst $08
    jr nc, @-$21

    cp $78
    add a
    rst $08
    ld c, b
    rst $38
    add $42
    db $ec
    ld l, b
    sbc $3a
    or [hl]
    ld [hl], c
    rst $38
    or a
    ld [hl], e
    or a
    ld [hl], e
    ld e, $e1
    di
    ld [de], a
    rst $38
    ld [hl], c
    ld d, b
    dec sp
    ld a, [de]
    ld [hl], a
    ld c, [hl]
    db $ed
    call c, Call_000_2dff
    inc e
    dec l
    inc e
    ld c, d
    ld a, a
    ld bc, $ffff
    ld c, l
    ldh a, [c]
    or e
    ret nz

    ld e, [hl]
    xor l
    db $ec
    or e
    rst $38
    ld b, c
    add c
    ret nz

    cp a
    ld a, d
    rlca
    sbc l
    dec de
    rst $38
    ld a, [hl]
    dec b
    ld a, a
    dec b
    db $fd
    ld a, d
    ld a, c
    add [hl]
    rst $28
    cp a
    cp [hl]
    ld bc, $01fe
    ld [bc], a
    ld b, h
    rst $30
    pop bc

jr_003_78f0:
    rst $38
    ccf
    ld hl, sp-$39
    cp $f1

jr_003_78f6:
    rst $28
    and $ef
    rst $38
    or $ff
    nop
    ld e, l
    cp [hl]
    db $fd
    cp [hl]
    ld [hl], l
    rst $38
    cp [hl]
    ld a, c
    cp [hl]
    pop de
    cp [hl]
    ld l, c
    cp [hl]
    push de
    add a
    cp [hl]
    or c
    ld a, $2b
    nop
    ld hl, $e40e
    rrca
    add c
    stop
    cp $03
    inc b
    add c
    rst $38
    jr @+$01

    add b
    rst $38
    ld [de], a
    rst $38
    sbc $80
    rst $38
    sub l
    ld [$4fb2], a
    ld e, e
    rst $38
    db $fc
    jr c, jr_003_78f6

    jp z, Jump_000_253d

    jp c, $ffa9

    ld [hl], a
    ld [hl], e
    adc h
    ret nc

    dec hl
    adc b
    ld d, a
    rst $00
    rst $38
    jr z, jr_003_78f0

    ld c, l
    adc a
    ld [hl], b
    ldh [$ff9f], a
    ccf
    rst $38
    ret nz

    add b
    rst $38
    ld d, $a9
    inc hl
    push de
    add $ff
    add hl, hl
    dec de
    ld h, l
    ldh [c], a
    dec e
    inc c
    di
    ld a, [$06ef]
    add b
    rst $38

jr_003_795c:
    ld c, c
    add b
    rrca
    call Call_003_4f86
    rst $00
    ld b, $cd
    add h
    ld hl, $010f
    rrca
    ld bc, $a911
    add sp, -$01
    ld d, a
    ld a, [hl]
    xor c
    cp $05
    cp $ff
    nop
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    rrca
    or e
    ld [hl], e
    sbc e
    ld h, [hl]
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ld e, b
    or a
    jr nc, @-$2f

    rst $38
    ld l, l
    cp [hl]
    rst $18
    jr nz, jr_003_79ce

    ld a, $77
    adc $bd
    ld bc, $01c0
    ld d, $ed
    inc c
    di
    ld b, c
    rrca
    or l
    rst $38
    ld [hl], e
    cp l
    ld a, e
    sbc l
    ld a, e
    ld a, l
    add e
    inc sp
    rst $18
    db $fc
    add h
    rst $38
    xor l
    sbc h
    ld hl, $af00
    sbc [hl]
    rst $38
    and a
    sbc [hl]
    cp $c1
    call nz, Call_000_113f
    rst $38
    cp $00
    jr jr_003_795c

    ld e, a
    and b
    push bc
    add l
    ld b, b
    cp a
    ei
    ret nz

    cp a
    ld bc, $fe08
    ld bc, $5ca3
    db $fd
    rst $38

jr_003_79ce:
    ld [bc], a
    rst $38
    ld e, [hl]
    and c
    ld e, [hl]
    pop hl
    ld e, $1e
    cp $00
    add hl, bc
    db $fd
    db $f4
    db $fd
    or $ff
    or $ed
    ei
    and $ad
    add b
    nop
    cp a
    or $eb
    or $69
    cp $80
    rrca
    ld c, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, l
    rst $18
    cp [hl]
    ld h, e
    sbc h
    ld d, l
    xor d
    nop
    ld a, [de]
    cp $01
    sbc a
    cp $7d
    cp $45
    add $23
    nop
    ld bc, $8322
    rst $28
    ld a, h
    xor e
    ld a, h
    sub e
    ld b, h
    nop
    rst $38
    nop
    ret nc

    rst $38
    ld b, b
    rst $18
    ld b, b
    pop de
    ld c, a
    call nc, $d04f
    rst $18
    ld c, a
    rst $18
    ld b, b
    ret nc

    ld c, a
    ld [bc], a
    ld [de], a
    nop
    ld a, e
    ld l, a
    rst $38
    adc h
    rst $38
    ld hl, $2210
    db $10
    rst $28
    inc bc
    ld bc, $4edf
    rst $38
    and l
    rst $38
    ld bc, $2310
    ld [$fff7], sp
    rst $38
    nop
    add hl, bc
    nop
    ld sp, hl
    nop
    ret


    ldh a, [rIE]
    ld l, c
    ldh a, [$ff09]
    ldh a, [$fff9]
    nop
    add hl, bc
    ldh a, [$fffd]
    rst $38
    nop
    inc hl
    rst $38
    nop
    ei
    ld a, a
    sbc $61
    rst $38
    sbc d
    ld l, c
    ei
    ld [$699a], sp
    ld c, d
    ld a, a
    rst $38
    add c
    ld a, a
    db $e4
    sub a
    ld sp, hl
    rst $00
    cp h
    sbc e
    ld a, a
    cp h
    db $db
    or $d2
    db $f4
    db $db
    sub c
    db $10
    add hl, hl
    db $fd
    ld e, l
    db $10
    dec bc
    ld a, [hl-]
    ld a, [$ffd3]
    inc b
    db $fc
    rst $38
    or e
    di
    jr @+$01

    ld [hl], b
    ld hl, sp+$1f
    rra
    rst $28
    add sp, -$18
    ld d, [hl]
    ld d, a
    ldh a, [$ff0b]
    ret nz

    ld a, [bc]
    ld a, [bc]
    rst $38
    adc d
    rst $38
    db $db
    ei
    and h
    and h
    ld e, l
    ld e, l
    rst $38
    ldh a, [$fff0]
    dec bc
    rrca
    jr nz, jr_003_7ac0

    rst $18
    rst $18
    rst $38
    jr @+$01

    jp nz, $40ff

    ld e, a
    xor b
    rst $38
    rst $38
    rlca
    rlca
    ld [$c90f], sp
    ret


    db $10
    rra
    rst $38
    ld e, [hl]
    ld h, e
    daa
    push bc
    ld e, a
    add d
    rst $38
    and d
    rst $38
    ld a, [hl]
    sbc l

jr_003_7ac0:
    call c, Call_003_60a3
    cp a
    jp $ff83


    ld c, d
    ld a, a
    add hl, sp
    rst $00
    add $01
    cp a
    inc b
    rst $38
    rst $38
    ld b, h
    ld a, l
    cp d
    add hl, sp
    add $7f
    ld a, [hl]

Jump_003_7ad8:
    rst $38
    ld l, a
    or $ed
    or $6f
    or $cf
    and $7f
    ld c, c
    db $f4
    ld e, c
    or $1b
    or $8f
    nop
    jr nz, jr_003_7b63

    ld bc, $fdfe
    add b
    rla
    ld bc, $41fe
    add b
    rrca
    jp Jump_000_00ff


    add l
    rrca
    dec b
    db $10
    add l
    rrca
    dec b
    db $10
    jp nc, $ee4f

    inc hl
    nop
    db $d3
    ld c, a
    pop de
    jr nz, jr_003_7b0b

jr_003_7b0b:
    db $d3
    ld c, a
    jp nc, $efff

    sub $ee
    db $d3
    db $eb
    ld d, $6e
    sub e
    cp $40
    nop
    db $d3
    db $eb
    ld d, l
    ld l, l
    ld c, b
    rst $30
    ld l, l
    cp $20
    nop
    db $ed
    rst $30
    call z, $adf6
    or a
    ld l, d
    rst $38
    ld [hl], d
    xor e
    or e
    ld c, c
    ldh a, [$ff59]
    ldh a, [$ffd9]
    rst $38
    ldh a, [$ff79]
    ld [hl], b
    reti


    ret nc

    cp c
    or b
    reti


    cp a
    ret nc

    ld e, c
    ld d, b
    cp d
    ld l, c
    sbc d
    jr nz, jr_003_7b46

jr_003_7b46:
    jp c, Jump_003_69ff

    ei
    ld l, c
    sbc e
    add hl, bc
    cp e
    add hl, hl
    db $db
    rst $38
    ld c, c
    cp $db
    or l
    sbc e
    or h
    db $d3
    push af
    rst $38
    db $db
    db $fc
    db $db
    xor h
    db $db
    cp [hl]
    jp c, $ffb4

jr_003_7b63:
    db $db
    ld c, l
    rst $38
    db $10
    ldh a, [$ff8b]
    adc a
    ld a, [bc]
    rst $38
    ld a, [$fd21]
    ld b, h
    ld a, h
    inc hl
    db $e3
    sub l
    cp $a0
    scf
    jr nc, jr_003_7ba9

    add h
    add h
    ld [hl], b
    ld [hl], b
    add c
    rst $38
    add c
    ld a, [de]
    ld a, [de]
    ldh a, [$fff0]
    add hl, hl
    add hl, hl
    ld d, l
    rst $38
    ld d, l
    adc d
    adc d
    nop
    nop
    dec b
    dec b
    ld b, b
    rst $38
    ld b, b
    inc b
    inc b
    ld bc, $9e01
    sbc [hl]
    ld hl, $33ff
    ld c, b
    ld c, a
    and d
    and e
    ld c, b
    rst $38
    jr nz, @+$01

    ld hl, $1714
    ldh [$ffe7], a
    ld a, [bc]

jr_003_7ba9:
    dec sp
    ld b, b
    rst $38
    ccf
    ld c, d
    or l
    ld [hl], l
    add d
    push de
    xor b
    ld c, d
    rst $38
    or l
    rst $38
    add b
    ld h, $da
    sbc b
    rst $20
    add hl, de
    rst $38
    and $ad
    ld c, d
    ld [hl], a
    jr jr_003_7c1d

    and [hl]
    add c
    cp $c0
    ld a, [hl-]
    ld [de], a
    call z, $730c
    adc e
    or $09
    rst $38
    and $09

jr_003_7bd3:
    db $f4
    jp hl


    ld d, $1d
    ldh [c], a
    inc bc
    rst $38
    db $fc
    ld c, $fa
    ld hl, sp+$07
    ld bc, $a5fe
    rst $38
    cp $69
    ld a, [hl]
    dec a
    ld a, $2d
    ld l, [hl]
    sbc c
    jp nz, $1002

    ld a, l
    ret nz

    rra
    pop bc
    ld h, $61
    cpl
    ld bc, $832f
    ld a, h
    jr c, jr_003_7c1c

    nop
    or d
    cpl
    ld [hl-], a
    jr nc, jr_003_7bd3

    ld c, [hl]
    db $d3
    ret nz

    rrca
    add b
    rrca
    cp h
    add b
    nop
    pop bc
    nop
    sbc e
    xor e
    ld e, l
    ld l, l
    ld b, c
    nop
    sbc [hl]

jr_003_7c13:
    rst $38
    xor [hl]
    db $dd
    db $ed
    sbc h
    xor h
    call c, $6eec

jr_003_7c1c:
    rst $38

jr_003_7c1d:
    halt
    db $ed
    push af
    ld l, [hl]
    halt
    ld c, h
    ld d, h
    ld l, $dd
    ld [hl], $41
    nop
    dec c
    dec d
    ld sp, hl
    jp nz, $d90f

jr_003_7c2f:
    ret nc

    ei
    ld sp, hl
    ldh a, [rSTAT]
    nop
    ld e, c
    ld d, b
    jp c, $fb48

    db $ed
    ld l, c
    add c
    rrca
    sbc d
    ld [$0043], sp
    cp [hl]
    db $db
    dec a
    rst $38
    sbc e
    inc h
    db $d3
    ld h, l
    db $db
    ld l, h
    db $db
    inc a
    rst $38
    db $db
    ld l, $da
    inc h
    sbc e
    inc bc

jr_003_7c55:
    rst $38
    ld b, [hl]
    rst $38
    add $95
    rst $38
    ld b, e
    ei
    inc a
    db $fc
    ld b, c
    rst $38
    pop de
    inc bc
    rst $38
    nop
    rst $28
    sub $d6
    jr nc, @+$01

    jr nc, jr_003_7c2f

    jp $b838


    rlca
    rlca
    ei
    rst $38
    ei
    inc b
    inc b
    di
    di
    or c
    or c
    ld c, $ff
    ld c, $a9
    xor c
    ld a, h
    ld a, h
    rst $00
    rst $00
    jr nc, @+$01

    jr nc, jr_003_7c55

    adc $38
    jr c, jr_003_7c13

    adc a
    inc de
    rst $38
    inc de
    adc $cf
    cp b
    rst $38
    inc h
    ccf
    ld c, c
    rst $18
    ld c, a
    ld [bc], a
    inc bc
    jr c, @+$41

    nop
    ld b, b
    cp $46
    rst $38
    pop af
    sbc l
    jp $d92d


    cp l
    db $db
    cpl
    rst $38
    res 5, a
    db $db
    ld e, a
    ld h, b
    rst $38
    rrca
    rst $38
    rst $38
    rst $28
    rst $30
    rst $20
    rst $30
    rst $28
    rst $18
    rst $28
    db $fd
    rst $38
    rst $28
    ld e, l
    rst $28
    ld a, [$ff07]
    ldh a, [rIE]
    rst $38
    rst $30
    rst $28
    rst $20
    xor e
    rst $30
    ei
    rst $30
    cp a
    rst $30
    rst $30
    rst $38
    rst $30
    ld bc, $4543
    or $82
    db $fd
    rst $38
    inc e
    ld a, [$f589]
    ld d, $ce
    and l
    db $dd
    rst $38
    ld a, a
    add b
    add b
    ld b, b
    ld bc, $12c1
    ld d, d
    ei
    ld bc, $4141
    nop
    ld [bc], a
    ld b, d
    rst $38
    nop
    rrca
    rst $38
    adc a
    dec hl
    xor a
    rrca
    sbc a
    dec e
    sbc a
    ld a, [bc]
    rst $18
    adc a
    dec [hl]
    cp a
    ld a, [bc]
    sbc a
    ld b, b
    cpl
    ld b, b
    rst $38
    ld a, a
    nop
    cp e
    ld a, a
    rst $00
    ld a, a
    sub b
    ld a, a
    ld b, c
    ld a, [hl-]
    cp $03
    jr nc, jr_003_7d65

    ld [hl], a
    ld [hl+], a
    rst $38
    rst $00
    rst $38
    ld [de], a
    ld a, h
    ld d, d
    ld b, d
    ld b, c
    ld d, l
    ld h, [hl]
    ld h, a
    add hl, de
    rst $18
    ld h, h
    ld [bc], a
    ld b, e
    ldh a, [rLCDC]
    cpl
    ld a, [bc]
    ld a, $03
    jr nc, jr_003_7d35

    inc b
    ld h, $d3

jr_003_7d31:
    and l
    ld e, e

jr_003_7d33:
    rst $38
    ld [hl], h

jr_003_7d35:
    adc e
    dec c
    di
    jr jr_003_7d31

    jr jr_003_7d33

    rst $38
    ld a, [de]
    or $f0
    rrca
    ld [$07d8], sp
    rst $38
    rst $38
    add c
    rst $38
    inc de
    rst $38
    ld b, b
    rst $38
    ld bc, $fffd
    ld h, b
    rst $38
    ld b, $ff
    cpl
    cpl
    rra
    rra
    rst $38
    ret c

    ld hl, sp+$05
    add a
    rrca
    rst $38
    add d
    add d
    rst $38
    rlca
    rst $38
    jr nz, @+$01

jr_003_7d65:
    adc $cf
    jr nz, jr_003_7d89

    rst $38
    rst $30
    rst $38
    jr z, jr_003_7d96

    db $dd
    rst $38
    cp h
    cp h
    rst $38
    set 1, e
    nop
    rst $38
    jp nc, Jump_000_10f3

    rra
    rst $38
    ld b, c
    db $fd
    ld d, b
    ld e, a
    add b
    rst $38
    ld e, d
    ld a, a
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38

jr_003_7d89:
    ld [hl], l
    ld e, e
    dec [hl]
    reti


    rst $38
    ld l, l
    res 5, l
    db $db
    daa
    db $db
    xor [hl]
    db $db

jr_003_7d96:
    rst $38
    ld [hl], $db
    or [hl]
    db $db
    db $d3
    rst $20
    di
    rst $28
    rst $38
    ld [hl], a
    rst $28
    or $ef
    or d
    rst $28
    or l
    rst $28
    rst $28
    ld [hl], l
    rst $28
    or e
    rst $28
    and c
    rrca
    xor d
    rst $30
    adc e
    rst $38
    rst $30
    dec bc
    rst $30
    dec l
    rst $30
    xor [hl]
    rst $30
    xor l
    rst $38
    rst $30
    ld l, [hl]
    ld e, [hl]
    dec h
    db $dd
    ld l, [hl]
    sbc $a5
    ld a, e
    db $dd
    ld l, $44
    nop
    dec h
    ld h, l
    ld a, [bc]
    ld c, d
    ld b, c
    nop
    rst $38
    dec d
    ld d, l
    ld c, d
    ld a, [bc]
    ld d, l
    dec d
    ld l, d
    ld a, [hl+]
    rst $38
    dec [hl]
    cp a
    ld a, [de]
    sbc a
    dec h
    xor a
    ld e, d
    rst $18
    rst $30
    or h
    ccf
    jp nc, Jump_000_0f00

    add b
    ld a, a
    ld h, l
    ld e, [hl]
    rst $38
    add hl, hl
    jp c, $da79

    or e
    jp nc, $d435

    rst $38
    xor c
    call c, $de23
    sbc a
    ldh [rSC], a
    db $fd
    rst $38
    cpl
    db $fd
    ld c, e
    reti


    jp z, Jump_003_7ad8

    ld hl, sp-$11
    ld [hl], a
    db $fd
    ld [bc], a
    db $fd
    pop hl
    ld b, e
    and e
    cp $11
    ccf
    ld e, h
    add hl, bc
    ld c, h
    rst $38
    cp $6b
    add h
    inc h
    dec bc
    ld h, a
    cp $01
    ld a, [de]
    ld e, [hl]
    db $e4
    and $80
    cp l
    ld e, d
    ret c

    rst $38
    ld h, a
    add e
    inc bc
    add b
    ld a, a
    ld a, [$390f]
    rst $38
    scf
    db $fc
    dec bc
    db $fd
    dec bc
    ld a, [$f2f5]
    rst $38
    dec c
    ld a, [hl]
    ld a, h
    ld [bc], a
    db $fd
    ld a, d
    ld b, a
    ld c, l
    db $fd
    adc e
    pop hl
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    cp b
    ld b, a
    ret nz

    ld a, a
    rst $38
    add [hl]
    ld b, $4a
    ld a, a
    ld [hl], c
    adc a
    adc h
    inc bc
    rst $38
    ld a, a
    add hl, bc
    cp $89
    ld a, [$7275]
    adc h
    ei
    cp $fd
    ld bc, $4e1e
    ldh a, [$ffb2]
    ret nz

    ld e, a
    db $fd
    xor h
    inc bc
    ld e, [hl]
    cp $03
    ccf
    dec a
    rst $38
    ld [bc], a
    xor $20
    nop
    db $fc
    db $fd
    ld [bc], a
    ld bc, $7e5e
    ld e, e
    inc [hl]
    cp $00
    db $10
    xor [hl]
    db $db
    ld l, $db
    and h
    db $db
    inc [hl]
    rst $38
    db $db
    and h
    reti


    ld [hl], d
    rst $20
    ldh a, [c]
    rst $28
    ld d, h
    rst $38
    rst $28
    ld d, l
    rst $28
    sub b
    rst $28
    sub h
    rst $28
    ld sp, $e7ff
    or b
    rst $28
    xor d
    rst $20
    xor c
    rst $30
    jr z, @+$01

    rst $30
    ld c, d
    rst $30
    ld c, b
    rst $30
    dec c
    rst $30
    dec c
    ei
    rst $20
    ld [$1002], sp
    ld l, a
    sbc $a7
    call c, $ff2d
    db $db
    xor d
    rst $10
    dec [hl]
    rst $08
    cp a
    ret nz

    rst $38
    rst $28
    add b
    add b
    ld a, a
    ld a, a
    or d
    cpl
    xor d
    rst $38
    ld e, l
    call nc, Call_000_1d03
    or d
    ld l, a
    ret nc

    ld b, b
    ld [hl], b
    ld d, h
    jr nc, jr_003_7f41

    add b
    nop
    ccf
    ld h, b
    nop
    rra
    nop
    ret nz

    ret nz

    dec b
    ld h, c
    ld b, e
    ld [hl], h
    call c, Call_000_32e3
    ld bc, $0162
    nop
    ld b, $e0
    ld [hl], b
    inc bc
    inc bc
    db $fc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [hl], a
    ld a, a
    nop
    pop bc
    ld a, $bf
    ld b, b
    rst $38
    adc e
    ld a, [bc]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld a, [hl]
    add b
    cp $00
    ld e, d
    inc bc
    ld b, a
    cp c
    ld a, [$ff05]
    cp l
    rst $38
    ld b, d
    cp l
    jp nz, $3e3d

    jp nz, $ff80

    rst $38
    add b
    ld a, a
    sub l
    ld l, d
    ld [$aa04], a
    ld d, c
    ei
    sub l
    ld l, d
    ret nz

    ld h, [hl]
    or [hl]
    or b
    rst $08
    ld [hl-], a
    call $5bff
    sub l
    xor $31
    or e
    ld c, l
    ld [bc], a
    db $fd
    or e
    cp $01
    ld bc, $053d
    ld c, [hl]
    ld a, a
    sbc h
    dec b
    ld c, [hl]
    ld a, l
    rst $38
    add e
    add d
    ld bc, $027f
    rst $38
    add d

jr_003_7f41:
    rst $38
    rst $38
    ld a, h
    ld a, l
    add d
    ld a, a
    ld a, [hl]
    ld h, h
    ld c, e
    dec h
    cp a
    jp c, $d16e

    or b
    rst $08
    db $10
    jr nz, jr_003_7f63

    db $10
    rst $38
    rst $08
    adc a
    ldh a, [$ff1f]
    ldh [$fff0], a
    rrca
    db $10
    ei
    rst $28
    jr nc, jr_003_7f86

    nop

jr_003_7f63:
    rst $38
    nop
    ld hl, sp+$07
    rrca
    add hl, de
    ldh a, [$ffc1]
    ld h, $43
    nop
    rst $38
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

jr_003_7f86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
