.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xdae9, %r15
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%r15), %r14w
dec %r15
lea addresses_UC_ht+0x5ae9, %rsi
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
cmp $38497, %r14
lea addresses_UC_ht+0x5ac9, %r11
xor %r8, %r8
mov (%r11), %si
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x9d31, %r11
nop
nop
nop
nop
add $33126, %r14
mov (%r11), %r15d
nop
nop
nop
and $25751, %r14
lea addresses_D_ht+0x12ae9, %rsi
lea addresses_A_ht+0x6ca1, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $19, %rcx
rep movsl
nop
add %r14, %r14
lea addresses_D_ht+0x26e9, %rsi
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $59948, %r14
lea addresses_normal_ht+0x17ae9, %rcx
clflush (%rcx)
nop
nop
nop
cmp $19204, %rdi
mov (%rcx), %dx
sub $7760, %rsi
lea addresses_D_ht+0xaca1, %rcx
nop
nop
xor $43726, %r12
movb $0x61, (%rcx)
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
mov $0x8e2660000000a81, %r8
nop
add %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_UC+0x2ac9, %rax
nop
dec %r11
movb $0x51, (%rax)

// Exception!!!
nop
mov (0), %r10
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_RW+0x209, %r10
nop
nop
dec %rbx
movb $0x51, (%r10)
nop
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_UC+0xe9, %rdx
nop
nop
xor %rbx, %rbx
mov (%rdx), %r15d
and %rdx, %rdx

// Store
lea addresses_A+0xde69, %r11
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r11)
and $29217, %rbx

// Faulty Load
mov $0x54b1e80000000ae9, %rbx
nop
nop
nop
sub %r10, %r10
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'46': 7}
46 46 46 46 46 46 46
*/
