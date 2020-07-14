.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12247, %rsi
lea addresses_normal_ht+0x587, %rdi
nop
nop
nop
nop
and $12753, %r14
mov $65, %rcx
rep movsl
nop
nop
nop
nop
cmp $54768, %r12
lea addresses_UC_ht+0x16c7, %r10
and %r13, %r13
mov (%r10), %r12w
nop
nop
inc %r12
lea addresses_normal_ht+0xe17, %rdi
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rdi)
inc %r14
lea addresses_A_ht+0x103b, %rdi
nop
cmp %r10, %r10
movb (%rdi), %r14b
nop
nop
nop
nop
nop
xor $65050, %r12
lea addresses_A_ht+0x154ad, %r12
nop
nop
nop
nop
nop
add $39207, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x18466, %rsi
nop
mfence
mov (%rsi), %r13d
nop
lfence
lea addresses_WT_ht+0x2e07, %rsi
lea addresses_WT_ht+0x18567, %rdi
nop
nop
nop
sub %r9, %r9
mov $22, %rcx
rep movsw
nop
add %rdi, %rdi
lea addresses_D_ht+0x16a47, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
add $2428, %rcx
lea addresses_D_ht+0xf0c7, %r13
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0xb887, %rsi
lea addresses_UC_ht+0x192af, %rdi
clflush (%rsi)
nop
dec %r12
mov $64, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x1b5c7, %rbp
nop
nop
nop
and $42150, %r13
movb $0x51, (%rbp)
nop
cmp $21155, %rbx

// Faulty Load
lea addresses_US+0x16ec7, %rbp
nop
and %r9, %r9
mov (%rbp), %edi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 109}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
