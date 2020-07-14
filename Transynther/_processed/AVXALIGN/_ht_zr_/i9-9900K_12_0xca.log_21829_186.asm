.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c971, %rsi
nop
nop
nop
nop
sub $57124, %rbp
mov (%rsi), %edi
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x172f1, %rcx
nop
nop
nop
nop
add $31426, %r8
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x14cf1, %r12
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %r11w
nop
add %rsi, %rsi
lea addresses_D_ht+0x85f1, %r8
nop
cmp $18102, %rsi
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
dec %r8
lea addresses_D_ht+0x51a3, %rdi
nop
nop
xor $20243, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
and $11405, %r11
lea addresses_WC_ht+0x11991, %r11
nop
nop
nop
nop
add $37871, %rsi
mov (%r11), %r8d
nop
add $12996, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdx

// Store
lea addresses_normal+0xf9c9, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $58913, %r12
movb $0x51, (%rcx)
nop
nop
sub %r13, %r13

// Faulty Load
mov $0x68a5fe00000004f1, %rcx
xor $4872, %r9
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 11867, '46': 9962}
00 00 00 46 00 00 00 46 00 46 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 46 00 00 00 00 46 00 00 00 46 46 00 46 00 46 00 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 46 00 46 46 00 00 00 00 46 00 00 00 46 46 00 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 00 46 00 00 00 00 46 00 46 00 00 00 00 00 46 46 00 00 00 46 00 00 00 46 46 00 00 46 00 00 00 00 46 00 00 00 46 46 00 46 00 46 00 00 46 46 00 00 00 46 46 00 46 00 46 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 46 46 46 00 46 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 00 46 00 00 46 46 00 00 46 46 00 00 46 46 00 00 46 46 46 00 00 00 00 46 00 00 00 46 46 00 00 46 46 00 00 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 46 00 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 00 46 46 00 00 00 46 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 00 46 46 00 46 00 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 46 00 46 00 46 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 46 00 00 00 46 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 00 46 00 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 46 00 00 00 00 00 46 46 00 46 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 46 46 46 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 46 46 00 00 00 46 46 00 46 00 46 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 46 00 00 00 46 00 00 00 46 46 00 00 00 46 46 00 46 00 46 00 00 00 46 46 00 00 46 46 00 00 00 46 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 00 00 46 46 00 46 00 00 46 46 00 46 00 00 00 46 00 46 46 00 00 00 00 46 00 00 46 46 00 00 00 46 00 46 00 00 00 00 46 00 00 46 46 00 46 00 00 00 46 00 00 00 00 46 00 46 00 00 00 46 46 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 00 46 00 46 00 00 00 00 46 00 00 46 46 00 00 00 46 00 00
*/
