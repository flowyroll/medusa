.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e562, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r8), %rbx
nop
cmp $15129, %r10
lea addresses_normal_ht+0x18f4d, %rax
nop
nop
xor $14197, %r13
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1ec5d, %rsi
lea addresses_WC_ht+0x145d, %rdi
nop
nop
nop
nop
cmp $29041, %r10
mov $14, %rcx
rep movsb
nop
nop
nop
and $44183, %rdi
lea addresses_D_ht+0x1a35d, %rax
cmp %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
cmp $16008, %r13
lea addresses_A_ht+0x1d5a5, %rsi
lea addresses_D_ht+0xae5d, %rdi
nop
nop
nop
dec %r8
mov $17, %rcx
rep movsq
nop
nop
nop
nop
xor $11185, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx

// Faulty Load
lea addresses_A+0x885d, %r13
nop
nop
nop
nop
nop
and %rax, %rax
vmovaps (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'44': 10033, '45': 11796}
45 45 45 45 45 44 45 44 44 45 44 44 45 44 45 45 44 45 44 45 45 45 44 44 45 45 44 44 45 44 45 44 45 45 45 44 45 44 44 45 45 45 44 45 44 45 44 45 45 45 44 44 44 45 45 45 45 44 45 44 44 45 45 44 45 44 45 45 45 45 44 44 45 44 44 45 45 45 45 45 45 44 45 44 45 45 44 44 44 44 45 44 44 45 45 45 45 44 44 44 45 44 44 45 45 44 44 44 44 44 44 45 45 44 44 45 44 44 44 45 45 44 44 45 45 45 45 44 45 45 45 45 44 45 45 44 44 44 44 45 45 45 45 44 45 44 44 45 44 44 44 45 44 45 44 44 45 45 45 45 45 44 44 45 44 44 44 45 44 45 45 45 44 45 44 45 44 44 44 45 45 45 44 44 45 44 45 45 44 45 45 45 45 45 44 45 45 44 44 45 44 44 44 45 45 44 45 45 44 44 44 45 44 45 44 44 44 44 45 45 44 45 44 44 44 45 45 45 44 44 45 44 45 44 44 44 45 45 44 45 44 44 44 45 44 44 44 45 44 45 44 45 45 45 45 44 44 45 45 44 44 45 45 44 44 45 44 44 45 44 45 44 44 45 45 44 45 44 45 45 45 44 45 44 44 45 45 44 44 45 45 44 45 44 44 44 44 45 44 44 45 45 44 45 44 45 44 45 44 45 45 44 45 45 44 44 44 45 44 44 44 44 45 45 45 44 44 44 45 44 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 44 44 45 44 45 45 45 44 44 45 45 45 45 45 45 44 45 44 45 44 45 44 45 45 44 44 44 45 45 45 45 44 45 44 45 45 44 45 45 45 44 44 45 44 45 45 45 44 45 45 44 44 45 45 44 44 45 45 44 44 45 45 44 45 44 45 44 44 44 45 45 45 44 45 45 45 45 45 44 44 45 45 45 45 44 44 44 44 45 45 44 44 44 44 45 45 44 45 44 44 45 45 44 44 44 44 44 45 45 44 44 45 44 45 44 44 45 45 45 44 44 45 45 45 45 44 45 44 45 45 44 44 45 45 44 44 45 45 45 44 44 45 45 44 45 45 44 44 45 44 44 45 44 44 44 44 44 44 44 45 45 45 45 44 44 45 45 45 45 44 45 45 44 45 44 44 45 44 45 45 45 44 45 45 45 45 44 44 45 45 45 45 45 45 44 45 44 44 44 45 45 44 44 44 44 44 45 44 44 45 45 44 45 44 44 44 45 44 45 44 45 44 44 44 44 45 45 44 44 45 44 44 44 45 44 44 45 44 44 45 45 45 44 45 44 45 44 44 45 44 44 44 44 45 45 44 44 45 44 44 45 45 45 45 45 44 44 45 45 44 45 44 45 45 45 45 44 45 44 45 45 45 45 44 45 44 45 44 44 44 45 45 44 44 45 45 45 44 44 44 45 45 44 45 45 44 45 45 45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 44 45 44 44 45 44 44 44 44 45 45 45 44 44 45 45 45 44 45 44 44 45 45 44 45 45 45 45 44 44 44 44 44 45 44 44 45 45 45 44 44 44 44 44 45 45 45 45 45 44 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 44 44 45 45 44 44 45 44 45 45 44 45 45 45 45 45 45 44 44 44 44 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 44 45 44 44 45 44 44 44 44 45 44 44 45 45 45 44 44 44 44 45 44 45 45 44 44 44 45 45 44 45 44 45 44 45 45 45 44 45 44 45 45 44 44 44 45 44 44 44 45 44 44 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 44 44 44 44 44 45 44 44 44 45 45 45 45 44 45 44 44 45 45 45 44 44 44 44 44 44 44 45 45 44 44 45 45 45 45 44 44 45 44 45 45 45 44 45 44 44 44 45 45 45 44 44 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 44 44 45 45 45 45 45 44 45 45 45 45 44 44 44 45 44 44 44 45 45 44 45 44 45 45 45 44 45 44 44 44 45 44 44 45 44 44 44 44 45 44 45 45 44 45 44 44 45 45 44 45 44 45 45 45 44 44 44 45 45 44 44 44 45 44 45 45 45 45 44 44 45 45 45 45 44 45 44 45 45 44 44
*/
