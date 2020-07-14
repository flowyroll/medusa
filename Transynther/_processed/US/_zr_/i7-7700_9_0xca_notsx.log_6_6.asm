.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf5c6, %r12
nop
nop
nop
nop
nop
sub $11014, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
cmp $56070, %rsi
lea addresses_UC_ht+0x1c8e6, %rsi
lea addresses_D_ht+0xc3ca, %rdi
sub $39668, %rax
mov $21, %rcx
rep movsl
add %rdi, %rdi
lea addresses_normal_ht+0x8f66, %rsi
lea addresses_A_ht+0x1c439, %rdi
nop
nop
xor $41299, %r14
mov $47, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_normal_ht+0x7566, %rsi
nop
inc %r12
mov (%rsi), %r11d
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x20e6, %rsi
lea addresses_WT_ht+0xdf66, %rdi
nop
cmp $35318, %r11
mov $47, %rcx
rep movsw
nop
xor $38610, %r12
lea addresses_UC_ht+0x1e2b6, %rdi
nop
sub %rcx, %rcx
mov (%rdi), %r14w
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x16a56, %rax
nop
nop
nop
sub $64912, %r14
mov (%rax), %r12w
add %r14, %r14
lea addresses_D_ht+0x1776, %r15
xor %rax, %rax
mov (%r15), %r11d
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rcx

// Faulty Load
lea addresses_US+0x158e6, %r15
cmp %rax, %rax
mov (%r15), %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
