.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb931, %r8
nop
dec %r10
mov (%r8), %ax
xor $23360, %r8
lea addresses_D_ht+0x11529, %rsi
lea addresses_A_ht+0x8184, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r9, %r9
mov $60, %rcx
rep movsq
nop
nop
nop
nop
nop
add $35774, %r8
lea addresses_A_ht+0x17529, %rdi
nop
nop
nop
add %rsi, %rsi
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
add $9606, %r9
lea addresses_A_ht+0x8929, %rsi
lea addresses_WT_ht+0xb229, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x10ba9, %rsi
lea addresses_A_ht+0x1b411, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $61, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x8bc1, %rcx
clflush (%rcx)
nop
xor $49234, %r9
mov (%rcx), %r10d
nop
nop
nop
nop
nop
and $19325, %r10
lea addresses_A_ht+0x14529, %r9
clflush (%r9)
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
and $8962, %rsi
lea addresses_WC_ht+0x1bd29, %rax
nop
dec %r9
mov (%rax), %edi
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rdx

// Faulty Load
lea addresses_UC+0x1a929, %r8
nop
nop
nop
nop
xor $7559, %r14
vmovaps (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 15, '46': 4, '45': 2}
00 46 00 00 00 00 46 45 00 46 45 00 00 46 00 00 00 00 00 00 00
*/
