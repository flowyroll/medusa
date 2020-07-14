.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x147f3, %rsi
lea addresses_UC_ht+0x47b3, %rdi
nop
nop
nop
xor %r12, %r12
mov $0, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x7cf3, %rsi
lea addresses_normal_ht+0x73f3, %rdi
nop
cmp $34946, %rbx
mov $121, %rcx
rep movsb
nop
nop
nop
xor $10567, %rsi
lea addresses_WT_ht+0x138f3, %rsi
lea addresses_WT_ht+0x10483, %rdi
clflush (%rsi)
nop
add $9479, %r10
mov $60, %rcx
rep movsl
nop
nop
nop
add $48462, %rbx
lea addresses_D_ht+0xcd2f, %r12
nop
nop
xor $2099, %r14
movw $0x6162, (%r12)
nop
and $46670, %rcx
lea addresses_A_ht+0x197f3, %rsi
lea addresses_WT_ht+0xa3d3, %rdi
nop
nop
sub %r13, %r13
mov $86, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x62f3, %rbx
nop
nop
nop
nop
nop
add %rdi, %rdi
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x145f3, %rsi
lea addresses_D_ht+0x45f3, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $25, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x28f3, %rsi
lea addresses_WC_ht+0xd42e, %rdi
clflush (%rdi)
sub %rbx, %rbx
mov $112, %rcx
rep movsq
nop
and %rsi, %rsi
lea addresses_D_ht+0xb77, %rsi
lea addresses_WT_ht+0xdf6b, %rdi
clflush (%rsi)
nop
nop
nop
inc %r12
mov $113, %rcx
rep movsl
cmp $26139, %rdi
lea addresses_D_ht+0x6e2b, %rsi
lea addresses_D_ht+0x1b9ff, %rdi
nop
nop
nop
nop
nop
xor $49098, %r10
mov $124, %rcx
rep movsq
nop
nop
nop
nop
and $55098, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_PSE+0x12933, %r12
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%r12)
nop
nop
cmp $59865, %r9

// Faulty Load
lea addresses_US+0x1c8f3, %r15
nop
nop
nop
dec %r11
movb (%r15), %r8b
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
