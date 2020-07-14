.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16df0, %r15
clflush (%r15)
nop
nop
nop
sub %r8, %r8
mov (%r15), %ecx
nop
nop
sub $54662, %r10
lea addresses_D_ht+0x1ac60, %rsi
lea addresses_normal_ht+0xdcd8, %rdi
nop
nop
nop
nop
dec %r8
mov $23, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x510, %rsi
nop
nop
nop
nop
inc %r10
mov (%rsi), %r15w
nop
nop
and %r8, %r8
lea addresses_D_ht+0x17990, %rdi
nop
nop
nop
nop
and $61632, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $49778, %rdi
lea addresses_normal_ht+0x14810, %rsi
nop
nop
nop
nop
nop
and $59605, %rdi
mov (%rsi), %r15
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x3a30, %r10
nop
nop
nop
cmp $3324, %rbx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %r8
nop
sub $42212, %r10
lea addresses_normal_ht+0xa10, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
and $48346, %r15
lea addresses_UC_ht+0xf510, %rsi
lea addresses_UC_ht+0xe5f0, %rdi
nop
nop
and $20144, %rbp
mov $76, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0x3790, %r9
nop
nop
nop
nop
add $8772, %r12
mov (%r9), %rsi
nop
sub %rdx, %rdx

// Load
mov $0x2908910000000cc0, %rbx
cmp $46189, %r8
mov (%rbx), %dx
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x11a90, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x19e70, %rcx
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rcx)
nop
add %rbx, %rbx

// Faulty Load
lea addresses_D+0x11a90, %r9
nop
nop
nop
nop
add $12253, %r12
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'00': 323}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
