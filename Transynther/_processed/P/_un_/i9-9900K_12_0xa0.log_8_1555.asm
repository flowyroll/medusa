.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a6ac, %rsi
lea addresses_WC_ht+0x1221b, %rdi
nop
nop
sub %rax, %rax
mov $80, %rcx
rep movsl
nop
nop
nop
and $3782, %rcx
lea addresses_UC_ht+0x12890, %r11
dec %rbp
mov (%r11), %r10d
nop
inc %rdi
lea addresses_normal_ht+0x5584, %r11
nop
nop
nop
xor $17317, %rbp
movb (%r11), %cl
sub %rbp, %rbp
lea addresses_UC_ht+0xfa5c, %rsi
lea addresses_A_ht+0x163c, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $63239, %rax
mov $34, %rcx
rep movsb
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x13bfc, %rcx
nop
nop
nop
add %r11, %r11
mov (%rcx), %rax
nop
add $49907, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rdx

// Faulty Load
mov $0x3fc, %rdx
cmp $49607, %r12
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'ff': 8}
ff ff ff ff ff ff ff ff
*/
