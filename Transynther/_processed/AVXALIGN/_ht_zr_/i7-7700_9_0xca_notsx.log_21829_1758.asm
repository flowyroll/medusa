.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x39a1, %rsi
lea addresses_normal_ht+0x13c4d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
xor %r14, %r14
mov $55, %rcx
rep movsb
nop
nop
nop
nop
cmp $55752, %rsi
lea addresses_UC_ht+0x41cc, %rdx
nop
nop
nop
nop
cmp $64938, %r13
movb $0x61, (%rdx)
nop
add $35886, %r10
lea addresses_WC_ht+0xe851, %rsi
lea addresses_WT_ht+0x1104d, %rdi
nop
nop
nop
nop
cmp $17334, %rdx
mov $33, %rcx
rep movsb
nop
nop
nop
nop
add $7241, %r10
lea addresses_normal_ht+0x5591, %rdx
nop
dec %r13
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x19b4d, %rsi
lea addresses_A_ht+0x18c4d, %rdi
cmp $49672, %rbp
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1d0c5, %r10
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r10)
nop
cmp $28709, %rdi
lea addresses_normal_ht+0x13e4d, %rdx
inc %r10
movw $0x6162, (%rdx)
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x421d, %rdx
inc %rsi
movl $0x51525354, (%rdx)
nop
nop
nop
nop
add $42913, %r11

// Faulty Load
mov $0x44d, %rcx
nop
nop
nop
nop
nop
xor $53312, %rax
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 13643, '44': 8186}
00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 44 00 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 44 44 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 44 00 00 44 44 00 00 44 00 44 44 44 00 00 44 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 44 44 00 00 00 44 00 00 44 44 00 00 44 00 44 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 44 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 44 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 44 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 44 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 44 44 00 00 44 44 00 44 44 00 00 00 44 00 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00
*/
