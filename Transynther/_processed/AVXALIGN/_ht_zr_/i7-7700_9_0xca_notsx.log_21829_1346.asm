.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19361, %rsi
lea addresses_normal_ht+0x14fe1, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $22, %rcx
rep movsq
nop
xor %rdx, %rdx
lea addresses_A_ht+0x19ef1, %rsi
lea addresses_WC_ht+0x18b29, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x5b61, %r14
nop
nop
nop
nop
sub $34714, %r12
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
sub $25972, %rsi
lea addresses_normal_ht+0x14d61, %rsi
lea addresses_D_ht+0x17b59, %rdi
nop
nop
nop
nop
nop
xor $9191, %rdx
mov $108, %rcx
rep movsw
cmp %rdx, %rdx
lea addresses_WC_ht+0x1e361, %rdi
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
xor $39419, %rcx
lea addresses_WC_ht+0xccc1, %rdx
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
and $58075, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_D+0x1f27b, %rax
nop
nop
nop
nop
xor $4831, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x8d07, %rax
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_WC+0x3361, %r9
nop
nop
nop
add %r11, %r11
movntdqa (%r9), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 3700, '45': 7833, '47': 173, '44': 9888, '46': 235}
00 44 44 44 44 00 45 45 44 45 45 44 44 44 44 45 44 44 44 00 44 00 45 45 44 44 44 44 45 44 00 45 45 00 44 44 45 44 00 44 44 00 44 00 45 45 45 00 00 44 00 45 44 44 45 44 00 00 45 45 44 45 45 44 44 45 45 44 45 45 44 45 46 00 44 00 44 45 45 44 00 45 45 44 44 47 44 45 45 44 45 45 45 44 45 00 44 45 45 44 45 44 45 45 45 45 44 45 45 45 44 45 44 44 44 45 45 44 44 00 44 00 44 00 45 44 44 44 44 00 44 00 45 45 45 00 00 45 45 45 44 45 46 00 45 44 44 44 44 00 44 00 44 45 44 00 44 00 45 45 45 00 00 45 45 45 44 44 45 44 45 44 00 44 45 45 44 00 45 44 00 45 44 44 00 44 00 44 44 45 44 00 45 45 00 44 45 44 45 44 44 00 44 00 45 44 44 00 45 44 00 44 44 45 44 44 00 44 00 44 45 45 44 00 45 44 00 44 45 45 45 44 44 45 45 45 44 45 44 44 45 45 44 45 45 00 00 44 45 45 44 00 44 44 00 45 46 45 45 00 00 44 45 44 00 45 44 44 45 44 45 44 00 44 45 44 00 44 47 44 00 45 44 00 44 45 45 45 45 45 44 45 44 00 44 00 44 46 44 44 44 44 44 44 00 46 44 45 44 45 44 45 44 45 44 44 00 45 00 45 44 45 46 44 44 00 45 44 44 45 44 45 44 00 44 45 00 44 44 00 45 44 44 45 44 44 44 00 45 45 45 45 45 44 00 45 45 45 00 44 44 44 00 45 45 44 45 45 46 44 00 45 44 45 44 44 00 00 44 45 45 46 45 00 44 00 44 44 44 45 00 45 45 45 45 44 00 44 00 44 45 44 45 45 45 44 44 00 44 45 00 44 45 44 45 45 44 44 44 45 44 46 00 44 45 44 45 44 44 00 44 45 44 00 44 44 00 45 45 44 44 45 44 00 44 45 44 45 44 45 44 00 44 45 45 44 44 45 45 44 00 44 45 44 45 44 44 00 45 44 00 44 00 44 00 44 45 44 44 45 44 00 44 45 44 45 00 44 45 45 44 45 00 44 44 44 00 44 00 44 00 44 44 44 44 45 00 44 45 45 44 44 00 00 44 45 44 45 44 44 44 00 45 44 00 44 45 45 00 44 45 00 44 45 44 00 45 45 44 45 44 44 00 44 44 45 44 45 45 45 45 44 44 00 44 45 44 45 00 44 44 45 45 44 00 45 44 45 44 45 45 45 44 45 44 00 45 44 00 44 45 45 44 44 45 00 45 46 44 45 45 00 44 45 44 00 46 44 00 44 00 00 44 00 44 00 00 44 00 45 44 45 45 45 46 00 44 44 45 45 44 45 45 00 44 44 45 44 44 00 45 45 45 45 44 44 44 44 44 44 45 45 44 45 45 44 45 00 44 45 45 45 44 44 45 44 00 44 44 45 44 44 44 44 00 44 45 44 45 46 44 45 44 45 45 44 00 44 00 45 44 45 00 45 44 45 45 44 45 00 45 44 44 45 44 45 45 45 45 45 44 00 44 45 44 45 44 44 44 45 44 00 44 45 44 00 45 44 44 44 45 44 45 45 44 45 45 44 00 44 44 45 44 45 00 45 44 44 44 44 45 44 00 45 44 44 00 44 44 00 00 44 45 44 44 00 44 44 00 44 44 00 44 45 45 45 44 44 45 45 44 47 44 45 44 45 44 44 47 45 45 45 45 44 44 44 00 45 00 44 44 44 00 44 44 44 45 44 46 44 44 00 45 45 45 44 45 44 00 44 44 00 44 45 45 45 44 44 45 44 45 45 44 45 45 44 44 44 44 45 45 44 44 44 44 45 44 00 44 44 44 45 45 00 44 00 45 44 44 45 44 00 44 45 44 44 45 44 00 44 44 44 00 45 00 45 44 00 00 44 45 45 00 44 00 44 44 00 00 45 44 44 44 00 44 44 45 44 45 45 45 45 44 45 44 47 44 45 44 00 45 44 00 44 45 44 44 44 45 00 00 00 45 45 44 45 00 44 44 00 44 45 45 44 00 44 44 44 00 44 00 45 45 44 45 44 00 44 44 45 45 45 45 45 44 44 44 44 00 45 44 00 45 44 44 45 44 45 44 45 44 44 44 44 00 45 45 44 44 00 45 45 45 44 45 44 44 44 45 45 45 44 00 45 44 00 44 45 44 45 44 00 44 00 44 45 44 44 00 44
*/
