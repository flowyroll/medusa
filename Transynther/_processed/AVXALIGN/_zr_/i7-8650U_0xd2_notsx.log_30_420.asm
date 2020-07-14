.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xca8f, %rax
nop
nop
nop
dec %r10
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
and $62575, %rbx
lea addresses_WT_ht+0x19dd3, %r12
nop
nop
nop
nop
dec %rax
movb (%r12), %dl
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x7401, %r12
sub %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r12)
add $41202, %rbx
lea addresses_UC_ht+0x2f93, %rbx
sub %r8, %r8
mov (%rbx), %ax
nop
nop
nop
nop
and $31157, %rbx
lea addresses_A_ht+0x16ff3, %r8
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r8), %r10w
nop
nop
sub $59192, %rbx
lea addresses_D_ht+0x5bef, %rsi
lea addresses_A_ht+0x146b7, %rdi
nop
nop
xor $19108, %r12
mov $20, %rcx
rep movsl
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rdx

// Faulty Load
lea addresses_UC+0x173f3, %r11
nop
xor $27183, %r15
vmovaps (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
