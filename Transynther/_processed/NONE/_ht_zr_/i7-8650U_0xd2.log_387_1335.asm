.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x32bf, %rsi
lea addresses_D_ht+0x1274f, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $5, %rcx
rep movsq
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x156bf, %rsi
lea addresses_D_ht+0x13abf, %rdi
nop
nop
nop
and $39286, %r12
mov $116, %rcx
rep movsq
nop
nop
nop
xor $52544, %rcx
lea addresses_WC_ht+0xc03f, %rsi
lea addresses_WT_ht+0x146bf, %rdi
nop
nop
and $48788, %r10
mov $56, %rcx
rep movsl
nop
nop
xor $43729, %rcx
lea addresses_D_ht+0x32f7, %rsi
lea addresses_D_ht+0xd9e3, %rdi
nop
nop
nop
nop
inc %r10
mov $61, %rcx
rep movsw
nop
cmp $19416, %r12
lea addresses_WT_ht+0x253f, %rcx
inc %rdx
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x13dbf, %rsi
inc %rdi
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x46bf, %rdi
nop
nop
cmp %r10, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
add $4317, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x96bf, %r13
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 163, '44': 41, '46': 96, '49': 87}
00 44 46 49 44 49 49 49 44 46 46 44 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 46 49 49 46 00 00 00 46 00 49 46 46 00 46 44 00 44 46 44 49 46 49 46 49 00 49 49 44 46 49 49 46 49 44 46 49 49 00 46 49 49 46 00 00 46 49 49 44 46 44 46 46 44 46 49 00 44 46 00 46 46 44 46 49 49 46 00 49 00 46 44 49 46 46 49 49 44 46 00 00 00 00 00 44 46 46 49 49 00 00 00 46 00 49 00 46 00 44 46 49 00 00 49 00 00 00 00 46 44 46 49 44 46 46 49 46 49 49 49 44 46 49 44 46 46 49 46 49 49 49 46 00 49 46 46 44 49 00 46 49 00 46 00 00 46 44 46 49 00 49 00 46 44 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 44 46 00 00 49 49 49 49 44 46 00 00 00 46 49 46 49 46 00 44 49 46 49 49 00 00 49 49 00 49 44 00 46 49 00 00 00 00 46 49 46 00 00 49 49 46 00 46 00 00 46 00 00 49 44 46 46 44 49 46 00 00 46 49 46 46 00 00 00 49 44 46 46 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 49 49 00 00 46 49 00 00 49 46 00 46 00 44 44 46 46 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 46 44 46 49 00 00 44 46 44 46 00 49 46 00 00 46 46 46 49 46 46 00 44 44 46 00 49 49 00 00 44 00 49 49 00 46
*/
