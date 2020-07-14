.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9dc2, %rsi
lea addresses_WT_ht+0xee32, %rdi
and $43874, %rbx
mov $98, %rcx
rep movsl
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rcx
push %rdi
push %rdx

// Faulty Load
mov $0xa32, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
movb (%rdx), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
