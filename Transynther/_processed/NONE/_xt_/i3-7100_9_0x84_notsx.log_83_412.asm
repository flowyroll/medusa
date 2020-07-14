.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc920, %rbx
nop
nop
cmp %rdx, %rdx
mov (%rbx), %ecx
nop
xor %r11, %r11
lea addresses_WC_ht+0x5870, %rsi
lea addresses_normal_ht+0x1874, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
and $45093, %rdi
lea addresses_A_ht+0x1d59c, %r14
nop
nop
nop
nop
cmp $4777, %r11
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm1
vpextrq $1, %xmm1, %rcx
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x1b19c, %rbx
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %rbx
vmovaps %ymm1, (%rbx)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xc0b9, %rsi
nop
nop
sub %rdx, %rdx
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
add $64952, %rsi
lea addresses_normal_ht+0x17e9c, %rbx
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
xor $27624, %rbx
lea addresses_WC_ht+0xb91c, %rcx
nop
sub $29480, %rdi
movb (%rcx), %bl
cmp $62908, %rbx
lea addresses_normal_ht+0x11a5c, %rsi
lea addresses_D_ht+0x1c246, %rdi
clflush (%rsi)
nop
sub %r8, %r8
mov $79, %rcx
rep movsq
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xf99c, %r14
and $62587, %r8
movl $0x61626364, (%r14)
nop
nop
xor $61433, %r14
lea addresses_WT_ht+0x14916, %r11
add $34735, %rbx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x219c, %r11
nop
xor $37881, %rbx
movl $0x61626364, (%r11)
add $20226, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rax

// Load
mov $0x3ac72d0000000e1c, %r14
nop
nop
add %r9, %r9
mov (%r14), %r10d
cmp %r9, %r9

// Store
lea addresses_RW+0x4e5c, %r14
nop
inc %r11
movw $0x5152, (%r14)
nop
sub $36499, %rax

// Faulty Load
lea addresses_PSE+0x919c, %r10
nop
nop
add %rax, %rax
movb (%r10), %r9b
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'33': 83}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
