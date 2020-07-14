.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1aa2c, %rax
nop
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%rax)
nop
and $8524, %r12
lea addresses_WC_ht+0xc7a4, %r9
sub $23505, %r15
mov (%r9), %r10d
nop
add $3330, %r10
lea addresses_WC_ht+0x19fac, %r8
mfence
movb $0x61, (%r8)
nop
nop
nop
nop
nop
sub $27544, %r15
lea addresses_UC_ht+0xfbac, %rsi
nop
and %rax, %rax
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x135ec, %rsi
lea addresses_WT_ht+0x77ac, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $44, %rcx
rep movsl
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax

// Faulty Load
lea addresses_D+0x77ac, %r9
nop
dec %r15
vmovntdqa (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'00': 68, '47': 35, '46': 12}
00 00 47 47 00 00 47 47 00 00 47 00 00 46 47 00 46 47 47 00 46 00 00 00 47 00 00 00 47 46 47 47 47 00 47 00 00 47 00 00 00 47 46 00 00 47 00 47 47 00 00 00 00 00 00 00 00 00 47 00 46 00 00 00 00 00 00 00 46 00 00 46 46 00 00 47 00 00 00 46 47 00 00 00 47 00 00 00 47 00 00 00 00 46 47 47 46 00 47 47 00 47 47 47 00 00 00 00 47 47 00 47 47 00 00
*/
