.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1935a, %r8
nop
nop
nop
sub $53270, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x194de, %rsi
lea addresses_WT_ht+0x144de, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $84, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1acde, %r10
nop
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
nop
sub $49515, %rdi
lea addresses_D_ht+0xf120, %r8
nop
nop
nop
nop
nop
add $64299, %rdx
movb $0x61, (%r8)
nop
nop
nop
and $37321, %rsi
lea addresses_D_ht+0x21de, %rsi
lea addresses_WT_ht+0x68de, %rdi
nop
nop
nop
dec %rbx
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x11ede, %rsi
lea addresses_WC_ht+0xad96, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $61042, %r8
mov $125, %rcx
rep movsq
nop
nop
nop
nop
nop
and $57345, %rdx
lea addresses_WT_ht+0x17cde, %rbx
nop
nop
nop
nop
nop
inc %r8
mov (%rbx), %rdx
cmp $34204, %rsi
lea addresses_A_ht+0xe9b6, %rsi
lea addresses_D_ht+0xdb18, %rdi
nop
nop
inc %rdx
mov $50, %rcx
rep movsq
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Load
lea addresses_D+0x24de, %r14
nop
nop
add %r10, %r10
mov (%r14), %rdi
nop
nop
sub %rbp, %rbp

// Load
mov $0xade, %r13
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%r13), %r14
nop
nop
nop
sub $56781, %r13

// Store
lea addresses_normal+0x696e, %r9
nop
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%r9)
nop
cmp $55024, %rdi

// Faulty Load
lea addresses_D+0x24de, %rbp
nop
xor %r13, %r13
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'48': 9526, 'ff': 1, '46': 2366, '49': 2962, '45': 551, '00': 6420, '4b': 3}
00 48 00 48 45 48 49 49 46 00 48 48 48 48 00 49 46 00 48 48 48 48 48 49 49 00 00 00 00 48 45 46 46 00 48 00 48 00 49 49 00 00 48 48 00 48 49 49 46 00 00 48 00 48 45 49 46 48 00 00 48 48 48 48 45 49 46 00 00 48 48 00 49 46 46 48 48 00 00 48 48 49 46 48 00 48 48 48 00 45 49 46 00 00 00 00 48 48 49 46 00 00 00 48 48 49 46 49 49 46 49 00 00 00 48 48 48 48 49 46 46 00 00 00 48 00 48 48 48 45 46 00 00 48 48 48 49 48 00 00 48 48 48 49 49 46 48 00 48 48 48 00 45 49 46 48 48 48 00 48 00 00 49 46 49 46 00 00 48 48 48 49 46 48 48 48 48 48 48 49 49 46 48 00 00 48 48 48 49 46 48 48 00 48 48 00 00 48 49 46 00 00 48 48 48 48 48 49 49 48 00 00 48 48 48 48 49 46 48 00 00 00 48 48 00 49 46 48 00 48 48 48 48 48 49 48 00 48 48 48 48 00 49 46 00 48 48 48 49 00 00 48 00 48 48 00 49 46 00 00 00 00 48 49 46 00 00 48 00 49 46 00 48 48 48 00 48 48 49 46 00 48 48 00 45 49 46 49 49 46 00 48 48 48 48 48 49 46 48 00 48 48 48 49 46 48 48 48 48 48 48 48 00 49 46 00 00 48 48 48 00 46 46 00 00 00 48 48 00 45 49 46 00 48 00 48 48 49 49 48 48 00 00 00 00 48 48 45 49 46 00 00 00 00 48 48 48 49 46 00 48 00 48 45 45 49 00 00 48 00 48 48 00 49 46 46 48 00 00 48 48 48 48 48 49 46 46 48 48 48 49 00 00 48 00 48 48 49 00 00 00 48 00 48 00 45 49 48 48 48 48 00 48 49 49 00 48 48 48 00 48 49 46 48 48 00 00 49 46 00 00 00 00 00 00 49 00 00 48 48 00 49 00 48 00 00 00 48 49 46 48 00 48 00 00 48 00 49 00 48 00 00 00 48 46 46 48 48 48 48 48 49 46 49 48 00 48 48 00 49 46 00 48 48 00 48 48 49 49 48 00 48 48 48 48 00 49 46 00 48 00 00 00 49 46 00 48 00 48 48 48 48 49 46 00 48 48 00 48 48 00 48 48 49 49 48 00 48 00 00 00 49 00 00 48 00 48 48 00 49 46 48 00 48 48 48 48 49 46 00 00 48 48 48 00 48 45 49 46 00 48 00 00 48 48 49 46 00 00 48 48 00 00 00 45 46 49 48 48 48 00 45 00 49 46 00 48 48 48 48 48 00 49 46 00 00 48 00 48 49 46 46 00 00 00 48 49 49 46 00 00 48 48 45 46 00 48 48 00 48 48 48 49 48 48 00 48 48 00 49 46 00 48 48 48 48 00 49 46 00 48 00 48 48 00 48 00 48 48 48 48 48 00 49 46 00 48 48 48 48 00 49 46 00 00 48 00 00 48 48 49 46 00 00 48 00 48 48 48 49 49 46 48 00 48 00 48 00 49 46 00 48 48 48 48 48 49 46 00 00 48 48 48 46 48 00 00 00 48 48 49 00 48 48 49 48 48 00 48 48 00 46 46 00 48 48 48 00 48 48 45 46 48 00 48 48 48 48 48 45 46 00 48 48 48 48 48 00 46 46 00 48 00 00 00 49 48 48 48 48 48 48 48 49 46 46 49 46 00 48 48 48 49 46 00 00 48 48 48 48 49 00 48 48 45 49 46 00 48 48 48 00 49 46 00 48 00 00 48 48 48 49 49 46 00 00 00 00 48 49 46 00 00 00 48 48 00 49 00 48 48 48 48 48 00 48 45 49 00 48 48 48 48 48 48 00 48 49 00 48 48 48 00 48 48 49 48 00 48 48 00 49 46 49 00 00 48 00 48 48 48 49 48 48 48 00 48 48 48 49 46 00 48 48 48 48 00 48 49 46 48 48 00 00 45 49 48 00 00 00 48 00 00 49 46 46 00 00 00 00 48 48 48 48 48 49 00 00 48 48 48 48 48 49 49 46 00 48 48 00 48 00 48 45 49 46 00 48 48 00 48 00 45 49 00 00 00 48 48 48 49 46 00 48 00 48 48 00 46 00 48 48 49 46 46 48 48 48 48 48 48 49 46 46 48 00 00 48 45 48 49 46 48 00 00 00 48 48 48 48 48 48 48 49 46 48 48 48 48 48 45 49 48 00 00 00 48 48 45 46
*/
