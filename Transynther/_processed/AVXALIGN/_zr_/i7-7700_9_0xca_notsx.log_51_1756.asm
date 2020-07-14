.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4d1f, %rsi
lea addresses_A_ht+0xba47, %rdi
nop
nop
nop
and $9185, %r12
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xc7e7, %r9
clflush (%r9)
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x12d47, %rsi
nop
nop
nop
cmp $28584, %rbx
mov (%rsi), %r9
xor %rdi, %rdi
lea addresses_UC_ht+0x7947, %rcx
clflush (%rcx)
sub $27359, %rdx
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx

// Faulty Load
mov $0x247, %rbp
mfence
movb (%rbp), %r13b
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
