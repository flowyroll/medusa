.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_normal_ht+0x13627, %rsi
nop
nop
nop
cmp $54422, %rcx
mov (%rsi), %r8d
nop
inc %rdx
lea addresses_WC_ht+0x1c3e6, %rbp
xor %r14, %r14
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1b5e7, %r8
nop
nop
nop
mfence
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x8077, %rdx
clflush (%rdx)
nop
nop
nop
nop
and $9564, %r14
movw $0x6162, (%rdx)
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0xa2bf, %r8
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rdx

// Faulty Load
lea addresses_WC+0x14fbf, %rdx
nop
and %r11, %r11
mov (%rdx), %ax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 6061, 'ff': 587, '30': 209, '48': 136, '47': 46, '10': 17, '44': 25, 'a0': 1, 'c0': 2, '52': 6, '08': 1, '8f': 2, '80': 2, 'f0': 1}
00 00 00 00 00 00 00 ff 00 ff 00 ff 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 30 48 00 00 00 00 00 47 00 00 00 00 00 ff 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 ff 00 00 00 30 00 00 ff 00 00 00 00 ff 00 00 00 00 00 ff 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 30 48 00 ff 00 00 00 00 47 00 00 00 00 30 00 00 00 00 30 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 30 00 00 10 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 ff 00 00 00 00 ff 00 ff 00 00 00 00 00 00 ff 00 00 00 00 30 00 00 00 00 00 00 00 30 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 48 00 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 30 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 47 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 48 00 ff 00 ff 00 00 ff 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 48 00 30 00 00 00 00 ff 30 ff 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 ff 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 30 00 00 00 00 00 30 30 48 00 ff 00 00 00 00 00 00 00 00 00 10 ff 00 00 00 00 00 00 00 00 44 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 30 00 00 30 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 30 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 30 00 00 30 48 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 44 00 ff 30 00 00 00 00 00 ff 00 47 00 00 ff 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 48 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 48 00 00 00 00 00 00 00 00 30 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
