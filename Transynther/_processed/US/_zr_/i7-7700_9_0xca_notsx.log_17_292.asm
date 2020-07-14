.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x133d3, %rbx
nop
nop
nop
cmp $34330, %r14
movb (%rbx), %r8b
nop
nop
nop
nop
cmp $56728, %r10
lea addresses_normal_ht+0x15cd3, %rsi
lea addresses_normal_ht+0x8db3, %rdi
clflush (%rdi)
sub $21636, %rbx
mov $46, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x671d, %r8
nop
nop
nop
and %rcx, %rcx
mov (%r8), %bp
nop
nop
inc %r10
lea addresses_UC_ht+0xadd3, %rcx
nop
inc %r10
movw $0x6162, (%rcx)
nop
sub $59469, %r14
lea addresses_normal_ht+0xa753, %r10
cmp %rbx, %rbx
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x19ca1, %rsi
lea addresses_UC_ht+0x2dd3, %rdi
nop
nop
nop
nop
sub $22730, %rbx
mov $77, %rcx
rep movsb
cmp $36586, %rcx
lea addresses_D_ht+0x16873, %rbx
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
cmp $50905, %rcx
lea addresses_A_ht+0xef53, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
xor $57506, %rdi
lea addresses_A_ht+0x171d3, %r8
clflush (%r8)
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r8)
nop
inc %rdi
lea addresses_A_ht+0xd094, %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r8)
nop
nop
cmp $12002, %rsi
lea addresses_normal_ht+0x5b53, %r8
nop
nop
nop
sub %r14, %r14
movb (%r8), %r10b
nop
nop
nop
nop
cmp $38138, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx

// Faulty Load
lea addresses_US+0x10dd3, %r12
nop
nop
add $13940, %rbp
movb (%r12), %bl
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
