.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rdi
push %rsi
lea addresses_A_ht+0xe8f5, %r8
nop
nop
add %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x7275, %rbp
nop
nop
nop
nop
and $48760, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm1, (%rbp)
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1cff5, %rbp
nop
nop
nop
and %rax, %rax
movb (%rbp), %r8b
and %r10, %r10
lea addresses_normal_ht+0x4a85, %rsi
nop
nop
nop
xor $62708, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
add $51064, %rbp
lea addresses_A_ht+0x97f5, %rdi
nop
sub $39288, %r8
mov (%rdi), %r13
nop
nop
lfence
lea addresses_WC_ht+0x107fb, %r8
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
xor $9259, %rdi
lea addresses_UC_ht+0xacd5, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r10
nop
mfence
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rcx

// Faulty Load
mov $0x7f5, %rbp
nop
nop
add $14748, %rcx
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
