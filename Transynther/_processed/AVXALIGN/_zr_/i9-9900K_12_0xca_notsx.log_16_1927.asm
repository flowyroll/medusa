.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_A_ht+0x18786, %r11
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%r11), %rbp
nop
nop
nop
nop
and $7760, %rcx
lea addresses_UC_ht+0x9886, %rsi
nop
nop
nop
nop
nop
sub $7453, %rax
mov (%rsi), %rcx
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp

// Faulty Load
lea addresses_RW+0x17086, %r11
nop
nop
nop
nop
nop
sub $24079, %r14
vmovaps (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
