.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1dc4, %rsi
lea addresses_D_ht+0x13e58, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $102, %rcx
rep movsb
nop
and %rbx, %rbx
lea addresses_D_ht+0x1cbd8, %rdx
nop
nop
nop
nop
nop
cmp $62755, %r9
mov (%rdx), %r11d
xor $50558, %rcx
lea addresses_A_ht+0x11ea2, %r9
clflush (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r9), %cx
nop
sub $50863, %r9
lea addresses_D_ht+0x1ea58, %rdx
add $28612, %rdi
mov (%rdx), %r9
nop
nop
nop
nop
add $12948, %r9
lea addresses_A_ht+0x3258, %rsi
lea addresses_A_ht+0x12696, %rdi
nop
nop
nop
xor %r10, %r10
mov $22, %rcx
rep movsq
nop
xor %r9, %r9
lea addresses_UC_ht+0x14a58, %r9
nop
nop
nop
add %rdx, %rdx
mov (%r9), %r10d
nop
nop
dec %rbx
lea addresses_WC_ht+0x7258, %r11
nop
nop
nop
xor $44118, %rdx
movw $0x6162, (%r11)
nop
nop
nop
and $39470, %rcx
lea addresses_WT_ht+0x281e, %rsi
lea addresses_A_ht+0x458, %rdi
nop
nop
nop
nop
xor $13313, %r10
mov $101, %rcx
rep movsb
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x7d01d900000009d8, %rbx
nop
nop
nop
nop
add $47005, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0x58, %r10
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x9a58, %r10
nop
nop
nop
add $38063, %rdi
mov (%r10), %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'34': 244}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
