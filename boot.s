bits 64
default rel
section .text
global efi_main
extern execount
extern kernel
efi_main:
    sub rsp, 40
    call execount
    call kernel
    add rsp, 40
    ret