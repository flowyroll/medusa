.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xde3e, %r14
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x8d2e, %r12
nop
nop
nop
add %rbx, %rbx
mov (%r12), %r10w
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0xe03e, %rsi
lea addresses_D_ht+0x1343e, %rdi
nop
nop
sub $41588, %r8
mov $123, %rcx
rep movsb
nop
add $14472, %r10
lea addresses_WC_ht+0x1b4e0, %r14
add $60822, %rbx
mov (%r14), %r10
nop
nop
nop
dec %r8
lea addresses_A_ht+0x2a3e, %rsi
lea addresses_D_ht+0x8d3e, %rdi
nop
nop
nop
dec %rbx
mov $34, %rcx
rep movsb
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1233e, %rsi
lea addresses_WT_ht+0x9c3e, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $45, %rcx
rep movsl
nop
nop
xor $5889, %rsi
lea addresses_A_ht+0xa63e, %r10
nop
nop
cmp $33337, %r12
mov (%r10), %r8d
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x3d5e, %rsi
lea addresses_UC_ht+0x18ab6, %rdi
nop
nop
sub $52616, %r14
mov $101, %rcx
rep movsl
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x19d3e, %r10
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x686e, %rsi
clflush (%rsi)
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xb43e, %rbx
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
add $64213, %rdi
lea addresses_WC_ht+0xa83e, %r12
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
xor $6321, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rcx

// Faulty Load
mov $0xa3e, %r14
dec %r9
mov (%r14), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'e0': 6}
e0 e0 e0 e0 e0 e0
*/
