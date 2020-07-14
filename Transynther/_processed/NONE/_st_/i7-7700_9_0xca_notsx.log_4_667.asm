.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xda88, %rdx
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rdx), %r12
nop
nop
nop
nop
cmp $24077, %rsi
lea addresses_normal_ht+0xfa29, %r10
nop
nop
nop
and %rdx, %rdx
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x8a0c, %rsi
lea addresses_WC_ht+0x11278, %rdi
add %r9, %r9
mov $0, %rcx
rep movsw
nop
nop
cmp $11474, %r14
lea addresses_WT_ht+0x15e48, %rsi
lea addresses_D_ht+0x10e68, %rdi
xor $26058, %r14
mov $108, %rcx
rep movsw
nop
nop
and $38608, %rdi
lea addresses_A_ht+0x1228, %r12
nop
nop
nop
nop
nop
cmp $36462, %r9
mov (%r12), %ecx
cmp %rsi, %rsi
lea addresses_WC_ht+0x41e8, %r9
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rdx

// Store
lea addresses_normal+0x19678, %rbx
nop
and %r13, %r13
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub $57716, %rbx

// Store
lea addresses_WC+0x1ad48, %r14
nop
inc %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r14)
add $40375, %r14

// Store
mov $0x3e0a110000000648, %r13
xor %r14, %r14
movw $0x5152, (%r13)
sub $2202, %rbx

// Load
lea addresses_A+0xba48, %r13
nop
nop
nop
cmp $8500, %r14
movb (%r13), %dl
nop
nop
add %rbx, %rbx

// Store
lea addresses_US+0x15548, %rdx
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%rdx)
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1b528, %r11
inc %rax
movb $0x51, (%r11)
nop
nop
nop
nop
xor $26756, %rbx

// Store
lea addresses_RW+0x13e22, %r10
nop
add %rbx, %rbx
movl $0x51525354, (%r10)
cmp %rbx, %rbx

// Store
mov $0x148, %r14
nop
nop
nop
nop
add $56106, %r13
movw $0x5152, (%r14)
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_A+0xb648, %r11
nop
nop
nop
nop
sub $58540, %r10
mov (%r11), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'52': 4}
52 52 52 52
*/
