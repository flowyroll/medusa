.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8293, %rax
nop
nop
nop
and $48840, %r13
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
xor $34496, %r12
lea addresses_A_ht+0x18dcd, %rdx
nop
nop
nop
nop
xor $12730, %rbx
mov (%rdx), %r10
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x658d, %rdx
nop
dec %rax
movl $0x61626364, (%rdx)
xor $53823, %r12
lea addresses_D_ht+0x1892d, %r10
cmp $8544, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1e8ad, %r10
nop
dec %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xdb6d, %rsi
lea addresses_WT_ht+0x1954d, %rdi
nop
sub %rdx, %rdx
mov $87, %rcx
rep movsq
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xc18d, %r14
nop
nop
nop
nop
nop
sub $43163, %rbx
mov (%r14), %dx
nop
nop
dec %r13
lea addresses_WC_ht+0xe57d, %r12
nop
nop
cmp $3053, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x14bf9, %rcx
nop
nop
nop
nop
sub %rax, %rax
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
xor $61543, %rax
lea addresses_UC_ht+0x1c18d, %rdx
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1e5e1, %r14
sub $32593, %r13
mov $0x6162636465666768, %r12
movq %r12, (%r14)
add $63270, %rax
lea addresses_UC_ht+0x1358d, %r14
nop
dec %rax
movb $0x61, (%r14)
add $26990, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_WT+0x898d, %rdi
nop
nop
nop
nop
and $40468, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
cmp $19209, %rdi

// Store
mov $0x5c25050000000c3f, %rdi
xor %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
add %r8, %r8

// Faulty Load
lea addresses_WC+0xf98d, %r8
and $34165, %rcx
vmovntdqa (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'40': 122, '04': 1, 'ff': 4, '07': 9, '47': 2582, '00': 19111}
04 00 00 47 00 00 00 47 00 00 47 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 47 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 47 00 00 00 47 47 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 47 00 00 47 47 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 47 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 40 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 47 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 47 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 47 40 00 00 47 00 00 00 00 00 47 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 47 47 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00
*/
