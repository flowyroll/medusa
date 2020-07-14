.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xfa27, %rsi
mov $0x1bf, %rdi
nop
xor $20409, %rax
mov $70, %rcx
rep movsb
nop
nop
nop
and $33973, %rdi

// Faulty Load
lea addresses_A+0x152bf, %rdi
nop
nop
nop
nop
nop
dec %rbp
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'2d': 1, '80': 1, 'ff': 1, 'd0': 2, '00': 35}
00 00 00 00 00 00 2d 00 00 00 ff 00 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 d0 00 00 00
*/
