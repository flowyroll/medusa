.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
lea addresses_normal_ht+0xb895, %r12
nop
inc %rbp
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
sub $64753, %r14
lea addresses_A_ht+0x17455, %rcx
cmp $38200, %rbx
mov (%rcx), %r8
nop
nop
nop
nop
nop
cmp %r8, %r8
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_US+0xc695, %r14
nop
nop
nop
nop
nop
xor $25673, %r10
movw $0x5152, (%r14)
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0xc695, %r11
nop
nop
nop
nop
sub %r10, %r10
vmovntdqa (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'00': 6, 'c4': 1, 'd2': 1, 'a6': 1, '18': 2, 'a2': 1, '5f': 1}
a6 d2 00 a2 18 18 00 00 00 00 c4 00 5f
*/
