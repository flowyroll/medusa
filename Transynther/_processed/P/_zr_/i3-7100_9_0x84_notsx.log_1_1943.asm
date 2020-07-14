.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e163, %rsi
lea addresses_WC_ht+0xf047, %rdi
nop
nop
sub %rax, %rax
mov $50, %rcx
rep movsq
nop
nop
nop
and $60036, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rdi
push %rdx

// Faulty Load
mov $0x963, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
movb (%rdi), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
