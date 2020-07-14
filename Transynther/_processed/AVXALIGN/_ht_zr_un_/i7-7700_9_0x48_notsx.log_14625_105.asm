.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5128, %rdx
nop
sub $26641, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
xor $42013, %r13
lea addresses_D_ht+0x5428, %r13
cmp $42462, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r13
movntdq %xmm7, (%r13)
sub $46266, %r13
lea addresses_D_ht+0x9768, %rcx
nop
nop
nop
and %r12, %r12
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
xor $37099, %rdx
lea addresses_UC_ht+0x7128, %rsi
lea addresses_WT_ht+0xe128, %rdi
clflush (%rdi)
nop
nop
and $38869, %rdx
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $51441, %rcx
lea addresses_D_ht+0x1b628, %rax
nop
nop
cmp %r13, %r13
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xc0ac, %rax
nop
cmp $1699, %rdx
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x9528, %rsi
lea addresses_WT_ht+0x1a428, %rdi
nop
nop
nop
inc %r9
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0xfc68, %rsi
lea addresses_D_ht+0x183a8, %rdi
nop
nop
nop
inc %r12
mov $106, %rcx
rep movsw
xor $63396, %r12
lea addresses_WT_ht+0xc128, %rsi
lea addresses_D_ht+0x1ea8, %rdi
sub %r12, %r12
mov $85, %rcx
rep movsw
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x5c28, %rsi
and $12628, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
xor $63382, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x1a928, %rbx
nop
nop
nop
add %r15, %r15
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'4a': 2, '48': 2437, 'ff': 1, '8b': 1, '46': 2720, '49': 1, '00': 9453, 'd3': 1, '13': 1, '09': 1, '76': 1, '2b': 1, 'fd': 1, '5c': 1, '41': 1, 'c5': 1, '91': 1}
00 00 46 00 48 00 48 00 00 46 00 00 00 48 00 46 00 00 48 00 00 00 00 46 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 48 48 00 48 00 46 00 00 00 46 46 00 00 46 46 00 00 46 00 48 00 00 46 00 00 46 48 00 46 46 48 00 00 00 48 00 00 00 00 46 00 46 48 00 48 00 48 00 00 48 00 00 00 48 48 00 00 46 00 48 00 48 48 00 00 00 00 00 00 46 00 46 00 48 00 00 00 00 00 00 00 48 00 00 00 46 48 00 00 00 00 00 00 48 00 48 00 46 00 48 00 46 00 00 00 00 00 00 46 00 00 00 00 48 00 00 00 46 48 48 00 46 46 00 00 00 00 46 48 00 46 00 46 00 46 00 46 00 48 00 00 00 48 00 00 48 00 48 00 00 00 48 00 00 46 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 48 00 46 00 48 00 46 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 46 00 48 48 00 46 00 00 00 46 00 00 48 00 46 48 00 00 00 00 00 48 00 48 00 00 00 00 00 46 00 00 00 46 48 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 48 00 00 46 48 00 00 00 00 00 46 00 46 00 00 00 00 46 00 48 48 00 00 00 46 00 46 00 00 46 00 46 00 00 00 46 00 48 00 48 00 48 00 00 00 00 00 00 46 00 00 46 00 46 00 00 00 46 00 00 00 00 46 46 00 00 46 00 48 46 46 46 00 00 00 00 00 00 00 00 46 00 00 48 00 46 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 48 48 00 48 00 00 00 46 00 00 00 46 00 48 48 00 46 00 48 48 00 46 00 46 00 00 48 00 00 00 00 46 00 46 48 00 46 00 00 46 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 46 00 48 00 00 48 00 00 46 00 00 46 00 00 46 00 00 00 48 00 48 00 46 00 00 00 46 00 46 00 00 00 48 48 00 00 48 00 00 48 00 46 00 46 46 00 00 46 46 00 00 00 00 48 00 46 48 48 00 00 48 00 46 00 00 46 46 00 46 00 00 46 00 48 00 48 00 00 46 00 48 00 00 48 00 00 00 00 48 00 00 46 46 46 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 48 00 00 00 00 48 48 00 00 46 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 46 00 48 00 00 00 46 00 00 48 48 00 00 46 00 00 00 00 00 00 00 00 48 00 46 00 48 4a 00 48 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 46 48 00 00 46 00 00 00 48 00 48 00 00 48 00 00 46 00 48 48 00 46 48 00 00 48 00 46 00 00 00 48 00 46 00 00 46 46 00 46 46 00 46 00 48 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 48 48 00 00 00 00 00 46 00 46 48 00 46 46 00 00 48 00 00 48 48 48 00 48 00 48 00 48 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 48 48 00 00 46 00 48 00 46 00 00 00 00 00 00 48 00 00 46 48 00 48 00 00 46 00 00 48 00 00 00 46 00 00 00 00 00 00 00 00 46 00 48 00 00 00 00 00 00 00 46 46 00 46 00 46 00 46 48 00 46 00 00 48 48 00 00 00 48 00 48 00 48 00 46 48 00 00 00 46 46 00 00 48 00 00 46 00 48 00 48 00 48 00 00 00 00 46 00 00 00 00 46 00 00 46 00 46 00 00 48 00 48 46 00 00 00 00 46 00 00 00 00 48 48 00 46 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 48 00 48 00 48 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 48 48 00 00 46 48 00 00 00 46 00 48 00 46 00 00 00 00 48 00 00 48 00 00 00 00 00
*/
