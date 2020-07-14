.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5543, %rsi
lea addresses_D_ht+0x1e987, %rdi
clflush (%rdi)
dec %rax
mov $80, %rcx
rep movsq
nop
nop
nop
nop
cmp $49805, %rdi
lea addresses_A_ht+0x19fa, %rsi
lea addresses_WT_ht+0x18f13, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r12
mov $98, %rcx
rep movsw
nop
add $31922, %rax
lea addresses_D_ht+0x3763, %rsi
lea addresses_D_ht+0x4513, %rdi
xor $60311, %rbp
mov $78, %rcx
rep movsw
nop
nop
nop
nop
sub $27414, %rcx
lea addresses_A_ht+0xde83, %rsi
lea addresses_WC_ht+0x16581, %rdi
clflush (%rdi)
and %r8, %r8
mov $30, %rcx
rep movsq
nop
nop
nop
nop
cmp $30706, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0xb263, %rsi
lea addresses_normal+0x1da43, %rdi
dec %rax
mov $22, %rcx
rep movsb
nop
nop
nop
nop
cmp $10281, %rdi

// Store
lea addresses_A+0x9395, %rdi
nop
nop
cmp $21096, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
xor %rax, %rax

// Store
lea addresses_D+0x7d63, %r11
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovaps %ymm2, (%r11)
dec %rax

// Store
lea addresses_D+0xb363, %r11
nop
nop
nop
sub $22778, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r11)
add $64323, %rax

// Store
lea addresses_normal+0x1b27f, %rcx
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%rcx)
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_D+0xb363, %rax
clflush (%rax)
nop
nop
nop
nop
sub $22219, %r11
movb (%rax), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'58': 81}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
