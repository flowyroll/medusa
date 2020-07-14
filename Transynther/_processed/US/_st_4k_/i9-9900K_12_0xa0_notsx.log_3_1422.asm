.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a5d3, %rsi
lea addresses_UC_ht+0x1b6bb, %rdi
clflush (%rdi)
nop
add %r12, %r12
mov $78, %rcx
rep movsq
nop
nop
add $19205, %r10
lea addresses_A_ht+0x122bb, %r8
clflush (%r8)
nop
nop
nop
nop
and $58377, %rdx
mov (%r8), %r10d
nop
nop
nop
nop
nop
add $63166, %rdi
lea addresses_WT_ht+0x10363, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r10), %edi
add %rdx, %rdx
lea addresses_A_ht+0x138ab, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
sub $34231, %r10
lea addresses_A_ht+0x1986b, %r10
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%r10)
nop
sub $43262, %rdx
lea addresses_UC_ht+0x173d9, %rsi
lea addresses_WT_ht+0xb5b1, %rdi
nop
nop
nop
and %r13, %r13
mov $109, %rcx
rep movsq
sub $24517, %r13
lea addresses_UC_ht+0x14d3b, %rsi
lea addresses_A_ht+0x70bb, %rdi
clflush (%rsi)
xor %r13, %r13
mov $10, %rcx
rep movsw
nop
nop
nop
add $54119, %rdx
lea addresses_WC_ht+0x1b696, %rsi
lea addresses_WC_ht+0x1a1bb, %rdi
nop
nop
xor $29200, %r10
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $64009, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx

// Store
lea addresses_normal+0x101bb, %rcx
xor %r14, %r14
movb $0x51, (%rcx)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0x51bb, %rbp
nop
cmp %rcx, %rcx
mov (%rbp), %ax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'51': 3}
51 51 51
*/
