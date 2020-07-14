.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d222, %r12
nop
xor $2520, %rax
mov (%r12), %si
nop
xor $37008, %rbx
lea addresses_D_ht+0x1622, %rcx
nop
nop
nop
and %r11, %r11
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
add $26132, %r14
lea addresses_WC_ht+0x17622, %r11
nop
nop
nop
nop
add %r14, %r14
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rbx
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x637a, %rsi
lea addresses_A_ht+0x149e2, %rdi
cmp $29215, %rax
mov $73, %rcx
rep movsb
nop
inc %rdi
lea addresses_WC_ht+0x1b322, %rax
clflush (%rax)
add $9297, %r11
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0xfcd2, %rsi
lea addresses_D_ht+0x1cb82, %rdi
nop
add $27010, %r12
mov $25, %rcx
rep movsq
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x9a22, %rsi
lea addresses_WC_ht+0x1ce22, %rdi
nop
nop
nop
add $34482, %rbx
mov $114, %rcx
rep movsb
nop
nop
nop
add $2226, %r11
lea addresses_D_ht+0x1776e, %rsi
lea addresses_WC_ht+0x14622, %rdi
sub %r11, %r11
mov $83, %rcx
rep movsq
nop
nop
cmp $34707, %rax
lea addresses_UC_ht+0x15c22, %rbx
nop
nop
nop
cmp $18172, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1d8a2, %rsi
lea addresses_UC_ht+0x10c2, %rdi
nop
nop
and %r14, %r14
mov $69, %rcx
rep movsq
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x9d4a, %rdi
nop
nop
nop
nop
dec %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and $20601, %rdi

// Store
lea addresses_A+0xee22, %rbp
nop
nop
nop
nop
xor $24393, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
add $24726, %r10

// Load
lea addresses_WC+0x10622, %rdi
nop
nop
nop
xor %rsi, %rsi
movb (%rdi), %dl
nop
inc %rsi

// Store
lea addresses_WC+0x89c2, %rbx
clflush (%rbx)
nop
nop
nop
xor $4514, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbx)
nop
and %rcx, %rcx

// Load
lea addresses_A+0xee22, %rdi
nop
nop
sub %r10, %r10
mov (%rdi), %rcx
nop
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_US+0x4ac2, %rsi
mov $0x962, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $12, %rcx
rep movsw
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_A+0xee22, %rbp
nop
nop
nop
nop
xor $31820, %rcx
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'58': 85}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
