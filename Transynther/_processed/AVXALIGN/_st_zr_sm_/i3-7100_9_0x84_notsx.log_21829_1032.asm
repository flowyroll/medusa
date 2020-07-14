.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rdi
lea addresses_WC_ht+0x10b9c, %r15
nop
and $23287, %rbx
movw $0x6162, (%r15)
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x6f9c, %rdi
sub %r9, %r9
movl $0x61626364, (%rdi)
nop
dec %r15
lea addresses_WT_ht+0x18dc4, %r15
xor %r11, %r11
movb $0x61, (%r15)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1da4c, %r15
nop
xor $61849, %rbx
mov (%r15), %ax
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x9164, %r15
clflush (%r15)
and $32265, %rax
mov (%r15), %r14w
nop
nop
nop
nop
inc %r15
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdi

// Load
lea addresses_US+0x887c, %r9
and %r8, %r8
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
inc %r8

// Store
lea addresses_D+0x1819c, %rax
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovaps %ymm2, (%rax)
sub $11516, %r8

// Store
lea addresses_UC+0x1579c, %rax
inc %r9
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
sub $9755, %r13

// Store
lea addresses_UC+0x1479c, %r8
nop
nop
nop
nop
dec %r9
movb $0x51, (%r8)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0x16e9c, %rdi
nop
add $23549, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WC+0xff9c, %r13
sub $28622, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_UC+0x1121c, %r9
clflush (%r9)
nop
nop
nop
nop
add $32293, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
xor $18752, %rdi

// Store
lea addresses_RW+0x1ca9c, %rdi
nop
nop
nop
xor $44665, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_UC+0x54c4, %rax
nop
inc %r12
movl $0x51525354, (%rax)
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_UC+0x1479c, %r9
nop
nop
xor %r12, %r12
movaps (%r9), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2582, '51': 19247}
51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 00 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 00 51 00 00 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 00 00 51 51 51 51 51 00 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51
*/
