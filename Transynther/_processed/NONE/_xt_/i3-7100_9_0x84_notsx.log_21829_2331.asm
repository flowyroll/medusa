.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x6ba0, %rcx
add $54148, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x2d80, %rsi
lea addresses_WT_ht+0x1bed0, %rdi
nop
nop
xor %rbp, %rbp
mov $105, %rcx
rep movsb
nop
nop
and $35565, %rsi
lea addresses_A_ht+0x87a0, %r14
cmp %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $65437, %rdi
lea addresses_WC_ht+0x63a0, %rsi
nop
nop
nop
add $7527, %r13
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $1, %xmm4, %r10
nop
inc %rsi
lea addresses_UC_ht+0x157a0, %rsi
lea addresses_normal_ht+0x1d878, %rdi
nop
nop
and $58058, %rdx
mov $51, %rcx
rep movsw
nop
inc %r13
lea addresses_WC_ht+0x77e0, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %r13, %r13
mov (%rdx), %rsi
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x63a0, %rsi
lea addresses_normal_ht+0x629a, %rdi
nop
nop
nop
nop
inc %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $35260, %rsi
lea addresses_D_ht+0xb311, %rsi
dec %rcx
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
nop
and $39059, %r14
lea addresses_UC_ht+0xa3fc, %rsi
nop
and %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
cmp %r10, %r10
lea addresses_WT_ht+0x103a0, %rbp
nop
nop
nop
sub %rsi, %rsi
movb (%rbp), %r14b
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x12fa0, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $52906, %rbp
movl $0x61626364, (%rcx)
xor %r10, %r10
lea addresses_WC_ht+0x1dba0, %rsi
lea addresses_UC_ht+0x11ca0, %rdi
nop
nop
nop
nop
nop
and $55428, %rdx
mov $46, %rcx
rep movsw
nop
nop
nop
xor $63491, %r10
lea addresses_UC_ht+0x1e97e, %rsi
lea addresses_normal_ht+0x1a97c, %rdi
nop
nop
nop
nop
and $54118, %r13
mov $37, %rcx
rep movsl
nop
nop
nop
sub $39277, %r10
lea addresses_UC_ht+0x11ca0, %r10
nop
nop
nop
nop
add $18603, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %r10
movaps %xmm2, (%r10)
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x1d700, %rsi
lea addresses_PSE+0x1baa0, %rdi
cmp %r14, %r14
mov $11, %rcx
rep movsw
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x5fa0, %r14
dec %r15
movl $0x51525354, (%r14)
nop
nop
nop
add $17061, %r14

// Store
lea addresses_WC+0xa00, %rdi
nop
nop
nop
nop
cmp $8077, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
xor %r15, %r15

// Faulty Load
lea addresses_WT+0x1fba0, %rax
sub %r14, %r14
movb (%rax), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
