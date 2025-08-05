; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_1f77


    db $ff

    db $ff, $ff, $ff

    rst $38

RST_08::
    jp Jump_000_1f83


    db $c9

    db $ff, $ff, $ff, $ff

RST_10::
    ret


    db $ff, $ff, $ff

    db $ff, $ff, $ff

    rst $38

RST_18::
    ret


    db $ff, $ff, $ff, $ff, $ff, $ff, $ff

RST_20::
    db $c9, $ff, $ff, $ff, $ff, $ff, $ff, $ff

RST_28::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    rst $38

VBlankInterrupt::
    call VBlankInterruptHandler
    reti


    db $ff, $ff, $ff, $ff

LCDCInterrupt::
    jp LCDCInterruptHandler


    db $ff, $ff, $ff, $ff, $ff

TimerOverflowInterrupt::
    jp TimerOverflowInterruptHandler


    db $ff, $ff, $ff, $ff, $ff

SerialTransferCompleteInterrupt::
    jp SerialTransferCompleteInterruptHandler


    db $ff, $ff, $ff, $ff, $ff

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    ld a, [wMapIndex]
    or a
    rst $08

    db $0d, $3f, $00, $40, $0f, $00, $40, $0f, $00, $40, $0f, $00, $40, $0f, $00, $40
    db $0f, $00, $e8, $3e, $00, $ec, $3e, $00, $f0, $3e, $00, $f0, $3e, $00, $f0, $3e
    db $00, $f0, $3e, $00, $f0, $3e, $00, $0d, $3f, $00, $0d, $3f, $00, $f4, $3e, $00
    db $f8, $3e, $00, $f8, $3e, $00, $fc, $3e, $00, $00, $3f, $00, $00, $3f, $00, $00
    db $3f, $00, $00, $3f, $00, $00, $3f, $00, $00, $3f, $00, $00, $3f, $00, $00, $3f
    db $00, $e8, $3e, $00, $fc, $3e, $00, $fc, $3e, $00, $e8, $3e, $00, $e8, $3e, $00
    db $0d, $3f, $00, $0d, $3f, $00, $e8, $3e, $00, $fc, $3e, $00, $0d, $3f, $00, $08
    db $3f, $00, $0e, $3f, $00, $0e, $3f, $00, $0d, $3f, $00, $0e, $3f, $00

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

Logo::
    nop
    jp Start


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "BOKUJOU GB", $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $39, $39

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $10

HeaderROMSize::
    db $04

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $61

HeaderGlobalChecksum::
    db $6a, $a7

Start::
    nop

Start_::
    nop
    di
    xor a
    ld [$4000], a
    ld a, $01
    ld [$2000], a
    ld sp, $dfef
    ld hl, $ff80
    ld bc, $007f
    call ClearMem
    ld hl, $dd00
    ld bc, $00ff
    call ClearMem
    call DMARelated
    xor a
    ldh [rBGP], a
    xor a
    ldh [rOBP0], a
    xor a
    ldh [rOBP1], a
    call MusicRelated
    ld a, $02
    ldh [$ff8d], a
    call Call_000_2071
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    xor a
    ld [$dd00], a
    call Call_000_223a
    jr nc, jr_000_01ac

    push hl
    push af
    ld l, $4e
    ld h, $77
    ld a, $07
    call Call_000_1f96
    pop af
    pop hl

jr_000_01ac:
    di

Jump_000_01ad:
    di
    xor a
    ldh [rIE], a
    ld sp, $dfef
    ld hl, $ff80
    ld bc, $007f
    call ClearMem
    ld a, $02
    ldh [$ff8d], a
    call Call_000_2071
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $8000
    ld bc, $1fff
    call ClearMem
    ld hl, $c000
    ld bc, $1cff
    call ClearMem
    call DMARelated
    xor a
    ld [$4000], a
    ld a, $20
    ld [wMapIndex], a
    call Call_000_2071
    push hl
    push af
    ld l, $31
    ld h, $23
    ld a, $00
    call Call_000_1f96
    pop af
    pop hl

Jump_000_01f7:
    di
    call Call_000_2071
    push hl
    push af
    ld l, $31
    ld h, $23
    ld a, $00
    call Call_000_1f96
    pop af
    pop hl
    push hl
    push af
    ld l, $bd
    ld h, $77
    ld a, $07
    call Call_000_1f96
    pop af
    pop hl
    xor a
    ldh [$ff97], a
    call Call_000_0258
    push hl
    push af
    ld l, $31
    ld h, $23
    ld a, $00
    call Call_000_1f96
    pop af
    pop hl
    xor a
    ld [wActivateTransitionBetweenMaps], a
    xor a
    ldh [$ff8d], a
    xor a
    ldh [$ff9a], a
    xor a
    ld [$c500], a
    xor a
    ldh [$ff97], a
    push hl
    push af
    ld l, $f0
    ld h, $78
    ld a, $07
    call Call_000_1f96
    pop af
    pop hl
    call Call_000_0061
    call Call_000_208a
    ei

Jump_000_024d:
    ld a, [wActivateTransitionBetweenMaps]
    or a
    or a
    jp z, Jump_000_024d

    jp Jump_000_01f7


Call_000_0258:
    ld a, [wMapIndex]
    or a
    rst $08

JumpTable_3::
    db $15, $6b

    db $1f

JumpTable_4::
    db $01, $40

    db $01

JumpTable_5::
    db $82, $4f

    db $02

JumpTable_6::
    db $01, $40

    db $03

JumpTable_7::
    db $01, $40

    db $04

JumpTable_8::
    db $01, $40

    db $05

JumpTable_9::
    db $85, $4c

    db $06

JumpTable_10::
    db $01, $40

    db $10

JumpTable_11::
    db $01, $40

    db $0e

JumpTable_12::
    db $ea, $54

    db $0e

JumpTable_13::
    db $c6, $5a

    db $0e

    db $60, $61

UD2::
    db $0e, $5a, $66, $0e, $17, $4f, $10, $2d, $4f, $10, $8e, $63, $0f, $01, $40, $1d
    db $50, $43, $1d, $81, $46, $1d, $01, $40, $09, $b4, $46, $09, $63, $4c, $09, $90
    db $4d, $09, $99, $4e, $09, $8b, $50, $09, $8f, $51, $09, $d5, $54, $09, $86, $55
    db $09, $ff, $52, $1d, $ff, $52, $1d, $15, $60, $09, $0c, $62, $09, $63, $57, $1d
    db $b4, $62, $09, $01, $40, $1f, $ff, $52, $1d, $86, $52, $1d, $2d, $6c, $0f, $da
    db $70, $07, $99, $6f, $1d, $01, $40, $02, $00, $74, $1d, $c9, $c9, $f5, $3e, $f0
    db $e0, $47, $f1, $c9

VBlankInterruptHandler::
    push af
    push bc
    push de
    push hl
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ldh a, [$ff8d]
    or a
    jp nz, Jump_000_036a

    inc a
    ldh [$ff8d], a
    call $ff80
    ei
    call $6d42
    ld de, $c500
    call Call_000_20f0
    xor a
    ldh [$ff97], a
    ld [$c500], a
    call SetCameraAndWindow
    call SetCurrentPalettes
    xor a
    ldh [$ff99], a
    call Call_000_2444
    ld a, [$c0a8]
    inc a
    ld [$c0a8], a
    jr nc, jr_000_0326

    ld a, [$c0a9]
    inc a
    ld [$c0a9], a

jr_000_0326:
    call Call_000_0867
    call Call_000_1fac
    ld hl, $c0ba
    inc [hl]
    ld a, [$cb5e]
    ld [$cb5d], a
    ld a, [$c0ba]
    and $10
    jr z, jr_000_0346

    ld a, [$cb5c]
    ld [$cb5d], a
    call CheckTime

jr_000_0346:
    call Call_000_0375
    call Call_000_0a7b
    call Call_000_0bb8
    call Call_000_0ca6
    ldh a, [$ff99]
    ldh [$ff9a], a
    call Call_000_060b
    ldh a, [$ff8a]
    and $0f
    cp $0f
    jp z, Jump_000_01ad

    xor a
    ldh [$ff8d], a

jr_000_0365:
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_036a:
    ldh a, [$ff8d]
    inc a
    ldh [$ff8d], a
    ei
    call Call_000_2444
    jr jr_000_0365

Call_000_0375:
    ld a, [wMapIndex]
    or a
    rst $08

JumpTable_0::
    db $67, $6d

JumpTable_1::
    db $1f, $b2

JumpTable_2::
    db $41, $01

    db $cc, $50, $02, $18, $41, $03, $14, $41, $04, $b8, $40, $05, $34, $4d, $06, $d7
    db $40, $10, $1c, $41, $0e, $ab, $55, $0e, $a2, $5b, $0e, $3e, $62, $0e, $2d, $67
    db $0e, $c9, $4f, $10, $dd, $4f, $10, $74, $64, $0f, $97, $40, $1d, $33, $44, $1d
    db $a3, $47, $1d, $b9, $40, $09, $c6, $46, $09, $75, $4c, $09, $a2, $4d, $09, $ab
    db $4e, $09, $9d, $50, $09, $ea, $51, $09, $5a, $55, $09, $4c, $56, $09, $28, $53
    db $1d, $28, $53, $1d, $a6, $60, $09, $56, $62, $09, $0f, $58, $1d, $d0, $63, $09
    db $af, $40, $1f, $28, $53, $1d, $fe, $52, $1d, $bb, $6c, $0f, $3f, $71, $07, $4d
    db $70, $1d, $64, $41, $02, $ba, $74, $1d, $c9

CheckTime::
    ld a, [wOutsideFarm]
    or a
    ret nz

    ld a, [wTransitionRelated]
    or a
    ret nz

NextTimerSecond::
    ld a, [wTimePaused]
    or a
    ret nz

    ld a, [sTimerSeconds]
    inc a
    ld [sTimerSeconds], a
    cp $1e
    jr nc, NextTimerMinute

    ret


NextTimerMinute::
    xor a
    ld [sTimerSeconds], a
    ld a, [sTimerMinutes]
    inc a
    ld [sTimerMinutes], a
    cp $0f
    jr nc, NextHour

    cp $0e
    ret nz

    ld a, [sCurrentHour]
    cp $05
    ret nz

    ld a, $01
    ld [$ba40], a
    ret


NextHour::
    xor a
    ld [sTimerMinutes], a
    ld a, [sCurrentHour]
    inc a
    ld [sCurrentHour], a
    cp $18
    jr nc, NextDay

    call Call_000_0491
    call Call_000_0491
    ret


NextDay::
    xor a
    ld [sCurrentHour], a
    call Call_000_0491
    ld a, [sCurrentDay]
    inc a
    ld [sCurrentDay], a
    cp $1e
    jr nc, NextSeason

    call Call_000_054a
    call Call_000_05e2
    ret


NextSeason::
    xor a
    ld [sCurrentDay], a
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    call Call_000_054a
    call Call_000_05e2
    ld a, [sCurrentSeason]
    cp $04
    jr nc, NextYear

    ret


NextYear::
    xor a
    ld [sCurrentSeason], a
    call Call_000_05e2
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    cp $63
    ret nz

    ld a, $62
    ld [sCurrentYear], a
    ret


Call_000_0491:
    ld a, [sCurrentHour]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $04ea
    add hl, de
    ld a, [hl+]
    ld [$b916], a
    ld a, [hl+]
    ld [$b917], a
    ld a, [hl+]
    ld [$b918], a
    ld a, [hl+]
    ld [$b919], a
    ld a, [wTimePaused]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [$b916]
    ld c, a
    ld e, $84
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    ld a, [$b918]
    ld c, a
    ld e, $86
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    ld a, [$b919]
    ld c, a
    ld e, $87
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    ld a, $01
    ld [$cb75], a
    ret


    db $1e, $3e, $af, $0a, $1e, $3e, $af, $0b, $1e, $3e, $af, $0c, $1e, $3e, $af, $0d
    db $1e, $3e, $af, $0e, $1e, $3e, $af, $0f, $1e, $3e, $af, $1a, $1e, $3e, $af, $1b
    db $1e, $3e, $af, $1c, $1e, $3e, $af, $1d, $1e, $3e, $0b, $0a, $1e, $3e, $0b, $0b
    db $4b, $3e, $af, $0a, $4b, $3e, $af, $0b, $4b, $3e, $af, $0c, $4b, $3e, $af, $0d
    db $4b, $3e, $af, $0e, $4b, $3e, $af, $0f, $4b, $3e, $af, $1a, $4b, $3e, $af, $1b
    db $4b, $3e, $af, $1c, $4b, $3e, $af, $1d, $4b, $3e, $0b, $0a, $4b, $3e, $0b, $0b

Call_000_054a:
    ld a, [sCurrentDay]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $05a6
    add hl, de
    ld a, [hl+]
    ld [$b914], a
    ld a, [hl+]
    ld [$b915], a
    ld a, [sCurrentSeason]
    ld c, $1e
    call Call_000_071e
    ld a, [sCurrentDay]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $07
    call Call_000_06ce
    ld hl, $059f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$b91a], a
    ld a, [wTimePaused]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [$b91a]
    ld c, a
    ld e, $80
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    ld a, $01
    ld [$cb75], a
    ret


    db $8c, $8d, $8e, $8f, $9a, $9b, $9c

    db $0a, $0b, $0a, $0c, $0a, $0d, $0a, $0e, $0a, $0f, $0a, $1a, $0a, $1b, $0a, $1c
    db $0a, $1d, $0b, $0a, $0b, $0b, $0b, $0c, $0b, $0d, $0b, $0e, $0b, $0f, $0b, $1a
    db $0b, $1b, $0b, $1c, $0b, $1d, $0c, $0a, $0c, $0b, $0c, $0c, $0c, $0d, $0c, $0e
    db $0c, $0f, $0c, $1a, $0c, $1b, $0c, $1c, $0c, $1d, $0d, $0a

Call_000_05e2:
    ld a, [sCurrentSeason]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $05f6
    add hl, de
    ld a, [hl+]
    ld [$b912], a
    ld a, [hl+]
    ld [$b913], a
    ret


    db $50, $82, $40, $32, $00, $11, $52, $71, $f5, $c5, $d5, $e5, $cd, $0a, $06, $e1
    db $d1, $c1, $f1, $c9, $c9

Call_000_060b:
    ldh a, [$ff99]
    ld c, a
    ld b, $00
    ld hl, $c000
    add hl, bc
    sub $a0
    ret nc

    cpl
    inc a
    ld b, a
    xor a

jr_000_061b:
    ld [hl+], a
    dec b
    jr nz, jr_000_061b

    ret


    db $21, $a4, $ff, $01, $14, $00, $c3, $99, $20

Call_000_0629:
    ld hl, $c500
    ldh a, [$ff97]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ret


    db $11, $00, $c5, $f0, $97, $f7, $c9, $cb, $fb, $18, $00

Call_000_0640:
    call Call_000_0629
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, e
    set 6, a
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld [hl], $00
    ldh a, [$ff97]
    add $04
    ldh [$ff97], a
    ret


Call_000_0656:
    push de
    ld d, a
    ld e, $01
    ld b, h
    ld c, l
    call Call_000_0640
    pop de
    ret


    ld a, [$4000]
    push af
    ld a, d
    ld [$2100], a
    call Call_000_0699
    pop af
    ld [$2100], a
    ret


    db $fa, $00, $40, $f5, $7a, $ea, $00, $21, $cd, $81, $06, $f1, $ea, $00, $21, $c9
    db $79, $44, $4d, $26, $00, $6f, $29, $29, $29, $29, $09, $e5, $26, $00, $6b, $29
    db $29, $29, $29, $11, $00, $90, $18, $16

Call_000_0699:
    ld a, c
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000
    add hl, de
    ld d, h
    ld e, l
    call Call_000_0629
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    pop de
    ld b, $10

jr_000_06bf:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_06bf

    ld [hl], $00
    ldh a, [$ff97]
    add $13
    ldh [$ff97], a
    ret


Call_000_06ce:
    push de
    ld d, $10
    ld e, a
    xor a

jr_000_06d3:
    add hl, hl
    rla
    jr c, jr_000_06da

    cp e
    jr c, jr_000_06dc

jr_000_06da:
    sub e
    inc l

jr_000_06dc:
    dec d
    jr nz, jr_000_06d3

    pop de
    ret


    db $d5, $16, $08, $5f, $af, $29, $17, $38, $03, $bb, $38, $02, $93, $2c, $15, $20
    db $f4, $d1, $c9, $d5, $16, $18, $5f, $af, $29, $47, $79, $89, $4f, $78, $17, $38
    db $03, $bb, $38, $02, $93, $2c, $15, $20, $ef, $d1, $c9, $11, $00, $00, $5f, $d6
    db $0a, $38, $03, $14, $18, $f8, $7b, $e0, $a4, $7a, $e0, $a5, $c9

Call_000_071e:
    push de
    ld hl, $0000
    ld b, l
    ld d, $08

jr_000_0725:
    rrca
    jr nc, jr_000_0729

    add hl, bc

jr_000_0729:
    sla c
    rl b
    dec d
    jr nz, jr_000_0725

    pop de
    ret


SetCameraAndWindow::
    ldh a, [hCameraY]
    ldh [rSCY], a
    ldh a, [hCameraX]
    ldh [rSCX], a
    ldh a, [hWindowY]
    ldh [rWY], a
    ldh a, [hWindowX]
    ldh [rWX], a
    ret


Call_000_0743:
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]
    ld l, c
    ld h, b
    ret


SetCurrentPalettes::
    ld hl, wPaletteRelated
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl]
    ldh [rOBP1], a
    ret


Call_000_0767:
jr_000_0767:
    call Call_000_076e
    dec c
    jr nz, jr_000_0767

    ret


Call_000_076e:
    push bc
    push hl

jr_000_0770:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_0770

    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    ret


    db $7d, $e0, $a0, $7c, $e0, $a1, $cd, $29, $06, $f0, $a1, $22, $f0, $a0, $22, $78
    db $22, $c5, $1a, $13, $22, $05, $20, $fa, $c1, $f0, $97, $80, $c6, $03, $e0, $97
    db $f0, $a0, $c6, $20, $e0, $a0, $f0, $a1, $ce, $00, $e0, $a1, $0d, $20, $da, $36
    db $00, $c9, $fa, $00, $40, $f5, $f0, $a4, $ea, $00, $21, $cd, $67, $07, $f1, $ea
    db $00, $21, $c9, $fa, $00, $40, $f5, $f0, $a4, $ea, $00, $21, $cd, $7d, $07, $f1
    db $ea, $00, $21, $c9, $1a, $13, $fe, $ff, $c8, $fe, $45, $28, $07, $fe, $43, $28
    db $03, $22, $18, $f0, $01, $e0, $ff, $09, $77, $01, $20, $00, $09, $18, $e5

Call_000_07ec:
    push hl
    push de
    call Call_000_081a
    pop de
    pop hl
    push hl
    call Call_000_0629
    ld a, b
    pop bc
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    add $03
    ld b, a

jr_000_0801:
    ld a, [de]
    cp $ff
    jr z, jr_000_0812

    inc de
    cp $45
    jr z, jr_000_0801

    cp $43
    jr z, jr_000_0801

    ld [hl+], a
    jr jr_000_0801

jr_000_0812:
    ld [hl], $00
    ldh a, [$ff97]
    add b
    ldh [$ff97], a
    ret


Call_000_081a:
    ld bc, $ffe0
    add hl, bc
    ld b, $00

jr_000_0820:
    ld a, [de]
    cp $ff
    ret z

    inc de
    cp $45
    jr z, jr_000_0831

    cp $43
    jr z, jr_000_0831

    inc b
    inc hl
    jr jr_000_0820

jr_000_0831:
    push hl
    push bc
    call Call_000_0656
    pop bc
    pop hl
    jr jr_000_0820

    db $fa, $00, $40, $f5, $78, $ea, $00, $21, $4e, $f1, $ea, $00, $21, $c9, $7e, $fe
    db $ff, $c8, $e5, $2a, $4f, $2a, $47, $c5, $2a, $4f, $2a, $47, $c5, $2a, $4f, $2a
    db $47, $2a, $d1, $e1, $cd, $1f, $21, $e1, $3e, $07, $ff, $18, $e1

Call_000_0867:
    ldh a, [$ff9c]
    sla a
    sla a
    ld b, a
    ldh a, [$ff9c]
    add b
    add $11
    ldh [$ff9c], a
    ret


Call_000_0876:
    ld hl, $089f
    ldh a, [$ff9c]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    push af
    ld a, [$c0a8]
    or $01
    ld b, a
    ldh a, [$ff9c]
    adc b
    ldh [$ff9c], a
    pop af
    ret


Call_000_0890:
    ld hl, $089f
    ldh a, [$ff9d]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ldh [$ff9d], a
    ret


    db $27, $7e, $db, $cc, $30, $14, $4f, $9c, $88, $d2, $90, $72, $29, $c1, $3e, $7a
    db $82, $2c, $44, $52, $60, $c9, $89, $05, $13, $67, $0a, $b2, $e2, $c7, $68, $dd
    db $65, $6d, $c2, $66, $83, $97, $53, $54, $32, $a7, $f0, $e0, $d1, $c8, $08, $76
    db $24, $f6, $a3, $b7, $57, $62, $75, $fb, $5c, $81, $b6, $07, $d6, $b5, $da, $a9
    db $ce, $dc, $39, $71, $cd, $77, $59, $ac, $80, $87, $49, $91, $84, $5a, $e4, $22
    db $d3, $1d, $4d, $c3, $12, $01, $f8, $9b, $8e, $eb, $8d, $51, $61, $a0, $bb, $e1
    db $1a, $cb, $64, $c5, $d8, $6b, $5f, $5b, $ca, $a5, $02, $18, $1f, $fd, $92, $9a
    db $c0, $2d, $3f, $74, $2a, $26, $3a, $af, $0c, $79, $f4, $4c, $00, $47, $7f, $17
    db $ef, $f7, $b4, $5d, $b9, $25, $9f, $4a, $0f, $bc, $6e, $98, $ed, $56, $36, $ec
    db $41, $23, $ba, $e8, $2b, $ea, $ee, $9d, $0d, $1e, $0e, $9e, $fe, $4e, $78, $c6
    db $8f, $ad, $31, $2e, $1b, $2f, $f2, $f5, $f1, $86, $8a, $37, $06, $4b, $94, $0b
    db $e6, $de, $73, $70, $ff, $a1, $10, $38, $e9, $96, $35, $55, $6a, $63, $fc, $7c
    db $a8, $e5, $20, $8c, $fa, $b0, $bd, $58, $11, $48, $a2, $45, $28, $d9, $40, $15
    db $b3, $a4, $19, $e3, $5e, $e7, $43, $be, $04, $85, $d7, $f3, $8b, $6c, $3b, $16
    db $a6, $d5, $cf, $3c, $21, $ab, $33, $93, $7b, $03, $46, $b8, $34, $c4, $42, $b1
    db $1c, $ae, $50, $f9, $aa, $6f, $3d, $d0, $69, $99, $bf, $d4, $7d, $df, $95, $09
    db $e0, $a4, $af, $e0, $a6, $cb, $7c, $28, $0a, $3c, $e0, $a6, $7d, $2f, $6f, $7c
    db $2f, $67, $23, $5d, $54, $af, $e0, $a5, $4f, $67, $6f, $f0, $a4, $06, $08, $0f
    db $30, $0a, $19, $e0, $a4, $f0, $a5, $89, $e0, $a5, $f0, $a4, $cb, $23, $cb, $12
    db $cb, $11, $05, $20, $ea, $f0, $a5, $4f, $c9, $f0, $a6, $b7, $28, $13, $7d, $2f
    db $6f, $7c, $2f, $67, $79, $2f, $4f, $3e, $01, $85, $6f, $af, $8c, $67, $af, $89
    db $4f, $c9, $e5, $d5, $7a, $cd, $9f, $09, $7d, $e0, $a6, $7c, $e0, $a7, $79, $e0
    db $a8, $d1, $e1, $7b, $cd, $9f, $09, $f0, $a6, $84, $67, $f0, $a7, $89, $4f, $f0
    db $a8, $ce, $00, $47, $c9

Call_000_0a14:
    ld a, c
    add [hl]
    ld [hl+], a
    inc bc
    ld a, b
    bit 7, a
    jr nz, jr_000_0a22

    adc [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


jr_000_0a22:
    adc [hl]
    ld [hl+], a
    ret c

    dec [hl]
    ret


Call_000_0a27:
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    ret


    db $3e, $0a, $ea, $ff, $1f, $3e, $01, $ea, $00, $60, $3e, $08, $ea, $00, $40, $af
    db $ea, $00, $a0, $00, $00, $00, $00, $3e, $09, $ea, $00, $40, $af, $ea, $00, $a0
    db $00, $00, $00, $00, $3e, $0a, $ea, $00, $40, $af, $ea, $00, $a0, $00, $00, $00
    db $00, $3e, $0b, $ea, $00, $40, $af, $ea, $00, $a0, $00, $00, $00, $00, $3e, $0c
    db $ea, $00, $40, $3e, $00, $ea, $00, $a0, $af, $ea, $00, $40, $c9

Call_000_0a7b:
    ld a, $0a
    ld [$1fff], a
    xor a
    ld [$6000], a
    inc a
    ld [$6000], a
    ld a, $08
    ld [$4000], a
    ld a, [$a000]
    and $3f
    ld [$c905], a
    nop
    nop
    nop
    nop
    ld a, $09
    ld [$4000], a
    ld a, [$a000]
    and $3f
    ld [$c904], a
    nop
    nop
    nop
    nop
    ld a, $0a
    ld [$4000], a
    ld a, [$a000]
    and $1f
    ld [$c903], a
    nop
    nop
    nop
    nop
    ld a, $0b
    ld [$4000], a
    ld a, [$a000]
    ld [$c902], a
    xor a
    ld [$4000], a
    ret


    db $3e, $0c, $ea, $00, $40, $3e, $40, $ea, $00, $a0, $af, $ea, $00, $40, $c9, $3e
    db $0c, $ea, $00, $40, $3e, $00, $ea, $00, $a0, $af, $ea, $00, $40, $c9

Call_000_0ae9:
    ld a, [$c902]
    ld [$b886], a
    ld a, [$c903]
    ld [$b887], a
    ld a, [$c904]
    ld [$b888], a
    ld a, [$c905]
    ld [$b889], a
    ret


Call_000_0b02:
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld [$cb1c], a
    ld [$c90d], a
    ld [$c912], a
    ld [$c90e], a
    ld [$c910], a
    ld [$c90f], a
    ld [$c911], a
    ld [wTimePaused], a
    ld [$cb57], a
    ld [$b88c], a
    ld a, $ff
    ld [$cb52], a
    ld a, $00
    ld [$cb53], a
    ld [$cb54], a
    ld a, $00
    ld [$cb55], a
    ld [$cb5f], a
    ret


    db $6c, $6c, $6c, $6c, $6c, $1c, $1c, $1c, $1c, $1c, $14, $14, $14, $14, $14, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $1c, $1c, $1c, $1c, $1c, $08, $08, $08, $08, $08, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $2c, $2c, $2c, $2c, $2c, $18, $18, $18, $18, $18, $04, $04, $04, $04, $04, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $bd, $bd, $bd, $bd, $bd, $68, $68, $68, $68, $68, $14, $14, $14, $14, $14, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Call_000_0bb8:
    ld a, [$dd00]
    ld b, a
    ld a, [wTransitionRelated]
    or a
    ret z

    bit 0, b
    jr z, jr_000_0bce

    cp $1d
    jr nz, jr_000_0bce

    ld a, $0d
    ld [wTransitionRelated], a

jr_000_0bce:
    ld a, [wMapIndex]
    cp $01
    jr nz, jr_000_0bf6

    ld a, [sCurrentHour]
    cp $06
    jr c, jr_000_0be3

    ld a, [sCurrentHour]
    cp $12
    jr c, jr_000_0bf6

jr_000_0be3:
    ld hl, $0b9a
    ld a, [wTransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, wPaletteRelated
    ld [hl], a
    jr jr_000_0c07

jr_000_0bf6:
    ld hl, $0b40
    ld a, [wTransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, wPaletteRelated
    ld [hl], a

jr_000_0c07:
    ld hl, $0b5e
    ld a, [wTransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $0b7c
    ld a, [wTransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, wTransitionRelated
    dec [hl]
    ret


    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14
    db $14, $14, $14, $14, $1c, $1c, $1c, $1c, $1c, $6c, $6c, $6c, $6c, $6c

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04
    db $04, $04, $04, $04, $08, $08, $08, $08, $08, $1c, $1c, $1c, $1c, $1c

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04
    db $04, $04, $04, $04, $18, $18, $18, $18, $18, $2c, $2c, $2c, $2c, $2c

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $14
    db $14, $14, $14, $14, $68, $68, $68, $68, $68, $bd, $bd, $bd, $bd, $bd

Call_000_0ca6:
    ld a, [$dd00]
    ld b, a
    ld a, [wTransitionRelated2]
    or a
    ret z

    bit 0, b
    jr z, jr_000_0cbc

    cp $0f
    jr nz, jr_000_0cbc

    ld a, $07
    ld [wTransitionRelated2], a

jr_000_0cbc:
    cp $01
    jr nz, jr_000_0ccb

SetNextMapIndex::
    ld a, [wNextMapIndex]
    ld [wMapIndex], a
    ld a, $01
    ld [wActivateTransitionBetweenMaps], a

jr_000_0ccb:
    ld a, [wMapIndex]
    cp $01
    jr nz, jr_000_0cf3

    ld a, [sCurrentHour]
    cp $06
    jr c, jr_000_0ce0

    ld a, [sCurrentHour]
    cp $12
    jr c, jr_000_0cf3

jr_000_0ce0:
    ld hl, $0c88
    ld a, [wTransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, wPaletteRelated
    ld [hl], a
    jr jr_000_0d04

jr_000_0cf3:
    ld hl, $0c2e
    ld a, [wTransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, wPaletteRelated
    ld [hl], a

jr_000_0d04:
    ld hl, $0c4c
    ld a, [wTransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $0c6a
    ld a, [wTransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, wTransitionRelated2
    dec [hl]
    ret


Call_000_0d2b:
    ldh a, [rLY]
    cp $66
    jr z, jr_000_0d4b

    cp $67
    jr z, jr_000_0d4b

    cp $68
    jr z, jr_000_0d51

    cp $69
    jr z, jr_000_0d57

    cp $6a
    jr z, jr_000_0d57

    cp $6b
    jr z, jr_000_0d5d

    cp $8f
    jr z, jr_000_0d57

    jr jr_000_0d63

jr_000_0d4b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0d4b

jr_000_0d51:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0d51

jr_000_0d57:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0d57

jr_000_0d5d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0d5d

jr_000_0d63:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0d63

    ret


NewGame::
    di
    call $0a2e
    di
    ld hl, $a000
    ld bc, $1fff
    call ClearMem
    ld hl, $75d5
    ld a, $03
    call Call_000_1f96
    ld a, $ff
    ld [$cb52], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    call Call_000_134b
    ld a, $01
    ld [wOutsideFarm], a
    ld [$c910], a
    ld a, $06
    ld [sCurrentHour], a
    ld a, $ff
    ld [sCurrentDay], a
    ld a, $80
    ld [$b892], a
    ld [$b89b], a
    ld a, $ff
    ld [$b8a1], a
    ld [$b8a2], a
    ld [$ba4c], a
    ld [$ba4d], a
    ld a, $0a
    ld [$b8c5], a
    ld [$b8c6], a
    ld [$b8c7], a
    ld [$b8ca], a
    ld [$b8cb], a
    xor a
    ld [$b8cc], a
    ld a, $80
    ld [$b8eb], a
    ld a, $64
    ld [$b8ed], a
    ld [$b8ee], a
    ld a, $01
    ld [$b906], a
    xor a
    ld [$b907], a
    ld [$b904], a
    ld a, $ff
    ld [$b8f8], a
    ld [$b8f9], a
    ld a, $ff
    ld [$b8fa], a
    ld a, $02
    ld [$b8fb], a
    ld a, $00
    ld [$b901], a
    ld a, $16
    ld [$b902], a
    ld a, $00
    ld [$b903], a
    ld a, $f4
    ld [sCurrentMoneyL], a
    ld a, $01
    ld [sCurrentMoneyM], a
    xor a
    ld [sCurrentMoneyH], a
    call CheckCurrentMoney
    call Call_000_0491
    call Call_000_054a
    call Call_000_05e2
    call Call_000_104c
    call Call_000_0fe5
    ld hl, $4501
    ld a, $08
    call Call_000_1f96
    call $1029
    ld a, $00
    ld [$b89f], a
    ld [sCurrentWeather], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af
    ld [$b926], a
    ld [$b927], a
    ld a, $02
    ld [$ba43], a
    ret


Call_000_0e5a:
    di
    xor a
    ld [$cb92], a
    call CheckCurrentMoney
    call Call_000_0491
    call Call_000_054a
    call Call_000_05e2
    call Call_000_104c
    call Call_000_0fe5
    ld hl, $4501
    ld a, $08
    call Call_000_1f96
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld [$cb1c], a
    ld [$c90d], a
    ld [$c912], a
    ld [$c90e], a
    ld [$c910], a
    ld [$c90f], a
    ld [$c911], a
    ld [wTimePaused], a
    ld [$cb57], a
    ld a, $ff
    ld [$cb52], a
    ld [$cb4d], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld [$cb5f], a
    ld a, $01
    ld [wOutsideFarm], a
    ld a, [sCurrentDay]
    cp $ff
    ret nz

    xor a
    ld [sCurrentDay], a
    call Call_000_054a
    ret


Call_000_0ec6:
    ld a, [$c912]
    or a
    ret z

    dec a
    ld [$c912], a
    cp $26
    jr z, jr_000_0ed8

    or a
    jr z, jr_000_0ef3

jr_000_0ed6:
    pop hl
    ret


jr_000_0ed8:
    ld a, [$c602]
    cp $5f
    jr z, jr_000_0eed

    cp $60
    jr z, jr_000_0eed

    cp $61
    jr z, jr_000_0eed

    cp $62
    jr z, jr_000_0eed

    pop hl
    ret


jr_000_0eed:
    ld a, $1c
    call $16e3
    ret


jr_000_0ef3:
    ld a, [$cb91]
    or a
    jr z, jr_000_0ed6

    ld [$c912], a
    xor a
    ld [$cb91], a
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_000_0f1b

    cp $6e
    jr z, jr_000_0f22

    cp $50
    jr z, jr_000_0f29

    cp $a0
    jr z, jr_000_0f30

jr_000_0f1b:
    ld a, $8a
    call Call_000_152f
    pop hl
    ret


jr_000_0f22:
    ld a, $8b
    call Call_000_152f
    pop hl
    ret


jr_000_0f29:
    ld a, $8c
    call Call_000_152f
    pop hl
    ret


jr_000_0f30:
    ld a, $8d
    call Call_000_152f
    pop hl
    ret


Call_000_0f37:
    ld hl, $69f0
    ld a, $01
    call Call_000_1f96
    ret


Call_000_0f40:
    call MusicRelated
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_000_0f75

    cp $03
    jr z, jr_000_0f7b

    ld a, [sCurrentSeason]
    cp $00
    jr z, jr_000_0f63

    cp $01
    jr z, jr_000_0f69

    cp $02
    jr z, jr_000_0f6f

    ld a, $13
    call Call_000_23cf
    ret


jr_000_0f63:
    ld a, $08
    call Call_000_23d2
    ret


jr_000_0f69:
    ld a, $0b
    call Call_000_23cf
    ret


jr_000_0f6f:
    ld a, $0f
    call Call_000_23cf
    ret


jr_000_0f75:
    ld a, $40
    call Call_000_23d8
    ret


jr_000_0f7b:
    ld a, $41
    call Call_000_23d8
    ret


Call_000_0f81:
    xor a
    ld [$cb2f], a
    ld [$cb30], a
    ld [$cb31], a
    ld [$cb32], a
    ld [$cb33], a
    ld [$cb34], a
    ld [$cb37], a
    ld [$cb38], a
    ld [$cb39], a
    ld [$cb3a], a
    ld [$cb3b], a
    ld [$cb3c], a
    ld [$cb3d], a
    ld [$cb3e], a
    ld [$cb3f], a
    ld [$cb40], a
    ld [$cb41], a
    ld [$cb42], a
    ret


Call_000_0fb9:
    ld b, a
    and $80
    jr nz, jr_000_0fce

    ld a, [$b8f2]
    add b
    jr c, jr_000_0fc8

    ld [$b8f2], a
    ret


jr_000_0fc8:
    ld a, $ff
    ld [$b8f2], a
    ret


jr_000_0fce:
    ld a, b
    bit 7, a
    jr z, jr_000_0fd5

    cpl
    inc a

jr_000_0fd5:
    ld b, a
    ld a, [$b8f2]
    sub b
    jr c, jr_000_0fe0

    ld [$b8f2], a
    ret


jr_000_0fe0:
    xor a
    ld [$b8f2], a
    ret


Call_000_0fe5:
    ld a, [$b939]
    cp $04
    jr nc, jr_000_0ff9

    cp $03
    jr c, jr_000_1003

    ld a, [$b938]
    cp $e8
    jr nc, jr_000_0ff9

    jr jr_000_1003

jr_000_0ff9:
    ld a, $e7
    ld [$b938], a
    ld a, $03
    ld [$b939], a

jr_000_1003:
    xor a
    ld [wCurrentMoneyH], a
    ld a, [$b938]
    ld [wCurrentMoneyL], a
    ld a, [$b939]
    ld [wCurrentMoneyM], a
    call Call_000_3179
    ld a, [$cccf]
    ld [$b92d], a
    ld a, [$ccd0]
    ld [$b92e], a
    ld a, [$ccd1]
    ld [$b92f], a
    ret


    db $fa, $0a, $b9, $fe, $00, $28, $10, $3e, $34, $ea, $44, $ba, $3e, $13, $ea, $45
    db $ba, $3e, $01, $ea, $46, $ba, $c9, $3e, $af, $ea, $44, $ba, $ea, $45, $ba, $ea
    db $46, $ba, $c9

Call_000_104c:
    ld a, [$b93b]
    cp $ff
    jr z, jr_000_1073

    ld a, [$b93b]
    cp $04
    jr nc, jr_000_1067

    cp $03
    jr c, jr_000_107a

    ld a, [$b93a]
    cp $e8
    jr nc, jr_000_1067

    jr jr_000_107a

jr_000_1067:
    ld a, $e7
    ld [$b93a], a
    ld a, $03
    ld [$b93b], a
    jr jr_000_107a

jr_000_1073:
    xor a
    ld [$b93a], a
    ld [$b93b], a

jr_000_107a:
    xor a
    ld [wCurrentMoneyH], a
    ld a, [$b93a]
    ld [wCurrentMoneyL], a
    ld a, [$b93b]
    ld [wCurrentMoneyM], a
    call Call_000_3179
    ld a, [$cccf]
    ld [$b930], a
    ld a, [$ccd0]
    ld [$b931], a
    ld a, [$ccd1]
    ld [$b932], a
    ret


CheckCurrentMoney::
    ld a, [sCurrentMoneyH]
    cp $ff
    jr z, ResetMoney

    ld a, [sCurrentMoneyH]
    cp $02
    jr nc, LimitMoney

    cp $01
    jr c, jr_000_10e1

    ld a, [sCurrentMoneyM]
    cp $87
    jr nc, LimitMoney

    cp $86
    jr c, jr_000_10e1

    ld a, [sCurrentMoneyL]
    cp $a0
    jr nc, LimitMoney

    jr jr_000_10e1

LimitMoney::
    ld a, $9f
    ld [sCurrentMoneyL], a
    ld a, $86
    ld [sCurrentMoneyM], a
    ld a, $01
    ld [sCurrentMoneyH], a
    jr jr_000_10e1

ResetMoney::
    xor a
    ld [sCurrentMoneyL], a
    ld [sCurrentMoneyM], a
    ld [sCurrentMoneyH], a

jr_000_10e1:
    ld a, [sCurrentMoneyH]
    ld [wCurrentMoneyH], a
    ld a, [sCurrentMoneyM]
    ld [wCurrentMoneyM], a
    ld a, [sCurrentMoneyL]
    ld [wCurrentMoneyL], a
    call Call_000_3179
    ld a, [$cccd]
    ld [$b928], a
    ld a, [$ccce]
    ld [$b929], a
    ld a, [$cccf]
    ld [$b92a], a
    ld a, [$ccd0]
    ld [$b92b], a
    ld a, [$ccd1]
    ld [$b92c], a
    ret


Call_000_1115:
    ld a, [$b93d]
    ld l, a
    ld a, [$b93e]
    ld h, a
    call Call_000_316d
    ld a, [$cccd]
    ld [$b933], a
    ld a, [$ccce]
    ld [$b934], a
    ld a, [$cccf]
    ld [$b935], a
    ld a, [$ccd0]
    ld [$b936], a
    ld a, [$ccd1]
    ld [$b937], a
    ret


Call_000_113f:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld a, [$b911]
    cp $00
    jr z, jr_000_1159

    cp $01
    jr z, jr_000_115e

    ld de, $6881
    jr jr_000_1163

jr_000_1159:
    ld de, $6929
    jr jr_000_1163

jr_000_115e:
    ld de, $68d5
    jr jr_000_1163

jr_000_1163:
    ld a, $0d
    ld c, $80
    call Call_000_071e
    ld bc, $a000
    add hl, bc
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, $06

jr_000_1178:
    ld b, $0e
    push hl

jr_000_117b:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_117b

    pop hl
    push de
    ld de, $0080
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1178

    ldh a, [$ffa4]
    ld [$2100], a
    ret


    db $fa, $0b, $b9, $b7, $c8, $fa, $e0, $a0, $fe, $0e, $c0, $21, $e0, $a0, $1e, $2c
    db $af, $22, $22, $01, $7e, $00, $09, $1d, $20, $f6, $c9, $e5, $d5, $21, $c2, $cc
    db $79, $86, $22, $03, $78, $cb, $7f, $20, $07, $8e, $22, $30, $08, $34, $18, $05
    db $8e, $22, $38, $01, $35, $21, $e2, $cb, $01, $01, $00, $cd, $27, $0a, $fa, $c4
    db $cc, $fe, $02, $30, $18, $fe, $01, $38, $23, $fa, $c3, $cc, $fe, $87, $30, $0d
    db $fe, $86, $38, $18, $fa, $c2, $cc, $fe, $a0, $30, $02, $18, $0f, $3e, $9f, $ea
    db $c2, $cc, $3e, $86, $ea, $c3, $cc, $3e, $01, $ea, $c4, $cc, $21, $3f, $b9, $cd
    db $c2, $1e, $21, $35, $ba, $cd, $c2, $1e, $d1, $e1, $c9

Call_000_120c:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld a, [$b911]
    cp $00
    jr z, jr_000_122f

    cp $01
    jr z, jr_000_123d

    ld hl, $6fa9
    ld de, $d800
    ld bc, $0154
    call Call_000_2116
    jr jr_000_1249

jr_000_122f:
    ld hl, $7251
    ld de, $d800
    ld bc, $0154
    call Call_000_2116
    jr jr_000_1249

jr_000_123d:
    ld hl, $70fd
    ld de, $d800
    ld bc, $0154
    call Call_000_2116

jr_000_1249:
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Call_000_124f:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld hl, $73a5
    ld de, $d800
    ld bc, $0198
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Call_000_126b:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld hl, $753d
    ld de, $d800
    ld bc, $0154
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Call_000_1287:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld hl, $76b3
    ld de, $d800
    ld bc, $0154
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7910
    ld de, $d800
    ld bc, $0176
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7008
    ld de, $d800
    ld bc, $01fe
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7206
    ld de, $d800
    ld bc, $0132
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7338
    ld de, $d800
    ld bc, $01dc
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7514
    ld de, $d800
    ld bc, $01fe
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7712
    ld de, $d800
    ld bc, $01fe
    call Call_000_2116
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Call_000_134b:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld hl, $a000
    ld de, $5001
    ld b, $31

jr_000_135d:
    push hl
    ld c, $10

jr_000_1360:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_1360

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_000_135d

    ld hl, $a020
    ld de, $5621
    ld b, $31

jr_000_137d:
    push hl
    ld c, $10

jr_000_1380:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_1380

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_000_137d

    ld hl, $a040
    ld de, $5c41
    ld b, $31

jr_000_139d:
    push hl
    ld c, $10

jr_000_13a0:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_13a0

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_000_139d

    ld hl, $a060
    ld de, $6261
    ld b, $31

jr_000_13bd:
    push hl
    ld c, $10

jr_000_13c0:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_13c0

    pop hl
    ld a, $80
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_000_13bd

    ldh a, [$ffa4]
    ld [$2100], a
    ret


Call_000_13db:
    push hl
    push de
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_13fc

    cp $40
    jr z, jr_000_1401

    jr jr_000_1406

jr_000_13fc:
    ld bc, $694d
    jr jr_000_1409

jr_000_1401:
    ld bc, $6ba9
    jr jr_000_1409

jr_000_1406:
    ld bc, $697d

jr_000_1409:
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ldh a, [$ffa4]
    ld [$2100], a
    pop bc
    pop de
    pop hl
    ret


Call_000_1425:
    push hl
    push de
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_1446

    cp $40
    jr z, jr_000_144b

    jr jr_000_1450

jr_000_1446:
    ld bc, $694d
    jr jr_000_1453

jr_000_144b:
    ld bc, $6ba9
    jr jr_000_1453

jr_000_1450:
    ld bc, $697d

jr_000_1453:
    add hl, bc
    ld a, [$cb1d]
    ld e, a
    ld a, [$cb1e]
    ld d, a
    push de

jr_000_145d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_145d

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_000_1470:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1470

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    ld de, $0040
    add hl, de
    ld a, h
    cp $9c
    jr nz, jr_000_1488

    sub $04
    ld h, a

jr_000_1488:
    ld a, l
    ld [$cb1d], a
    ld a, h
    ld [$cb1e], a
    ldh a, [$ffa4]
    ld [$2100], a
    pop bc
    pop de
    pop hl
    ret


Call_000_1499:
    push hl
    push de
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $11
    ld [$2100], a
    ld a, b
    and $c0
    cp $80
    jr z, jr_000_14ba

    cp $40
    jr z, jr_000_14bf

    jr jr_000_14c4

jr_000_14ba:
    ld bc, $694d
    jr jr_000_14c7

jr_000_14bf:
    ld bc, $6ba9
    jr jr_000_14c7

jr_000_14c4:
    ld bc, $697d

jr_000_14c7:
    add hl, bc
    ld a, [$cb1d]
    ld e, a
    ld a, [$cb1e]
    ld d, a
    push de

jr_000_14d1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14d1

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_000_14e4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_14e4

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop hl
    ld a, l
    ld b, a
    inc a
    inc a
    and $1f
    ld c, a
    ld a, b
    and $e0
    or c
    ld [$cb1d], a
    ld a, h
    ld [$cb1e], a
    ldh a, [$ffa4]
    ld [$2100], a
    pop bc
    pop de
    pop hl
    ret


Call_000_150b:
    ld hl, $5192
    ld a, $05
    call Call_000_1f96
    ret


Call_000_1514:
    ld hl, $5270
    ld a, $05
    call Call_000_1f96
    ret


Call_000_151d:
    ld hl, $53c0
    ld a, $05
    call Call_000_1f96
    ret


Call_000_1526:
    ld hl, $54ab
    ld a, $05
    call Call_000_1f96
    ret


Call_000_152f:
    ld hl, $c602
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ret


Call_000_153c:
    ld b, a
    ld a, [$c800]
    cp $00
    jr z, jr_000_155f

    ld a, b
    ld hl, $c802
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c810], a
    ld a, $01
    ld [$c80e], a
    ld a, $0b
    ld [$c801], a
    ret


jr_000_155f:
    ld a, b
    ld hl, $c802
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c810], a
    ld a, $01
    ld [$c800], a
    ld a, $01
    ld [$c80e], a
    ld a, $0b
    ld [$c801], a
    ret


Call_000_157d:
    sub $04
    ld b, a
    ld a, [$c820]
    cp $00
    jr z, jr_000_15a2

    ld a, b
    ld hl, $c822
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c830], a
    ld a, $01
    ld [$c82e], a
    ld a, $09
    ld [$c821], a
    ret


jr_000_15a2:
    ld a, b
    ld hl, $c822
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld [$c830], a
    ld a, $01
    ld [$c820], a
    ld a, $01
    ld [$c82e], a
    ld a, $09
    ld [$c821], a
    ret


    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    xor a
    ld [$c770], a
    ret


Call_000_15dd:
    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    ret


Call_000_15f6:
    ld hl, $c762
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    inc hl
    xor a
    ld [hl], a
    ld hl, $c760
    ld a, $01
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $01
    ld [$c76e], a
    ret


Call_000_160f:
    ld b, a
    ld a, [$b8ea]
    cp $02
    jr z, jr_000_161e

    cp $03
    jr z, jr_000_1623

    ld a, b
    jr jr_000_1626

jr_000_161e:
    ld a, b
    add $0c
    jr jr_000_1626

jr_000_1623:
    ld a, b
    add $18

jr_000_1626:
    ld hl, $c782
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_000_1634:
    push af
    ld a, [wMapIndex]
    cp $02
    jr z, jr_000_1640

    pop af
    add $40
    push af

jr_000_1640:
    pop af
    ld hl, $c7a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_000_164f:
    push af
    ld a, [wMapIndex]
    cp $02
    jr z, jr_000_165b

    pop af
    add $40
    push af

jr_000_165b:
    pop af
    ld hl, $c7a2
    cp [hl]
    ret z

    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $08
    ld [hl], a
    ret


Call_000_166a:
    rst $08

    db $8b, $5a, $06, $d7, $5a, $06, $1e, $5b, $06, $45, $5b, $06, $4e, $5b, $06, $75
    db $5b, $06, $7e, $5b, $06, $87, $5b, $06, $90, $5b, $06, $99, $5b, $06, $a2, $5b
    db $06, $ab, $5b, $06, $b4, $5b, $06, $bd, $5b, $06, $c6, $5b, $06, $cf, $5b, $06
    db $d8, $5b, $06, $e1, $5b, $06, $ea, $5b, $06, $f3, $5b, $06, $fc, $5b, $06, $05
    db $5c, $06, $0e, $5c, $06, $17, $5c, $06, $20, $5c, $06, $29, $5c, $06, $32, $5c
    db $06, $32, $5c, $06, $32, $5c, $06, $32, $5c, $06, $32, $5c, $06, $32, $5c, $06
    db $32, $5c, $06, $3b, $5c, $06, $44, $5c, $06, $4a, $5c, $06, $50, $5c, $06, $56
    db $5c, $06, $5c, $5c, $06, $62, $5c, $06, $ea, $3c, $b9, $cf, $68, $5c, $06, $94
    db $5c, $06, $c0, $5c, $06, $ec, $5c, $06, $18, $5d, $06, $44, $5d, $06, $70, $5d
    db $06, $9c, $5d, $06, $c8, $5d, $06, $f4, $5d, $06, $20, $5e, $06, $4c, $5e, $06
    db $78, $5e, $06, $a4, $5e, $06, $d0, $5e, $06, $fc, $5e, $06, $33, $5f, $06, $5f
    db $5f, $06, $8b, $5f, $06, $b7, $5f, $06, $e3, $5f, $06, $0f, $60, $06, $3b, $60
    db $06, $67, $60, $06, $be, $60, $06, $f9, $60, $06, $30, $61, $06, $67, $61, $06
    db $9e, $61, $06, $9a, $62, $06, $18, $63, $06, $96, $63, $06, $cd, $63, $06, $4b
    db $64, $06, $82, $64, $06, $00, $65, $06, $37, $65, $06, $b5, $65, $06, $ec, $65
    db $06, $6a, $66, $06, $a1, $66, $06, $1f, $67, $06, $5a, $67, $06, $d8, $67, $06
    db $5c, $68, $06, $ef, $68, $06, $f0, $68, $06, $f1, $68, $06, $f2, $68, $06, $70
    db $69, $06, $ee, $69, $06, $67, $6a, $06, $e5, $6a, $06, $63, $6b, $06, $e7, $6b
    db $06, $2a, $6c, $06, $a5, $6c, $06, $a6, $6c, $06, $a7, $6c, $06, $a8, $6c, $06
    db $a9, $6c, $06, $e0, $6c, $06, $5e, $6d, $06, $95, $6d, $06, $cc, $6d, $06, $03
    db $6e, $06, $7e, $6e, $06, $a9, $6e, $06, $d4, $6e, $06, $ff, $6e, $06, $ff, $6e
    db $06, $ff, $6e, $06, $2a, $6f, $06, $61, $6f, $06, $df, $6f, $06, $e0, $6f, $06
    db $e1, $6f, $06, $5c, $70, $06, $d7, $70, $06, $03, $71, $06, $2f, $71, $06, $5b
    db $71, $06, $87, $71, $06, $b9, $71, $06, $e5, $71, $06, $11, $72, $06, $3d, $72
    db $06, $b8, $72, $06, $33, $73, $06, $34, $73, $06, $6e, $73, $06, $ea, $73, $06
    db $68, $74, $06, $e6, $74, $06, $64, $75, $06, $e2, $75, $06, $60, $76, $06, $de
    db $76, $06, $0a, $77, $06, $36, $77, $06, $62, $77, $06, $8e, $77, $06, $ba, $77
    db $06, $1c, $62, $06, $e6, $77, $06, $e6, $77, $06, $1d, $78, $06, $54, $78, $06
    db $8b, $78, $06, $c2, $78, $06, $40, $79, $06, $be, $79, $06, $3c, $7a, $06, $ba
    db $7a, $06, $f1, $7a, $06, $6f, $7b, $06, $a6, $7b, $06, $dd, $7b, $06, $7b, $79
    db $12, $ab, $79, $12, $db, $79, $12, $cf, $ed, $74, $12, $f1, $74, $12, $f5, $74
    db $12, $f9, $74, $12, $fd, $74, $12, $01, $75, $12, $05, $75, $12, $09, $75, $12
    db $0d, $75, $12, $11, $75, $12, $15, $75, $12, $19, $75, $12, $1d, $75, $12, $21
    db $75, $12, $25, $75, $12, $29, $75, $12, $2d, $75, $12, $31, $75, $12, $cf, $49
    db $75, $12, $6b, $75, $12, $8d, $75, $12, $af, $75, $12, $d1, $75, $12, $f3, $75
    db $12, $15, $76, $12, $37, $76, $12, $59, $76, $12, $7b, $76, $12, $9d, $76, $12
    db $bf, $76, $12, $e1, $76, $12, $03, $77, $12, $25, $77, $12, $47, $77, $12, $69
    db $77, $12, $8b, $77, $12, $ad, $77, $12

    db $cf, $77

    db $12, $f1, $77, $12

    db $13, $78

    db $12, $35, $78, $12, $57, $78, $12

Call_000_18d2:
    rst $08

    db $8d, $78

    db $12

    db $af, $78

    db $12, $d1, $78, $12, $f3, $78, $12

    db $15, $79

    db $12, $37, $79, $12, $59, $79, $12

    rst $08

    db $0b, $7a

    db $12, $1e, $7a, $12

    db $31, $7a

    db $12

    db $38, $7a

    db $12, $3f, $7a, $12

Call_000_18f8:
    ld hl, $5596
    ld a, $05
    call Call_000_1f96
    ret


Call_000_1901:
    ld hl, $5672
    ld a, $05
    call Call_000_1f96
    ret


Call_000_190a:
    ld hl, $5752
    ld a, $05
    call Call_000_1f96
    ret


Call_000_1913:
    ld hl, $583d
    ld a, $05
    call Call_000_1f96
    ret


Call_000_191c:
    ld hl, $5928
    ld a, $05
    call Call_000_1f96
    ret


Call_000_1925:
    ld a, [$cb4a]
    or a
    ret nz

    ld a, [$cb84]
    or a
    ret nz

    ld a, [wGrabbingDog3]
    or a
    ret nz

    ld a, $42
    call Call_000_23d5
    ld a, $38
    ld [$c912], a
    ld a, $21
    call Call_000_152f
    ld a, [$b8fb]
    inc a
    cp $03
    jr nz, jr_000_194c

    xor a

jr_000_194c:
    ld [$b8fb], a
    ld hl, $b8f8
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    ret z

    call $16e3
    ret


Call_000_1960:
    ld a, [wPlayerXPosition]
    add b
    ld l, a
    ld h, $00
    ldh a, [hCameraX]
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
    ldh a, [hCameraY]
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


Call_000_199c:
    ld a, h
    cp $98
    jr c, jr_000_19a8

    cp $9c
    ret c

    sub $04
    ld h, a
    ret


jr_000_19a8:
    add $04
    ld h, a
    ret


Call_000_19ac:
    ld a, [$cb84]
    or a
    jr nz, jr_000_19f4

    xor a
    ld [$cb89], a
    ld a, [wGrabbingDog]
    or a
    ret z

    ld a, [wPlayerXPosition]
    add d
    ld b, a
    ld a, [$c7aa]
    sub b
    bit 7, a
    jr z, jr_000_19ca

    cpl
    inc a

jr_000_19ca:
    cp $0b
    ret nc

    ld a, [$c60b]
    add e
    ld b, a
    ld a, [$c7ab]
    cp b
    jr nc, jr_000_19e4

    sub b
    bit 7, a
    jr z, jr_000_19df

    cpl
    inc a

jr_000_19df:
    cp $1c
    ret nc

    jr jr_000_19ee

jr_000_19e4:
    sub b
    bit 7, a
    jr z, jr_000_19eb

    cpl
    inc a

jr_000_19eb:
    cp $04
    ret nc

jr_000_19ee:
    ld a, $01
    ld [$cb89], a
    ret


jr_000_19f4:
    xor a
    ld [$cb89], a
    ret


Call_000_19f9:
    ld a, [$b8ed]
    or a
    jp z, Jump_000_1ab0

    sub b
    ld [$b8ed], a
    jr nc, jr_000_1a0a

    xor a
    ld [$b8ed], a

jr_000_1a0a:
    ld a, [$b8ed]
    ld c, a
    ld a, b
    cp $01
    jr z, jr_000_1a1b

    cp $02
    jr z, jr_000_1a3c

    jp Jump_000_1a67


    db $c9

jr_000_1a1b:
    ld hl, $1abc
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp c
    jr z, jr_000_1a9e

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa4

    ld a, [hl+]
    cp c
    jp z, Jump_000_1aaa

    ld a, [hl]
    cp c
    jp z, Jump_000_1ab6

    ret


jr_000_1a3c:
    ld hl, $1abc
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp c
    jr z, jr_000_1a9e

    dec a
    cp c
    jr z, jr_000_1a9e

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa4

    dec a
    cp c
    jr z, jr_000_1aa4

    ld a, [hl+]
    cp c
    jr z, jr_000_1aaa

    dec a
    cp c
    jr z, jr_000_1aaa

    ld a, [hl]
    cp c
    jr z, jr_000_1ab6

    ret


Jump_000_1a67:
    ld hl, $1abc
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    cp c
    jr z, jr_000_1a9e

    dec a
    cp c
    jr z, jr_000_1a9e

    dec a
    cp c
    jr z, jr_000_1a9e

    ld a, [hl+]
    cp c
    jr z, jr_000_1aa4

    dec a
    cp c
    jr z, jr_000_1aa4

    dec a
    cp c
    jr z, jr_000_1aa4

    ld a, [hl+]
    cp c
    jr z, jr_000_1aaa

    dec a
    cp c
    jr z, jr_000_1aaa

    dec a
    cp c
    jr z, jr_000_1aaa

    ld a, [hl]
    cp c
    jr z, jr_000_1ab6

    ret


jr_000_1a9e:
    ld a, $b4
    ld [$cb91], a
    ret


jr_000_1aa4:
    ld a, $6e
    ld [$cb91], a
    ret


Jump_000_1aaa:
jr_000_1aaa:
    ld a, $50
    ld [$cb91], a
    ret


Jump_000_1ab0:
    pop hl
    ld a, $01
    ld [$c912], a

Jump_000_1ab6:
jr_000_1ab6:
    ld a, $a0
    ld [$cb91], a
    ret


    db $32, $21, $11, $00, $37, $25, $12, $00, $3c, $28, $14, $00, $41, $2b, $16, $00
    db $46, $2f, $18, $00, $4b, $32, $19, $00, $50, $35, $1b, $00, $55, $39, $1c, $00
    db $5a, $3c, $1e, $00, $5f, $3f, $20, $00, $64, $43, $21, $00

Call_000_1ae8:
    ld a, [$b8ed]
    add b
    jr c, jr_000_1af9

    ld [$b8ed], a
    ld b, a
    ld a, [$b8ee]
    cp b
    jr c, jr_000_1af9

    ret


jr_000_1af9:
    ld a, [$b8ee]
    ld [$b8ed], a
    ret


Call_000_1b00:
    ld a, [$cb8d]
    cp $01
    jr z, jr_000_1b10

    cp $03
    jr z, jr_000_1b16

    cp $05
    jr z, jr_000_1b1c

    ret


jr_000_1b10:
    ld b, $1e
    call Call_000_1ae8
    ret


jr_000_1b16:
    ld b, $14
    call Call_000_1ae8
    ret


jr_000_1b1c:
    ld b, $0a
    call Call_000_1ae8
    ret


    db $0b, $0c, $0d, $0e, $13, $14, $16, $15, $00, $08, $09, $0a, $12, $12, $52, $01
    db $02, $03, $04, $05, $06, $07, $4e, $4f, $50, $51, $53, $54, $55, $10, $11

    db $af, $af, $af, $15, $65, $af, $af, $af, $af, $af, $af, $af, $af, $17, $78, $af
    db $af, $af, $af, $af, $af, $af, $55, $99, $65, $7a, $af, $af, $af, $af, $af, $af
    db $af, $09, $49, $af, $af, $af, $af, $af, $af, $af, $27, $7a, $d3

    db $7a, $15, $65, $af, $af, $af, $af, $27, $7a, $d3, $7a, $17, $78, $af, $af, $af
    db $27, $7a, $d3, $7a, $55, $99, $65, $7a, $af, $af, $af, $27, $7a, $d3, $7a, $09
    db $49, $af, $af, $af, $af, $02, $21, $44, $17, $27, $86, $af, $af, $af, $af, $31
    db $31, $21, $c8, $81, $11, $af, $af, $af, $af, $af, $cb, $85, $26, $af, $af, $af
    db $af, $af, $af, $b6, $97, $07, $89, $af, $af, $af, $af, $af, $af, $27, $d5, $86
    db $99, $17, $85, $7a, $af, $af, $27, $d5, $86, $99, $17, $85, $7a, $0c, $af, $af
    db $af, $af, $72, $c8, $02, $70, $12, $af, $af, $af, $af, $af, $02, $21, $44, $30
    db $43, $af, $af, $af, $af, $af, $cc, $87, $af, $af, $af, $af, $af, $af, $af, $c8
    db $12, $24, $02, $44, $30, $43, $af, $af, $af, $af, $15, $cb, $44, $30, $43, $af
    db $af, $af, $b6, $95, $a5, $06, $69, $44, $30, $43, $af, $af, $af, $39, $65, $39
    db $44, $30, $43, $af, $af, $39, $07, $69, $89, $19, $26, $44, $30, $43, $af, $af
    db $af, $af, $45, $27, $44, $30, $43, $af, $af, $af, $85, $98, $15, $28, $06, $44
    db $30, $43, $af, $af, $af, $46, $99, $b6, $99, $44, $30, $43, $af, $cb, $89, $98
    db $19, $86, $7a, $44, $30, $43, $af, $af, $af, $af, $32, $82, $50, $21, $af, $af
    db $af, $af, $00, $63, $52, $81, $44, $10, $20, $af, $af, $af, $af, $af, $32, $81
    db $b0, $04, $af, $af, $af, $af, $af, $af, $02, $21, $44, $03, $20, $af, $af, $af
    db $af, $af, $34, $81, $44, $03, $20, $af, $af, $af, $af, $af, $af, $22, $bd, $af
    db $af, $af, $af

Call_000_1c81:
    ld a, [wMapIndex]
    cp $26
    ret z

    cp $27
    ret z

    cp $29
    ret z

    ld a, [sCurrentHour]
    cp $11
    ret nc

    cp $06
    ret c

    ld hl, $b93f
    call Call_000_1ec2
    ld hl, $ba35
    call Call_000_1ec2
    ld a, [sCurrentTool2]
    ld hl, $1cd0
    call Call_000_0743
    ld d, h
    ld e, l
    ld a, [$b93d]
    ld l, a
    ld a, [$b93e]
    ld h, a
    add hl, de
    ld a, h
    cp $c3
    jr c, jr_000_1cc4

    ld a, l
    cp $50
    jr c, jr_000_1cc4

    ld l, $50
    ld h, $c3

jr_000_1cc4:
    ld a, l
    ld [$b93d], a
    ld a, h
    ld [$b93e], a
    call Call_000_1115
    ret


    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $96, $00, $78, $00, $00, $00, $00, $00, $00, $00, $3c, $00
    db $00, $00, $50, $00, $00, $00, $5e, $01, $00, $00, $fa, $00, $00, $00, $96, $00
    db $00, $00, $46, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $64, $00, $00, $00, $00, $00, $00, $00
    db $2c, $01, $2c, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $f4, $01, $f4, $01, $f4, $01, $f4, $01, $f4, $01, $f4, $01, $00, $00
    db $00, $00, $96, $00, $3c, $00, $50, $00, $96, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $dc, $05, $fa, $76, $cc, $3c, $ea, $76, $cc, $fe, $10, $28, $66, $fe
    db $20, $c0, $af, $ea, $76, $cc, $fa, $00, $40, $e0, $a4, $3e, $0a, $ea, $00, $21
    db $21, $7a, $1e, $fa, $77, $cc, $cd, $43, $07, $fa, $76, $cc, $cd, $43, $07, $11
    db $b6, $79, $19, $54, $5d, $21, $72, $1e, $fa, $76, $cc, $cd, $43, $07, $06, $10
    db $f3, $f0, $41, $cb, $4f, $20, $fa, $1a, $22, $13, $fb, $05, $20, $f2, $fa, $76
    db $cc, $3c, $ea, $76, $cc, $fe, $04, $38, $c7, $af, $ea, $76, $cc, $f0, $a4, $ea
    db $00, $21, $fa, $77, $cc, $fe, $00, $20, $06, $3e, $01, $ea, $77, $cc, $c9, $3e
    db $00, $ea, $77, $cc, $c9, $af, $ea, $78, $cc, $fa, $00, $40, $e0, $a4, $3e, $0a
    db $ea, $00, $21, $21, $9e, $1e, $fa, $77, $cc, $cd, $43, $07, $fa, $78, $cc, $cd
    db $43, $07, $11, $b6, $79, $19, $54, $5d, $21, $8e, $1e, $fa, $78, $cc, $cd, $43
    db $07, $06, $10, $f3, $f0, $41, $cb, $4f, $20, $fa, $1a, $22, $13, $fb, $05, $20
    db $f2, $fa, $78, $cc, $3c, $ea, $78, $cc, $fe, $08, $38, $c7, $f0, $a4, $ea, $00
    db $21, $c9, $60, $96, $70, $96, $60, $97, $70, $97, $7e, $1e, $86, $1e, $40, $01
    db $50, $01, $60, $01, $70, $01, $00, $01, $10, $01, $20, $01, $30, $01, $80, $90
    db $90, $90, $80, $91, $90, $91, $80, $92, $90, $92, $80, $93, $90, $93, $a2, $1e
    db $b2, $1e, $80, $00, $90, $00, $a0, $00, $b0, $00, $c0, $00, $d0, $00, $e0, $00
    db $f0, $00, $00, $00, $10, $00, $20, $00, $30, $00, $40, $00, $50, $00, $60, $00
    db $70, $00

Call_000_1ec2:
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, jr_000_1ed5

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    or a
    jr nz, jr_000_1ed6

    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    jr jr_000_1ed7

jr_000_1ed5:
    inc hl

jr_000_1ed6:
    inc hl

jr_000_1ed7:
    ld a, [hl]
    cp $01
    ret nz

    dec hl
    ld a, [hl]
    cp $86
    ret c

    dec hl
    ld a, [hl]
    cp $9f
    ret c

    ld a, $9f
    ld [hl+], a
    ld a, $86
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ret


    db $00, $0a, $0e, $12, $0a, $1a

    xor a
    ldh [$ff9b], a

Call_000_1ef8:
    ld a, [$cb59]
    or a
    jr nz, jr_000_1f06

    ld a, $ff
    ld [$cb1c], a
    xor a
    jr jr_000_1f13

jr_000_1f06:
    ld a, [$cb1c]
    ld de, $1eef
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]

jr_000_1f13:
    ld [$cb13], a
    ld a, $10
    add b
    ld b, a
    ld a, $08
    add c
    ld c, a
    ldh a, [$ff99]
    cp $a0
    ret z

    ld e, a
    ld d, $c0

jr_000_1f26:
    ld a, [hl]
    cp $80
    jr z, jr_000_1f6e

    ld a, [hl+]
    add b
    ld [de], a
    inc e
    ldh a, [$ff9b]
    bit 5, a
    ld a, [hl+]
    jr z, jr_000_1f3a

    cpl
    inc a
    sub $08

jr_000_1f3a:
    add c
    ld [de], a
    inc e
    ld a, [$cb1c]
    cp $ff
    jr nz, jr_000_1f49

    ld a, [hl+]
    ld [de], a
    inc e
    jr jr_000_1f63

jr_000_1f49:
    ld a, [hl+]
    push af
    push bc
    push de
    push hl
    ld c, a
    ld a, [$cb13]
    ld e, a
    call Call_000_2175
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$cb13]
    ld [de], a
    inc a
    ld [$cb13], a
    inc e

jr_000_1f63:
    ldh a, [$ff9b]
    xor [hl]
    ld [de], a
    inc hl
    inc e
    ld a, e
    cp $a0
    jr nz, jr_000_1f26

jr_000_1f6e:
    ld a, e
    ldh [$ff99], a
    ret


    db $23, $23, $23, $18, $af

Jump_000_1f77:
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h
    pop hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_000_1f83:
    ld e, a
    ld d, $00
    ld l, a
    ld h, $00
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld l, e
    ld h, d

Call_000_1f96:
    push bc
    ld b, a
    ld a, [$4000]
    ld c, a
    ld a, b
    ld [$2100], a
    ld a, c
    pop bc
    push af
    call Call_000_1fab
    pop af
    ld [$2100], a
    ret


Call_000_1fab:
    jp hl


Call_000_1fac:
    ld a, [$cbf1]
    or a
    jr z, jr_000_1feb

    ld a, [$4000]
    ldh [$ffa5], a
    ld a, [$cbf5]
    ld [$2100], a
    ld a, [$cbf4]
    ld [$4000], a
    ld a, [$cbee]
    ld e, a
    ld a, [$cbef]
    ld d, a
    ld a, [$cbf2]
    ld l, a
    ld a, [$cbf3]
    ld h, a
    add hl, de
    ld a, [hl+]
    ldh [$ffa4], a
    inc de
    ld a, e
    ld [$cbee], a
    ld a, d
    ld [$cbef], a
    xor a
    ld [$4000], a
    ldh a, [$ffa5]
    ld [$2100], a
    jr jr_000_2046

jr_000_1feb:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ldh [$ffa4], a
    ld a, [$cbf0]
    or a
    jr z, jr_000_2046

    ld a, $01
    ld [$4000], a
    ld a, [$cbee]
    ld e, a
    ld a, [$cbef]
    ld d, a
    ld hl, $a000
    add hl, de
    ldh a, [$ffa4]
    ld [hl], a
    inc de
    ld a, l
    ld [$cbee], a
    ld a, h
    ld [$cbef], a
    xor a
    ld [$4000], a

jr_000_2046:
    ldh a, [$ffa4]
    ld c, a
    ldh a, [$ff8c]
    xor c
    and c
    ldh [$ff8b], a
    ld a, c
    ldh [$ff8a], a
    ldh [$ff8c], a
    ld a, $30
    ldh [rP1], a
    ret


DMARelated::
    ld c, $80
    ld b, $0a
    ld hl, DMARelated2

jr_000_2060:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_2060

    ret


DMARelated2::
    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_206d:
    dec a
    jr nz, jr_000_206d

    ret


Call_000_2071:
    ld hl, $ff40
    bit 7, [hl]
    ret z

    ldh a, [rIE]
    push af
    res 0, a
    ldh [rIE], a

jr_000_207e:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_207e

    res 7, [hl]
    pop af
    ldh [rIE], a
    ret


Call_000_208a:
    ld a, [$c0a2]
    ldh [rLCDC], a
    ret


    db $af, $e0, $0f, $fa, $a0, $c0, $e0, $ff, $c9

ClearMem::
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, ClearMem

    ret


Call_000_20a1:
    ld hl, $9bff

jr_000_20a4:
    ld bc, $0400

jr_000_20a7:
    ld a, $00
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_20a7

    ret


Call_000_20b0:
    ld hl, $9fff
    jr jr_000_20a4

    db $21, $ff, $9b, $01, $00, $04, $f0, $a4, $32, $0b, $78, $b1, $20, $f8, $c9

jr_000_20c4:
    inc de
    ld h, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    and $3f
    ld b, a
    ld a, c
    rlca
    rlca
    and $03
    jr z, jr_000_20ea

    dec a
    jr z, jr_000_20f9

    dec a
    jr z, jr_000_2101

jr_000_20dc:
    ld a, [de]
    ld [hl], a
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_20dc

    inc de
    jr jr_000_20f0

jr_000_20ea:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_20ea

Call_000_20f0:
jr_000_20f0:
    xor a
    ld [$cb75], a
    ld a, [de]
    or a
    jr nz, jr_000_20c4

    ret


jr_000_20f9:
    ld a, [de]
    inc de

jr_000_20fb:
    ld [hl+], a
    dec b
    jr nz, jr_000_20fb

    jr jr_000_20f0

jr_000_2101:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_2101

    jr jr_000_20f0

Call_000_210f:
jr_000_210f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_210f

    ret


Call_000_2116:
jr_000_2116:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2116

    ret


    push hl
    ld l, a
    ld a, [$4000]
    ld h, a
    ld a, l
    ld [$2100], a
    ld a, h
    pop hl
    push af
    call Call_000_2116
    pop af
    ld [$2100], a
    ret


    db $e5, $6f, $fa, $00, $40, $67, $7d, $e5, $ea, $00, $21, $e1, $7c, $e1, $f5, $cd
    db $4b, $21, $f1, $ea, $00, $21, $c9, $2a, $fe, $ff, $28, $08, $12, $13, $0b, $78
    db $b1, $20, $f4, $c9, $2a, $e0, $a4, $2a, $e5, $67, $f0, $a4, $6f, $7c, $12, $13
    db $2d, $28, $07, $0b, $78, $b1, $20, $f5, $e1, $c9, $e1, $0b, $78, $b1, $20, $d7
    db $c9

Call_000_2175:
    ld a, [$cb1c]
    cp $00
    jr z, jr_000_2191

    cp $01
    jr z, jr_000_2198

    cp $02
    jr z, jr_000_219f

    cp $03
    jr z, jr_000_21a5

    cp $04
    jr z, jr_000_21ab

    cp $05
    jr z, jr_000_21b1

    ret


jr_000_2191:
    ld a, [$cb14]
    or a
    jr nz, jr_000_21b6

    ret


jr_000_2198:
    ld a, [$cb15]
    or a
    jr nz, jr_000_21b6

    ret


jr_000_219f:
    ld a, [$cb16]
    or a
    jr nz, jr_000_21b6

jr_000_21a5:
    ld a, [$cb17]
    or a
    jr nz, jr_000_21b6

jr_000_21ab:
    ld a, [$cb18]
    or a
    jr nz, jr_000_21b6

jr_000_21b1:
    ld a, [$cb19]
    or a
    ret z

jr_000_21b6:
    ld a, [$cb61]
    and $03
    swap a
    ld d, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4001
    add hl, bc
    ld b, d
    ld c, $00
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $c913
    add hl, de
    pop de
    ld a, [$4000]
    ld b, a
    ld a, [wGrabbingDog2]
    add $18
    ld [$2100], a
    ld c, $10

jr_000_21e8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_21e8

    ld a, b
    ld [$2100], a
    ret


Call_000_21f3:
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00

jr_000_21fa:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

jr_000_2203:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_000_2207:
    bit 0, d
    ld a, $10
    jr nz, jr_000_220f

    ld a, $20

jr_000_220f:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, jr_000_2207

    dec b
    jr nz, jr_000_2203

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    ret z

    call Call_000_222e
    jr jr_000_21fa

    db $fa, $00, $dd, $b7, $c8

Call_000_222e:
    ld de, $1b58

jr_000_2231:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_2231

    ret


Call_000_223a:
    ld hl, $22ab
    call Call_000_21f3
    call Call_000_222e
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_2290

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_222e
    ld a, $30
    ldh [rP1], a
    call Call_000_222e
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_222e
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_000_222e
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_2290

    ld hl, $229b
    call Call_000_21f3
    call Call_000_222e
    sub a
    ret


jr_000_2290:
    ld hl, $229b
    call Call_000_21f3
    call Call_000_222e
    scf
    ret


    db $89, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $89, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $d5, $e5, $cd, $71, $20, $e1, $3e, $e4, $e0, $47, $11, $00, $88, $cd, $16, $21
    db $af, $e0, $42, $e0, $43, $21, $00, $98, $11, $0c, $00, $3e, $80, $0e, $0d, $06
    db $14, $22, $3c, $05, $20, $fb, $19, $0d, $20, $f5, $3e, $81, $e0, $40, $cd, $2e
    db $22, $e1, $cd, $f3, $21, $cd, $2e, $22, $c9

    push de
    push af
    push hl
    call Call_000_2071
    pop hl
    ld a, $e4
    ldh [rBGP], a
    pop af
    ld c, a
    ld de, $8800
    call Call_000_2f41
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_2316:
    ld b, $14

jr_000_2318:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_2318

    add hl, de
    dec c
    jr nz, jr_000_2316

    ld a, $81
    ldh [rLCDC], a
    call Call_000_222e
    pop hl
    call Call_000_21f3
    call Call_000_222e
    ret


    db $c9

MusicRelated::
    ld bc, $0000
    call Call_000_2373
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR51], a
    ld [$d397], a
    ld a, $77
    ldh [rNR50], a
    ld hl, $d300
    ld b, $06
    ld a, $ff

jr_000_234c:
    ld [hl], a
    ld de, $0017
    add hl, de
    ld [hl], a
    ld de, $0002
    add hl, de
    dec b
    jr nz, jr_000_234c

    xor a
    ld [$d3a3], a
    ret


    db $af, $ea, $a3, $d3, $fa, $a4, $d3, $ea, $97, $d3, $c9, $3e, $04, $ea, $a3, $d3
    db $af, $ea, $97, $d3, $c9

Call_000_2373:
    ld a, b
    ld [$d3a0], a
    ld a, c
    ld [$d3a1], a
    xor a
    ld [$d3a2], a
    ret


Call_000_2380:
    ld a, [$d39d]
    inc a
    ld b, a
    ld a, $01

jr_000_2387:
    dec b
    jr z, jr_000_238d

    add a
    jr jr_000_2387

jr_000_238d:
    ld b, a
    ld a, [$d3a2]
    or b
    ld [$d3a2], a
    ret


Call_000_2396:
    ld a, [$d3a2]
    ld hl, $d3a0
    and [hl]
    cp [hl]
    jr nz, jr_000_23ca

    ld hl, $d304
    ld a, [$d3a1]
    and $0f
    ld b, a
    ld a, [$d3a0]

jr_000_23ac:
    srl a
    ld [$d3a2], a
    jr nc, jr_000_23b8

    ld a, [hl]
    and $f0
    or b
    ld [hl], a

jr_000_23b8:
    ld a, l
    add $19
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d3a2]
    and a
    jr nz, jr_000_23ac

    xor a
    ld [$d3a0], a

jr_000_23ca:
    xor a
    ld [$d3a2], a
    ret


Call_000_23cf:
    call Call_000_23d8

Call_000_23d2:
    call Call_000_23d8

Call_000_23d5:
    call Call_000_23d8

Call_000_23d8:
    push bc
    push de
    push hl
    ld [$d39e], a
    ld l, a
    ld a, [$4000]
    push af
    ld a, $1e
    ld [$2100], a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $4001
    add hl, de
    push hl
    pop de
    ld a, [de]
    inc de
    ld c, a
    ld b, $00
    ld hl, $d300
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_000_241d

    inc hl
    ld a, [hl-]
    ld b, $ee
    and $03
    jr z, jr_000_2416

    ld b, $dd
    cp $01
    jr z, jr_000_2416

    ld b, $bb
    cp $02
    jr z, jr_000_2416

    ld b, $77

jr_000_2416:
    ld a, [$d397]
    and b
    ld [$d397], a

jr_000_241d:
    xor a
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, $ff
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de
    xor a
    ld [hl], a
    pop af
    ld [$2100], a
    ld a, [$d39e]
    inc a
    pop hl
    pop de
    pop bc
    ret


Call_000_2444:
    ld a, [$4000]
    push af
    ld a, $1e
    ld [$2100], a
    ld a, [$d3a3]
    ld [$d39d], a
    xor a
    ld [$d396], a
    ld hl, $d39c
    inc [hl]
    ld hl, $d300

Jump_000_245e:
    push hl
    ld de, $ffe6
    ld b, $19

jr_000_2464:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_2464

    ldh a, [$ffe7]
    and $03
    ld [$d398], a
    ld b, a
    add a
    add a
    add b
    ld [$d39b], a
    inc b
    ld a, $88

jr_000_247b:
    rlca
    dec b
    jr nz, jr_000_247b

    ld [$d399], a
    ld [$d39a], a
    ldh a, [$ffe6]
    ld b, a
    ldh a, [$fffd]
    or b
    and a
    jp z, Jump_000_250b

    ldh a, [$fffd]
    and b
    cp $ff
    jr z, jr_000_24ed

    call Call_000_2869
    call Call_000_28d8
    ldh a, [$fff2]
    ld b, a
    ldh a, [$fff3]
    inc a
    cp b
    jr c, jr_000_24a6

    ld a, b

jr_000_24a6:
    ldh [$fff3], a
    ld hl, $ffeb
    ldh a, [$ffea]
    and $0f
    add [hl]
    cp $10
    jr c, jr_000_24b9

    sub $10
    ld [hl], a
    jr jr_000_24d5

jr_000_24b9:
    ld [hl], a
    call Call_000_282a
    ldh a, [$fffc]
    and a
    jr z, jr_000_24c5

    dec a
    ldh [$fffc], a

jr_000_24c5:
    ld hl, $ffed
    dec [hl]
    jr nz, jr_000_24d5

    call Call_000_2380

Jump_000_24ce:
    ldh a, [$fffb]
    ldh [$fffc], a
    call Call_000_2576

jr_000_24d5:
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    or b
    ld [$d396], a
    pop hl
    push hl
    ld de, $ffe6
    ld b, $19

jr_000_24e7:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_24e7

jr_000_24ed:
    pop hl
    ld de, $0019
    add hl, de
    ld a, [$d39d]
    inc a
    ld [$d39d], a
    cp $06
    jp c, Jump_000_245e

    ld a, [$d397]
    ldh [rNR51], a
    pop af
    ld [$2100], a
    call Call_000_2396
    ret


Jump_000_250b:
    ldh a, [$ffe8]
    ld l, a
    ldh a, [$ffe9]
    ld h, a
    xor a
    ldh [$ffeb], a
    ld a, [hl+]
    and $0f
    ld d, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_254b

    ld a, [hl+]
    rrca
    rrca
    and $c0
    or d

jr_000_2525:
    ldh [$ffea], a
    ld a, [hl+]
    swap a
    ldh [$ffec], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_2551

    ld a, [hl+]
    ldh [$ffee], a

jr_000_2536:
    xor a
    ldh [$ffef], a
    ldh [$fff0], a
    ldh [$fff1], a
    ldh [$fff4], a
    ldh [$fffd], a
    dec a
    ldh [$fffa], a
    ld a, $02
    ldh [$ffe6], a
    jp Jump_000_24ce


jr_000_254b:
    ld a, [hl+]
    ldh [$fff2], a
    ld a, d
    jr jr_000_2525

jr_000_2551:
    xor a
    ldh [rNR30], a
    ld d, a
    ldh a, [$ffee]
    ld e, a
    cp $ff
    jr nz, jr_000_2560

    ld e, [hl]
    ld a, e
    ldh [$ffee], a

jr_000_2560:
    ld [$d3a5], a
    swap e
    ld hl, $2fde
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_256e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_256e

    jr jr_000_2536

Call_000_2576:
Jump_000_2576:
    ldh a, [$ffe6]
    ld l, a
    ldh a, [$fffd]
    ld h, a
    add hl, hl
    ldh a, [$ffe8]
    ld e, a
    ldh a, [$ffe9]
    ld d, a
    add hl, de

Jump_000_2584:
jr_000_2584:
    ldh a, [$ffe6]
    add $01
    ldh [$ffe6], a
    ldh a, [$fffd]
    adc $00
    ldh [$fffd], a
    ld a, [hl+]
    cp $d0
    jr nc, jr_000_25bc

    cp $b0
    jr nc, jr_000_25fa

    cp $a0
    jp nc, Jump_000_2639

    jp Jump_000_2752


jr_000_25a1:
    cp $fd
    jr nz, jr_000_25b0

    ldh a, [$ffe6]
    ldh [$fff9], a
    ldh a, [$fffd]
    ldh [$fffe], a

jr_000_25ad:
    inc hl
    jr jr_000_2584

jr_000_25b0:
    cp $ff
    jr nz, jr_000_25ad

    ldh [$ffe6], a
    ldh [$fffd], a
    call Call_000_2984
    ret


jr_000_25bc:
    cp $f0
    jr nc, jr_000_25a1

    cp $e0
    jr nc, jr_000_25c8

    and $0f
    jr jr_000_25cc

jr_000_25c8:
    and $0f
    cpl
    inc a

jr_000_25cc:
    ld b, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_25dc

    ld a, b
    ldh [$fff4], a
    ld a, [hl]
    ldh [$fff5], a
    ldh [$fff6], a

jr_000_25dc:
    inc hl
    jr jr_000_2584

jr_000_25df:
    and $0f
    ld b, a
    ld a, [$d398]
    cp $02
    jr z, jr_000_25f7

    ldh a, [$ffec]
    and $0f
    jr nz, jr_000_25f7

    ld a, [hl]
    ldh [$fff2], a
    ld a, b
    swap a
    ldh [$fff1], a

jr_000_25f7:
    inc hl
    jr jr_000_2584

jr_000_25fa:
    cp $c0
    jr nc, jr_000_25df

    and $0f
    jr z, jr_000_2625

    ld e, a
    ld a, [hl]
    and a
    jr nz, jr_000_2617

    ldh a, [$ffef]
    dec a
    ldh [$ffef], a
    jr z, jr_000_2636

    bit 7, a
    jr z, jr_000_2625

    ld a, e
    ldh [$ffef], a
    jr jr_000_2625

jr_000_2617:
    ldh a, [$fff0]
    dec a
    ldh [$fff0], a
    jr z, jr_000_2636

    bit 7, a
    jr z, jr_000_2625

    ld a, e
    ldh [$fff0], a

jr_000_2625:
    ld a, [hl]
    and a
    jr nz, jr_000_262b

    ldh a, [$fff9]

jr_000_262b:
    ldh [$ffe6], a
    jr nz, jr_000_2633

    ldh a, [$fffe]
    jr jr_000_2634

jr_000_2633:
    xor a

jr_000_2634:
    ldh [$fffd], a

jr_000_2636:
    jp Jump_000_2576


Jump_000_2639:
    cp $a0
    jr nz, jr_000_2653

    ld a, [hl+]
    swap a
    ldh [$ffec], a
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    jp nz, Jump_000_2584

    call Call_000_28a0
    jp Jump_000_2584


jr_000_2653:
    cp $a1
    jr nz, jr_000_2693

    ld a, [$d398]
    cp $02
    jr z, jr_000_2664

    ld a, [hl+]
    ldh [$ffee], a
    jp Jump_000_2584


jr_000_2664:
    xor a
    ldh [rNR30], a
    ld d, a
    ld a, [hl+]
    ld e, a
    ldh [$ffee], a
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    jr z, jr_000_2679

    jp Jump_000_2584


jr_000_2679:
    push hl
    ld a, e
    ld [$d3a5], a
    swap e
    ld hl, $2fde
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_2689:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2689

    pop hl
    jp Jump_000_2584


jr_000_2693:
    cp $a2
    jr nz, jr_000_26b4

    ld a, [$d398]
    cp $02
    jr z, jr_000_26ae

    ld a, [hl+]
    rrca
    rrca
    and $c0
    ld d, a
    ldh a, [$ffea]
    and $3f
    or d
    ldh [$ffea], a
    jp Jump_000_2584


jr_000_26ae:
    ld a, [hl+]
    ldh [$fff2], a
    jp Jump_000_2584


jr_000_26b4:
    cp $a3
    jr nz, jr_000_26db

    ld a, [hl+]
    bit 7, a
    jr nz, jr_000_26d5

    ld b, a
    and $0f
    add a
    ldh [$fffb], a
    ldh [$fffc], a
    ld a, b
    and $70
    ld e, a
    ldh a, [$ffe7]
    and $0f
    or e
    or $80

jr_000_26d0:
    ldh [$ffe7], a
    jp Jump_000_2584


jr_000_26d5:
    ldh a, [$ffe7]
    and $0f
    jr jr_000_26d0

jr_000_26db:
    cp $a5
    jr nz, jr_000_26ed

    ld a, [hl+]
    cp $01
    jr nz, jr_000_26e8

    ldh a, [$fffa]
    swap a

jr_000_26e8:
    ldh [$fffa], a
    jp Jump_000_2584


jr_000_26ed:
    cp $a6
    jr nz, jr_000_26f7

    ld a, [hl+]
    ldh [rNR50], a
    jp Jump_000_2584


jr_000_26f7:
    cp $a7
    jr nz, jr_000_2701

    ld a, [hl]
    ldh [$ffed], a
    jp Jump_000_2809


jr_000_2701:
    cp $ae
    jr nz, jr_000_2713

    ld a, [hl+]
    and $10
    ld b, a
    ldh a, [$ffea]
    and $ef
    or b
    ldh [$ffea], a
    jp Jump_000_2584


jr_000_2713:
    cp $af
    jr nz, jr_000_2725

    ld a, [hl+]
    and $0f
    ld b, a
    ldh a, [$ffea]
    and $f0
    or b
    ldh [$ffea], a
    jp Jump_000_2584


jr_000_2725:
    inc hl
    jp Jump_000_2584


    db $00, $01, $11, $12, $14, $23, $07, $15, $17, $32, $33, $60, $61, $45, $53, $62

jr_000_2739:
    xor a
    ldh [$fff7], a
    ld a, $80
    ldh [$fff8], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_274b

    call Call_000_297c
    ret


jr_000_274b:
    call Call_000_2994
    xor a
    ldh [rNR30], a
    ret


Jump_000_2752:
    ld b, a
    ld a, [hl]
    ldh [$ffed], a
    ld a, [$d398]
    cp $03
    jr nz, jr_000_2779

    ld a, b
    cp $1f
    jr z, jr_000_2739

    cp $10
    jr nc, jr_000_2774

    ld hl, $2729
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld l, [hl]
    ld h, $00
    jr jr_000_27ac

jr_000_2774:
    ld l, a
    ld h, $00
    jr jr_000_27ac

jr_000_2779:
    ld a, b
    and $0f
    cp $0c
    jr nc, jr_000_2739

    add a
    ld e, a
    ldh a, [$ffea]
    and $10
    jr z, jr_000_278c

    ld a, e
    add $18
    ld e, a

jr_000_278c:
    ld d, $00
    ld hl, $299f
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    swap a
    and $0f
    jr z, jr_000_27a4

    ld b, a

jr_000_279d:
    srl h
    rr l
    dec b
    jr nz, jr_000_279d

jr_000_27a4:
    ld a, $00
    sub l
    ld l, a
    ld a, $08
    sbc h
    ld h, a

jr_000_27ac:
    xor a
    ldh [$fff3], a
    call Call_000_2994
    ld a, [$d398]
    cp $02
    jr nz, jr_000_27c0

    call Call_000_2b4f
    ld a, $80
    ldh [rNR30], a

jr_000_27c0:
    push hl
    call Call_000_2892
    pop hl
    ld a, [$d398]
    and a
    ldh a, [$ffee]
    ld c, $10
    call z, Call_000_28b8
    ld a, l
    ld c, $13
    call Call_000_28b8
    ld a, l
    cp $02
    jr c, jr_000_27e3

    cp $fe
    jr c, jr_000_27e5

    ld a, $fd
    jr jr_000_27e5

jr_000_27e3:
    ld a, $02

jr_000_27e5:
    ldh [$fff7], a
    ld a, [$d398]
    cp $02
    jr z, jr_000_281c

    cp $02
    jr nc, jr_000_27fd

    ldh a, [$ffea]
    and $c0
    or $3f
    ld c, $11
    call Call_000_28b8

jr_000_27fd:
    ld a, h
    and $07
    or $80

jr_000_2802:
    ldh [$fff8], a
    ld c, $14
    call Call_000_28b8

Jump_000_2809:
    ld a, [$d39a]
    ld b, a
    cpl
    ld c, a
    ldh a, [$fffa]
    and b
    ld b, a
    ld a, [$d397]
    and c
    or b
    ld [$d397], a
    ret


jr_000_281c:
    xor a
    ldh [rNR31], a
    ldh a, [rNR52]
    and $04
    jr z, jr_000_27fd

    ld a, h
    and $07
    jr jr_000_2802

Call_000_282a:
    ld a, [$d398]
    cp $02
    ret z

    ldh a, [$fff4]
    and a
    ret z

    ld hl, $fff6
    dec [hl]
    ret nz

    ldh a, [$ffec]
    swap a
    cp $10
    ret nc

    and $0f
    ld b, a
    ldh a, [$fff5]
    ldh [$fff6], a
    ld hl, $fff4
    ld a, [hl]
    bit 7, a
    jr nz, jr_000_285d

    dec [hl]
    ld a, b
    cp $0f
    ret z

    ldh a, [$ffec]
    add $10
    ldh [$ffec], a
    jp Jump_000_28a0


jr_000_285d:
    inc [hl]
    ld a, b
    and a
    ret z

    ldh a, [$ffec]
    sub $10
    ldh [$ffec], a
    jr jr_000_28a0

Call_000_2869:
    call Call_000_2994
    ld a, [$d398]
    cp $03
    ret z

    ldh a, [$fffc]
    and a
    ret nz

    ldh a, [$ffe7]
    bit 7, a
    ret z

    and $70
    ld b, a
    ld a, [$d39c]
    and $0f
    or b
    ld e, a
    ld d, $00
    ld hl, $2acf
    add hl, de
    ldh a, [$fff7]
    add [hl]
    ld c, $13
    jr jr_000_28b8

Call_000_2892:
    ld a, [$d398]
    cp $02
    jr z, jr_000_28c1

    ldh a, [$fff1]
    and a
    jr nz, jr_000_28f2

    ldh a, [$ffec]

Call_000_28a0:
Jump_000_28a0:
jr_000_28a0:
    ld b, a
    and $07
    jr nz, jr_000_28a9

    ld a, b
    or $08
    ld b, a

jr_000_28a9:
    ld a, [$d39b]
    add $12
    ld c, a
    ldh a, [c]
    cp b
    ret z

    ld a, b
    ldh [c], a
    ldh a, [$fff8]
    ld c, $14

Call_000_28b8:
jr_000_28b8:
    ld b, a
    ld a, [$d39b]
    add c
    ld c, a
    ld a, b
    ldh [c], a
    ret


jr_000_28c1:
    ldh a, [$ffec]
    ld c, $12
    jr jr_000_28b8

jr_000_28c7:
    ld a, e
    srl a
    add $02
    swap a
    ld hl, $ffec
    cp [hl]
    ret c

    and $60
    ldh [rNR32], a
    ret


Call_000_28d8:
    call Call_000_2994
    ldh a, [$fff7]
    and a
    jr nz, jr_000_28e7

    ldh a, [$fff8]
    and $7f
    jp z, Jump_000_297c

jr_000_28e7:
    ld a, [$d398]
    cp $02
    jr z, jr_000_28f2

    ldh a, [$fff1]
    and a
    ret z

jr_000_28f2:
    ldh a, [$fff2]
    and a
    ret z

    ld e, $00
    ld c, a
    ldh a, [$fff3]
    ld b, $04

jr_000_28fd:
    add a
    cp c
    jr c, jr_000_2902

    sub c

jr_000_2902:
    ccf
    rl e
    dec b
    jr nz, jr_000_28fd

    ld a, [$d398]
    cp $02
    jr z, jr_000_28c7

    ldh a, [$fff1]
    or e
    ld e, a
    ld d, $00
    ld hl, $309e
    add hl, de
    ldh a, [$ffec]
    swap a
    ld e, a
    ld a, [hl]
    ld h, a
    and $f0
    or e
    ld e, a
    bit 2, h
    jr nz, jr_000_2948

    inc b
    ld a, c
    swap a
    and $0f
    jr z, jr_000_2948

    ld b, a
    bit 3, e
    jr nz, jr_000_2941

    sla b
    bit 2, e
    jr nz, jr_000_2941

    sla b
    bit 1, e
    jr z, jr_000_2946

jr_000_2941:
    ld a, b
    cp $08
    jr c, jr_000_2948

jr_000_2946:
    ld b, $00

jr_000_2948:
    bit 1, h
    jr z, jr_000_2951

    ld a, b
    jr z, jr_000_2951

    srl b

jr_000_2951:
    ld a, h
    and $08
    or b
    ld b, a
    bit 0, h
    jr z, jr_000_2963

    ld hl, $29cf
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_28a0


jr_000_2963:
    ld c, $12
    ld a, [$d39b]
    add c
    ld c, a
    ldh a, [c]
    and $08
    ld l, a
    ld a, h
    and $08
    cp l
    ret z

    ld hl, $29cf
    add hl, de
    ld a, [hl]
    or b
    jp Jump_000_28a0


Call_000_297c:
Jump_000_297c:
    call Call_000_2994
    ld a, $00
    jp Jump_000_28a0


Call_000_2984:
    call Call_000_2994
    ld a, [$d399]
    cpl
    ld b, a
    ld a, [$d397]
    and b
    ld [$d397], a
    ret


Call_000_2994:
    ld a, [$d399]
    ld b, a
    ld a, [$d396]
    and b
    ret z

    pop af
    ret


    db $d4, $07, $64, $07, $f9, $06, $95, $06, $37, $06, $dd, $05, $89, $05, $3a, $05
    db $f0, $04, $a8, $04, $65, $04, $26, $04, $9c, $07, $2e, $07, $c7, $06, $66, $06
    db $0a, $06, $b3, $05, $61, $05, $15, $05, $cc, $04, $86, $04, $45, $04, $08, $04

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $10, $10, $10, $10, $10, $10, $10, $10
    db $00, $00, $00, $00, $10, $10, $10, $10, $10, $10, $10, $10, $20, $20, $20, $20
    db $00, $00, $00, $10, $10, $10, $10, $10, $20, $20, $20, $20, $20, $30, $30, $30
    db $00, $00, $10, $10, $10, $10, $20, $20, $20, $20, $30, $30, $30, $30, $40, $40
    db $00, $00, $10, $10, $10, $20, $20, $20, $30, $30, $30, $40, $40, $40, $50, $50
    db $00, $00, $10, $10, $20, $20, $20, $30, $30, $40, $40, $40, $50, $50, $60, $60
    db $00, $00, $10, $10, $20, $20, $30, $30, $40, $40, $50, $50, $60, $60, $70, $70
    db $00, $10, $10, $20, $20, $30, $30, $40, $40, $50, $50, $60, $60, $70, $70, $80
    db $00, $10, $10, $20, $20, $30, $40, $40, $50, $50, $60, $70, $70, $80, $80, $90
    db $00, $10, $10, $20, $30, $30, $40, $50, $50, $60, $70, $70, $80, $90, $90, $a0
    db $00, $10, $10, $20, $30, $40, $40, $50, $60, $70, $70, $80, $90, $a0, $a0, $b0
    db $00, $10, $20, $20, $30, $40, $50, $60, $60, $70, $80, $90, $a0, $a0, $b0, $c0
    db $00, $10, $20, $30, $30, $40, $50, $60, $70, $80, $90, $a0, $a0, $b0, $c0, $d0
    db $00, $10, $20, $30, $40, $50, $60, $70, $70, $80, $90, $a0, $b0, $c0, $d0, $e0
    db $00, $10, $20, $30, $40, $50, $60, $70, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0

    db $00, $00, $01, $01, $00, $00, $ff, $ff, $00, $00, $01, $01, $00, $00, $ff, $ff
    db $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00, $ff, $ff, $ff, $ff
    db $00, $01, $02, $01, $00, $ff, $fe, $ff, $00, $01, $02, $01, $00, $ff, $fe, $ff
    db $00, $00, $01, $01, $02, $02, $01, $01, $00, $00, $ff, $ff, $fe, $fe, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

Call_000_2b4f:
    ld a, [$d3a5]
    ld b, a
    ldh a, [$ffee]
    cp b
    ret z

    ld [$d3a5], a
    ld e, a
    swap e
    xor a
    ldh [rNR30], a
    ld d, a
    ld hl, $2fde
    add hl, de
    ld de, $ff30
    ld b, $10

jr_000_2b6a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2b6a

    ret


Call_000_2b71:
    ld hl, $c600
    ld b, $00

jr_000_2b76:
    ld a, [hl]
    or a
    jr z, jr_000_2ba2

    ld d, h
    ld e, l
    ld a, $0e
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$cb59], a
    ld d, h
    ld e, l
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [$cb4b], a
    push bc
    push hl
    call Call_000_2bae
    pop hl
    push hl
    call Call_000_2bfc
    pop hl
    pop bc

jr_000_2ba2:
    inc b
    ld a, b
    cp $18
    ret nc

    ld de, $0020
    add hl, de
    jr jr_000_2b76

    db $c9

Call_000_2bae:
    inc hl
    ld a, [hl]
    rst $08

    db $01, $40, $08, $ae, $7a, $12, $ee, $51

    db $08

    db $d5, $52, $08, $be, $54, $08, $98, $59, $08, $50, $7a, $12, $9f, $63, $08, $9f
    db $63, $08, $37, $68, $05, $00, $60, $05, $54, $62, $05, $9f, $63, $08, $85, $54
    db $08, $9f, $63, $08, $98, $54, $08, $81, $54, $08, $82, $54, $08, $83, $54, $08
    db $84, $54, $08, $9f, $63, $08, $9f, $63, $08, $9f, $63, $08, $9f, $63, $08, $00
    db $60, $05

Call_000_2bfc:
    ld a, [$4000]
    push af
    push hl
    ld a, [hl+]
    and $01
    jp z, Jump_000_2d58

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
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ldh [$ffa9], a
    ld a, [hl+]
    ldh [$ffaa], a
    ldh a, [$ffa4]
    cp $02
    jr z, jr_000_2c2c

    cp $03
    jr z, jr_000_2c2c

    jr jr_000_2c3b

jr_000_2c2c:
    pop hl
    push hl
    ld a, $14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_000_2d58

jr_000_2c3b:
    ldh a, [$ffa4]
    cp $06
    jr z, jr_000_2c5b

    cp $0b
    jr z, jr_000_2c67

    cp $0a
    jr z, jr_000_2c63

    cp $09
    jr z, jr_000_2c5f

    cp $0c
    jr z, jr_000_2c67

    cp $18
    jr z, jr_000_2c57

    jr jr_000_2c69

jr_000_2c57:
    ld a, $05
    jr jr_000_2c69

jr_000_2c5b:
    ld a, $04
    jr jr_000_2c69

jr_000_2c5f:
    ld a, $01
    jr jr_000_2c69

jr_000_2c63:
    ld a, $02
    jr jr_000_2c69

jr_000_2c67:
    ld a, $03

jr_000_2c69:
    ld [$cb1c], a
    ld a, [$cb59]
    or a
    jr nz, jr_000_2c74

    jr jr_000_2cbd

jr_000_2c74:
    ldh a, [$ffa4]
    cp $06
    jr z, jr_000_2c94

    cp $0b
    jr z, jr_000_2ca0

    cp $0a
    jr z, jr_000_2c9c

    cp $09
    jr z, jr_000_2c98

    cp $0c
    jr z, jr_000_2ca0

    cp $18
    jr z, jr_000_2c90

    jr jr_000_2ca2

jr_000_2c90:
    ld a, $05
    jr jr_000_2ca2

jr_000_2c94:
    ld a, $04
    jr jr_000_2ca2

jr_000_2c98:
    ld a, $01
    jr jr_000_2ca2

jr_000_2c9c:
    ld a, $02
    jr jr_000_2ca2

jr_000_2ca0:
    ld a, $03

jr_000_2ca2:
    ld hl, $cb14
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jp nz, Jump_000_2d49

    ld a, [$cb14]
    or a
    jr z, jr_000_2cbd

    ldh a, [$ffa6]
    cp $ff
    jp z, Jump_000_2d58

jr_000_2cbd:
    ldh a, [$ffa8]
    or a
    jp z, Jump_000_2cc9

    dec a
    ldh [$ffa8], a
    jp Jump_000_2d3b


Jump_000_2cc9:
    ld a, [$cb59]
    or a
    jr z, jr_000_2cd2

    ld a, $01
    ld [hl], a

jr_000_2cd2:
    ld hl, $2d5e
    ldh a, [$ffa4]
    ld b, a
    sla b
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld [$2100], a
    ld l, c
    ld h, b
    ldh a, [$ffa5]
    ld b, a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld l, c
    ld h, b
    ld d, h
    ld e, l
    ldh a, [$ffa6]
    cp $ff
    jr z, jr_000_2d20

    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_000_2d20

    cp $fe
    jp z, Jump_000_2d58

    jr jr_000_2d30

Jump_000_2d20:
jr_000_2d20:
    ld h, d
    ld l, e
    ld a, $00
    ldh [$ffa6], a
    ld a, [hl]
    ldh [$ffa8], a
    inc hl
    ld a, [hl]
    ldh [$ffa7], a
    jp Jump_000_2d3b


jr_000_2d30:
    ldh [$ffa8], a
    inc hl
    ld a, [hl]
    ldh [$ffa7], a
    ldh a, [$ffa6]
    inc a
    ldh [$ffa6], a

Jump_000_2d3b:
    pop hl
    push hl
    inc hl
    inc hl
    inc hl
    ldh a, [$ffa6]
    ld [hl+], a
    ldh a, [$ffa7]
    ld [hl+], a
    ldh a, [$ffa8]
    ld [hl], a

Jump_000_2d49:
    ldh a, [$ffa7]
    ld e, a
    ldh a, [$ffa4]
    ld d, a
    ldh a, [$ffa9]
    ld c, a
    ldh a, [$ffaa]
    ld b, a
    call Call_000_2da9

Jump_000_2d58:
    pop hl
    pop af
    ld [$2100], a
    ret


    db $7a, $5b

    db $13, $fb

    db $52, $14, $fb, $52, $14, $fb, $52, $14, $9f, $7a, $0b, $2a, $76, $17, $85, $63
    db $0f, $e6, $56, $10, $85, $7e, $0a, $27, $74, $13, $12, $64, $17, $02, $70, $13
    db $fc, $42, $0a, $67, $50, $05, $60, $71, $14, $41, $6a, $14, $49, $63, $14, $49
    db $63, $14, $49, $63, $14, $49, $63, $14, $d3, $67, $14, $d3, $67, $14, $d3, $67
    db $14, $d3, $67, $14, $77, $66, $17

Call_000_2da9:
    xor a
    ldh [$ff9b], a
    ld a, d
    or a
    jr nz, jr_000_2dc4

    ld a, [$b8ec]
    or a
    jp nz, Jump_000_2e55

    ldh a, [$ffa5]
    cp $80
    jr c, jr_000_2dc4

    sub $80
    ldh [$ffa5], a
    jp Jump_000_2e0c


jr_000_2dc4:
    ld hl, $2ef6
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, d
    ld [$2100], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [wGrabbingDog2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef8
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Jump_000_2e0c:
    ld hl, $2ef6
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, d
    inc a
    ld [$2100], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [wGrabbingDog2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef8
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Jump_000_2e55:
    ldh a, [$ffa5]
    cp $80
    jr c, jr_000_2e62

    sub $80
    ldh [$ffa5], a
    jp Jump_000_2eac


jr_000_2e62:
    ld hl, $2ef6
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, d
    add $fa
    ld [$2100], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [wGrabbingDog2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef8
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Jump_000_2eac:
    ld hl, $2ef6
    ld a, d
    add a
    add d
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld d, [hl]
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, d
    add $fb
    ld [$2100], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ffa5]
    push bc
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]
    ld [$cb61], a
    ld a, [hl+]
    ld [wGrabbingDog2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef8
    ldh a, [$ffa4]
    ld [$2100], a
    ret


    db $01, $40

    db $12, $01

    db $40, $14, $01, $40, $14, $01, $40, $14, $f3, $73, $0b, $e6, $6b, $17, $00, $63
    db $0f, $29, $56, $10, $36, $7b, $0a, $9f, $70, $13, $01, $60, $17, $14, $60, $13
    db $01, $40, $0a, $fb, $47, $05, $59, $6a, $14, $2e, $68, $14, $87, $55, $14, $87
    db $55, $14, $87, $55, $14, $87, $55, $14, $87, $64, $14, $87, $64, $14, $87, $64
    db $14, $87, $64, $14, $8d, $64, $17

Call_000_2f41:
    ld a, [$4000]
    push af
    ld a, c
    ld [$2100], a
    ld a, d
    ldh [$ffb9], a
    ld a, e
    ldh [$ffb8], a
    ld a, [hl+]
    ldh [$ffba], a
    add e
    ldh [$ffbc], a
    ld a, [hl+]
    ldh [$ffbb], a
    adc d
    ldh [$ffbd], a
    ld c, $00

jr_000_2f5d:
    ld a, c
    and a
    jr nz, jr_000_2f65

    ld a, [hl+]
    ld b, a
    ld c, $08

jr_000_2f65:
    dec c
    srl b
    push bc
    jr nc, jr_000_2f70

    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_2fc5

jr_000_2f70:
    ld a, [hl+]
    ld c, a
    and $0f
    inc a
    inc a
    inc a
    ldh [$ffbe], a
    ld a, [hl+]
    ld b, a
    push hl
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ld a, e
    sub c
    ld c, a
    ld a, d
    sbc b
    ld b, a
    ldh a, [$ffb9]
    cp b
    jr c, jr_000_2fb9

    jr nz, jr_000_2fa0

    ldh a, [$ffb8]
    cp c
    jr c, jr_000_2fb9

    jr z, jr_000_2fb9

jr_000_2fa0:
    ld a, c
    xor $ff
    inc a
    ld b, a
    ldh a, [$ffbe]
    ld c, a
    xor a

jr_000_2fa9:
    ld [de], a
    inc de
    dec c
    jr z, jr_000_2fc4

    dec b
    jr nz, jr_000_2fa9

    ld hl, $ffb8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_2fbe

jr_000_2fb9:
    ld h, b
    ld l, c
    ldh a, [$ffbe]
    ld c, a

jr_000_2fbe:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_2fbe

jr_000_2fc4:
    pop hl

jr_000_2fc5:
    ldh a, [$ffbd]
    ld b, a
    ld a, d
    cp b
    jr c, jr_000_2fd5

    jr nz, jr_000_2fd8

    ldh a, [$ffbc]
    ld c, a
    ld a, e
    cp c
    jr nc, jr_000_2fd8

jr_000_2fd5:
    pop bc
    jr jr_000_2f5d

jr_000_2fd8:
    pop bc
    pop af
    ld [$2100], a
    ret


    db $00, $01, $12, $35, $8a, $cd, $ee, $ff, $ff, $fe, $ed, $ca, $85, $32, $11, $00
    db $01, $23, $45, $67, $89, $ab, $cd, $ef, $fe, $dc, $ba, $98, $76, $54, $32, $10
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
    db $ff, $ee, $dd, $cc, $bb, $aa, $99, $88, $77, $66, $55, $44, $33, $22, $11, $00
    db $e7, $3a, $2a, $4c, $01, $b4, $7b, $46, $69, $d1, $0a, $95, $a9, $47, $60, $ff
    db $43, $22, $00, $00, $36, $9c, $06, $cf, $ff, $ff, $ff, $02, $67, $a0, $00, $12
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $f1, $22, $f3, $55, $f6, $89, $fc, $de, $fe, $ee, $fe, $13, $f8, $51, $f1, $11
    db $ff, $ff, $ee, $ed, $dd, $cc, $cb, $ba, $a9, $98, $87, $65, $54, $43, $31, $10
    db $f1, $22, $fa, $55, $b9, $fb, $f2, $de, $fe, $d2, $fe, $3d, $f8, $b1, $d1, $11
    db $01, $12, $22, $33, $35, $55, $77, $99, $55, $99, $aa, $bb, $cc, $dd, $ee, $ff
    db $43, $22, $ff, $ee, $36, $9c, $06, $cf, $ff, $ff, $ff, $02, $67, $a0, $00, $12

    db $f1, $22, $fa, $54, $29, $48, $f2, $de, $f1, $22, $f3, $55, $f6, $89, $fc, $10
    db $f1, $e0, $d0, $c0, $b0, $a0, $90, $80, $70, $60, $50, $40, $30, $20, $10, $05
    db $09, $18, $28, $38, $48, $58, $68, $78, $88, $98, $a8, $b8, $c8, $d8, $e8, $f5
    db $f3, $d2, $b2, $92, $75, $75, $75, $75, $78, $85, $88, $98, $a5, $a5, $a5, $a5
    db $89, $98, $a8, $b8, $c8, $d8, $e8, $f4, $f0, $e0, $d0, $c0, $b0, $a0, $90, $85
    db $f1, $d1, $b1, $91, $71, $51, $31, $10, $e1, $c1, $a1, $81, $61, $41, $21, $05
    db $f3, $d2, $b2, $92, $72, $52, $32, $10, $e3, $c2, $a2, $82, $62, $42, $22, $05
    db $f3, $d2, $b2, $95, $63, $43, $23, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $e9, $f8, $e8, $d5, $d8, $c5, $c8, $b5, $b8, $a5, $a8, $95, $98, $85, $88, $75
    db $cb, $e8, $d5, $d8, $c5, $c8, $b5, $b8, $a5, $a8, $95, $98, $85, $85, $88, $75
    db $89, $98, $a8, $b8, $c8, $d8, $e8, $f4, $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f5

Call_000_314e:
    ld b, $a0
    ld a, $00
    ld hl, $c000

jr_000_3155:
    ld [hl+], a
    dec b
    jr nz, jr_000_3155

    ret


    db $47, $11, $00, $50, $fa, $00, $00, $ea, $00, $00, $1b, $7a, $b3, $20, $f5, $05
    db $20, $f2, $c9

Call_000_316d:
    ld a, h
    ld [wCurrentMoneyM], a
    ld a, l
    ld [wCurrentMoneyL], a
    xor a
    ld [wCurrentMoneyH], a

Call_000_3179:
Jump_000_3179:
    xor a
    ld hl, $cccd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, wCurrentMoneyL
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cccd
    ld a, [wCurrentMoneyH]
    or a
    jr z, jr_000_3199

    ld bc, $63c0
    add hl, bc
    ld a, [de]
    add $04
    ld [de], a

jr_000_3199:
    ld bc, $d8f0
    ld a, [de]

jr_000_319d:
    inc a
    add hl, bc
    jr c, jr_000_319d

    ld bc, $2710
    add hl, bc
    dec a
    ld [de], a
    ld bc, $fc18
    inc de
    ld a, [de]

jr_000_31ac:
    inc a
    add hl, bc
    jr c, jr_000_31ac

    ld bc, $03e8
    add hl, bc
    dec a
    ld [de], a
    ld bc, $ff9c
    inc de
    ld a, [de]

jr_000_31bb:
    inc a
    add hl, bc
    jr c, jr_000_31bb

    ld bc, $0064
    add hl, bc
    dec a
    ld [de], a
    ld bc, $fff6
    inc de
    ld a, [de]

jr_000_31ca:
    inc a
    add hl, bc
    jr c, jr_000_31ca

    ld bc, $000a
    add hl, bc
    dec a
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    ld hl, $320b
    ld de, $cccd
    ld c, $04

jr_000_31df:
    ld a, [de]
    or a
    jr nz, jr_000_31ee

    push af
    ld a, $af
    ld [de], a
    pop af
    inc de
    dec c
    jr z, jr_000_3201

    jr jr_000_31df

jr_000_31ee:
    ld a, [de]
    push af
    push hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    pop hl
    pop af
    inc de
    dec c
    jr z, jr_000_3201

    jr jr_000_31ee

jr_000_3201:
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [de], a
    ret


    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld a, [de]
    dec de
    inc e
    dec e
    ld [wCurrentMoneyL], a
    xor a
    ld [wCurrentMoneyM], a
    ld [wCurrentMoneyH], a
    jp Jump_000_3179


LCDCInterruptHandler::
    push af
    push bc
    push de
    push hl
    ld a, [wMapIndex]
    ld e, a
    add a
    add e
    ld e, a
    ld d, $00
    ld hl, $3256
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc hl
    ld a, [$4000]
    push af
    ld a, [hl]
    ld [$2100], a
    ld l, e
    ld h, d
    call Call_000_3255
    pop af
    ld [$2100], a
    pop hl
    pop de
    ldh a, [rLY]
    ld c, a

jr_000_324d:
    ldh a, [rLY]
    cp c
    jr z, jr_000_324d

    pop bc
    pop af
    reti


Call_000_3255:
    jp hl


    db $d4, $32, $00, $82, $72, $1f, $82, $72, $1f, $82, $72, $1f, $82, $72, $1f, $82
    db $72, $1f, $0f, $5a, $06, $d4, $32, $00, $82, $72, $1f, $82, $72, $1f, $82, $72
    db $1f, $82, $72, $1f, $82, $72, $1f, $d4, $32, $00, $d4, $32, $00, $82, $72, $1f
    db $4f, $43, $1d, $50, $46, $1d, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4
    db $32, $00, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4, $32
    db $00, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00
    db $d4, $32, $00, $a7, $68, $09, $d4, $32, $00, $d4, $32, $00, $d4, $32, $00, $d4
    db $32, $00, $d4, $32, $00, $82, $72, $1f, $d4, $32, $00, $82, $72, $1f

    ret


    ldh a, [$ff8a]
    ld [$cd25], a
    ldh a, [$ff8b]
    or a
    ld hl, $cd26
    jr nz, jr_000_3303

    ld a, [hl]
    or a
    jr z, jr_000_32ec

    dec [hl]
    xor a
    ld [$cd24], a
    ret


jr_000_32ec:
    xor a
    ld [$cd24], a
    ld a, [$cd27]
    or a
    jr nz, jr_000_32fe

    ld a, [$cd25]
    ld [$cd24], a
    ld a, $07

jr_000_32fe:
    dec a
    ld [$cd27], a
    ret


jr_000_3303:
    ld [$cd24], a
    ld a, $12
    ld [hl], a
    ret


TimerOverflowInterruptHandler::
    push af
    ld a, $02
    ldh [rTAC], a
    ld a, $eb
    ldh [rTIMA], a
    ld a, $81
    ldh [rSC], a
    pop af
    reti


SerialTransferCompleteInterruptHandler::
    push af
    push bc
    push de
    push hl
    ld a, [$4000]
    push af
    ld a, $1f
    ld [$2100], a
    call $634e
    pop af
    ld [$2100], a
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld bc, $0740
    ld c, e
    ld b, b
    rlca
    sub a
    ld b, b

    db $07, $e3

    db $40, $07, $2f, $41, $07, $7b, $41, $07, $c7, $41, $07, $13, $42, $07, $f7, $42
    db $07, $43, $43, $07, $db, $43, $07, $27, $44, $07, $73, $44, $07, $bf, $44, $07
    db $0b, $45, $07, $57, $45, $07, $a3, $45, $07, $ef, $45, $07, $3b, $46, $07, $87
    db $46, $07, $d3, $46, $07, $1f, $47, $07, $03, $48, $07, $4f, $48, $07, $9b, $48
    db $07, $33, $49, $07, $cb, $49, $07, $17, $4a, $07, $63, $4a, $07, $af, $4a, $07
    db $fb, $4a, $07, $df, $4b, $07, $77, $4c, $07, $c3, $4c, $07, $5b, $4d, $07, $8b
    db $4e, $07, $23, $4f, $07, $bb, $4f, $07, $53, $50, $07, $83, $51, $07, $67, $52
    db $07, $b3, $52, $07, $7b, $54, $07, $5f, $55, $07, $bf, $57, $07, $ef, $58, $07
    db $d3, $59, $07, $9b, $5b, $07, $47, $5e, $07, $77, $5f, $07, $c3, $5f, $07, $3f
    db $61, $07, $d7, $61, $07, $bb, $62, $07, $07, $63, $07, $37, $64, $07, $cf, $64
    db $07, $67, $65, $07, $4b, $66, $07, $e3, $66, $07, $7b, $67, $07, $f7, $68, $07
    db $43, $69, $07, $8f, $69, $07, $db, $69, $07, $27, $6a, $07, $73, $6a, $07, $bf
    db $6a, $07, $6b, $47, $07, $0b, $6b, $07, $57, $6b, $07, $b7, $47, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9
    db $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9
    db $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9
    db $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9
    db $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9
    db $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70
    db $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07, $d9, $70, $07
    db $d9, $70, $07, $d9, $70, $07, $23, $43, $0a, $6f, $43, $0a, $bb, $43, $0a, $07
    db $44, $0a, $53, $44, $0a, $9f, $44, $0a, $eb, $44, $0a, $37, $45, $0a, $83, $45
    db $0a, $cf, $45, $0a, $1b, $46, $0a, $67, $46, $0a, $b3, $46, $0a, $ff, $46, $0a
    db $4b, $47, $0a, $97, $47, $0a, $e3, $47, $0a, $2f, $48, $0a, $5f, $49, $0a, $ab
    db $49, $0a, $f7, $49, $0a, $43, $4a, $0a, $8f, $4a, $0a, $db, $4a, $0a, $27, $4b
    db $0a, $73, $4b, $0a, $bf, $4b, $0a, $0b, $4c, $0a, $57, $4c, $0a, $a3, $4c, $0a
    db $ef, $4c, $0a, $3b, $4d, $0a, $8d, $6d, $0c, $55, $6f, $0c, $b5, $71, $0c, $01
    db $72, $0c, $99, $72, $0c, $c9, $73, $0c, $ad, $74, $0c, $a5, $77, $0c, $3d, $78
    db $0c, $e7, $4f, $0a, $6d, $79, $0c, $b9, $79, $0c, $05, $7a, $0c, $51, $7a, $0c
    db $9d, $7a, $0c, $e9, $7a, $0c, $35, $7b, $0c, $81, $7b, $0c, $cd, $7b, $0c, $9b
    db $4f, $0a, $ef, $56, $10, $3b, $57, $10, $87, $57, $10, $d3, $57, $10, $1f, $58
    db $10, $6b, $58, $10, $b7, $58, $10, $03, $59, $10, $4f, $59, $10, $9b, $59, $10
    db $e7, $59, $10, $33, $5a, $10, $7f, $5a, $10, $cb, $5a, $10, $17, $5b, $10, $63
    db $5b, $10, $af, $5b, $10, $fb, $5b, $10, $93, $5c, $10, $0f, $5e, $10, $5b, $5e
    db $10, $a7, $5e, $10, $f3, $5e, $10, $3f, $5f, $10, $03, $4f, $0a, $4f, $4f, $0a
    db $93, $52, $0a, $df, $52, $0a, $8b, $5f, $10, $8f, $60, $10, $8f, $60, $10, $8f
    db $60, $10, $8f, $60, $10, $8f, $60, $10, $8f, $60, $10, $8f, $60, $10, $8f, $60
    db $10, $8f, $60, $10, $8f, $60, $10, $8f, $60, $10, $8f, $60, $10, $b1, $7d, $0c

Call_000_362c:
    ld a, [$cb14]
    or a
    ret nz

    ld a, [$cb15]
    or a
    ret nz

    ld a, [$cb16]
    or a
    ret nz

    ld a, [$cb17]
    or a
    ret nz

    ld a, [$cb18]
    or a
    ret nz

    ld a, [$cb19]
    or a
    ret nz

    call Call_000_3820
    ld a, [$cb52]
    cp $ff
    jp z, Jump_000_3762

    ld a, [$cb52]
    cp $3c
    call z, Call_000_37e6
    ld a, [$cb52]
    ld [$cb4d], a
    ld l, a
    ld h, $00
    add hl, hl
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld de, $3332
    add hl, de
    ld a, [$4000]
    ldh [$ffa4], a
    inc hl
    inc hl
    ld a, [hl-]
    ld [$2100], a
    dec hl
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    ld a, [$cb54]
    ld d, a
    ld a, [$cb53]
    sla a
    rl d
    ld e, a
    add hl, de
    ld a, [$cb55]
    or a
    call z, Call_000_3838
    inc hl
    ld a, [hl-]
    cp $ff
    jr z, jr_000_36fc

    cp $fe
    jp z, Jump_000_3729

    cp $00
    jr z, jr_000_36aa

    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld h, a
    ld l, b

jr_000_36aa:
    ld a, [hl]
    cp $ff
    jr z, jr_000_36e9

    ld c, a
    ld a, [$cb55]
    or $80
    ld e, a
    push af
    ld hl, $4001
    ld a, $11
    ld d, a
    call Call_000_3e9a
    pop af
    ld b, a
    ld [$cb63], a
    ld a, $ff
    ld [$cb64], a
    ld de, $cb63
    ld a, b
    and $10
    sla a
    sla a
    ld hl, $9c22
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, b
    and $0f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_07ec

jr_000_36e9:
    ld hl, $cb53
    ld bc, $0001
    call Call_000_0a27
    ld hl, $cb55
    inc [hl]
    ldh a, [$ffa4]
    ld [$2100], a
    ret


jr_000_36fc:
    ld a, [$cb52]
    cp $04
    jr nz, jr_000_3706

    call Call_000_3d35

jr_000_3706:
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [$4000]
    call Call_000_1f96
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Jump_000_3729:
    ld a, [$cb69]
    or a
    jr z, jr_000_3738

    call Call_000_3892
    ldh a, [$ffa4]
    ld [$2100], a
    ret


jr_000_3738:
    ldh a, [$ff8b]
    and $01
    jr z, jr_000_375c

    call Call_000_393d
    ld hl, $cb53
    ld bc, $0001
    call Call_000_0a27
    xor a
    ld [$cb55], a
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [$4000]
    call Call_000_1f96

jr_000_375c:
    ldh a, [$ffa4]
    ld [$2100], a
    ret


Jump_000_3762:
    ld a, [wTimePaused]
    or a
    ret z

    ld a, [$cb78]
    or a
    ret nz

    ld a, [$cb4d]
    cp $ff
    ret z

    ldh a, [$ff8b]
    and $02
    jr nz, jr_000_3779

    ret


jr_000_3779:
    ld a, [$cb4d]
    cp $00
    jr z, jr_000_3796

    ld a, [$cb4d]
    cp $01
    jr z, jr_000_37a4

    ld a, [$cb4d]
    cp $3c
    jr z, jr_000_37c0

    ld a, [$cb4d]
    cp $03
    jr z, jr_000_37c0

    ret


jr_000_3796:
    call Call_000_3e54
    ld a, $ff
    ld [$cb4d], a
    ld a, $51
    call Call_000_23d5
    ret


jr_000_37a4:
    call Call_000_3e54
    xor a
    call Call_000_3e80
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    ld a, $51
    call Call_000_23d5
    ret


jr_000_37c0:
    ld a, $01
    call Call_000_3e80
    xor a
    ld [$cb58], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    xor a
    ld [$cb5f], a
    ld a, $01
    ld [$cb57], a
    ld a, [$cbea]
    ld [$b906], a
    ld a, $51
    call Call_000_23d5
    ret


Call_000_37e6:
    ld a, [$cb55]
    cp $20
    ret nz

    ldh a, [$ff8b]
    and $02
    ret z

    ld a, $ff
    ld [$cb52], a
    ld a, $01
    call Call_000_3e80
    xor a
    ld [$cb58], a
    ld [$cb55], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb5f], a
    ld a, $ff
    ld [$cb4d], a
    xor a
    ld [$cb5f], a
    ld a, $01
    ld [$cb57], a
    pop hl
    ld a, $51
    call Call_000_23d5
    ret


Call_000_3820:
    ld a, [$cbeb]
    or a
    ret z

    ld a, [$c0a8]
    and $01
    ret z

    ld a, [$cbeb]
    dec a
    ld [$cbeb], a
    or a
    ret nz

    call Call_000_3e54
    ret


Call_000_3838:
    ld a, [$cb53]
    add $05
    ld [$cb53], a
    ld a, [$cb54]
    adc $00
    ld [$cb54], a
    ld a, [hl+]
    ld [$cb69], a
    ld a, [hl+]
    ld [$cb6a], a
    ld a, [hl+]
    ld [$cb6b], a
    ld a, [hl+]
    ld [$cb6c], a
    ld a, [hl+]
    ld [$cb6d], a
    inc hl
    ld a, [hl+]
    ld [$cb6e], a
    ld a, [hl+]
    ld [$cb6f], a
    inc hl
    inc hl
    xor a
    ld [$cb72], a
    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [de], a
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [de], a
    ret


Call_000_3892:
    ld a, [$cb72]
    cp $00
    jr z, jr_000_38ce

    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $20
    jr z, jr_000_3902

    call Call_000_3edc
    xor a
    ld [$cb72], a
    jr jr_000_3902

jr_000_38ce:
    ld a, [$cb6c]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6d]
    ld de, $9c22
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [de], a
    ldh a, [$ff8b]
    and $10
    jr z, jr_000_3902

    ld a, $01
    ld [$cb72], a
    call Call_000_3edc

jr_000_3902:
    ldh a, [$ff8b]
    and $01
    ret z

    call Call_000_3ed0
    ld hl, $cb6a
    ld a, [$cb72]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr z, jr_000_392e

    ld c, $26
    call Call_000_071e
    ld a, l
    ld [$cb53], a
    ld a, h
    ld [$cb54], a
    call Call_000_393d
    xor a
    ld [$cb55], a

jr_000_392e:
    ld a, [$cb6e]
    ld l, a
    ld a, [$cb6f]
    ld h, a
    ld a, [$4000]
    call Call_000_1f96
    ret


Call_000_393d:
    ld a, [$cb5c]
    ld c, a
    ld hl, $9c22
    ld b, $04

jr_000_3946:
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ld [hl+], a
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3946

    ld hl, $9c62
    ld b, $04

jr_000_395a:
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ld [hl+], a
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_395a

    ld hl, $9c32
    call Call_000_0d2b
    ld a, c
    ld [hl], a
    ld hl, $9c50
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ld hl, $9c72
    call Call_000_0d2b
    ld a, c
    ld [hl+], a
    ret


    db $22, $9c, $2a, $9c, $62, $9c, $6a, $9c

Call_000_3994:
    ld a, [$cb57]
    cp $01
    jp z, Jump_000_3aad

    cp $02
    jp z, Jump_000_3a12

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_39de

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_39f4

    cp $10
    jr z, jr_000_3a03

    ld a, [$b906]
    cp $00
    jr z, jr_000_39cb

    call Call_000_0d2b
    ld a, [$cb5d]
    ld [$9c6d], a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_39cb:
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [$9c62], a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [$9c6d], a
    ret


jr_000_39de:
    call Call_000_3e2a
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    call Call_000_3ed0
    ret


jr_000_39f4:
    ld a, [$b906]
    cp $01
    ret nz

    ld a, $00
    ld [$b906], a
    call Call_000_3edc
    ret


jr_000_3a03:
    ld a, [$b906]
    cp $00
    ret nz

    ld a, $01
    ld [$b906], a
    call Call_000_3edc
    ret


Jump_000_3a12:
    ret


    db $f0, $8b, $e6, $01, $20, $38, $f0, $8b, $fe, $20, $28, $70, $fe, $10, $ca, $9e
    db $3a, $fa, $05, $b9, $fe, $00, $28, $13, $cd, $2b, $0d, $fa, $5d, $cb, $ea, $6d
    db $9c, $cd, $2b, $0d, $fa, $5c, $cb, $ea, $62, $9c, $c9, $cd, $2b, $0d, $fa, $5d
    db $cb, $ea, $62, $9c, $cd, $2b, $0d, $fa, $5c, $cb, $ea, $6d, $9c, $c9, $fa, $05
    db $b9, $b7, $20, $22, $af, $ea, $56, $cb, $ea, $57, $cb, $cd, $2a, $3e, $fa, $06
    db $b9, $b7, $c0, $3e, $04, $ea, $52, $cb, $cd, $39, $3e, $af, $ea, $58, $cb, $ea
    db $57, $cb, $cd, $d0, $3e, $c9, $cd, $2a, $3e, $3e, $01, $ea, $52, $cb, $ea, $57
    db $cb, $cd, $39, $3e, $af, $ea, $58, $cb, $cd, $d0, $3e, $c9, $fa, $05, $b9, $fe
    db $01, $c0, $3e, $00, $ea, $05, $b9, $cd, $dc, $3e, $c9, $fa, $05, $b9, $fe, $00
    db $c0, $3e, $01, $ea, $05, $b9, $cd, $dc, $3e, $c9

Jump_000_3aad:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_000_3b35

    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3ae7

    ld hl, $398c
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [hl], a
    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3aef

    cp $10
    jr z, jr_000_3b00

    cp $40
    jr z, jr_000_3b11

    cp $80
    jr z, jr_000_3b23

    ret


jr_000_3ae7:
    ld hl, $cb57
    inc [hl]
    call Call_000_3b69
    ret


jr_000_3aef:
    ld a, [$cb58]
    and $01
    ret z

    call Call_000_3b4e
    ld hl, $cb58
    dec [hl]
    call Call_000_3edc
    ret


jr_000_3b00:
    ld a, [$cb58]
    and $01
    ret nz

    call Call_000_3b4e
    ld hl, $cb58
    inc [hl]
    call Call_000_3edc
    ret


jr_000_3b11:
    ld a, [$cb58]
    and $02
    ret z

    call Call_000_3b4e
    ld hl, $cb58
    dec [hl]
    dec [hl]
    call Call_000_3edc
    ret


jr_000_3b23:
    ld a, [$cb58]
    and $02
    ret nz

    call Call_000_3b4e
    ld hl, $cb58
    inc [hl]
    inc [hl]
    call Call_000_3edc
    ret


Jump_000_3b35:
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    ld a, $ff
    ld [$cb52], a
    call Call_000_3e54
    ret


Call_000_3b4e:
    ld hl, $398c
    ld a, [$cb58]
    sla a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld h, a
    ld l, e
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [hl], a
    ret


Call_000_3b69:
    ld a, [$cb58]
    cp $00
    jr z, jr_000_3b92

    cp $01
    jp z, Jump_000_3c17

    cp $02
    jr z, jr_000_3bd7

    ld a, [$b906]
    ld [$cbea], a
    call Call_000_3e2a
    ld a, $03
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ret


jr_000_3b92:
    call Call_000_3ed0
    xor a
    ld [wTimePaused], a
    ld [$cb57], a
    call Call_000_3e2a
    ld a, $01
    ld [$cbff], a
    ld a, $3c
    ld [$c906], a
    xor a
    ld [$c908], a
    ld a, $13
    call Call_000_166a
    ld a, $3e
    ld [$c912], a
    ld a, [$c620]
    ld [$cb87], a
    ld a, $00
    ld [$c620], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


jr_000_3bd7:
    call Call_000_3ed0
    xor a
    ld [wTimePaused], a
    ld [$cb57], a
    call Call_000_3e2a
    ld a, $50
    ld [$cbfe], a
    xor a
    ld [$c908], a
    ld a, $13
    call Call_000_166a
    ld a, $3e
    ld [$c912], a
    ld a, [$c620]
    ld [$cb87], a
    ld a, $00
    ld [$c620], a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


Jump_000_3c17:
    ld a, $3c
    call Call_000_3e80
    ret


Call_000_3c1d:
    ld a, [$cb8f]
    or a
    jr z, jr_000_3c2c

    ld hl, $431d
    ld a, $08
    call Call_000_1f96
    ret


jr_000_3c2c:
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb57]
    or a
    jr z, jr_000_3c3c

    call Call_000_3994
    ret


jr_000_3c3c:
    ld a, [wTimePaused]
    cp $00
    jr z, jr_000_3ca0

    ldh a, [$ff8b]
    cp $04
    jr nz, jr_000_3c66

    ld a, [$cb5f]
    or a
    ret nz

    call Call_000_3e2a
    ld a, $01
    ld [wTimePaused], a
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    xor a
    ld [$cb58], a
    call Call_000_3e39
    ret


jr_000_3c66:
    call Call_000_3d08
    ldh a, [$ff8b]
    and $01
    ret z

    xor a
    ldh [$ff8b], a
    ld a, $01
    ld [$cbf6], a
    xor a
    ld [wTimePaused], a
    ld [$cbeb], a
    ld [$cb78], a
    ld [$cb5f], a
    ld a, [$b88c]
    or a
    ret nz

    call Call_000_3e2a
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


jr_000_3ca0:
    xor a
    ld [$cc1b], a
    ldh a, [$ff8b]
    and $04
    ret z

    call Call_000_3cce
    xor a
    ld [$cb14], a
    ld [$cb15], a
    ld [$cb16], a
    ld a, $00
    call Call_000_166a
    call Call_000_3e39
    ld a, $00
    ld [$cb52], a
    ld a, $03
    ld [$c912], a
    ld a, $01
    ld [wTimePaused], a
    ret


Call_000_3cce:
    ld a, [$c912]
    or a
    jr nz, jr_000_3d06

    ld a, [$c90d]
    or a
    jr nz, jr_000_3d06

    ld a, [$c620]
    or a
    jr nz, jr_000_3d06

    ld a, [$c640]
    or a
    jr nz, jr_000_3d06

    ld a, [$cb84]
    or a
    jr nz, jr_000_3d06

    ld a, [wGrabbingDog3]
    or a
    jr nz, jr_000_3d06

    ld a, [$c602]
    cp $04
    jr z, jr_000_3d06

    cp $05
    jr z, jr_000_3d06

    cp $06
    jr z, jr_000_3d06

    cp $07
    jr z, jr_000_3d06

    ret


jr_000_3d06:
    pop hl
    ret


Call_000_3d08:
    ld a, [$b88c]
    or a
    ret z

    ld a, [$cbf6]
    or a
    ret nz

    ld a, $b4
    ld [$cbf6], a
    ret


Call_000_3d18:
    ld a, [$b906]
    or a
    ret nz

    ld a, $04
    ld [$cb52], a
    call Call_000_3e39
    ld a, $01
    ld [$cc1b], a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld [$cb5f], a
    ret


Call_000_3d35:
    ld hl, $9c30
    call Call_000_0d2b
    ld a, $8e
    ld [hl+], a
    inc a
    ld [hl], a
    call Call_000_0d2b
    ld a, $90
    ld [$9c32], a
    inc a
    ld [$9c50], a
    call Call_000_0d2b
    ld a, $9b
    ld [$9c51], a
    inc a
    ld [$9c52], a
    call Call_000_0d2b
    ld a, $9d
    ld [$9c70], a
    inc a
    ld [$9c71], a
    call Call_000_0d2b
    ld a, $9f
    ld [$9c72], a
    ld hl, $b8f8
    ld a, [$b8fb]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_000_3d81

    ld b, $1f
    jr jr_000_3d8e

jr_000_3d81:
    ld c, a
    ld hl, $1b22
    ld b, $00

jr_000_3d87:
    ld a, [hl+]
    cp c
    jr z, jr_000_3d8e

    inc b
    jr jr_000_3d87

jr_000_3d8e:
    ld a, b
    add a
    ld hl, $3dea
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld hl, $6c3f
    add hl, bc
    ld a, [$4000]
    ldh [$ffa5], a
    ld a, $08
    ld [$2100], a
    ld de, $88e0
    ld b, $02

jr_000_3db0:
    ld c, $10

jr_000_3db2:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3db2

    dec b
    jr nz, jr_000_3db0

    ld de, $8900
    ld b, $02

jr_000_3dc3:
    ld c, $10

jr_000_3dc5:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3dc5

    dec b
    jr nz, jr_000_3dc3

    ld de, $89b0
    ld b, $05

jr_000_3dd6:
    ld c, $10

jr_000_3dd8:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3dd8

    dec b
    jr nz, jr_000_3dd6

    ldh a, [$ffa5]
    ld [$2100], a
    ret


    db $90, $00, $20, $01, $b0, $01, $40, $02, $60, $03, $f0, $03, $80, $04, $10, $05
    db $d0, $0b, $30, $0f, $00, $10, $d0, $02, $a0, $05, $30, $06, $f0, $0c, $60, $0c
    db $80, $0d, $c0, $06, $50, $07, $e0, $07, $70, $08, $00, $09, $90, $09, $20, $0a
    db $b0, $0a, $40, $0b, $b0, $11, $90, $10, $20, $11, $10, $0e, $a0, $0e, $00, $00

Call_000_3e2a:
jr_000_3e2a:
    call Call_000_0d2b
    ld a, $c3
    ld [$c0a2], a
    ldh [rLCDC], a
    xor a
    ld [$cb4c], a
    ret


Call_000_3e39:
    call Call_000_393d
    ld a, $07
    ldh [hWindowX], a
    ld a, $68
    ldh [hWindowY], a
    call Call_000_0d2b
    ld a, $e3
    ld [$c0a2], a
    ldh [rLCDC], a
    ld a, $01
    ld [$cb4c], a
    ret


Call_000_3e54:
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [wTimePaused], a
    ld [$cb5f], a
    ld a, [$b906]
    or a
    jr nz, jr_000_3e2a

    ld a, $04
    ld [$cb52], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ret


Call_000_3e80:
    ld b, a
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, b
    ld [$cb52], a
    ld a, $01
    ld [wTimePaused], a
    ld [$cb5f], a
    ld [$cc1b], a
    call Call_000_3e39
    ret


Call_000_3e9a:
    ld a, [$4000]
    push af
    ld a, d
    ld [$2100], a
    call Call_000_3eaa
    pop af
    ld [$2100], a
    ret


Call_000_3eaa:
    ld a, c
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, bc
    push hl
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld c, $10

jr_000_3ec6:
    call Call_000_0d2b
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_3ec6

    ret


Call_000_3ed0:
    push hl
    push de
    push bc
    ld a, $42
    call Call_000_23d5
    pop bc
    pop de
    pop hl
    ret


Call_000_3edc:
    push hl
    push de
    push bc
    ld a, $48
    call Call_000_23d8
    pop bc
    pop de
    pop hl
    ret


    ld a, $22
    jr jr_000_3f0a

    ld a, $2a
    jr jr_000_3f0a

    ld a, $26
    jr jr_000_3f0a

    ld a, $17
    jr jr_000_3f0a

    ld a, $00
    jr jr_000_3f0a

    ld a, $04
    jr jr_000_3f0a

    ld a, $54
    jr jr_000_3f0a

    db $3e, $1e, $18, $02

    ld a, $1b

jr_000_3f0a:
    call Call_000_23cf
    ret


    ld a, $08
    call Call_000_23d2
    ret


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
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
