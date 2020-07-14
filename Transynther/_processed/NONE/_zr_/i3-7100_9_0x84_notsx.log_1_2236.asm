.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17bda, %rsi
lea addresses_UC_ht+0x1371a, %rdi
nop
nop
nop
nop
xor $5358, %rbp
mov $1, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x9e1a, %rcx
nop
nop
nop
add $37128, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
lfence
lea addresses_A_ht+0x1b21a, %rbx
nop
nop
nop
cmp $47683, %rax
mov (%rbx), %si
add %rbx, %rbx
lea addresses_normal_ht+0x161a, %rsi
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
and $20439, %r8
lea addresses_D_ht+0x4717, %rax
nop
sub %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
sub $45198, %rcx
lea addresses_UC_ht+0x921a, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rax), %cl
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x17c1a, %rbp
nop
nop
add $25946, %rcx
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %rdi
and $8484, %rsi
lea addresses_D_ht+0xfc1a, %rbp
cmp $2078, %rdi
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add $8851, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rsi

// Load
lea addresses_A+0x11652, %rsi
nop
nop
nop
nop
nop
cmp $36473, %rax
movb (%rsi), %r8b
nop
lfence

// Store
lea addresses_normal+0xbeb8, %r13
nop
and $63084, %r10
movw $0x5152, (%r13)
xor %r8, %r8

// Store
lea addresses_UC+0x1237a, %r13
nop
nop
cmp $11866, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r13)
nop
nop
dec %rdi

// Store
mov $0x295d8f0000000e06, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $63339, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
xor $63040, %rdi

// Store
lea addresses_UC+0xc1a, %r13
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
nop
nop
and $13436, %r14

// Faulty Load
lea addresses_A+0xba1a, %r14
nop
nop
xor $22742, %r13
mov (%r14), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 1}
00
*/
