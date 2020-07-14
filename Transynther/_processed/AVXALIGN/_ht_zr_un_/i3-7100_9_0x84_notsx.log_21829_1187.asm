.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ad17, %r9
nop
nop
dec %rbx
mov (%r9), %r11d
nop
nop
nop
nop
nop
add $60414, %rcx
lea addresses_WT_ht+0x1be17, %r12
nop
nop
sub $22895, %rbx
mov (%r12), %esi
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x9c17, %r12
sub %r13, %r13
mov (%r12), %cx
cmp %r9, %r9
lea addresses_UC_ht+0x1b497, %rsi
add $34756, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rsi)
nop
nop
inc %rsi
lea addresses_A_ht+0x2427, %rsi
lea addresses_UC_ht+0x18297, %rdi
nop
nop
nop
cmp $3295, %r12
mov $125, %rcx
rep movsb
nop
nop
add $17238, %rdi
lea addresses_UC_ht+0x14fd1, %r11
add $34256, %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x7417, %r13
nop
cmp $17200, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_RW+0x7417, %r12
nop
nop
dec %rbp
vmovntdqa (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'2d': 1, '45': 5152, '2a': 1, '5b': 1, '49': 1, '00': 16667, '40': 1, '2e': 1, '08': 4}
00 00 45 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 45 45 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 45 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 45 00 45 00 45 45 00 00 45 00 45 00 45 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 45 45 45 00 45 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 45 45 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 45 45 45 00 00 00 45 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 00 00 45 00 00 00 45 45 00 00 00 00 00 45 45 00 45 00 00 00 00 45 00 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 45 00 45 45 00 00 00 00 00 45 00 00 00 00 00 45 45 00 45 45 45 00 45 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 45 45 45 45 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 45 45 45 00 00 45 45 00 00 45 45 00 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00
*/
