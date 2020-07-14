.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12eb, %rsi
lea addresses_normal_ht+0x1af16, %rdi
nop
nop
nop
nop
inc %r13
mov $90, %rcx
rep movsb
xor %rcx, %rcx
lea addresses_normal_ht+0xc6b, %r15
dec %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x13755, %rsi
lea addresses_WC_ht+0x1506b, %rdi
nop
nop
nop
inc %r9
mov $28, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x11e6b, %r15
nop
dec %r13
mov (%r15), %bp
nop
nop
sub $13104, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rcx

// Faulty Load
lea addresses_US+0x1306b, %r8
nop
nop
nop
add %r14, %r14
mov (%r8), %r15d
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 2}
00 00
*/
