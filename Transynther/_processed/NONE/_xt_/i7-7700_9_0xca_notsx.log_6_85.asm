.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb872, %r11
nop
nop
xor $60720, %rdx
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x11972, %r15
nop
nop
nop
nop
sub $43677, %rdi
mov (%r15), %rbp
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1c972, %r11
nop
nop
cmp $50771, %r12
mov (%r11), %r15d
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x7e32, %r15
nop
and %rdx, %rdx
movb $0x61, (%r15)
and %rdi, %rdi
lea addresses_WC_ht+0x5bba, %r8
nop
nop
nop
xor %r15, %r15
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x107e, %rsi
lea addresses_A_ht+0x78f6, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $115, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0xe0fa, %rcx
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
and $11636, %rdi
lea addresses_WC_ht+0xe3d2, %r12
nop
nop
nop
nop
add $46548, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
and $0xffffffffffffffc0, %r12
vmovntdq %ymm1, (%r12)
nop
nop
cmp $18732, %rcx
lea addresses_WT_ht+0x83b8, %r12
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r12)
nop
nop
nop
nop
xor $29093, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_normal+0x13772, %rsi
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
dec %r10

// Store
lea addresses_WC+0x19572, %r14
nop
add $13576, %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp $58174, %r8

// Store
lea addresses_WC+0x15b6a, %rax
nop
dec %rsi
movw $0x5152, (%rax)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0x1f9f2, %r14
nop
nop
nop
inc %rax
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x18572, %rsi
clflush (%rsi)
nop
sub $57807, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movaps %xmm4, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x380, %rsi
add $6321, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rsi)
nop
add $7662, %r14

// Faulty Load
lea addresses_normal+0xfd72, %r15
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r15), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'34': 6}
34 34 34 34 34 34
*/
