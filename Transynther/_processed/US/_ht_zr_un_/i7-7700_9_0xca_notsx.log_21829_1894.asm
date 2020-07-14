.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5eda, %r14
nop
nop
nop
nop
nop
cmp $60429, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x15400, %r15
cmp $52930, %r8
movw $0x6162, (%r15)
nop
and %r8, %r8
lea addresses_normal_ht+0xea7a, %rdi
nop
and $46570, %r8
movw $0x6162, (%rdi)
sub $15760, %r14
lea addresses_normal_ht+0x96fa, %r11
clflush (%r11)
nop
dec %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
and $17676, %r11
lea addresses_UC_ht+0x9d4b, %rsi
lea addresses_WC_ht+0x15162, %rdi
nop
nop
xor %rdx, %rdx
mov $20, %rcx
rep movsl
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x165fa, %rsi
lea addresses_WT_ht+0x19f9a, %rdi
nop
nop
dec %r14
mov $66, %rcx
rep movsl
nop
nop
nop
nop
and $51143, %rdi
lea addresses_normal_ht+0x130a6, %rsi
lea addresses_D_ht+0x150fa, %rdi
nop
sub %rdx, %rdx
mov $39, %rcx
rep movsb
and %r8, %r8
lea addresses_WC_ht+0x18eb2, %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rdx), %r8b
nop
nop
and %r14, %r14
lea addresses_A_ht+0x64fa, %rsi
lea addresses_D_ht+0x3a4a, %rdi
nop
nop
nop
nop
inc %rdx
mov $34, %rcx
rep movsw
nop
sub $2675, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x1b0fa, %r12
xor %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r12)
cmp $2518, %r12

// Store
lea addresses_RW+0xa0c2, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
add %r12, %r12

// Store
mov $0x44682c00000000fa, %rsi
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x28fa, %r8
nop
nop
nop
nop
sub $45843, %r12
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'08': 2439, '00': 18174, 'f0': 5, '1a': 31, 'd0': 1010, '47': 32, '48': 109, '67': 29}
08 00 00 00 00 00 00 00 00 08 08 00 00 00 08 08 00 00 00 00 00 00 00 00 00 00 d0 00 08 00 00 00 00 08 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00 08 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 d0 00 48 1a 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d0 08 00 00 00 00 00 00 00 48 08 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 08 08 08 00 00 00 00 00 00 08 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 00 d0 08 00 00 00 08 00 00 00 00 d0 00 00 00 00 d0 00 00 00 67 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 08 08 00 00 48 08 00 00 00 d0 00 00 00 08 00 00 00 d0 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 08 00 00 00 08 08 00 00 00 00 00 00 00 00 08 08 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 08 08 00 00 00 00 00 00 00 08 00 00 00 1a 00 00 00 00 00 00 00 00 08 08 00 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 08 00 00 00 08 00 d0 00 00 d0 08 00 00 08 00 00 d0 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 08 d0 00 00 00 08 00 00 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 08 08 00 00 00 00 08 d0 00 00 00 00 00 00 00 00 00 08 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 08 00 00 08 08 08 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 08 08 00 00 08 00 00 00 00 d0 00 00 08 00 00 08 00 00 00 00 00 00 00 00 00 00 08 00 08 00 00 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 00 00 00 08 00 00 00 00 00 d0 00 08 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 d0 00 00 08 00 00 00 00 00 00 00 00 00 08 00 00 00 08 d0 00 00 00 08 08 00 00 00 00 00 00 00 00 08 00 00 00 00 08 00 00 08 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 00 00 00 00 00 08 08 08 00 00 00 00 00 00 00 d0 00 00 00 00 08 08 00 00 d0 00 00 d0 00 08 08 00 00 00 00 00 d0 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 08 08 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 08 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 d0 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 08 08 00 00 00 00 08 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 08 00 00 00 00 08 08 00 00 00 00 00 00 08 00 00 00 00 00 00 00 d0 00 00 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 08 00 00 00 08 08 00 00 00 00 08 d0 08 00 00 00 08 08 00 08 08 00 00 d0 00 08 00 00 00 00 00 08 00 00 00 00
*/
