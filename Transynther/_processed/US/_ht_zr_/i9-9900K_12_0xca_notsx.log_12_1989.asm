.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x158ac, %r11
nop
inc %rsi
movb (%r11), %r12b
nop
lfence
lea addresses_normal_ht+0x16cac, %r13
nop
add $11313, %r14
movb $0x61, (%r13)
nop
and $27902, %rcx
lea addresses_UC_ht+0x168ac, %rsi
lea addresses_D_ht+0xdcac, %rdi
nop
nop
nop
add $40728, %r8
mov $67, %rcx
rep movsb
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0xd0ac, %rsi
nop
nop
nop
add $58316, %r11
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r13
nop
inc %r8
lea addresses_UC_ht+0x140ac, %rsi
lea addresses_A_ht+0x88ac, %rdi
inc %r8
mov $11, %rcx
rep movsw
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xa8ac, %rdx
nop
nop
xor $61529, %rdi
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'00': 3, '45': 9}
45 45 45 00 00 45 45 45 45 45 45 00
*/
