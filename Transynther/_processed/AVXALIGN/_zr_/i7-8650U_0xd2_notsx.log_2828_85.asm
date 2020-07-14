.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_WC_ht+0x17d61, %r8
sub %r14, %r14
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
dec %rsi
lea addresses_WC_ht+0x8185, %rbp
nop
sub $45938, %r10
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x9161, %rsi
nop
nop
nop
xor $10147, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x15dc1, %rsi
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rsi)
xor $40981, %rcx
lea addresses_normal_ht+0x30e1, %rbp
sub %rcx, %rcx
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x10161, %rbp
dec %r8
movb (%rbp), %cl
nop
nop
and $5792, %rdx
lea addresses_D_ht+0x198f1, %r10
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r10)
nop
nop
cmp $41493, %rcx
lea addresses_WT_ht+0x1d209, %rcx
nop
nop
nop
nop
nop
inc %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $25401, %rcx
lea addresses_WC_ht+0x8965, %rcx
nop
nop
cmp %rsi, %rsi
mov (%rcx), %rdx
nop
nop
dec %r10
lea addresses_D_ht+0x18761, %r8
nop
nop
nop
nop
cmp $17739, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x17501, %rbp
nop
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1a421, %r14
nop
nop
nop
nop
nop
inc %r8
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
xor $28733, %rsi
lea addresses_WC_ht+0x4671, %r8
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r8), %dl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x19705, %r14
nop
nop
nop
nop
nop
dec %rcx
mov (%r14), %r8
nop
nop
nop
nop
nop
add $30365, %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x9161, %rax
nop
nop
cmp $43186, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_UC+0x9161, %r10
nop
nop
nop
xor $3239, %rbp
vmovaps (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'00': 2828}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
