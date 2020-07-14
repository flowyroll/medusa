.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa00c, %rsi
clflush (%rsi)
nop
nop
nop
and $50858, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
add $11446, %rsi
lea addresses_normal_ht+0xa00c, %rsi
lea addresses_WT_ht+0x1a3cc, %rdi
nop
nop
inc %r14
mov $77, %rcx
rep movsl
nop
nop
nop
nop
sub $59556, %rsi
lea addresses_UC_ht+0x10c20, %r15
nop
cmp %rdi, %rdi
mov (%r15), %rcx
nop
nop
inc %r14
lea addresses_UC_ht+0x1aa0c, %rsi
lea addresses_D_ht+0x179b4, %rdi
nop
nop
sub %r10, %r10
mov $113, %rcx
rep movsw
nop
nop
and $18164, %r10
lea addresses_WT_ht+0x46bc, %r14
nop
nop
and $61292, %rsi
movb $0x61, (%r14)
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x18c0c, %r9
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %r9
movaps %xmm5, (%r9)
nop
nop
nop
nop
nop
xor $58582, %r15
lea addresses_D_ht+0x1484c, %r10
nop
nop
nop
nop
nop
sub $63785, %rsi
movb (%r10), %r15b
nop
nop
nop
nop
nop
and $42754, %r15
lea addresses_D_ht+0xe98a, %r10
nop
nop
nop
and $41901, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xfdac, %rsi
lea addresses_WC_ht+0x1182c, %rdi
nop
nop
nop
dec %rdx
mov $27, %rcx
rep movsl
nop
nop
nop
nop
cmp $40836, %rcx
lea addresses_normal_ht+0x40c, %r15
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1cb84, %rsi
lea addresses_UC_ht+0x884c, %rdi
add $30223, %r15
mov $34, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1d50c, %rsi
lea addresses_UC_ht+0x133c4, %rdi
clflush (%rdi)
nop
nop
sub %rdx, %rdx
mov $87, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x3c0c, %rsi
lea addresses_D_ht+0x1120c, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xa289, %rsi
mov $0x8ec, %rdi
nop
sub %r13, %r13
mov $104, %rcx
rep movsw
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
mov $0x68a1d30000000c0c, %r15
inc %r14
movntdqa (%r15), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'45': 22, '49': 2, '00': 18128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
