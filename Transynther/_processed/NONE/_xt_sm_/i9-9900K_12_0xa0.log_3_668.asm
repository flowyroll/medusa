.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xeaed, %r8
nop
inc %r10
mov (%r8), %si
nop
nop
nop
xor $34513, %r12
lea addresses_UC_ht+0x14045, %r8
nop
nop
add $23112, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
xor $13547, %r10
lea addresses_WC_ht+0x1d905, %rax
and $62962, %rdi
mov (%rax), %bx
nop
nop
nop
nop
nop
cmp $25385, %rbx
lea addresses_normal_ht+0x1e285, %r12
nop
xor %r8, %r8
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x5a05, %r12
clflush (%r12)
xor %rax, %rax
mov (%r12), %esi
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1ef15, %rsi
lea addresses_normal_ht+0x7d19, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $21, %rcx
rep movsw
nop
nop
nop
xor $50989, %rcx
lea addresses_UC_ht+0x32f9, %r10
nop
nop
nop
add $2038, %r12
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0x19905, %rbp
nop
nop
nop
nop
nop
lfence
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_UC+0x19905, %rbx
cmp $10429, %rbp
mov (%rbx), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'54': 3}
54 54 54
*/
