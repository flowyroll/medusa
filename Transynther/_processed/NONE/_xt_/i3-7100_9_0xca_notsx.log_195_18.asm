.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1da39, %r15
nop
nop
inc %r10
mov (%r15), %esi
nop
nop
xor $12136, %rdi
lea addresses_WC_ht+0x1be61, %rsi
lea addresses_normal_ht+0x14345, %rdi
nop
nop
sub %rbx, %rbx
mov $104, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x9889, %rbx
nop
and %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rbx)
and %r10, %r10
lea addresses_UC_ht+0x196d9, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r13, %r13
movb (%rdi), %bl
nop
nop
inc %r10
lea addresses_UC_ht+0x19ed9, %rdi
nop
nop
nop
dec %rsi
mov (%rdi), %ecx
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x7ab1, %rsi
mov $0x4a6bdd0000000189, %rdi
nop
cmp $16517, %r12
mov $4, %rcx
rep movsl
nop
nop
nop
xor $24620, %r12

// Faulty Load
lea addresses_WT+0xeed9, %rsi
nop
nop
nop
add $8618, %rax
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 195}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
