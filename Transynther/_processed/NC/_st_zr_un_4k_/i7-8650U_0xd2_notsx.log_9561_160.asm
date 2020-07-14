.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15d9b, %r15
nop
nop
sub %r11, %r11
mov (%r15), %bp
nop
nop
and %r12, %r12
lea addresses_D_ht+0x89f3, %r9
nop
nop
nop
inc %r14
movb $0x61, (%r9)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xc733, %rsi
lea addresses_WT_ht+0x168b3, %rdi
cmp %r14, %r14
mov $109, %rcx
rep movsl
nop
and %r11, %r11
lea addresses_D_ht+0x57f3, %r11
nop
inc %r9
mov (%r11), %ebp
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rdi

// Store
mov $0x369e3700000008b3, %r14
cmp %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r14)
nop
nop
and $41948, %r10

// Store
lea addresses_PSE+0x1b0b3, %r9
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
mov $0x3938f500000000b3, %rdi
nop
nop
nop
sub %r10, %r10
movb (%rdi), %bl
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'54': 7444, '24': 2088, '00': 24, '50': 2, '0c': 1, 'c3': 1, '76': 1}
54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 24 54 24 54 54 24 54 54 54 54 54 54 24 54 54 24 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 50 24 54 54 24 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 24 24 54 54 24 54 54 54 54 54 54 24 24 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 24 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 0c 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 24 54 54 54 54 54 54 24 24 54 54 54 24 54 54 54 54 54 24 54 54 54 54 54 24 24 54 54 54 54 24 54 24 54 24 54 54 54 24 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 24 24 54 54 54 54 54 24 54 24 54 24 24 24 54 54 54 54 24 54 54 54 54 24 54 54 24 24 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 00 24 54 54 54 54 54 24 54 54 24 54 54 24 24 54 54 54 54 54 24 54 24 54 54 54 54 54 54 24 24 54 54 54 24 54 24 54 54 54 54 24 54 54 54 24 54 54 54 54 24 24 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 24 54 54 54 54 54 54 54 24 24 54 54 24 54 54 54 54 54 24 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 24 24 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 24 54 54 54 54 54 54 54 54 54 24 24 24 54 54 54 24 54 24 54 54 54 54 54 54 24 54 54 24 54 24 54 24 54 54 54 54 24 24 54 54 54 54 54 24 24 54 54 54 54 54 54 24 54 54 54 24 54 24 54 54 54 54 54 54 54 54 54 24 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 24 54 24 54 54 54 54 54 54 54 24 54 54 54 54 54 54 24 54 54 54 24 54 24 24 54 54 54 24 24 24 54 54 54 54 54 54 24 24 54 24 54 24 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 24 24 54 24 24 54 54 54 54 54 54 24 54 24 24 54 54 54 24 54 54 54 54 24 24 24 54 54 24 24 54 54 54 24 24 54 54 24 24 54 54 54 54 54 54 54 54 54 24 54 24 54 24 54 54 24 24 24 54 24 24 54 54 54 54 54 54 54 24 54 54 54 24 54 24 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 24 24 54 24 54 54 54 54 54 24 54 54 54 54 54 54 54 24 54 24 24 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 24 24 54 54 54 24 24 54 54 54 54 54 54 54 54 54 54 24 54 54 54 54 24 54 54 54 24 54 54 54 54 24 24 54 54 54 24 24 54 24 54 24 54 54 24 54 54 24 24 54 54 54 54 24 54 24 24 24 24 54 54 54 54 24 24 54 54 24 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 54 54
*/
