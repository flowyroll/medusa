.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x201d, %r12
nop
nop
nop
add %rdi, %rdi
mov (%r12), %rsi
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x11b63, %rdi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %rdi
movaps %xmm7, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x961d, %rdi
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
sub $65357, %rax
lea addresses_WC_ht+0x123d, %rdi
cmp %rsi, %rsi
mov (%rdi), %ebp
nop
sub %rax, %rax
lea addresses_A_ht+0x81d, %rsi
lea addresses_WT_ht+0x157cd, %rdi
and %r14, %r14
mov $110, %rcx
rep movsl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0xafad, %rsi
lea addresses_D_ht+0x11d9d, %rdi
nop
nop
nop
nop
nop
xor $28228, %r11
mov $6, %rcx
rep movsb
nop
nop
nop
sub $53227, %rdi
lea addresses_WT_ht+0x6d1d, %rsi
lea addresses_normal_ht+0x12ddd, %rdi
nop
nop
nop
nop
nop
and $58846, %r12
mov $84, %rcx
rep movsb
nop
nop
sub $52719, %rsi
lea addresses_WC_ht+0x7211, %rsi
lea addresses_D_ht+0x1475d, %rdi
nop
nop
nop
xor %r12, %r12
mov $101, %rcx
rep movsw
nop
nop
nop
add $53643, %rbp
lea addresses_A_ht+0x1661d, %r11
clflush (%r11)
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%r11)
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x115ad, %rsi
lea addresses_UC_ht+0x15bf1, %rdi
nop
nop
cmp $2374, %rbp
mov $105, %rcx
rep movsb
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x869d, %rsi
lea addresses_normal_ht+0x1461d, %rdi
nop
nop
nop
nop
add $36316, %r11
mov $47, %rcx
rep movsw
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rcx

// Faulty Load
lea addresses_US+0x19e1d, %r13
nop
nop
nop
nop
nop
cmp %rax, %rax
movups (%r13), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
