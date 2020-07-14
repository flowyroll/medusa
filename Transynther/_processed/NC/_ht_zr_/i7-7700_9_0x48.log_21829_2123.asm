.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19afc, %r10
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r10
vmovntdq %ymm6, (%r10)
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0xabfc, %r15
nop
nop
nop
nop
add $44388, %r8
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
cmp $49211, %r8
lea addresses_WC_ht+0xa1fc, %r12
nop
nop
cmp %r8, %r8
mov (%r12), %r10w
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x97b4, %rax
nop
nop
nop
sub %r12, %r12
mov (%rax), %r15
nop
nop
nop
inc %rax
lea addresses_normal_ht+0xa3fc, %rax
nop
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
cmp $53974, %r12
lea addresses_WC_ht+0x10bfc, %rsi
lea addresses_WT_ht+0x17e04, %rdi
nop
nop
nop
mfence
mov $27, %rcx
rep movsq
inc %rsi
lea addresses_WT_ht+0x10bfc, %rsi
lea addresses_A_ht+0x131dc, %rdi
clflush (%rdi)
nop
nop
nop
and %r10, %r10
mov $41, %rcx
rep movsl
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x14b3c, %rsi
lea addresses_D_ht+0x7dfc, %rdi
inc %r15
mov $82, %rcx
rep movsb
cmp $61816, %r8
lea addresses_WC_ht+0x186dd, %r13
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
nop
sub $21124, %r12
lea addresses_D_ht+0x196fc, %rsi
lea addresses_D_ht+0xd5bc, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $116, %rcx
rep movsq
nop
nop
nop
cmp $30591, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbp

// Faulty Load
mov $0x5e73470000000bfc, %r13
nop
nop
add $63167, %r10
movups (%r13), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'49': 14071, '46': 164, '44': 1037, '00': 6557}
49 00 44 49 00 49 49 49 00 49 49 49 44 49 00 49 00 00 49 00 49 00 49 00 00 49 49 49 00 49 00 49 49 00 49 00 00 49 49 00 49 00 49 00 49 00 49 00 49 00 49 49 49 49 49 49 00 00 49 00 49 00 49 44 49 49 49 49 49 49 49 49 00 49 00 49 00 49 49 00 49 49 49 00 49 49 49 44 49 00 00 00 00 00 49 00 49 49 49 00 49 49 49 00 46 49 00 49 49 00 49 00 49 00 49 00 49 49 49 49 44 49 49 49 00 49 44 00 49 49 44 00 49 49 00 49 00 49 00 00 00 44 00 49 49 00 49 49 49 49 00 49 00 49 49 44 49 49 00 49 49 00 49 00 49 49 44 49 49 00 49 00 49 49 00 49 49 46 49 44 49 00 49 00 49 00 49 00 49 49 49 49 49 49 49 49 44 49 00 49 49 49 49 49 49 49 44 49 49 00 49 00 00 49 00 49 00 49 49 00 00 00 49 49 44 49 49 49 49 49 00 49 49 00 49 00 49 00 49 49 49 49 49 00 49 00 49 49 49 49 00 49 49 49 00 49 00 49 49 49 49 49 49 49 49 00 00 49 49 00 49 49 49 49 00 49 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 00 00 49 00 44 49 49 49 00 49 00 49 49 00 49 49 49 49 00 49 00 49 00 49 49 49 00 49 00 49 00 49 00 49 49 44 49 00 49 49 49 00 00 00 49 44 49 49 00 49 49 49 00 49 49 49 00 49 00 49 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 00 49 00 49 00 49 49 44 49 00 49 49 49 46 49 49 49 49 00 49 00 49 49 44 49 49 49 00 49 00 49 49 46 49 49 44 49 49 00 49 49 49 49 00 49 44 00 49 49 49 00 00 49 00 49 44 49 49 00 49 49 49 49 49 00 49 44 49 49 49 49 00 49 00 00 49 44 49 49 00 49 49 49 44 49 49 49 00 49 00 49 00 44 49 00 49 49 00 49 00 49 00 49 00 49 49 49 49 49 49 00 49 00 49 00 49 49 00 44 00 49 00 49 49 00 49 00 49 00 49 49 49 44 49 49 00 00 49 49 49 49 49 49 46 49 49 00 49 00 49 00 49 49 49 49 49 00 49 49 49 00 49 00 00 49 44 49 49 49 49 46 49 49 00 49 49 00 49 00 00 00 49 49 49 49 00 49 00 49 00 49 49 49 00 00 49 49 49 00 49 00 00 49 00 49 00 49 46 49 44 49 00 49 00 00 49 49 49 49 49 49 49 49 49 00 49 00 49 49 00 49 49 00 49 49 49 00 49 44 49 00 49 49 49 44 49 49 49 44 00 00 00 49 49 49 00 00 49 00 49 00 49 00 00 49 00 49 49 49 49 49 49 49 49 46 49 00 49 00 49 44 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 00 49 00 44 49 00 49 49 44 49 49 49 49 00 49 00 49 00 49 00 00 00 49 49 44 49 00 49 49 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 49 00 00 49 00 00 49 49 49 49 49 49 00 49 49 49 00 49 00 00 44 49 49 49 49 00 49 00 49 49 49 00 49 00 44 49 00 49 00 49 00 49 44 00 49 49 49 49 44 49 49 00 49 44 49 44 49 00 49 00 49 49 49 00 49 00 49 49 49 00 49 00 49 49 49 49 49 49 44 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 49 00 49 00 49 49 49 49 00 49 00 49 49 00 49 49 44 00 49 49 44 49 00 49 00 00 49 00 49 49 49 00 49 49 00 49 00 49 49 49 49 49 49 00 49 00 49 49 49 49 44 49 00 49 49 49 00 49 49 49 00 44 49 00 49 00 49 00 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 00 49 00 49 49 49 49 49 00 00 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 00 49 00 49 00 49 00 49 49 49 00 49 00 49 00 49 00 44 49 44 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49
*/
