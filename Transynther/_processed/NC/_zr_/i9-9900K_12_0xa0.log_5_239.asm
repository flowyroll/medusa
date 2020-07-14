.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x10c32, %rcx
nop
xor $31596, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x17f02, %r10
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r10), %al
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x7166, %rsi
lea addresses_UC_ht+0x1a3c2, %rdi
nop
nop
nop
nop
cmp $30091, %r10
mov $25, %rcx
rep movsb
nop
nop
sub $65469, %r10
lea addresses_WT_ht+0x14ce2, %rsi
lea addresses_D_ht+0x8202, %rdi
nop
nop
nop
nop
add $61582, %rdx
mov $93, %rcx
rep movsb
nop
nop
add $56135, %r10
lea addresses_D_ht+0x8b4c, %rdx
nop
nop
nop
nop
xor $17891, %rcx
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
add $9800, %rsi
lea addresses_normal_ht+0x10502, %rdi
clflush (%rdi)
nop
nop
nop
xor %r10, %r10
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x4142, %rsi
lea addresses_UC+0x882, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbp
mov $39, %rcx
rep movsb
nop
nop
nop
nop
cmp $18732, %r11

// Faulty Load
mov $0x29dcdc0000000502, %r9
nop
nop
inc %rbx
mov (%r9), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'00': 5}
00 00 00 00 00
*/
