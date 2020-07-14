.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x949f, %rsi
lea addresses_A_ht+0x16123, %rdi
nop
and $40739, %r9
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1df9f, %rdx
nop
nop
sub %r14, %r14
movb $0x61, (%rdx)
and %rdi, %rdi
lea addresses_UC_ht+0x329f, %rsi
nop
nop
sub %r14, %r14
mov (%rsi), %r9w
nop
add %rdi, %rdi
lea addresses_normal_ht+0x13a79, %rsi
lea addresses_normal_ht+0x171f, %rdi
nop
xor $21332, %r14
mov $115, %rcx
rep movsw
dec %rcx
lea addresses_WC_ht+0x1b91f, %rsi
lea addresses_normal_ht+0x11d1f, %rdi
nop
xor $56533, %r9
mov $88, %rcx
rep movsq
nop
nop
xor $50890, %rcx
lea addresses_UC_ht+0x11bd3, %rsi
nop
nop
nop
sub $6153, %rdx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
xor $58391, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi

// Faulty Load
mov $0xd1f, %rbp
nop
nop
inc %rax
movntdqa (%rbp), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'48': 12591, '47': 28, '44': 1561, '00': 7649}
48 00 00 48 44 48 00 48 48 48 48 48 00 48 00 48 48 48 00 00 00 48 00 44 00 48 48 48 00 00 00 48 00 48 48 00 44 48 48 48 48 48 00 44 00 48 48 48 48 44 48 48 48 48 48 48 44 48 48 00 48 44 48 48 48 48 00 48 44 48 48 00 48 48 00 48 44 48 48 00 48 48 00 00 00 48 00 00 48 00 00 48 00 48 48 48 48 44 00 00 48 00 48 48 44 44 48 48 48 00 00 48 00 48 00 48 48 48 48 48 00 00 48 48 00 00 44 48 48 00 48 48 00 48 44 00 00 00 48 00 48 44 44 48 48 48 48 00 00 48 48 00 48 48 44 44 00 48 48 00 48 48 48 44 48 48 00 00 48 47 44 00 48 00 48 00 48 48 48 00 48 48 00 44 48 00 48 00 48 00 00 48 48 00 00 00 00 48 00 00 48 00 48 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 00 00 48 00 48 48 48 48 48 00 48 00 48 48 44 00 00 48 48 48 48 00 44 00 48 00 48 48 48 48 48 00 48 48 44 00 00 48 48 44 48 44 48 48 48 48 00 48 48 00 44 00 48 00 48 00 48 00 48 48 48 48 48 00 00 44 00 48 00 00 48 48 48 00 00 48 00 00 48 44 00 00 44 48 48 48 48 44 44 48 48 00 48 48 00 00 44 00 48 00 48 48 44 00 00 00 00 00 48 00 00 48 48 00 48 48 48 48 00 00 48 00 48 48 00 00 00 48 48 00 48 00 00 48 00 48 48 48 48 00 00 48 00 00 00 48 00 48 48 48 48 48 00 48 00 48 48 00 48 48 00 48 00 48 48 48 48 00 00 44 00 48 00 00 44 48 00 48 00 48 44 00 48 48 48 48 00 00 00 00 48 48 48 00 00 48 48 00 44 00 48 48 48 48 00 48 48 48 00 48 48 44 00 48 00 44 48 00 44 48 48 48 48 00 48 00 48 00 48 48 00 00 48 00 48 44 44 48 48 00 48 00 48 00 48 00 44 44 48 48 00 48 00 00 48 00 48 48 48 00 44 44 00 48 00 48 00 48 48 48 48 00 00 00 00 00 48 48 48 48 00 00 00 44 48 48 00 48 48 48 48 48 48 00 48 48 48 44 48 48 00 00 44 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 44 48 48 00 00 00 44 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 00 00 00 48 48 00 48 48 00 48 48 00 00 44 48 00 48 48 00 00 00 48 00 00 00 48 00 00 48 44 48 00 00 00 00 00 48 00 00 48 00 48 48 00 48 48 00 48 00 00 48 48 48 00 48 48 48 00 44 00 48 48 00 00 00 48 48 48 48 00 44 00 48 00 48 48 00 48 48 48 00 44 48 00 00 00 00 48 48 00 00 48 48 48 00 44 48 48 48 48 48 47 00 00 48 48 48 48 00 00 48 00 48 44 00 00 48 00 48 00 48 48 48 00 48 44 00 48 48 00 00 48 48 48 48 00 00 48 48 48 00 48 48 48 00 00 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 00 48 48 48 48 00 48 48 48 48 48 00 00 44 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 00 48 48 48 48 48 00 00 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 44 48 00 00 48 48 00 00 48 00 48 48 48 48 44 48 00 00 48 00 00 48 48 48 48 48 00 48 48 48 00 00 00 44 00 48 00 00 00 44 00 48 00 48 48 44 00 48 00 48 00 00 48 00 48 48 00 44 48 44 48 00 00 48 00 48 48 00 00 48 44 48 00 00 48 00 48 44 48 48 48 00 00 00 48 48 48 48 48 00 48 00 44 44 48 00 00 48 48 00 00 48 00 00 48 48 00 48 48 44 00 48 00 48 00 48 48 48 44 48 44 48 48 48 48 48 44 48 48 00 00 00 00 00 48 48 48 48 48 00 48 48 00 44 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 00 00 48 44 48 48 00 48 48 48 00 00 48 00 48 00 44 48 48 48 00 48 00 00 48 48 48 48 00 00 00 48
*/
