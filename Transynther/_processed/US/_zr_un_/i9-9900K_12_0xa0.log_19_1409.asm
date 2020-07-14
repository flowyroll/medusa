.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rsi
lea addresses_UC_ht+0x9872, %r9
nop
nop
nop
nop
nop
cmp $58234, %r15
mov (%r9), %rbp
sub $31183, %r11
lea addresses_WC_ht+0x11582, %r8
nop
add %rsi, %rsi
movb $0x61, (%r8)
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_A+0xa512, %rax
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
and $6083, %r8

// Store
lea addresses_PSE+0x5c0a, %r11
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovntdq %ymm4, (%r11)
nop
nop
add %rdi, %rdi

// Store
lea addresses_US+0x1b872, %r11
nop
nop
nop
nop
nop
xor $59260, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
mov $0xb72, %rbx
nop
nop
dec %r14
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
sub $27359, %r10

// Faulty Load
lea addresses_US+0x1b872, %rdi
nop
nop
nop
and %r10, %r10
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'08': 2, '00': 17}
00 00 00 00 00 00 00 08 00 00 00 00 00 08 00 00 00 00 00
*/
