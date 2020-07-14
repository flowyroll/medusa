.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x186f, %rsi
lea addresses_UC_ht+0xd9af, %rdi
nop
nop
nop
nop
nop
sub $59816, %rdx
mov $32, %rcx
rep movsq
nop
and %rdx, %rdx
lea addresses_UC_ht+0x6b0f, %rdi
add $28145, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x18adc, %rsi
lea addresses_WC_ht+0xfe9f, %rdi
and %r12, %r12
mov $38, %rcx
rep movsw
nop
nop
xor $28254, %rbp
lea addresses_UC_ht+0x39af, %rbp
sub %r12, %r12
movb $0x61, (%rbp)
nop
nop
sub $21473, %rdi
lea addresses_normal_ht+0x7e2f, %rsi
lea addresses_WT_ht+0x14daf, %rdi
add %r10, %r10
mov $8, %rcx
rep movsl
nop
nop
nop
and $51467, %r14
lea addresses_D_ht+0x14caf, %r12
clflush (%r12)
and $2726, %rsi
mov (%r12), %dx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1ef21, %rbp
cmp $8633, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $6536, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x9b8f, %r15
nop
cmp %rdi, %rdi
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
inc %r9

// REPMOV
lea addresses_normal+0x11ab7, %rsi
lea addresses_A+0x1e8af, %rdi
nop
add $54636, %r8
mov $12, %rcx
rep movsb
nop
nop
nop
cmp $45810, %rdi

// Store
lea addresses_normal+0x18eaf, %r14
nop
nop
sub $12356, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
add $15454, %r12

// Store
lea addresses_RW+0xa623, %r9
nop
and $26395, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x11af, %r15
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
and $38414, %r14

// Store
lea addresses_WC+0x1102f, %r14
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovaps %ymm3, (%r14)
add $12618, %r14

// Load
lea addresses_WT+0x1392f, %r12
nop
nop
nop
nop
sub %r14, %r14
mov (%r12), %rcx
nop
nop
cmp $52518, %rsi

// Faulty Load
mov $0x5a479a00000001af, %rsi
nop
nop
cmp $42872, %r12
mov (%rsi), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 3471, '58': 18358}
58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00
*/
