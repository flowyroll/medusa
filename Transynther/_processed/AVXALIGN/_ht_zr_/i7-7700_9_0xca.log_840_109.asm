.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc17e, %r8
nop
nop
nop
sub %r14, %r14
mov (%r8), %r11d
sub %rdi, %rdi
lea addresses_UC_ht+0xb37e, %rsi
lea addresses_A_ht+0x37e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $18606, %r10
mov $67, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x2c0e, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%rdi)
nop
nop
nop
add $43495, %r11
lea addresses_UC_ht+0xa06, %rsi
lea addresses_WC_ht+0xb7be, %rdi
nop
nop
nop
xor $24078, %rbx
mov $1, %rcx
rep movsl
nop
nop
add $46150, %rdi
lea addresses_WT_ht+0x1d7e, %rsi
cmp %rcx, %rcx
mov (%rsi), %r11
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x1397e, %rsi
lea addresses_D_ht+0x47ae, %rdi
nop
nop
inc %r14
mov $20, %rcx
rep movsb
nop
xor $19744, %r14
lea addresses_WT_ht+0x15f0e, %rsi
nop
xor $61481, %r11
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
inc %r10
lea addresses_WT_ht+0xd72e, %rsi
lea addresses_WT_ht+0x1313e, %rdi
nop
nop
sub %r10, %r10
mov $116, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1377e, %rsi
lea addresses_A_ht+0x1537e, %rdi
nop
nop
nop
nop
nop
xor $51703, %r11
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
and $17112, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x15f97, %r12
nop
nop
add $13551, %rbx
mov (%r12), %cx
nop
add $23653, %rdi

// Store
lea addresses_WT+0xf37e, %rcx
nop
dec %r9
movl $0x51525354, (%rcx)
and $2092, %rbx

// Store
lea addresses_UC+0x123f8, %rbx
nop
nop
nop
xor $13084, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovntdq %ymm6, (%rbx)
nop
nop
nop
sub $15609, %r15

// Store
lea addresses_WT+0x447e, %rbx
add $42588, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movaps %xmm5, (%rbx)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x1775e, %rbx
nop
add $58059, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0x657e, %r9
clflush (%r9)
cmp %rbx, %rbx
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rdi
xor %rdx, %rdx

// Store
lea addresses_WC+0x6e1e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_US+0xeb7e, %r12
nop
xor $18787, %r15
mov (%r12), %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'49': 77, '00': 763}
00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00
*/
