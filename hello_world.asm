; This hello world program prints "Hello World" 3 times
const counter_stop, 3

Start:
    ld r1, 0
    ld r2, counter_stop
Loop:
    disp_str "Hello World!\n"
    ; Increment counter by 1
    inc r1
    ; Check if counter reached a value of 3
    cp r1, r2
    jpnc Loop
    ; Fall through to program end
    disp_str "End program.\n"
