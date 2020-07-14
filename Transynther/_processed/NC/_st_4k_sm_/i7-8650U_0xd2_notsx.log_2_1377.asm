.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1994a, %rsi
lea addresses_WT_ht+0x3012, %rdi
clflush (%rsi)
xor $6509, %r12
mov $77, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $43801, %r14
lea addresses_UC_ht+0x8412, %rsi
lea addresses_WT_ht+0xe2d2, %rdi
clflush (%rsi)
nop
nop
xor $53550, %rdx
mov $50, %rcx
rep movsq
and %r14, %r14
lea addresses_D_ht+0xe5ca, %r12
nop
nop
nop
nop
cmp $47296, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
cmp $17175, %rdx
lea addresses_normal_ht+0x17892, %rsi
lea addresses_A_ht+0x1e082, %rdi
nop
nop
nop
nop
nop
xor $24834, %r14
mov $89, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1a02c, %r12
add $56896, %rsi
movb $0x61, (%r12)
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x151f2, %rsi
lea addresses_WT_ht+0x1d812, %rdi
nop
nop
nop
add $1377, %r15
mov $67, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x5332, %r12
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r15
movq %r15, (%r12)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x11a2, %rdx
nop
nop
nop
dec %rcx
mov (%rdx), %r14d
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1de6a, %rdx
nop
add %r15, %r15
mov (%rdx), %edi
nop
nop
nop
xor $51153, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx

// Store
mov $0x60e2870000000e12, %r9
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x1257e, %r12
nop
nop
nop
inc %r8
movl $0x51525354, (%r12)
add %r13, %r13

// Store
lea addresses_normal+0xbdfa, %r10
nop
nop
nop
xor $38596, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r10)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1c492, %r10
nop
nop
nop
xor $63043, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x2e12, %r9
nop
nop
and %r13, %r13
movw $0x5152, (%r9)
add %rbx, %rbx

// Faulty Load
mov $0x60e2870000000e12, %r10
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%r10), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'58': 2}
58 58
*/
