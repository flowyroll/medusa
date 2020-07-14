.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rdx
lea addresses_D_ht+0xdab9, %r13
nop
nop
nop
nop
nop
inc %rdx
mov (%r13), %ebp
nop
nop
add %rax, %rax
pop %rdx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbx
push %rcx
push %rdx

// Faulty Load
mov $0x77f8fd00000002bd, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
vmovntdqa (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
