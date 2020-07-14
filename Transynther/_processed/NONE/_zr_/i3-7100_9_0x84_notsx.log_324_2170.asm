.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf6f0, %rbp
nop
nop
sub $6723, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
sub $32780, %rbx
lea addresses_UC_ht+0x17f0, %rsi
lea addresses_A_ht+0xedc0, %rdi
nop
nop
xor %r12, %r12
mov $59, %rcx
rep movsw
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x59c, %rdi
nop
add $55444, %rcx
mov (%rdi), %ebx
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xff0, %rbp
nop
cmp $8752, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1a587, %r12
clflush (%r12)
add %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
and $60090, %rbp
lea addresses_WC_ht+0x8d4c, %rsi
lea addresses_normal_ht+0x11ff0, %rdi
nop
nop
nop
nop
sub $17571, %r12
mov $100, %rcx
rep movsw
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1d270, %rsi
lea addresses_A_ht+0x1e1f0, %rdi
nop
nop
dec %rbx
mov $114, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_normal_ht+0x6ff0, %r12
nop
nop
nop
nop
nop
inc %r9
mov (%r12), %di
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x13290, %rsi
nop
nop
nop
cmp %rbx, %rbx
mov (%rsi), %r8
nop
nop
nop
sub $59779, %r9
lea addresses_UC_ht+0x13ff0, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor %r9, %r9
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rbp
dec %rbp
lea addresses_UC_ht+0x1d5f0, %rbp
nop
nop
nop
nop
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
xor $31856, %r8
lea addresses_A_ht+0xe830, %r12
clflush (%r12)
nop
nop
nop
add $60435, %rbx
movb (%r12), %r9b
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x18950, %rsi
nop
nop
nop
nop
dec %r8
mov (%rsi), %r12w
and $91, %rbp
lea addresses_A_ht+0x6968, %rsi
lea addresses_D_ht+0x63f0, %rdi
nop
nop
nop
and $65256, %r12
mov $37, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x19510, %r13
clflush (%r13)
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r13)
nop
add %rbx, %rbx

// Load
lea addresses_A+0xa7f0, %r15
clflush (%r15)
nop
nop
xor %rbp, %rbp
mov (%r15), %esi
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0xa7f0, %rsi
add %r13, %r13
movb (%rsi), %r8b
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 324}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
