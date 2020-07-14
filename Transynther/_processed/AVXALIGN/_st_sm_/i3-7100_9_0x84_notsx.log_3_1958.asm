.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rcx
lea addresses_WC_ht+0x26f0, %rax
nop
nop
nop
nop
add %r9, %r9
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x195f0, %r11
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r11), %cx
nop
dec %r11
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x13cf0, %rsi
lea addresses_UC+0x1d80, %rdi
nop
nop
add %rbp, %rbp
mov $57, %rcx
rep movsw
nop
cmp $35926, %rcx

// Store
lea addresses_RW+0x8bf0, %rcx
nop
nop
nop
nop
nop
cmp $7807, %r8
movl $0x51525354, (%rcx)
nop
and %rbp, %rbp

// Faulty Load
lea addresses_RW+0x8bf0, %r14
nop
nop
nop
nop
nop
xor $39855, %r9
movb (%r14), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 3}
54 54 54
*/
