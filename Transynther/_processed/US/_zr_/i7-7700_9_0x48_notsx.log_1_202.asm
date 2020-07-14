.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xed85, %rsi
lea addresses_D_ht+0x9005, %rdi
nop
nop
dec %r11
mov $49, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_UC_ht+0x18d85, %rsi
lea addresses_WC_ht+0xa905, %rdi
sub %r9, %r9
mov $92, %rcx
rep movsb
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x17385, %rsi
lea addresses_A_ht+0x154b9, %rdi
and $26202, %r13
mov $67, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x19285, %rdi
nop
nop
and $18252, %r9
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r11
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x6585, %r8
nop
nop
nop
sub $14270, %r13
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'00': 1}
00
*/
