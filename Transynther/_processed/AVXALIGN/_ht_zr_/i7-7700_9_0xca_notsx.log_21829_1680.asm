.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18555, %rdi
nop
nop
nop
nop
cmp $48122, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1a3ad, %rcx
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
inc %r11
lea addresses_UC_ht+0xf3ad, %r10
nop
nop
nop
nop
nop
xor $27646, %r8
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x19ded, %r10
nop
nop
nop
nop
dec %r11
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
dec %r10
lea addresses_normal_ht+0xf970, %rsi
lea addresses_D_ht+0x1c14d, %rdi
dec %rbx
mov $113, %rcx
rep movsq
nop
nop
add $45196, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rdi

// Faulty Load
lea addresses_WT+0xcdad, %rdi
nop
nop
sub $34676, %r14
vmovntdqa (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 5560, '45': 3326, '47': 685, '44': 12258}
00 47 45 44 00 44 00 00 00 00 45 44 44 44 44 00 00 45 45 44 44 00 47 45 44 00 00 44 44 44 00 44 44 45 45 44 44 44 44 44 00 44 44 45 44 00 45 44 44 44 44 44 00 00 00 00 00 00 44 47 44 44 45 44 44 44 44 00 45 45 44 44 45 45 44 44 44 00 45 44 00 44 44 44 44 44 44 44 44 44 44 44 44 47 45 44 00 45 44 44 44 44 45 45 45 44 00 45 44 00 44 45 44 00 00 00 44 44 00 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 00 44 44 00 44 44 44 00 44 44 00 47 44 00 44 44 44 45 45 44 00 00 00 44 00 44 44 00 45 44 44 00 44 44 00 00 00 44 44 45 44 44 44 00 00 44 00 00 47 44 00 00 44 45 44 44 00 00 00 00 00 44 44 00 44 44 45 45 44 45 44 44 44 44 00 44 44 45 44 44 47 44 45 44 44 00 00 44 44 44 00 00 00 00 44 00 44 00 44 47 44 45 45 44 44 00 00 44 00 44 47 44 44 44 00 44 44 44 44 00 47 44 00 44 00 44 00 00 44 00 44 44 00 00 00 44 45 44 00 44 44 44 00 45 45 44 00 44 44 44 45 45 44 44 00 44 44 44 44 45 44 45 45 44 45 44 44 44 00 44 00 44 44 44 45 44 44 44 44 44 00 44 00 00 00 44 45 44 44 44 45 44 00 44 00 44 00 44 44 00 44 44 44 00 44 47 44 44 00 44 45 44 44 00 44 45 44 44 00 44 44 45 44 44 00 47 44 00 44 00 00 44 44 44 45 44 44 00 44 44 44 44 44 45 44 47 45 00 44 45 44 47 45 44 45 45 44 00 44 44 44 45 45 44 44 45 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 45 45 45 44 00 00 44 44 44 45 44 44 45 44 00 44 44 00 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 45 45 45 45 44 00 45 44 44 44 44 45 44 44 44 44 45 44 00 45 44 44 00 00 00 44 00 00 00 44 44 44 44 00 44 00 45 44 00 47 45 44 45 44 00 44 44 44 45 44 44 00 44 44 00 00 44 45 44 00 44 45 44 00 44 44 44 45 44 45 44 44 44 44 45 45 45 44 44 00 00 00 00 00 44 45 44 00 45 44 44 44 44 47 44 00 00 44 00 00 00 00 00 44 44 44 44 45 00 44 44 44 44 44 44 44 44 45 44 00 00 44 47 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 44 45 45 45 45 44 44 47 44 45 45 44 44 44 44 44 44 44 45 44 47 44 45 45 44 44 45 44 44 00 44 44 45 45 45 45 44 00 44 00 44 00 44 44 00 00 00 44 00 44 00 47 45 44 44 00 44 44 00 47 45 44 00 44 44 44 44 00 44 00 44 44 44 44 44 44 00 47 00 00 44 00 44 00 45 44 44 44 00 44 00 45 44 00 00 44 45 45 44 44 00 44 00 44 00 44 00 44 44 44 00 44 44 44 44 44 45 44 00 00 44 00 44 00 44 45 44 44 44 44 44 44 44 44 45 44 47 44 44 00 44 00 00 44 44 00 00 44 00 47 44 00 45 45 45 44 44 44 44 44 44 44 44 44 44 00 44 45 00 45 45 44 00 44 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 44 44 44 00 00 00 45 44 45 47 45 45 44 00 44 44 44 44 44 45 44 44 44 45 44 44 47 44 00 44 44 44 00 00 00 00 00 00 44 44 44 00 45 45 45 00 44 44 00 00 00 00 00 44 44 44 44 00 00 44 44 44 00 45 44 00 47 44 44 00 44 47 44 44 00 44 00 00 44 44 00 44 44 00 44 44 45 44 44 00 00 44 00 47 44 00 45 44 00 44 44 44 45 45 44 44 44 00 44 44 44 00 00 44 44 00 44 44 44 44 44 45 45 45 44 44 00 44 44 00 44 45 44 00 00 44 44 44 44 44 44 45 44 45 45 44 44 00 44 44 44 44 44 00 00 45 45 45 44 47 44 44 44 44 44 44 44 00 44 44 45 44 45 44 00 44 44 45 44 45 45 44 44 44 44 44 00 00 00 00 00 45 45 45 44 44 00 44 00 44 47 44 44 44 44 45 44 00 44 44 00 47
*/
