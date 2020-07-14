.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x780f, %r14
cmp $47804, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x14fd7, %rsi
lea addresses_WC_ht+0x18ed7, %rdi
clflush (%rdi)
nop
nop
cmp $49876, %rbx
mov $59, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x5cd7, %rcx
nop
nop
nop
add %r12, %r12
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x10157, %r13
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r13), %rcx
sub $36587, %r14
lea addresses_WC_ht+0x18e21, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
cmp $43069, %rsi
lea addresses_WC_ht+0x73d7, %r14
nop
nop
nop
nop
nop
dec %r13
mov (%r14), %esi
xor %r14, %r14
lea addresses_A_ht+0x37d7, %rsi
lea addresses_WT_ht+0x16377, %rdi
clflush (%rdi)
nop
nop
sub $22820, %r8
mov $120, %rcx
rep movsb
nop
nop
nop
xor $52727, %rsi
lea addresses_WC_ht+0x15257, %r14
nop
nop
xor %r8, %r8
movl $0x61626364, (%r14)
nop
xor %r12, %r12
lea addresses_D_ht+0x1ddd7, %r12
nop
nop
nop
and %r14, %r14
mov (%r12), %ebx
nop
nop
nop
nop
nop
sub $42403, %r12
lea addresses_WT_ht+0xc6bb, %rsi
cmp %r12, %r12
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x14ef7, %rsi
lea addresses_WC_ht+0x16b0b, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
mov $57, %rcx
rep movsb
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx

// Load
lea addresses_WT+0xcc37, %r13
xor %r9, %r9
movb (%r13), %r8b
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_US+0x1edd7, %rbx
nop
nop
nop
nop
and %r15, %r15
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 57}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
