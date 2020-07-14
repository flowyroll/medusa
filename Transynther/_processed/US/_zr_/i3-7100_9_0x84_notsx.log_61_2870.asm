.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf864, %r15
nop
nop
nop
nop
nop
add %rax, %rax
mov (%r15), %r9
xor $40223, %r11
lea addresses_UC_ht+0xbccc, %r14
nop
xor $8679, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
sub $25186, %r13
lea addresses_normal_ht+0xb0cc, %r14
nop
inc %r9
mov (%r14), %r11d
nop
nop
inc %r13
lea addresses_D_ht+0x12ea8, %rax
cmp $31424, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rax)
nop
xor %r11, %r11
lea addresses_D_ht+0xb60c, %r15
nop
nop
nop
nop
cmp $43974, %rcx
mov (%r15), %r14w
nop
add %r15, %r15
lea addresses_D_ht+0x172a7, %r13
xor $19883, %r11
movb $0x61, (%r13)
xor %rax, %rax
lea addresses_A_ht+0xb3c, %rsi
lea addresses_UC_ht+0x1aeaa, %rdi
clflush (%rsi)
cmp %r11, %r11
mov $30, %rcx
rep movsb
add %rsi, %rsi
lea addresses_WT_ht+0x88cc, %rsi
lea addresses_UC_ht+0x530c, %rdi
add $55371, %rax
mov $102, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x754c, %rsi
nop
xor $49963, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0xa8cc, %r12
nop
cmp %r14, %r14
mov (%r12), %r11d
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
