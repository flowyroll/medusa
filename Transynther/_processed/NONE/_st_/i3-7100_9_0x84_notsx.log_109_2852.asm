.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1af02, %r13
sub $25413, %r14
mov (%r13), %r15w
sub %r10, %r10
lea addresses_normal_ht+0x87c8, %r13
nop
nop
nop
cmp $39123, %r12
movb $0x61, (%r13)
nop
nop
dec %r14
lea addresses_D_ht+0x15482, %rsi
lea addresses_WC_ht+0x18902, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $25, %rcx
rep movsl
nop
nop
nop
nop
xor $14681, %r13
lea addresses_UC_ht+0x27da, %rdi
xor $55114, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x16f12, %r13
nop
nop
and %rsi, %rsi
mov (%r13), %r12d
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x18f02, %rsi
lea addresses_normal_ht+0x1337, %rdi
clflush (%rsi)
clflush (%rdi)
add %r10, %r10
mov $8, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x19702, %r14
nop
nop
cmp %r15, %r15
movb (%r14), %r13b
nop
nop
xor $8470, %rcx
lea addresses_A_ht+0x12902, %r12
nop
sub $56075, %r10
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and $10022, %r12
lea addresses_normal_ht+0x1b702, %rcx
add $28378, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
sub $42959, %r10
lea addresses_WC_ht+0x12562, %rsi
nop
nop
nop
nop
nop
sub $24508, %r14
mov (%rsi), %r15d
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x15bd2, %rsi
lea addresses_A_ht+0x17502, %rdi
nop
nop
sub %r15, %r15
mov $77, %rcx
rep movsq
nop
nop
cmp $30104, %r15
lea addresses_normal_ht+0x183e2, %rbp
nop
nop
nop
nop
dec %r14
mov (%rbp), %rdi
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x1af02, %r13
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movaps %xmm4, (%r13)
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_A+0xff02, %rbx
nop
nop
nop
nop
dec %r13
mov (%rbx), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 109}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
