; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_1f77


    rst $38

Jump_000_0004:
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    jp Jump_000_1f83


    ret


Jump_000_000c:
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    ret


    rst $38
    rst $38
    rst $38

Jump_000_0024:
    rst $38
    rst $38

Jump_000_0026:
    rst $38
    rst $38

RST_28::
    ret


    rst $38
    rst $38
    rst $38

Jump_000_002c:
    rst $38
    rst $38
    rst $38

Jump_000_002f:
    rst $38

RST_30::
    ret


    rst $38

Call_000_0032:
    rst $38

Call_000_0033:
    rst $38

Call_000_0034:
Jump_000_0034:
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    add l
    ld l, a
    ld a, $00

Jump_000_003c:
    adc h
    ld h, a
    ret


    rst $38

VBlankInterrupt::
    call VBlankInterruptHandler
    reti


Jump_000_0044:
    rst $38

Jump_000_0045:
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp LCDCInterruptHandler


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp TimerOverflowInterruptHandler


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp SerialTransferCompleteInterruptHandler


    rst $38
    rst $38
    rst $38

Call_000_005e:
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    ld a, [wMapIndex]

Jump_000_0064:
    or a
    rst $08
    dec c

Jump_000_0067:
    ccf

Call_000_0068:
    nop
    ld b, b
    rrca

Jump_000_006b:
    nop
    ld b, b

Jump_000_006d:
    rrca
    nop
    ld b, b

Jump_000_0070:
    rrca
    nop
    ld b, b
    rrca

Call_000_0074:
    nop
    ld b, b
    rrca
    nop
    add sp, $3e
    nop
    db $ec

Jump_000_007c:
    ld a, $00
    ldh a, [$ff3e]

Jump_000_0080:
    nop
    ldh a, [$ff3e]
    nop
    ldh a, [$ff3e]
    nop
    ldh a, [$ff3e]
    nop
    ldh a, [$ff3e]
    nop
    dec c
    ccf

Call_000_008f:
    nop

Jump_000_0090:
    dec c
    ccf
    nop
    db $f4
    ld a, $00
    ld hl, sp+$3e
    nop
    ld hl, sp+$3e
    nop
    db $fc
    ld a, $00

Jump_000_009f:
    nop
    ccf
    nop
    nop

Jump_000_00a3:
    ccf
    nop
    nop
    ccf
    nop

Call_000_00a8:
    nop
    ccf
    nop
    nop
    ccf
    nop

Jump_000_00ae:
    nop
    ccf
    nop
    nop
    ccf
    nop
    nop
    ccf
    nop
    add sp, $3e
    nop
    db $fc
    ld a, $00
    db $fc
    ld a, $00

Call_000_00c0:
    add sp, $3e
    nop
    add sp, $3e
    nop
    dec c
    ccf
    nop
    dec c

Jump_000_00ca:
    ccf

Call_000_00cb:
    nop

Call_000_00cc:
    add sp, $3e
    nop
    db $fc
    ld a, $00
    dec c
    ccf
    nop

Call_000_00d5:
Jump_000_00d5:
    ld [$003f], sp
    ld c, $3f
    nop

Jump_000_00db:
    ld c, $3f
    nop

Call_000_00de:
    dec c
    ccf
    nop
    ld c, $3f

Call_000_00e3:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00ec:
    rst $38
    rst $38
    rst $38

Call_000_00ef:
    rst $38

Jump_000_00f0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00fc:
Jump_000_00fc:
    rst $38

Call_000_00fd:
    rst $38
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

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
    call CopyDMA
    xor a
    ldh [rBGP], a
    xor a
    ldh [rOBP0], a
    xor a
    ldh [rOBP1], a
    call Call_000_2331
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

Jump_000_01af:
    ldh [rIE], a
    ld sp, $dfef
    ld hl, $ff80
    ld bc, $007f
    call ClearMem
    ld a, $02
    ldh [$ff8d], a

Call_000_01c1:
    call Call_000_2071
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $8000
    ld bc, $1fff
    call ClearMem
    ld hl, $c000

Call_000_01d5:
    ld bc, $1cff
    call ClearMem
    call CopyDMA
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

Jump_000_01fd:
    ld l, $31
    ld h, $23
    ld a, $00

Call_000_0203:
    call Call_000_1f96
    pop af

Jump_000_0207:
    pop hl
    push hl
    push af
    ld l, $bd
    ld h, $77
    ld a, $07

Jump_000_0210:
    call Call_000_1f96
    pop af

Call_000_0214:
Jump_000_0214:
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

Jump_000_0245:
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

Call_000_02e8:
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

Call_000_02fe:
    ld de, $c500

Call_000_0301:
    call Call_000_20f0

Jump_000_0304:
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

Call_000_0339:
    and $10
    jr z, jr_000_0346

Jump_000_033d:
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

UD3::
    db $cc, $50, $02, $18, $41, $03, $14, $41, $04, $b8, $40, $05, $34, $4d, $06, $d7
    db $40, $10, $1c, $41, $0e, $ab, $55, $0e, $a2, $5b, $0e, $3e, $62, $0e, $2d, $67
    db $0e, $c9, $4f, $10, $dd, $4f, $10, $74, $64, $0f, $97, $40, $1d, $33, $44, $1d
    db $a3, $47, $1d, $b9, $40, $09, $c6, $46, $09, $75, $4c, $09, $a2, $4d, $09, $ab
    db $4e, $09, $9d, $50, $09, $ea, $51, $09, $5a, $55, $09, $4c, $56, $09, $28, $53
    db $1d, $28, $53, $1d, $a6, $60, $09, $56, $62, $09, $0f, $58, $1d, $d0, $63, $09
    db $af, $40, $1f, $28, $53, $1d, $fe, $52, $1d, $bb, $6c, $0f, $3f, $71, $07, $4d
    db $70, $1d, $64, $41, $02, $ba, $74, $1d, $c9

CheckTime::
    ld a, [OutsideFarm]

Jump_000_03fc:
    or a
    ret nz

    ld a, [TransitionRelated]
    or a
    ret nz

NextTimerSecond::
    ld a, [TimePaused]
    or a
    ret nz

    ld a, [sTimerSeconds]
    inc a
    ld [sTimerSeconds], a

Jump_000_040f:
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
    ld de, UD4
    add hl, de
    ld a, [hl+]
    ld [$b916], a
    ld a, [hl+]
    ld [$b917], a
    ld a, [hl+]
    ld [$b918], a
    ld a, [hl+]
    ld [$b919], a
    ld a, [TimePaused]
    or a
    ret nz

    ld a, [$b906]
    or a
    ret nz

    ld a, [$b916]
    ld c, a
    ld e, $84
    ld hl, $4001

Call_000_04c0:
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


UD4::
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
    ld de, UD5
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

Jump_000_057b:
    ld h, a
    ld a, [hl]
    ld [$b91a], a
    ld a, [TimePaused]
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

UD5::
    db $0a, $0b, $0a, $0c, $0a, $0d, $0a, $0e, $0a, $0f, $0a, $1a, $0a, $1b, $0a, $1c
    db $0a, $1d, $0b, $0a, $0b, $0b, $0b, $0c, $0b, $0d, $0b, $0e, $0b, $0f, $0b, $1a
    db $0b, $1b, $0b, $1c, $0b, $1d, $0c, $0a, $0c, $0b, $0c, $0c, $0c, $0d, $0c, $0e
    db $0c, $0f, $0c, $1a, $0c, $1b, $0c, $1c, $0c, $1d, $0d, $0a

Call_000_05e2:
    ld a, [sCurrentSeason]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, UD6
    add hl, de
    ld a, [hl+]
    ld [$b912], a
    ld a, [hl+]
    ld [$b913], a
    ret


UD6::
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


UD7::
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


UD8::
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


Call_000_0661:
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

Jump_000_06b5:
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
    ldh a, [CameraY]
    ldh [rSCY], a
    ldh a, [CameraX]
    ldh [rSCX], a
    ldh a, [WindowY]
    ldh [rWY], a
    ldh a, [WindowX]
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


Call_000_074c:
Jump_000_074c:
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
    ld hl, PaletteRelated
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


Call_000_077d:
    ld a, l
    ldh [$ffa0], a
    ld a, h
    ldh [$ffa1], a
    call Call_000_0629

jr_000_0786:
    ldh a, [$ffa1]
    ld [hl+], a
    ldh a, [$ffa0]
    ld [hl+], a
    ld a, b
    ld [hl+], a
    push bc

jr_000_078f:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_078f

    pop bc
    ldh a, [$ff97]
    add b
    add $03
    ldh [$ff97], a
    ldh a, [$ffa0]
    add $20
    ldh [$ffa0], a
    ldh a, [$ffa1]
    adc $00
    ldh [$ffa1], a
    dec c
    jr nz, jr_000_0786

    ld [hl], $00
    ret


    ld a, [$4000]
    push af
    ldh a, [$ffa4]
    ld [$2100], a

Jump_000_07b8:
    call Call_000_0767
    pop af
    ld [$2100], a
    ret


Call_000_07c0:
    ld a, [$4000]
    push af
    ldh a, [$ffa4]

Call_000_07c6:
    ld [$2100], a
    call Call_000_077d
    pop af
    ld [$2100], a
    ret


jr_000_07d1:
    ld a, [de]
    inc de
    cp $ff
    ret z

    cp $45

Jump_000_07d8:
    jr z, jr_000_07e1

    cp $43
    jr z, jr_000_07e1

    ld [hl+], a
    jr jr_000_07d1

jr_000_07e1:
    ld bc, $ffe0
    add hl, bc
    ld [hl], a
    ld bc, $0020
    add hl, bc
    jr jr_000_07d1

Call_000_07ec:
    push hl
    push de
    call Call_000_081a
    pop de
    pop hl
    push hl
    call Call_000_0629
    ld a, b

Call_000_07f8:
    pop bc
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl+], a
    add $03

Call_000_0800:
    ld b, a

jr_000_0801:
    ld a, [de]

Call_000_0802:
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

    ld a, [$4000]
    push af
    ld a, b
    ld [$2100], a
    ld c, [hl]
    pop af
    ld [$2100], a
    ret


jr_000_0848:
    ld a, [hl]
    cp $ff
    ret z

    push hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    pop de
    pop hl
    call Call_000_211f
    pop hl
    ld a, $07
    rst $38
    jr jr_000_0848

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


    daa
    ld a, [hl]
    db $db
    call z, $1430
    ld c, a
    sbc h
    adc b
    jp nc, $7290

    add hl, hl
    pop bc
    ld a, $7a
    add d
    inc l
    ld b, h
    ld d, d
    ld h, b
    ret


    adc c
    dec b
    inc de
    ld h, a
    ld a, [bc]
    or d
    ldh [c], a
    rst $00
    ld l, b
    db $dd
    ld h, l
    ld l, l
    jp nz, $8366

    sub a
    ld d, e
    ld d, h
    ld [hl-], a
    and a
    ldh a, [$ffe0]
    pop de
    ret z

    ld [$2476], sp
    or $a3
    or a
    ld d, a
    ld h, d
    ld [hl], l
    ei
    ld e, h
    add c
    or [hl]
    rlca
    sub $b5
    jp c, $cea9

Call_000_08e0:
    call c, $7139
    call $5977
    xor h
    add b
    add a
    ld c, c
    sub c
    add h
    ld e, d
    db $e4

Jump_000_08ee:
    ld [hl+], a

jr_000_08ef:
    db $d3
    dec e
    ld c, l
    jp $0112


    ld hl, sp-$65
    adc [hl]
    db $eb
    adc l
    ld d, c
    ld h, c
    and b
    cp e
    pop hl

Call_000_08ff:
    ld a, [de]
    bit 4, h
    push bc
    ret c

    ld l, e
    ld e, a
    ld e, e
    jp z, $02a5

    jr jr_000_092b

    db $fd
    sub d
    sbc d
    ret nz

    dec l
    ccf
    ld [hl], h
    ld a, [hl+]
    ld h, $3a

Call_000_0916:
    xor a
    inc c
    ld a, c
    db $f4
    ld c, h
    nop
    ld b, a
    ld a, a
    rla
    rst $28
    rst $30
    or h
    ld e, l
    cp c
    dec h
    sbc a
    ld c, d
    rrca
    cp h
    ld l, [hl]
    sbc b

jr_000_092b:
    db $ed
    ld d, [hl]
    ld [hl], $ec
    ld b, c
    inc hl
    cp d
    add sp, $2b
    ld [$9dee], a
    dec c
    ld e, $0e
    sbc [hl]
    cp $4e
    ld a, b
    add $8f
    xor l

jr_000_0941:
    ld sp, $1b2e
    cpl
    ldh a, [c]

jr_000_0946:
    push af
    pop af
    add [hl]
    adc d
    scf
    ld b, $4b
    sub h
    dec bc
    and $de
    ld [hl], e
    ld [hl], b
    rst $38
    and c
    db $10
    jr c, jr_000_0941

    sub [hl]
    dec [hl]
    ld d, l
    ld l, d
    ld h, e
    db $fc
    ld a, h
    xor b
    push hl
    jr nz, jr_000_08ef

    ld a, [$bdb0]
    ld e, b
    ld de, $a248
    ld b, l
    jr z, jr_000_0946

    ld b, b
    dec d
    or e
    and h
    add hl, de
    db $e3
    ld e, [hl]
    rst $20
    ld b, e
    cp [hl]
    inc b
    add l
    rst $10
    di
    adc e
    ld l, h
    dec sp
    ld d, $a6
    push de
    rst $08
    inc a
    ld hl, $33ab
    sub e
    ld a, e
    inc bc
    ld b, [hl]
    cp b
    inc [hl]
    call nz, $b142
    inc e
    xor [hl]
    ld d, b
    ld sp, hl
    xor d
    ld l, a
    dec a
    ret nc

    ld l, c
    sbc c
    cp a
    call nc, $df7d
    sub l
    add hl, bc

Call_000_099f:
    ldh [$ffa4], a
    xor a
    ldh [$ffa6], a
    bit 7, h
    jr z, jr_000_09b2

    inc a
    ldh [$ffa6], a
    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

jr_000_09b2:
    ld e, l
    ld d, h
    xor a
    ldh [$ffa5], a
    ld c, a
    ld h, a
    ld l, a
    ldh a, [$ffa4]
    ld b, $08

jr_000_09be:
    rrca
    jr nc, jr_000_09cb

    add hl, de
    ldh [$ffa4], a
    ldh a, [$ffa5]
    adc c
    ldh [$ffa5], a
    ldh a, [$ffa4]

jr_000_09cb:
    sla e
    rl d
    rl c
    dec b
    jr nz, jr_000_09be

    ldh a, [$ffa5]
    ld c, a
    ret


    ldh a, [$ffa6]
    or a
    jr z, jr_000_09f0

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    ld a, c
    cpl
    ld c, a
    ld a, $01

Call_000_09e8:
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    xor a
    adc c
    ld c, a

jr_000_09f0:
    ret


    push hl
    push de
    ld a, d
    call Call_000_099f
    ld a, l
    ldh [$ffa6], a
    ld a, h
    ldh [$ffa7], a
    ld a, c

Jump_000_09fe:
    ldh [$ffa8], a
    pop de
    pop hl
    ld a, e
    call Call_000_099f
    ldh a, [$ffa6]
    add h
    ld h, a
    ldh a, [$ffa7]
    adc c

Jump_000_0a0d:
    ld c, a
    ldh a, [$ffa8]
    adc $00
    ld b, a
    ret


Call_000_0a14:
    ld a, c

Jump_000_0a15:
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


Call_000_0a2e:
    ld a, $0a
    ld [$1fff], a
    ld a, $01
    ld [$6000], a
    ld a, $08
    ld [$4000], a
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $09
    ld [$4000], a

Jump_000_0a4a:
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $0a
    ld [$4000], a
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $0b
    ld [$4000], a
    xor a
    ld [$a000], a
    nop
    nop
    nop
    nop
    ld a, $0c
    ld [$4000], a
    ld a, $00
    ld [$a000], a
    xor a
    ld [$4000], a
    ret


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

Call_000_0ab8:
Jump_000_0ab8:
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


    ld a, $0c
    ld [$4000], a
    ld a, $40
    ld [$a000], a
    xor a
    ld [$4000], a
    ret


    ld a, $0c
    ld [$4000], a
    ld a, $00
    ld [$a000], a
    xor a
    ld [$4000], a
    ret


Call_000_0ae9:
    ld a, [$c902]
    ld [$b886], a
    ld a, [$c903]
    ld [$b887], a

Call_000_0af5:
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
    ld [TimePaused], a
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


    ld l, h
    ld l, h
    ld l, h

Call_000_0b43:
    ld l, h
    ld l, h
    inc e
    inc e
    inc e
    inc e
    inc e
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    inc e
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc l
    inc l
    inc l
    inc l
    jr jr_000_0b9b

    jr jr_000_0b9d

    jr jr_000_0b8b

    inc b
    inc b
    inc b
    inc b

jr_000_0b8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l

jr_000_0b9b:
    cp l
    cp l

jr_000_0b9d:
    cp l
    cp l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_0baf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0bb8:
Jump_000_0bb8:
    ld a, [$dd00]
    ld b, a
    ld a, [TransitionRelated]
    or a
    ret z

    bit 0, b

Jump_000_0bc3:
    jr z, jr_000_0bce

    cp $1d
    jr nz, jr_000_0bce

    ld a, $0d
    ld [TransitionRelated], a

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
    ld a, [TransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, PaletteRelated
    ld [hl], a
    jr jr_000_0c07

jr_000_0bf6:
    ld hl, $0b40
    ld a, [TransitionRelated]
    add l
    ld l, a
    ld a, $00

Call_000_0c00:
    adc h
    ld h, a
    ld a, [hl]
    ld hl, PaletteRelated
    ld [hl], a

jr_000_0c07:
    ld hl, $0b5e
    ld a, [TransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $0b7c
    ld a, [TransitionRelated]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, TransitionRelated
    dec [hl]
    ret


    nop
    nop
    nop
    nop
    nop

Call_000_0c33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    inc e
    inc e
    inc e
    inc e
    inc e
    ld l, h

Call_000_0c48:
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$1c08], sp
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b

Call_000_0c7b:
    inc b
    inc b
    inc b
    jr jr_000_0c98

    jr jr_000_0c9a

    jr @+$2e

    inc l
    inc l
    inc l
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d

jr_000_0c98:
    inc d
    inc d

jr_000_0c9a:
    inc d
    inc d
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    cp l
    cp l
    cp l
    cp l
    cp l

Call_000_0ca6:
    ld a, [$dd00]
    ld b, a
    ld a, [TransitionRelated2]
    or a
    ret z

    bit 0, b
    jr z, jr_000_0cbc

    cp $0f
    jr nz, jr_000_0cbc

    ld a, $07
    ld [TransitionRelated2], a

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

Call_000_0ce0:
jr_000_0ce0:
    ld hl, $0c88
    ld a, [TransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, PaletteRelated

Call_000_0cf0:
    ld [hl], a
    jr jr_000_0d04

jr_000_0cf3:
    ld hl, $0c2e

Call_000_0cf6:
    ld a, [TransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, PaletteRelated
    ld [hl], a

jr_000_0d04:
    ld hl, $0c4c
    ld a, [TransitionRelated2]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a4
    ld [hl], a
    ld hl, $0c6a
    ld a, [TransitionRelated2]
    add l
    ld l, a
    ld a, $00

Call_000_0d1f:
    adc h
    ld h, a
    ld a, [hl]
    ld hl, $c0a5
    ld [hl], a
    ld hl, TransitionRelated2
    dec [hl]
    ret


Call_000_0d2b:
    ldh a, [rLY]
    cp $66
    jr z, jr_000_0d4b

    cp $67

Call_000_0d33:
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

Call_000_0d55:
    jr nz, jr_000_0d51

Jump_000_0d57:
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
    call Call_000_0a2e
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
    ld [OutsideFarm], a
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
    call Call_000_1029
    ld a, $00
    ld [$b89f], a
    ld [sCurrentWeather], a
    ld a, $50
    ld [$b924], a
    ld a, $83
    ld [$b925], a
    ld a, $af

Jump_000_0e4e:
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

Call_000_0e68:
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
    ld [TimePaused], a
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
    ld [OutsideFarm], a
    ld a, [sCurrentDay]
    cp $ff
    ret nz

    xor a
    ld [sCurrentDay], a
    call Call_000_054a

Jump_000_0ec5:
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

Jump_000_0f00:
    ld a, $b4
    ld a, $6e
    ld a, $50
    ld a, $a0
    ld a, [$c912]
    cp $b4
    jr z, jr_000_0f1b

    cp $6e
    jr z, jr_000_0f22

Jump_000_0f13:
    cp $50
    jr z, jr_000_0f29

Call_000_0f17:
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

Call_000_0f28:
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
    call Call_000_2331
    ld a, [sCurrentWeather]
    cp $01
    jr z, jr_000_0f75

    cp $03
    jr z, jr_000_0f7b

    ld a, [sCurrentSeason]
    cp $00
    jr z, jr_000_0f63

    cp $01

Call_000_0f57:
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

Jump_000_0f82:
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

Call_000_0fb8:
Jump_000_0fb8:
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

Jump_000_0fdf:
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

Call_000_1000:
Jump_000_1000:
    ld [$b939], a

Jump_000_1003:
jr_000_1003:
    xor a

Call_000_1004:
Jump_000_1004:
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


Call_000_1029:
    ld a, [$b90a]
    cp $00
    jr z, jr_000_1040

    ld a, $34
    ld [$ba44], a
    ld a, $13
    ld [$ba45], a
    ld a, $01
    ld [$ba46], a
    ret


Call_000_1040:
Jump_000_1040:
jr_000_1040:
    ld a, $af
    ld [$ba44], a
    ld [$ba45], a
    ld [$ba46], a
    ret


Call_000_104c:
    ld a, [$b93b]
    cp $ff
    jr z, jr_000_1073

Jump_000_1053:
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

Jump_000_10f3:
    call Call_000_3179
    ld a, [$cccd]
    ld [$b928], a

Call_000_10fc:
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


Call_000_1191:
    ld a, [$b90b]
    or a
    ret z

    ld a, [$a0e0]
    cp $0e
    ret nz

    ld hl, $a0e0
    ld e, $2c

jr_000_11a1:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld bc, $007e
    add hl, bc
    dec e
    jr nz, jr_000_11a1

    ret


Call_000_11ac:
    push hl
    push de
    ld hl, $ccc2
    ld a, c
    add [hl]
    ld [hl+], a
    inc bc
    ld a, b
    bit 7, a
    jr nz, jr_000_11c1

    adc [hl]
    ld [hl+], a
    jr nc, jr_000_11c6

    inc [hl]
    jr jr_000_11c6

jr_000_11c1:
    adc [hl]
    ld [hl+], a
    jr c, jr_000_11c6

    dec [hl]

jr_000_11c6:
    ld hl, $cbe2
    ld bc, $0001
    call Call_000_0a27
    ld a, [$ccc4]
    cp $02
    jr nc, jr_000_11ee

    cp $01
    jr c, jr_000_11fd

    ld a, [$ccc3]
    cp $87
    jr nc, jr_000_11ee

    cp $86
    jr c, jr_000_11fd

    ld a, [$ccc2]
    cp $a0
    jr nc, jr_000_11ee

    jr jr_000_11fd

jr_000_11ee:
    ld a, $9f
    ld [$ccc2], a
    ld a, $86
    ld [$ccc3], a
    ld a, $01
    ld [$ccc4], a

jr_000_11fd:
    ld hl, $b93f
    call Call_000_1ec2
    ld hl, $ba35
    call Call_000_1ec2
    pop de
    pop hl
    ret


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


Call_000_12a3:
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


Call_000_12bf:
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


Call_000_12db:
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


Call_000_12f7:
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


Call_000_1313:
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


Call_000_132f:
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0f
    ld [$2100], a
    ld hl, $7712
    ld de, $d800

Call_000_133f:
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

Jump_000_140b:
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

Call_000_142b:
    ld h, $00
    add hl, hl
    add hl, hl

Call_000_142f:
Jump_000_142f:
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

Jump_000_14cb:
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

Call_000_14e8:
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

Jump_000_14f4:
    and $1f
    ld c, a
    ld a, b

Call_000_14f8:
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

Call_000_1520:
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

Call_000_15b0:
    ld a, $01
    ld [$c820], a
    ld a, $01
    ld [$c82e], a
    ld a, $09
    ld [$c821], a
    ret


Call_000_15c0:
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

Jump_000_15fa:
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
    adc e
    ld e, d
    ld b, $d7
    ld e, d
    ld b, $1e
    ld e, e
    ld b, $45
    ld e, e
    ld b, $4e
    ld e, e
    ld b, $75
    ld e, e
    ld b, $7e
    ld e, e
    ld b, $87
    ld e, e
    ld b, $90
    ld e, e
    ld b, $99
    ld e, e
    ld b, $a2
    ld e, e
    ld b, $ab
    ld e, e
    ld b, $b4
    ld e, e
    ld b, $bd
    ld e, e
    ld b, $c6
    ld e, e
    ld b, $cf
    ld e, e
    ld b, $d8
    ld e, e
    ld b, $e1
    ld e, e
    ld b, $ea
    ld e, e
    ld b, $f3
    ld e, e
    ld b, $fc
    ld e, e
    ld b, $05
    ld e, h
    ld b, $0e
    ld e, h
    ld b, $17
    ld e, h
    ld b, $20
    ld e, h
    ld b, $29
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $32
    ld e, h
    ld b, $3b
    ld e, h

Call_000_16d0:
    ld b, $44
    ld e, h
    ld b, $4a
    ld e, h
    ld b, $50
    ld e, h
    ld b, $56
    ld e, h
    ld b, $5c
    ld e, h
    ld b, $62
    ld e, h
    ld b, $ea
    inc a
    cp c
    rst $08
    ld l, b
    ld e, h
    ld b, $94
    ld e, h
    ld b, $c0
    ld e, h
    ld b, $ec
    ld e, h
    ld b, $18
    ld e, l
    ld b, $44
    ld e, l
    ld b, $70
    ld e, l
    ld b, $9c
    ld e, l
    ld b, $c8

Call_000_1700:
Jump_000_1700:
    ld e, l
    ld b, $f4
    ld e, l
    ld b, $20
    ld e, [hl]
    ld b, $4c
    ld e, [hl]
    ld b, $78
    ld e, [hl]
    ld b, $a4
    ld e, [hl]
    ld b, $d0
    ld e, [hl]
    ld b, $fc
    ld e, [hl]
    ld b, $33
    ld e, a
    ld b, $5f
    ld e, a
    ld b, $8b
    ld e, a
    ld b, $b7
    ld e, a
    ld b, $e3
    ld e, a
    ld b, $0f
    ld h, b
    ld b, $3b
    ld h, b
    ld b, $67
    ld h, b
    ld b, $be
    ld h, b
    ld b, $f9
    ld h, b
    ld b, $30
    ld h, c
    ld b, $67
    ld h, c
    ld b, $9e
    ld h, c
    ld b, $9a
    ld h, d
    ld b, $18
    ld h, e
    ld b, $96
    ld h, e
    ld b, $cd
    ld h, e
    ld b, $4b
    ld h, h
    ld b, $82
    ld h, h
    ld b, $00
    ld h, l
    ld b, $37
    ld h, l
    ld b, $b5
    ld h, l
    ld b, $ec
    ld h, l
    ld b, $6a
    ld h, [hl]
    ld b, $a1
    ld h, [hl]
    ld b, $1f
    ld h, a
    ld b, $5a
    ld h, a
    ld b, $d8
    ld h, a
    ld b, $5c
    ld l, b
    ld b, $ef
    ld l, b
    ld b, $f0
    ld l, b
    ld b, $f1
    ld l, b
    ld b, $f2
    ld l, b
    ld b, $70
    ld l, c
    ld b, $ee
    ld l, c
    ld b, $67
    ld l, d
    ld b, $e5
    ld l, d
    ld b, $63
    ld l, e
    ld b, $e7
    ld l, e
    ld b, $2a
    ld l, h
    ld b, $a5
    ld l, h
    ld b, $a6
    ld l, h
    ld b, $a7
    ld l, h
    ld b, $a8
    ld l, h
    ld b, $a9
    ld l, h
    ld b, $e0
    ld l, h
    ld b, $5e
    ld l, l
    ld b, $95
    ld l, l
    ld b, $cc
    ld l, l
    ld b, $03
    ld l, [hl]
    ld b, $7e
    ld l, [hl]
    ld b, $a9
    ld l, [hl]
    ld b, $d4
    ld l, [hl]
    ld b, $ff
    ld l, [hl]

Call_000_17b8:
    ld b, $ff
    ld l, [hl]
    ld b, $ff
    ld l, [hl]
    ld b, $2a
    ld l, a
    ld b, $61
    ld l, a
    ld b, $df
    ld l, a
    ld b, $e0
    ld l, a
    ld b, $e1
    ld l, a
    ld b, $5c
    ld [hl], b
    ld b, $d7
    ld [hl], b
    ld b, $03
    ld [hl], c
    ld b, $2f
    ld [hl], c
    ld b, $5b
    ld [hl], c
    ld b, $87
    ld [hl], c
    ld b, $b9
    ld [hl], c
    ld b, $e5
    ld [hl], c
    ld b, $11
    ld [hl], d
    ld b, $3d
    ld [hl], d
    ld b, $b8
    ld [hl], d
    ld b, $33
    ld [hl], e
    ld b, $34
    ld [hl], e
    ld b, $6e
    ld [hl], e
    ld b, $ea
    ld [hl], e
    ld b, $68
    ld [hl], h
    ld b, $e6
    ld [hl], h
    ld b, $64
    ld [hl], l
    ld b, $e2
    ld [hl], l
    ld b, $60
    halt
    ld b, $de
    halt
    ld b, $0a
    ld [hl], a
    ld b, $36
    ld [hl], a
    ld b, $62
    ld [hl], a
    ld b, $8e
    ld [hl], a
    ld b, $ba
    ld [hl], a
    ld b, $1c
    ld h, d
    ld b, $e6
    ld [hl], a
    ld b, $e6
    ld [hl], a
    ld b, $1d
    ld a, b
    ld b, $54
    ld a, b
    ld b, $8b
    ld a, b
    ld b, $c2
    ld a, b
    ld b, $40

Call_000_1832:
    ld a, c
    ld b, $be
    ld a, c
    ld b, $3c
    ld a, d
    ld b, $ba
    ld a, d

Jump_000_183c:
    ld b, $f1
    ld a, d
    ld b, $6f
    ld a, e
    ld b, $a6
    ld a, e
    ld b, $dd
    ld a, e
    ld b, $7b
    ld a, c
    ld [de], a
    xor e
    ld a, c
    ld [de], a
    db $db
    ld a, c
    ld [de], a

Call_000_1852:
    rst $08
    db $ed
    ld [hl], h
    ld [de], a
    pop af
    ld [hl], h
    ld [de], a
    push af
    ld [hl], h
    ld [de], a
    ld sp, hl
    ld [hl], h
    ld [de], a
    db $fd
    ld [hl], h
    ld [de], a
    ld bc, $1275
    dec b
    ld [hl], l
    ld [de], a
    add hl, bc
    ld [hl], l
    ld [de], a
    dec c
    ld [hl], l
    ld [de], a
    ld de, $1275
    dec d
    ld [hl], l
    ld [de], a
    add hl, de
    ld [hl], l
    ld [de], a
    dec e
    ld [hl], l
    ld [de], a
    ld hl, $1275
    dec h
    ld [hl], l
    ld [de], a
    add hl, hl
    ld [hl], l
    ld [de], a
    dec l
    ld [hl], l
    ld [de], a
    ld sp, $1275

Call_000_1889:
    rst $08
    ld c, c
    ld [hl], l
    ld [de], a
    ld l, e
    ld [hl], l
    ld [de], a
    adc l
    ld [hl], l
    ld [de], a
    xor a
    ld [hl], l
    ld [de], a
    pop de
    ld [hl], l
    ld [de], a
    di
    ld [hl], l
    ld [de], a
    dec d
    halt
    ld [de], a
    scf
    halt
    ld [de], a
    ld e, c
    halt
    ld [de], a
    ld a, e
    halt
    ld [de], a
    sbc l
    halt
    ld [de], a
    cp a
    halt
    ld [de], a
    pop hl
    halt
    ld [de], a
    inc bc
    ld [hl], a
    ld [de], a
    dec h
    ld [hl], a
    ld [de], a
    ld b, a
    ld [hl], a
    ld [de], a
    ld l, c
    ld [hl], a
    ld [de], a
    adc e
    ld [hl], a
    ld [de], a
    xor l
    ld [hl], a

Jump_000_18c2:
    ld [de], a
    rst $08
    ld [hl], a
    ld [de], a
    pop af

Call_000_18c7:
    ld [hl], a
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    dec [hl]
    ld a, b
    ld [de], a
    ld d, a
    ld a, b
    ld [de], a

Call_000_18d2:
    rst $08
    adc l
    ld a, b
    ld [de], a
    xor a
    ld a, b
    ld [de], a
    pop de
    ld a, b
    ld [de], a
    di
    ld a, b
    ld [de], a
    dec d

Call_000_18e0:
    ld a, c
    ld [de], a
    scf
    ld a, c
    ld [de], a
    ld e, c
    ld a, c

Jump_000_18e7:
    ld [de], a

Call_000_18e8:
    rst $08
    dec bc
    ld a, d
    ld [de], a

Call_000_18ec:
    ld e, $7a

Call_000_18ee:
    ld [de], a
    ld sp, $127a
    jr c, jr_000_196e

    ld [de], a
    ccf

Call_000_18f6:
    ld a, d
    ld [de], a

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

    ld a, [GrabbingDog3]
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
    ld a, [PlayerXPosition]
    add b
    ld l, a
    ld h, $00
    ldh a, [CameraX]
    ld e, a
    ldh a, [$ff94]
    ld d, a
    add hl, de

jr_000_196e:
    ld a, l
    srl a
    srl a
    srl a
    push af
    ld a, [$c60b]
    add c
    ld l, a
    ld h, $00
    ldh a, [CameraY]
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

Jump_000_19af:
    or a
    jr nz, jr_000_19f4

    xor a
    ld [$cb89], a
    ld a, [GrabbingDog]
    or a
    ret z

    ld a, [PlayerXPosition]
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

Jump_000_1a04:
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


    ret


jr_000_1a1b:
    ld hl, $1abc
    ld a, [$b904]
    add a
    add a
    add l
    ld l, a
    ld a, $00

Jump_000_1a27:
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


    ld [hl-], a
    ld hl, $0011
    scf
    dec h
    ld [de], a
    nop
    inc a
    jr z, jr_000_1adb

    nop
    ld b, c
    dec hl
    ld d, $00
    ld b, [hl]
    cpl
    jr jr_000_1ad0

jr_000_1ad0:
    ld c, e
    ld [hl-], a
    add hl, de
    nop
    ld d, b
    dec [hl]
    dec de
    nop
    ld d, l
    add hl, sp
    inc e

jr_000_1adb:
    nop
    ld e, d
    inc a
    ld e, $00
    ld e, a
    ccf
    jr nz, jr_000_1ae4

jr_000_1ae4:
    ld h, h
    ld b, e
    ld hl, $fa00
    db $ed
    cp b
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
Jump_000_1b00:
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
    call $1ae8
    ret


jr_000_1b16:
    ld b, $14
    call $1ae8
    ret


jr_000_1b1c:
    ld b, $0a
    call $1ae8
    ret


    dec bc
    inc c
    dec c
    ld c, $13
    inc d
    ld d, $15
    nop
    ld [$0a09], sp
    ld [de], a
    ld [de], a
    ld d, d
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

Jump_000_1b3c:
    ld d, e
    ld d, h
    ld d, l
    db $10
    ld de, $afaf
    xor a
    dec d
    ld h, l
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rla
    ld a, b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, l
    sbc c
    ld h, l
    ld a, d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    add hl, bc
    ld c, c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    daa
    ld a, d
    db $d3
    ld a, d
    dec d
    ld h, l
    xor a
    xor a
    xor a
    xor a
    daa
    ld a, d
    db $d3
    ld a, d
    rla
    ld a, b
    xor a
    xor a
    xor a
    daa
    ld a, d
    db $d3
    ld a, d
    ld d, l
    sbc c
    ld h, l
    ld a, d
    xor a
    xor a
    xor a
    daa
    ld a, d
    db $d3
    ld a, d
    add hl, bc
    ld c, c
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $1744
    daa
    add [hl]
    xor a
    xor a
    xor a
    xor a
    ld sp, $2131
    ret z

    add c
    ld de, $afaf
    xor a
    xor a
    xor a
    res 0, l
    ld h, $af
    xor a
    xor a
    xor a
    xor a
    xor a
    or [hl]
    sub a
    rlca
    adc c
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    xor a
    xor a
    daa
    push de
    add [hl]
    sbc c
    rla
    add l
    ld a, d
    inc c
    xor a
    xor a
    xor a
    xor a
    ld [hl], d
    ret z

    ld [bc], a
    ld [hl], b
    ld [de], a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $3044
    ld b, e
    xor a
    xor a
    xor a
    xor a
    xor a
    call z, $af87

Call_000_1be7:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ret z

    ld [de], a
    inc h
    ld [bc], a
    ld b, h
    jr nc, jr_000_1c37

    xor a
    xor a
    xor a
    xor a
    dec d
    bit 0, h
    jr nc, jr_000_1c40

    xor a
    xor a
    xor a
    or [hl]
    sub l
    and l
    ld b, $69
    ld b, h
    jr nc, jr_000_1c4b

Call_000_1c08:
    xor a

Jump_000_1c09:
    xor a
    xor a
    add hl, sp
    ld h, l
    add hl, sp
    ld b, h
    jr nc, jr_000_1c54

    xor a
    xor a
    add hl, sp
    rlca
    ld l, c
    adc c
    add hl, de

Call_000_1c18:
    ld h, $44
    jr nc, jr_000_1c5f

    xor a
    xor a
    xor a
    xor a
    ld b, l
    daa
    ld b, h
    jr nc, @+$45

jr_000_1c25:
    xor a
    xor a
    xor a
    add l
    sbc b

Call_000_1c2a:
    dec d
    jr z, jr_000_1c33

Call_000_1c2d:
    ld b, h
    jr nc, jr_000_1c73

    xor a
    xor a
    xor a

jr_000_1c33:
    ld b, [hl]
    sbc c
    or [hl]
    sbc c

jr_000_1c37:
    ld b, h
    jr nc, jr_000_1c7d

    xor a
    res 1, c
    sbc b
    add hl, de
    add [hl]

jr_000_1c40:
    ld a, d
    ld b, h
    jr nc, jr_000_1c87

    xor a
    xor a
    xor a
    xor a
    ld [hl-], a
    add d
    ld d, b

jr_000_1c4b:
    ld hl, $afaf
    xor a
    xor a
    nop

Jump_000_1c51:
    ld h, e
    ld d, d
    add c

jr_000_1c54:
    ld b, h
    db $10
    jr nz, @-$4f

    xor a
    xor a
    xor a
    xor a
    ld [hl-], a

Call_000_1c5d:
    add c
    or b

Jump_000_1c5f:
jr_000_1c5f:
    inc b
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $0344
    jr nz, @-$4f

    xor a
    xor a
    xor a
    xor a
    inc [hl]
    add c
    ld b, h

jr_000_1c73:
    inc bc
    jr nz, jr_000_1c25

    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl+], a
    cp l

jr_000_1c7d:
    xor a
    xor a
    xor a
    xor a

Call_000_1c81:
    ld a, [wMapIndex]
    cp $26
    ret z

jr_000_1c87:
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


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_1ce0:
    nop
    nop

Call_000_1ce2:
    nop
    nop
    nop
    nop

Call_000_1ce6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_1cfa:
    nop
    nop
    nop

Jump_000_1cfd:
    nop
    nop

Call_000_1cff:
    nop
    nop
    nop
    nop

Call_000_1d03:
    nop
    sub [hl]
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    ld e, [hl]
    ld bc, $0000
    ld a, [$0000]
    nop
    sub [hl]
    nop
    nop
    nop
    ld b, [hl]

Call_000_1d23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_1d38:
    nop
    nop
    nop

Call_000_1d3b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    ld bc, $012c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    nop
    nop
    nop
    nop
    sub [hl]
    nop
    inc a
    nop
    ld d, b
    nop
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $fa05
    halt
    call z, $ea3c
    halt
    call z, $10fe
    jr z, jr_000_1e25

    cp $20
    ret nz

    xor a
    ld [$cc76], a
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0a
    ld [$2100], a

jr_000_1dd0:
    ld hl, $1e7a
    ld a, [$cc77]
    call Call_000_0743
    ld a, [$cc76]
    call Call_000_0743
    ld de, $79b6
    add hl, de
    ld d, h
    ld e, l
    ld hl, $1e72
    ld a, [$cc76]
    call Call_000_0743
    ld b, $10

jr_000_1df0:
    di

jr_000_1df1:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1df1

    ld a, [de]
    ld [hl+], a
    inc de
    ei
    dec b
    jr nz, jr_000_1df0

    ld a, [$cc76]
    inc a
    ld [$cc76], a
    cp $04
    jr c, jr_000_1dd0

    xor a
    ld [$cc76], a
    ldh a, [$ffa4]
    ld [$2100], a
    ld a, [$cc77]
    cp $00
    jr nz, jr_000_1e1f

    ld a, $01
    ld [$cc77], a
    ret


jr_000_1e1f:
    ld a, $00
    ld [$cc77], a
    ret


jr_000_1e25:
    xor a
    ld [$cc78], a
    ld a, [$4000]
    ldh [$ffa4], a
    ld a, $0a
    ld [$2100], a

jr_000_1e33:
    ld hl, $1e9e
    ld a, [$cc77]
    call Call_000_0743
    ld a, [$cc78]
    call Call_000_0743
    ld de, $79b6
    add hl, de
    ld d, h
    ld e, l
    ld hl, $1e8e
    ld a, [$cc78]
    call Call_000_0743
    ld b, $10

jr_000_1e53:
    di

jr_000_1e54:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_1e54

    ld a, [de]
    ld [hl+], a
    inc de
    ei
    dec b
    jr nz, jr_000_1e53

    ld a, [$cc78]
    inc a
    ld [$cc78], a
    cp $08
    jr c, jr_000_1e33

    ldh a, [$ffa4]
    ld [$2100], a
    ret


    ld h, b
    sub [hl]
    ld [hl], b
    sub [hl]
    ld h, b
    sub a
    ld [hl], b
    sub a
    ld a, [hl]
    ld e, $86
    ld e, $40
    ld bc, Start
    ld h, b
    ld bc, $0170
    nop
    ld bc, $0110
    jr nz, @+$03

    jr nc, jr_000_1e8f

    add b

jr_000_1e8f:
    sub b
    sub b
    sub b
    add b
    sub c
    sub b
    sub c
    add b
    sub d
    sub b
    sub d
    add b
    sub e
    sub b
    sub e
    and d
    ld e, $b2
    ld e, $80
    nop
    sub b
    nop
    and b
    nop
    or b
    nop
    ret nz

    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]
    nop
    nop
    stop
    jr nz, jr_000_1eb8

jr_000_1eb8:
    jr nc, jr_000_1eba

jr_000_1eba:
    ld b, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop

Call_000_1ec2:
    ld a, [hl]
    inc a

Jump_000_1ec4:
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

Call_000_1ee8:
    ld a, $86
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ret


    nop
    ld a, [bc]
    ld c, $12
    ld a, [bc]

Jump_000_1ef4:
    ld a, [de]

Call_000_1ef5:
    xor a
    ldh [$ff9b], a

Call_000_1ef8:
    ld a, [$cb59]
    or a
    jr nz, jr_000_1f06

Jump_000_1efe:
    ld a, $ff

Call_000_1f00:
Jump_000_1f00:
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

Jump_000_1f18:
    add b
    ld b, a
    ld a, $08
    add c
    ld c, a
    ldh a, [$ff99]

Jump_000_1f20:
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


    inc hl
    inc hl
    inc hl
    jr jr_000_1f26

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

Jump_000_1f8c:
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

Jump_000_1faf:
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

Jump_000_1ffd:
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

Jump_000_201f:
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

Call_000_203f:
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


CopyDMA::
    ld c, $80
    ld b, $0a
    ld hl, $2067

jr_000_2060:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_2060

    ret


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


    xor a
    ldh [rIF], a
    ld a, [$c0a0]
    ldh [rIE], a
    ret


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

    ld hl, $9bff
    ld bc, $0400

jr_000_20bb:
    ldh a, [$ffa4]
    ld [hl-], a
    dec bc

Jump_000_20bf:
    ld a, b
    or c
    jr nz, jr_000_20bb

    ret


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

Call_000_20d9:
    dec a
    jr z, jr_000_2101

Call_000_20dc:
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

Jump_000_20ff:
    jr jr_000_20f0

jr_000_2101:
    ld a, [de]

Jump_000_2102:
    ld [hl], a

Jump_000_2103:
    inc de

Call_000_2104:
    ld a, b

Jump_000_2105:
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

Jump_000_2111:
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


Call_000_211f:
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


    push hl
    ld l, a
    ld a, [$4000]
    ld h, a
    ld a, l
    push hl
    ld [$2100], a
    pop hl
    ld a, h
    pop hl
    push af
    call Call_000_214b
    pop af
    ld [$2100], a
    ret


Call_000_214b:
jr_000_214b:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_2158

    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_214b

    ret


jr_000_2158:
    ld a, [hl+]
    ldh [$ffa4], a
    ld a, [hl+]
    push hl
    ld h, a
    ldh a, [$ffa4]
    ld l, a

jr_000_2161:
    ld a, h
    ld [de], a
    inc de
    dec l
    jr z, jr_000_216e

    dec bc
    ld a, b
    or c
    jr nz, jr_000_2161

    pop hl
    ret


jr_000_216e:
    pop hl

Call_000_216f:
    dec bc
    ld a, b
    or c
    jr nz, jr_000_214b

    ret


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

Jump_000_21ae:
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
    ld a, [GrabbingDog2]
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

Call_000_2200:
Jump_000_2200:
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

    ld a, [$dd00]
    or a
    ret z

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

Jump_000_2278:
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


    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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
    push de
    push hl
    call Call_000_2071
    pop hl
    ld a, $e4

Call_000_22c3:
    ldh [rBGP], a
    ld de, $8800
    call Call_000_2116
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

Jump_000_22da:
jr_000_22da:
    ld b, $14

jr_000_22dc:
    ld [hl+], a

Call_000_22dd:
    inc a
    dec b
    jr nz, jr_000_22dc

    add hl, de
    dec c
    jr nz, jr_000_22da

    ld a, $81
    ldh [rLCDC], a
    call Call_000_222e
    pop hl
    call Call_000_21f3
    call Call_000_222e
    ret


Call_000_22f4:
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


    ret


Call_000_2331:
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


    xor a
    ld [$d3a3], a
    ld a, [$d3a4]
    ld [$d397], a
    ret


    ld a, $04
    ld [$d3a3], a
    xor a
    ld [$d397], a
    ret


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

Jump_000_23b4:
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

Call_000_2400:
Jump_000_2400:
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

Jump_000_2412:
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

Jump_000_2442:
    pop bc
    ret


Call_000_2444:
    ld a, [$4000]
    push af

Call_000_2448:
    ld a, $1e
    ld [$2100], a

Jump_000_244d:
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

Jump_000_2525:
jr_000_2525:
    ldh [$ffea], a
    ld a, [hl+]
    swap a
    ldh [$ffec], a
    ld a, [$d398]
    cp $02

Call_000_2531:
    jr z, jr_000_2551

    ld a, [hl+]
    ldh [$ffee], a

jr_000_2536:
    xor a
    ldh [$ffef], a
    ldh [$fff0], a
    ldh [$fff1], a

Jump_000_253d:
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

Jump_000_25da:
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

Jump_000_26a6:
    and $3f

Call_000_26a8:
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

Call_000_26db:
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


    nop
    ld bc, $1211
    inc d
    inc hl
    rlca
    dec d
    rla
    ld [hl-], a
    inc sp
    ld h, b
    ld h, c
    ld b, l
    ld d, e
    ld h, d

jr_000_2739:
    xor a
    ldh [$fff7], a

Jump_000_273c:
    ld a, $80
    ldh [$fff8], a
    ld a, [$d398]
    cp $02

Jump_000_2745:
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

Call_000_277a:
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

Call_000_28d7:
Jump_000_28d7:
    ret


Call_000_28d8:
    call Call_000_2994
    ldh a, [$fff7]
    and a

Call_000_28de:
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

Call_000_28f6:
    ld e, $00
    ld c, a
    ldh a, [$fff3]
    ld b, $04

Jump_000_28fd:
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

Jump_000_2937:
    bit 2, e
    jr nz, jr_000_2941

    sla b
    bit 1, e
    jr z, jr_000_2946

Call_000_2941:
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


    call nc, $6407
    rlca
    ld sp, hl
    ld b, $95
    ld b, $37
    ld b, $dd
    dec b
    adc c
    dec b
    ld a, [hl-]
    dec b
    ldh a, [rDIV]
    xor b
    inc b
    ld h, l
    inc b
    ld h, $04
    sbc h
    rlca
    ld l, $07
    rst $00
    ld b, $66
    ld b, $0a
    ld b, $b3
    dec b
    ld h, c
    dec b
    dec d
    dec b
    call z, $8604
    inc b
    ld b, l
    inc b
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_2a1d

    jr nz, jr_000_2a1f

Jump_000_29ff:
    nop

Call_000_2a00:
    nop

Call_000_2a01:
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2a2b

    jr nz, jr_000_2a3d

    jr nc, jr_000_2a3f

    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_000_2a37

    jr nz, jr_000_2a39

    jr nc, jr_000_2a4b

    jr nc, jr_000_2a4d

jr_000_2a1d:
    ld b, b
    ld b, b

jr_000_2a1f:
    nop
    nop
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2a58

    jr nc, jr_000_2a5a

    ld b, b

jr_000_2a2b:
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_000_2a67

jr_000_2a37:
    jr nc, jr_000_2a79

jr_000_2a39:
    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_2a3d:
    ld h, b
    ld h, b

jr_000_2a3f:
    nop
    nop
    db $10
    db $10
    jr nz, @+$22

    jr nc, jr_000_2a77

    ld b, b
    ld b, b
    ld d, b
    ld d, b

jr_000_2a4b:
    ld h, b
    ld h, b

jr_000_2a4d:
    ld [hl], b
    ld [hl], b
    nop
    db $10
    db $10
    jr nz, jr_000_2a74

    jr nc, jr_000_2a86

    ld b, b
    ld b, b

jr_000_2a58:
    ld d, b
    ld d, b

jr_000_2a5a:
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    nop
    db $10
    db $10
    jr nz, jr_000_2a84

    jr nc, jr_000_2aa6

    ld b, b

jr_000_2a67:
    ld d, b
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    add b
    sub b
    nop
    db $10
    db $10
    jr nz, @+$32

jr_000_2a74:
    jr nc, jr_000_2ab6

    ld d, b

jr_000_2a77:
    ld d, b
    ld h, b

jr_000_2a79:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    sub b
    and b
    nop
    db $10
    db $10
    jr nz, jr_000_2ab4

jr_000_2a84:
    ld b, b
    ld b, b

jr_000_2a86:
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    nop
    db $10
    jr nz, jr_000_2ab3

    jr nc, jr_000_2ad5

    ld d, b
    ld h, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    nop
    db $10
    jr nz, @+$32

    jr nc, @+$42

    ld d, b

jr_000_2aa6:
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    and b
    or b
    ret nz

    ret nc

    nop
    db $10
    jr nz, jr_000_2ae3

jr_000_2ab3:
    ld b, b

jr_000_2ab4:
    ld d, b
    ld h, b

jr_000_2ab6:
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [rP1], a
    db $10
    jr nz, jr_000_2af3

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$fff0], a
    nop
    nop
    ld bc, $0001
    nop

Jump_000_2ad5:
jr_000_2ad5:
    rst $38
    rst $38
    nop
    nop
    ld bc, $0001

Jump_000_2adc:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_000_2ae3:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0102

jr_000_2af3:
    nop
    rst $38
    cp $ff

Jump_000_2af7:
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff

Call_000_2aff:
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    nop
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

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

    ret


Call_000_2bae:
    inc hl

Call_000_2baf:
    ld a, [hl]
    rst $08
    ld bc, $0840
    xor [hl]
    ld a, d
    ld [de], a
    xor $51
    ld [$52d5], sp
    ld [$54be], sp
    ld [$5998], sp
    ld [$7a50], sp
    ld [de], a
    sbc a
    ld h, e
    ld [$639f], sp
    ld [$6837], sp
    dec b
    nop
    ld h, b
    dec b
    ld d, h
    ld h, d
    dec b
    sbc a
    ld h, e
    ld [$5485], sp
    ld [$639f], sp
    ld [$5498], sp
    ld [$5481], sp
    ld [$5482], sp
    ld [$5483], sp
    ld [$5484], sp
    ld [$639f], sp
    ld [$639f], sp
    ld [$639f], sp
    ld [$639f], sp
    ld [$6000], sp
    dec b

Call_000_2bfc:
    ld a, [$4000]
    push af

Jump_000_2c00:
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

Call_000_2c20:
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

Call_000_2c38:
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

Call_000_2cd2:
jr_000_2cd2:
    ld hl, $2d5e
    ldh a, [$ffa4]

Jump_000_2cd7:
    ld b, a
    sla b

Call_000_2cda:
    add b

Call_000_2cdb:
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

Call_000_2cf2:
    adc h
    ld h, a
    ld a, b
    add l

Call_000_2cf6:
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]

Call_000_2cfe:
    ld b, a

Call_000_2cff:
Jump_000_2cff:
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

Jump_000_2d2d:
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


    ld a, d
    ld e, e
    inc de
    ei
    ld d, d
    inc d
    ei
    ld d, d
    inc d
    ei
    ld d, d
    inc d
    sbc a
    ld a, d
    dec bc
    ld a, [hl+]
    halt
    rla
    add l
    ld h, e
    rrca
    and $56
    db $10
    add l
    ld a, [hl]
    ld a, [bc]
    daa
    ld [hl], h
    inc de
    ld [de], a
    ld h, h
    rla
    ld [bc], a
    ld [hl], b
    inc de
    db $fc
    ld b, d
    ld a, [bc]
    ld h, a
    ld d, b
    dec b
    ld h, b
    ld [hl], c
    inc d
    ld b, c
    ld l, d
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    ld c, c
    ld h, e
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    db $d3
    ld h, a
    inc d
    ld [hl], a
    ld h, [hl]
    rla

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

Jump_000_2dde:
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
    ld [GrabbingDog2], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de

Call_000_2dff:
Jump_000_2dff:
    add hl, de
    ld a, [hl+]
    ld h, [hl]

Jump_000_2e02:
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
    ld [GrabbingDog2], a
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
    ld [GrabbingDog2], a
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

Jump_000_2eb6:
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

Jump_000_2ed1:
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    pop bc
    ld a, [hl+]

Call_000_2edc:
    ld [$cb61], a
    ld a, [hl+]
    ld [GrabbingDog2], a
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

Call_000_2ef5:
    ret


    ld bc, $1240
    ld bc, $1440
    ld bc, $1440
    ld bc, $1440
    di
    ld [hl], e
    dec bc
    and $6b
    rla
    nop
    ld h, e
    rrca
    add hl, hl
    ld d, [hl]
    db $10
    ld [hl], $7b
    ld a, [bc]
    sbc a
    ld [hl], b
    inc de
    ld bc, $1760
    inc d
    ld h, b
    inc de
    ld bc, $0a40
    ei
    ld b, a
    dec b
    ld e, c

Call_000_2f21:
    ld l, d
    inc d
    ld l, $68
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld d, l
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    add a
    ld h, h
    inc d
    adc l

Call_000_2f3f:
    ld h, h
    rla

Call_000_2f41:
    ld a, [$4000]
    push af
    ld a, c
    ld [$2100], a
    ld a, d
    ldh [$ffb9], a
    ld a, e
    ldh [$ffb8], a

Jump_000_2f4f:
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

Call_000_2f68:
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


    nop
    ld bc, $3512
    adc d
    call $ffee
    rst $38
    cp $ed
    jp z, Jump_000_3285

    ld de, $0100
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $feef
    call c, $98ba
    halt
    ld d, h
    ld [hl-], a
    db $10
    rst $38
    rst $38

Jump_000_3000:
    rst $38

Jump_000_3001:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop

Jump_000_3008:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $e700
    ld a, [hl-]
    ld a, [hl+]
    ld c, h
    ld bc, $7bb4
    ld b, [hl]
    ld l, c
    pop de
    ld a, [bc]
    sub l
    xor c
    ld b, a
    ld h, b
    rst $38
    ld b, e
    ld [hl+], a
    nop
    nop
    ld [hl], $9c
    ld b, $cf
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld h, a
    and b
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ld [hl+], a
    di
    ld d, l
    or $89
    db $fc
    sbc $fe
    xor $fe
    inc de
    ld hl, sp+$51
    pop af
    ld de, $ffff
    xor $ed
    db $dd
    call z, $bacb
    xor c
    sbc b
    add a
    ld h, l
    ld d, h
    ld b, e
    ld sp, $f110
    ld [hl+], a
    ld a, [$b955]
    ei
    ldh a, [c]
    sbc $fe
    jp nc, Jump_000_3dfe

    ld hl, sp-$4f
    pop de
    ld de, $1201
    ld [hl+], a
    inc sp
    dec [hl]
    ld d, l
    ld [hl], a
    sbc c
    ld d, l
    sbc c
    xor d
    cp e
    call z, $eedd
    rst $38
    ld b, e
    ld [hl+], a
    rst $38
    xor $36
    sbc h
    ld b, $cf
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld h, a
    and b
    nop
    ld [de], a
    pop af
    ld [hl+], a
    ld a, [$2954]
    ld c, b
    ldh a, [c]
    sbc $f1
    ld [hl+], a
    di
    ld d, l
    or $89
    db $fc
    db $10
    pop af
    ldh [$ffd0], a
    ret nz

    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_000_30dc

    db $10
    dec b
    add hl, bc
    jr jr_000_30e9

    jr c, jr_000_310b

    ld e, b
    ld l, b
    ld a, b
    adc b
    sbc b
    xor b
    cp b
    ret z

    ret c

Call_000_30cc:
    add sp, -$0b

Call_000_30ce:
    di
    jp nc, $92b2

    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld a, b
    add l
    adc b
    sbc b
    and l
    and l

Call_000_30dc:
jr_000_30dc:
    and l
    and l
    adc c
    sbc b

Jump_000_30e0:
    xor b
    cp b
    ret z

    ret c

    add sp, -$0c
    ldh a, [$ffe0]
    ret nc

jr_000_30e9:
    ret nz

    or b
    and b

Call_000_30ec:
    sub b
    add l

Call_000_30ee:
    pop af
    pop de
    or c
    sub c
    ld [hl], c
    ld d, c
    ld sp, $e110
    pop bc
    and c
    add c
    ld h, c
    ld b, c
    ld hl, $f305
    jp nc, $92b2

    ld [hl], d
    ld d, d
    ld [hl-], a
    db $10
    db $e3

Call_000_3107:
    jp nz, $82a2

    ld h, d

jr_000_310b:
    ld b, d
    ld [hl+], a
    dec b
    di
    jp nc, $95b2

    ld h, e
    ld b, e
    inc hl
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    jp hl


    ld hl, sp-$18
    push de
    ret c

    push bc
    ret z

    or l
    cp b
    and l
    xor b
    sub l
    sbc b
    add l
    adc b
    ld [hl], l
    set 5, b
    push de
    ret c

    push bc
    ret z

    or l
    cp b
    and l
    xor b
    sub l
    sbc b
    add l
    add l
    adc b
    ld [hl], l
    adc c
    sbc b
    xor b
    cp b
    ret z

    ret c

    add sp, -$0c
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff0]
    ldh a, [$fff5]

Call_000_314e:
    ld b, $a0
    ld a, $00
    ld hl, $c000

jr_000_3155:
    ld [hl+], a
    dec b
    jr nz, jr_000_3155

    ret


    ld b, a
    ld de, $5000

jr_000_315e:
    ld a, [$0000]
    ld [$0000], a
    dec de
    ld a, d
    or e
    jr nz, jr_000_315e

    dec b
    jr nz, jr_000_315e

    ret


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

Call_000_3191:
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

Jump_000_31ae:
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

Jump_000_31ce:
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

Jump_000_31f1:
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

Call_000_31ff:
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

Call_000_3211:
    ld a, [de]
    dec de
    inc e
    dec e

Call_000_3215:
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


    call nc, Call_000_0032
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    rrca
    ld e, d
    ld b, $d4
    ld [hl-], a
    nop
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    add d
    ld [hl], d
    rra
    call nc, Call_000_0032
    call nc, Call_000_0032
    add d
    ld [hl], d

Jump_000_3285:
    rra
    ld c, a
    ld b, e
    dec e
    ld d, b
    ld b, [hl]
    dec e
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    and a
    ld l, b
    add hl, bc
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    call nc, Call_000_0032
    add d
    ld [hl], d
    rra
    call nc, Call_000_0032
    add d
    ld [hl], d
    rra
    ret


Call_000_32d5:
    ldh a, [$ff8a]
    ld [$cd25], a
    ldh a, [$ff8b]
    or a
    ld hl, $cd26
    jr nz, jr_000_3303

    ld a, [hl]

Call_000_32e3:
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
    rlca
    db $e3
    ld b, b
    rlca
    cpl
    ld b, c
    rlca
    ld a, e
    ld b, c
    rlca
    rst $00
    ld b, c
    rlca
    inc de
    ld b, d
    rlca
    rst $30
    ld b, d
    rlca
    ld b, e
    ld b, e
    rlca
    db $db
    ld b, e
    rlca
    daa
    ld b, h
    rlca
    ld [hl], e
    ld b, h
    rlca
    cp a
    ld b, h
    rlca
    dec bc
    ld b, l
    rlca

Call_000_335f:
    ld d, a
    ld b, l
    rlca
    and e
    ld b, l
    rlca
    rst $28
    ld b, l
    rlca
    dec sp
    ld b, [hl]
    rlca
    add a
    ld b, [hl]
    rlca
    db $d3
    ld b, [hl]
    rlca
    rra
    ld b, a
    rlca
    inc bc
    ld c, b
    rlca
    ld c, a
    ld c, b
    rlca
    sbc e
    ld c, b
    rlca
    inc sp
    ld c, c
    rlca
    bit 1, c
    rlca
    rla
    ld c, d
    rlca
    ld h, e
    ld c, d
    rlca
    xor a
    ld c, d
    rlca
    ei
    ld c, d
    rlca
    rst $18
    ld c, e
    rlca
    ld [hl], a

Call_000_3393:
    ld c, h

Call_000_3394:
    rlca
    jp Jump_000_074c


    ld e, e
    ld c, l
    rlca
    adc e
    ld c, [hl]
    rlca
    inc hl
    ld c, a
    rlca
    cp e
    ld c, a
    rlca
    ld d, e
    ld d, b
    rlca
    add e
    ld d, c
    rlca
    ld h, a
    ld d, d
    rlca
    or e
    ld d, d
    rlca
    ld a, e
    ld d, h
    rlca
    ld e, a
    ld d, l
    rlca
    cp a
    ld d, a
    rlca
    rst $28
    ld e, b
    rlca
    db $d3
    ld e, c
    rlca
    sbc e
    ld e, e
    rlca
    ld b, a
    ld e, [hl]
    rlca
    ld [hl], a
    ld e, a
    rlca
    jp $075f


    ccf
    ld h, c
    rlca
    rst $10
    ld h, c
    rlca
    cp e
    ld h, d
    rlca
    rlca
    ld h, e
    rlca
    scf
    ld h, h
    rlca
    rst $08
    ld h, h
    rlca
    ld h, a
    ld h, l
    rlca
    ld c, e
    ld h, [hl]
    rlca
    db $e3
    ld h, [hl]
    rlca
    ld a, e
    ld h, a
    rlca
    rst $30
    ld l, b
    rlca
    ld b, e
    ld l, c
    rlca
    adc a
    ld l, c
    rlca
    db $db
    ld l, c
    rlca
    daa
    ld l, d
    rlca
    ld [hl], e
    ld l, d
    rlca
    cp a
    ld l, d
    rlca
    ld l, e

Call_000_33ff:
    ld b, a

Jump_000_3400:
    rlca
    dec bc
    ld l, e
    rlca
    ld d, a
    ld l, e
    rlca
    or a
    ld b, a
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b

Jump_000_3424:
    rlca
    reti


    ld [hl], b
    rlca

Call_000_3428:
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca

Jump_000_3434:
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b

Call_000_347b:
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca

Call_000_34ca:
    reti


Jump_000_34cb:
    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca

Call_000_34df:
    reti


Jump_000_34e0:
    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca

Call_000_34f4:
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca

Call_000_3500:
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b

Jump_000_3508:
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    reti


    ld [hl], b
    rlca
    inc hl
    ld b, e
    ld a, [bc]
    ld l, a
    ld b, e
    ld a, [bc]
    cp e
    ld b, e
    ld a, [bc]
    rlca
    ld b, h
    ld a, [bc]
    ld d, e
    ld b, h
    ld a, [bc]
    sbc a
    ld b, h
    ld a, [bc]
    db $eb
    ld b, h
    ld a, [bc]
    scf
    ld b, l
    ld a, [bc]
    add e
    ld b, l
    ld a, [bc]
    rst $08
    ld b, l
    ld a, [bc]
    dec de
    ld b, [hl]
    ld a, [bc]
    ld h, a
    ld b, [hl]
    ld a, [bc]
    or e
    ld b, [hl]
    ld a, [bc]
    rst $38
    ld b, [hl]
    ld a, [bc]
    ld c, e
    ld b, a
    ld a, [bc]
    sub a
    ld b, a
    ld a, [bc]
    db $e3
    ld b, a
    ld a, [bc]
    cpl
    ld c, b
    ld a, [bc]
    ld e, a
    ld c, c
    ld a, [bc]
    xor e
    ld c, c
    ld a, [bc]
    rst $30
    ld c, c
    ld a, [bc]
    ld b, e
    ld c, d
    ld a, [bc]
    adc a
    ld c, d
    ld a, [bc]
    db $db
    ld c, d
    ld a, [bc]
    daa
    ld c, e
    ld a, [bc]
    ld [hl], e
    ld c, e
    ld a, [bc]
    cp a
    ld c, e
    ld a, [bc]
    dec bc
    ld c, h
    ld a, [bc]
    ld d, a
    ld c, h
    ld a, [bc]
    and e
    ld c, h
    ld a, [bc]
    rst $28
    ld c, h
    ld a, [bc]
    dec sp
    ld c, l
    ld a, [bc]
    adc l
    ld l, l
    inc c
    ld d, l
    ld l, a
    inc c
    or l
    ld [hl], c
    inc c
    ld bc, $0c72
    sbc c
    ld [hl], d
    inc c
    ret


    ld [hl], e
    inc c
    xor l
    ld [hl], h
    inc c
    and l
    ld [hl], a
    inc c
    dec a
    ld a, b
    inc c
    rst $20
    ld c, a
    ld a, [bc]
    ld l, l
    ld a, c
    inc c
    cp c
    ld a, c
    inc c
    dec b
    ld a, d
    inc c
    ld d, c
    ld a, d
    inc c
    sbc l
    ld a, d
    inc c
    jp hl


    ld a, d
    inc c
    dec [hl]
    ld a, e
    inc c
    add c
    ld a, e
    inc c
    call Call_000_0c7b
    sbc e
    ld c, a
    ld a, [bc]
    rst $28
    ld d, [hl]
    db $10
    dec sp
    ld d, a
    db $10
    add a
    ld d, a
    db $10
    db $d3
    ld d, a
    db $10
    rra
    ld e, b
    db $10
    ld l, e
    ld e, b
    db $10

Jump_000_35c0:
    or a
    ld e, b
    db $10
    inc bc
    ld e, c
    db $10
    ld c, a
    ld e, c
    db $10
    sbc e
    ld e, c
    db $10
    rst $20
    ld e, c
    db $10
    inc sp
    ld e, d
    db $10
    ld a, a
    ld e, d
    db $10
    bit 3, d
    db $10
    rla
    ld e, e
    db $10
    ld h, e
    ld e, e
    db $10
    xor a
    ld e, e
    db $10
    ei
    ld e, e
    db $10
    sub e
    ld e, h
    db $10
    rrca
    ld e, [hl]
    db $10
    ld e, e
    ld e, [hl]
    db $10
    and a
    ld e, [hl]
    db $10
    di
    ld e, [hl]
    db $10
    ccf

Jump_000_35f4:
    ld e, a
    db $10
    inc bc
    ld c, a
    ld a, [bc]
    ld c, a
    ld c, a
    ld a, [bc]
    sub e
    ld d, d
    ld a, [bc]

Jump_000_35ff:
    rst $18
    ld d, d
    ld a, [bc]
    adc e
    ld e, a
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a

Jump_000_3612:
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    adc a
    ld h, b
    db $10
    or c
    ld a, l
    inc c

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

Jump_000_365a:
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

Call_000_36cd:
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

Call_000_36fb:
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
    ld a, [TimePaused]
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

Call_000_37bf:
    ret


Jump_000_37c0:
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

Call_000_3828:
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

Jump_000_38c3:
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

Call_000_38d6:
    ld a, $00
    adc d
    ld d, a
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [de], a
    ld a, [$cb6d]
    ld de, $9c22
    add e

Call_000_38e8:
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

Call_000_38ff:
    call Call_000_3edc

Call_000_3902:
jr_000_3902:
    ldh a, [$ff8b]
    and $01

Jump_000_3906:
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


    ld [hl+], a
    sbc h
    ld a, [hl+]
    sbc h
    ld h, d
    sbc h
    ld l, d
    sbc h

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


    ldh a, [$ff8b]
    and $01
    jr nz, jr_000_3a51

    ldh a, [$ff8b]
    cp $20
    jr z, jr_000_3a8f

    cp $10
    jp z, Jump_000_3a9e

    ld a, [$b905]
    cp $00
    jr z, jr_000_3a3e

    call Call_000_0d2b
    ld a, [$cb5d]
    ld [$9c6d], a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [$9c62], a
    ret


jr_000_3a3e:
    call Call_000_0d2b
    ld a, [$cb5d]
    ld [$9c62], a
    call Call_000_0d2b
    ld a, [$cb5c]
    ld [$9c6d], a
    ret


jr_000_3a51:
    ld a, [$b905]
    or a
    jr nz, jr_000_3a79

    xor a
    ld [TimePaused], a
    ld [$cb57], a
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
    call Call_000_3ed0
    ret


jr_000_3a79:
    call Call_000_3e2a
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    call Call_000_3e39
    xor a
    ld [$cb58], a
    call Call_000_3ed0
    ret


jr_000_3a8f:
    ld a, [$b905]
    cp $01
    ret nz

    ld a, $00
    ld [$b905], a
    call Call_000_3edc
    ret


Jump_000_3a9e:
    ld a, [$b905]
    cp $00
    ret nz

    ld a, $01
    ld [$b905], a
    call Call_000_3edc
    ret


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

Jump_000_3ac7:
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

Jump_000_3ae4:
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

Call_000_3b28:
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
    ld [TimePaused], a
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
    ld [TimePaused], a
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

Call_000_3bff:
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

Call_000_3c1c:
    ret


Call_000_3c1d:
    ld a, [$cb8f]

Jump_000_3c20:
    or a
    jr z, jr_000_3c2c

    ld hl, $431d
    ld a, $08

Call_000_3c28:
    call Call_000_1f96
    ret


Jump_000_3c2c:
jr_000_3c2c:
    ld a, [$cb52]
    cp $ff
    ret nz

    ld a, [$cb57]
    or a
    jr z, jr_000_3c3c

Call_000_3c38:
    call Call_000_3994
    ret


Jump_000_3c3c:
jr_000_3c3c:
    ld a, [TimePaused]
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
    ld [TimePaused], a
    ld a, $01
    ld [$cb52], a
    ld [$cb57], a
    xor a
    ld [$cb58], a
    call Call_000_3e39
    ret


jr_000_3c66:
    call Call_000_3d08

Jump_000_3c69:
    ldh a, [$ff8b]
    and $01
    ret z

    xor a
    ldh [$ff8b], a
    ld a, $01
    ld [$cbf6], a
    xor a
    ld [TimePaused], a
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
    ld [TimePaused], a
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

    ld a, [GrabbingDog3]
    or a
    jr nz, jr_000_3d06

Call_000_3cf2:
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

Jump_000_3ddf:
    jr nz, jr_000_3dd8

    dec b
    jr nz, jr_000_3dd6

    ldh a, [$ffa5]
    ld [$2100], a
    ret


    sub b
    nop
    jr nz, jr_000_3def

    or b

jr_000_3def:
    ld bc, $0240
    ld h, b
    inc bc
    ldh a, [$ff03]
    add b
    inc b
    db $10
    dec b
    ret nc

    dec bc
    jr nc, jr_000_3e0d

Jump_000_3dfe:
    nop
    db $10
    ret nc

    ld [bc], a
    and b
    dec b

Call_000_3e04:
    jr nc, jr_000_3e0c

    ldh a, [$ff0c]
    ld h, b
    inc c
    add b
    dec c

jr_000_3e0c:
    ret nz

jr_000_3e0d:
    ld b, $50
    rlca
    ldh [rTAC], a
    ld [hl], b
    ld [$0900], sp
    sub b
    add hl, bc
    jr nz, jr_000_3e24

    or b
    ld a, [bc]
    ld b, b
    dec bc
    or b
    ld de, $1090
    jr nz, jr_000_3e35

jr_000_3e24:
    db $10
    ld c, $a0
    ld c, $00
    nop

Call_000_3e2a:
jr_000_3e2a:
    call Call_000_0d2b
    ld a, $c3
    ld [$c0a2], a
    ldh [rLCDC], a
    xor a

jr_000_3e35:
    ld [$cb4c], a
    ret


Call_000_3e39:
    call Call_000_393d
    ld a, $07
    ldh [WindowX], a
    ld a, $68
    ldh [WindowY], a
    call Call_000_0d2b
    ld a, $e3
    ld [$c0a2], a
    ldh [rLCDC], a
    ld a, $01
    ld [$cb4c], a

Jump_000_3e53:
    ret


Call_000_3e54:
    ld a, $ff
    ld [$cb52], a
    xor a
    ld [$cb53], a
    ld [$cb54], a
    ld [$cb55], a
    xor a
    ld [TimePaused], a
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
    ld [TimePaused], a
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

    ld a, $1e
    jr jr_000_3f0a

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
