; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    rrca
    ld a, [$c60d]
    rst $00
    dec c
    ld b, b
    ld c, [hl]
    ld b, b
    adc a
    ld b, b
    ret nc

    ld b, b
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
    ld [$cc94], a
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
    ld a, l
    ld [$cc95], a
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
    ld [$cc95], a
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
    ld [$cc94], a
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
    ld [$cc95], a
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
    ld [$cc94], a
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
    ld [$cc94], a
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
    ld [$cc95], a
    ret


    ld a, [$cc95]
    rst $00
    dec l
    ld b, c
    dec l
    ld b, c
    dec l
    ld b, c
    dec l
    ld b, c
    dec bc
    ld b, h
    jp hl


    ld b, [hl]
    rst $00
    ld c, c
    and l
    ld c, h
    add e
    ld c, a
    ld h, c
    ld d, d
    ccf
    ld d, l
    dec e
    ld e, b
    ei
    ld e, d
    reti


    ld e, l
    ld a, [$cc94]
    rst $00
    ld c, l
    ld b, c
    ld c, l
    ld b, c
    add e
    ld b, c
    cp c
    ld b, c
    rst $28
    ld b, c
    dec h
    ld b, d
    ld e, e
    ld b, d
    sub c
    ld b, d
    rst $00
    ld b, d
    db $fd
    ld b, d
    inc sp
    ld b, e
    ld l, c
    ld b, e
    sbc a
    ld b, e
    push de
    ld b, e
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_415f

    ld a, [$b9de]
    bit 0, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4168

jr_00f_415f:
    ld a, [$b9f4]
    bit 0, a
    ret z

    ld hl, $b9f2

jr_00f_4168:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $0068
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4195

    ld a, [$b9de]
    bit 1, a
    ret z

    ld hl, $b9dc
    jr jr_00f_419e

jr_00f_4195:
    ld a, [$b9f4]
    bit 1, a
    ret z

    ld hl, $b9f2

jr_00f_419e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $006a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_41cb

    ld a, [$b9de]
    bit 2, a
    ret z

    ld hl, $b9dc
    jr jr_00f_41d4

jr_00f_41cb:
    ld a, [$b9f4]
    bit 2, a
    ret z

    ld hl, $b9f2

jr_00f_41d4:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $006c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4201

    ld a, [$b9de]
    bit 3, a
    ret z

    ld hl, $b9dc
    jr jr_00f_420a

jr_00f_4201:
    ld a, [$b9f4]
    bit 3, a
    ret z

    ld hl, $b9f2

jr_00f_420a:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $006e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4237

    ld a, [$b9de]
    bit 4, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4240

jr_00f_4237:
    ld a, [$b9f4]
    bit 4, a
    ret z

    ld hl, $b9f2

jr_00f_4240:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0070
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_426d

    ld a, [$b9de]
    bit 5, a
    ret z

    ld hl, $b9dc
    jr jr_00f_4276

jr_00f_426d:
    ld a, [$b9f4]
    bit 5, a
    ret z

    ld hl, $b9f2

jr_00f_4276:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0072
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_42a3

    ld a, [$b9de]
    bit 6, a
    ret z

    ld hl, $b9dc
    jr jr_00f_42ac

jr_00f_42a3:
    ld a, [$b9f4]
    bit 6, a
    ret z

    ld hl, $b9f2

jr_00f_42ac:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0074
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_42d9

    ld a, [$b9de]
    bit 7, a
    ret z

    ld hl, $b9dc
    jr jr_00f_42e2

jr_00f_42d9:
    ld a, [$b9f4]
    bit 7, a
    ret z

    ld hl, $b9f2

jr_00f_42e2:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $0076
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_430f

    ld a, [$b9df]
    bit 0, a
    ret z

    ld hl, $b9dd
    jr jr_00f_4318

jr_00f_430f:
    ld a, [$b9f5]
    bit 0, a
    ret z

    ld hl, $b9f3

jr_00f_4318:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0078
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4345

    ld a, [$b9df]
    bit 1, a
    ret z

    ld hl, $b9dd
    jr jr_00f_434e

jr_00f_4345:
    ld a, [$b9f5]
    bit 1, a
    ret z

    ld hl, $b9f3

jr_00f_434e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $007a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_437b

    ld a, [$b9df]
    bit 2, a
    ret z

    ld hl, $b9dd
    jr jr_00f_4384

jr_00f_437b:
    ld a, [$b9f5]
    bit 2, a
    ret z

    ld hl, $b9f3

jr_00f_4384:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, $007c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_43b1

    ld a, [$b9df]
    bit 3, a
    ret z

    ld hl, $b9dd
    jr jr_00f_43ba

jr_00f_43b1:
    ld a, [$b9f5]
    bit 3, a
    ret z

    ld hl, $b9f3

jr_00f_43ba:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $007e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_43e7

    ld a, [$b9df]
    bit 4, a
    ret z

    ld hl, $b9dd
    jr jr_00f_43f0

jr_00f_43e7:
    ld a, [$b9f5]
    bit 4, a
    ret z

    ld hl, $b9f3

jr_00f_43f0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0080
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec hl
    ld b, h
    dec hl
    ld b, h
    ld h, c
    ld b, h
    sub a
    ld b, h
    call $0344
    ld b, l
    add hl, sp
    ld b, l
    ld l, a
    ld b, l
    and l
    ld b, l
    db $db
    ld b, l
    ld de, $4746
    ld b, [hl]
    ld a, l
    ld b, [hl]
    or e
    ld b, [hl]
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_443d

    ld a, [$b9e0]
    bit 0, a
    ret z

    ld hl, $b9de
    jr jr_00f_4446

jr_00f_443d:
    ld a, [$b9f6]
    bit 0, a
    ret z

    ld hl, $b9f4

jr_00f_4446:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $008a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4473

    ld a, [$b9e0]
    bit 1, a
    ret z

    ld hl, $b9de
    jr jr_00f_447c

jr_00f_4473:
    ld a, [$b9f6]
    bit 1, a
    ret z

    ld hl, $b9f4

jr_00f_447c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $008c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_44a9

    ld a, [$b9e0]
    bit 2, a
    ret z

    ld hl, $b9de
    jr jr_00f_44b2

jr_00f_44a9:
    ld a, [$b9f6]
    bit 2, a
    ret z

    ld hl, $b9f4

jr_00f_44b2:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $008e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_44df

    ld a, [$b9e0]
    bit 3, a
    ret z

    ld hl, $b9de
    jr jr_00f_44e8

jr_00f_44df:
    ld a, [$b9f6]
    bit 3, a
    ret z

    ld hl, $b9f4

jr_00f_44e8:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $0090
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4515

    ld a, [$b9e0]
    bit 4, a
    ret z

    ld hl, $b9de
    jr jr_00f_451e

jr_00f_4515:
    ld a, [$b9f6]
    bit 4, a
    ret z

    ld hl, $b9f4

jr_00f_451e:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0092
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_454b

    ld a, [$b9e0]
    bit 5, a
    ret z

    ld hl, $b9de
    jr jr_00f_4554

jr_00f_454b:
    ld a, [$b9f6]
    bit 5, a
    ret z

    ld hl, $b9f4

jr_00f_4554:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0094
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4581

    ld a, [$b9e0]
    bit 6, a
    ret z

    ld hl, $b9de
    jr jr_00f_458a

jr_00f_4581:
    ld a, [$b9f6]
    bit 6, a
    ret z

    ld hl, $b9f4

jr_00f_458a:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0096
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_45b7

    ld a, [$b9e0]
    bit 7, a
    ret z

    ld hl, $b9de
    jr jr_00f_45c0

jr_00f_45b7:
    ld a, [$b9f6]
    bit 7, a
    ret z

    ld hl, $b9f4

jr_00f_45c0:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $0098
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_45ed

    ld a, [$b9e1]
    bit 0, a
    ret z

    ld hl, $b9df
    jr jr_00f_45f6

jr_00f_45ed:
    ld a, [$b9f7]
    bit 0, a
    ret z

    ld hl, $b9f5

jr_00f_45f6:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $009a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4623

    ld a, [$b9e1]
    bit 1, a
    ret z

    ld hl, $b9df
    jr jr_00f_462c

jr_00f_4623:
    ld a, [$b9f7]
    bit 1, a
    ret z

    ld hl, $b9f5

jr_00f_462c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $009c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4659

    ld a, [$b9e1]
    bit 2, a
    ret z

    ld hl, $b9df
    jr jr_00f_4662

jr_00f_4659:
    ld a, [$b9f7]
    bit 2, a
    ret z

    ld hl, $b9f5

jr_00f_4662:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $009e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_468f

    ld a, [$b9e1]
    bit 3, a
    ret z

    ld hl, $b9df
    jr jr_00f_4698

jr_00f_468f:
    ld a, [$b9f7]
    bit 3, a
    ret z

    ld hl, $b9f5

jr_00f_4698:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $00a0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_46c5

    ld a, [$b9e1]
    bit 4, a
    ret z

    ld hl, $b9df
    jr jr_00f_46ce

jr_00f_46c5:
    ld a, [$b9f7]
    bit 4, a
    ret z

    ld hl, $b9f5

jr_00f_46ce:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $00a2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    add hl, bc
    ld b, a
    add hl, bc
    ld b, a
    ccf
    ld b, a
    ld [hl], l
    ld b, a
    xor e
    ld b, a
    pop hl
    ld b, a
    rla
    ld c, b
    ld c, l
    ld c, b
    add e
    ld c, b
    cp c
    ld c, b
    rst $28
    ld c, b
    dec h
    ld c, c
    ld e, e
    ld c, c
    sub c
    ld c, c
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_471b

    ld a, [$b9e2]
    bit 0, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4724

jr_00f_471b:
    ld a, [$b9f8]
    bit 0, a
    ret z

    ld hl, $b9f6

jr_00f_4724:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ac
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4751

    ld a, [$b9e2]
    bit 1, a
    ret z

    ld hl, $b9e0
    jr jr_00f_475a

jr_00f_4751:
    ld a, [$b9f8]
    bit 1, a
    ret z

    ld hl, $b9f6

jr_00f_475a:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ae
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4787

    ld a, [$b9e2]
    bit 2, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4790

jr_00f_4787:
    ld a, [$b9f8]
    bit 2, a
    ret z

    ld hl, $b9f6

jr_00f_4790:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_47bd

    ld a, [$b9e2]
    bit 3, a
    ret z

    ld hl, $b9e0
    jr jr_00f_47c6

jr_00f_47bd:
    ld a, [$b9f8]
    bit 3, a
    ret z

    ld hl, $b9f6

jr_00f_47c6:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_47f3

    ld a, [$b9e2]
    bit 4, a
    ret z

    ld hl, $b9e0
    jr jr_00f_47fc

jr_00f_47f3:
    ld a, [$b9f8]
    bit 4, a
    ret z

    ld hl, $b9f6

jr_00f_47fc:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4829

    ld a, [$b9e2]
    bit 5, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4832

jr_00f_4829:
    ld a, [$b9f8]
    bit 5, a
    ret z

    ld hl, $b9f6

jr_00f_4832:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_485f

    ld a, [$b9e2]
    bit 6, a
    ret z

    ld hl, $b9e0
    jr jr_00f_4868

jr_00f_485f:
    ld a, [$b9f8]
    bit 6, a
    ret z

    ld hl, $b9f6

jr_00f_4868:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $00b8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4895

    ld a, [$b9e2]
    bit 7, a
    ret z

    ld hl, $b9e0
    jr jr_00f_489e

jr_00f_4895:
    ld a, [$b9f8]
    bit 7, a
    ret z

    ld hl, $b9f6

jr_00f_489e:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ba
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_48cb

    ld a, [$b9e3]
    bit 0, a
    ret z

    ld hl, $b9e1
    jr jr_00f_48d4

jr_00f_48cb:
    ld a, [$b9f9]
    bit 0, a
    ret z

    ld hl, $b9f7

jr_00f_48d4:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00bc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4901

    ld a, [$b9e3]
    bit 1, a
    ret z

    ld hl, $b9e1
    jr jr_00f_490a

jr_00f_4901:
    ld a, [$b9f9]
    bit 1, a
    ret z

    ld hl, $b9f7

jr_00f_490a:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00be
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4937

    ld a, [$b9e3]
    bit 2, a
    ret z

    ld hl, $b9e1
    jr jr_00f_4940

jr_00f_4937:
    ld a, [$b9f9]
    bit 2, a
    ret z

    ld hl, $b9f7

jr_00f_4940:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_496d

    ld a, [$b9e3]
    bit 3, a
    ret z

    ld hl, $b9e1
    jr jr_00f_4976

jr_00f_496d:
    ld a, [$b9f9]
    bit 3, a
    ret z

    ld hl, $b9f7

jr_00f_4976:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_49a3

    ld a, [$b9e3]
    bit 4, a
    ret z

    ld hl, $b9e1
    jr jr_00f_49ac

jr_00f_49a3:
    ld a, [$b9f9]
    bit 4, a
    ret z

    ld hl, $b9f7

jr_00f_49ac:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, $00c4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    rst $20
    ld c, c
    rst $20
    ld c, c
    dec e
    ld c, d
    ld d, e
    ld c, d
    adc c
    ld c, d
    cp a
    ld c, d
    push af
    ld c, d
    dec hl
    ld c, e
    ld h, c
    ld c, e
    sub a
    ld c, e
    call $034b
    ld c, h
    add hl, sp
    ld c, h
    ld l, a
    ld c, h
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_49f9

    ld a, [$b9e4]
    bit 0, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a02

jr_00f_49f9:
    ld a, [$b9fa]
    bit 0, a
    ret z

    ld hl, $b9f8

jr_00f_4a02:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00ce
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a2f

    ld a, [$b9e4]
    bit 1, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a38

jr_00f_4a2f:
    ld a, [$b9fa]
    bit 1, a
    ret z

    ld hl, $b9f8

jr_00f_4a38:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a65

    ld a, [$b9e4]
    bit 2, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4a6e

jr_00f_4a65:
    ld a, [$b9fa]
    bit 2, a
    ret z

    ld hl, $b9f8

jr_00f_4a6e:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4a9b

    ld a, [$b9e4]
    bit 3, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4aa4

jr_00f_4a9b:
    ld a, [$b9fa]
    bit 3, a
    ret z

    ld hl, $b9f8

jr_00f_4aa4:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $e8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ad1

    ld a, [$b9e4]
    bit 4, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4ada

jr_00f_4ad1:
    ld a, [$b9fa]
    bit 4, a
    ret z

    ld hl, $b9f8

jr_00f_4ada:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ea
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b07

    ld a, [$b9e4]
    bit 5, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b10

jr_00f_4b07:
    ld a, [$b9fa]
    bit 5, a
    ret z

    ld hl, $b9f8

jr_00f_4b10:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ec
    ld [$cc93], a
    ld hl, $d800
    ld de, $00d8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b3d

    ld a, [$b9e4]
    bit 6, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b46

jr_00f_4b3d:
    ld a, [$b9fa]
    bit 6, a
    ret z

    ld hl, $b9f8

jr_00f_4b46:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $ee
    ld [$cc93], a
    ld hl, $d800
    ld de, $00da
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4b73

    ld a, [$b9e4]
    bit 7, a
    ret z

    ld hl, $b9e2
    jr jr_00f_4b7c

jr_00f_4b73:
    ld a, [$b9fa]
    bit 7, a
    ret z

    ld hl, $b9f8

jr_00f_4b7c:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f0
    ld [$cc93], a
    ld hl, $d800
    ld de, $00dc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ba9

    ld a, [$b9e5]
    bit 0, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4bb2

jr_00f_4ba9:
    ld a, [$b9fb]
    bit 0, a
    ret z

    ld hl, $b9f9

jr_00f_4bb2:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f2
    ld [$cc93], a
    ld hl, $d800
    ld de, $00de
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4bdf

    ld a, [$b9e5]
    bit 1, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4be8

jr_00f_4bdf:
    ld a, [$b9fb]
    bit 1, a
    ret z

    ld hl, $b9f9

jr_00f_4be8:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f4
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c15

    ld a, [$b9e5]
    bit 2, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c1e

jr_00f_4c15:
    ld a, [$b9fb]
    bit 2, a
    ret z

    ld hl, $b9f9

jr_00f_4c1e:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f6
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c4b

    ld a, [$b9e5]
    bit 3, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c54

jr_00f_4c4b:
    ld a, [$b9fb]
    bit 3, a
    ret z

    ld hl, $b9f9

jr_00f_4c54:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $f8
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4c81

    ld a, [$b9e5]
    bit 4, a
    ret z

    ld hl, $b9e3
    jr jr_00f_4c8a

jr_00f_4c81:
    ld a, [$b9fb]
    bit 4, a
    ret z

    ld hl, $b9f9

jr_00f_4c8a:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $98
    ld [$cc92], a
    ld a, $fa
    ld [$cc93], a
    ld hl, $d800
    ld de, $00e6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    push bc
    ld c, h
    push bc
    ld c, h
    ei
    ld c, h
    ld sp, $674d
    ld c, l
    sbc l
    ld c, l
    db $d3
    ld c, l
    add hl, bc
    ld c, [hl]
    ccf
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    xor e
    ld c, [hl]
    pop hl
    ld c, [hl]
    rla
    ld c, a
    ld c, l
    ld c, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4cd7

    ld a, [$b9e6]
    bit 0, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4ce0

jr_00f_4cd7:
    ld a, [$b9fc]
    bit 0, a
    ret z

    ld hl, $b9fa

jr_00f_4ce0:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d0d

    ld a, [$b9e6]
    bit 1, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d16

jr_00f_4d0d:
    ld a, [$b9fc]
    bit 1, a
    ret z

    ld hl, $b9fa

jr_00f_4d16:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d43

    ld a, [$b9e6]
    bit 2, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d4c

jr_00f_4d43:
    ld a, [$b9fc]
    bit 2, a
    ret z

    ld hl, $b9fa

jr_00f_4d4c:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4d79

    ld a, [$b9e6]
    bit 3, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4d82

jr_00f_4d79:
    ld a, [$b9fc]
    bit 3, a
    ret z

    ld hl, $b9fa

jr_00f_4d82:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4daf

    ld a, [$b9e6]
    bit 4, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4db8

jr_00f_4daf:
    ld a, [$b9fc]
    bit 4, a
    ret z

    ld hl, $b9fa

jr_00f_4db8:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $00f8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4de5

    ld a, [$b9e6]
    bit 5, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4dee

jr_00f_4de5:
    ld a, [$b9fc]
    bit 5, a
    ret z

    ld hl, $b9fa

jr_00f_4dee:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fa
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e1b

    ld a, [$b9e6]
    bit 6, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4e24

jr_00f_4e1b:
    ld a, [$b9fc]
    bit 6, a
    ret z

    ld hl, $b9fa

jr_00f_4e24:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e51

    ld a, [$b9e6]
    bit 7, a
    ret z

    ld hl, $b9e4
    jr jr_00f_4e5a

jr_00f_4e51:
    ld a, [$b9fc]
    bit 7, a
    ret z

    ld hl, $b9fa

jr_00f_4e5a:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $00fe
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4e87

    ld a, [$b9e7]
    bit 0, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4e90

jr_00f_4e87:
    ld a, [$b9fd]
    bit 0, a
    ret z

    ld hl, $b9fb

jr_00f_4e90:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0100
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ebd

    ld a, [$b9e7]
    bit 1, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4ec6

jr_00f_4ebd:
    ld a, [$b9fd]
    bit 1, a
    ret z

    ld hl, $b9fb

jr_00f_4ec6:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $0102
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4ef3

    ld a, [$b9e7]
    bit 2, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4efc

jr_00f_4ef3:
    ld a, [$b9fd]
    bit 2, a
    ret z

    ld hl, $b9fb

jr_00f_4efc:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderLogo
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4f29

    ld a, [$b9e7]
    bit 3, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4f32

jr_00f_4f29:
    ld a, [$b9fd]
    bit 3, a
    ret z

    ld hl, $b9fb

jr_00f_4f32:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $0106
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4f5f

    ld a, [$b9e7]
    bit 4, a
    ret z

    ld hl, $b9e5
    jr jr_00f_4f68

jr_00f_4f5f:
    ld a, [$b9fd]
    bit 4, a
    ret z

    ld hl, $b9fb

jr_00f_4f68:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0108
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    and e
    ld c, a
    and e
    ld c, a
    reti


    ld c, a
    rrca
    ld d, b
    ld b, l
    ld d, b
    ld a, e
    ld d, b
    or c
    ld d, b
    rst $20
    ld d, b
    dec e
    ld d, c
    ld d, e
    ld d, c
    adc c
    ld d, c
    cp a
    ld d, c
    push af
    ld d, c
    dec hl
    ld d, d
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4fb5

    ld a, [$b9e8]
    bit 0, a
    ret z

    ld hl, $b9e6
    jr jr_00f_4fbe

jr_00f_4fb5:
    ld a, [$b9fe]
    bit 0, a
    ret z

    ld hl, $b9fc

jr_00f_4fbe:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $0112
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_4feb

    ld a, [$b9e8]
    bit 1, a
    ret z

    ld hl, $b9e6
    jr jr_00f_4ff4

jr_00f_4feb:
    ld a, [$b9fe]
    bit 1, a
    ret z

    ld hl, $b9fc

jr_00f_4ff4:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $0114
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5021

    ld a, [$b9e8]
    bit 2, a
    ret z

    ld hl, $b9e6
    jr jr_00f_502a

jr_00f_5021:
    ld a, [$b9fe]
    bit 2, a
    ret z

    ld hl, $b9fc

jr_00f_502a:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $0116
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5057

    ld a, [$b9e8]
    bit 3, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5060

jr_00f_5057:
    ld a, [$b9fe]
    bit 3, a
    ret z

    ld hl, $b9fc

jr_00f_5060:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $0118
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_508d

    ld a, [$b9e8]
    bit 4, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5096

jr_00f_508d:
    ld a, [$b9fe]
    bit 4, a
    ret z

    ld hl, $b9fc

jr_00f_5096:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $011a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_50c3

    ld a, [$b9e8]
    bit 5, a
    ret z

    ld hl, $b9e6
    jr jr_00f_50cc

jr_00f_50c3:
    ld a, [$b9fe]
    bit 5, a
    ret z

    ld hl, $b9fc

jr_00f_50cc:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $011c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_50f9

    ld a, [$b9e8]
    bit 6, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5102

jr_00f_50f9:
    ld a, [$b9fe]
    bit 6, a
    ret z

    ld hl, $b9fc

jr_00f_5102:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $011e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_512f

    ld a, [$b9e8]
    bit 7, a
    ret z

    ld hl, $b9e6
    jr jr_00f_5138

jr_00f_512f:
    ld a, [$b9fe]
    bit 7, a
    ret z

    ld hl, $b9fc

jr_00f_5138:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $0120
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5165

    ld a, [$b9e9]
    bit 0, a
    ret z

    ld hl, $b9e7
    jr jr_00f_516e

jr_00f_5165:
    ld a, [$b9ff]
    bit 0, a
    ret z

    ld hl, $b9fd

jr_00f_516e:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $0122
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_519b

    ld a, [$b9e9]
    bit 1, a
    ret z

    ld hl, $b9e7
    jr jr_00f_51a4

jr_00f_519b:
    ld a, [$b9ff]
    bit 1, a
    ret z

    ld hl, $b9fd

jr_00f_51a4:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $0124
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_51d1

    ld a, [$b9e9]
    bit 2, a
    ret z

    ld hl, $b9e7
    jr jr_00f_51da

jr_00f_51d1:
    ld a, [$b9ff]
    bit 2, a
    ret z

    ld hl, $b9fd

jr_00f_51da:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $0126
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5207

    ld a, [$b9e9]
    bit 3, a
    ret z

    ld hl, $b9e7
    jr jr_00f_5210

jr_00f_5207:
    ld a, [$b9ff]
    bit 3, a
    ret z

    ld hl, $b9fd

jr_00f_5210:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $0128
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_523d

    ld a, [$b9e9]
    bit 4, a
    ret z

    ld hl, $b9e7
    jr jr_00f_5246

jr_00f_523d:
    ld a, [$b9ff]
    bit 4, a
    ret z

    ld hl, $b9fd

jr_00f_5246:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $012a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    add c
    ld d, d
    add c
    ld d, d
    or a
    ld d, d
    db $ed
    ld d, d
    inc hl
    ld d, e
    ld e, c
    ld d, e
    adc a
    ld d, e
    push bc
    ld d, e
    ei
    ld d, e
    ld sp, $6754
    ld d, h
    sbc l
    ld d, h
    db $d3
    ld d, h
    add hl, bc
    ld d, l
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5293

    ld a, [$b9ea]
    bit 0, a
    ret z

    ld hl, $b9e8
    jr jr_00f_529c

jr_00f_5293:
    ld a, [$ba00]
    bit 0, a
    ret z

    ld hl, $b9fe

jr_00f_529c:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderTitle
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_52c9

    ld a, [$b9ea]
    bit 1, a
    ret z

    ld hl, $b9e8
    jr jr_00f_52d2

jr_00f_52c9:
    ld a, [$ba00]
    bit 1, a
    ret z

    ld hl, $b9fe

jr_00f_52d2:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0136
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_52ff

    ld a, [$b9ea]
    bit 2, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5308

jr_00f_52ff:
    ld a, [$ba00]
    bit 2, a
    ret z

    ld hl, $b9fe

jr_00f_5308:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $0138
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5335

    ld a, [$b9ea]
    bit 3, a
    ret z

    ld hl, $b9e8
    jr jr_00f_533e

jr_00f_5335:
    ld a, [$ba00]
    bit 3, a
    ret z

    ld hl, $b9fe

jr_00f_533e:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $013a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_536b

    ld a, [$b9ea]
    bit 4, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5374

jr_00f_536b:
    ld a, [$ba00]
    bit 4, a
    ret z

    ld hl, $b9fe

jr_00f_5374:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $013c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_53a1

    ld a, [$b9ea]
    bit 5, a
    ret z

    ld hl, $b9e8
    jr jr_00f_53aa

jr_00f_53a1:
    ld a, [$ba00]
    bit 5, a
    ret z

    ld hl, $b9fe

jr_00f_53aa:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $013e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_53d7

    ld a, [$b9ea]
    bit 6, a
    ret z

    ld hl, $b9e8
    jr jr_00f_53e0

jr_00f_53d7:
    ld a, [$ba00]
    bit 6, a
    ret z

    ld hl, $b9fe

jr_00f_53e0:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $0140
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_540d

    ld a, [$b9ea]
    bit 7, a
    ret z

    ld hl, $b9e8
    jr jr_00f_5416

jr_00f_540d:
    ld a, [$ba00]
    bit 7, a
    ret z

    ld hl, $b9fe

jr_00f_5416:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $0142
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5443

    ld a, [$b9eb]
    bit 0, a
    ret z

    ld hl, $b9e9
    jr jr_00f_544c

jr_00f_5443:
    ld a, [$ba01]
    bit 0, a
    ret z

    ld hl, $b9ff

jr_00f_544c:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderNewLicenseeCode
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5479

    ld a, [$b9eb]
    bit 1, a
    ret z

    ld hl, $b9e9
    jr jr_00f_5482

jr_00f_5479:
    ld a, [$ba01]
    bit 1, a
    ret z

    ld hl, $b9ff

jr_00f_5482:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderSGBFlag
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_54af

    ld a, [$b9eb]
    bit 2, a
    ret z

    ld hl, $b9e9
    jr jr_00f_54b8

jr_00f_54af:
    ld a, [$ba01]
    bit 2, a
    ret z

    ld hl, $b9ff

jr_00f_54b8:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderROMSize
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_54e5

    ld a, [$b9eb]
    bit 3, a
    ret z

    ld hl, $b9e9
    jr jr_00f_54ee

jr_00f_54e5:
    ld a, [$ba01]
    bit 3, a
    ret z

    ld hl, $b9ff

jr_00f_54ee:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderDestinationCode
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_551b

    ld a, [$b9eb]
    bit 4, a
    ret z

    ld hl, $b9e9
    jr jr_00f_5524

jr_00f_551b:
    ld a, [$ba01]
    bit 4, a
    ret z

    ld hl, $b9ff

jr_00f_5524:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, HeaderMaskROMVersion
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    ld e, a
    ld d, l
    ld e, a
    ld d, l
    sub l
    ld d, l
    bit 2, l
    ld bc, $3756
    ld d, [hl]
    ld l, l
    ld d, [hl]
    and e
    ld d, [hl]
    reti


    ld d, [hl]
    rrca
    ld d, a
    ld b, l
    ld d, a
    ld a, e
    ld d, a
    or c
    ld d, a
    rst $20
    ld d, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5571

    ld a, [$b9ec]
    bit 0, a
    ret z

    ld hl, $b9ea
    jr jr_00f_557a

jr_00f_5571:
    ld a, [$ba02]
    bit 0, a
    ret z

    ld hl, $ba00

jr_00f_557a:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e2
    ld [$cc93], a
    ld hl, $d800
    ld de, $0156
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_55a7

    ld a, [$b9ec]
    bit 1, a
    ret z

    ld hl, $b9ea
    jr jr_00f_55b0

jr_00f_55a7:
    ld a, [$ba02]
    bit 1, a
    ret z

    ld hl, $ba00

jr_00f_55b0:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0158
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_55dd

    ld a, [$b9ec]
    bit 2, a
    ret z

    ld hl, $b9ea
    jr jr_00f_55e6

jr_00f_55dd:
    ld a, [$ba02]
    bit 2, a
    ret z

    ld hl, $ba00

jr_00f_55e6:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e6
    ld [$cc93], a
    ld hl, $d800
    ld de, $015a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5613

    ld a, [$b9ec]
    bit 3, a
    ret z

    ld hl, $b9ea
    jr jr_00f_561c

jr_00f_5613:
    ld a, [$ba02]
    bit 3, a
    ret z

    ld hl, $ba00

jr_00f_561c:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $e8
    ld [$cc93], a
    ld hl, $d800
    ld de, $015c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5649

    ld a, [$b9ec]
    bit 4, a
    ret z

    ld hl, $b9ea
    jr jr_00f_5652

jr_00f_5649:
    ld a, [$ba02]
    bit 4, a
    ret z

    ld hl, $ba00

jr_00f_5652:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ea
    ld [$cc93], a
    ld hl, $d800
    ld de, $015e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_567f

    ld a, [$b9ec]
    bit 5, a
    ret z

    ld hl, $b9ea
    jr jr_00f_5688

jr_00f_567f:
    ld a, [$ba02]
    bit 5, a
    ret z

    ld hl, $ba00

jr_00f_5688:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ec
    ld [$cc93], a
    ld hl, $d800
    ld de, $0160
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_56b5

    ld a, [$b9ec]
    bit 6, a
    ret z

    ld hl, $b9ea
    jr jr_00f_56be

jr_00f_56b5:
    ld a, [$ba02]
    bit 6, a
    ret z

    ld hl, $ba00

jr_00f_56be:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $ee
    ld [$cc93], a
    ld hl, $d800
    ld de, $0162
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_56eb

    ld a, [$b9ec]
    bit 7, a
    ret z

    ld hl, $b9ea
    jr jr_00f_56f4

jr_00f_56eb:
    ld a, [$ba02]
    bit 7, a
    ret z

    ld hl, $ba00

jr_00f_56f4:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f0
    ld [$cc93], a
    ld hl, $d800
    ld de, $0164
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5721

    ld a, [$b9ed]
    bit 0, a
    ret z

    ld hl, $b9eb
    jr jr_00f_572a

jr_00f_5721:
    ld a, [$ba03]
    bit 0, a
    ret z

    ld hl, $ba01

jr_00f_572a:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f2
    ld [$cc93], a
    ld hl, $d800
    ld de, $0166
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5757

    ld a, [$b9ed]
    bit 1, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5760

jr_00f_5757:
    ld a, [$ba03]
    bit 1, a
    ret z

    ld hl, $ba01

jr_00f_5760:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f4
    ld [$cc93], a
    ld hl, $d800
    ld de, $0168
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_578d

    ld a, [$b9ed]
    bit 2, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5796

jr_00f_578d:
    ld a, [$ba03]
    bit 2, a
    ret z

    ld hl, $ba01

jr_00f_5796:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f6
    ld [$cc93], a
    ld hl, $d800
    ld de, $016a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_57c3

    ld a, [$b9ed]
    bit 3, a
    ret z

    ld hl, $b9eb
    jr jr_00f_57cc

jr_00f_57c3:
    ld a, [$ba03]
    bit 3, a
    ret z

    ld hl, $ba01

jr_00f_57cc:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $f8
    ld [$cc93], a
    ld hl, $d800
    ld de, $016c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_57f9

    ld a, [$b9ed]
    bit 4, a
    ret z

    ld hl, $b9eb
    jr jr_00f_5802

jr_00f_57f9:
    ld a, [$ba03]
    bit 4, a
    ret z

    ld hl, $ba01

jr_00f_5802:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $99
    ld [$cc92], a
    ld a, $fa
    ld [$cc93], a
    ld hl, $d800
    ld de, $016e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec a
    ld e, b
    dec a
    ld e, b
    ld [hl], e
    ld e, b
    xor c
    ld e, b
    rst $18
    ld e, b
    dec d
    ld e, c
    ld c, e
    ld e, c
    add c
    ld e, c
    or a
    ld e, c
    db $ed
    ld e, c
    inc hl
    ld e, d
    ld e, c
    ld e, d
    adc a
    ld e, d
    push bc
    ld e, d
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_584f

    ld a, [$b9ee]
    bit 0, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5858

jr_00f_584f:
    ld a, [$ba04]
    bit 0, a
    ret z

    ld hl, $ba02

jr_00f_5858:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $22
    ld [$cc93], a
    ld hl, $d800
    ld de, $0178
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5885

    ld a, [$b9ee]
    bit 1, a
    ret z

    ld hl, $b9ec
    jr jr_00f_588e

jr_00f_5885:
    ld a, [$ba04]
    bit 1, a
    ret z

    ld hl, $ba02

jr_00f_588e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $24
    ld [$cc93], a
    ld hl, $d800
    ld de, $017a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_58bb

    ld a, [$b9ee]
    bit 2, a
    ret z

    ld hl, $b9ec
    jr jr_00f_58c4

jr_00f_58bb:
    ld a, [$ba04]
    bit 2, a
    ret z

    ld hl, $ba02

jr_00f_58c4:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $26
    ld [$cc93], a
    ld hl, $d800
    ld de, $017c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_58f1

    ld a, [$b9ee]
    bit 3, a
    ret z

    ld hl, $b9ec
    jr jr_00f_58fa

jr_00f_58f1:
    ld a, [$ba04]
    bit 3, a
    ret z

    ld hl, $ba02

jr_00f_58fa:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $28
    ld [$cc93], a
    ld hl, $d800
    ld de, $017e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5927

    ld a, [$b9ee]
    bit 4, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5930

jr_00f_5927:
    ld a, [$ba04]
    bit 4, a
    ret z

    ld hl, $ba02

jr_00f_5930:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0180
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_595d

    ld a, [$b9ee]
    bit 5, a
    ret z

    ld hl, $b9ec
    jr jr_00f_5966

jr_00f_595d:
    ld a, [$ba04]
    bit 5, a
    ret z

    ld hl, $ba02

jr_00f_5966:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2c
    ld [$cc93], a
    ld hl, $d800
    ld de, $0182
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5993

    ld a, [$b9ee]
    bit 6, a
    ret z

    ld hl, $b9ec
    jr jr_00f_599c

jr_00f_5993:
    ld a, [$ba04]
    bit 6, a
    ret z

    ld hl, $ba02

jr_00f_599c:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $2e
    ld [$cc93], a
    ld hl, $d800
    ld de, $0184
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_59c9

    ld a, [$b9ee]
    bit 7, a
    ret z

    ld hl, $b9ec
    jr jr_00f_59d2

jr_00f_59c9:
    ld a, [$ba04]
    bit 7, a
    ret z

    ld hl, $ba02

jr_00f_59d2:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $30
    ld [$cc93], a
    ld hl, $d800
    ld de, $0186
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_59ff

    ld a, [$b9ef]
    bit 0, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a08

jr_00f_59ff:
    ld a, [$ba05]
    bit 0, a
    ret z

    ld hl, $ba03

jr_00f_5a08:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $32
    ld [$cc93], a
    ld hl, $d800
    ld de, $0188
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5a35

    ld a, [$b9ef]
    bit 1, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a3e

jr_00f_5a35:
    ld a, [$ba05]
    bit 1, a
    ret z

    ld hl, $ba03

jr_00f_5a3e:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $34
    ld [$cc93], a
    ld hl, $d800
    ld de, $018a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5a6b

    ld a, [$b9ef]
    bit 2, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5a74

jr_00f_5a6b:
    ld a, [$ba05]
    bit 2, a
    ret z

    ld hl, $ba03

jr_00f_5a74:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $36
    ld [$cc93], a
    ld hl, $d800
    ld de, $018c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5aa1

    ld a, [$b9ef]
    bit 3, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5aaa

jr_00f_5aa1:
    ld a, [$ba05]
    bit 3, a
    ret z

    ld hl, $ba03

jr_00f_5aaa:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $38
    ld [$cc93], a
    ld hl, $d800
    ld de, $018e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ad7

    ld a, [$b9ef]
    bit 4, a
    ret z

    ld hl, $b9ed
    jr jr_00f_5ae0

jr_00f_5ad7:
    ld a, [$ba05]
    bit 4, a
    ret z

    ld hl, $ba03

jr_00f_5ae0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $3a
    ld [$cc93], a
    ld hl, $d800
    ld de, $0190
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    dec de
    ld e, e
    dec de
    ld e, e
    ld d, c
    ld e, e
    add a
    ld e, e
    cp l
    ld e, e
    di
    ld e, e
    add hl, hl
    ld e, h
    ld e, a
    ld e, h
    sub l
    ld e, h
    bit 3, h
    ld bc, $375d
    ld e, l
    ld l, l
    ld e, l
    and e
    ld e, l
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b2d

    ld a, [$b9f0]
    bit 0, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5b36

jr_00f_5b2d:
    ld a, [$ba06]
    bit 0, a
    ret z

    ld hl, $ba04

jr_00f_5b36:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $62
    ld [$cc93], a
    ld hl, $d800
    ld de, $019a
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b63

    ld a, [$b9f0]
    bit 1, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5b6c

jr_00f_5b63:
    ld a, [$ba06]
    bit 1, a
    ret z

    ld hl, $ba04

jr_00f_5b6c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $64
    ld [$cc93], a
    ld hl, $d800
    ld de, $019c
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5b99

    ld a, [$b9f0]
    bit 2, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5ba2

jr_00f_5b99:
    ld a, [$ba06]
    bit 2, a
    ret z

    ld hl, $ba04

jr_00f_5ba2:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $66
    ld [$cc93], a
    ld hl, $d800
    ld de, $019e
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5bcf

    ld a, [$b9f0]
    bit 3, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5bd8

jr_00f_5bcf:
    ld a, [$ba06]
    bit 3, a
    ret z

    ld hl, $ba04

jr_00f_5bd8:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $68
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c05

    ld a, [$b9f0]
    bit 4, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c0e

jr_00f_5c05:
    ld a, [$ba06]
    bit 4, a
    ret z

    ld hl, $ba04

jr_00f_5c0e:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6a
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c3b

    ld a, [$b9f0]
    bit 5, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c44

jr_00f_5c3b:
    ld a, [$ba06]
    bit 5, a
    ret z

    ld hl, $ba04

jr_00f_5c44:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6c
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5c71

    ld a, [$b9f0]
    bit 6, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5c7a

jr_00f_5c71:
    ld a, [$ba06]
    bit 6, a
    ret z

    ld hl, $ba04

jr_00f_5c7a:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $6e
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ca7

    ld a, [$b9f0]
    bit 7, a
    ret z

    ld hl, $b9ee
    jr jr_00f_5cb0

jr_00f_5ca7:
    ld a, [$ba06]
    bit 7, a
    ret z

    ld hl, $ba04

jr_00f_5cb0:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $70
    ld [$cc93], a
    ld hl, $d800
    ld de, $01a8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5cdd

    ld a, [$b9f1]
    bit 0, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5ce6

jr_00f_5cdd:
    ld a, [$ba07]
    bit 0, a
    ret z

    ld hl, $ba05

jr_00f_5ce6:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $72
    ld [$cc93], a
    ld hl, $d800
    ld de, $01aa
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d13

    ld a, [$b9f1]
    bit 1, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d1c

jr_00f_5d13:
    ld a, [$ba07]
    bit 1, a
    ret z

    ld hl, $ba05

jr_00f_5d1c:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $74
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ac
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d49

    ld a, [$b9f1]
    bit 2, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d52

jr_00f_5d49:
    ld a, [$ba07]
    bit 2, a
    ret z

    ld hl, $ba05

jr_00f_5d52:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $76
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ae
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5d7f

    ld a, [$b9f1]
    bit 3, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5d88

jr_00f_5d7f:
    ld a, [$ba07]
    bit 3, a
    ret z

    ld hl, $ba05

jr_00f_5d88:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $78
    ld [$cc93], a
    ld hl, $d800
    ld de, $01b0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5db5

    ld a, [$b9f1]
    bit 4, a
    ret z

    ld hl, $b9ef
    jr jr_00f_5dbe

jr_00f_5db5:
    ld a, [$ba07]
    bit 4, a
    ret z

    ld hl, $ba05

jr_00f_5dbe:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $7a
    ld [$cc93], a
    ld hl, $d800
    ld de, $01b2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc94]
    rst $00
    ld sp, hl
    ld e, l
    ld sp, hl
    ld e, l
    inc hl
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    and c
    ld e, [hl]
    bit 3, [hl]
    push af
    ld e, [hl]
    rra
    ld e, a
    ld c, c
    ld e, a
    ld [hl], e
    ld e, a
    sbc l
    ld e, a
    rst $00
    ld e, a
    pop af
    ld e, a
    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e05

    ld hl, $b9f0
    jr jr_00f_5e08

jr_00f_5e05:
    ld hl, $ba06

jr_00f_5e08:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a2
    ld [$cc93], a
    ld hl, $d800
    ld de, $01bc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e2f

    ld hl, $b9f0
    jr jr_00f_5e32

jr_00f_5e2f:
    ld hl, $ba06

jr_00f_5e32:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a4
    ld [$cc93], a
    ld hl, $d800
    ld de, $01be
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e59

    ld hl, $b9f0
    jr jr_00f_5e5c

jr_00f_5e59:
    ld hl, $ba06

jr_00f_5e5c:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a6
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5e83

    ld hl, $b9f0
    jr jr_00f_5e86

jr_00f_5e83:
    ld hl, $ba06

jr_00f_5e86:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $a8
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ead

    ld hl, $b9f0
    jr jr_00f_5eb0

jr_00f_5ead:
    ld hl, $ba06

jr_00f_5eb0:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $aa
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ed7

    ld hl, $b9f0
    jr jr_00f_5eda

jr_00f_5ed7:
    ld hl, $ba06

jr_00f_5eda:
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ac
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c6
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f01

    ld hl, $b9f0
    jr jr_00f_5f04

jr_00f_5f01:
    ld hl, $ba06

jr_00f_5f04:
    ld a, [hl]
    set 6, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ae
    ld [$cc93], a
    ld hl, $d800
    ld de, $01c8
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f2b

    ld hl, $b9f0
    jr jr_00f_5f2e

jr_00f_5f2b:
    ld hl, $ba06

jr_00f_5f2e:
    ld a, [hl]
    set 7, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b0
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ca
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f55

    ld hl, $b9f1
    jr jr_00f_5f58

jr_00f_5f55:
    ld hl, $ba07

jr_00f_5f58:
    ld a, [hl]
    set 0, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b2
    ld [$cc93], a
    ld hl, $d800
    ld de, $01cc
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5f7f

    ld hl, $b9f1
    jr jr_00f_5f82

jr_00f_5f7f:
    ld hl, $ba07

jr_00f_5f82:
    ld a, [hl]
    set 1, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b4
    ld [$cc93], a
    ld hl, $d800
    ld de, $01ce
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5fa9

    ld hl, $b9f1
    jr jr_00f_5fac

jr_00f_5fa9:
    ld hl, $ba07

jr_00f_5fac:
    ld a, [hl]
    set 2, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b6
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5fd3

    ld hl, $b9f1
    jr jr_00f_5fd6

jr_00f_5fd3:
    ld hl, $ba07

jr_00f_5fd6:
    ld a, [hl]
    set 3, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $b8
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d2
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


    ld a, [$cc79]
    cp $04
    jr z, jr_00f_5ffd

    ld hl, $b9f1
    jr jr_00f_6000

jr_00f_5ffd:
    ld hl, $ba07

jr_00f_6000:
    ld a, [hl]
    set 4, a
    ld [hl], a
    ld a, $9a
    ld [$cc92], a
    ld a, $ba
    ld [$cc93], a
    ld hl, $d800
    ld de, $01d4
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_00f_601b


Jump_00f_601b:
    ld a, $03
    ld [$cc16], a
    xor a
    ld [$cc17], a
    xor a
    ld hl, $cb33
    ld [hl+], a
    ld [hl], a
    ld a, [$cc79]
    cp $03
    ret nz

    ld a, [$cc95]
    cp $03
    ret nz

    ld a, [$cc94]
    cp $05
    jr z, jr_00f_6046

    cp $07
    jr z, jr_00f_6068

    cp $09
    jr z, jr_00f_6046

    ret


jr_00f_6046:
    ld a, $04
    ld [$cc16], a
    ld a, [$cc94]
    cp $05
    jr z, jr_00f_605d

    ld hl, $d800
    ld de, $0078
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_605d:
    ld hl, $d800
    ld de, $0070
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_6068:
    ld a, $05
    ld [$cc16], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_60bc

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [CameraXPosition]
    sub $06
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $06
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0c
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $0a
    ldh [$ffa7], a
    ldh a, [$ffa6]
    cp d
    jr nc, jr_00f_60bc

    ldh a, [$ffa7]
    cp d
    jr c, jr_00f_60bc

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_60bc

    ldh a, [$ffa5]
    cp b
    jr nc, jr_00f_60c2

jr_00f_60bc:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_60c2:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_6116

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [CameraXPosition]
    sub $06
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $06
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0e
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $08
    ldh [$ffa7], a
    ldh a, [$ffa7]
    cp e
    jr c, jr_00f_6116

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_6116

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_6116

    ldh a, [$ffa5]
    cp b
    jr nc, jr_00f_611c

jr_00f_6116:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_611c:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_6170

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [CameraXPosition]
    sub $0a
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $08
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $06
    ldh [$ffa7], a
    ldh a, [$ffa5]
    cp c
    jr c, jr_00f_6170

    ldh a, [$ffa4]
    cp c
    jr nc, jr_00f_6170

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_6170

    ldh a, [$ffa7]
    cp d
    jr nc, jr_00f_6176

jr_00f_6170:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_6176:
    ld a, $01
    ld [$cc75], a
    ret


    ld a, [$c820]
    or a
    jr z, jr_00f_61ca

    ld a, [$c826]
    sub $06
    ld b, a
    ld a, [$c826]
    add $06
    ld c, a
    ld a, [$c828]
    sub $06
    ld d, a
    ld a, [$c828]
    add $06
    ld e, a
    ld a, [CameraXPosition]
    sub $08
    ldh [$ffa4], a
    ld a, [CameraXPosition]
    add $0a
    ldh [$ffa5], a
    ld a, [PlayerOrCameraYPosition]
    sub $0a
    ldh [$ffa6], a
    ld a, [PlayerOrCameraYPosition]
    add $06
    ldh [$ffa7], a
    ldh a, [$ffa4]
    cp b
    jr nc, jr_00f_61ca

    ldh a, [$ffa5]
    cp b
    jr c, jr_00f_61ca

    ldh a, [$ffa6]
    cp e
    jr nc, jr_00f_61ca

    ldh a, [$ffa7]
    cp d
    jr nc, jr_00f_61d0

jr_00f_61ca:
    ld a, $00
    ld [$cc75], a
    ret


jr_00f_61d0:
    ld a, $01
    ld [$cc75], a
    ret


    xor a
    ld [$ba3f], a
    ld a, [$ba0d]
    bit 0, a
    jr z, jr_00f_6202

    bit 2, a
    jr nz, jr_00f_6202

    set 2, a
    ld [$ba0d], a
    bit 1, a
    jr nz, jr_00f_6202

    ld a, [$b9d7]
    cp $0a
    jr c, jr_00f_61fc

    sub $0a
    ld [$b9d7], a
    jr jr_00f_6202

jr_00f_61fc:
    xor a
    ld [$b9d7], a
    jr jr_00f_6202

jr_00f_6202:
    xor a
    ld [$ba4e], a
    ld a, [$b9d8]
    bit 0, a
    call nz, Call_00f_622e
    ld a, [$b9d8]
    bit 1, a
    call nz, Call_00f_6236
    ld a, [$b9d8]
    bit 1, a
    call z, Call_00f_6240
    xor a
    ld [$b9d8], a
    ld a, [$b9d7]
    cp $64
    ret c

    ld a, $63
    ld [$b9d7], a
    ret


Call_00f_622e:
    ld a, [$b9d7]
    inc a
    ld [$b9d7], a
    ret


Call_00f_6236:
    ld a, [$b9d7]
    inc a
    inc a
    inc a
    ld [$b9d7], a
    ret


Call_00f_6240:
    ld a, [$b9d7]
    cp $03
    jr c, jr_00f_624e

    dec a
    dec a
    dec a
    ld [$b9d7], a
    ret nc

jr_00f_624e:
    ld a, $00
    ld [$b9d7], a
    ret


    ld a, $18
    ld hl, $c882
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c890], a
    ret


    ld hl, $c88a
    ld a, [hl]
    ld b, a
    ld a, [$cb5a]
    add b
    ld [hl+], a
    ld a, [hl]
    ld b, a
    ld a, [$cb5b]
    add b
    ld [hl], a
    ret


    ld hl, $c800
    ld a, $01
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld a, [PlayerXPosition]
    ld [$c80a], a
    xor a
    ld [$c80b], a
    ld a, $01
    ld [$c80e], a
    xor a
    ld [$c810], a
    ret


    ld a, [$ba4e]
    bit 0, a
    call nz, Call_00f_62b0
    ld a, [$ba4e]
    bit 1, a
    call nz, Call_00f_62c4
    ret


Call_00f_62b0:
    ld hl, $d800
    ld de, $013c
    add hl, de
    ld bc, $8103
    call Call_00f_62d8
    ld hl, $9a0a
    call Call_00f_62dd
    ret


Call_00f_62c4:
    ld hl, $d800
    ld de, $0100
    add hl, de
    ld bc, $8103
    call Call_00f_62d8
    ld hl, $9992
    call Call_00f_62dd
    ret


Call_00f_62d8:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_62dd:
    ld a, $f2
    ld [hl+], a
    ld a, $f3
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $e4
    ld [hl+], a
    ld a, $e5
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $f4
    ld [hl+], a
    ld a, $f5
    ld [hl], a
    ret


    inc bc
    push af
    inc b
    ld h, e
    ld a, [bc]
    ld h, e
    inc sp
    ld h, e
    ld e, h
    ld h, e
    ld hl, sp+$00
    rst $18
    nop
    ld hl, sp-$08
    sbc $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    db $db
    nop
    add sp, -$08
    jp c, $e000

    nop
    reti


    nop
    ldh [$fff8], a
    ret c

    nop
    ret c

    nop
    rst $10
    nop
    ret c

    ld hl, sp-$2a
    nop
    add b
    ld hl, sp+$00
    rst $20
    nop
    ld hl, sp-$08
    and $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    push hl
    nop
    add sp, -$08
    db $e4
    nop
    ldh [rP1], a
    db $e3
    nop
    ldh [$fff8], a
    ldh [c], a
    nop
    ret c

    nop
    pop hl
    nop
    ret c

    ld hl, sp-$20
    nop
    add b
    ld hl, sp+$00
    rst $28
    nop
    ld hl, sp-$08
    xor $00
    ldh a, [rP1]
    db $dd
    nop
    ldh a, [$fff8]
    call c, $e800
    nop
    db $ed
    nop
    add sp, -$08
    db $ec
    nop
    ldh [rP1], a
    db $eb
    nop
    ldh [$fff8], a
    ld [$d800], a
    nop
    jp hl


    nop
    ret c

    ld hl, sp-$18
    nop
    add b
    add a
    ld h, e
    rrca
    nop
    rrca
    ld bc, $020f
    rst $38
    ld a, $01
    ld [$cb81], a
    xor a
    ld [$cbe8], a
    ld [$ccb7], a
    ld [$c90f], a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c880], a
    ld [$c8a0], a
    ld [$c8c0], a
    ld [$c8e0], a
    ld [$c760], a
    ld [$c780], a
    ld [GrabbingDog?], a
    ld [$c800], a
    ld [$c820], a
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $5f14
    ld a, $0d
    call Call_000_1f96
    ld hl, $6de1
    ld c, $10
    ld de, $8800
    call Call_000_2f41
    ld hl, $6658
    ld c, $10
    ld de, $9000
    call Call_000_2f41
    ld hl, $6e14
    ld c, $1b
    ld de, $9800
    call Call_000_2f41
    ld a, $1d
    ld [$cb4e], a
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    call Call_000_12a3
    xor a
    ld [$4000], a
    ld a, $d8
    ld [$b90d], a
    ld a, $00
    ld [$b90e], a
    ld a, $22
    ld [$b90c], a
    call $6a76
    call Call_00f_6bbb
    ld a, $a8
    ld [$cb5c], a
    ld a, $d9
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $83
    ld [$c0a2], a
    ld a, $68
    ldh [$ff95], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $66
    ldh [rLYC], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $17
    call Call_000_23cf
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [$b88c], a
    ld [$cb56], a
    ld [$cb5f], a
    call Call_000_3e2a
    call Call_000_3d18
    xor a
    ld [$c912], a
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_00f_6499
    call Call_00f_64a1
    call Call_000_3c1d
    call Call_00f_68c6
    call Call_000_2b71
    call Call_000_362c
    ld hl, $69f0
    ld a, $01
    call Call_000_1f96
    ret


Call_00f_6499:
    ld hl, $c912
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_00f_64a1:
    call Call_00f_6780
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc27]
    or a
    ret nz

    ld a, [$c912]
    or a
    ret nz

    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb56]
    or a
    ret nz

    ldh a, [$ff8b]
    and $01
    jr nz, jr_00f_650a

    ldh a, [$ff8a]
    and $02
    jr z, jr_00f_64e3

    call Call_00f_6532
    ld a, [$c603]
    and $01
    ret z

    ld a, [$c605]
    cp $08
    ret nz

    ld a, $34
    call Call_000_23d8
    ret


jr_00f_64e3:
    ldh a, [$ff8a]
    and $80
    jp nz, Jump_00f_6648

    ldh a, [$ff8a]
    and $40
    jp nz, Jump_00f_6684

    ldh a, [$ff8a]
    and $20
    jp nz, Jump_00f_66c0

    ldh a, [$ff8a]
    and $10
    jp nz, Jump_00f_66fc

    ld a, [$c912]
    or a
    ret nz

    ld a, $00
    call Call_000_166a
    ret


jr_00f_650a:
    ld a, [$cb34]
    and $01
    ret z

    ld a, [$cb33]
    cp $80
    call z, Call_00f_6906
    cp $81
    call z, Call_00f_6944
    cp $82
    call z, Call_00f_698c
    cp $83
    call z, Call_00f_69d4
    cp $84
    call z, Call_00f_6a34
    ld a, $00
    call Call_000_166a
    ret


Call_00f_6532:
    ldh a, [$ff8a]
    and $80
    jr nz, jr_00f_654c

    ldh a, [$ff8a]
    and $20
    jr nz, jr_00f_6550

    ldh a, [$ff8a]
    and $10
    jr nz, jr_00f_6554

    ldh a, [$ff8a]
    and $40
    jr nz, jr_00f_6558

    jr jr_00f_655d

jr_00f_654c:
    ld a, $00
    jr jr_00f_655a

jr_00f_6550:
    ld a, $01
    jr jr_00f_655a

jr_00f_6554:
    ld a, $02
    jr jr_00f_655a

jr_00f_6558:
    ld a, $03

jr_00f_655a:
    ld [$c60d], a

jr_00f_655d:
    ld a, $02
    call Call_000_166a
    ld a, [$c60d]
    cp $00
    jp z, Jump_00f_65a9

    cp $01
    jp z, Jump_00f_65de

    cp $02
    jp z, Jump_00f_6613

    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_6597

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_676e

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_6777

    ret


jr_00f_6597:
    call Call_00f_6741
    call Call_00f_6741
    ld a, [PlayerOrCameraYPosition]
    cp $1e
    ret nc

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_65a9:
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_65cc

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_676e

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_6777

    ret


jr_00f_65cc:
    call Call_00f_6738
    call Call_00f_6738
    ld a, [PlayerOrCameraYPosition]
    cp $83
    ret c

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_65de:
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_6601

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_6765

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_675c

    ret


jr_00f_6601:
    call Call_00f_674a
    call Call_00f_674a
    ld a, [CameraXPosition]
    cp $18
    ret nc

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_6613:
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_6636

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_6765

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_675c

    ret


jr_00f_6636:
    call Call_00f_6753
    call Call_00f_6753
    ld a, [CameraXPosition]
    cp $8a
    ret c

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_6648:
    ld a, $00
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_000_150b
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_6675

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_676e

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_6777

    ret


jr_00f_6675:
    call Call_00f_6738
    ld a, [PlayerOrCameraYPosition]
    cp $83
    ret c

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_6684:
    ld a, $03
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_000_1514
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_66b1

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_676e

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_6777

    ret


jr_00f_66b1:
    call Call_00f_6741
    ld a, [PlayerOrCameraYPosition]
    cp $1e
    ret nc

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_66c0:
    ld a, $01
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_000_151d
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_66ed

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_6765

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_675c

    ret


jr_00f_66ed:
    call Call_00f_674a
    ld a, [CameraXPosition]
    cp $18
    ret nc

    ld a, $0d
    ld [$cb33], a
    ret


Jump_00f_66fc:
    ld a, $02
    ld [$c60d], a
    ld a, $01
    call Call_000_166a
    call Call_000_1526
    ld a, [$cb30]
    ld b, a
    ld a, [$cb32]
    or b
    and $01
    jr z, jr_00f_6729

    ld a, $01
    ld [$c90e], a
    ld a, b
    and $01
    jp z, Jump_00f_6765

    ld a, [$cb32]
    and $01
    jp z, Jump_00f_675c

    ret


jr_00f_6729:
    call Call_00f_6753
    ld a, [CameraXPosition]
    cp $8a
    ret c

    ld a, $0d
    ld [$cb33], a
    ret


Call_00f_6738:
    ld hl, $557c
    ld a, $02
    call Call_000_1f96
    ret


Call_00f_6741:
    ld hl, $55ca
    ld a, $02
    call Call_000_1f96
    ret


Call_00f_674a:
    ld hl, $55f8
    ld a, $02
    call Call_000_1f96
    ret


Call_00f_6753:
    ld hl, $5664
    ld a, $02
    call Call_000_1f96
    ret


Jump_00f_675c:
    ld hl, $5569
    ld a, $02
    call Call_000_1f96
    ret


Jump_00f_6765:
    ld hl, $5556
    ld a, $02
    call Call_000_1f96
    ret


Jump_00f_676e:
    ld hl, $5530
    ld a, $02
    call Call_000_1f96
    ret


Jump_00f_6777:
    ld hl, $5543
    ld a, $02
    call Call_000_1f96
    ret


Call_00f_6780:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$cc27]
    or a
    jr nz, jr_00f_67ee

    ld a, [$cb33]
    cp $0d
    jr z, jr_00f_67cc

    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_67b0

    cp $01
    jr z, jr_00f_67bf

    ld a, [$ccb7]
    and $f8
    cp $f8
    ret nz

    ld a, [$cb56]
    or a
    jr z, jr_00f_67cc

    ret


jr_00f_67b0:
    ld a, [$ccb7]
    and $e0
    cp $e0
    ret nz

    ld a, [$cb56]
    or a
    jr z, jr_00f_67cc

    ret


jr_00f_67bf:
    ld a, [$ccb7]
    and $18
    cp $18
    ret nz

    ld a, [$cb56]
    or a
    ret nz

jr_00f_67cc:
    ld a, $00
    call Call_000_166a
    ld a, $f0
    ld [$cc27], a
    ld a, [$ccb8]
    cp $01
    jr z, jr_00f_67e7

    cp $02
    jr z, jr_00f_67ed

    ld a, $cf
    call Call_000_3e80
    ret


jr_00f_67e7:
    ld a, $d3
    call Call_000_3e80
    ret


jr_00f_67ed:
    ret


jr_00f_67ee:
    ldh a, [$ff8b]
    and $01
    jr z, jr_00f_6800

    ld a, [$cb56]
    or a
    jr nz, jr_00f_6800

    xor a
    ld [$cc27], a
    jr jr_00f_6807

jr_00f_6800:
    ld a, [$cc27]
    dec a
    ld [$cc27], a

jr_00f_6807:
    or a
    ret nz

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    xor a
    ld [$c910], a
    ld [$b880], a
    ld [$b881], a
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_682a

    ld a, $15
    ld [CurrentTime], a
    ret


jr_00f_682a:
    ld a, $12
    ld [CurrentTime], a
    ret


Call_00f_6830:
    ld hl, $c860
    call Call_00f_68f6
    ld a, $00
    ld b, a
    ld a, [$c86d]
    add b
    ld hl, $c862
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c870], a
    ret


Call_00f_684e:
    ld hl, $c880
    call Call_00f_68f6
    ld a, $0c
    ld b, a
    ld a, [$c88d]
    add b
    ld hl, $c882
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c890], a
    ret


Call_00f_686c:
    ld hl, $c8a0
    call Call_00f_68f6
    ld a, $10
    ld b, a
    ld a, [$c8ad]
    add b
    ld hl, $c8a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8b0], a
    ret


Call_00f_688a:
    ld hl, $c8c0
    call Call_00f_68f6
    ld a, $08
    ld b, a
    ld a, [$c8cd]
    add b
    ld hl, $c8c2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8d0], a
    ret


Call_00f_68a8:
    ld hl, $c8e0
    call Call_00f_68f6
    ld a, $04
    ld b, a
    ld a, [$c8ed]
    add b
    ld hl, $c8e2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8f0], a
    ret


Call_00f_68c6:
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_68d5

    cp $01
    jr z, jr_00f_68df

    cp $02
    jr z, jr_00f_68e6

jr_00f_68d5:
    call Call_00f_6830
    call Call_00f_684e
    call Call_00f_686c
    ret


jr_00f_68df:
    call Call_00f_688a
    call Call_00f_68a8
    ret


jr_00f_68e6:
    call Call_00f_6830
    call Call_00f_684e
    call Call_00f_686c
    call Call_00f_688a
    call Call_00f_68a8
    ret


Call_00f_68f6:
    ld a, $0b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [$cb5b]
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ret


Call_00f_6906:
    ld hl, $c86d
    ld a, [$c60d]
    ld de, $6a72
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_692c

    ld a, [$ccb7]
    set 7, a
    ld [$ccb7], a
    ld a, $ca
    call Call_000_3e80
    ret


jr_00f_692c:
    ld a, [$ccb7]
    bit 7, a
    jr nz, jr_00f_693e

    set 7, a
    ld [$ccb7], a
    ld a, $d4
    call Call_000_3e80
    ret


jr_00f_693e:
    ld a, $d5
    call Call_000_3e80
    ret


Call_00f_6944:
    ld hl, $c88d
    ld a, [$c60d]
    ld de, $6a72
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_6974

    ld a, [$ccb7]
    bit 6, a
    jr nz, jr_00f_696e

    set 6, a
    ld [$ccb7], a
    ld a, $cd
    call Call_000_3e80
    ret


jr_00f_696e:
    ld a, $ce
    call Call_000_3e80
    ret


jr_00f_6974:
    ld a, [$ccb7]
    bit 6, a
    jr nz, jr_00f_6986

    set 6, a
    ld [$ccb7], a
    ld a, $d6
    call Call_000_3e80
    ret


jr_00f_6986:
    ld a, $d7
    call Call_000_3e80
    ret


Call_00f_698c:
    ld hl, $c8ad
    ld a, [$c60d]
    ld de, $6a72
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $00
    jr nz, jr_00f_69bc

    ld a, [$ccb7]
    bit 5, a
    jr nz, jr_00f_69b6

    set 5, a
    ld [$ccb7], a
    ld a, $cb
    call Call_000_3e80
    ret


jr_00f_69b6:
    ld a, $cc
    call Call_000_3e80
    ret


jr_00f_69bc:
    ld a, [$ccb7]
    bit 5, a
    jr nz, jr_00f_69ce

    set 5, a
    ld [$ccb7], a
    ld a, $d8
    call Call_000_3e80
    ret


jr_00f_69ce:
    ld a, $d9
    call Call_000_3e80
    ret


Call_00f_69d4:
    ld hl, $c8cd
    ld a, [$c60d]
    ld de, $6a72
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $01
    jr nz, jr_00f_6a04

    ld a, [$ccb7]
    bit 4, a
    jr nz, jr_00f_69fe

    set 4, a
    ld [$ccb7], a
    ld a, $d0
    call Call_000_3e80
    ret


jr_00f_69fe:
    ld a, $d1
    call Call_000_3e80
    ret


jr_00f_6a04:
    ld a, [$ccb7]
    bit 4, a
    jr nz, jr_00f_6a22

    set 4, a
    ld [$ccb7], a
    ld a, [$b8ec]
    or a
    jr nz, jr_00f_6a1c

    ld a, $dc
    call Call_000_3e80
    ret


jr_00f_6a1c:
    ld a, $de
    call Call_000_3e80
    ret


jr_00f_6a22:
    ld a, [$b8ec]
    or a
    jr nz, jr_00f_6a2e

    ld a, $dd
    call Call_000_3e80
    ret


jr_00f_6a2e:
    ld a, $df
    call Call_000_3e80
    ret


Call_00f_6a34:
    ld hl, $c8ed
    ld a, [$c60d]
    ld de, $6a72
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl], a
    ld a, [$ccb8]
    cp $01
    jr nz, jr_00f_6a5a

    ld a, [$ccb7]
    set 3, a
    ld [$ccb7], a
    ld a, $d2
    call Call_000_3e80
    ret


jr_00f_6a5a:
    ld a, [$ccb7]
    bit 3, a
    jr nz, jr_00f_6a6c

    set 3, a
    ld [$ccb7], a
    ld a, $da
    call Call_000_3e80
    ret


jr_00f_6a6c:
    ld a, $db
    call Call_000_3e80
    ret


    inc bc
    ld [bc], a
    ld bc, $af00
    ldh [$ff93], a
    ldh [$ff91], a
    ld hl, $6b5b
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $00
    call Call_000_166a
    ld a, [$ccb8]
    cp $00
    jr z, jr_00f_6a9a

    cp $01
    jr z, jr_00f_6aad

    cp $02
    jr z, jr_00f_6aba

jr_00f_6a9a:
    call Call_00f_6ad9
    call Call_00f_6830
    call Call_00f_6af3
    call Call_00f_684e
    call Call_00f_6b0d
    call Call_00f_686c
    ret


jr_00f_6aad:
    call Call_00f_6b27
    call Call_00f_688a
    call Call_00f_6b41
    call Call_00f_68a8
    ret


jr_00f_6aba:
    call Call_00f_6ad9
    call Call_00f_6830
    call Call_00f_6af3
    call Call_00f_684e
    call Call_00f_6b0d
    call Call_00f_686c
    call Call_00f_6b27
    call Call_00f_688a
    call Call_00f_6b41
    call Call_00f_68a8
    ret


Call_00f_6ad9:
    ld hl, $6b6b
    ld de, $c860
    ld b, $10
    call Call_000_210f
    ld hl, $d800
    ld de, $0072
    add hl, de
    ld bc, $8180
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6af3:
    ld hl, $6b7b
    ld de, $c880
    ld b, $10
    call Call_000_210f
    ld hl, $d800
    ld de, $00f4
    add hl, de
    ld bc, $8181
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6b0d:
    ld hl, $6b8b
    ld de, $c8a0
    ld b, $10
    call Call_000_210f
    ld hl, $d800
    ld de, $00ae
    add hl, de
    ld bc, $8182
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6b27:
    ld hl, $6b9b
    ld de, $c8c0
    ld b, $10
    call Call_000_210f
    ld hl, $d800
    ld de, $006c
    add hl, de
    ld bc, $8183
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


Call_00f_6b41:
    ld hl, $6bab
    ld de, $c8e0
    ld b, $10
    call Call_000_210f
    ld hl, $d800
    ld de, $00fa
    add hl, de
    ld bc, $8184
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0078], sp
    ld d, b
    nop
    ld a, b
    ld d, b
    nop
    ld bc, $0001
    ld bc, $0208
    nop
    nop
    ld [$0068], sp
    jr nc, jr_00f_6b75

jr_00f_6b75:
    ld l, b
    jr nc, jr_00f_6b78

jr_00f_6b78:
    nop
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0038], sp
    ld [hl], b
    nop
    jr c, jr_00f_6bf7

    nop
    inc bc
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0028], sp
    ld d, b
    nop
    jr z, jr_00f_6be7

    nop
    ld [bc], a
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0038], sp
    jr nc, jr_00f_6ba5

jr_00f_6ba5:
    jr c, jr_00f_6bd7

    nop
    nop
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld [$0068], sp
    ld [hl], b
    nop
    ld l, b
    ld [hl], b
    nop
    inc bc
    nop
    nop

Call_00f_6bbb:
    ld hl, $9c00
    ld de, $6bc9
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

jr_00f_6bd7:
    and c
    and c
    and c
    and c
    and c
    and d
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b

jr_00f_6be7:
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b

jr_00f_6bf7:
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    ld sp, hl
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    and l
    and e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    and h
    xor a
    ld [$c800], a
    ld [$c820], a
    ld [$c840], a
    ld [$c860], a
    ld [$c760], a
    ld [$c780], a
    ld [GrabbingDog?], a
    ld [$c800], a
    ld [$c820], a
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $7761
    ld c, $10
    ld de, $8800
    call Call_000_2f41
    ld hl, $72a5
    ld c, $10
    ld de, $9000
    call Call_000_2f41
    ld hl, $780d
    ld c, $10
    ld de, $9800
    call Call_000_2f41
    ld hl, $5fba
    ld a, $0d
    call Call_000_1f96
    ld a, $10
    ld [$cb5c], a
    ld a, $a8
    ld [$cb5d], a
    ld [$cb5e], a
    ld a, $1d
    ld [$cb4e], a
    xor a
    ld [$ccb9], a
    call Call_00f_6d94
    call Call_00f_6dd8
    ld a, $83
    ld [$c0a2], a
    ld a, $68
    ldh [$ff95], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld a, $1b
    call Call_000_23d2
    ld hl, $c0a3
    inc hl
    ld a, $72
    ld [hl+], a
    ld [hl], a
    call Call_00f_6d35
    call Call_00f_6e4a
    ret


    call Call_000_0ae9
    xor a
    ld [$cb5a], a
    ld [$cb5b], a
    call Call_00f_6cd2
    call Call_00f_6d7c
    call Call_000_2b71
    call Call_000_362c
    ret


Call_00f_6cd2:
    ld a, [$cb4e]
    ld b, a
    ld a, [$cb4f]
    or b
    ret nz

    ld a, [$ccb9]
    rst $00
    db $e3
    ld l, h
    add hl, bc
    ld l, l
    ld a, [$ccba]
    cp $03
    jr z, jr_00f_6cf6

    cp $02
    jr z, jr_00f_6cfa

    cp $01
    jr z, jr_00f_6cfe

    ld a, $e2
    jr jr_00f_6d00

jr_00f_6cf6:
    ld a, $e3
    jr jr_00f_6d00

jr_00f_6cfa:
    ld a, $e4
    jr jr_00f_6d00

jr_00f_6cfe:
    ld a, $e5

jr_00f_6d00:
    call Call_000_3e80
    ld a, $01
    ld [$ccb9], a
    ret


    ld a, [$cb52]
    cp $ff
    ret nz

    ldh a, [$ff8b]
    and $01
    ret z

    ld a, [$ccba]
    ld b, a

jr_00f_6d18:
    push bc
    ld a, $ce
    call Call_000_0fb9
    ld a, $ce
    call Call_000_0fb9
    pop bc
    dec b
    jr nz, jr_00f_6d18

    ld a, $02
    ld [$cb50], a
    ld a, $1d
    ld [$cb4f], a
    call Call_00f_6eb2
    ret


Call_00f_6d35:
    ld hl, $ccbb
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $ccbb
    ld de, $ccba
    ld a, $00
    ld [de], a
    ld a, [$b9a1]
    bit 4, a
    jr z, jr_00f_6d54

    ld a, [de]
    inc a
    ld [de], a
    ld a, $00
    ld [hl+], a

jr_00f_6d54:
    ld a, [$b9a1]
    bit 5, a
    jr z, jr_00f_6d61

    ld a, [de]
    inc a
    ld [de], a
    ld a, $01
    ld [hl+], a

jr_00f_6d61:
    ld a, [$b9a1]
    bit 6, a
    jr z, jr_00f_6d6e

    ld a, [de]
    inc a
    ld [de], a
    ld a, $02
    ld [hl+], a

jr_00f_6d6e:
    ld a, [$b9a1]
    bit 7, a
    jr z, jr_00f_6d7b

    ld a, [de]
    inc a
    ld [de], a
    ld a, $03
    ld [hl], a

jr_00f_6d7b:
    ret


Call_00f_6d7c:
    ld a, $14
    ld b, a
    ld a, [$c8cd]
    add b
    ld hl, $c8c2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    xor a
    ld [$c8d0], a
    ret


Call_00f_6d94:
    xor a
    ldh [$ff93], a
    ldh [$ff91], a
    ld hl, $6db8
    ld de, $c600
    ld b, $10
    call Call_000_210f
    ld a, $00
    call Call_000_166a
    ld hl, $6dc8
    ld de, $c8c0
    ld b, $10
    call Call_000_210f
    call Call_00f_6d7c
    ret


    ld bc, $ff00
    nop
    nop
    ld [$0000], sp
    nop
    nop
    ld h, b
    ld l, b
    nop
    inc bc
    ld bc, $0100
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    ld [bc], a
    nop
    nop

Call_00f_6dd8:
    ld hl, $9c00
    ld de, $6de6
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    and a
    and [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    and a
    and [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
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

Call_00f_6e4a:
    ld de, $cc10
    ld a, [$b8ec]
    or a
    jr z, jr_00f_6e58

    ld hl, $6e8e
    jr jr_00f_6e5b

jr_00f_6e58:
    ld hl, $6e8b

jr_00f_6e5b:
    ld b, $03
    call Call_000_210f
    ld bc, $ccbb
    ld a, [$ccba]
    cp $03
    jr z, jr_00f_6e78

    cp $02
    jr z, jr_00f_6e7e

    cp $01
    jr z, jr_00f_6e84

    ld de, $cc00
    call Call_00f_6e91

jr_00f_6e78:
    ld de, $cc04
    call Call_00f_6e91

jr_00f_6e7e:
    ld de, $cc08
    call Call_00f_6e91

jr_00f_6e84:
    ld de, $cc0c
    call Call_00f_6e91
    ret


    xor a
    ret z

    ld [de], a
    ld [hl], e
    jr nc, jr_00f_6eb2

Call_00f_6e91:
    ld hl, $6eaa
    ld a, [bc]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc bc
    push bc
    ld b, $04
    call Call_000_210f
    pop bc
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c

Call_00f_6eb2:
jr_00f_6eb2:
    ld a, [$b9a1]
    and $0f
    ld [$b9a1], a
    ld de, $ccbb

jr_00f_6ebd:
    ld hl, $6eaa
    ld a, [de]
    call Call_000_0743
    inc de
    ld a, $ff
    ld [hl+], a
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$ccba]
    dec a
    ld [$ccba], a
    or a
    jr nz, jr_00f_6ebd

    ret


    ld hl, $98e1
    ld a, $2d
    ld [hl+], a
    ld a, $2e
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $3d
    ld [hl+], a
    ld a, $3e
    ld [hl], a
    ld hl, $d800
    ld a, $45
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $8320
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


    ld hl, $98a1
    ld a, $0d
    ld [hl+], a
    ld a, $0e
    ld [hl], a
    ld a, $1f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $1d
    ld [hl+], a
    ld a, $1e
    ld [hl], a
    ld hl, $d800
    ld a, $34
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $8321
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


    ld hl, $b8f8
    ld a, [hl+]
    cp $10
    ret z

    ld a, [hl]
    cp $10
    ret z

    ld hl, $9a65
    ld a, $05
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $1e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $15
    ld [hl+], a
    ld a, $16
    ld [hl], a
    ld de, $015a
    ld hl, $d800
    add hl, de
    ld bc, $011d
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld a, $01
    ld [$cc23], a
    ld a, [$b949]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_6f7e

    ld a, [$b953]
    bit 7, a
    ret nz

jr_00f_6f7e:
    ld a, [$b95f]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_6f8e

    ld a, [$b969]
    bit 7, a
    ret nz

jr_00f_6f8e:
    ld a, [$b975]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_6f9e

    ld a, [$b97f]
    bit 7, a
    ret nz

jr_00f_6f9e:
    ld a, [$b98b]
    cp $03
    ret z

    cp $02
    jr nz, jr_00f_6fae

    ld a, [$b995]
    bit 7, a
    ret nz

jr_00f_6fae:
    xor a
    ld [$cc23], a
    ret


    ld a, [$b948]
    bit 0, a
    call nz, Call_00f_6fdc
    ld a, [$b948]
    bit 1, a
    call nz, Call_00f_6fe1
    ld a, [$b948]
    bit 2, a
    call nz, Call_00f_6fe6
    ld a, [$b948]
    bit 3, a
    call nz, Call_00f_6feb
    ld a, [$b948]
    bit 4, a
    call nz, Call_00f_6ff0
    ret


Call_00f_6fdc:
    ld hl, $98ca
    jr jr_00f_6ff3

Call_00f_6fe1:
    ld hl, $998a
    jr jr_00f_6ff3

Call_00f_6fe6:
    ld hl, $98d0
    jr jr_00f_6ff3

Call_00f_6feb:
    ld hl, $9990
    jr jr_00f_6ff3

Call_00f_6ff0:
    ld hl, $9a54

jr_00f_6ff3:
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
    ld a, $b8
    ld [hl+], a
    ld a, $b9
    ld [hl], a
    ret


    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    inc hl
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0181
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0181
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    dec b
    add c
    inc bc
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $81
    dec b
    add c
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    inc b
    add c
    nop
    nop
    ld h, $81
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    inc bc
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_7175:
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    inc h
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld c, $81
    ld c, $81
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    add c
    inc b
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    ld c, $81
    ld c, $81
    nop
    nop
    ld [bc], a
    add c
    nop
    nop
    ld [bc], a
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    jr nz, jr_00f_7175

    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    ld b, $81
    ld b, $81
    ld b, $81
    ld b, $81
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    rlca
    add c
    ld b, $81
    ld b, c
    add b
    ld b, c
    add b
    ld b, $81
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    ld hl, $0081
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld b, $81
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    ld [$0081], sp
    nop
    ld b, $81
    ld b, c
    add b
    ld b, c
    add b
    ld b, $81
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    ld b, $81
    ld b, $81
    ld b, $81
    ld b, $81
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    dec bc
    add c
    ld bc, $0b81
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0081
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    dec bc
    add c
    ld b, e
    add b
    dec bc
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0081
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    add b
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    ld bc, $0081
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    ld bc, $0181
    add c
    ld bc, $0081
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    ld hl, $0081
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    dec h
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0081
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    inc h
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    nop
    nop
    nop
    ld h, c
    ld bc, $0161
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    add c
    inc c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
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
    inc c
    add c
    inc c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld bc, $0160
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_7a7a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_00f_7aa2:
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
    jr nc, jr_00f_7a7a

    sbc d
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_00f_7ada

    rst $38
    rst $38

jr_00f_7ada:
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
    jr nc, jr_00f_7aa2

    jr nc, jr_00f_7b13

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

jr_00f_7b13:
    jp nc, $ffef

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
    rst $38
    add e
    db $fd
    ld c, l
    adc $1f
    ld a, c
    ld a, a
    ccf
    rst $38
    ld b, c
    ccf
    jr nz, @+$21

    rra
    nop
    inc bc
    nop
    rst $30
    ld [bc], a
    ld bc, $f001
    dec bc
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    ld l, a
    rst $38
    cp a
    ld l, a
    rst $38
    or $2f
    ccf
    nop
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
    rst $38
    rst $30
    di
    push de
    ei
    db $fd
    ei
    ld bc, $ff00
    rlca
    nop
    dec c
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0bff
    dec b
    rrca
    dec b
    rra
    rrca
    rra
    ld a, [bc]
    cp $20
    nop
    ld b, $0f

jr_00f_7ba4:
    rlca
    inc c
    rlca
    inc c
    inc bc
    push af
    rlca
    ld bc, $a80f
    jr nz, jr_00f_7bb0

jr_00f_7bb0:
    or b
    ld hl, sp-$10
    jr jr_00f_7ba4

    ldh a, [rNR10]
    ldh [$fff0], a
    ldh a, [rNR12]
    rra
    dec bc
    rra
    ld [hl], a
    ld [$071f], sp
    ld bc, $0502
    inc bc
    inc bc
    ld bc, $5f11
    add sp, -$04
    adc b
    db $fc
    ldh a, [$ff03]
    ld [bc], a
    ldh [$fff2], a
    inc d

jr_00f_7bd4:
    rst $38
    inc bc
    nop
    dec b
    inc bc
    dec bc
    rlca
    rrca
    ld b, $ff
    rla
    add hl, bc
    ld e, $05
    rra
    dec bc
    nop
    nop
    rst $38
    ldh [rP1], a
    db $10
    ldh [$ff88], a
    ldh a, [$ffe8]
    or b
    rst $38
    db $f4
    ld c, b
    xor h
    ret nc

    call c, Call_000_14e8
    rrca
    db $fd
    inc e
    jr nz, jr_00f_7bfc

jr_00f_7bfc:
    rla
    dec c
    add hl, bc
    ld b, $05
    ld [bc], a
    cp $01
    inc b
    inc d
    ld hl, sp+$1c
    ld hl, sp-$44
    ld hl, sp-$0c
    rst $18
    ld e, b
    ret z

    or b
    ret nc

    jr nz, jr_00f_7c14

    inc b

jr_00f_7c14:
    pop hl
    ld hl, $c3ff
    cp a
    xor [hl]
    ld a, [hl]
    ret c

    jr c, jr_00f_7bd4

    adc a
    rst $38
    rst $18
    ldh [$ff9c], a
    xor h
    call c, $9fec
    sbc d
    rst $38
    add d
    db $fc
    dec c
    ld c, $ff
    ld hl, sp-$0a
    ld c, $bf
    ld c, [hl]
    ret nc

    ld l, $36
    dec c
    dec d
    daa
    dec de
    add b
    cp $d2
    dec de
    ld e, $fc
    ld a, $fc
    ld a, [$fcfc]
    rst $38
    ld hl, sp-$4c
    ld hl, sp+$68
    or b
    or b
    ld h, b
    ldh [rIE], a
    nop
    cp a
    cpl
    cp [hl]
    ld l, a
    rst $10
    ld l, a
    rst $10
    rst $38
    ld h, a
    or [hl]
    cpl
    or a
    ld l, a
    sbc [hl]
    ld l, a
    cp d
    rst $38
    ld l, a
    ei
    rst $18
    cp d
    rst $18
    and [hl]
    rst $08
    rst $20
    rst $38
    rst $18
    db $ed
    rst $18
    rst $28
    rst $18
    rst $20
    rst $18
    db $eb
    cp a
    rst $18
    rst $18
    ei
    rst $38
    ei
    rst $10
    and b
    rrca
    push de
    rst $38
    ei
    ld b, l
    ei
    dec b
    ei

jr_00f_7c82:
    sub [hl]
    ei
    daa
    rst $38
    nop
    rst $38
    ld hl, $edd3
    rst $20

jr_00f_7c8c:
    ei
    di
    ccf
    cp a
    rst $38
    cp a
    cp $bf
    db $fc
    ldh a, [rNR34]
    rrca
    inc c
    ld [hl], h
    add hl, bc
    inc c
    inc bc
    db $10
    rra
    ld [bc], a
    ld [de], a
    rrca
    inc b
    inc b
    inc b
    db $10
    db $fd
    db $fc
    nop
    ld [de], a
    jr jr_00f_7c8c

    ld hl, sp+$10
    stop
    rst $28
    ld bc, $0600
    ld bc, $03e0
    rlca
    rla
    ld c, $bd
    rra
    ld [bc], a
    inc b
    ret nz

    nop
    jr nc, jr_00f_7c82

    ldh [rIF], a
    ldh a, [$ffd7]
    db $f4
    cp b
    db $fc
    ld [bc], a
    stop
    jr nz, @+$04

    rlca
    ld bc, $0aaf
    dec b
    dec b
    ld [bc], a
    add c
    ld [bc], a
    ld c, $30
    ld d, $40
    rst $38
    nop
    ldh a, [rLCDC]
    cp b
    ret nc

    ldh a, [rNR41]
    jr nc, @+$01

    ret nz

    add sp, -$10
    cp b
    ldh a, [rDIV]
    nop
    rra
    rst $30
    nop
    scf
    rra
    add b
    jr jr_00f_7cfa

    cpl
    ld d, $3f
    rst $38
    ld d, $7f

jr_00f_7cfa:
    ccf
    sbc a
    nop
    rst $38
    add a
    ld c, a
    cp a
    or a
    sbc a
    rst $28
    rst $08
    rst $38
    db $fd
    ld d, b
    dec de
    ldh a, [$fffd]
    rst $38
    inc bc
    dec b
    add $f8
    rst $20
    ld a, [$fc3a]
    ld sp, hl
    ld e, $20
    nop
    ld b, $03
    ld c, $3f
    dec d
    ccf
    dec d
    rst $38

jr_00f_7d20:
    ld a, a
    ccf

jr_00f_7d22:
    reti


    ld l, a
    jp c, $f96f

    ld l, a
    rst $18
    db $d3
    ld h, a
    or l
    cpl
    cp c
    ldh [rIF], a
    sub d
    ld l, a
    db $fd
    db $eb
    ld h, b
    rrca
    push hl
    rst $08
    ld h, l
    rst $18
    xor b
    rst $18
    rst $38
    ld a, [hl+]
    rst $18
    jr nz, jr_00f_7d20

    jr z, jr_00f_7d22

    ld d, a
    ei
    rst $38
    ld d, [hl]
    ei
    ld d, l
    di
    inc d
    ei
    inc d
    ei
    rst $38
    dec h
    ei
    and h
    ei
    add [hl]
    ei
    ldh [rP1], a
    rst $18
    sbc [hl]
    ldh [$ffc7], a
    ld a, [$40e2]
    inc d
    ld c, l
    cp $c1
    rlca
    jr nz, jr_00f_7d65

jr_00f_7d65:
    inc bc
    jr nz, jr_00f_7d70

    ld c, $02
    jr nz, jr_00f_7d73

    ld c, $1f
    add hl, bc
    ld a, [hl+]

jr_00f_7d70:
    jr nz, jr_00f_7d94

    ld [bc], a

jr_00f_7d73:
    ld [$c810], sp
    jr nz, @+$24

    and b
    ld [$0202], sp
    ld [hl+], a
    ccf
    rla
    rrca
    inc d
    rrca
    rrca
    inc bc
    ld de, LCDCInterruptHandler
    ld [hl+], a
    sbc a
    db $f4
    ld hl, sp+$14
    ld hl, sp+$18
    ld [bc], a
    ld [hl+], a
    dec b
    jr nz, @+$0f

    di

jr_00f_7d94:
    ld b, $0b
    ld [hl+], a
    jr nz, jr_00f_7d9d

    jr nz, jr_00f_7e13

    ld hl, sp-$10

jr_00f_7d9d:
    add sp, $1f
    jr nc, jr_00f_7df1

    jr nz, jr_00f_7e03

    nop
    dec b
    ld l, $e3
    ld hl, $2e07
    ld a, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $10
    ld l, a
    rst $38
    ld b, $1f

jr_00f_7db4:
    rst $38
    db $f4
    add sp, -$18
    ldh a, [$ff58]
    or b
    or b
    nop
    cp $08
    ld [de], a
    ld a, a

jr_00f_7dc1:
    ld hl, sp+$7f
    ldh a, [rIE]
    ret nc

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
    jr nz, jr_00f_7db4

    sbc a

jr_00f_7dd6:
    ldh [$ff62], a
    rst $08
    rst $38
    ld h, b
    rst $18
    ccf
    ret nz

    ldh [$ff1f], a
    jr nz, jr_00f_7dc1

    rst $38
    ld h, b
    rst $18
    jr nc, jr_00f_7dd6

    rst $38
    nop
    ld h, $f3
    rst $38
    inc b
    ei
    db $fc
    inc bc

jr_00f_7df0:
    rlca

jr_00f_7df1:
    ld hl, sp+$0c
    ei
    rst $38
    inc c
    ei
    jr jr_00f_7df0

    rst $38
    nop
    rra
    rrca
    rst $08
    db $10
    rrca
    ld [$a107], sp

jr_00f_7e03:
    ld l, $c3
    ld b, b
    inc d
    nop
    rst $38
    ld a, a
    inc b
    ld a, [$7d5d]
    ld a, $7f
    rla
    rst $38
    cp a

jr_00f_7e13:
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld hl, sp+$00
    rst $00
    ld a, b
    di
    db $fd
    db $fd
    cp $fd
    xor a
    ld [bc], a
    ld [de], a
    add d
    ld a, a
    ld b, e
    dec a
    ld a, $01
    ld sp, hl
    inc bc
    jp nz, $e137

    ld b, e
    xor l
    cp $fa
    db $fc
    xor h
    ld [hl], e
    ld hl, sp-$02
    and b
    jr nz, jr_00f_7e4a

    inc b
    dec sp
    rst $38
    ld d, l
    jr nz, jr_00f_7e44

jr_00f_7e44:
    dec e
    ld a, a
    ld b, $05
    ccf
    rst $38

jr_00f_7e4a:
    inc de
    ld h, b
    inc c
    ld c, $05
    jr z, jr_00f_7e58

    db $e4
    ld [hl+], a
    ld [bc], a
    inc b
    rlca
    ld a, l
    dec b

jr_00f_7e58:
    rlca
    inc b
    inc sp
    rrca
    rrca
    rlca
    cp $03
    inc de
    ld e, a
    ld a, $3f
    dec e
    dec l
    ld e, $17
    rst $28
    inc c
    ld a, [bc]
    inc b
    ld b, $d2
    ld c, e
    ld a, [$fcbc]
    rst $20
    ld e, b
    ld d, h
    cp b
    jp $e113


    ld c, h
    rrca
    inc b
    dec c
    rst $38
    inc bc
    rla
    rrca
    ld l, $1f
    inc a
    rra
    ld e, b
    rst $38
    ccf
    ld a, b
    ccf
    ld a, c
    ccf
    ldh a, [rNR41]
    or b
    cp [hl]
    add b
    dec h
    ld [hl], h
    ld hl, sp+$3c
    ld hl, sp+$1a
    nop
    inc hl
    cp $fd
    db $fc
    dec h
    ld c, a
    ld [bc], a
    nop
    rra
    ld [bc], a
    dec h
    dec de
    db $fd
    dec de
    sub [hl]
    rrca
    ld b, b
    nop
    ld hl, sp+$40
    cp h
    ret c

    set 7, b
    ldh [rSB], a
    ld c, $3d
    call nz, Call_000_0717
    ld c, $fc
    adc b
    pop hl
    adc b
    or h
    ld d, d
    inc bc
    ld [bc], a
    jp Jump_000_0707


    db $10
    ld hl, sp+$50
    ld d, b
    db $fc
    dec c
    inc d
    inc b
    rrca
    add d
    ld a, a
    ld h, e
    inc a
    ccf
    ld bc, $07fe
    dec b
    xor a
    db $fc
    ei
    cp $76
    ld hl, sp-$08
    cp $96
    ld d, a
    rst $38
    ld a, a
    add e
    ld a, h
    db $e3
    ld a, l
    ld a, a
    sbc b
    db $d3
    dec bc
    rrca
    ld [bc], a
    ld b, $42
    ret c

    or b
    inc bc
    ld [hl+], a
    inc bc
    db $10
    rra
    db $eb
    inc c
    ld d, $20
    db $10
    ld c, $02
    db $10
    cp h
    ld a, b
    ld [hl], h
    xor a
    ld hl, sp-$08
    jr nc, jr_00f_7f6c

    ldh [rNR44], a
    ld [hl], b
    ldh a, [$ff5c]
    ld e, a
    rra
    ld a, $3e
    rra
    cpl
    rra
    add hl, bc
    ld [bc], a
    ld bc, $0712
    ld [bc], a
    cp [hl]
    ld b, $36
    rrca
    ccf
    inc b
    ccf
    rra
    ld a, [bc]
    ld [hl], $7f
    nop
    ld bc, $ff36
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_00f_7f6c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
