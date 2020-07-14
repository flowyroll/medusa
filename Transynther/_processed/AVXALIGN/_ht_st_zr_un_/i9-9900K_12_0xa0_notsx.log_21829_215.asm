.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x86aa, %r12
nop
nop
nop
nop
nop
inc %rdi
mov (%r12), %si
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x110e4, %rsi
lea addresses_normal_ht+0xac4a, %rdi
nop
nop
nop
nop
inc %r13
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
and $26061, %rcx
lea addresses_WT_ht+0x17f4a, %rdi
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
xor $38304, %rsi
lea addresses_WC_ht+0xc1c4, %rsi
lea addresses_D_ht+0xcb3e, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x7b4a, %rsi
lea addresses_WC_ht+0x116ee, %rdi
nop
inc %r12
mov $0, %rcx
rep movsq
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xc65c, %rsi
lea addresses_WC_ht+0x1184a, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $72, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1d91c, %r12
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x17d76, %r13
add %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
cmp $27893, %r12
lea addresses_normal_ht+0x994a, %rdi
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
xor $63791, %r13
lea addresses_UC_ht+0x1874a, %rsi
lea addresses_normal_ht+0x1664a, %rdi
nop
nop
cmp $5820, %r10
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x10f4a, %r10
inc %r12
movb $0x51, (%r10)
nop
nop
dec %r14

// Store
lea addresses_WC+0x1234a, %r10
nop
nop
nop
nop
and $719, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r10)
nop
nop
add $40676, %r12

// Faulty Load
lea addresses_D+0x234a, %r14
nop
nop
nop
nop
and $59989, %rdx
movaps (%r14), %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'58': 19497, '40': 152, '6d': 1863, '00': 317}
58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 00 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 00 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 00 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 40 58 58 58 58 00 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 6d 00 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 00 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 00 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 00 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 00 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 40 58 58 58 58 58 58 58 58 58 40 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58
*/
