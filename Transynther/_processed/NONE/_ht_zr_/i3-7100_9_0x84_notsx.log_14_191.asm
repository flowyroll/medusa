.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19186, %r12
xor %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
nop
nop
dec %rax
lea addresses_normal_ht+0xff5a, %r10
nop
nop
nop
sub $32808, %rsi
movl $0x61626364, (%r10)
nop
nop
add $61618, %r12
lea addresses_A_ht+0x1782e, %r8
dec %r13
mov (%r8), %rdx
cmp $25030, %r12
lea addresses_UC_ht+0x1b076, %rsi
lea addresses_WC_ht+0xd822, %rdi
nop
nop
add %rdx, %rdx
mov $49, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $23722, %rax
lea addresses_A_ht+0x8016, %r12
nop
nop
nop
nop
nop
lfence
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm6
vpextrq $0, %xmm6, %rcx
sub %rsi, %rsi
lea addresses_D_ht+0x19d96, %rcx
nop
nop
nop
nop
and $14274, %rdi
mov (%rcx), %ax
nop
sub %r8, %r8
lea addresses_A_ht+0xf8a6, %r12
nop
inc %r10
movl $0x61626364, (%r12)
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x16e6, %rsi
lea addresses_WT_ht+0x63f6, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $93, %rcx
rep movsq
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1e0e6, %rcx
nop
nop
add $46875, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
dec %rax
lea addresses_WT_ht+0x1bb66, %rsi
lea addresses_WC_ht+0x1cb16, %rdi
nop
nop
and %r13, %r13
mov $32, %rcx
rep movsl
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx

// Load
lea addresses_WC+0x1b366, %r8
clflush (%r8)
nop
xor %r15, %r15
movntdqa (%r8), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
cmp $4265, %r14

// Store
lea addresses_A+0x11766, %r12
nop
add $12872, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%r12)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_D+0x19026, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%rcx)
nop
cmp %r14, %r14

// Store
lea addresses_D+0xd2b0, %r14
nop
add %r15, %r15
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_A+0x11766, %rcx
nop
nop
nop
dec %r14
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'46': 4, '00': 10}
46 46 00 00 00 00 00 00 46 46 00 00 00 00
*/
