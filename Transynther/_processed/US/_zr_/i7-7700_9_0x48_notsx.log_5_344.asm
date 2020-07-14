.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
lea addresses_normal_ht+0x1d933, %rbp
nop
nop
nop
sub $22898, %r10
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
sub %r9, %r9
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0xb723, %rbp
nop
nop
xor %rdx, %rdx
movb $0x51, (%rbp)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0x16a73, %rax
nop
nop
nop
dec %rcx
mov (%rax), %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'00': 5}
00 00 00 00 00
*/
