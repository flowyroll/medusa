.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa987, %r10
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r10), %r13b
add %rax, %rax
lea addresses_WC_ht+0xbb27, %rdi
and $6345, %rax
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x12a07, %rsi
lea addresses_normal_ht+0x13407, %rdi
nop
nop
cmp $62196, %rbp
mov $94, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WT_ht+0x1a6c7, %rsi
lea addresses_WC_ht+0xafe7, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $30, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xce89, %rsi
lea addresses_A_ht+0x15e47, %rdi
nop
nop
nop
nop
xor $12301, %r9
mov $74, %rcx
rep movsb
nop
nop
nop
nop
sub $42999, %rax
lea addresses_WT_ht+0x18b1, %r10
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r10)
nop
add $17826, %rbp
lea addresses_D_ht+0x16b07, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rcx), %ebp
xor $21697, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x3a421500000001bb, %r13
sub %r12, %r12
movw $0x5152, (%r13)
nop
nop
nop
nop
cmp %r14, %r14

// Store
mov $0xd47, %r14
nop
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
add $24372, %r12

// Store
lea addresses_RW+0x178b7, %rax
nop
nop
nop
nop
cmp $3802, %r9
movl $0x51525354, (%rax)
nop
cmp %r13, %r13

// Load
lea addresses_normal+0x11647, %r14
nop
nop
nop
xor %r9, %r9
movb (%r14), %r12b
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_RW+0x8047, %r9
nop
nop
nop
nop
sub $24220, %rax
movntdqa (%r9), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 29, '48': 10, '44': 1, '49': 5}
48 00 00 00 00 00 00 44 48 00 00 00 00 00 48 48 00 00 49 49 48 00 00 00 49 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 49 48 49 00
*/
