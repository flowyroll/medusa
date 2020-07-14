.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rdx
push %rsi
lea addresses_A_ht+0x62e2, %rsi
nop
nop
nop
xor $18711, %rax
movw $0x6162, (%rsi)
nop
and $57853, %r12
lea addresses_WT_ht+0x9ea, %r8
nop
nop
nop
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
and %r8, %r8
lea addresses_normal_ht+0x31cb, %r11
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r11)
nop
cmp $56048, %r11
lea addresses_WT_ht+0x82, %r8
nop
nop
nop
nop
nop
cmp $42403, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0xf1a2, %rsi
nop
nop
nop
add %r12, %r12
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
xor $47663, %r10
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp

// Faulty Load
lea addresses_WT+0x19fe2, %rbp
nop
nop
nop
nop
sub %rax, %rax
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'45': 1961, '49': 19868}
45 49 49 49 49 45 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 45 45 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 45 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 45 45 49 49 49 49 49 45 49 49 49 49 49 45 45 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 45 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 49 45 49 49 45 49 49 45 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 45 49 45 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 45 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 45 45 49 45 49 49 45 49 49 45 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 45 49 49 45 45 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 45 45 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49
*/
