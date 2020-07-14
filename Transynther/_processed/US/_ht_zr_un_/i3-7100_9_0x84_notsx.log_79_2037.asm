.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e2b9, %rsi
lea addresses_A_ht+0x16bb9, %rdi
nop
nop
nop
nop
dec %r14
mov $103, %rcx
rep movsq
add %r9, %r9
lea addresses_WT_ht+0x1b279, %r11
nop
nop
nop
nop
nop
and $7808, %rbx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rsi
nop
sub $37157, %rsi
lea addresses_D_ht+0x2fb9, %rdi
nop
inc %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x191bd, %r14
nop
nop
nop
nop
cmp $21383, %rbx
movb (%r14), %r9b
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x11969, %rsi
lea addresses_normal_ht+0x6ab9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $56114, %r12
mov $99, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xbdb9, %r9
nop
nop
add $31409, %rbx
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1e1c6, %rsi
lea addresses_D_ht+0x1d7b9, %rdi
clflush (%rdi)
nop
xor %r9, %r9
mov $41, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1d079, %rax
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
dec %r15

// Store
lea addresses_UC+0x3341, %r12
nop
nop
xor %r11, %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0xf7b9, %rsi
nop
cmp $52836, %rdx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'47': 3, 'b7': 2, '1a': 1, '00': 64, 'd0': 2, 'e0': 7}
e0 e0 00 b7 00 00 00 00 00 00 00 00 00 00 e0 00 47 00 00 00 00 00 00 00 1a 00 e0 e0 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 b7 00 00 00 00 00 d0 00 00 e0 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 d0
*/
