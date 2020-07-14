.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x81d1, %rsi
lea addresses_normal_ht+0x296d, %rdi
cmp $17152, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
and $62121, %r12
lea addresses_WC_ht+0xb8bd, %rsi
lea addresses_D_ht+0xa639, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $106, %rcx
rep movsq
nop
nop
nop
xor $48783, %r12
lea addresses_A_ht+0x10b61, %rsi
lea addresses_normal_ht+0xca1, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $96, %rcx
rep movsl
add %rsi, %rsi
lea addresses_D_ht+0xc141, %rcx
nop
nop
nop
nop
xor $18262, %r8
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
xor $57712, %r15
lea addresses_UC_ht+0x9c2a, %rcx
nop
nop
nop
xor $7502, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
sub $5582, %rbp
lea addresses_D_ht+0x17581, %r8
nop
nop
nop
cmp $25725, %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x5971, %rdi
clflush (%rdi)
nop
nop
nop
and $53422, %r8
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
xor %r12, %r12
lea addresses_D_ht+0xf9f1, %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r8), %bp
cmp %r8, %r8
lea addresses_A_ht+0x17b01, %rsi
lea addresses_WC_ht+0x9d61, %rdi
nop
nop
add %r10, %r10
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x15281, %rdi
nop
nop
nop
nop
nop
sub $49109, %r15
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x12f90, %r12
nop
nop
nop
nop
add %rdi, %rdi
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
xor $16155, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x12981, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
movb $0x51, (%rcx)
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_WT+0x12981, %rax
nop
nop
nop
nop
and %r10, %r10
mov (%rax), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 688, '51': 247}
00 00 51 51 00 51 51 00 00 00 00 00 51 00 51 00 00 51 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 51 00 51 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 51 00 00 51 00 00 00 00 00 00 51 00 00 00 51 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 51 51 00 00 51 00 00 51 00 00 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 51 00 00 51 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 51 51 00 00 51 00 00 00 00 00 00 00 51 00 00 51 00 00 51 00 00 51 00 00 00 51 00 51 51 00 51 00 51 00 51 00 51 51 00 00 51 51 00 00 00 00 00 00 00 51 00 51 00 00 51 00 00 00 51 51 51 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 51 51 00 00 00 00 51 51 00 00 51 00 00 51 00 00 51 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 00 51 51 00 51 00 00 00 00 51 00 00 00 51 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 51 00 00 51 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 51 51 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 51 00 51 00 51 51 51 00 51 00 00 00 51 00 51 51 00 00 00 00 00 00 00 51 00 51 51 51 00 00 51 00 00 00 00 51 00 00 51 00 00 51 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 51 00 00 00 00 51 51 51 00 51 51 00 00 00 00 51 51 00 51 00 00 00 00 51 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 51 00 51 51 51 51 51 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 00 51 00 00 00 51 00 00 00 00 51 00 00 00 00 00 51 00 51 51 00 00 00 00 51 00 00 00 00 51 51 00 51 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 51 51 51 00 00 51 00 00 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 51 00 51 51 00 51 00 00 51 00 51 00 00 51 00 00 00 51 00 00 00 51 00 51 51 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 51 00 51 00 00 00 00 51 51 00 00 00 00 51 00 00 00 51 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 51 00 51 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 51 51 00 00 00 51 51 00 00 00 00 00 00 00 00 51 51 51 00 51 51 00 00 51 51 00 00 00 00 00 51 00 00 51 00 00 51 00 00 51 00 00 00 00 00 51 51 00 00 51 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 51 00 51 00 00 51 00 00 00 00 00 00 51 00 00 51 00 00 00 51 51 51 51 00 00 00 00 51 51 00 00 51 51 51 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00
*/
