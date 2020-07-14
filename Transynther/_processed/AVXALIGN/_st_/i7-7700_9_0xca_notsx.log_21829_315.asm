.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x303c, %rbx
sub $18174, %r12
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
xor $10466, %r15
lea addresses_normal_ht+0x1641c, %rsi
lea addresses_UC_ht+0x1558f, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $100, %rcx
rep movsq
inc %rdi
lea addresses_UC_ht+0x10e74, %rsi
nop
nop
nop
nop
add $55576, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rsi)
nop
dec %r15
lea addresses_D_ht+0x755c, %rsi
lea addresses_D_ht+0x701c, %rdi
nop
nop
nop
nop
dec %rax
mov $1, %rcx
rep movsw
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x1b01c, %r12
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r12)
cmp %r12, %r12
lea addresses_UC_ht+0xed1c, %rsi
nop
nop
nop
nop
nop
add $37613, %r15
movb (%rsi), %r12b
nop
nop
nop
nop
sub $49909, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x8234, %r15
nop
cmp $19074, %r11
mov (%r15), %r14d
nop
nop
nop
nop
nop
dec %rbp

// REPMOV
lea addresses_WC+0x105c0, %rsi
lea addresses_UC+0x19abc, %rdi
nop
nop
nop
nop
and $59142, %r11
mov $18, %rcx
rep movsw
nop
xor $18167, %rdi

// Load
lea addresses_PSE+0x1d960, %r12
nop
dec %rdi
mov (%r12), %rcx
sub %rcx, %rcx

// Store
lea addresses_WT+0x1251c, %rcx
nop
nop
sub $62408, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
inc %rbp

// Store
mov $0x8c2, %rcx
nop
nop
nop
nop
xor $40286, %rbp
movb $0x51, (%rcx)
nop
nop
sub $27101, %r12

// Load
lea addresses_normal+0xad1c, %rdi
nop
add %rcx, %rcx
movb (%rdi), %r14b
nop
nop
nop
cmp $40819, %r15

// Store
lea addresses_UC+0x2143, %r12
nop
nop
add $15216, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
sub %rsi, %rsi

// Store
lea addresses_normal+0x41c, %r11
nop
nop
nop
nop
nop
add $58904, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
and $19525, %rsi

// Load
lea addresses_US+0xd51c, %r14
nop
dec %r12
mov (%r14), %ecx
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x1791c, %r12
nop
nop
sub %r11, %r11
movb $0x51, (%r12)
nop
nop
sub %r14, %r14

// Store
lea addresses_D+0x8fdc, %rsi
nop
nop
sub $29389, %r14
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x14c5c, %r12
nop
nop
xor $28144, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovaps %ymm5, (%r12)
nop
and $397, %rsi

// Faulty Load
lea addresses_PSE+0x8d1c, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rsi), %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
