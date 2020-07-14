.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ec62, %r8
xor %r15, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x1041a, %rsi
lea addresses_WT_ht+0x1e902, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $37857, %r12
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x4742, %rsi
lea addresses_A_ht+0x19f75, %rdi
nop
nop
nop
nop
sub $607, %r8
mov $83, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_D_ht+0x18d2, %rsi
lea addresses_normal_ht+0x182, %rdi
nop
add %r10, %r10
mov $69, %rcx
rep movsb
nop
nop
nop
cmp $50634, %r12
lea addresses_UC_ht+0x11498, %r8
nop
xor %rdi, %rdi
movb (%r8), %cl
add $42208, %r10
lea addresses_D_ht+0x16dc2, %r15
nop
nop
and $4554, %rax
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
nop
nop
add $62216, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx

// Store
lea addresses_A+0xc3ca, %r12
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_A+0x15702, %r14
nop
nop
nop
and $57865, %r13
movb (%r14), %r15b
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_A+0x4da2, %r14
and %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_US+0x13f02, %r13
nop
nop
nop
nop
nop
and $29775, %r15
mov (%r13), %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
