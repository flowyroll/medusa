.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_UC_ht+0xd0bf, %r13
cmp $31652, %r11
movw $0x6162, (%r13)
nop
dec %rdi
lea addresses_normal_ht+0x12b83, %rbx
and $17555, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x152c0, %r11
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
nop
and $5705, %rbp
lea addresses_UC_ht+0x62d7, %r12
nop
nop
nop
nop
add %rsi, %rsi
mov (%r12), %rbx
nop
nop
nop
nop
nop
cmp $273, %rdi
lea addresses_D_ht+0xdf37, %r11
nop
cmp $61292, %r12
movb $0x61, (%r11)
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1557, %rdi
clflush (%rdi)
nop
nop
nop
add $7543, %r13
mov (%rdi), %bx
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x1e7d7, %r14
nop
nop
and $37612, %r15
mov (%r14), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 62}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
