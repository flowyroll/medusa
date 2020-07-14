.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e242, %r11
nop
nop
nop
nop
xor %r15, %r15
mov (%r11), %rdi
nop
nop
nop
dec %rbp
lea addresses_A_ht+0xdfc2, %r13
nop
nop
nop
nop
sub $38848, %r11
movb (%r13), %r12b
nop
nop
nop
nop
and $20526, %r13
lea addresses_UC_ht+0x11c2, %rdi
clflush (%rdi)
nop
nop
and $9285, %r8
mov (%rdi), %r12
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x4a42, %rsi
lea addresses_normal_ht+0xbfc2, %rdi
clflush (%rsi)
nop
nop
xor $54173, %r12
mov $8, %rcx
rep movsb
nop
and $40385, %r13
lea addresses_WC_ht+0xdfc2, %rsi
lea addresses_UC_ht+0xd0a2, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $6, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_D_ht+0xe302, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rbp), %r11b
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1fc2, %r15
nop
nop
nop
inc %rdi
movw $0x6162, (%r15)
sub $55835, %r8
lea addresses_normal_ht+0x7142, %rdi
nop
nop
nop
nop
inc %r13
movb (%rdi), %r15b
cmp $29443, %rsi
lea addresses_UC_ht+0x140fe, %rsi
and %rbp, %rbp
movb (%rsi), %cl
nop
add $20882, %r8
lea addresses_WC_ht+0x731b, %rsi
lea addresses_D_ht+0xfc4a, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $42, %rcx
rep movsw
nop
sub $44103, %rdi
lea addresses_WT_ht+0x1c02, %rsi
add %rbp, %rbp
mov (%rsi), %r13w
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1ff42, %rbx
nop
nop
nop
nop
add $20174, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0x197c2, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
