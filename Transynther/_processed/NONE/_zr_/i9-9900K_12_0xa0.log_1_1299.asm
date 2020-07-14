.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x80dd, %r11
nop
nop
nop
nop
and $49208, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
add %r13, %r13
lea addresses_WC_ht+0x3d35, %rsi
lea addresses_D_ht+0xa029, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $126, %rcx
rep movsq
nop
cmp $34462, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x12da9, %rax
nop
nop
nop
sub $20517, %r12
movb $0x51, (%rax)
nop
nop
nop
nop
add $60397, %rsi

// REPMOV
lea addresses_WC+0x4c71, %rsi
lea addresses_RW+0x83a9, %rdi
nop
nop
nop
cmp %r13, %r13
mov $49, %rcx
rep movsb
nop
sub $13675, %rdi

// Store
lea addresses_UC+0x189b3, %rsi
nop
and $30711, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
sub %r12, %r12

// Faulty Load
lea addresses_WC+0x1c5a9, %rsi
clflush (%rsi)
nop
nop
nop
cmp %rbp, %rbp
movb (%rsi), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
