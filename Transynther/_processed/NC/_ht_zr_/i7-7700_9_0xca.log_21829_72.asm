.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a31b, %rsi
lea addresses_WC_ht+0x9a0b, %rdi
nop
nop
and %r9, %r9
mov $102, %rcx
rep movsq
nop
nop
nop
cmp $33681, %r9
lea addresses_WT_ht+0x71b, %rbp
nop
nop
cmp %r8, %r8
mov (%rbp), %r12d
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xcf1b, %r8
nop
cmp %r9, %r9
mov (%r8), %cx
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x13347, %rsi
lea addresses_A_ht+0x4f5b, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $85, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x144c5, %rcx
nop
nop
nop
inc %r9
mov (%rcx), %r8d
nop
cmp $12915, %rbp
lea addresses_normal_ht+0xf99b, %rsi
lea addresses_WC_ht+0x12731, %rdi
nop
nop
nop
nop
nop
xor $54757, %r9
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xca7b, %rbp
cmp %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
add $16109, %r8
lea addresses_A_ht+0x1636b, %rsi
lea addresses_WC_ht+0x16a81, %rdi
nop
nop
nop
nop
nop
cmp $14091, %r10
mov $100, %rcx
rep movsl
nop
nop
nop
add $57465, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Load
mov $0x947, %rbp
nop
nop
dec %rax
mov (%rbp), %rdx
nop
nop
nop
add $54022, %rsi

// Load
lea addresses_A+0x17b3b, %r8
nop
cmp $49330, %rbx
mov (%r8), %r9d
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x18b1b, %rax
and $49786, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
xor $35101, %rbp

// Faulty Load
mov $0xe7289000000031b, %r9
nop
nop
nop
sub $57782, %rax
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'44': 12608, '00': 1, '45': 9220}
45 45 44 45 44 44 45 44 45 45 45 45 44 44 45 44 44 45 44 45 45 45 45 45 44 44 44 44 45 45 45 45 44 44 44 45 45 45 45 44 45 44 45 45 44 45 45 44 45 44 44 45 44 44 45 44 44 45 45 45 45 45 44 45 44 44 45 44 45 44 45 45 45 44 44 45 44 44 45 45 44 45 44 44 45 44 44 44 45 45 45 44 44 44 45 45 45 44 44 44 45 45 44 45 44 44 44 45 45 44 44 44 45 44 45 44 44 45 45 45 45 45 45 45 44 44 45 44 45 44 44 45 44 44 45 45 44 44 44 45 44 44 45 45 44 45 44 44 44 45 44 45 45 44 44 44 44 45 44 44 45 44 45 45 45 45 44 44 45 44 44 44 45 45 45 44 45 45 44 44 45 44 45 45 44 45 45 45 45 45 45 45 44 44 45 45 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 45 44 44 45 45 44 45 45 44 45 44 45 44 44 44 44 44 45 44 44 44 45 44 45 45 45 45 44 44 45 45 44 44 45 45 45 44 44 45 44 44 44 45 44 45 45 44 44 44 45 45 45 44 44 45 44 45 44 44 44 44 45 44 45 45 44 45 45 45 44 44 44 44 44 45 45 44 44 44 44 45 45 45 45 45 44 45 44 44 44 44 44 45 44 44 45 44 44 45 44 45 44 44 45 44 44 45 45 44 44 44 45 44 44 45 45 44 44 45 45 44 45 44 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 44 45 45 45 45 44 45 45 44 45 44 45 44 45 44 44 45 44 45 44 44 45 45 44 45 44 45 44 44 45 45 45 44 45 44 44 45 44 44 44 44 45 45 45 44 45 44 44 44 45 45 45 44 45 44 44 45 44 44 45 44 44 44 44 45 45 45 44 44 45 44 44 45 44 44 44 45 45 44 45 45 44 44 44 44 44 44 44 45 44 45 45 45 44 44 45 44 45 44 44 44 45 45 45 44 44 44 44 44 44 44 45 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 45 44 44 45 45 44 44 45 44 45 45 45 45 44 44 44 45 44 45 45 44 44 45 44 45 44 45 44 45 45 44 45 45 44 44 44 44 44 45 44 44 44 45 44 44 44 45 45 44 45 44 44 44 45 44 45 44 45 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 45 44 45 45 44 45 44 44 45 44 44 44 44 45 45 44 44 44 45 44 44 44 45 45 44 44 44 45 45 44 44 44 44 44 44 44 44 45 44 45 45 45 44 45 44 45 44 45 45 45 44 45 45 45 45 45 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 45 45 44 45 44 44 44 45 44 44 45 44 45 45 44 45 44 44 45 45 44 44 44 45 44 45 45 45 44 44 44 44 45 45 44 44 44 45 45 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 45 45 44 45 44 45 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 44 45 44 45 44 45 44 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 44 45 45 45 44 45 45 45 44 45 44 44 44 45 44 44 45 45 44 45 44 45 45 45 44 45 45 44 45 44 44 44 44 45 44 45 45 45 44 44 44 45 44 44 44 44 44 44 45 44 45 45 45 44 44 44 45 44 45 44 44 44 45 45 44 45 44 45 45 44 44 44 44 45 45 44 44 45 44 44 44 44 45 44 45 44 45 44 44 45 45 44 45 44 44 44 44 44 44 45 45 45 44 45 45 45 45 45 45 44 45 44 45 44 45 45 44 44 45 45 44 44 44 44 45 44 45 45 45 45 45 45 45 44 45 44 45 44 44 44 44 45 44 44 45 45 44 44 45 44 44 45 45 44 44 44 44 45 45 45 45 44 44 45 45 44 45 45 44 45 45 45 44 44 44 44 45 44 45 44 45 45 45 44 45 44 44 44 45 44 45 44 44 44 45 45 44 44 44 44 45 45 45 45 44 44 44 44 44 45 45 44 44 44 45 44 44 45 45 44 45 45 44 44 44 44 45 45 44 44 45 45 45 44 44 44 45 45 45 45 44 44 44 45 45 45 45 44 44 44 44 45 44 45
*/
