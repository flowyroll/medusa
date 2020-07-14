.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rdi
lea addresses_A_ht+0x5412, %rax
nop
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
nop
and $10852, %rcx
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp

// Faulty Load
mov $0x251e10000000d82, %rax
nop
nop
nop
nop
sub $25260, %r8
vmovntdqa (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
