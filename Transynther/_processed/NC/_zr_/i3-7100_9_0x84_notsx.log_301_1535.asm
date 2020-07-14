.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x1ffd7, %rsi
lea addresses_UC+0xe197, %rdi
sub %rbx, %rbx
mov $80, %rcx
rep movsw
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x19457, %rsi
nop
nop
nop
nop
nop
add $13548, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rsi)
cmp $57633, %rdx

// REPMOV
lea addresses_normal+0xff17, %rsi
lea addresses_PSE+0x1735a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r11
mov $11, %rcx
rep movsl
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
mov $0x576c700000000b17, %rsi
nop
nop
nop
and $37763, %rdx
mov (%rsi), %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 301}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
