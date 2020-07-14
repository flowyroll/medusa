.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc123, %r9
nop
nop
sub $17575, %rdi
movw $0x6162, (%r9)
nop
nop
nop
xor $37839, %r9
lea addresses_WC_ht+0x4a3, %rsi
lea addresses_WC_ht+0x3923, %rdi
nop
nop
nop
xor $1854, %r12
mov $51, %rcx
rep movsq
nop
nop
nop
nop
xor $44448, %rdi
lea addresses_D_ht+0xa3, %r12
dec %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0xee25, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa423, %rsi
lea addresses_A_ht+0x26e3, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $121, %rcx
rep movsb
nop
nop
nop
nop
add $32876, %rbx
lea addresses_WT_ht+0x98eb, %r9
nop
nop
nop
nop
dec %rcx
movb (%r9), %r15b
nop
nop
and $7996, %rcx
lea addresses_UC_ht+0x6323, %rsi
nop
nop
add $59425, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rsi)
add $13640, %r15
lea addresses_A_ht+0x3323, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
cmp $17261, %rsi
lea addresses_WT_ht+0x5e73, %rsi
lea addresses_WT_ht+0x1ee23, %rdi
nop
nop
nop
nop
nop
sub $50421, %rbx
mov $25, %rcx
rep movsw
sub $22043, %r15
lea addresses_normal_ht+0x1da23, %r9
nop
nop
nop
and %r15, %r15
movb $0x61, (%r9)
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi

// Store
mov $0x523, %r13
clflush (%r13)
inc %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
sub $25009, %r13

// Store
lea addresses_WT+0x8a73, %r9
clflush (%r9)
nop
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
add %rcx, %rcx

// Load
lea addresses_UC+0xf27b, %r10
nop
nop
nop
nop
and %rdi, %rdi
movaps (%r10), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_PSE+0xe123, %rdi
nop
nop
nop
nop
dec %r14
mov (%rdi), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'33': 449}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
