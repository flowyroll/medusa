.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x66ac, %rsi
lea addresses_WC_ht+0xefde, %rdi
nop
nop
xor $9968, %r15
mov $101, %rcx
rep movsl
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xe4ac, %rsi
mov $0x1252ad0000000bfc, %rdi
nop
and %r11, %r11
mov $78, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0xe4ac, %rdi
nop
nop
nop
nop
cmp $5260, %r12
mov (%rdi), %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_NC', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
