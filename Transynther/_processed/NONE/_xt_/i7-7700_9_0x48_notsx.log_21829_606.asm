.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x291d, %r10
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
xor $22069, %r8
lea addresses_UC_ht+0x2ad1, %r10
nop
nop
nop
nop
add $35813, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %r10
movntdq %xmm7, (%r10)
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1199d, %rsi
lea addresses_WC_ht+0x1e89d, %rdi
clflush (%rdi)
nop
nop
nop
add $28203, %r14
mov $119, %rcx
rep movsb
cmp $41193, %rdi
lea addresses_D_ht+0x1819d, %rsi
nop
nop
nop
nop
add $28983, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xf29d, %rcx
sub $6800, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x1acc9, %rdi
nop
xor %r10, %r10
movb (%rdi), %cl
nop
dec %rdi
lea addresses_D_ht+0x11d, %rax
nop
nop
nop
nop
xor $34508, %r14
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x299d, %rsi
lea addresses_normal_ht+0x420d, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $109, %rcx
rep movsb
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x168ed, %rsi
lea addresses_UC_ht+0x8c1d, %rdi
nop
nop
nop
add %rax, %rax
mov $75, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_UC_ht+0x832d, %rsi
lea addresses_WT_ht+0x8de5, %rdi
clflush (%rdi)
nop
and %rax, %rax
mov $118, %rcx
rep movsq
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x2b5d, %r14
nop
nop
nop
nop
nop
inc %r8
mov (%r14), %ax
nop
nop
nop
nop
and $53536, %rsi
lea addresses_UC_ht+0x10add, %rsi
nop
nop
nop
nop
xor $59886, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
xor $42855, %rdi
lea addresses_UC_ht+0xcf9d, %rsi
lea addresses_UC_ht+0x1445d, %rdi
clflush (%rdi)
nop
nop
cmp %r15, %r15
mov $121, %rcx
rep movsl
and $47494, %r14
lea addresses_A_ht+0xe19d, %r14
nop
nop
nop
sub $54991, %rdi
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
dec %r15
lea addresses_UC_ht+0x1abd5, %rdi
nop
nop
nop
and $22875, %r15
movl $0x61626364, (%rdi)
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1119d, %rsi
lea addresses_UC+0x1399d, %rdi
nop
nop
nop
inc %r10
mov $5, %rcx
rep movsw
nop
nop
nop
nop
nop
add $62809, %r15

// Store
lea addresses_WT+0x191e3, %r9
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
inc %r9

// Store
lea addresses_UC+0xb8ba, %r9
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r9)
nop
nop
cmp $33436, %r9

// Faulty Load
lea addresses_A+0x1119d, %r15
nop
nop
nop
nop
nop
sub $31442, %rdi
movb (%r15), %cl
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
