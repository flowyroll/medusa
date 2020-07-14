.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2bfe, %rdx
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdx)
nop
add $37298, %r11
lea addresses_D_ht+0x71fe, %rax
nop
nop
add $23606, %rcx
mov (%rax), %r12d
cmp %rdx, %rdx
lea addresses_A_ht+0x4e7e, %rsi
lea addresses_D_ht+0xf7fe, %rdi
nop
nop
xor %rdx, %rdx
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1028e, %rax
clflush (%rax)
nop
nop
xor $9762, %rcx
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x952, %rax
xor $19330, %rdx
movb (%rax), %r12b
and $41446, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x5be, %rcx
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0xbbfe, %rcx
nop
nop
nop
and $33414, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
xor $658, %rbx

// Store
lea addresses_D+0xbc72, %r12
and $19569, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovntdq %ymm1, (%r12)
nop
sub %r12, %r12

// Store
lea addresses_A+0xa2be, %r12
nop
nop
nop
cmp $37293, %rax
movb $0x51, (%r12)
nop
dec %rbx

// Store
lea addresses_US+0x14bfe, %rsi
nop
nop
nop
sub $51082, %rax
movl $0x51525354, (%rsi)
nop
nop
inc %rcx

// Store
lea addresses_normal+0x180e6, %rax
nop
cmp $8160, %r12
movl $0x51525354, (%rax)
sub %r8, %r8

// Store
lea addresses_RW+0xb3fe, %rcx
and $57060, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
sub $1209, %r11

// Store
lea addresses_US+0x86fe, %rsi
nop
sub $6388, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
add $21279, %r8

// Load
lea addresses_A+0x437e, %r11
nop
nop
add $386, %r12
mov (%r11), %si
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_US+0x14bfe, %r11
nop
nop
nop
nop
nop
inc %rax
movw $0x5152, (%r11)
nop
nop
xor %r12, %r12

// Store
lea addresses_UC+0x48fe, %rbx
nop
nop
inc %r11
movl $0x51525354, (%rbx)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_US+0x1bbfe, %rbx
xor %rcx, %rcx
movb $0x51, (%rbx)
nop
sub $52783, %r12

// Faulty Load
lea addresses_US+0x14bfe, %rsi
nop
sub %rbx, %rbx
mov (%rsi), %r8w
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'54': 10, '00': 474, '51': 12199, '52': 9146}
52 51 51 51 52 52 52 51 52 52 52 51 52 51 51 52 52 52 51 51 51 52 51 52 52 52 51 52 51 52 51 51 52 52 52 52 52 52 51 52 51 51 52 51 51 51 52 52 52 51 51 52 52 51 51 51 51 51 51 51 52 52 52 52 52 51 52 51 51 51 52 52 51 51 52 52 51 51 52 52 52 52 51 51 51 51 51 51 52 51 52 51 51 51 51 52 51 52 51 52 52 52 51 51 52 52 51 52 52 51 52 51 51 52 51 51 52 52 52 52 52 51 51 52 51 51 52 51 52 52 51 52 51 51 52 52 52 51 51 52 51 52 52 51 52 51 51 51 51 51 52 51 52 51 52 51 51 51 51 52 00 52 52 51 52 52 51 51 52 51 52 52 51 52 51 52 51 51 52 51 51 52 51 52 00 51 51 51 51 52 52 52 51 51 51 51 51 51 51 51 51 51 52 51 51 52 51 52 52 52 51 51 51 52 51 52 51 51 52 52 52 51 52 51 51 52 52 51 52 51 52 51 51 52 51 51 51 51 51 51 51 52 52 52 51 51 51 51 51 52 51 51 51 51 51 51 51 51 51 52 52 52 51 51 52 52 52 52 51 51 52 51 52 51 51 51 51 51 52 51 51 51 52 51 51 52 51 51 51 51 51 52 51 52 51 52 52 52 00 52 51 52 52 51 51 51 51 51 51 52 51 52 51 52 51 51 51 51 52 51 51 51 52 51 51 51 51 52 52 51 52 52 52 52 00 51 51 51 52 52 51 51 51 51 52 51 51 51 52 52 52 51 51 52 52 52 52 51 52 51 52 51 51 51 52 52 51 51 51 52 51 51 51 52 00 52 52 52 51 51 52 51 51 52 51 52 51 51 51 51 51 52 51 52 52 51 51 52 51 52 51 51 52 51 52 51 51 51 51 51 51 00 52 52 51 52 51 52 52 52 52 51 52 51 51 51 51 52 52 51 52 52 52 52 52 51 51 51 51 51 52 51 52 52 52 51 51 52 52 51 51 52 51 51 51 52 52 51 52 52 51 52 52 52 52 51 52 51 51 52 52 51 51 51 51 52 52 51 52 52 51 52 51 51 52 51 51 51 51 51 52 52 00 52 52 52 51 51 52 51 52 51 51 52 51 51 51 51 52 51 51 51 51 52 52 52 51 51 52 51 52 51 52 51 52 51 52 52 51 52 52 52 51 52 51 52 52 52 52 51 51 51 51 51 51 52 51 51 52 51 51 52 00 51 52 51 52 51 51 52 52 51 52 51 51 51 52 52 51 51 51 51 51 51 52 51 51 51 52 52 51 52 52 52 51 52 51 52 51 51 52 52 52 51 51 52 52 51 52 51 52 51 52 52 51 51 52 52 51 52 52 51 52 51 51 51 51 51 52 51 51 51 51 52 52 51 52 51 52 52 52 00 52 52 51 51 51 51 51 52 52 52 52 00 52 52 51 52 52 52 51 52 52 51 51 51 52 00 51 51 51 52 51 51 51 52 51 51 51 51 52 51 51 52 52 51 51 52 52 51 51 51 51 51 00 52 51 51 52 51 51 52 52 52 51 51 00 52 51 51 51 51 51 52 51 52 51 51 51 51 51 51 51 51 51 51 51 52 51 52 51 51 51 52 51 52 00 52 51 51 51 51 51 52 51 51 51 51 51 52 52 51 52 52 52 52 51 52 51 51 51 52 52 52 51 52 51 52 52 52 52 51 51 52 51 51 52 51 52 51 52 51 52 52 51 51 51 51 52 51 51 52 51 52 51 51 51 52 52 51 52 51 51 51 51 52 51 52 52 00 52 51 51 51 52 51 52 51 51 51 52 52 00 52 52 52 52 52 52 52 00 51 51 51 52 51 52 51 52 52 51 52 52 51 51 52 51 51 52 52 52 52 52 51 52 51 51 52 51 51 52 51 52 52 52 51 51 51 51 52 52 52 51 51 52 51 51 52 51 51 52 51 51 51 51 52 51 51 52 51 51 51 51 52 51 51 52 51 52 52 52 51 52 52 52 51 52 52 51 51 52 52 52 51 51 51 51 51 51 51 51 52 52 51 51 51 51 00 52 51 51 51 52 52 52 52 51 51 51 52 51 52 52 51 51 52 51 52 51 52 52 51 52 52 52 51 52 51 52 51 51 52 51 52 52 51 51 51 51 52 51 52 51 52 52 52 51 52 52 51 51 51 52 51 51 51 52 52 52 51 51 52 51 51 51 52 52 51 51 51 52 52 51 52 52 51 51 51 51 51
*/
