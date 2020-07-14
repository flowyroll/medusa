.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ca61, %rax
nop
nop
cmp $18244, %rsi
movw $0x6162, (%rax)
nop
and %r8, %r8
lea addresses_WT_ht+0x1d1e5, %rsi
lea addresses_WT_ht+0x138c5, %rdi
nop
nop
nop
nop
add $57496, %r14
mov $95, %rcx
rep movsq
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_RW+0x1f1e5, %r10
clflush (%r10)
nop
nop
nop
nop
xor $63940, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
sub $64093, %rbp

// Faulty Load
lea addresses_RW+0x1f1e5, %rbp
sub %r13, %r13
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'00': 92}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
