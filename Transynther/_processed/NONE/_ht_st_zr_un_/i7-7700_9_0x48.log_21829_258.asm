.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa4f1, %rsi
lea addresses_normal_ht+0xb591, %rdi
nop
nop
add %rdx, %rdx
mov $15, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x19edd, %rsi
nop
nop
nop
nop
nop
add $56578, %r12
movb (%rsi), %r13b
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1ad7d, %rsi
lea addresses_normal_ht+0x12d7d, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x7cfd, %rsi
lea addresses_normal_ht+0x14c7d, %rdi
xor $65464, %r13
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $13059, %rcx
lea addresses_D_ht+0x6681, %rsi
lea addresses_WC_ht+0xf025, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r8, %r8
mov $52, %rcx
rep movsl
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x493d, %rsi
lea addresses_normal_ht+0x8a91, %rdi
nop
nop
nop
nop
cmp $29998, %r14
mov $119, %rcx
rep movsb
nop
nop
nop
nop
cmp $48449, %r14
lea addresses_UC_ht+0x15a15, %rsi
lea addresses_WC_ht+0x2ea1, %rdi
xor %r14, %r14
mov $68, %rcx
rep movsb
xor %r13, %r13
lea addresses_WC_ht+0x1959d, %rsi
lea addresses_normal_ht+0x18afd, %rdi
nop
nop
nop
inc %r8
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rax
push %rdi

// Store
mov $0x36b, %rdi
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
xor $39278, %r9

// Store
lea addresses_WT+0x72ed, %r14
nop
nop
nop
sub $21834, %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
sub $8795, %r9

// Faulty Load
lea addresses_WT+0x12f7d, %r15
nop
nop
nop
add %r10, %r10
mov (%r15), %eax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'53': 478, '47': 1969, '3c': 1, 'ff': 6404, '49': 36, '48': 47, '80': 5, '46': 46, '9f': 1, '01': 708, 'ac': 2, '44': 1, 'd0': 5212, '00': 6918, 'ed': 1}
00 00 ff d0 ff d0 00 ff d0 ff 00 ff d0 00 47 00 ff d0 47 ff d0 00 ff d0 ff 00 47 d0 ff d0 ff d0 ff d0 ff 00 01 47 00 00 00 53 47 47 ff d0 00 ff d0 ff 00 ff d0 ff 00 ff d0 ff 47 ff d0 00 00 ff d0 ff 47 00 ff d0 ff 00 ff 00 00 01 00 ff 00 ff d0 ff d0 ff d0 ff d0 ff d0 ff 00 47 ff d0 d0 00 01 ff 00 01 00 d0 00 ff d0 d0 ff d0 ff d0 00 00 ff 00 00 53 ff d0 47 00 ff 00 00 00 d0 53 d0 ff d0 ff d0 ff d0 47 ff d0 00 ff 00 ff d0 00 ff d0 47 ff 47 00 ff d0 ff d0 47 00 47 ff d0 ff 00 00 47 00 ff d0 ff d0 ff d0 00 01 ff 47 00 ff 47 47 00 00 ff d0 ff d0 53 00 01 ff 00 00 00 00 ff 00 48 00 49 00 47 ff d0 ff 01 53 ff d0 ff 00 ff d0 00 00 47 ff d0 53 ff 00 01 00 01 00 00 ff 00 47 53 00 ff d0 00 00 ff 00 01 00 ff 00 01 ff 00 00 ff d0 47 ff d0 ff d0 00 ff 00 ff d0 00 00 00 53 ff 00 00 ff d0 ff d0 47 ff 00 00 ff d0 ff 00 ff 00 00 53 d0 ff 00 ff 00 00 00 ff d0 47 ff d0 00 00 47 ff d0 ff d0 ff 00 00 47 ff 00 00 48 ff 00 01 ff d0 47 ff d0 00 ff d0 47 47 ff 00 00 01 00 ff 00 47 ff d0 ff d0 ff d0 ff 00 ff 47 ff d0 ff d0 00 ff d0 00 00 ff d0 00 00 d0 47 ff d0 ff d0 ff d0 ff d0 47 00 53 00 d0 00 01 00 ff d0 47 00 00 d0 ff d0 ff 47 47 ff d0 00 ff d0 00 ff 00 ff d0 ff d0 00 01 48 00 47 ff d0 ff 00 00 47 ff d0 ff 00 00 ff 00 00 01 00 00 ff d0 ff d0 00 00 d0 ff d0 47 47 ff d0 00 ff d0 ff d0 47 ff 00 00 53 00 47 00 47 00 ff d0 47 ff 00 00 ff d0 00 ff d0 00 00 01 00 47 00 ff 00 00 00 00 ff d0 ff d0 ff d0 ff d0 ff d0 00 ff 00 01 00 00 00 d0 ff d0 47 ff 00 00 47 ff d0 47 ff d0 ff 00 ff d0 00 ff d0 00 47 ff d0 ff d0 ff d0 ff 00 00 01 ff d0 d0 ff 00 47 d0 ff d0 ff d0 ff d0 ff 00 ff d0 ff 00 ff d0 00 ff 00 47 00 ff 00 ff d0 ff d0 00 ff d0 ff d0 ff 47 53 ff d0 00 01 00 00 01 ff d0 ff d0 47 00 47 47 ff d0 ff d0 00 00 ff d0 00 ff d0 00 d0 00 00 ff d0 00 ff d0 47 ff 00 ff 00 00 ff d0 00 00 ff d0 00 00 ff d0 ff d0 00 00 00 00 00 00 01 00 ff d0 00 00 ff d0 00 47 ff d0 00 ff d0 47 00 ff 00 00 00 01 ff d0 ff d0 ff d0 47 53 ff d0 00 53 00 01 00 00 ff d0 ff d0 00 ff d0 ff d0 ff d0 ff d0 00 ff d0 ff d0 ff d0 00 00 ff d0 d0 00 ff d0 00 00 ff d0 47 47 00 ff d0 ff 00 ff d0 00 ff 00 47 53 ff 00 ff 00 00 01 00 00 00 ff d0 47 ff d0 00 47 00 ff 00 00 01 ff d0 ff d0 ff 00 00 00 ff d0 00 ff 00 00 00 00 ff d0 00 ff d0 47 ff d0 ff d0 00 ff d0 00 01 d0 ff d0 46 ff d0 d0 47 ff d0 47 ff d0 ff 00 ff 00 ff 00 00 ff 01 ff d0 47 ff d0 47 ff d0 ff d0 ff 00 00 01 01 53 00 47 d0 47 00 00 ff d0 53 00 47 ff d0 ff 00 ff 00 00 00 00 01 00 53 00 ff 00 00 00 47 ff d0 00 00 ff d0 00 ff 00 ff d0 ff 00 00 ff d0 00 ff 00 00 47 00 00 ff d0 ff d0 ff d0 00 ff 00 ff 47 ff d0 00 ff d0 47 00 ff d0 47 ff d0 ff d0 47 47 00 ff d0 ff d0 47 00 ff d0 00 00 ff 00 ff d0 00 ff 47 47 ff d0 00 00 00 47 00 ff d0 ff 00 00 ff d0 00 d0 ff d0 00 00 ff 00 00 ff d0 47 ff d0 00 00 ff d0 00 48 ff d0 ff d0 00 ff d0 ff d0 47 ff 00 00 ff 00 ff d0 ff d0 ff 00 00 d0 00 ff d0 53 00 ff d0 ff d0 00 00 ff d0 47 ff d0 ff d0 ff d0 00 00 01 ff 00 ff d0 00 47 ff 00 47 47 ff d0 00 ff d0 ff 00 ff 00 ff 00 00 01 ff 00 00 ff d0 ff 00 ff d0 ff d0 47 ff d0 ff d0 47 ff
*/
