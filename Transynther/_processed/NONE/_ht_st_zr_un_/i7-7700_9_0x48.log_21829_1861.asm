.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x148de, %rdi
nop
nop
nop
inc %r12
mov (%rdi), %ax
cmp %rdx, %rdx
lea addresses_WC_ht+0x97be, %rcx
nop
nop
cmp $40756, %rbx
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x603e, %rsi
lea addresses_WT_ht+0xdabe, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $102, %rcx
rep movsb
nop
nop
nop
nop
cmp $5292, %rbx
lea addresses_normal_ht+0x1dbe, %rsi
lea addresses_WT_ht+0x48, %rdi
nop
nop
and $29051, %r12
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0xaabe, %rsi
lea addresses_WT_ht+0x1a5b3, %rdi
cmp $21977, %r13
mov $32, %rcx
rep movsl
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x3, %rsi
lea addresses_UC_ht+0x1c1de, %rdi
nop
nop
nop
nop
nop
xor $34262, %r13
mov $81, %rcx
rep movsl
nop
nop
nop
nop
xor $52034, %rax
lea addresses_UC_ht+0x1b6e3, %r13
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r13)
nop
xor %rbx, %rbx
lea addresses_D_ht+0x111fe, %r13
nop
nop
nop
nop
dec %r12
mov (%r13), %rsi
nop
nop
nop
and $58790, %r13
lea addresses_WC_ht+0x5a3e, %rdx
nop
nop
cmp $5838, %rbx
mov (%rdx), %r13
nop
nop
nop
nop
xor $2627, %r13
lea addresses_WT_ht+0xcc3e, %rsi
lea addresses_D_ht+0xafae, %rdi
nop
nop
cmp %r13, %r13
mov $58, %rcx
rep movsl
xor $3467, %r13
lea addresses_WC_ht+0x80fe, %r12
nop
nop
nop
sub $12010, %rdi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
add $61808, %r12
lea addresses_UC_ht+0x1997e, %r12
nop
nop
nop
xor $60552, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rsi

// Faulty Load
lea addresses_WC+0xb43e, %r13
nop
nop
nop
nop
cmp %r12, %r12
movups (%r13), %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'53': 522, 'fc': 1, '47': 1, '48': 29, 'f0': 6507, '01': 463, '00': 333, '46': 600, 'b0': 5, 'ff': 10142, 'd0': 2, '49': 1273, 'b1': 11, '44': 1939, 'd8': 1}
49 ff f0 ff f0 ff f0 ff f0 ff ff 01 ff f0 44 ff 49 ff f0 ff f0 ff f0 ff f0 ff 49 ff ff 01 46 ff f0 00 ff ff f0 ff f0 ff f0 53 ff ff f0 00 00 ff 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff ff f0 46 ff f0 ff 49 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff ff f0 44 ff ff f0 ff f0 ff f0 00 ff 49 ff f0 44 ff 49 ff f0 ff f0 44 ff f0 ff f0 ff f0 44 ff 49 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff 44 ff f0 ff f0 ff 53 ff f0 53 ff f0 ff 53 ff f0 ff 49 ff f0 ff f0 44 fc 46 ff ff f0 ff f0 44 ff ff f0 44 ff f0 00 49 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 53 ff f0 ff f0 44 ff f0 ff f0 ff f0 ff ff ff f0 ff f0 ff f0 ff ff f0 44 ff f0 49 00 ff ff f0 44 44 ff f0 49 ff f0 ff f0 ff f0 47 ff f0 ff f0 44 44 49 00 ff 44 ff f0 ff 49 ff f0 ff ff 49 ff f0 ff f0 ff 49 ff f0 ff f0 ff f0 ff 49 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff 53 ff f0 ff f0 49 53 ff f0 ff f0 ff f0 00 ff 53 ff f0 ff f0 ff ff f0 ff f0 44 ff ff f0 ff f0 ff f0 49 ff ff f0 ff f0 46 49 ff ff f0 ff f0 ff ff f0 46 ff f0 ff ff f0 ff f0 ff f0 ff 49 ff f0 44 44 44 49 ff f0 44 ff f0 ff ff ff f0 ff f0 ff ff f0 ff f0 ff f0 ff f0 44 ff f0 ff 53 ff f0 ff f0 ff f0 49 49 44 ff f0 ff f0 ff ff 46 44 ff 49 ff f0 44 ff f0 ff ff f0 46 ff f0 ff 49 ff 49 46 ff f0 ff ff ff f0 44 ff ff f0 44 ff ff ff ff 01 ff 01 ff 01 ff 01 46 ff f0 ff 44 ff 01 ff 44 ff 49 ff 01 ff 01 ff 01 ff 01 ff 01 ff 01 49 ff f0 44 ff f0 ff ff f0 ff f0 ff f0 ff ff 01 ff 01 44 ff 44 ff f0 ff ff 01 ff 46 ff 01 ff 01 ff 01 ff 01 44 ff f0 ff ff 01 44 ff ff 01 ff 01 ff 01 ff 01 ff f0 ff ff 01 44 ff 49 ff f0 44 46 ff 44 ff 53 ff f0 ff 49 ff f0 ff f0 44 ff ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff 49 ff 44 ff 49 ff f0 44 ff f0 00 ff 53 ff f0 44 53 ff ff f0 44 ff 53 ff f0 ff f0 ff f0 ff 44 44 00 ff f0 ff f0 46 44 ff 49 ff ff f0 ff ff 00 ff ff f0 00 49 00 ff f0 44 ff f0 44 ff f0 ff f0 53 ff f0 ff ff ff f0 ff f0 44 ff 49 ff f0 44 ff f0 ff ff f0 ff f0 ff f0 ff ff 44 ff f0 ff 49 49 ff f0 ff f0 ff ff ff f0 ff f0 ff f0 ff ff f0 46 ff f0 ff 49 ff f0 ff f0 53 ff ff f0 46 53 ff f0 ff f0 ff ff ff ff f0 ff f0 44 ff 49 ff f0 ff f0 44 ff ff f0 ff f0 ff f0 ff 49 ff f0 44 46 ff ff f0 ff f0 ff f0 ff f0 44 ff ff f0 44 44 ff ff f0 44 ff 53 49 ff f0 46 ff ff ff f0 46 ff f0 ff f0 53 44 44 ff f0 ff ff f0 46 ff f0 ff f0 ff 53 ff f0 ff f0 ff ff 53 44 ff f0 44 ff 49 00 ff f0 53 ff f0 ff f0 44 44 ff f0 ff ff ff f0 ff ff f0 ff 53 ff f0 ff f0 ff f0 44 ff ff ff 01 44 ff f0 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff ff f0 44 ff f0 ff ff ff 01 ff 01 49 49 ff f0 ff f0 ff f0 53 ff f0 ff 49 49 ff f0 ff f0 ff f0 44 ff f0 ff f0 44 ff ff f0 53 ff f0 ff 49 ff f0 ff f0 ff f0 ff f0 44 ff f0 ff f0 49 ff f0 ff f0 44 00 ff ff f0 44 ff f0 00 ff 49 ff b1 44 ff f0 49 ff f0 ff f0 44 49 ff f0 ff 44 ff f0 ff 53 ff f0 44 53 44 49 00 ff f0 ff f0 ff f0 44 ff ff f0 ff f0 44 00 49 49 ff f0 ff f0 ff f0 ff f0 ff f0 ff f0 ff 49 ff f0 ff f0 ff ff ff f0 53 ff f0 ff f0 ff f0 ff f0 ff 49 ff f0 46 44 44 ff 49 ff f0 ff 01 ff f0 ff ff f0 ff f0 ff f0 ff 53 ff f0 ff f0 ff f0 ff ff f0 ff f0 ff f0 ff f0 ff f0 ff
*/
