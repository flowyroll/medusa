.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bbd2, %rsi
lea addresses_WC_ht+0x17eb2, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $20, %rcx
rep movsl
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x10faa, %rbp
nop
nop
nop
nop
nop
sub %r9, %r9
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm3
vpextrq $1, %xmm3, %r15
nop
xor $13406, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rbx

// Load
lea addresses_PSE+0x738e, %r11
nop
nop
nop
nop
inc %r12
movups (%r11), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0x6e6d6500000001d2, %r8
nop
nop
nop
sub $55140, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r8)
nop
nop
add $29283, %r11

// Store
mov $0xc8b7000000005ca, %rbx
nop
xor %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_US+0x842, %rbx
sub %r12, %r12
movl $0x51525354, (%rbx)
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0x1c6d2, %r8
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovntdq %ymm0, (%r8)
nop
nop
nop
nop
and $7644, %r12

// Faulty Load
lea addresses_WT+0xc9d2, %r8
nop
nop
nop
nop
dec %r12
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'39': 188}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
