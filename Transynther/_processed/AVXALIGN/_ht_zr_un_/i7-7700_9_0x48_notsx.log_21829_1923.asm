.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd092, %r8
nop
nop
nop
nop
sub $30020, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %r8
movaps %xmm0, (%r8)
xor $55381, %rdi
lea addresses_A_ht+0x7e92, %r10
nop
and $57618, %r12
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
nop
and $56642, %r10
lea addresses_A_ht+0x197f2, %rsi
lea addresses_D_ht+0xa9c0, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $51, %rcx
rep movsl
nop
nop
sub $14627, %r10
lea addresses_D_ht+0x13702, %rdi
clflush (%rdi)
nop
nop
nop
and $62323, %r12
mov (%rdi), %si
dec %r8
lea addresses_WC_ht+0x3924, %rsi
lea addresses_A_ht+0x16e92, %rdi
nop
nop
xor $22000, %r8
mov $99, %rcx
rep movsq
and $63053, %r12
lea addresses_D_ht+0xa492, %r15
nop
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
cmp $55757, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x1b16a, %r10
nop
cmp %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r10)
nop
add $5205, %r15

// Faulty Load
mov $0x692, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'48': 16572, 'ff': 1, '46': 528, '45': 456, '00': 4272}
00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 46 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 45 48 48 45 48 00 48 48 48 48 48 48 48 00 00 45 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 46 48 00 48 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 45 48 00 48 48 48 48 00 48 48 00 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 45 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 45 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 48 46 00 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 00 45 00 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 45 48 48 48 48 48 48 48 48 00 48 00 48 00 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 46 48 48 48 48 48 48 48 00 48 46 45 48 48 00 48 00 48 48 48 48 00 48 48 00 00 46 48 00 48 48 00 48 48 00 00 48 48 00 46 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 00 48 48 48 00 48 48 48 45 48 48 48 00 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 45 46 48 48 48 48 48 48 48 48 48 45 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 46 00 00 48 48 48 00 48 46 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 00 00 48 48 48 48 00 48 48 00 48 48 48 00 48 00 48 45 48 48 48 48 00 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 45 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 00 48 00 48 48 48 00 48 00 48 00 48 48 48 48 00 45 00 48 48 48 48 48 48 48 48 48 45 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 46 48 46 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 00 48 48 00 45 48 48 48 48 48 48 48 48 48 48 00 46 48 48 46 48 48 48 48 48 48 48 45 48 00 48 48 48 48 45 48 46 48 48 00 48 00 00 00 48 00 00 46 48 48 00 00 48 48 48 48 48 00 48 48 48 46 48 48 48 48 48 48 48 45 48 00 48 48 00 00 48 48 48 48 48 48 48 00 48 48 46 48 48 48 48 48 45 48 45 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 45 48 48 00 45 48 00 00 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 00 48 48 48 00 45 48 00 45 46 48 48 48 48 48 48 48 48 00 48 46 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 46 48 48 00 00 48 00 48 45 48 48 48 00 46 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48
*/
