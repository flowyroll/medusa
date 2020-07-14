.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14043, %r15
nop
nop
nop
nop
nop
inc %r8
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rbp
nop
xor %r12, %r12
lea addresses_WT_ht+0x2643, %rsi
lea addresses_WT_ht+0x1a61c, %rdi
cmp %rbp, %rbp
mov $100, %rcx
rep movsl
nop
add $28016, %rsi
lea addresses_A_ht+0x3bc3, %rsi
nop
nop
nop
nop
cmp $1086, %r12
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x19843, %rsi
clflush (%rsi)
nop
add %r8, %r8
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
add $36409, %r12
lea addresses_D_ht+0x9c43, %rsi
xor %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
and $41161, %rbp
lea addresses_A_ht+0x1784c, %rsi
lea addresses_A_ht+0x1997, %rdi
nop
nop
nop
nop
cmp $52652, %r12
mov $32, %rcx
rep movsl
nop
nop
and $1222, %rsi
lea addresses_D_ht+0x31c3, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r8
nop
add $29498, %rdi
lea addresses_D_ht+0x13643, %rsi
lea addresses_D_ht+0xc743, %rdi
nop
nop
nop
nop
xor $8770, %rbx
mov $71, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x19043, %r8
nop
cmp $53684, %rcx
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx

// Store
mov $0x443, %r8
nop
nop
nop
nop
nop
cmp $49542, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
nop
nop
nop
and $1923, %rcx

// Faulty Load
mov $0x443, %r12
nop
nop
nop
and %rax, %rax
movaps (%r12), %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 16152, '58': 5677}
00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 58 00 58 00 00 00 00 00 00 00 58 00 00 58 58 58 58 00 00 58 00 00 00 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 00 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 00 58 00 58 58 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 00 00 58 00 58 58 00 00 58 00 58 00 58 00 00 00 58 58 58 00 58 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 00 58 58 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 58 00 00 58 00 00 00 58 00 58 58 00 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 58 58 58 58 58 00 58 58 00 00 00 00 58 00 00 00 00 00 58 58 00 58 00 00 00 58 58 58 00 00 00 00 00 58 58 00 58 00 58 58 58 58 58 00 58 58 00 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 00 00 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 58 58 00 00 58 58 00 00 58 58 58 00 58 00 00 58 00 58 58 00 00 58 00 58 00 58 00 58 58 58 58 00 00 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 58 00 00 00 58 00 58 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 00 58 00 58 00 58 00 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 58 58 00 58 58 58 00 00 58 00 58 58 58 00 00 00 00 58 58 00 58 00 00 00 00 00 00 58 58 58 58 00 00 00 58 00 58 00 00 00 58 58 58 00 58 00 58 00 58 00 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 58 00 58 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00
*/
