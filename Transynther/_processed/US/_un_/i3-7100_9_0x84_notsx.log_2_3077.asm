.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1771f, %r15
nop
nop
nop
inc %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
cmp $57391, %r9
lea addresses_normal_ht+0x5d7, %rsi
lea addresses_normal_ht+0x17acf, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
mov $71, %rcx
rep movsl
and %r9, %r9
lea addresses_WT_ht+0x151c9, %rsi
nop
nop
sub $34027, %r9
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
dec %rbp
lea addresses_A_ht+0x134cf, %rdi
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x17acf, %r8
cmp $43235, %rbp
mov (%r8), %ecx
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'fe': 2}
fe fe
*/
