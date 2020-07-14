.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19c1c, %rsi
lea addresses_D_ht+0x1059c, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $59, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $4002, %rsi
lea addresses_WC_ht+0xe39c, %r8
clflush (%r8)
nop
nop
nop
and %rsi, %rsi
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r9
cmp %rdi, %rdi
lea addresses_UC_ht+0x16b14, %r9
nop
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%r9)
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xa4d6, %r8
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
xor $10834, %rcx

// REPMOV
lea addresses_WC+0xdd9c, %rsi
mov $0x3d27540000000452, %rdi
nop
nop
nop
sub $20728, %r9
mov $91, %rcx
rep movsw
nop
nop
sub $49083, %rdi

// Faulty Load
lea addresses_US+0xd59c, %rbp
nop
dec %rsi
movb (%rbp), %cl
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 88}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
