
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
name = "Especial1"     
command = ~D,DF,F,a
time = 10

[Command]
name = "Especial2"     
command = ~D,DB,B,a
time = 10

[Command]
name = "Especial3"     
command = ~D,DF,F,b
time = 10

[Command]
name = "Especial4"     
command = ~D,DB,B,b
time = 10

[Command]
name = "Especial5"     
command = ~D,DF,F,c
time = 10

[Command]
name = "Especial6"     
command = ~D,DB,B,c
time = 10

[Command]
name = "SUPER1"     
command = x
time = 10

[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"   
command = B, B
time = 10

[Command]
name = "recovery" 
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Statedef -1]
;-----------------------------------------------------------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2) <= 1
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
triggerall = var(2) <= 1
value = 102
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2) = 4
value = 17100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
triggerall = var(2) = 4
value = 17102
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2) = [2,3]
value = 11100
triggerall = stateno != 11100
triggerall = stateno != 11105
trigger1 = command = "FF"
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2) = [2,3]
value = 11105
triggerall = stateno != 11100
triggerall = stateno != 11105
trigger1 = command = "BB"
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
triggerall = var(2) >= 5
value = 19100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
triggerall = var(2) >= 5
value = 19105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
triggerall = var(2) <= 1
triggerall = stateno != 110
triggerall = stateno != 115
value = 110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
triggerall = var(2) <= 1
triggerall = stateno != 110
triggerall = stateno != 115
value = 115
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
triggerall = var(2) = 4
triggerall = stateno != 17110
triggerall = stateno != 17115
value = 17110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
triggerall = var(2) = 4
triggerall = stateno != 17110
triggerall = stateno != 17115
value = 17115
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
triggerall = var(2) >= 5
triggerall = stateno != 19110
triggerall = stateno != 19115
value = 19110
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Air Dash Backwards
[State -1, Air Dash Backwards]
type = ChangeState
triggerall = var(2) >= 5
triggerall = stateno != 19110
triggerall = stateno != 19115
value = 19115
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------------------
[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = Power >= 1000
value = 6304
triggerall = command = "Especial3"
trigger1 = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = Power >= 1000
value = 1300
triggerall = command = "Especial1"
trigger1 = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = Power >= 1000
value = 1100
triggerall = command = "Especial2"
trigger1 = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 6100
triggerall = command = "Especial5"
Triggerall = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 1200
triggerall = command = "Especial4"
Triggerall = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 1000
value = 1500
triggerall = command = "Especial6"
Triggerall = statetype != A
trigger1 = ctrl

[State -1,]
type = ChangeState
triggerall = var(2) = 0
Triggerall = power >= 3000
value = 3100
triggerall = command = "SUPER1"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
Triggerall = power < 3000
value = 500
triggerall = command = "s"
trigger1 = statetype !=A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200+Var(11)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210+var(11)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Ki Blast - C
[State -1, Ki Blast - C]
type = ChangeState
value = cond((pos Y = 0)&&((command="holdfwd")||(command="holdback")),401,400)
triggerall = command = "c"
triggerall = cond(pos Y = 0,(command != "holddown"),command = "c")
triggerall = power >= 70
trigger1 = statetype != L 
trigger1 = ctrl
trigger2 = stateno = 400 && time >=10
trigger3 = stateno = 401 && time >=10
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600+Var(11)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;----------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 610+Var(11)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl