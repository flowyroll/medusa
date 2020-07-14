.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e4df, %rsi
lea addresses_WC_ht+0xe9d5, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $35, %rcx
rep movsq
nop
nop
nop
nop
xor $8948, %rbp
lea addresses_D_ht+0x156bf, %rsi
lea addresses_WT_ht+0xe057, %rdi
add %r13, %r13
mov $38, %rcx
rep movsw
nop
nop
nop
cmp $45766, %rdi
lea addresses_WT_ht+0x16f2f, %rsi
lea addresses_UC_ht+0x1385f, %rdi
nop
nop
nop
nop
add $7923, %r13
mov $125, %rcx
rep movsw
nop
cmp $35256, %r13
lea addresses_D_ht+0xa05f, %rsi
lea addresses_UC_ht+0x15b5f, %rdi
nop
nop
nop
inc %r13
mov $26, %rcx
rep movsw
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rsi

// Faulty Load
mov $0x5f, %rax
nop
and $55800, %r11
mov (%rax), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'00': 1}
00
*/
