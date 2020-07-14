.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a0cb, %r9
nop
sub $44996, %rbx
movb (%r9), %cl
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x2d35, %rsi
lea addresses_WC_ht+0x18455, %rdi
nop
cmp %r9, %r9
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $40193, %rdi
lea addresses_D_ht+0x8e2b, %rdi
sub %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xf055, %rsi
lea addresses_WT+0x1455, %rdi
add %r8, %r8
mov $106, %rcx
rep movsq
nop
nop
nop
nop
and $5213, %rsi

// Store
lea addresses_RW+0xe6cd, %rcx
nop
nop
nop
dec %r10
movl $0x51525354, (%rcx)
xor %r10, %r10

// Store
lea addresses_normal+0xeca5, %rcx
nop
nop
cmp $4977, %r15
movb $0x51, (%rcx)
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_normal+0x4c55, %r9
nop
nop
nop
nop
nop
add $63199, %r15
vmovaps (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
