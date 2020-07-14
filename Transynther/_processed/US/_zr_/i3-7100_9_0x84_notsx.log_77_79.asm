.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rsi
lea addresses_D_ht+0xc09a, %r8
nop
nop
nop
and %r12, %r12
movb $0x61, (%r8)
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0xbe9a, %rsi
nop
nop
nop
cmp $22822, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp $38707, %r12
lea addresses_D_ht+0x1a63a, %rbp
cmp $57456, %rcx
movb $0x61, (%rbp)
nop
nop
nop
xor $31364, %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0x1469a, %rax
nop
nop
nop
nop
nop
dec %rsi
movl $0x51525354, (%rax)
and %rax, %rax

// Faulty Load
lea addresses_US+0x149a, %rcx
nop
nop
nop
nop
dec %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 77}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
