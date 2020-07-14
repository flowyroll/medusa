.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7ff0, %rcx
nop
nop
sub $5676, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xebb0, %rsi
lea addresses_normal_ht+0x19f90, %rdi
nop
nop
nop
nop
nop
and $57413, %r11
mov $92, %rcx
rep movsl
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xffb0, %r11
cmp $37834, %rdx
mov (%r11), %edi
nop
nop
nop
nop
sub $35458, %rsi
lea addresses_normal_ht+0x10520, %rsi
lea addresses_WT_ht+0x1a6b3, %rdi
nop
nop
nop
nop
cmp $38103, %r12
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x10850, %rsi
lea addresses_WC_ht+0x13710, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x1b3c8, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $51453, %r14
mov (%rdx), %r15
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0xaf10, %rsi
nop
dec %r14
mov (%rsi), %ecx
nop
xor $40127, %rcx
lea addresses_A_ht+0x17e10, %rdi
nop
nop
dec %r11
movl $0x61626364, (%rdi)
nop
nop
add $56789, %r14
lea addresses_WC_ht+0x11910, %r11
nop
nop
cmp $46956, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xaa90, %rsi
lea addresses_WC_ht+0x76ec, %rdi
nop
nop
nop
nop
nop
sub $44925, %r11
mov $41, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x1b310, %rsi
lea addresses_UC_ht+0x17686, %rdi
nop
nop
nop
nop
nop
cmp $65423, %r11
mov $65, %rcx
rep movsb
nop
sub $29412, %rcx
lea addresses_normal_ht+0x1c7e0, %rsi
lea addresses_A_ht+0x10110, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $2146, %r15
mov $117, %rcx
rep movsb
add %r15, %r15
lea addresses_WC_ht+0x1c9ca, %r12
nop
nop
nop
nop
nop
xor $27559, %r14
movups (%r12), %xmm5
vpextrq $0, %xmm5, %r11
nop
add $19959, %r15
lea addresses_normal_ht+0x10808, %r15
nop
nop
cmp $11617, %rcx
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x1a510, %rdx
add $18080, %rbp
mov (%rdx), %rcx
nop
nop
and $39770, %rcx

// Load
lea addresses_A+0x6b70, %r11
nop
xor $22946, %rdi
mov (%r11), %cx
nop
add $40288, %rax

// Store
mov $0x3d6, %rax
clflush (%rax)
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rax)
nop
nop
add %r11, %r11

// Store
lea addresses_RW+0x9610, %r11
add %r12, %r12
movb $0x51, (%r11)
xor $34013, %r12

// Store
mov $0x124e810000000810, %r11
nop
nop
add $45013, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x13710, %rax
nop
nop
nop
sub %rdi, %rdi
movb (%rax), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 66}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
