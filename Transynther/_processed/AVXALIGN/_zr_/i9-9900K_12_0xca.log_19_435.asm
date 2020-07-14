.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16e1f, %rsi
lea addresses_WC_ht+0x8cd7, %rdi
nop
nop
and $37404, %r9
mov $8, %rcx
rep movsb
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x8787, %rsi
lea addresses_UC+0x37e7, %rdi
nop
nop
nop
dec %r9
mov $104, %rcx
rep movsb
cmp $3769, %r11

// Faulty Load
lea addresses_WC+0x1c8e7, %rsi
nop
nop
and $33108, %rbp
movntdqa (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC', 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
