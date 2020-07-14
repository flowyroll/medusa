.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd797, %rsi
nop
nop
nop
nop
mfence
movl $0x61626364, (%rsi)
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0xc52f, %r10
nop
nop
nop
nop
nop
cmp $3911, %rcx
mov (%r10), %r13w
mfence
lea addresses_WC_ht+0x1b597, %r13
add %rcx, %rcx
mov (%r13), %esi
nop
nop
nop
nop
cmp $25870, %r13
lea addresses_UC_ht+0x1de71, %rcx
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
sub %r14, %r14
lea addresses_A_ht+0x19d7b, %r10
clflush (%r10)
sub $15925, %rcx
mov (%r10), %eax
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x175ff, %rcx
clflush (%rcx)
nop
nop
nop
nop
add $25594, %r10
mov (%rcx), %r14w
nop
cmp $8708, %rcx
lea addresses_A_ht+0x45f7, %rsi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rsi
movntdq %xmm1, (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x1d817, %rax
nop
nop
nop
nop
nop
sub $60422, %r13
mov (%rax), %bp
and %rcx, %rcx
lea addresses_UC_ht+0xec97, %rcx
and %r14, %r14
movb (%rcx), %al
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x19fc7, %r10
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
lfence
lea addresses_D_ht+0x8397, %rsi
nop
nop
nop
xor $22265, %rbp
mov (%rsi), %ax
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x43eb, %rbp
nop
nop
nop
and $35275, %r13
movb $0x61, (%rbp)
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x19647, %rsi
lea addresses_UC_ht+0x17997, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $39148, %rbp
mov $20, %rcx
rep movsl
nop
nop
nop
cmp $32165, %rbp
lea addresses_WC_ht+0x8bdd, %rbp
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x18097, %r13
nop
nop
nop
nop
nop
cmp $14998, %rax
mov (%r13), %edi
add $65353, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x19197, %rcx
nop
dec %r12
vmovaps (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
sub %r12, %r12

// Store
lea addresses_PSE+0x17597, %rcx
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rcx)
xor %rdx, %rdx

// Store
lea addresses_PSE+0x8657, %rdx
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
sub $5371, %rdi

// Store
lea addresses_WC+0x16e5f, %rdx
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
sub $29407, %r9

// Faulty Load
lea addresses_US+0x19197, %rdi
nop
nop
sub %rcx, %rcx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
