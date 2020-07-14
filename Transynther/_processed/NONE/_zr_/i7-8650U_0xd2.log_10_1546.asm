.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19f12, %rdi
nop
nop
and $61450, %rax
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x6a12, %rbx
nop
cmp %r14, %r14
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x19c4a, %r14
nop
nop
dec %rbx
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
cmp %r10, %r10
lea addresses_WC_ht+0xbd66, %r10
nop
nop
nop
dec %r15
movl $0x61626364, (%r10)
sub $15746, %rdi
lea addresses_D_ht+0x1763c, %rsi
lea addresses_D_ht+0x12912, %rdi
nop
xor $51520, %rax
mov $14, %rcx
rep movsl
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1d712, %r15
nop
nop
nop
nop
nop
inc %rax
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rdi

// Faulty Load
lea addresses_A+0x1a512, %rbp
nop
nop
sub $8861, %r12
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
