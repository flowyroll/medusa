.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8d7a, %rsi
lea addresses_normal_ht+0x1417a, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $20, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0xe73a, %r10
nop
nop
nop
xor %r8, %r8
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
and $16023, %r9
lea addresses_WT_ht+0x1273a, %r9
nop
nop
nop
nop
sub %r8, %r8
mov (%r9), %r10w
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_UC+0x1ba20, %r11
xor %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r11)
xor %r8, %r8

// Faulty Load
lea addresses_RW+0x14f3a, %rbp
nop
nop
nop
nop
dec %rbx
movb (%rbp), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'32': 72}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
