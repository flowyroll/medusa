.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd86, %rsi
lea addresses_normal_ht+0x1b0b7, %rdi
nop
nop
add %r10, %r10
mov $15, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xf4fb, %rcx
nop
nop
nop
nop
nop
cmp $48693, %r11
mov (%rcx), %r12d
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x200b, %rsi
nop
lfence
movb (%rsi), %r12b
nop
nop
nop
sub $36244, %r11
lea addresses_UC_ht+0x9e0b, %r14
nop
nop
nop
nop
nop
and $58228, %rcx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1600b, %rsi
lea addresses_WC_ht+0xa0b, %rdi
nop
xor $30243, %r13
mov $114, %rcx
rep movsl
nop
cmp %r14, %r14
lea addresses_WC_ht+0xb10b, %rsi
nop
nop
xor %rcx, %rcx
mov (%rsi), %r14
nop
nop
dec %r12
lea addresses_WC_ht+0x1ce4b, %rsi
lea addresses_UC_ht+0x1a96b, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $101, %rcx
rep movsw
nop
nop
nop
nop
add $14892, %rsi
lea addresses_UC_ht+0x5c0b, %rsi
lea addresses_WC_ht+0x1a70b, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $87, %rcx
rep movsw
nop
nop
nop
nop
add $40907, %r10
lea addresses_WT_ht+0x16bf1, %rsi
lea addresses_WT_ht+0x720b, %rdi
nop
nop
nop
nop
and $59, %r10
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0xcc0b, %rcx
nop
nop
and $50163, %r11
movb $0x61, (%rcx)
nop
sub $50194, %rsi
lea addresses_WT_ht+0x16b8b, %rsi
lea addresses_UC_ht+0x610b, %rdi
nop
sub $45209, %r13
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x1640b, %rdi
nop
add $35860, %r14
movb (%rdi), %cl
nop
nop
nop
nop
cmp $52978, %r14
lea addresses_D_ht+0x12a0b, %rcx
nop
nop
and $4689, %r10
movw $0x6162, (%rcx)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x13a0b, %r14
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r14)
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x2e0b, %rax
dec %r14
movaps (%rax), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'47': 1, '44': 963, 'ff': 1, '49': 3788, '00': 17076}
49 00 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 49 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 49 00 00 44 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 44 00 00 00 44 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 00 00 00 44 49 00 00 49 49 00 00 00 00 00 44 00 00 00 44 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 44 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 49 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 49 00 00 00 49 00 00 00 44 00 00 00 00 44 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 44 00 00 00 00 44 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 44 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
