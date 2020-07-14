.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2cfe, %rsi
lea addresses_WC_ht+0x3960, %rdi
nop
and $34807, %rax
mov $4, %rcx
rep movsb
nop
inc %rbx
lea addresses_A_ht+0x1ca85, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm3, (%rdi)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x14285, %rax
sub $60308, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
and $0xffffffffffffffc0, %rax
movntdq %xmm2, (%rax)
add $16259, %rax
lea addresses_D_ht+0xfcdd, %rbx
nop
nop
cmp $22301, %rax
movl $0x61626364, (%rbx)
cmp %r8, %r8
lea addresses_D_ht+0x1e685, %rsi
lea addresses_WC_ht+0x196e9, %rdi
nop
nop
add $55160, %rax
mov $8, %rcx
rep movsq
nop
xor $20870, %r12
lea addresses_D_ht+0xa685, %r12
clflush (%r12)
xor %rsi, %rsi
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
and $29055, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xa245, %rdx
nop
inc %rbx
movl $0x51525354, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_D+0xe285, %r14
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'36': 1}
36
*/
