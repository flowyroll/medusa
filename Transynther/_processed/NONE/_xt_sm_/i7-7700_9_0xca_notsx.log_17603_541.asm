.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbf55, %rsi
lea addresses_WC_ht+0x12e55, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $4187, %rsi
lea addresses_WC_ht+0x115d, %rcx
nop
add $26486, %r13
movl $0x61626364, (%rcx)
nop
sub %r9, %r9
lea addresses_A_ht+0x1e0d5, %r12
nop
xor $1665, %rdi
mov (%r12), %r13w
nop
xor %r12, %r12
lea addresses_UC_ht+0x105f5, %rdi
nop
nop
and %rsi, %rsi
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x128b5, %rsi
nop
nop
nop
and %r8, %r8
mov (%rsi), %ecx
nop
add $104, %r12
lea addresses_D_ht+0x19cf5, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
inc %r8
lea addresses_UC_ht+0x87f5, %rsi
lea addresses_WT_ht+0x7d95, %rdi
nop
nop
sub $24949, %rbp
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $57963, %rsi
lea addresses_D_ht+0x4055, %rsi
lea addresses_UC_ht+0x1d0b5, %rdi
nop
sub $22662, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
and $11438, %rsi
lea addresses_A_ht+0x9ac5, %r12
nop
nop
nop
sub $12468, %r13
mov (%r12), %rbp
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1a845, %rsi
lea addresses_WT_ht+0x1cb51, %rdi
nop
nop
nop
nop
nop
lfence
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $23453, %rcx
lea addresses_UC_ht+0xb075, %rsi
lea addresses_UC_ht+0x4e55, %rdi
nop
cmp %rbp, %rbp
mov $25, %rcx
rep movsb
cmp %r13, %r13
lea addresses_normal_ht+0x15bf5, %r13
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x23bd, %rcx
and %r12, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x18802, %rsi
lea addresses_D_ht+0x13bf5, %rdi
clflush (%rdi)
nop
nop
sub %r8, %r8
mov $13, %rcx
rep movsb
nop
nop
nop
nop
nop
and $64184, %r12
lea addresses_normal_ht+0x137f5, %r13
nop
cmp $29594, %rcx
movb $0x61, (%r13)
nop
nop
nop
nop
xor $13627, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x1c2b5, %rsi
lea addresses_D+0x1cb21, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $15, %rcx
rep movsw
nop
and $48894, %r10

// Store
lea addresses_WC+0x10b5, %r10
nop
nop
nop
nop
nop
xor $4143, %r15
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0xdf5, %r10
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
xor $10552, %rsi

// Store
lea addresses_RW+0x16bf5, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_normal+0x13d15, %rsi
nop
nop
nop
nop
nop
add $22496, %rdi
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
cmp %rcx, %rcx

// Store
lea addresses_RW+0x1aff5, %rcx
nop
sub %r10, %r10
movl $0x51525354, (%rcx)
dec %rdx

// Faulty Load
lea addresses_RW+0x1aff5, %rdi
nop
nop
xor %rbx, %rbx
movb (%rdi), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'54': 17603}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
