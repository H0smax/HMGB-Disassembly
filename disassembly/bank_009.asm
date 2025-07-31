; Disassembly of "HMGB.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    add hl, bc
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    push hl
    push af
    ld l, $01
    ld h, $45
    ld a, $08
    call Call_000_1f96
    pop af
    pop hl
    ld hl, $4651
    ld c, $1c
    ld de, $8800
    call Call_000_2f41
    ld hl, $4001
    ld c, $1c
    ld de, $9000
    call Call_000_2f41
    ld hl, $4cd7
    ld c, $1c
    ld de, $8000
    call Call_000_2f41
    ld hl, $4fc8
    ld c, $1c
    ld de, $9800
    call Call_000_2f41
    xor a
    ldh [CameraX], a
    ldh [CameraY], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [TimePaused], a
    ld a, [$cd2a]
    cp $08
    jr c, jr_009_4066

    xor a
    ld [$cd2a], a

jr_009_4066:
    add a
    ld hl, $40a9
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd68], a
    ld [$cd69], a
    ld [$cd2b], a
    ld a, $1d
    ld [TransitionRelated], a
    ld hl, $c000
    ld bc, $00a0
    call ClearMem
    ld a, $54
    call Call_000_23cf
    ld a, $83
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    rst $08
    ld b, b
    rst $18
    ld b, b
    rst $28
    ld b, b
    rst $38
    ld b, b
    rrca
    ld b, c
    rra
    ld b, c
    cpl
    ld b, c
    ccf
    ld b, c
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_000_32d5
    call Call_009_4698
    call Call_009_415d
    ret


    ldh a, [rSTAT]
    nop
    rst $30
    ld b, c
    ccf
    ld b, c
    rst $18
    ld b, b
    ccf
    ld b, c
    rst $18
    ld b, b
    nop
    jr @-$7c

    ldh a, [rSTAT]
    ld bc, MoveToHouse
    rst $08
    ld b, b
    rst $28
    ld b, b
    rst $08
    ld b, b
    rst $28
    ld b, b
    ld [$1412], sp
    ldh a, [rSTAT]
    ld [bc], a
    rst $30
    ld b, c
    rst $18
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld b, b
    rst $38
    ld b, b
    ld [de], a
    jr jr_009_4114

    ldh a, [rSTAT]
    inc bc
    rst $30
    ld b, c
    rst $28
    ld b, b
    rrca
    ld b, c
    rst $28
    ld b, b
    rrca
    ld b, c
    ld [$1612], sp
    ldh a, [rSTAT]
    inc b
    rst $30
    ld b, c

jr_009_4114:
    rst $38
    ld b, b
    rra
    ld b, c
    rst $38
    ld b, b
    rra
    ld b, c
    ld [$1a12], sp
    ldh a, [rSTAT]
    dec b
    rst $30
    ld b, c
    rrca
    ld b, c
    cpl
    ld b, c
    rrca
    ld b, c
    cpl
    ld b, c
    ld [$1712], sp
    ldh a, [rSTAT]
    ld b, $f7
    ld b, c
    rra
    ld b, c
    ccf
    ld b, c
    rra
    ld b, c
    ccf
    ld b, c
    ld [$1812], sp
    ldh a, [rSTAT]
    rlca
    rst $30
    ld b, c
    cpl
    ld b, c
    rst $08
    ld b, b
    cpl
    ld b, c
    rst $08
    ld b, b
    ld [$1912], sp
    xor b
    ld b, d
    ld d, a
    ld b, c
    scf
    ld c, h
    ld d, e
    ld b, c
    ld a, [hl-]
    ld b, e
    scf
    ld c, h
    ld d, e
    ld b, c

Call_009_415d:
    ld hl, $cd68
    ld b, $10
    call Call_009_43a7
    ld b, $04
    inc hl
    call z, Call_009_43a7
    ld a, [$cd2a]
    ld hl, $41b0
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $41c0
    ld a, [$b8ec]
    or a
    jr z, jr_009_4187

    ld hl, $41c8

jr_009_4187:
    ld a, [$cd69]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef5
    ld a, [$cd2a]
    ld hl, $41d0
    add a
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef5
    ret


    sbc b
    ld d, b
    adc b
    ld b, b
    ld d, b
    jr nc, jr_009_41d7

    ld c, b
    ld [$2850], sp
    add b
    ld e, b
    adc b
    adc b
    add b
    rst $00
    ld b, e
    xor [hl]
    ld b, e
    ldh [rSCX], a
    xor [hl]
    ld b, e
    ld c, l
    ld b, [hl]
    ld h, [hl]
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld d, b
    ld c, b
    and e
    ld b, l
    ld d, b
    ld c, b
    ld [hl], e

jr_009_41d7:
    ld b, h
    ld d, b
    ld c, b
    ld [hl], $44
    ld d, b
    ld c, b
    ld sp, hl
    ld b, e
    ld d, b
    ld c, b
    ld hl, sp+$45
    ld d, b
    ld c, b
    or b
    ld b, h
    ld d, b
    ld c, b
    ld sp, hl
    ld b, h
    ld d, b
    ld c, b
    ld c, [hl]
    ld b, l
    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd2a], a
    ret


MoveToHouse::
    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_009_4242

    bit 1, a
    jp nz, Jump_009_42a5

    bit 4, a
    jr nz, jr_009_4218

    bit 5, a
    jr nz, jr_009_4221

    bit 6, a
    jr nz, jr_009_4225

    bit 7, a
    jr nz, jr_009_422f

    dec hl
    dec hl
    ret


jr_009_4218:
    ld a, $48
    call Call_000_23d8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4221:
    inc hl
    inc hl
    jr jr_009_4218

jr_009_4225:
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_009_4218

jr_009_422f:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_009_4218

jr_009_4239:
    ld a, $51
    call Call_000_23d5
    pop hl
    dec hl
    dec hl
    ret


jr_009_4242:
    push hl
    ld a, [$cd2a]
    or a
    jr z, jr_009_4267

    cp $04
    jr nz, jr_009_4254

    ld a, [$b89a]
    cp $01
    jr z, jr_009_4239

jr_009_4254:
    ld a, [$b890]
    or a
    jr nz, jr_009_4239

    ld a, [$b891]
    or a
    jr nz, jr_009_4239

    ld a, [$b899]
    cp $01
    jr z, jr_009_4239

jr_009_4267:
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [sCurrentHour]
    cp [hl]
    jr c, jr_009_4239

    inc hl
    cp [hl]
    jr nc, jr_009_4239

    inc hl
    pop de
    push hl

Jump_009_427c:
    call CheckCurrentMoney
    pop hl
    ld a, $42
    call Call_000_23d5
    ld a, [hl+]
    bit 7, a
    jr nz, jr_009_4293

jr_009_428a:
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    ret


jr_009_4293:
    and $7f
    cp $02
    jr nz, jr_009_428a

    ld hl, $414f
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Jump_009_42a5:
    dec hl
    dec hl
    ret


    push bc
    call Call_000_0fe5
    ld a, [sCurrentHour]
    cp $05
    jr z, jr_009_430b

    cp $10
    call z, Call_009_4310
    call Call_009_435d
    ld a, [sCurrentHour]
    cp $05
    jr nz, jr_009_42cf

    ld a, [sTimerMinutes]
    cp $0e
    jr nz, jr_009_42f6

    dec a
    ld [sTimerMinutes], a
    jr jr_009_42f6

jr_009_42cf:
    ld a, [sCurrentHour]
    cp $12
    jr nz, jr_009_42f6

    xor a
    ld [$b890], a
    ld [$b891], a
    ld [$c760], a
    ld a, $10
    ld [$ae30], a
    ld a, $00
    ld [$ae31], a
    ld a, [$b899]
    and $01
    jr z, jr_009_42f6

    ld a, $03
    ld [$b899], a

jr_009_42f6:
    xor a
    ld [TimePaused], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    pop hl
    ret


jr_009_430b:
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_009_4310:
    xor a
    ld [$cb90], a
    ld a, [$b93d]
    ld b, a
    ld a, [$b93e]
    or b
    jr z, jr_009_4332

    ld a, [$b93d]
    ld [$b8fc], a
    ld a, [$b93e]
    ld [$b8fd], a
    xor a
    ld [$b93d], a
    ld [$b93e], a
    ret


jr_009_4332:
    xor a
    ld [$b8fc], a
    ld [$b8fd], a
    ret


    push bc
    ld a, $05
    ld [sCurrentHour], a
    ld a, $0d
    ld [sTimerMinutes], a
    call Call_000_0491
    pop hl
    xor a
    ld [TimePaused], a
    ld a, $05
    ld [$c910], a
    ld a, $01
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    ret


Call_009_435d:
    ld a, [sCurrentHour]
    inc a
    ld [sCurrentHour], a
    cp $18
    jr nc, jr_009_436c

    call Call_000_0491
    ret


jr_009_436c:
    xor a
    ld [sCurrentHour], a
    call Call_000_0491
    ld a, [sCurrentDay]
    inc a
    ld [sCurrentDay], a
    cp $1e
    jr nc, jr_009_4382

    call Call_000_054a
    ret


jr_009_4382:
    xor a
    ld [sCurrentDay], a
    call Call_000_054a
    ld a, [sCurrentSeason]
    inc a
    ld [sCurrentSeason], a
    cp $04
    jr nc, jr_009_4398

    call Call_000_05e2
    ret


jr_009_4398:
    xor a
    ld [sCurrentSeason], a
    call Call_000_05e2
    ld a, [sCurrentYear]
    inc a
    ld [sCurrentYear], a
    ret


Call_009_43a7:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    ld sp, hl
    nop
    dec b
    nop
    ld sp, hl
    ld hl, sp+$04
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld hl, sp+$02
    nop
    jp hl


    nop
    ld bc, $e900
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    add hl, bc
    nop
    ld hl, sp-$08
    ld [$f000], sp
    nop
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    dec c
    nop
    ld hl, sp-$08
    inc c
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    add sp, $00
    ld bc, $e800
    ld hl, sp+$00
    nop
    add b
    inc b
    inc c
    ld d, $00
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    inc d
    nop
    db $fc
    inc c
    inc de
    nop
    db $fc
    db $ec
    ld de, $f400
    inc c
    stop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $fc
    inc b
    add hl, de
    nop
    db $fc
    db $fc
    jr jr_009_442d

jr_009_442d:
    db $fc
    db $f4
    rla
    nop
    db $f4
    db $ec
    ld c, $00
    add b
    inc b
    inc c
    ld d, $00
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    inc d
    nop
    db $fc
    inc c
    inc de
    nop
    db $fc
    db $ec
    ld de, $f400
    inc c
    stop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $f4
    db $ec
    ld c, $00
    db $fc
    inc b
    inc e
    nop
    db $fc
    db $fc
    dec de
    nop
    db $fc
    db $f4
    ld a, [de]
    nop
    add b
    inc b
    inc c
    ld d, $00
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    inc d
    nop
    db $fc
    inc c
    inc de
    nop
    db $fc
    db $ec
    ld de, $f400
    inc c
    stop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $f4
    db $ec
    ld c, $00
    db $fc
    inc b
    rra
    nop
    db $fc
    db $fc
    ld e, $00
    db $fc
    db $f4
    dec e
    nop
    add b
    inc b
    ld [$0015], sp
    inc b
    nop
    dec d

MoveToToolRoom::
    nop
    inc b
    ld hl, sp+$15
    nop
    inc b
    ldh a, [$ff15]
    nop
    inc b
    db $10
    ld d, $00
    inc b
    add sp, $14
    nop
    db $fc
    db $10
    inc de
    nop
    db $fc
    add sp, $11
    nop
    db $f4
    db $10
    stop
    db $f4
    ld [$000f], sp
    db $f4
    nop
    rrca
    nop
    db $f4
    ld hl, sp+$0f
    nop
    db $f4
    ldh a, [rIF]
    nop
    db $f4
    add sp, $0e
    nop
    db $fc
    ld [$001f], sp
    db $fc
    nop
    inc h
    nop
    db $fc
    ld hl, sp+$23
    nop
    db $fc
    ldh a, [rNR43]
    nop
    add b
    inc b
    inc d
    ld d, $00
    inc b
    inc c
    dec d
    nop
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    dec d
    nop
    inc b
    db $e4
    inc d
    nop
    db $fc
    inc d
    inc de
    nop
    db $fc
    db $e4
    ld de, $f400
    inc d
    stop
    db $f4
    inc c
    rrca
    nop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $f4
    db $ec
    rrca
    nop
    db $f4
    db $e4
    ld c, $00
    db $fc
    inc c
    inc hl
    nop
    db $fc
    inc b
    ld [hl+], a
    nop
    db $fc
    db $fc
    add hl, de
    nop
    db $fc
    db $f4
    ld hl, $fc00
    db $ec
    jr nz, jr_009_454d

jr_009_454d:
    add b
    db $fc
    inc c
    rra
    nop
    db $fc
    inc b
    ld h, $00
    db $fc
    db $fc
    dec h
    nop
    db $fc
    db $f4
    inc hl
    nop
    db $fc
    db $ec
    ld [hl+], a
    nop
    inc b
    inc d
    ld d, $00
    inc b
    inc c
    dec d
    nop
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    dec d
    nop
    inc b
    db $e4
    inc d
    nop
    db $fc
    inc d
    inc de
    nop
    db $fc
    db $e4
    ld de, $f400
    inc d
    stop
    db $f4
    inc c
    rrca
    nop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $f4
    db $ec
    rrca
    nop
    db $f4
    db $e4
    ld c, $00
    add b
    db $fc
    inc c
    ld a, [hl+]
    nop
    inc b
    inc d
    ld d, $00
    inc b
    inc c
    dec d
    nop
    db $fc
    inc d
    inc de
    nop
    db $f4
    inc d
    stop
    db $f4
    inc c
    rrca
    nop
    db $fc
    inc b
    ld l, $00
    db $fc
    db $f4
    dec l
    nop
    db $fc
    db $ec
    inc l
    nop
    inc b
    db $ec
    dec d
    nop
    db $f4
    db $ec
    rrca
    nop
    inc b
    db $f4
    dec d
    nop
    db $f4
    db $f4
    rrca
    nop
    inc b
    db $e4
    inc d
    nop
    db $fc
    db $e4
    ld de, $f400
    db $e4
    ld c, $00
    db $fc
    db $fc
    jr z, jr_009_45e7

jr_009_45e7:
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    add b
    db $fc
    db $ec
    dec hl
    nop
    db $fc
    db $f4
    ld hl, $fc00
    inc c
    jr jr_009_4604

jr_009_4604:
    db $fc
    inc b
    dec de
    nop
    db $fc
    db $fc
    inc hl
    nop
    inc b
    inc d
    ld d, $00
    inc b
    inc c
    dec d
    nop
    inc b
    inc b
    dec d
    nop
    inc b
    db $fc
    dec d
    nop
    inc b
    db $f4
    dec d
    nop
    inc b
    db $ec
    dec d
    nop
    inc b
    db $e4
    inc d
    nop
    db $fc
    inc d
    inc de
    nop
    db $fc
    db $e4
    ld de, $f400
    inc d
    stop
    db $f4
    inc c
    rrca
    nop
    db $f4
    inc b
    rrca
    nop
    db $f4
    db $fc
    rrca
    nop
    db $f4
    db $f4
    rrca
    nop
    db $f4
    db $ec
    rrca
    nop
    db $f4
    db $e4
    ld c, $00
    add b
    rst $30
    nop
    dec [hl]
    nop
    rst $30
    ld hl, sp+$34
    nop
    rst $28
    nop
    inc sp
    nop
    rst $28
    ld hl, sp+$32
    nop
    rst $20
    nop
    ld sp, $e700
    ld hl, sp+$30
    nop
    add b
    rst $30
    nop
    dec sp
    nop
    rst $30
    ld hl, sp+$3a
    nop
    rst $28
    nop
    add hl, sp
    nop
    rst $28
    ld hl, sp+$38
    nop
    rst $20
    nop
    scf
    nop
    rst $20
    ld hl, sp+$36
    nop
    add b
    rst $30
    nop
    ccf
    nop
    rst $30
    ld hl, sp+$3e
    nop
    rst $28
    nop
    dec a
    nop
    rst $28
    ld hl, sp+$3c
    nop
    rst $20
    nop
    scf
    nop
    rst $20
    ld hl, sp+$36
    nop
    add b

Call_009_4698:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $46ab
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    ld hl, $46bb
    call Call_009_53c2
    ret


    inc hl
    ld e, b
    inc e
    ld h, a
    ld h, h
    inc e
    dec h
    ld h, a
    inc e
    ld b, d
    ld c, b
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47ef
    call Call_009_47c4
    ret


Call_009_46ef:
    ldh a, [$ff8b]
    and $04
    jp nz, Jump_009_4797

    ld a, [$c0a2]
    bit 5, a
    ret z

    ld hl, sCurrentMoneyL
    ld de, wCurrentMoneyL
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_3179
    ld a, [$cccd]
    ld bc, $8060
    call Call_009_473c
    ld a, [$ccce]
    ld bc, $8068
    call Call_009_473c
    ld a, [$cccf]
    ld bc, $8070
    call Call_009_473c
    ld a, [$ccd0]
    ld bc, $8078
    call Call_009_473c
    ld a, [$ccd1]
    ld bc, $8080
    call Call_009_473c
    pop hl
    ret


Call_009_473c:
    cp $af
    jr nz, jr_009_4747

    ld hl, $4792
    call Call_000_1ef5
    ret


jr_009_4747:
    sub $0a
    cp $10
    jr c, jr_009_474f

    sub $0a

jr_009_474f:
    ld l, a
    add a
    add a
    add l
    ld hl, $4760
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    call Call_000_1ef5
    ret


    nop
    nop
    ldh [c], a
    nop
    add b
    nop
    nop
    db $e3
    nop
    add b
    nop
    nop
    db $e4
    nop
    add b
    nop
    nop
    push hl
    nop
    add b
    nop
    nop
    and $00
    add b
    nop
    nop
    rst $20
    nop
    add b
    nop
    nop
    add sp, $00
    add b
    nop
    nop
    jp hl


    nop
    add b
    nop
    nop
    ld [$8000], a
    nop
    nop
    db $eb
    nop
    add b
    nop
    nop
    xor $00
    add b

Jump_009_4797:
    ld a, [$c0a2]
    bit 5, a
    jr z, jr_009_47b1

    ld a, [$c0a2]
    ld b, a

jr_009_47a2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_009_47a2

    ld a, b
    and $df
    ldh [rLCDC], a
    ld [$c0a2], a
    ret


jr_009_47b1:
    ld a, [$c0a2]
    ld b, a

jr_009_47b5:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_009_47b5

    ld a, b
    or $20
    ldh [rLCDC], a
    ld [$c0a2], a
    ret


Call_009_47c4:
    ld a, [$cd33]
    or a
    ret z

    ld hl, $47e5
    ld a, [$cd32]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $47e0
    call Call_000_1ef5
    ret


    nop
    nop
    rst $18
    nop
    add b
    inc e
    ld c, b
    inc [hl]
    ld c, b
    ld c, h
    ld c, b
    ld h, h
    ld c, b
    ld a, h
    ld c, b

Call_009_47ef:
    ld a, [$cd33]
    cp $04
    ret c

    ld a, [$cd31]
    or a
    jr z, jr_009_4804

    ld bc, $500c
    ld hl, $4825
    call Call_000_1ef5

jr_009_4804:
    ld a, [$cd31]
    add $04
    ld b, a
    ld a, [$cd33]
    dec a
    cp b
    ret z

    ld a, [$cd31]
    ld b, a
    ld a, [$cd33]
    sub b
    cp $05
    ret c

    ld bc, $508c
    ld hl, $482e
    call Call_000_1ef5
    ret


    nop
    nop
    ldh [rP1], a
    ld [$f000], sp
    nop
    add b
    nop
    nop
    pop hl
    nop
    ld [$f100], sp
    nop
    add b

Call_009_4837:
    ld hl, $b8f8
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    cp [hl]
    ld c, b
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    ld l, h
    ld e, a
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, e
    sbc d
    ld c, b
    or d
    ld c, b
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    inc c
    ld c, e
    ld h, h
    ld c, e
    ld [hl], a
    ld c, b
    sbc d
    ld c, b
    or d
    ld c, b
    and [hl]
    ld c, b
    ld c, h
    ld c, h
    cp [hl]
    ld c, b
    dec hl
    ld c, e
    ld d, [hl]
    ld c, e
    ld [hl], a
    ld c, b
    or d
    ld c, b
    dec a
    ld c, h
    ld l, h
    ld h, c
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    cp d
    ld c, b
    push bc
    call $4aaa
    xor a
    ld [$cd33], a
    ld hl, $48fe
    call Call_009_494f
    ld hl, $4907
    call Call_009_494f
    ld hl, $4910
    call Call_009_494f
    ld hl, $4919
    call Call_009_494f
    ld hl, $4922
    call Call_009_494f
    ld hl, $492b
    call Call_009_494f
    ld hl, $4934
    call Call_009_494f
    ld hl, $493d
    call Call_009_494f
    ld hl, $4946
    call Call_009_494f
    pop hl
    ret


    jp nc, $01b8

    rra
    db $fd
    ld h, e
    adc d
    ld e, a
    ld d, h
    db $d3
    cp b
    ld bc, $071f
    ld h, h
    cp e
    ld e, a
    ld e, b
    call nc, $02b8
    rra
    ld de, $ec64
    ld e, a
    ld e, h
    push de
    cp b
    ld [bc], a
    rra
    dec de
    ld h, h
    dec e
    ld h, b
    ld h, b
    sub $b8
    inc b
    dec bc
    dec h
    ld h, h
    ld c, [hl]
    ld h, b
    ld h, h
    rst $10
    cp b
    inc b
    dec d
    cpl
    ld h, h
    ld a, a
    ld h, b
    ld l, b
    ret c

    cp b
    ld [$3913], sp
    ld h, h
    or b
    ld h, b
    ld l, h
    reti


    cp b
    ld [$430d], sp
    ld h, h
    pop hl
    ld h, b
    ld [hl], b
    jp c, Jump_000_07b8

    rra
    ld c, l
    ld h, h
    ld [de], a
    ld h, c
    ld d, b

Call_009_494f:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    cp $63
    ret nc

    call Call_009_4984
    ret z

    inc hl
    call $4999
    ret z

    inc hl
    ld de, $cd33
    ld a, [de]
    inc a
    ld [de], a
    dec a
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
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
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ret


Call_009_4984:
    push hl
    ld a, [sCurrentSeason]
    ld hl, $4995
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld bc, $0402
    ld [$fae5], sp
    db $f4
    cp b
    ld hl, $49aa
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    and [hl]
    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    db $10
    db $10
    db $10
    db $10
    ld [$0208], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0201
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $7c3e
    ld [$cd38], a
    ld [$cd3d], a
    ld [$cd42], a
    ld [$cd47], a
    ld [$cd4c], a
    ld [$cd51], a
    ld [$cd56], a
    ld [$cd5b], a
    ld [$cd60], a
    ret


    push bc
    call Call_000_0629
    pop bc
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, [$cd31]
    ld e, a
    ld a, [bc]
    inc bc
    add e
    ld e, a
    add a
    add a
    add e
    ld de, $cd34
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    push af
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, [bc]
    inc bc
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    pop af
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    ldh a, [$ff97]
    add $0a
    ldh [$ff97], a
    ld h, b
    ld l, c
    ret


    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    ld hl, $cd34
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld [$cd6b], a
    ld a, [hl+]
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr z, jr_009_4b4e

    ld b, a
    ld a, [$cd30]
    cp b
    ret c

    ld a, b
    dec a
    ld [$cd30], a
    cp $05
    jr c, jr_009_4b4e

    ld a, b
    sub $04
    ld [$cd31], a
    ld a, $04
    ld [$cd32], a
    ret


jr_009_4b4e:
    ld [$cd32], a
    xor a
    ld [$cd31], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    or a
    jr nz, jr_009_4b60

    inc hl
    inc hl

jr_009_4b60:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [$cd33]
    dec a
    ld c, a
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_009_4b83

    bit 1, a
    jr nz, jr_009_4bb5

    ld a, [$cd24]
    bit 4, a
    jr nz, jr_009_4bc6

    bit 5, a
    jr nz, jr_009_4bff

    dec hl
    dec hl
    ret


jr_009_4b83:
    ld a, $06
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld hl, $cd34
    ld a, [$cd30]
    ld e, a
    add a
    add a
    add e
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cd6b], a
    ld a, [hl+]
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ld a, $42
    call Call_000_23d5
    pop hl
    ret


jr_009_4bb5:
    ld a, $51
    call Call_000_23d5
    ld a, $04
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4bc6:
    ld a, [$cd30]
    cp c
    jr nc, jr_009_4bfc

    inc a
    push af
    ld a, [$cd32]
    cp $04
    jr c, jr_009_4be9

    ld a, [$cd31]
    inc a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_23d8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4be9:
    inc a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_23d8
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4bfc:
    dec hl
    dec hl
    ret


jr_009_4bff:
    ld a, [$cd30]
    or a
    jr z, jr_009_4c34

    dec a
    push af
    ld a, [$cd32]
    or a
    jr nz, jr_009_4c21

    ld a, [$cd31]
    dec a
    ld [$cd31], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_23d8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c21:
    dec a
    ld [$cd32], a
    pop af
    ld [$cd30], a
    ld a, $48
    call Call_000_23d8
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_4c34:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cd6b], a
    ld a, [hl+]
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ret


    ld h, b
    ld l, c
    ld a, [$cd6a]
    or a
    ret nz

    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $13
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    ret


    ld hl, $4c6a
    call Call_009_53c2
    ret


    ld a, d

Jump_009_4c6b:
    ld e, c
    inc e
    jp z, Jump_000_1c5f

    cp e
    ld h, d
    inc e
    sbc [hl]
    ld c, h
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47c4
    call Call_009_47c4
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    ld a, [de]
    ld c, l
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    ld e, d
    ld c, [hl]
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, e
    or $4c
    ld c, $4d
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    inc c
    ld c, e
    ld h, h
    ld c, e
    db $d3
    ld c, h
    or $4c
    ld c, $4d
    ld [bc], a
    ld c, l
    ld c, h
    ld c, h
    ld a, [de]
    ld c, l
    dec hl
    ld c, e
    ld d, [hl]
    ld c, e
    db $d3
    ld c, h
    ld c, $4d
    dec a
    ld c, h
    ld e, [hl]
    ld c, a
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    ld d, $4d
    push bc
    call $4aaa
    ld a, $01
    ld [$cd33], a
    ld hl, $4d58
    ld de, $cd34
    ld b, $05
    call Call_000_210f
    call Call_009_4d7d
    jr c, jr_009_4d3e

    ld hl, $4d5d
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4d3e:
    ld hl, $4d62
    call Call_009_494f
    ld hl, $4d6b
    call Call_009_494f
    ld hl, $4d74
    ld a, [$b942]
    or a
    jr z, jr_009_4d56

    call Call_009_494f

jr_009_4d56:
    pop hl
    ret


    call Call_009_6c67
    ld c, [hl]
    ld d, h
    rst $10
    ld h, a
    sub a
    ld c, [hl]
    ld d, b
    jp z, Jump_000_0fb8

    rra
    pop hl
    ld h, a
    jp nz, Jump_009_584e

    res 7, b
    rrca
    rra
    db $eb
    ld h, a
    rst $28
    ld c, [hl]
    ld e, h
    call z, Call_000_0fb8
    rra
    push af
    ld h, a
    inc e
    ld c, a
    ld h, b

Call_009_4d7d:
    push hl
    push de
    push bc
    call Call_009_5065
    ld de, $0086
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop bc
    pop de
    pop hl
    ret


    ld hl, $4d97
    call Call_009_53c2
    ret


    adc d
    ld e, d
    inc e
    pop hl
    ld [hl], c
    inc e
    db $d3
    ld [hl], h
    inc e
    bit 1, l
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47ef
    call Call_009_47c4
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    ld c, c
    ld c, [hl]
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    sbc [hl]
    ld c, h
    ld c, h
    ld c, h
    scf
    ld c, h
    ld hl, $c84e
    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld d, [hl]
    ld c, e
    daa
    ld c, [hl]
    dec a
    ld c, [hl]
    inc c
    ld c, e
    ld h, h
    ld c, e
    cp $4d
    daa
    ld c, [hl]
    dec a
    ld c, [hl]
    inc sp
    ld c, [hl]
    ld c, h
    ld c, h
    ld c, c
    ld c, [hl]
    dec hl
    ld c, e
    scf
    ld c, h
    cp $4d
    dec a
    ld c, h
    dec h
    ld c, l
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    ld b, l
    ld c, [hl]
    push bc
    call $4aaa
    xor a
    ld [$cd33], a
    ld hl, $b938
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $03e7
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld de, $cd34
    jr nc, jr_009_4e71

    ld a, $01
    ld [$cd33], a
    ld hl, $4e8f
    ld b, $05
    call Call_000_210f

jr_009_4e71:
    ld a, [$b911]
    cp $02
    jr z, jr_009_4e8d

    ld a, [$b8fe]
    or a
    jr nz, jr_009_4e8d

    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ld hl, $4e94
    ld b, $06
    call Call_000_210f

jr_009_4e8d:
    pop hl
    ret


    ld [hl], a
    ld h, l
    cp h
    ld c, h
    ld d, b
    add c
    ld h, l
    db $fd
    ld c, h
    ld d, h
    ld hl, $4ea0
    call Call_009_53c2
    ret


    inc c
    ld e, e
    inc e
    ld a, $6d
    inc e
    dec [hl]
    ld [hl], b
    inc e
    call nc, $cd4e
    jp hl


    ld a, [bc]
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47ef
    call Call_009_47c4
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    ld d, e
    ld c, a
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    ei
    ld b, a
    ld c, h
    ld c, h
    scf
    ld c, h
    ld a, [hl+]
    ld c, a
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld d, [hl]
    ld c, e
    jr nc, jr_009_4f7d

    ld b, [hl]
    ld c, a
    inc c
    ld c, e
    ld h, h
    ld c, e
    rlca
    ld c, a
    jr nc, jr_009_4f87

    ld b, [hl]
    ld c, a
    inc a
    ld c, a
    ld c, h
    ld c, h
    ld d, e
    ld c, a
    dec hl
    ld c, e
    scf
    ld c, h
    rlca
    ld c, a
    dec a
    ld c, h
    sbc d
    ld c, c
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    ld c, [hl]
    ld c, a
    ld h, b
    push bc
    call $4aaa
    xor a
    ld [$cd33], a
    ld de, $cd34
    ld a, [$b898]
    or a
    jr z, jr_009_4f8d

    ld a, [$b8af]
    or a
    jr nz, jr_009_4f8d

    ld a, $12
    call Call_009_4837
    jr z, jr_009_4f8d

    call Call_009_502b
    jr c, jr_009_4f8d

    ld a, [$ba3e]
    cp $02
    jr z, jr_009_4f82

jr_009_4f7d:
    ld a, $01
    ld [$ba3e], a

jr_009_4f82:
    ld hl, $5000
    ld b, $05

jr_009_4f87:
    call Call_000_210f
    call Call_009_5023

jr_009_4f8d:
    ld a, [$b8ad]
    or a
    jr nz, jr_009_4fa5

    ld a, $09
    call Call_009_4837
    jr z, jr_009_4fa5

    ld hl, $500a
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4fa5:
    ld a, [$b8c2]
    or a
    jr nz, jr_009_4fbd

    ld a, [$b8ea]
    cp $02
    jr nz, jr_009_4fbd

    ld hl, $500f
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4fbd:
    ld a, [$b8ac]
    or a
    jr nz, jr_009_4fd5

    ld a, $08
    call Call_009_4837
    jr z, jr_009_4fd5

    ld hl, $5014
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4fd5:
    ld a, [$b942]
    cp $c8
    jr c, jr_009_4ffe

    ld a, [$b944]
    or a
    jr nz, jr_009_4fed

    ld hl, $5019
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4fed:
    ld a, [$b943]
    or a
    jr nz, jr_009_4ffe

    ld hl, $501e
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_4ffe:
    pop hl
    ret


    xor e
    ld h, l
    add l
    ld c, b
    ld e, h
    or l
    ld h, l
    db $d3
    ld c, b
    ld h, b
    cp a
    ld h, l
    dec l
    ld c, b
    ld d, b
    ret


    ld h, l
    ld d, a
    ld c, c
    ld e, b
    db $d3
    ld h, l
    ld e, c
    ld c, b
    ld d, h
    db $dd
    ld h, l
    dec hl
    ld c, c
    ld h, h
    rst $20
    ld h, l
    rst $38
    ld c, b
    ld l, b

Call_009_5023:
    ld a, [$cd33]
    inc a
    ld [$cd33], a
    ret


Call_009_502b:
    push hl
    push de
    push bc
    ld a, [$ba3d]
    ld hl, $0000
    or a
    jr z, jr_009_503f

    ld b, a
    ld de, $0078

jr_009_503b:
    add hl, de
    dec b
    jr nz, jr_009_503b

jr_009_503f:
    ld d, h
    ld e, l
    ld a, [$ba3c]
    ld c, $1e
    call Call_000_071e
    ld a, [$ba3b]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    push hl
    call Call_009_5065
    pop de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, l
    cp $07
    pop bc
    pop de
    pop hl
    ret


Call_009_5065:
    ld a, [sCurrentYear]
    ld hl, $0000
    or a
    jr z, jr_009_5076

    ld b, a
    ld de, $0078

jr_009_5072:
    add hl, de
    dec b
    jr nz, jr_009_5072

jr_009_5076:
    ld d, h
    ld e, l
    ld a, [sCurrentSeason]
    ld c, $1e
    call Call_000_071e
    ld a, [sCurrentDay]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    add hl, de
    ret


    ld hl, $5092
    call Call_009_53c2
    ret


    cp c
    ld e, h
    inc e
    pop de
    ld l, b
    inc e
    sub d
    ld l, e
    inc e
    add $50
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47ef
    call Call_009_47c4
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    ld b, d
    ld d, c
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    ld e, b
    ld e, h
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, e
    ld e, $51
    ld [hl], $51
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    inc c
    ld c, e
    ld h, h
    ld c, e
    ei
    ld d, b
    ld e, $51
    ld [hl], $51
    ld a, [hl+]
    ld d, c
    ld c, h
    ld c, h
    ld b, d
    ld d, c
    dec hl
    ld c, e
    ld d, [hl]
    ld c, e
    ei
    ld d, b
    ld [hl], $51
    dec a
    ld c, h
    ld l, b
    ld e, l
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    ld a, $51
    push bc
    call $4aaa
    ld a, $02
    ld [$cd33], a
    ld hl, $516a
    ld de, $cd34
    ld b, $0a
    call Call_000_210f
    ld hl, $5174
    call Call_009_494f
    ld hl, $517d
    call Call_009_494f
    ld hl, $5186
    call Call_009_494f
    pop hl
    ret


    ld c, e
    ld h, a
    halt
    ld e, h
    ld d, h
    ld d, l
    ld h, a
    and c
    ld e, h
    ld d, b
    push bc
    cp b
    rrca
    rra
    ld e, a
    ld h, a
    call z, Call_009_5c5c
    add $b8
    rrca
    rra
    ld l, c
    ld h, a
    ld sp, hl
    ld e, h
    ld e, b
    rst $00
    cp b
    rrca
    rra
    ld [hl], e
    ld h, a
    ld h, $5d
    ld h, b
    ld hl, $51df
    call Call_009_53c2
    ld a, [$cd2b]
    rst $00
    and l
    ld d, c
    and [hl]
    ld d, c
    pop bc
    ld d, c
    pop bc
    ld d, c
    db $dd
    ld d, c
    sbc $51
    ret


    ld hl, $51d7
    ld a, l
    ld [$cd6b], a
    ld a, h
    ld [$cd6c], a
    ld hl, $528f
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd6a], a
    ret


    ld hl, $4699
    ld a, l
    ld [$cd6b], a
    ld a, h
    ld [$cd6c], a
    ld hl, $528f
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $01
    ld [$cd6a], a
    ret


    ret


    ret


    call nz, Call_000_1c5d
    ld a, a
    halt
    inc e
    sub d
    ld l, e
    inc e
    inc de
    ld d, d
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_46ef
    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_47ef
    call Call_009_47c4
    ret


    dec a
    ld c, h
    sbc c
    ld b, [hl]
    cp [hl]
    ld d, d
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    dec a
    ld c, h
    adc [hl]
    ld d, c
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, e
    ld l, e
    ld d, d
    add e
    ld d, d
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    inc c
    ld c, e
    ld h, h
    ld c, e
    ld c, b
    ld d, d
    ld l, e
    ld d, d
    add e
    ld d, d
    ld [hl], a
    ld d, d
    ld c, h
    ld c, h
    cp [hl]
    ld d, d
    dec hl
    ld c, e
    ld d, [hl]
    ld c, e
    ld c, b
    ld d, d
    add e
    ld d, d
    dec a
    ld c, h
    ld h, [hl]
    ld d, h
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    adc e
    ld d, d
    ret z

    ld c, d
    sbc c
    ld b, e
    nop
    sbc c
    ld h, e
    ret z

    ld c, d
    sbc c
    ld b, [hl]
    ld bc, $6699
    ret z

    ld c, d
    sbc c
    ld c, c
    ld [bc], a
    sbc c
    ld l, c
    ret z

    ld c, d
    sbc c
    ld c, h
    inc bc
    sbc c
    ld l, h
    ret z

    ld c, d
    sbc c
    ld c, a
    inc b
    sbc c
    ld l, a
    ld c, h
    ld c, h
    cp [hl]
    ld d, d
    dec hl
    ld c, e
    ld d, [hl]
    ld c, e
    ld c, b
    ld d, d
    add e
    ld d, d
    push bc
    call $4aaa
    ld a, $02
    ld [$cd33], a
    ld hl, $5395
    ld de, $cd34
    ld b, $0a
    call Call_000_210f
    ld a, [$b8c0]
    or a
    jr nz, jr_009_52ea

    ld a, $10
    call Call_009_4837
    jr z, jr_009_52ea

    ld hl, $539f
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_52ea:
    ld a, [$b8c1]
    or a
    jr nz, jr_009_5302

    ld a, $11
    call Call_009_4837
    jr z, jr_009_5302

    ld hl, $53a4
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_5302:
    ld a, [$b8ab]
    or a
    jr nz, jr_009_531a

    ld a, $00
    call Call_009_4837
    jr z, jr_009_531a

    ld hl, $53a9
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_531a:
    ld a, [$b8b2]
    or a
    jr nz, jr_009_5332

    ld a, $01
    call Call_009_4837
    jr z, jr_009_5332

    ld hl, $53ae
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_5332:
    ld a, [$b945]
    cp $08
    jr c, jr_009_5351

    ld a, [$b8b1]
    or a
    jr nz, jr_009_5351

    ld a, $52
    call Call_009_4837
    jr z, jr_009_5351

    ld hl, $53b3
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_5351:
    ld hl, $b949
    ld b, $04

jr_009_5356:
    ld a, [hl]
    inc a
    jr nz, jr_009_5367

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_5356

    jr jr_009_5372

jr_009_5367:
    ld hl, $53b8
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_5372:
    ld hl, $b9a7
    ld b, $04

jr_009_5377:
    ld a, [hl]
    inc a
    jr nz, jr_009_5388

    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_5377

    jr jr_009_5393

jr_009_5388:
    ld hl, $53bd
    ld b, $05
    call Call_000_210f
    call Call_009_5023

jr_009_5393:
    pop hl
    ret


    ld h, c
    ld h, [hl]
    and b
    ld d, c
    ld d, b
    ld l, e
    ld h, [hl]
    jr nz, @+$54

    ld d, h
    ld [hl], l
    ld h, [hl]
    ld c, a
    ld d, d
    ld e, b
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, d
    ld e, h
    adc c
    ld h, [hl]
    xor a
    ld d, d
    ld h, h
    sub e
    ld h, [hl]
    db $db
    ld d, d
    ld h, b
    sbc l
    ld h, [hl]
    rlca
    ld d, e
    ld l, b
    and a
    ld h, [hl]
    inc sp
    ld d, e
    ld l, h
    or c
    ld h, [hl]
    jp nz, $7053

Call_009_53c2:
    push hl
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $568d
    ld c, $1c
    ld de, $8800
    call Call_000_2f41
    ld hl, $51d6
    ld c, $1c
    ld de, $9000
    call Call_000_2f41
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9500
    call Call_000_2f41
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $8a00
    call Call_000_2f41
    pop hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld h, d
    ld l, e
    ld de, $9800
    call Call_000_2f41
    ld hl, $99a0
    ld de, $9c00
    ld b, $c0
    call Call_000_210f
    ld hl, $9c22
    call Call_009_54cd
    ld hl, $9c62
    call Call_009_54cd
    ld hl, $9c67
    ld a, $f2
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ld l, $71
    ld [hl], a
    ld hl, $4211
    ld de, $8f20
    call Call_009_54c4
    ld hl, $4921
    call Call_009_54c4
    ld hl, $4b11
    call Call_009_54c4
    ld hl, $4111
    call Call_009_54c4
    ld hl, $4941
    call Call_009_54c4
    ld hl, $42e1
    call Call_009_54c4
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd30], a
    ld [$cd31], a
    ld [$cd32], a
    ld [$cd33], a
    ld [$cb5c], a
    ld a, $4c
    ld [$cd99], a
    ld a, $9f
    ld [$cd9a], a
    xor a
    ldh [CameraX], a
    ldh [CameraY], a
    ld a, $07
    ldh [WindowX], a
    ld a, $68
    ldh [WindowY], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld a, $1d
    ld [TransitionRelated], a
    ld hl, $c000
    ld bc, $00a0
    call ClearMem
    ld a, $54
    call Call_000_23cf
    ld a, $c3
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_009_54c4:
    ld a, $11
    ld bc, $0010
    call Call_000_211f
    ret


Call_009_54cd:
    xor a
    ld b, $10

jr_009_54d0:
    ld [hl+], a
    dec b
    jr nz, jr_009_54d0

    ret


    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $7c14
    ld c, $06
    ld de, $8800
    call Call_000_2f41
    ld hl, $75a6
    ld c, $1e
    ld de, $9000
    call Call_000_2f41
    ld hl, $7b0e
    ld c, $1c
    ld de, $9800
    call Call_000_2f41
    xor a
    ldh [CameraX], a
    ldh [CameraY], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld a, $6d
    ld [$cd99], a
    ld a, $9f
    ld [$cd9a], a
    ld a, $1d
    ld [TransitionRelated], a
    ld hl, $557a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld de, $4699
    ld a, e
    ld [$cd6b], a
    ld a, d
    ld [$cd6c], a
    xor a
    ld [$cd6a], a
    ld [$cb5c], a
    ld hl, $c000
    ld bc, $00a0
    call ClearMem
    ld a, $54
    call Call_000_23cf
    ld a, $83
    ld [$c0a2], a
    ld a, $00
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    ret


    dec a
    ld c, h
    cp $58
    ld c, h
    ld c, h
    ld d, [hl]
    ld c, h
    scf
    ld c, h
    add d
    ld d, l

Call_009_5586:
    call Call_009_5599
    ld a, $e3
    ld [$c0a2], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_009_5599:
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $4001
    ld a, $11
    ld de, $9000
    ld bc, $0800
    call Call_000_211f
    ld hl, $4801
    ld a, $11
    ld de, $8800
    ld bc, $0800
    call Call_000_211f
    ld hl, $6b2c
    ld c, $09
    ld de, $8000
    call Call_000_2f41
    ld hl, $7ab1
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    ld hl, $9980
    ld de, $9c00
    ld b, $c0
    call Call_000_210f
    ld hl, $9820
    ld de, $9980
    ld b, $c0
    call Call_000_210f
    ld hl, $5bca
    ld de, $9822
    ld b, $0b
    call Call_009_5b87
    ld hl, $5e8a
    ld de, $9c42
    ld b, $03
    call Call_009_5b87
    call Call_009_576e
    ld hl, $572a
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    xor a
    ld [$cd63], a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [TimePaused], a
    call Call_009_576e
    xor a
    ldh [CameraY], a
    ldh [CameraX], a
    ld a, $07
    ldh [WindowX], a
    ld a, $60
    ldh [WindowY], a
    ld a, $1d
    ld [TransitionRelated], a
    ld a, $22
    call Call_000_23cf
    ret


    call Call_000_0ae9
    call Call_009_56ac
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_009_5662
    call Call_009_567e
    ret


Call_009_5662:
    ld hl, $cd28
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld bc, $5675
    push bc
    ld b, h
    ld c, l
    ld h, d
    ld l, e
    jp hl


    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


Call_009_567e:
    ld hl, $cd67
    inc [hl]
    ld a, [$cd67]
    bit 4, a
    ret nz

    ld hl, $56a4
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $569f
    call Call_000_1ef5
    ret


    nop
    nop
    xor l
    nop
    add b
    db $10
    ld [hl], b
    db $10
    add b
    ld e, b
    ld [hl], b
    ld e, b
    add b

Call_009_56ac:
    ld a, [$cd63]
    or a
    ret nz

    ld hl, $cd65
    ld b, $0c
    call Call_009_5bc3
    ld b, $03
    inc hl
    call z, Call_009_5bc3
    ld bc, $3868
    ld hl, $570c
    ld a, [$b8db]
    or a
    jr z, jr_009_56ce

    ld hl, $5706

jr_009_56ce:
    ld a, [$cd66]
    add a
    push af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1ef5
    ld a, [$b8ea]
    or a
    jr z, jr_009_5704

    ld hl, $5712
    dec a
    add a
    ld b, a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $5868
    call Call_000_1ef5
    ret


jr_009_5704:
    pop af
    ret


    jp z, $db5e

    ld e, [hl]
    db $ec
    ld e, [hl]
    db $fd
    ld e, [hl]
    ld c, $5f
    rra
    ld e, a
    ld h, [hl]
    ld e, a
    jr nc, @+$61

    ld c, c
    ld e, a
    or c
    ld e, a
    ld a, a
    ld e, a
    sbc b
    ld e, a
    db $fc
    ld e, a
    jp z, $e35f

    ld e, a
    ld [hl], c
    ld e, d
    jp z, $6e5b

    ld d, a
    jp nc, Jump_000_365a

    ld d, a
    ld c, b
    ld d, a
    ld e, d
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld [hl], c
    ld e, d
    ld a, [hl+]
    ld e, l
    db $f4
    ld d, a
    jp nc, $3c5a

    ld d, a
    ld c, b
    ld d, a
    ld e, d
    ld d, a
    ld l, h
    ld d, a
    inc h
    ld d, a
    ld [hl], c
    ld e, d
    jp c, $495d

    ld e, c
    jp nc, Jump_000_365a

    ld d, a
    ld c, [hl]
    ld d, a
    ld e, d
    ld d, a
    ld l, h
    ld d, a
    inc h
    ld d, a
    ld [hl], c
    ld e, d
    ld a, d
    ld e, h
    ldh [c], a
    ld e, c
    jp nc, Jump_000_365a

    ld d, a
    ld c, b
    ld d, a
    ld h, b
    ld d, a
    ld l, h
    ld d, a
    inc h
    ld d, a
    halt
    ld e, e

Call_009_576e:
    ld hl, $b8f4
    ld de, $9822
    ld b, $04
    call Call_000_210f
    ld hl, sCurrentMoneyL
    ld de, wCurrentMoneyL
    ld b, $03
    call Call_000_210f
    call Call_000_3179
    ld hl, $cccd
    ld de, $986c
    ld b, $05
    call Call_000_210f
    ld hl, $1443
    ld a, [$b8db]
    or a
    jr z, jr_009_579e

    ld hl, $4201

jr_009_579e:
    ld a, l
    ld [$98a6], a
    ld a, h
    ld [$98a7], a
    ld hl, $b8dc
    ld de, $98c8
    ld b, $04
    call Call_000_210f
    ld hl, $8100
    ld a, [$b8ea]
    or a
    jr z, jr_009_57d9

    cp $03
    jr z, jr_009_57c1

    ld hl, $2140

jr_009_57c1:
    ld a, l
    ld [$9909], a
    ld a, h
    ld [$990a], a
    ld hl, $b8e6
    ld de, $9948
    ld b, $04
    call Call_000_210f
    xor a
    ld [$cd63], a
    ret


jr_009_57d9:
    ld hl, $98e0
    ld de, $9900
    ld b, $14
    call Call_000_210f
    ld hl, $98e0
    ld de, $9940
    ld b, $14
    call Call_000_210f
    xor a
    ld [$cd63], a
    ret


    ld hl, $b949
    ld de, $9822
    ld c, $04

Jump_009_57fc:
    push bc
    push hl
    ld a, [hl+]
    cp $ff
    jr z, jr_009_587f

    push af
    push de
    add a
    push hl
    push af
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    pop af
    add [hl]
    ld c, [hl]
    ld hl, $58eb
    ld b, a
    add a
    add a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $05
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld b, $09
    call Call_000_210f
    pop hl
    pop de
    ld b, $04
    call Call_000_210f
    pop af
    cp $00
    jr z, jr_009_586c

    cp $01
    jr z, jr_009_586c

    cp $03
    jr z, jr_009_586c

    cp $04
    jr z, jr_009_586c

    ld a, c
    or a
    jr nz, jr_009_586c

    inc hl
    ld a, [hl]
    ld b, $3d

Jump_009_584e:
    cp $a0
    jr nc, jr_009_5860

    ld b, $3e
    cp $50
    jr nc, jr_009_5860

    ld b, $4e
    cp $0a
    jr nc, jr_009_5860

    ld b, $dc

jr_009_5860:
    ld a, $0b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, b
    ld [de], a
    jr jr_009_5877

jr_009_586c:
    ld a, $0b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $dc
    ld [de], a

jr_009_5877:
    ld a, $31
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_009_587f:
    pop hl
    pop bc
    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jp nz, Jump_009_57fc

    ld hl, $b93a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_316d
    ld hl, $cccf
    ld de, $992e
    ld b, $03
    call Call_000_210f
    ld hl, $b949
    ld c, $04

jr_009_58a6:
    ld a, [hl]
    cp $03
    jr z, jr_009_58c9

    dec c
    jr z, jr_009_58b8

    ld a, $16
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    jr jr_009_58a6

jr_009_58b8:
    ld hl, $5eba
    ld de, $9962
    ld b, $10
    call Call_000_210f
    ld a, $01
    ld [$cd63], a
    ret


jr_009_58c9:
    ld a, $05
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, $16
    sub [hl]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996f], a
    ld a, h
    ld [$9970], a
    ld a, $01
    ld [$cd63], a
    ret


    inc d
    ld [bc], a
    ld hl, $afaf
    inc de
    sub h
    inc d
    ld [bc], a
    inc d
    ld [bc], a
    ld hl, $afaf
    ld d, d
    ld de, $94a3
    ld b, b
    db $10
    ld [bc], a
    ld hl, $13af
    sub h
    inc d
    ld [bc], a
    ld b, b
    db $10
    ld [bc], a
    ld hl, $52af
    ld de, $94a3
    inc b
    inc b
    ld [bc], a
    ld hl, $13af
    sub h
    inc d
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld hl, $52af
    ld de, $94a3
    ld b, c
    sub h
    ld hl, $af94
    inc de
    sub h
    inc d
    ld [bc], a
    ld b, c
    sub h
    ld hl, $af94
    ld d, d
    ld de, $94a3
    inc b
    inc b
    ld [bc], a
    ld hl, $c5af
    sub d
    ld [bc], a
    ld de, $0404
    ld [bc], a
    ld hl, $c5af
    sub d
    ld [bc], a
    ld de, $4edc
    ld a, $3d
    ld hl, $b9a7
    ld de, $9826
    ld c, $04

jr_009_5951:
    push hl
    ld a, [hl+]
    cp $ff
    jr z, jr_009_5986

    push hl
    ld hl, $59c2
    add a
    ld b, a
    add a
    add b
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld b, $06
    call Call_000_210f
    pop hl
    inc hl
    ld a, [hl]
    add a
    add a
    ld hl, $59da
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc de
    ld b, $04
    call Call_000_210f
    ld a, $35
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_009_5986:
    pop hl
    ld a, $0c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec c
    jr nz, jr_009_5951

    ld a, [$b9a5]
    or a
    jr nz, jr_009_59a9

    ld hl, $5eba
    ld de, $9942
    ld b, $10
    call Call_000_210f
    ld a, $02
    ld [$cd63], a
    ret


jr_009_59a9:
    and $7f
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$994f], a
    ld a, h
    ld [$9950], a
    ld a, $02
    ld [$cd63], a
    ret


    dec [hl]
    ld h, l
    xor c
    xor a
    xor a
    xor a
    ld d, [hl]
    ld [hl], a
    add hl, de
    xor a
    xor a
    xor a
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    xor a
    xor a
    sbc d
    ld b, h
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    inc de
    sub h
    inc d
    ld [bc], a
    ld d, d
    ld de, $94a3
    ld a, [$b8c5]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$982c], a
    ld a, h
    ld [$982d], a
    ld a, [$b8c6]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$986c], a
    ld a, h
    ld [$986d], a
    ld a, [$b8c7]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98ac], a
    ld a, h
    ld [$98ad], a
    ld a, [$b8ca]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$98ec], a
    ld a, h
    ld [$98ed], a
    ld a, [$b8cb]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$992c], a
    ld a, h
    ld [$992d], a
    ld a, [$b8cc]
    call Call_000_3215
    ld hl, $ccd0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$996c], a
    ld a, h
    ld [$996d], a
    ld a, [$b942]
    or a
    jr nz, jr_009_5a6b

    ld a, $af
    ld b, $10
    ld hl, $9962

jr_009_5a67:
    ld [hl+], a
    dec b
    jr nz, jr_009_5a67

jr_009_5a6b:
    ld a, $03
    ld [$cd63], a
    ret


Call_009_5a71:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    push hl
    ld a, [$dd00]
    or a
    jr z, jr_009_5a86

    ld hl, $5ab2
    call Call_000_21f3

jr_009_5a86:
    call Call_000_2071
    pop hl
    ld de, $9822
    ld b, $0b
    call Call_009_5b87
    pop hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    push hl
    ld h, d
    ld l, a
    ld bc, $5a9e
    push bc
    jp hl


    call Call_000_208a
    ld a, [$dd00]
    or a
    jr z, jr_009_5ab0

    call Call_000_222e
    ld hl, $5ac2
    call Call_000_21f3

jr_009_5ab0:
    pop hl
    ret


    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, c
    ldh a, [$ff8b]
    bit 0, a
    jr nz, jr_009_5b45

    bit 1, a
    jp nz, Jump_009_5b65

    ld bc, $cd64
    bit 4, a
    jr nz, jr_009_5b31

    bit 5, a
    jr nz, jr_009_5b1d

    bit 6, a
    jr nz, jr_009_5af5

    bit 7, a
    jr nz, jr_009_5b09

    dec hl
    dec hl
    ret


jr_009_5af5:
    ld a, [bc]
    bit 0, a
    jr z, jr_009_5b06

    res 0, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd67], a

jr_009_5b06:
    dec hl
    dec hl
    ret


jr_009_5b09:
    ld a, [bc]
    bit 0, a
    jr nz, jr_009_5b1a

    set 0, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd67], a

jr_009_5b1a:
    dec hl
    dec hl
    ret


jr_009_5b1d:
    ld a, [bc]
    bit 1, a
    jr z, jr_009_5b2e

    res 1, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd67], a

jr_009_5b2e:
    dec hl
    dec hl
    ret


jr_009_5b31:
    ld a, [bc]
    bit 1, a
    jr nz, jr_009_5b42

    set 1, a
    ld [bc], a
    ld a, $48
    call Call_000_23d8
    xor a
    ld [$cd67], a

jr_009_5b42:
    dec hl
    dec hl
    ret


jr_009_5b45:
    ld a, [$cd63]
    ld b, a
    ld a, [$cd64]
    inc a
    cp b
    jr z, jr_009_5b57

    ld e, a
    ld a, $42
    call Call_000_23d5
    ld a, e

jr_009_5b57:
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Jump_009_5b65:
    ld a, $51
    call Call_000_23d5
    ld a, $08
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    xor a
    ld [TimePaused], a
    ld a, $02
    ld [wNextMapIndex], a
    ld a, $1d
    ld [TransitionRelated2], a
    ret


Call_009_5b87:
jr_009_5b87:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $10
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_009_5b87

    ret


Call_009_5bc3:
    inc [hl]
    ld a, [hl]
    cp b
    ret c

    xor a
    ld [hl], a
    ret


    ld l, a
    call c, $dcdc
    ld b, h
    db $10
    inc de
    ld bc, $afc8
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    and e
    sub h
    or b
    ld bc, $2144
    sub d
    or c
    sbc d
    xor a
    call c, $dcdc
    call c, Call_000_2edc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    sub $98
    add hl, sp
    xor a
    call c, $afdc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld h, b
    xor a
    xor a
    dec d
    ret


    sbc c
    call c, $afdc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

Call_009_5c5c:
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    rla
    adc c
    ld a, b
    sbc b
    dec h
    sbc c
    xor a
    xor a
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc b
    ld b, c
    and c
    add c
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, c
    ld [de], a
    ld h, b
    sub h
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    db $db
    set 0, e
    rlca
    ld hl, $af91
    xor a
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, e
    or b
    ld h, b
    ld hl, $92a1
    ld [de], a
    add h
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld h, [hl]
    add a
    rla
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dedc
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $dcaf
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $dcaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $dcaf
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $dcaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_5d63:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $dcaf
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $dcaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    call c, $dcdc
    call c, $dcaf
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $dcaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    and e
    sub h
    or b
    ld bc, $1544
    ld b, $c9
    ld b, h
    db $10
    or d
    xor a
    call c, $dcdc
    sbc $af
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, $9391
    jr nz, jr_009_5d63

    ld [hl], d
    inc sp
    ld bc, $609c
    cp l
    nop
    inc [hl]
    call c, $9cdc
    dec bc
    db $fd
    ld h, e
    xor a
    call c, $dcdc
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    inc c
    db $fd
    ld h, e
    xor a
    call c, $dcdc
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec c
    db $fd
    ld h, e
    xor a
    call c, $dcdc
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld c, $fd
    ld h, e
    xor a
    call c, $dcdc
    call c, $dcdc
    xor a
    call c, $dcdc
    call c, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a

jr_009_5e5d:
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    dec [hl]
    ld h, l
    xor c
    and b
    ld d, d
    db $10
    ld [hl+], a
    add d
    ld h, b
    cp l
    xor a
    nop
    inc [hl]
    call c, $9cdc
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [bc], a
    ld hl, $afaf
    xor a
    xor a
    xor a
    xor a
    xor a
    jr nc, jr_009_5e5d

    ld h, h
    ld b, h
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld b, [hl]
    ld a, b
    add hl, sp
    add [hl]
    xor a
    xor a
    xor a
    xor a
    xor a
    ld [hl+], a
    rst $00
    inc sp
    inc [hl]
    or c
    add d
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld hl, sp+$00
    ld de, $f800
    ld hl, sp+$10
    nop
    ldh a, [rP1]
    ld bc, $f000
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    inc de
    nop
    ld hl, sp-$08
    ld [de], a
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [$fff8]
    ld [bc], a
    nop
    add b
    ld hl, sp+$00
    dec d
    nop
    ld hl, sp-$08
    inc d
    nop
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$fff8]
    inc b
    nop
    add b
    ld hl, sp+$00
    rla
    nop
    ld hl, sp-$08
    ld d, $00
    ldh a, [rP1]
    rlca
    nop
    ldh a, [$fff8]
    ld b, $00
    add b
    ld hl, sp+$00
    add hl, de
    nop
    ld hl, sp-$08
    jr jr_009_5f16

jr_009_5f16:
    ldh a, [rP1]
    add hl, bc
    nop
    ldh a, [$fff8]
    ld [$8000], sp
    ld hl, sp+$00
    dec de
    nop
    ld hl, sp-$08
    ld a, [de]
    nop
    ldh a, [rP1]
    dec bc
    nop
    ldh a, [$fff8]
    ld a, [bc]
    nop
    add b
    ld hl, sp+$06
    dec e
    nop
    ld hl, sp-$02
    inc e
    nop
    ld hl, sp-$0a
    rrca
    nop
    ldh a, [rTMA]
    ld c, $00
    ldh a, [$fffe]
    dec c
    nop
    ldh a, [$fff6]
    inc c
    nop
    add b
    ld hl, sp+$06
    inc h
    nop
    ld hl, sp-$02
    inc hl
    nop
    ld hl, sp-$0a
    ld [hl+], a
    nop
    ldh a, [rTMA]
    ld hl, $f000
    cp $20
    nop
    ldh a, [$fff6]
    rra
    nop
    add sp, -$09
    ld e, $00
    add b
    ld hl, sp+$06
    ld a, [hl+]
    nop
    ld hl, sp-$02
    add hl, hl
    nop
    ld hl, sp-$0a
    jr z, jr_009_5f72

jr_009_5f72:
    ldh a, [rTMA]
    daa
    nop
    ldh a, [$fffe]
    ld h, $00
    ldh a, [$fff6]
    dec h
    nop
    add b
    ld sp, hl
    rlca
    jr nc, jr_009_5f83

jr_009_5f83:
    ld sp, hl
    rst $38
    cpl
    nop
    pop af
    rlca
    ld l, $00
    pop af
    rst $38
    dec l
    nop
    pop af
    rst $30
    inc l
    nop
    jp hl


    ld a, [$002b]
    add b
    jp hl


    ld sp, hl
    ld sp, $f900
    inc bc
    ld [hl], $00
    ld sp, hl
    ei
    dec [hl]
    nop
    pop af
    rlca
    inc [hl]
    nop
    pop af
    rst $38
    inc sp
    nop
    pop af
    rst $30
    ld [hl-], a
    nop
    add b
    add sp, -$07
    dec hl
    nop
    ld hl, sp+$06
    dec sp
    nop
    ld hl, sp-$02
    ld a, [hl-]
    nop
    ldh a, [$ff08]
    add hl, sp
    nop
    ldh a, [rP1]
    jr c, jr_009_5fc5

jr_009_5fc5:
    ldh a, [$fff8]
    scf
    nop
    add b
    jp hl


    ld a, [$002b]
    ld sp, hl
    rlca
    ccf
    nop
    ld sp, hl
    rst $38
    ld a, $00
    pop af
    rlca
    dec a
    nop
    pop af
    rst $38
    inc a
    nop
    pop af
    rst $30
    inc l
    nop
    add b
    ld sp, hl
    inc bc
    ld b, e
    nop
    ld sp, hl
    ei
    ld b, d
    nop
    pop af
    rlca
    ld b, c
    nop
    pop af
    rst $38
    ld b, b
    nop
    jp hl


    ld sp, hl
    ld sp, $f100
    rst $30
    ld [hl-], a
    nop
    add b
    ld hl, sp+$06
    ld b, a
    nop
    ld hl, sp-$02
    ld b, [hl]
    nop
    add sp, -$07
    dec hl
    nop
    ldh a, [$fff8]
    scf
    nop
    ldh a, [$ff08]
    ld b, l
    nop
    ldh a, [rP1]
    ld b, h
    nop
    add b
    call Call_009_5599
    ld hl, $7ab1
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    ld hl, $b949
    ld c, $16
    call Call_009_6077
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cd9a], a
    ld a, $ad
    ld [$cd99], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $6073
    call Call_009_5a71
    call Call_000_2071
    ld a, $af
    ld hl, $9922
    ld b, $10

jr_009_6054:
    ld [hl+], a
    dec b
    jr nz, jr_009_6054

    ld hl, $60ff
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld a, $83
    ld [$c0a2], a
    xor a
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


    ld a, [hl+]
    ld e, l
    db $f4
    ld d, a

Call_009_6077:
    push hl
    ld hl, $cd9e
    ld a, $ff
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    xor a
    ld [$cd9f], a
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_009_608a:
    ld a, [hl]
    cp $ff
    jr z, jr_009_609b

    ld a, $04
    sub b
    ld [de], a
    inc de
    ld a, [$cd9f]
    inc a
    ld [$cd9f], a

jr_009_609b:
    ld a, c
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    jr nz, jr_009_608a

    ret


    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    ld hl, $60f7
    call Call_009_60cc
    ret


Call_009_60cc:
    push hl
    ld hl, $cd67
    inc [hl]
    pop hl
    ld a, [$cd65]
    or a
    jr z, jr_009_60de

    ld a, [$cd67]
    bit 4, a
    ret nz

jr_009_60de:
    ld a, [$cd64]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld hl, $60f2
    call Call_000_1ef5
    ret


    nop
    nop
    xor l
    nop
    add b
    ld [$0808], sp
    jr @+$0a

    jr z, jr_009_6106

    jr c, jr_009_613d

    ld c, h
    ld c, e
    ld d, e
    ld a, $61
    ld c, h

jr_009_6106:
    ld c, h
    cpl
    ld h, c
    dec a
    ld c, h
    ld e, l
    ld d, e
    ld b, l
    ld h, c
    rst $00
    ld h, c
    add hl, bc
    ld h, c
    rla
    ld h, c
    inc hl
    ld h, c
    scf
    ld h, c
    dec a
    ld c, h
    ld a, e
    ld d, e
    ld c, h
    ld c, h
    scf
    ld c, h
    dec hl
    ld h, c
    dec a
    ld c, h
    cp h
    ld d, e
    scf
    ld c, h
    dec hl
    ld h, c
    scf
    ld c, h
    dec hl
    ld h, c
    ld a, $01
    ld [$cd65], a
    ld h, b
    ld l, c
    ret


    xor a
    ld [$cd65], a
    ld h, b
    ld l, c

jr_009_613d:
    ret


    xor a
    ld [$cd64], a
    ld h, b
    ld l, c
    ret


    ld h, b
    ld l, c
    ld a, [$cd24]
    bit 0, a
    jr nz, jr_009_615d

    bit 1, a
    jr nz, jr_009_617e

    bit 6, a
    jr nz, jr_009_618d

    bit 7, a
    jr nz, jr_009_61a6

    dec hl
    dec hl
    ret


jr_009_615d:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $6166
    push bc
    jp hl


    pop hl
    jr nz, jr_009_6176

    ld a, $42
    call Call_000_23d5
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_6176:
    ld a, $51
    call Call_000_23d5
    dec hl
    dec hl
    ret


jr_009_617e:
    ld a, $51
    call Call_000_23d5
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_618d:
    ld a, [$cd64]
    or a
    jr z, jr_009_61c4

    dec a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_23d8
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_61a6:
    ld a, [$cd9f]
    dec a
    ld b, a
    ld a, [$cd64]
    cp b
    jr nc, jr_009_61c4

    inc a
    ld [$cd64], a
    xor a
    ld [$cd67], a
    ld a, $48
    call Call_000_23d8
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_009_61c4:
    dec hl
    dec hl
    ret


    ld hl, $61fc
    call Call_009_61de
    ld a, [hl]
    cp $02
    ret


    ld hl, $6204
    call Call_009_61de
    ld a, [hl]
    cp $03
    ret z

    cp $02
    ret


Call_009_61de:
    push hl
    ld hl, $cd9b
    ld a, [$cd64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    call Call_009_61f1
    ret


Call_009_61f1:
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld c, c
    cp c
    ld e, a
    cp c
    ld [hl], l
    cp c
    adc e
    cp c
    and a
    cp c
    or e
    cp c
    cp a
    cp c
    res 7, c
    call Call_009_5586
    ld hl, $7ab1
    ld c, $05
    ld de, $9800
    call Call_000_2f41
    ld hl, $b9a7
    ld c, $0c
    call Call_009_6077
    ld a, $83
    ld [$c0a2], a
    ld a, $af
    ld [$cb5c], a
    ld a, $ae
    ld [$cd9a], a
    ld a, $ad
    ld [$cd99], a
    xor a
    ld [$cd64], a
    ld [$cd65], a
    ld [$cd67], a
    ld bc, $6252
    call Call_009_5a71
    ld hl, $6284
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ret


    jp c, $495d

    ld e, c
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    call Call_000_32d5
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    ld hl, $627c
    call Call_009_60cc
    ret


    ld [$0808], sp
    jr jr_009_6289

    jr z, jr_009_628b

    jr c, jr_009_62c2

    ld c, h
    jp c, Jump_000_3e53

jr_009_6289:
    ld h, c
    ld c, h

jr_009_628b:
    ld c, h
    cpl
    ld h, c
    dec a
    ld c, h
    db $ec
    ld d, e
    ld b, l
    ld h, c
    pop de
    ld h, c
    adc [hl]
    ld h, d
    sbc h
    ld h, d
    xor b
    ld h, d
    scf
    ld h, c
    dec a
    ld c, h
    ld a, [bc]
    ld d, h
    ld c, h
    ld c, h
    scf
    ld c, h
    or b
    ld h, d
    dec a
    ld c, h
    ld c, e
    ld d, h
    scf
    ld c, h
    or b
    ld h, d
    scf
    ld c, h
    or b
    ld h, d
    call Call_000_20a1
    call Call_000_20b0
    call Call_000_314e
    ld hl, $74b3
    ld c, $09

jr_009_62c2:
    ld de, $8800
    call Call_000_2f41
    ld hl, $72f3
    ld c, $09
    ld de, $9000
    call Call_000_2f41
    ld hl, $796c
    ld c, $09
    ld de, $8000
    call Call_000_2f41
    ld hl, $7c46
    ld c, $09
    ld de, $9800
    call Call_000_2f41
    call Call_009_634d
    ld de, $63a4
    call Call_000_20f0
    ld hl, $99c0
    ld bc, $0060
    call ClearMem
    ld hl, $644c
    ld a, l
    ld [$cd28], a
    ld a, h
    ld [$cd29], a
    ld hl, $4699
    ld a, l
    ld [$cd6b], a
    ld a, h
    ld [$cd6c], a
    xor a
    ld hl, $cb14
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$cb1c], a
    ld [$cb52], a
    ld a, $01
    ld [TimePaused], a
    xor a
    ldh [CameraY], a
    ldh [CameraX], a
    ld a, $4d
    call Call_000_23cf
    ld a, $87
    ld [$c0a2], a
    ld a, $06
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $ff
    ld [$cda4], a
    ld a, $ff
    ld [$cda5], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ret


Call_009_634d:
    ld de, $9400
    ld b, $18
    xor a

jr_009_6353:
    push af
    push bc
    ld hl, $6374
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_009_636b
    pop bc
    pop af
    inc a
    inc a
    dec b
    jr nz, jr_009_6353

Call_009_636b:
    ld a, $11
    ld bc, $0010
    call Call_000_211f
    ret


    and c
    ld c, h
    ld [hl], c
    ld b, c
    ld d, c
    ld b, e
    pop bc
    ld c, l
    ld h, c
    ld b, b
    sub c
    ld c, c
    ld d, c
    ld c, b
    add c
    ld b, e
    ld h, c
    ld c, [hl]
    or c
    ld c, h
    sub c
    ld b, d
    ld [hl], c
    ld b, l
    sub c
    ld b, e
    ld [hl], c
    ld b, b
    add c
    ld c, [hl]
    ld d, c
    ld b, b
    ld sp, $814d
    ld c, c
    ld bc, $2145
    ld b, e
    ld b, c
    ld c, h
    ld de, $4140
    ld b, [hl]
    ld b, c
    ld b, e
    sbc h
    rst $00
    ld b, $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    sbc l
    ld b, $08
    ld d, b
    ld d, c
    ld b, c
    ld b, h
    ld b, l
    ld c, d
    ld c, e
    ld c, h
    sbc l
    ld b, b
    inc d
    dec l
    ld l, $40
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    call Call_000_0ae9
    ld a, [TransitionRelated]
    ld b, a
    ld a, [TransitionRelated2]
    or b
    ret nz

    ld hl, $cda6
    inc [hl]
    call Call_009_4698
    push hl
    push af
    ld l, $01
    ld h, $40
    ld a, $1b
    call Call_000_1f96
    pop af
    pop hl
    call Call_009_686f
    call Call_009_63f7
    ret


Call_009_63f7:
    ld a, [$cda9]
    inc a
    ret z

    ld hl, $6434
    ld a, [$b8ec]
    or a
    jr z, jr_009_6408

    ld hl, $643c

jr_009_6408:
    ld a, [$cdaa]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_009_6412:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    ld b, $68
    call Call_000_1ef5
    ld hl, $6444
    ld a, [$cdac]
    add a
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $50
    ld b, $68
    call Call_000_1ef5
    ret


    rla
    ld a, l
    ld b, h
    ld a, l
    rla
    ld a, l
    ld [hl], l
    ld a, l
    ld c, c
    ld a, [hl]
    ld l, [hl]
    ld a, [hl]
    ld c, c
    ld a, [hl]
    sub e
    ld a, [hl]
    and [hl]
    ld a, l
    rst $18
    ld a, l
    and [hl]
    ld a, l
    inc d
    ld a, [hl]
    ld b, b
    ld l, b
    nop
    nop
    nop
    nop
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld [$6840], sp
    inc b
    inc b
    inc b
    ld d, l
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld [$6840], sp
    jr jr_009_647e

    jr jr_009_6412

    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld [$6840], sp
    ld l, h
    inc l
    inc l
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld [$67f2], sp
    ld sp, hl
    ld h, a
    ret z

    dec a

jr_009_647e:
    ld c, h
    ld [$4c6b], sp
    ld c, h
    ld b, $68
    ld c, $68
    sbc h
    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld [de], a
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    halt
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    inc e
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    add b
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld h, $6b
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    adc d
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    jr nc, @+$6d

    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    sub h
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    sbc [hl]
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld a, [hl-]
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    xor b
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    or d
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    cp h
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    add $6b
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    ret nc

    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld b, h
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    jp c, Jump_009_4c6b

    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    db $e4
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld c, [hl]
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    xor $6b
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld e, b
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    ld hl, sp+$6b
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    ld [bc], a
    ld l, h
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a
    ld c, h
    inc c
    ld l, h
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68

jr_009_65bb:
    db $10
    ld h, a
    dec a
    ld c, h
    ld h, d
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    ld d, $6c
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    ld h, d
    ld h, a
    dec a

jr_009_65d6:
    ld c, h
    jr nz, jr_009_6645

    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    dec a
    ld c, h
    ld l, h
    ld l, e
    ld c, h
    ld c, h
    ld c, $68
    jp nz, $3d66

    ld c, h
    ld a, [hl+]
    ld l, h
    ld c, h
    ld c, h
    ld c, $68
    jp hl


    ld h, [hl]
    ld c, $68
    db $10
    ld h, a
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    sub [hl]
    ld b, b
    ld l, b
    ld l, h
    inc e
    inc e
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    jr nz, jr_009_664c

    ld l, b
    jr jr_009_6627

    jr jr_009_65bb

    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    jr nz, jr_009_6657

    ld l, b
    inc b
    inc b
    inc b
    ld d, l
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a

jr_009_6620:
    jr nz, @+$42

    ld l, b
    nop
    nop
    nop
    nop

jr_009_6627:
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    jr nz, jr_009_65d6

    ld h, a
    ld b, b
    ld l, b
    nop
    nop
    nop
    nop
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    jr nz, jr_009_667a

    ld l, b
    inc b
    inc b
    inc b
    ld d, l
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    jr nz, jr_009_6685

jr_009_6645:
    ld l, b
    jr jr_009_6660

    jr @-$54

    ldh a, [c]
    ld h, a

jr_009_664c:
    ld sp, hl

jr_009_664d:
    ld h, a
    jr nz, jr_009_6690

    ld l, b
    ld l, h
    inc e
    inc e
    rst $38
    ldh a, [c]
    ld h, a

jr_009_6657:
    ld sp, hl
    ld h, a
    jr nz, jr_009_664d

    ld h, a
    ld sp, hl
    ld h, a
    ld h, h
    adc c

jr_009_6660:
    ld h, a
    ld c, $68
    dec d
    ld h, a
    ld b, b
    ld l, b
    ld l, h
    inc e
    inc e
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld [$6840], sp
    jr jr_009_668c

    jr jr_009_6620

    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a

jr_009_667a:
    ld [$6840], sp
    inc b
    inc b
    inc b
    ld d, l
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a

jr_009_6685:
    ld [$6840], sp
    nop
    nop
    nop
    nop

jr_009_668c:
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a

jr_009_6690:
    ld [$6793], sp
    scf
    ld c, h
    sub e
    ld h, [hl]
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ret z

    ld d, [hl]
    ld l, b
    rst $38
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    ei
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    rst $30
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    di
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld h, h
    ld h, c
    ld l, b
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld h, h
    ld l, b
    ld l, b
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ret z

    ld d, [hl]
    ld l, b
    di
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    rst $30
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    ei
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld d, [hl]
    ld l, b
    rst $38
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ret z

    ld h, c
    ld l, b
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld h, c
    ld l, b
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ret z

    ld l, b
    ld l, b
    di
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    rst $30
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    ei
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, b
    rst $38
    ldh a, [c]
    ld h, a
    ld sp, hl
    ld h, a
    ld a, [bc]
    rra
    ld l, b
    ld h, b
    ld l, c
    ldh a, [$ff8b]
    and $03
    ret nz

    dec hl
    dec hl
    ret


    push bc
    ld a, $00
    ldh [rSTAT], a
    xor a
    ld [TimePaused], a
    inc a
    ld [$c910], a
    ld [wActivateTransitionBetweenMaps], a
    inc a
    ld [wMapIndex], a
    pop hl
    ret


    push bc
    xor a
    ldh [rSTAT], a
    ld a, [$c0a2]
    xor $08
    and $fd
    ld [$c0a2], a
    ld b, a
    ld hl, $ff40

jr_009_67bb:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_67bb

    ld [hl], b
    xor a
    ldh [CameraY], a
    ldh [CameraX], a
    ld [$cda1], a
    ld [$cda3], a
    dec a
    ld [$cda9], a
    ld a, [$dd00]
    or a
    jr z, jr_009_67e0

    ld hl, $67e2
    call Call_000_21f3
    call Call_000_222e

jr_009_67e0:
    pop hl
    ret


    ld sp, $0140
    nop
    nop
    nop
    nop
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
    ld l, c
    xor a
    ld [$cda6], a
    ret


    ld h, b
    ld l, c
    ld a, [$cda6]
    cp [hl]
    jr c, jr_009_6803

    inc hl
    ret


jr_009_6803:
    dec hl
    dec hl
    ret


    ld h, b
    ld l, c
    ld a, $1e
    call Call_000_23cf
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, l
    ld [$cda7], a
    ld a, h
    ld [$cda8], a
    ld l, e
    ld h, d
    ret


    ld hl, $cda7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    ld h, b
    ld a, [hl+]
    ld b, a
    push bc
    call $0635
    call Call_000_210f
    pop bc
    ldh a, [$ff97]
    add b
    dec a
    ldh [$ff97], a
    pop hl
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [PaletteRelated], a
    ld a, [hl+]
    ld [$c0a4], a
    ld a, [hl+]
    ld [$c0a5], a
    ld a, [hl+]
    ld [$cda4], a
    ld [$cda5], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda4], a
    ld a, [hl+]
    ld [$cda5], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda4], a
    ret


    ld h, b
    ld l, c
    ld a, [hl+]
    ld [$cda5], a
    ret


Call_009_686f:
    ld a, [$cda9]
    inc a
    ret z

    ld hl, $cda0
    ld b, $18
    call Call_009_43a7
    jr nz, jr_009_6880

    inc hl
    dec [hl]

jr_009_6880:
    ld hl, $cda2
    ld b, $08
    call Call_009_43a7
    jr nz, jr_009_688c

    inc hl
    dec [hl]

jr_009_688c:
    ld hl, $cda9
    ld b, $10
    call Call_009_43a7
    ld b, $04
    inc hl
    call z, Call_009_43a7
    inc hl
    ld b, $10
    call Call_009_43a7
    ld b, $04
    inc hl
    call z, Call_009_43a7
    ret


    ldh a, [rLY]
    cp $86
    jr nc, jr_009_6919

    cp $76
    jr nc, jr_009_68ff

    cp $6e
    jr nc, jr_009_68e5

    cp $15
    jr nc, jr_009_68cf

jr_009_68b9:
    ldh a, [rLY]
    cp $07
    jr nz, jr_009_68b9

jr_009_68bf:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_68bf

    ld a, [$cda1]
    ldh [rSCX], a
    ld a, $15
    ldh [rLYC], a
    ret


jr_009_68cf:
    ldh a, [rLY]
    cp $16
    jr nz, jr_009_68cf

jr_009_68d5:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_68d5

    ld a, [$cda3]
    ldh [rSCX], a
    ld a, $6e
    ldh [rLYC], a
    ret


jr_009_68e5:
    ldh a, [rLY]
    cp $6f
    jr nz, jr_009_68e5

jr_009_68eb:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_68eb

    ldh a, [CameraX]
    ldh [rSCX], a
    ld a, [$cda4]
    ldh [rBGP], a
    ld a, $76
    ldh [rLYC], a
    ret


jr_009_68ff:
    ldh a, [rLY]
    cp $77
    jr nz, jr_009_68ff

jr_009_6905:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_6905

    ldh a, [CameraX]
    ldh [rSCX], a
    ld a, [$cda5]
    ldh [rBGP], a
    ld a, $86
    ldh [rLYC], a
    ret


jr_009_6919:
    ldh a, [rLY]
    cp $87
    jr nz, jr_009_6919

jr_009_691f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_009_691f

    ld a, [PaletteRelated]
    ldh [rBGP], a
    ld a, $06
    ldh [rLYC], a
    ret


    ld hl, $6953
    ld de, $cd71
    ld b, $20
    call Call_000_210f
    ld a, [$cb68]
    add a
    ld hl, $6973
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a
    ld de, $cd73
    call Call_000_210f
    ret


    ld a, a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    ld a, l
    xor a
    ld e, $bd
    inc bc
    sub h
    inc h
    ld [bc], a
    reti


    rra
    cp l
    inc b
    ld [hl], e
    add c
    ld h, b
    ld [hl+], a
    jp c, $c3af

    ld l, c
    call z, $d369
    ld l, c
    call c, $df69
    ld l, c
    ldh [c], a
    ld l, c
    push hl
    ld l, c
    add sp, $69
    pop af
    ld l, c
    ld a, [JumpTable_7]
    ld l, d
    ld a, [bc]
    ld l, d
    ld de, $1d6a
    ld l, d
    jr nz, jr_009_69fb

    dec h
    ld l, d
    ld a, [hl+]
    ld l, d
    cpl
    ld l, d
    inc [hl]
    ld l, d
    add hl, sp
    ld l, d
    ld a, $6a
    ld b, e
    ld l, d
    ld c, b
    ld l, d
    ld c, l
    ld l, d
    ld d, d
    ld l, d
    ld d, a
    ld l, d
    ld e, h
    ld l, d
    ld h, c
    ld l, d
    ld h, [hl]
    ld l, d
    ld l, e
    ld l, d
    ld [hl], b
    ld l, d
    ld [hl], l
    ld l, d
    ld a, d
    ld l, d
    ld a, a
    ld l, d
    add h
    ld l, d
    adc c
    ld l, d
    adc [hl]
    ld l, d
    sub e
    ld l, d
    sbc b
    ld l, d
    sbc l
    ld l, d
    ld [$9403], sp
    inc h
    ld [bc], a
    ld [hl], h
    inc [hl]
    ld h, e
    add d
    ld b, $09
    ld a, d
    push de
    ld b, [hl]
    sbc c
    and a
    ld [$6040], sp
    inc bc
    ld [hl], h
    ld bc, $7283
    ld [bc], a
    ld [bc], a
    ld d, b
    add d
    ld [bc], a
    ld b, b
    ld [hl-], a
    ld [bc], a
    nop
    ld de, $5202
    ld [hl], c
    ld [$4430], sp
    ld hl, $bd01
    ld de, $34a4
    ld [$4010], sp
    ld hl, $bd01
    ld de, $34a4
    rlca

jr_009_69fb:
    daa
    dec [hl]
    sbc b
    ld d, a
    adc c
    ld a, d
    add a
    rlca
    inc d
    ld [bc], a
    db $10
    sub h
    ld [hl+], a
    add d
    ld [hl], d
    ld b, $19
    adc c
    call $1798
    add a
    dec bc
    inc b
    or c
    ld bc, $9420
    xor a
    inc [hl]
    ld [bc], a
    or c
    sub d
    ld [bc], a
    ld [bc], a
    ld h, b
    ld sp, $4e04
    inc l
    ld a, [bc]
    ld a, [bc]
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    dec bc
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    inc c
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    dec c
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    ld c, $04
    ld c, [hl]
    inc l
    ld a, [bc]
    rrca
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    ld a, [de]
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    dec de
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    inc e
    inc b
    ld c, [hl]
    inc l
    ld a, [bc]
    dec e
    inc b
    ld c, [hl]
    inc l
    dec bc
    ld a, [bc]
    inc b
    ld c, [hl]
    inc l
    dec bc
    dec bc
    inc b
    ld c, [hl]
    inc l
    dec bc
    inc c
    inc b
    ld c, [hl]
    inc l
    dec bc
    dec c
    inc b
    ld c, [hl]
    inc l
    dec bc
    ld c, $04
    ld c, [hl]
    inc l
    dec bc
    rrca
    inc b
    ld c, [hl]
    inc l
    dec bc
    ld a, [de]
    inc b
    ld c, [hl]
    inc l
    dec bc
    dec de
    inc b
    ld c, [hl]
    inc l
    dec bc
    inc e
    inc b
    ld c, [hl]
    inc l
    dec bc
    dec e
    inc b
    ld c, [hl]
    inc l
    inc c
    ld a, [bc]
    inc b
    ld c, [hl]
    inc l
    inc c
    dec bc
    inc b
    ld c, [hl]
    inc l
    inc c
    inc c
    inc b
    ld c, [hl]
    inc l
    inc c
    dec c
    inc b
    ld c, [hl]
    inc l
    inc c
    ld c, $04
    ld c, [hl]
    inc l
    inc c
    rrca
    ld a, [$cb68]
    add a
    ld hl, $6adc
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $03
    jr z, jr_009_6ac8

    cp $02
    jr z, jr_009_6ad2

    cp $01
    jr z, jr_009_6ad7

    push bc
    call Call_000_2331
    pop bc
    ld a, b
    call Call_000_23cf
    ret


jr_009_6ac8:
    push bc
    call Call_000_2331
    pop bc
    ld a, b
    call Call_000_23d2
    ret


jr_009_6ad2:
    ld a, b
    call Call_000_23d5
    ret


jr_009_6ad7:
    ld a, b
    call Call_000_23d8
    ret


    ld c, l
    inc b
    nop
    inc b
    inc b
    inc b
    ld [$0b03], sp
    inc b
    rrca
    inc b
    inc de
    inc b
    rla
    inc b
    dec de
    inc bc
    ld e, $04
    ld [hl+], a
    inc b
    ld h, $04
    ld a, [hl+]
    inc b
    ld d, h
    inc b
    ld l, $01
    cpl
    ld bc, $0130
    ld sp, $3201
    ld bc, $0133
    inc [hl]
    ld bc, $0135
    ld [hl], $01
    scf
    ld bc, $0238
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $013d
    ld a, $01
    ccf
    ld bc, $0140
    ld b, c
    ld bc, $0242
    ld b, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld c, b
    ld bc, $0251
    ld d, e
    ld bc, $0158
    add b
    inc b
    cp $15
    nop
    ld a, $00
    ld b, c
    ld a, $a4
    ld e, e
    ld h, h
    db $fd
    dec de
    daa
    ld bc, $0080
    ld [hl], b
    add b
    ld c, [hl]
    or b
    sbc $c9
    ld bc, $7fb0
    ld sp, hl
    ld a, $c5
    ld bc, $8060
    cp a
    ld e, b
    and b
    ld b, [hl]
    cp b
    add l
    ld a, d
    inc de
    inc b
    ld b, c
    rst $38
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    ld h, h
    dec de
    ld h, l
    db $fd
    ld a, [de]
    push bc
    inc bc
    ld h, [hl]
    add b
    ld e, d
    and h
    ld b, h
    cp b
    ei
    add h
    ld a, b
    inc de
    ld b, $4c
    nop
    ld l, [hl]
    inc b
    ld e, e
    rst $18
    ld h, $6d
    ld a, $7f
    ld [de], a
    ld de, $1807
    nop
    rst $38
    jr c, @+$12

    ld [hl], b
    jr nz, jr_009_6bf4

    jr nz, @+$3a

    db $10
    ei
    inc e
    ld [$01a7], sp
    ld a, [hl]
    rla
    ld a, c
    cpl
    ld [hl], $ff
    dec e
    nop
    nop
    inc c
    nop
    ld c, $04
    ld c, $ff
    inc b
    rlca
    ld [bc], a
    add a
    ld [bc], a
    ld h, a
    add d
    ld e, a
    db $fd
    ldh [c], a
    inc de
    ld a, [bc]
    sbc b
    nop
    call c, $b608
    ld c, h
    rst $38
    jp c, $fe7c

    inc h
    nop
    nop
    inc bc
    nop
    rst $28
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, c
    ld [bc], a
    ld c, $04
    ld a, h
    rst $38
    ld [$0006], sp
    rrca
    inc b
    dec bc
    rlca
    rrca
    rst $38
    rlca
    rrca
    dec b
    rrca
    dec b
    rla
    dec c
    rra
    rst $38
    rrca
    ret nz

    nop
    ret nz

    add b
    ldh [rP1], a
    ret nc

    rst $38
    and b
    xor h
    ret nc

    rst $18
    ldh [$ffe3], a
    rst $38
    ld a, a
    db $fd
    rst $38
    daa
    ld c, $c0
    nop
    or b
    ret nz

    add sp, -$30
    rst $30
    ld d, $0f
    rrca
    adc d
    rrca

jr_009_6bf4:
    or c
    ld a, [hl]
    ld hl, sp+$3f
    rst $38
    cp h
    ld a, a
    ld e, d
    dec a
    ld a, $01
    dec bc
    inc b
    cp l
    dec b
    ldh [rNR10], a
    add l
    ld a, d
    ld [bc], a
    db $fc
    inc hl
    nop
    inc h
    rst $38
    ret c

    call c, $d888
    nop
    cp h
    ld a, a
    ld e, e
    cp a
    inc a
    ld a, $01
    ld d, $0b
    dec bc
    and h
    ld [de], a
    ld b, $ff
    ld hl, sp+$0c
    ldh a, [rDIV]
    ld hl, sp-$0a
    inc c
    inc c
    or $a4
    inc de
    or b
    ld a, a
    dec b
    inc b
    ld c, $05
    rlca
    ld bc, $01ff
    nop

jr_009_6c36:
    ld c, $f0
    ld b, $fc
    inc b
    ld hl, sp+$7f
    jr @-$1e

    ld h, b
    add b
    ld b, b
    add b
    add b
    ld b, b
    inc d
    cp $61
    dec c
    scf
    dec e
    dec e
    inc bc
    rlca
    ld bc, $ff0b
    dec b
    ld c, $03
    inc bc
    nop
    cp $04
    ld d, [hl]
    rst $38
    db $fc
    ld d, h
    ld hl, sp-$44
    ld hl, sp+$74
    cp b
    db $fc
    rst $38
    db $10
    add sp, $30
    ld [hl], b

Call_009_6c67:
    nop
    rra
    inc bc
    rra
    ei
    ld a, [bc]
    ld c, $88
    jr @-$28

    db $fc
    db $f4
    cp b
    db $fc
    rst $38
    jr c, jr_009_6c36

    ld e, h
    ld d, [hl]
    inc l
    inc a
    ld [$fe08], sp
    ldh [rNR24], a
    db $fd
    ld l, $f2
    ld e, a
    ld l, [hl]
    dec sp
    ccf
    ei
    rlca
    rrca
    ld b, b
    ld de, $081c
    jr jr_009_6c91

jr_009_6c91:
    xor d
    rst $38
    ld [hl], b
    and a
    ld a, [$fedf]
    xor a
    jp c, $fcdb

    and h
    dec de
    jr nc, jr_009_6cae

    ld a, a
    sbc c
    ld a, a
    rst $18
    jr c, @-$47

    rst $38
    ld e, b
    cp d
    ld d, c
    db $eb
    db $10
    jr c, jr_009_6cae

jr_009_6cae:
    db $e4
    rst $38
    ret c

    or h
    ret z

    call nc, $ac88
    ret nz

    ld h, h
    cp a
    ret nz

    ldh [rLCDC], a
    and b
    ld b, b
    ret nz

    ld c, d
    ld e, $1b
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
    ld de, $40a0
    ld d, b
    and b
    or b
    ccf
    ret nz

    ret c

    ldh [$ffe7], a
    ld hl, sp-$01
    stop
    dec bc
    jr nz, @+$01

    ret z

    or b
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    ld bc, $07f7
    ld bc, $a403
    ld [hl+], a
    ld a, a
    rst $38
    and a
    ld a, a
    cp a
    ld sp, hl
    rst $00
    ld h, a
    add c
    add [hl]
    ld bc, $0180
    nop
    rst $18
    ld bc, $e400
    sbc b
    ld e, [hl]
    add b
    ld c, $40
    add b
    ld a, c
    ret nz

    jr nz, jr_009_6d14

jr_009_6d14:
    ld hl, $0d0f
    nop
    rra
    add hl, bc
    ld c, c
    ld b, $fe
    ld b, c
    db $10
    ret nz

    nop
    and c
    ld b, b

jr_009_6d23:
    ld e, a
    and c
    or e
    db $fd
    rst $08
    rlca
    ld b, $dc
    nop
    and [hl]
    ret c

    ei
    ret nz

    ld a, a
    ldh [$ffc0], a
    or b
    ret nz

    dec l
    ld e, $1e
    adc d
    jr z, @+$01

    ld a, a
    rst $38
    cp h
    ld a, a
    ld a, e
    inc e
    ld e, h
    jr z, jr_009_6d23

    ld e, h
    jr z, @-$52

    ld e, b
    ld hl, sp+$00
    dec c
    db $ec
    ldh a, [$fff7]
    call nc, Call_000_3c38
    ld a, a
    dec hl
    nop
    ld a, [hl]
    nop
    xor $5f
    ld d, h
    cp d
    ld c, h
    cp l
    ld a, d
    ldh [$ff0c], a
    dec c
    ld hl, $eb00
    cpl
    rra
    ld bc, $1e0d
    ldh [$ff0c], a
    ld e, b
    and b
    cp a
    or e
    ret nz

    ldh a, [$ff71]
    ld de, $1fe0

jr_009_6d74:
    rst $38
    ld a, a
    ld de, $e02e
    rst $38
    nop
    ret c

    ldh [$ffec], a
    ldh a, [$fffa]
    db $f4
    ld sp, hl
    rst $28
    or $ed
    ldh a, [c]
    sbc e
    ret nz

    ld [de], a
    or h
    ld e, b
    cp b
    rst $28
    ld d, b
    cp b
    ld d, b
    add sp, -$20
    ld [de], a
    nop
    nop
    ld [hl], l
    ld e, a
    ldh [c], a
    db $eb
    jr nc, jr_009_6d74

    jr nc, jr_009_6da0

    ld bc, $cc30

jr_009_6da0:
    dec b
    rst $38
    db $fd
    ld a, d
    rst $38
    ld l, h
    ccf
    dec de
    ccf
    dec de
    rst $38
    ld e, a
    ccf
    ld a, h
    ccf
    ld e, d
    dec a
    dec a
    nop
    rst $38
    rlca
    nop
    dec c
    ld b, $e0
    add b
    db $fc
    ret nz

    daa
    db $e3
    db $fc
    ld sp, hl
    or c
    ld [de], a
    ldh [rNR51], a
    cp a
    ld [bc], a
    ld b, $40
    inc d
    cp $00
    inc d
    db $f4
    add sp, -$06
    db $e4
    rst $30
    ret nz

    xor l
    rst $18
    ld e, [hl]
    cp $18
    inc h
    jr jr_009_6e01

    dec bc
    ld l, [hl]
    db $fc
    rst $38
    push af
    ld c, $2b
    ld d, $17
    ld a, [bc]
    rla
    ld a, [bc]
    rst $30
    dec e
    ld [bc], a
    ld b, $81
    dec bc
    dec a
    ld a, l
    ld [hl], $7e
    rst $38
    scf
    ld a, a
    scf
    cp a
    ld a, a
    ld sp, hl
    ld a, a
    or l
    rst $38
    ld a, e
    ld a, e
    ld bc, $0083
    ld c, l
    add e

jr_009_6e01:
    di
    ei
    rrca
    rst $00
    ld [bc], a
    dec b
    rst $38
    rst $38
    cp $ff
    cp h
    cp a
    nop
    and $98
    db $db
    ldh [$ffe0], a
    jp nz, $cc11

    rst $38
    ldh a, [$fff4]
    jr c, jr_009_6e99

    ccf
    ld e, a
    inc a
    ld l, [hl]
    rst $38
    inc e
    ld e, d
    inc l
    jp c, $ac6c

    ld e, b
    db $e4
    adc $80
    dec b
    ret


    ld b, $07
    adc d
    dec sp
    inc b
    rrca
    rst $28
    ld a, a
    ld a, a
    ldh a, [$ff7c]
    di
    ld a, e
    db $f4
    rst $30
    ld l, a
    inc b
    rrca
    rst $38
    ld h, b
    db $ec
    jr nc, jr_009_6e7d

    call nc, $16f9
    dec l
    cp a
    jp nc, $6f96

    ret c

    scf
    or a
    ld [$350f], sp
    rst $20
    jp nz, $b06b

    add hl, bc
    rrca

jr_009_6e57:
    ld [bc], a
    dec c
    call c, $e6f9
    ld a, a
    cp $f1
    pop af
    xor $7e
    pop hl
    or a
    ld [bc], a
    inc b
    ld a, [hl]
    ld [bc], a
    dec c
    ld h, b
    ld [hl], h
    xor b
    ld a, d
    and h
    scf
    nop
    dec c
    db $fd
    rst $38
    ld a, [bc]
    dec c
    ld h, d
    db $fc
    add l
    ld a, d
    ld a, e
    ld b, $fe
    rlca

jr_009_6e7d:
    dec c
    add e
    nop
    ld c, a
    add c
    di
    inc c
    push bc
    rst $38
    cp d
    ld sp, hl
    add [hl]
    di
    db $ed
    rst $38
    db $e3
    ei
    db $fd
    rst $30
    inc b
    inc c
    ld b, b
    ld h, b
    add b
    jr nc, jr_009_6e57

    inc l
    rst $38

jr_009_6e99:
    ret nc

    inc [hl]
    ret c

    ld a, a
    ld a, $5e
    dec a
    ld l, a
    ld c, $08
    inc c
    add hl, de
    and $e7
    and b
    jr c, jr_009_6ec1

    nop
    nop
    ld [$ff39], sp
    cpl
    nop
    jp Jump_000_1f00


    ldh a, [rNR10]
    ld hl, $a600
    ld bc, $ff7f
    nop
    nop
    db $10
    ld [hl], b
    ld [hl], h

jr_009_6ec1:
    inc c
    and l
    ld [bc], a
    rst $38
    ld a, a
    add b
    ld e, [hl]
    ld h, c
    ccf
    ld hl, $110f
    cp $a6
    inc bc
    ldh a, [rIF]
    ld [$0007], sp
    rlca
    inc b
    xor $aa
    inc b
    ld bc, $02fe
    and l
    dec b
    ld hl, sp+$18
    ret nz

    rst $28
    ld b, b
    ld [bc], a
    inc bc
    rlca
    add [hl]
    ld b, $06
    rlca
    nop
    rst $18
    nop

jr_009_6eee:
    ret c

    jr c, jr_009_6eee

    dec b
    and [hl]
    rlca
    ccf
    pop bc
    jp hl


    ld bc, $0021
    db $eb
    inc bc
    db $fc
    rlca
    dec b
    ldh a, [$ff1f]
    db $10
    cp a
    ccf
    jr nz, jr_009_6f85

    ld b, b
    add e
    ld [bc], a
    dec hl
    nop
    ld bc, $01fd
    and l
    inc c
    jr jr_009_6f2a

    inc e
    inc d
    ld e, $12
    cp $a0
    inc c
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_6f3e

    db $10
    ld a, $00
    add hl, bc
    inc b
    inc bc
    ld [bc], a
    db $e3
    jr nz, jr_009_6f54

    nop

jr_009_6f2a:
    dec c
    db $10
    cp h
    ld h, e
    ld c, $67
    nop
    ld a, b
    inc b
    ld a, h
    nop
    ld [hl+], a
    nop
    inc b
    rst $38
    ld a, b
    ld [$7010], sp
    nop

jr_009_6f3e:
    nop
    inc e
    ld [de], a
    rst $38
    ld c, $02
    ld [$1c04], sp
    inc d
    jr @+$12

    rst $38
    jr @+$0a

    ld de, $b021
    pop de
    rlca
    inc b
    rst $38

jr_009_6f54:
    ld bc, $0302
    ld [bc], a
    nop
    ld bc, $c1c1
    rst $38
    ld b, b
    add b
    ldh [rNR41], a
    ldh [rP1], a
    db $fc
    inc b
    rst $18
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [$ffc0], a
    ld [de], a
    ld [hl], b
    sub b
    rst $38
    ldh [$ff80], a
    ld h, b
    nop
    rrca
    nop
    rra
    nop
    ccf
    ccf
    jr nz, jr_009_6fbb

    nop
    ccf
    nop
    ld h, b
    ld [$0020], sp
    pop hl
    db $fd

jr_009_6f85:
    add hl, hl
    dec c
    ld h, b
    ld d, $63
    ld c, $c3
    ld c, $c0
    nop
    ret nz

    rst $38
    nop
    ld hl, sp+$08
    pop af
    ld de, $22e3
    rst $00
    rst $18
    ld b, h
    adc a
    adc b
    rra
    db $10
    ld b, c
    dec bc
    rst $38

jr_009_6fa2:
    add b
    sbc b
    rr b
    dec c
    dec de
    dec c
    db $10
    rra
    ld de, $0381
    ld b, a
    nop
    ld bc, $01ff
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$ffbf]

jr_009_6fbb:
    db $10
    ld hl, sp+$08
    db $fc
    inc b
    cp $01
    db $10
    and b
    ccf
    ld h, e
    ld h, b
    inc hl
    jr nz, jr_009_6fcd

    nop
    inc hl
    nop

jr_009_6fcd:
    rrca
    db $10
    ld a, [hl]
    dec hl
    db $10
    ld b, $07
    inc bc
    ld a, h
    ld a, a
    nop
    daa
    nop
    rst $38
    di
    ld [de], a
    jp $e023


    jr nz, jr_009_6fa2

    nop
    ld a, a
    jp $8f44


    ld [$8887], sp
    rrca
    ld bc, $e513
    ldh a, [$ff81]
    inc hl
    ld hl, sp-$5f
    rrca
    nop
    ld b, $20
    ld b, b
    ld [hl], b
    rst $38
    ld d, b
    db $10
    jr nc, jr_009_701e

    jr nc, jr_009_7008

    jr jr_009_701a

    ld a, a
    db $10
    inc c
    inc b
    ld c, $0a

jr_009_7008:
    ccf
    ld b, b
    ldh [rNR22], a
    ld [hl], b
    ldh [rIF], a
    jr nz, @+$1a

    ret nz

    db $10
    dec bc
    ld hl, $02fe
    ld hl, sp+$20
    rrca

jr_009_701a:
    or $29
    db $10
    pop bc

jr_009_701e:
    ld bc, $1a41
    add d
    inc bc
    pop bc
    ld b, c
    ldh [c], a
    pop bc
    inc d
    ldh a, [$ffe0]
    db $10
    push hl
    dec h
    ld h, c
    inc e
    rra
    jr nz, @+$11

    add c
    db $10
    cpl
    dec hl

jr_009_7036:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rlca
    db $10
    ldh [$fffd], a
    rra
    rlca
    jr nc, jr_009_70c5

    ld bc, $007e
    ld a, [hl]
    add c
    call c, Call_000_3107
    ld h, b
    add hl, de
    nop
    rra
    ldh [rOBP1], a
    inc c
    db $fc
    ld [bc], a
    push de
    cp $63
    ld a, [hl+]
    ld a, [hl]
    pop bc
    jr z, @+$09

    jr nz, jr_009_706d

    rlca
    ld hl, sp-$06
    ld [hl+], a
    ld sp, $01f8
    daa
    ld bc, $c001
    ld b, b

jr_009_706d:
    db $ec
    cp c
    inc e
    rlca
    dec [hl]
    ldh [rNR12], a
    ld bc, $1e19
    ld bc, $df36
    add hl, bc
    inc a
    pop bc
    jr z, @-$7c

    rra
    ccf
    rlca
    scf
    ld b, c
    ld a, [de]
    inc b
    dec b
    ld b, d
    jr c, jr_009_70c9

    rrca
    nop
    rrca
    ld [$fc03], sp
    rrca
    jr nz, jr_009_70b2

    nop
    ldh [$ff1f], a
    nop
    rra
    nop
    rra
    nop
    rrca
    ld b, b
    and $19
    ld b, $f0
    db $10
    ld a, l
    ret nz

    adc b
    ld b, b
    ld l, a
    ld [hl], b
    dec bc
    inc c
    inc bc
    adc d
    ld b, c
    rst $28
    db $fd
    inc bc
    db $fc
    inc b

jr_009_70b2:
    inc bc
    jr c, jr_009_7036

    ld a, [hl]
    rst $38
    ld c, e
    nop
    or b
    ldh [$ff31], a
    nop
    ld bc, $8112
    dec hl
    ldh a, [rP1]
    ld c, $ad

jr_009_70c5:
    ldh [rP1], a
    inc bc
    ld [bc], a

jr_009_70c9:
    rst $38
    jr z, jr_009_7108

    ld hl, sp+$60
    ld [hl+], a
    inc bc
    ld a, a
    nop
    add e
    add b
    jp $c340


    inc a
    push bc
    inc c
    sbc [hl]
    xor c
    ld b, [hl]
    jr c, jr_009_70ff

    jr c, jr_009_7101

    call $a92e
    ld c, b
    ld bc, $2080
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
    inc bc
    ld d, b
    add l
    sub a
    ld b, $8b
    adc h
    jr nz, @+$19

    inc b
    add b
    dec a

jr_009_70ff:
    and b
    inc sp

jr_009_7101:
    nop
    cp a
    add b
    and a
    ld h, h
    db $e3
    inc b

jr_009_7108:
    rst $38
    ld h, l
    jr z, jr_009_714c

    ld sp, hl
    rra
    ld h, b
    inc [hl]
    nop
    ld [hl+], a
    jr nz, @-$5e

    ld h, b
    pop bc
    ld b, c
    rst $38
    ld b, c
    ret nz

    ld b, c
    ret nz

    ld bc, $2f80
    jr nc, jr_009_713c

    ld a, a
    ld b, b
    ld c, c
    ld a, [hl-]
    ld b, c
    pop bc
    pop bc
    ld [hl], $a1
    dec hl
    pop hl
    ld c, $fe
    ld b, d
    nop
    add b
    ld a, b
    ld b, b
    ld e, b
    ld h, b
    jr c, jr_009_7157

    rst $38
    jr z, jr_009_716a

    jr z, jr_009_716c

jr_009_713c:
    ld [$3c10], sp

jr_009_713f:
    inc a
    cp h
    ldh [rLCDC], a
    ld h, $00
    nop
    nop
    add hl, sp
    ld hl, $56c9
    ccf

jr_009_714c:
    or a
    jr nz, jr_009_713f

    ldh a, [$ff2b]
    ld c, b
    ld a, c
    ld a, b
    jp hl


    scf
    ld a, a

jr_009_7157:
    ret nz

    rra
    dec bc
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    inc b
    ld h, b
    ldh [rNR41], a
    ei
    ld hl, sp+$08
    ld h, h

jr_009_716a:
    ld e, d
    ld b, b

jr_009_716c:
    rra
    and b
    rrca
    sub b
    cp $61
    ld d, e

jr_009_7173:
    ld bc, $8202
    add e
    jp nz, $c043

    rst $38
    ld bc, $02c3
    pop bc
    ld b, d
    ld bc, $0180
    dec a
    add b
    and c
    rrca
    pop bc
    ld b, c
    and b
    ld h, b
    ld h, c
    ld b, l
    xor d
    ld h, d
    db $ec
    and b
    ld d, [hl]
    ld h, [hl]
    rrca
    ld [$c0f0], sp
    ld d, h
    ldh [rNR41], a
    ld [$10f7], sp
    ld [$a110], sp
    rrca
    jr c, jr_009_71c3

    ld e, b
    ld h, b
    rst $38
    ld a, b
    ld b, b
    ld hl, sp-$80
    nop
    nop
    ccf
    ccf
    ld e, $29
    db $10
    ccf
    jr nz, jr_009_7173

    and b
    jp hl


    ld h, [hl]
    dec c
    ld e, b
    db $eb
    rrca
    ret nz

    rrca
    db $10
    rra
    nop
    rra
    nop
    rra

jr_009_71c3:
    nop
    rra
    nop
    dec b
    jr nc, jr_009_71d3

    adc l
    cp a
    add b
    nop
    ret nz

    ld b, b
    ret z

    jr c, jr_009_71f7

    ld [hl], b

jr_009_71d3:
    add a
    ccf
    add h
    rrca
    ld [$302f], sp
    sbc a
    ld h, $3f
    ld h, c
    ld d, h
    db $db
    db $fd
    inc bc
    rlca
    ld [hl], d
    cpl
    jr nc, jr_009_7248

    ld [hl], e
    or b
    ld [hl], b
    ld a, $07
    jr nz, jr_009_71f1

    ld [bc], a
    dec bc
    inc c

jr_009_71f1:
    rst $18
    rlca
    inc bc
    ld h, h
    jr nz, jr_009_71f7

jr_009_71f7:
    daa
    ld e, $03
    jr nz, jr_009_720b

    dec a
    dec bc
    ld e, b
    add [hl]
    ld [hl], l
    call nz, Call_000_0f57
    inc bc
    rra
    nop
    nop
    rra
    nop
    rra

jr_009_720b:
    nop
    rra
    nop
    dec de
    nop
    nop
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
    or h
    nop
    rst $38
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$09f3], sp
    ld a, [bc]
    rst $08
    ld bc, $00e1
    db $10
    ld de, $1312
    ccf
    inc d
    dec d
    ld d, $17
    jr jr_009_7257

    rst $08
    ld bc, $00e1
    rst $38
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h

jr_009_7248:
    dec h
    ld h, $27
    di
    jr z, jr_009_7277

    rst $08
    ld bc, $00e1
    jr nc, jr_009_7285

    ld [hl-], a
    inc sp
    ccf

jr_009_7257:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_009_7296

    rst $08
    ld bc, $00b4
    rst $08
    dec bc
    inc c
    dec c
    ld c, $6f
    ld bc, $0087
    dec de
    inc e
    di
    dec e
    ld e, $6f
    ld bc, $00b4
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_009_7277:
    ccf
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    rst $08
    ld bc, $00e1
    rst $38
    ld d, b
    ld d, c

jr_009_7285:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    di
    ld e, b
    ld e, c
    rst $08
    ld bc, $00e1
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_009_7296:
    ccf
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rst $08
    ld bc, $00e1
    rst $38
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    nop
    inc bc
    ld a, b
    ld a, c
    rst $08
    ld bc, $001f
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
    ld e, $00
    ldh a, [rSC]
    ldh a, [c]
    dec e
    nop
    rst $38
    rra
    nop
    sub [hl]
    nop
    ld d, l
    ld d, l
    xor d
    xor d
    ld a, [$016b]
    cp $58
    ld [bc], a
    pop af
    rst $38
    ret nz

    ld sp, hl
    db $10
    push de
    ldh a, [rOCPD]
    inc bc
    ccf
    ld d, [hl]
    inc b
    db $fd
    ld a, [bc]
    inc b
    add sp, -$01
    dec e
    ld d, l
    ld [$e005], sp
    rst $38
    nop
    ld b, $01
    pop bc
    nop
    ld hl, $fe00
    dec b
    ld [bc], a
    ld a, [bc]
    ei
    dec d
    rst $38
    ld a, [bc]
    rst $38
    jr nz, jr_009_73ae

    ld b, $03
    add hl, bc
    ld a, a
    ld b, d
    ei
    ld de, $07fd
    inc bc
    sbc a
    rst $38
    rst $38
    ld a, a
    rst $38
    dec b
    ld [$6104], sp
    dec bc
    ld a, a
    db $d3
    rst $38
    xor a
    ld a, [bc]
    ld b, $e7
    ld a, [bc]
    ldh [$ffec], a
    ld a, [bc]
    ld a, [bc]
    ei
    ld b, $eb
    ld a, [bc]
    add hl, bc
    ld a, a
    rst $20

jr_009_7357:
    ld a, [bc]
    rlca
    inc b
    db $e3
    ld a, [bc]
    dec b
    dec b
    push hl
    ld a, [bc]
    nop
    inc bc
    ld b, $e7
    ld a, [bc]
    inc bc
    rlca
    rst $20
    ld a, [bc]
    inc bc
    ld [$0ae7], sp
    inc bc
    add hl, bc
    rst $20
    ld a, [bc]
    ldh a, [rTAC]
    inc c
    db $e3
    ld a, [bc]
    inc b
    dec b
    jr nz, jr_009_7393

    ld a, [hl]
    nop
    jp $ff3c


    cp l
    ld b, d
    add a
    jr z, jr_009_7357

    inc c
    add e
    ld d, h
    cp $13
    ld a, [de]
    xor d
    xor d
    ld d, l
    ld d, l
    xor $ee
    rst $38
    db $fd
    rst $38

jr_009_7393:
    ldh a, [rNR22]
    nop
    call Call_000_1832
    and l
    add b
    rst $38
    ld l, a
    inc b
    dec sp
    db $10
    jp hl


    rst $38
    nop
    xor e
    rst $38
    ld d, h
    add a
    jr c, @+$01

    nop
    and $19
    inc c
    ld a, a

jr_009_73ae:
    jp nc, Jump_000_37c0

    ld [bc], a
    dec e
    ld [$d1f4], sp
    inc de
    rst $38
    jr nz, jr_009_7406

    call Call_000_0032
    or a
    ld [hl], d
    adc l
    cp a
    add c
    halt
    rst $38
    nop
    db $d3
    ld a, a
    dec bc
    inc bc
    ld d, [hl]
    rst $38
    rst $38
    xor l
    rst $30
    rst $38
    nop
    sub b
    ld h, $66
    rst $38
    sbc c
    nop
    db $db
    add hl, sp
    add $40
    or e
    rst $38
    ei
    nop
    xor c
    jr nz, jr_009_73e6

    ld h, [hl]
    add hl, de
    adc h
    ld d, d
    ld b, b

jr_009_73e6:
    rst $38
    or a
    ld [bc], a
    sbc l
    adc b
    ld [hl], h
    rst $38
    nop
    cp d
    rst $38
    rst $28
    ld d, l
    cp $a6
    di
    or a
    add hl, de
    ld e, a
    rst $38
    ldh [c], a
    xor a
    db $dd
    db $db
    ld h, [hl]
    ld a, h
    adc e
    xor c
    rst $38
    ld d, [hl]
    add e

jr_009_7404:
    inc a
    sub e

jr_009_7406:
    ld l, h
    sub l
    ld l, d
    xor l
    ld a, a
    ld [de], a
    adc a
    ld [hl], b
    rst $18
    xor c
    ld a, [hl-]
    push bc
    inc bc
    ld [bc], a
    rst $38
    push de
    cp a
    di
    dec l
    rst $38
    add d
    xor $59
    ei
    ld a, l
    add d
    inc bc
    inc bc
    or l
    rra
    ld d, e
    db $ed
    xor a
    rst $38
    jp c, $09f6

    ld e, c
    and [hl]
    db $db
    inc h
    ld [hl], $ff
    ret


    xor b
    rst $30
    ld e, d
    db $fd
    ld a, [$a5ff]
    rst $38
    rst $38
    ld a, a
    ld a, a
    xor l
    db $ed
    ld h, l
    cp d
    and d
    rst $38
    ld e, a
    ld d, h
    db $eb
    sbc c
    cp $65
    ei
    cp a
    rst $38
    rst $38
    sbc $df
    ei
    ei
    sbc e
    ld a, h
    xor [hl]
    rst $38
    db $d3
    sub [hl]
    ld a, e
    ld sp, $9ccf
    ei
    ld l, a
    rst $38
    rst $38
    cp e
    rst $38
    rst $28
    rst $28
    and [hl]
    ld e, c
    ld [$f7bf], sp
    dec h
    rst $38
    sbc d
    rst $38
    ld l, a
    jr nz, jr_009_7491

    ld a, a
    rst $38
    ld a, a
    db $db
    db $db
    dec [hl]
    dec [hl]
    add b
    add b
    ld b, $ff
    ld b, $d0
    ret nc

    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_009_7404

    jr nz, jr_009_74aa

    add hl, hl
    ld b, e
    ld hl, $21b4
    ld l, $00
    db $e4
    ld bc, $0281
    nop

jr_009_7491:
    rst $38
    ld [de], a
    nop
    cpl
    nop
    ld [hl+], a
    nop
    daa
    nop
    rst $30
    dec hl
    nop
    ld a, [hl+]
    add b
    nop
    ld [de], a
    nop
    and h
    nop
    rst $18
    ldh a, [c]
    nop
    and d
    nop
    ld [hl], d

jr_009_74aa:
    ld b, b
    ld bc, $0072
    rrca
    xor d
    nop
    inc h
    nop
    nop
    ld [$19fe], sp
    nop
    ld bc, $0700
    nop
    inc e
    rlca
    dec hl
    rst $38
    inc e
    scf
    jr jr_009_750c

    jr nc, jr_009_7516

    jr nz, jr_009_7528

    ei
    nop
    ld b, b
    jr nz, jr_009_74ce

    nop

jr_009_74ce:
    nop
    rrca
    nop
    inc a
    rst $38
    rrca
    ld a, [hl]
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    sbc [hl]
    rst $38
    rst $28
    db $fc
    rrca
    db $ec
    ld [hl], a
    db $fc
    inc bc
    rst $38
    ld a, a
    ld e, h
    rst $38
    ld h, l
    rst $38
    ld h, a
    rst $38
    ld l, a
    ld b, b
    nop
    rst $38
    rst $20
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    inc c
    rst $38
    ldh a, [$ff82]
    db $fc

jr_009_74fb:
    ld sp, hl
    cp $01
    cp $00
    db $fd
    rst $38
    ld hl, $e000
    rra
    db $fc
    add e
    rst $38
    ret nz

    cp a
    rst $38

jr_009_750c:
    ret nz

    rst $30
    ret z

    rst $28
    ret c

    dec hl
    ld b, $80
    cp $26

jr_009_7516:
    nop
    ldh [rP1], a
    jr jr_009_74fb

    db $e4
    jr @-$02

    rst $00
    nop
    inc bc
    ld bc, $0641
    rra
    nop
    sub l
    add hl, bc

jr_009_7528:
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld c, a
    ld a, a
    ccf
    ccf
    rrca
    rst $38
    rrca
    ld b, $1f
    ld bc, $1e27
    ld a, $19
    rst $38
    dec sp
    ld b, $3d
    ld d, $3f
    db $10
    ld e, [hl]
    dec l
    rst $38
    ld a, a
    inc l
    ld l, a
    jr nc, jr_009_75c2

    add hl, sp
    rst $08
    ld hl, sp-$01
    or $f8
    cp $e0
    rst $18
    xor $f2
    sbc h
    rst $38
    db $fc
    ld h, b
    sub $68
    db $fd
    ld e, $9e
    ld h, b
    rst $38
    ld l, h
    ldh a, [$ffec]
    ldh a, [$fffc]
    ldh a, [$fffc]
    nop
    ld a, a
    call nc, $d4e8
    jr z, @-$4a

    ret z

    jr c, jr_009_75b1

    dec b
    ldh a, [$ff1f]
    nop
    rra
    nop
    and d
    rrca
    pop de
    ld de, $1b3f
    rra
    ld [$1eff], sp
    dec bc
    rrca

jr_009_7584:
    inc b
    ld c, $07
    rrca
    nop
    db $fd
    rrca
    ld b, b
    nop

jr_009_758d:
    inc e
    rlca
    inc a
    dec de
    ld a, h
    ccf
    rst $18
    ld hl, sp+$3f
    ret nz

    ccf
    rst $38
    jp nz, $d813

    ldh [rIE], a
    ret c

    ldh [$ffb0], a
    ld b, b
    ret nc

    jr nz, jr_009_75c5

    ret nz

    rst $38
    ldh [rP1], a
    ret nc

    and b
    ldh a, [rP1]
    ld d, b
    and b
    rst $38
    ld c, b

jr_009_75b1:
    or b
    jr z, jr_009_7584

jr_009_75b4:
    inc l
    ret nc

    ccf
    ret nz

    add hl, hl
    cp $4f
    dec b
    ld l, $16
    ld b, c
    rrca
    ld d, $f7

jr_009_75c2:
    dec c
    ld d, $0f

jr_009_75c5:
    inc d
    cp $61
    inc d
    ret nz

    nop
    jr nc, jr_009_758d

    ret z

    jr nc, @-$0a

    ld a, c
    ld [$140f], sp
    rst $20
    inc e
    inc bc
    ld bc, $0103
    rrca
    inc d
    rst $38
    ld a, [hl-]
    rlca
    ld a, l

jr_009_75e0:
    ld d, $7f
    ld de, $2cdf
    cp a
    sbc $ad
    db $ec
    inc sp
    db $fc
    cp a
    inc bc
    inc d
    reti


    rst $38
    and $f7
    adc a
    rst $38
    jr nc, jr_009_75e0

    or h
    push af
    rst $38
    ld c, $4f
    or e
    rst $30
    ld a, b
    ld a, [$fe7c]
    rst $38
    or b
    db $db
    inc l
    ccf
    rrc a
    rst $30
    rrca
    adc a
    rst $30
    ld a, h
    nop
    jr jr_009_75b4

    dec de
    dec h
    inc e
    and l
    inc e
    ld b, b
    ld e, a
    add b
    and b
    ret nz

    and b
    ret nz

    jp hl


    rlca
    rlca
    jr nz, jr_009_7633

    ld a, a
    rla
    rrca
    rla
    rrca
    inc c
    inc bc
    rra
    and b
    inc h
    cp $b3
    dec h
    or $cf
    db $fc

jr_009_7631:
    rra
    ld [hl], b

jr_009_7633:
    ccf
    ld [hl], c
    rst $38
    ld a, $f2
    inc c
    xor $70
    ld a, [$dc1c]
    rst $38
    ld h, b
    adc b
    ldh a, [$ff08]
    ldh a, [$ff1f]
    ldh [$ff1f], a
    ld sp, hl
    ldh [$ffe3], a
    inc de
    ldh [rNR51], a
    db $f4
    ld e, $e3
    ld l, e
    sub h
    rst $38
    adc d
    ld [hl], l
    ld e, h
    dec hl
    ld a, b
    rla
    ld a, [hl-]
    dec b
    ccf
    inc c
    inc bc
    ld [$0807], sp
    rlca
    jr nz, jr_009_768a

    sub b
    inc h
    or $b3
    add hl, hl
    ld b, b
    add b
    and c
    rlca
    ret nz

    nop
    jr nz, jr_009_7631

    adc [hl]
    daa
    nop
    ld b, b
    add b
    ldh [rTMA], a
    add hl, bc
    rrca
    db $10
    rst $00
    rrca
    inc bc
    db $eb
    ld bc, $0b02
    stop
    ld bc, $3f24
    inc bc
    rst $38
    rst $38

jr_009_768a:
    rla
    cp a
    db $d3
    rst $38
    dec l
    ei
    db $ec
    db $fc
    rst $30
    db $e3
    ret c

    rst $28
    ld bc, $dc24
    ldh [$ffe4], a
    ret c

    rst $38
    sbc $3c
    db $fc
    ret nz

    or [hl]
    ret c

    db $fd
    ld c, $ff
    ld c, [hl]
    or b
    xor h
    ret nc

    and h
    ret c

    ld d, [hl]
    xor b
    rst $38
    sbc l

jr_009_76b0:
    ld h, d
    db $fd
    ld a, [bc]
    dec e
    ld [$f00e], a
    ldh a, [rTIMA]
    db $10
    rra
    nop
    adc e
    ld [hl+], a
    and b
    ld [$0700], sp
    inc bc
    dec bc
    jp z, $0be0

    ld b, $20
    add hl, bc
    rlca
    ldh [rP1], a
    or e
    dec [hl]
    jr c, jr_009_76b0

    rst $38
    db $fc
    rrca
    inc l
    rla
    ld a, [hl]
    rlca
    ld a, l
    inc sp
    rst $38
    cp $0d
    ld l, l
    or b
    inc b
    ld hl, sp+$04
    ld hl, sp-$11
    ld [$8ff0], sp
    ld [hl], b
    rlca
    ld c, $0c
    ldh a, [rNR23]
    rst $38
    ldh [$ff3e], a
    ret nz

    dec d
    ld [$eb9c], a
    inc e
    rst $38
    db $eb
    cp b
    ld d, a
    ld a, h
    inc bc
    ld d, $0f
    rra
    rra
    rrca
    rst $38
    rrca
    cp $07
    dec b
    ld [de], a
    inc de
    ld a, [hl-]
    dec b
    db $10
    dec hl
    ld b, b
    add b
    ld hl, $c000
    ldh [$ff33], a
    ret nz

    cp a
    ld [$001f], sp
    ret nz

    rra
    nop
    rra
    nop
    rra
    nop
    rst $28
    dec c
    rra
    nop
    add d
    ld b, e
    adc h
    nop
    rst $38
    jp c, Jump_000_1f8c

    nop
    dec a
    ld e, $16
    add hl, bc
    db $fd
    dec bc
    add b
    rra
    rra
    rrca
    dec hl
    dec e
    ccf
    add hl, de
    cp $20
    nop
    dec e
    ld e, a
    add hl, sp
    ld a, [hl]
    add hl, sp
    or b
    ld a, a
    cp $20
    ld b, e
    ld a, a
    ldh a, [$ff7f]
    db $db
    adc h
    rst $38
    ld bc, $f2ff
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $08

jr_009_7758:
    rst $30
    rst $08
    rst $38
    rst $00
    jr nz, jr_009_775e

jr_009_775e:
    ld h, b
    nop
    ccf
    rst $00
    sbc $91
    add hl, hl
    rst $38
    rst $38
    rra
    rst $38
    ld h, b
    inc sp
    ldh [rNR41], a
    rst $38
    ret nz

    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    rst $28
    cp a
    ldh a, [$ffbf]
    rst $38
    ld [hl+], a
    nop
    cp [hl]
    rst $18
    db $fc
    ld a, h
    inc h
    nop
    inc de
    ld c, d
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    ldh [rSC], a
    add a
    ld a, a
    rst $38
    db $fc
    and b

jr_009_7791:
    inc b
    ldh a, [rSC]
    daa
    nop
    ld h, $4c
    ldh [$fffe], a
    ret nz

    jr c, jr_009_7791

    ld hl, sp+$3a
    db $fc
    rra
    db $fc
    ld e, $07
    db $fd
    dec c
    cp $30
    inc d
    ld [hl+], a
    nop
    ld l, a
    dec bc
    jp $e02b


    dec hl
    rst $38
    ld b, b
    and b
    ld b, b
    ld d, b
    jr nz, jr_009_7758

    ld a, a
    ld b, b
    ld a, a
    ccf
    ld b, b
    ccf
    jr nz, jr_009_77df

    jr jr_009_77c9

    ld b, c
    dec de
    ld a, [hl]
    jp hl


    inc h
    rrca
    nop

jr_009_77c9:
    ccf
    nop
    rra
    nop
    or d
    jr z, @+$01

    rst $38
    ld bc, $0ffe
    pop af
    rst $30
    dec bc
    rst $30
    rst $38
    ei
    rra
    db $e3
    push hl
    ei
    adc e

jr_009_77df:
    ld [hl], l
    ld [hl], e
    rst $18
    dec c
    ld a, [hl+]
    dec e
    inc de
    inc c
    ld d, e
    ld [$dffe], sp
    rst $08
    cp a
    rst $18
    ld a, a
    cp a
    ldh [rHDMA1], a
    ld [bc], a
    dec c
    ei
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $f9
    db $fd
    ld hl, sp-$0c
    ld hl, sp-$41
    ld hl, sp-$10
    rrca
    ldh a, [$ff9f]
    ld h, b
    ld b, b
    ld b, d
    rst $38
    jp hl


    inc c
    or e
    ld bc, $3890
    db $fd
    ldh [rSB], a
    di
    db $fd
    rrca
    ld a, a
    pop af
    di
    dec c
    ld [de], a
    dec c
    add hl, bc
    ld b, $53
    inc c
    cp l
    rlca
    and b
    ld a, [bc]
    dec e
    cp $fe
    db $fc
    ld hl, $fa00
    adc a
    db $fc
    db $fc
    ld hl, sp-$04
    jp nz, Jump_000_2103

    nop
    inc bc
    inc b
    ld d, b
    rst $38
    jr nz, jr_009_7881

    jr nc, jr_009_789f

    jr c, @+$3e

    jr jr_009_787b

    cp a
    jr jr_009_787a

    db $10
    jr nc, jr_009_7845

jr_009_7845:
    jr nz, jr_009_7891

    ld hl, $88f0
    ld h, b
    ld d, h
    rra
    nop
    dec hl
    ld a, [de]
    ld bc, $0c40
    cpl
    ld a, [de]
    daa
    ld a, [de]
    jp c, $8cf1

    cpl
    ld a, [de]
    add hl, hl
    ld a, [de]
    add c
    dec d
    ret nc

    ldh [$ff3f], a
    ret nz

    ld [hl], e
    ret nz

    ccf
    ld hl, $051a
    ld a, [de]
    cp $bf
    cp h
    ld a, [bc]
    ld a, [de]
    adc h
    rrca
    ld d, $25
    nop
    ldh a, [$ff7f]
    add hl, hl
    ld d, $21

jr_009_787a:
    ld d, b

jr_009_787b:
    dec [hl]
    ld h, a
    rra
    db $eb
    nop
    ld a, a

jr_009_7881:
    ld hl, $ff16
    jr z, jr_009_789c

    add hl, bc
    ld l, d
    push af
    rst $38
    db $db
    inc a
    push af
    ld a, d
    ld a, c
    ld b, $72

jr_009_7891:
    inc a
    xor e
    inc h
    jr jr_009_789b

    ld d, $ff
    jr z, jr_009_78b0

    db $fd

jr_009_789b:
    nop

jr_009_789c:
    jr nz, jr_009_791c

    rst $38

jr_009_789f:
    db $fd
    db $fd
    ld a, [hl]
    cp a
    ld a, [hl]
    ld e, l
    ld a, $e9
    di
    ld e, $f3
    ld b, b
    jr jr_009_78b6

    ld d, $fb
    rst $38

jr_009_78b0:
    di
    rst $38
    rst $18
    rst $20
    ei
    rrca

jr_009_78b6:
    rst $30
    rst $30
    ld b, b
    inc [hl]
    rla
    rrca
    rst $30
    di
    rrca
    ld sp, hl
    ld b, b
    ld d, $07
    cp $0d
    cp $dd
    rra
    jp nz, $fe15

    ld hl, sp-$02
    ret nz

    ld h, d
    ld a, [$fff4]
    jp hl


    or $f5
    xor $d7
    xor $b2
    call z, Call_009_7feb
    add b
    pop de
    ld l, d
    and b
    ret nz

jr_009_78e1:
    ld e, e
    ld e, b
    jr nc, jr_009_7961

    cp [hl]
    jr nz, jr_009_78fe

    inc e
    ld [$000c], sp
    ld [$7108], sp
    ldh [$ffc3], a
    nop
    ld hl, sp-$80
    daa
    rra
    nop
    call nz, $c04f
    inc hl
    ld d, b
    jr nz, jr_009_78e1

jr_009_78fe:
    jr z, jr_009_7910

    dec bc
    ld c, $e9
    ld c, b
    rrca
    ld c, $ff
    inc bc
    dec hl
    cp a
    rst $30
    rst $38
    rst $00
    adc a
    ld [hl], a
    ld [hl], a

jr_009_7910:
    ld b, b
    ld d, d
    inc de
    di
    rrca
    ld hl, sp+$40
    ld a, $0d
    ld c, $f7
    rst $38

jr_009_791c:
    pop af
    rst $38
    rst $38
    xor $f1
    pop de
    xor $a9
    sbc $51
    adc [hl]
    db $f4
    db $f4
    dec l
    ld [$ff24], sp
    jr nz, jr_009_7949

    ld sp, hl
    cp $06
    ld sp, hl
    cp a
    ld hl, sp+$07
    add hl, hl
    ld e, $22
    inc e
    rlca
    inc h
    rra
    db $ed
    cp $b0
    dec de
    cp $fe
    ld de, $ff37
    cp a
    ld a, a
    rst $38

jr_009_7949:
    rst $38
    ccf
    rst $18
    ccf
    cpl
    rra
    ld d, $0f
    cp $63
    ld d, h
    jr z, jr_009_7966

    ld b, h
    jr c, @+$6e

    jr c, jr_009_79d7

    rst $38
    jr c, @+$3a

    db $10
    cp b
    db $10

jr_009_7961:
    sub b
    nop
    sub b
    ld [bc], a
    add d

jr_009_7966:
    ld e, e
    ret nz

    ld h, d
    ld b, h
    inc bc
    ld c, $00
    ld [$00ff], sp
    nop
    inc bc
    nop
    ld b, $03
    inc c
    rlca
    rst $38
    dec e
    rrca
    ld a, $1f
    ccf
    rra
    ld e, [hl]
    ccf
    rst $38
    halt
    ccf
    ld h, l
    ld a, $46
    dec a
    ld b, e
    dec a
    rst $38
    ld b, e
    inc a
    ld b, l
    dec sp
    cpl
    inc de
    cpl
    rla
    cp a
    cp $00
    ld bc, $00fe
    rst $38
    inc hl
    nop
    ld b, b
    rst $38
    cp a
    ld h, b
    cp a
    ei
    ld e, a
    db $fd
    cpl
    rst $38
    rst $38
    sub $ff
    add hl, sp
    rst $38
    inc a
    cp $7d
    rst $38
    rst $38
    inc a
    rst $38
    dec a
    nop
    nop
    add b
    nop
    ld b, b
    rst $38
    add b
    jr nc, @-$3e

    ld [$14f0], sp
    ld hl, sp+$2c
    rst $38
    ld hl, sp+$76
    db $fc
    cp $fc
    ld a, [$d2fc]
    rst $38
    db $fc
    jp z, Jump_009_427c

    cp h
    ldh [c], a
    inc e
    call nz, $b8ff
    call nz, Call_000_17b8

jr_009_79d7:
    dec bc
    rrca
    inc bc
    inc bc
    db $eb
    nop
    ld bc, $06a2
    ld bc, $0022
    inc bc
    ld bc, $bf07
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld bc, $a003
    nop
    ld bc, $00ff
    sbc a
    rst $38
    rst $38
    ld a, [hl]
    db $fd
    cp $fb
    rst $38
    ld a, h
    ld a, [hl]
    ld sp, $06fd
    dec sp
    push af
    rst $18
    rst $38
    ldh [$ffed], a
    ld e, $78
    sbc a
    cp $5f
    rst $18
    rst $38
    ld h, b
    db $ed
    halt
    db $ed
    halt
    adc $31
    ccf
    rst $38
    rst $00
    ret z

    or b
    xor b
    ld d, b
    ret nc

    jr nz, jr_009_7a3d

    rst $38
    ret nz

    ret nc

    ldh [$ffe0], a
    nop
    and b
    ret nz

    ld [hl], b
    adc e
    ret nz

    ret nz

    nop
    rlca
    add b
    and h
    dec bc
    and c
    nop

jr_009_7a30:
    ld b, c
    dec b
    ld [bc], a
    ld hl, sp-$80
    inc b
    push hl
    inc c
    inc bc
    ld b, $0f
    inc bc
    inc e

jr_009_7a3d:
    inc bc
    rrca
    cp $e2
    dec c
    rrca
    rst $30
    rst $38
    dec b
    cp $f5
    rst $38
    rst $38
    nop
    halt
    jr c, @+$01

    nop
    ld a, [$7f7d]
    rst $38
    nop
    ldh [c], a
    dec a
    ldh [c], a
    cp l
    pop bc
    cp $81
    rst $28
    cp $01
    cp $ff
    ldh [c], a
    rrca
    ld b, b
    add b
    ret nz

    ld hl, sp+$20
    nop
    inc hl
    dec b
    and c
    dec b
    ld b, b
    add b
    jr nz, jr_009_7a30

    jr nz, jr_009_7ab1

    ret nz

    ld h, b
    add b
    ldh a, [rP1]
    ldh [$ffe2], a
    ld de, $0c0f
    ld a, [hl]
    dec b
    inc c
    rlca
    nop
    rrca
    dec b
    rra
    ld a, [bc]
    dec b
    inc c
    rst $38
    ld a, a

jr_009_7a89:
    jr nc, jr_009_7a89

    inc bc
    dec [hl]
    ld a, [$e0df]
    rst $38
    or $0f
    ld a, $cf
    db $fd
    xor a
    rst $28
    or [hl]
    rst $38
    ld [hl], a
    cp c
    ld sp, hl
    ld a, $a3
    ld e, h
    sbc a
    ld h, b
    cp $01
    inc c
    ld d, b
    and b
    ldh [rP1], a
    ld d, b
    ldh [$fff8], a
    cp a
    jr nz, @+$62

    ret nz

    or b

jr_009_7ab1:
    ld h, b
    ld hl, sp+$21
    rlca
    nop
    rst $38
    ld h, b
    add b
    or b
    ret nz

    call z, $fab0
    ld a, h
    ld e, a
    db $fd
    ld h, [hl]
    rra
    dec b
    rlca
    ld b, c
    ld de, $4000
    ld de, $00ff
    ld e, $03
    ld a, $1b
    ld a, h
    ccf
    ld a, b
    cp a
    ccf
    jr nc, jr_009_7ae6

    db $fc
    inc bc
    ld a, a
    db $e4
    add hl, de
    db $e3
    rst $38
    sbc h
    ld a, [hl]
    pop hl
    push af
    ld a, [de]
    rst $18
    ldh [$fff9], a

jr_009_7ae6:
    rst $38
    ld b, $d6
    pop hl
    rst $30
    ld [bc], a
    inc hl
    ret nz

    ld hl, $c0cf
    ld b, c
    add b
    ld a, a
    jr nz, jr_009_7af6

jr_009_7af6:
    db $e3
    dec bc
    nop
    nop
    rst $28
    cp $30

jr_009_7afd:
    or b
    nop
    ld bc, $5805
    and b
    add h
    rst $38
    ld a, b
    inc b
    ld hl, sp-$7c
    ld a, b
    ret z

    ldh a, [$ffc8]
    ccf
    ldh a, [$ff88]
    ld [hl], b
    db $fc
    nop
    ld hl, sp-$1c
    dec e
    rrca
    inc c
    cp h
    inc bc
    jr jr_009_7afd

    rla
    rlca
    ld [bc], a
    rlca
    ld bc, $1806
    inc sp
    rst $38
    ei
    inc c
    scf
    db $eb
    sbc $e1
    db $fd
    ld e, $ff
    ld a, c
    cp [hl]
    or c
    ld e, [hl]
    ld a, [$ec2d]
    ld [hl], e
    cp a
    ret nc

    xor a
    pop hl
    sbc $be
    pop bc
    dec b
    inc c
    ld h, b
    ldh [c], a
    ld h, b
    dec bc
    and b
    add b
    ld de, $1803
    ret nz

    nop
    ld b, b
    sub b
    ld h, b

jr_009_7b4d:
    rst $38
    ret z

    jr nc, @-$4e

    ld b, b
    rlca
    inc bc
    dec b
    ld [bc], a
    ld sp, hl
    ld [bc], a
    and d
    dec e
    nop
    ld de, $1606
    rrca
    db $10
    rrca
    ld a, a
    inc c
    inc bc
    ccf
    nop
    ld a, a
    nop
    ccf
    db $e4
    dec h
    rst $38
    ld h, e
    sbc h
    rst $38
    inc bc
    cp l
    ld c, [hl]
    rst $08
    ld sp, $bbdf
    ret nz

    swap c
    add hl, sp
    ld h, b
    ld [hl+], a
    ld [$8ff0], sp
    ld de, $1fe0
    ldh [rNR11], a
    dec h
    db $e3
    daa
    ldh [rNR22], a
    nop
    rst $38
    jr nc, jr_009_7b4d

    add sp, -$70
    ld hl, sp+$60
    db $e4
    sbc b
    rst $38
    and d
    ld a, h
    pop de
    ld a, $f1
    ld a, [hl]
    ldh a, [c]
    db $fc
    rra
    and $f8
    adc a
    ld [hl], b
    cp $bf
    ld a, [hl+]
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
    inc e
    nop
    nop
    inc b
    cp c
    ld bc, $001f
    dec l
    nop
    inc bc
    inc b
    dec b
    ld d, e
    ld bc, $fb0e
    rrca
    db $10
    ld l, [hl]
    ld bc, $0706
    ld [$0a09], sp
    rst $38
    dec bc
    inc c
    dec c
    ld [bc], a
    ld de, $1312
    inc d
    sbc a
    dec d
    ld d, $17
    jr @+$04

    ld de, $6600
    ld bc, $8702
    ld a, [de]
    add hl, de
    ld a, [de]
    ld de, $6200
    nop
    cp l
    nop
    or c
    ld bc, $871e
    dec de
    dec e
    ld e, $20
    nop
    ld h, d
    nop
    cp l
    nop
    or c
    ld bc, $8720
    inc e
    rra
    jr nz, jr_009_7cb1

    nop
    ld h, d
    nop
    cp l
    nop
    or c
    ld bc, $1f21
    ld [hl+], a
    inc hl
    inc h
    inc h
    inc h
    ld h, d
    nop
    cp l
    nop
    or d
    ld bc, $253f
    ld h, $27
    jr z, jr_009_7cd3

    jr z, jr_009_7d0f

    nop
    cp l
    nop
    ld [bc], a

jr_009_7cb1:
    or d
    ld bc, $1f29
    nop
    ld e, d
    nop
    cpl
    inc de
    rra
    nop
    rra
    nop
    rra
    nop
    jr c, jr_009_7ce1

    nop
    rra
    nop
    rra
    nop
    nop
    nop
    ld a, [hl+]
    rra
    nop
    ld e, d
    nop
    add c
    dec hl
    rra
    nop
    rra

jr_009_7cd3:
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    jp nc, Jump_000_2c00

    nop
    rra
    nop
    ld e, d

jr_009_7ce1:
    nop
    cpl
    dec bc
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

jr_009_7d0f:
    nop
    nop
    rra
    nop
    rra
    nop
    dec e
    nop
    ldh a, [c]
    rrca
    sub h
    nop
    ldh a, [c]
    rlca
    sub d
    nop
    ldh a, [c]
    rst $38
    sub b
    nop
    ldh [c], a
    rla
    adc [hl]
    nop
    ldh [c], a
    rrca
    adc h
    nop
    ldh [c], a
    rlca
    adc d
    nop
    ldh [c], a
    rst $38
    adc b
    nop
    jp nc, $8617

    nop
    jp nc, $840f

    nop
    jp nc, $8207

    nop
    jp nc, $80ff

    nop
    add b
    di
    rla
    xor d
    nop
    di
    rrca
    xor b
    nop
    di
    rlca
    and [hl]
    nop
    di
    rst $38
    and h
    nop
    db $e3
    rla
    and d
    nop
    db $e3
    rrca
    and b
    nop
    db $e3
    rlca
    sbc [hl]
    nop
    db $e3
    rst $38
    sbc h
    nop
    db $d3
    rla
    sbc d
    nop
    db $d3
    rrca
    add h
    nop
    db $d3
    rlca
    sbc b
    nop
    db $d3
    rst $38
    sub [hl]
    nop
    add b
    di
    rla
    cp d
    nop
    di
    rrca
    cp b
    nop
    di
    rlca
    or [hl]
    nop
    di
    rst $38
    or h
    nop

jr_009_7d85:
    db $e3
    rla
    or d
    nop
    db $e3
    rrca
    or b
    nop
    db $e3
    rlca
    xor [hl]
    nop
    db $e3
    rst $38

jr_009_7d93:
    xor h
    nop
    db $d3
    rla
    sbc d
    nop
    db $d3
    rrca
    add h
    nop
    db $d3
    rlca
    sbc b
    nop
    db $d3
    rst $38
    sub [hl]
    nop
    add b
    ldh a, [$ff28]
    jp c, $f000

    jr nz, jr_009_7d85

    nop
    ldh a, [rNR23]
    sub $00
    ldh a, [rNR10]
    call nc, $f000
    ld [$00d2], sp
    ldh a, [rP1]
    ret nc

    nop
    ldh [$ff28], a
    adc $00
    ldh [rNR41], a
    call z, $e000
    jr jr_009_7d93

    nop
    ldh [rNR10], a

jr_009_7dcc:
    ret z

    nop
    ret nc

    ld [$00c2], sp
    ret nc

    nop
    ret nz

    nop
    ldh [$ff08], a
    add $00
    ldh [rP1], a
    call nz, $8000
    ldh a, [$ff28]
    ldh a, [rP1]
    ldh a, [rNR41]
    xor $00
    ldh a, [rNR23]
    db $ec
    nop
    ldh a, [rNR10]
    ld [$f000], a
    ld [$00e8], sp
    ldh a, [rP1]
    and $00
    ldh [$ff28], a
    db $e4
    nop
    ldh [rNR41], a
    call z, $e000
    jr jr_009_7dcc

    nop
    ldh [rNR10], a
    ldh [c], a
    nop
    ldh [$ff08], a
    ldh [rP1], a
    ldh [rP1], a
    sbc $00
    ret nc

    ld [$00dc], sp
    add b
    ldh a, [$ff28]
    cp $00
    ldh a, [rNR41]
    db $fc
    nop
    ldh a, [rNR23]
    ld a, [$f000]
    db $10
    ld hl, sp+$00
    ldh a, [$ff08]
    or $00
    ldh a, [rP1]
    db $f4
    nop
    ldh [$ff28], a
    ldh a, [c]
    nop
    ldh [rNR41], a
    call z, $e000
    jr @-$34

    nop
    ldh [rNR10], a
    ldh [c], a
    nop
    ldh [$ff08], a
    ldh [rP1], a
    ldh [rP1], a
    sbc $00
    ret nc

    ld [$00dc], sp
    add b
    ldh a, [c]
    rrca
    stop
    ldh a, [c]
    rlca
    ld c, $00
    ldh a, [c]
    rst $38
    inc c
    nop
    ldh [c], a
    rrca
    ld a, [bc]
    nop
    ldh [c], a
    rlca
    ld [$e200], sp
    rst $38
    ld b, $00
    jp nc, Jump_000_040f

    nop
    jp nc, Jump_000_0207

    nop
    jp nc, Jump_000_00ff

    nop
    add b
    di
    rrca
    inc e
    nop
    di
    rlca
    ld a, [de]
    nop
    di
    rst $38
    jr jr_009_7e7a

jr_009_7e7a:
    db $e3
    rrca
    ld d, $00
    db $e3
    rlca
    inc d
    nop
    db $e3
    rst $38
    ld [de], a
    nop
    db $d3
    rrca
    inc b
    nop
    db $d3
    rlca
    ld [bc], a
    nop
    db $d3
    rst $38
    nop
    nop
    add b
    di
    rrca
    jr z, jr_009_7e97

jr_009_7e97:
    di
    rlca
    ld h, $00
    di
    rst $38
    inc h
    nop
    db $e3
    rrca
    ld [hl+], a
    nop
    db $e3
    rlca
    jr nz, jr_009_7ea7

jr_009_7ea7:
    db $e3
    rst $38
    ld e, $00
    db $d3
    rrca
    inc b
    nop
    db $d3
    rlca
    ld [bc], a
    nop
    db $d3
    rst $38
    nop
    nop
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_009_7feb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
