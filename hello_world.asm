; This hello world program prints "Hello World" 3 times
const counter_stop, 3

Start:
    ld r1, 0
    ld r2, 1
    ld r3, counter_stop
Loop:
    disp_str "Hello World!\n"
    ; Increment counter by 1
    add r1, r1, r2
    ; Check if counter reached a value of 3
    cp r1, r3
    jpnc Loop
    ; Fall through to program end
    disp_str "End program.\n"
