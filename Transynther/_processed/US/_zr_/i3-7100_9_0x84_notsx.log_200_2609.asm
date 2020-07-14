.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8512, %rbp
nop
nop
nop
nop
nop
add $51523, %rbx
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
sub $36811, %rbx
lea addresses_A_ht+0xb912, %rsi
lea addresses_normal_ht+0x17d12, %rdi
nop
xor %r13, %r13
mov $34, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x10872, %rbp
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x17312, %rsi
lea addresses_A_ht+0x1db52, %rdi
nop
xor $26247, %r13
mov $57, %rcx
rep movsl
nop
nop
nop
cmp $55940, %rbx
lea addresses_UC_ht+0x4492, %rsi
lea addresses_WC_ht+0x13bbc, %rdi
clflush (%rsi)
nop
xor %r13, %r13
mov $34, %rcx
rep movsq
nop
lfence
lea addresses_A_ht+0x1c682, %rbx
sub %rsi, %rsi
mov (%rbx), %bp
nop
nop
nop
nop
add $46746, %rbx
lea addresses_D_ht+0x8912, %rcx
nop
nop
nop
add %r15, %r15
mov (%rcx), %ebx
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x46f2, %r13
nop
and %rbp, %rbp
mov (%r13), %ebx
nop
nop
nop
nop
nop
and $62922, %rsi
lea addresses_WC_ht+0x1c1b2, %rbp
nop
nop
nop
nop
xor $10771, %rbx
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WC+0x112, %r13
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
add $12139, %rbx

// Store
mov $0x4628910000000db2, %r13
nop
nop
and %r15, %r15
movb $0x51, (%r13)
nop
nop
cmp $4564, %r15

// Faulty Load
lea addresses_US+0x1b912, %r14
nop
nop
add %rbx, %rbx
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 200}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
