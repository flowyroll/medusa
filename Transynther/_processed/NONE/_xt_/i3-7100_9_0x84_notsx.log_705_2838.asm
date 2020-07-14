.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xfd06, %rdx
nop
nop
nop
nop
dec %r10
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %rsi
sub $29005, %r10
lea addresses_A_ht+0x62bf, %rbx
sub $55231, %r13
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rdi
nop
cmp $19010, %rdi
lea addresses_WT_ht+0x41df, %rsi
lea addresses_A_ht+0x419f, %rdi
nop
xor $42834, %rax
mov $87, %rcx
rep movsl
nop
nop
and $41540, %rcx
lea addresses_UC_ht+0x1db5, %r10
nop
nop
nop
xor $31884, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r10
movaps %xmm5, (%r10)
nop
nop
dec %r13
lea addresses_normal_ht+0x61b9, %rsi
lea addresses_WT_ht+0xffdf, %rdi
inc %rax
mov $98, %rcx
rep movsw
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x19ddf, %rdx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
sub $13408, %rbx
lea addresses_UC_ht+0x17624, %rax
clflush (%rax)
mfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %rax
movaps %xmm6, (%rax)
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x12e1f, %rbx
dec %rdx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
sub $57619, %rbx
lea addresses_UC_ht+0x1addf, %rdx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
add $53722, %rdi
lea addresses_WC_ht+0xa5df, %rsi
lea addresses_WT_ht+0x14f2f, %rdi
nop
nop
nop
nop
nop
xor $9564, %r10
mov $93, %rcx
rep movsb
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x121df, %rsi
lea addresses_WC_ht+0xe7cf, %rdi
nop
inc %rdx
mov $115, %rcx
rep movsw
nop
nop
inc %rdx
lea addresses_D_ht+0x4fdf, %rbx
nop
and $30744, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
xor $27268, %r10
lea addresses_UC_ht+0x13e7f, %r10
nop
nop
nop
nop
add $28541, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xa7df, %rsi
lea addresses_WC_ht+0x7faf, %rdi
clflush (%rdi)
nop
nop
nop
xor %r13, %r13
mov $57, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1e3df, %rsi
lea addresses_A+0xca9f, %rdi
nop
nop
nop
nop
dec %r8
mov $108, %rcx
rep movsw
cmp %rdi, %rdi

// Store
lea addresses_WC+0x829f, %rcx
add $14431, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movaps %xmm6, (%rcx)
nop
nop
dec %r8

// Faulty Load
lea addresses_RW+0x1bfdf, %r14
nop
nop
nop
nop
and %rdi, %rdi
movb (%r14), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'32': 705}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
