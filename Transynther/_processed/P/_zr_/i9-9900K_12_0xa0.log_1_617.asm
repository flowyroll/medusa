.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rdx
lea addresses_A_ht+0x88ff, %rbx
nop
add %r15, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x17691, %rdi
nop
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%rdi)
nop
and $33124, %rdx
lea addresses_normal_ht+0x10bb7, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
movb (%rdi), %r11b
nop
nop
nop
nop
nop
and $41909, %r9
lea addresses_UC_ht+0x1b71f, %rdi
nop
nop
nop
nop
sub $10784, %rbx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
and $37184, %rdi
lea addresses_normal_ht+0x13459, %rdx
nop
nop
nop
xor $49950, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdx)
sub $43284, %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x1ef4c, %r9
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r9)
nop
sub %r12, %r12

// Load
lea addresses_PSE+0x185ff, %rdx
inc %rcx
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
sub %r10, %r10

// Store
lea addresses_US+0xe581, %rdx
nop
nop
xor $56067, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
mov $0xff, %r9
and $17261, %rcx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'00': 1}
00
*/
