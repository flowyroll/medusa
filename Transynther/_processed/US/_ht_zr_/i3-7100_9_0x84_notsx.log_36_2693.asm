.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x88bf, %r12
nop
nop
nop
sub $65446, %rsi
mov (%r12), %ax
nop
nop
nop
nop
cmp $21023, %rax
lea addresses_D_ht+0x97f, %rsi
lea addresses_normal_ht+0xcfeb, %rdi
nop
nop
nop
dec %r11
mov $116, %rcx
rep movsw
nop
nop
add $62827, %rax
lea addresses_A_ht+0x12bf, %rax
nop
nop
nop
nop
nop
sub %rdi, %rdi
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r11
nop
inc %r12
lea addresses_D_ht+0xdebf, %rsi
nop
sub %rcx, %rcx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
xor $4059, %rdi
lea addresses_WT_ht+0x10d99, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%r12)
nop
add %rax, %rax
lea addresses_normal_ht+0x1a2bf, %rsi
lea addresses_normal_ht+0x780f, %rdi
nop
dec %rdx
mov $104, %rcx
rep movsb
nop
nop
sub $22244, %rdi
lea addresses_UC_ht+0x13ff, %rsi
lea addresses_A_ht+0x1b0bf, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $103, %rcx
rep movsw
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xa8bf, %rdi
nop
nop
dec %rdx
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 33, '47': 3}
00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
