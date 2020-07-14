.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x120ce, %rsi
lea addresses_normal_ht+0x1c9ce, %rdi
nop
add %r11, %r11
mov $58, %rcx
rep movsb
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_A+0xe2ce, %r12
nop
add %rcx, %rcx
vmovaps (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'08': 1, '00': 11}
00 00 00 00 00 00 00 00 00 00 00 08
*/
