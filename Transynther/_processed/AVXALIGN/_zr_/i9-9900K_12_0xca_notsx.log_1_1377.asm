.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdi
lea addresses_A_ht+0xd337, %r10
nop
nop
nop
nop
nop
and $11802, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r10)
nop
cmp $49549, %rbp
lea addresses_WC_ht+0x15603, %r9
nop
nop
nop
sub $2736, %r8
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
and $2783, %r10
lea addresses_WT_ht+0x16f83, %r15
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %r15
vmovntdq %ymm0, (%r15)
nop
nop
nop
nop
sub %r15, %r15
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x958b, %r9
nop
nop
nop
nop
cmp $60540, %r8
movb $0x51, (%r9)
nop
nop
xor $19199, %rdi

// REPMOV
lea addresses_D+0xae43, %rsi
lea addresses_RW+0x10f83, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $41587, %r15
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_RW+0x10f83, %rbx
nop
nop
nop
nop
nop
inc %rcx
vmovntdqa (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'00': 1}
00
*/
