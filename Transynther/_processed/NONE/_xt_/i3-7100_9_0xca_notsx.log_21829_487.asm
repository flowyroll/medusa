.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x107a5, %rbx
nop
nop
nop
nop
dec %r15
movb $0x61, (%rbx)
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x184dd, %rsi
lea addresses_WC_ht+0x1e779, %rdi
clflush (%rsi)
nop
xor $35249, %rbp
mov $108, %rcx
rep movsw
dec %rbp
lea addresses_WC_ht+0x1df39, %rsi
dec %rbp
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x13039, %rbx
nop
nop
nop
nop
add $25549, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
sub $6071, %r14
lea addresses_normal_ht+0x1d539, %rsi
lea addresses_normal_ht+0x138b9, %rdi
nop
nop
sub $19828, %r12
mov $92, %rcx
rep movsb
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1daa9, %rsi
lea addresses_WC_ht+0xcf39, %rdi
clflush (%rdi)
add $44569, %r15
mov $53, %rcx
rep movsb
sub %rcx, %rcx
lea addresses_WC_ht+0x13299, %rsi
nop
nop
nop
nop
xor $45465, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %rsi
movntdq %xmm7, (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x2839, %rsi
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xb0b1, %r12
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x15739, %rbx
nop
nop
nop
nop
nop
dec %r15
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xc939, %rsi
lea addresses_D_ht+0xfd21, %rdi
nop
nop
mfence
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x167f9, %rsi
lea addresses_UC_ht+0xa839, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $48, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1e039, %rbp
nop
sub %rbx, %rbx
movb (%rbp), %r14b
nop
nop
nop
xor $7075, %rbx
lea addresses_D_ht+0x13709, %rcx
nop
nop
nop
xor $1396, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x13f91, %rcx
sub $8708, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_RW+0xbf39, %rax
nop
nop
nop
nop
nop
xor $53595, %rsi
movups (%rax), %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
