.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x374e, %r15
nop
nop
nop
sub $55198, %rcx
movb (%r15), %r8b
and %r13, %r13
lea addresses_A_ht+0x6c4e, %r8
nop
nop
nop
sub $24735, %rsi
mov (%r8), %rdi
nop
add $3382, %r15
lea addresses_WT_ht+0x11cce, %rsi
lea addresses_D_ht+0x1d62e, %rdi
nop
and $18298, %rbp
mov $20, %rcx
rep movsq
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1e1ce, %rbp
nop
and %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x168ce, %rsi
lea addresses_D_ht+0x13a4e, %rdi
nop
nop
nop
cmp %r10, %r10
mov $50, %rcx
rep movsb
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rdi
push %rdx

// Faulty Load
mov $0xace, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rdi), %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'00': 1}
00
*/
