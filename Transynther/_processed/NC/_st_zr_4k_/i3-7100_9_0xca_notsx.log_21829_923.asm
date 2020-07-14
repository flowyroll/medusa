.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14854, %r11
nop
nop
nop
add %rbp, %rbp
movb (%r11), %al
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xbf4c, %r8
sub $37411, %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x1c54c, %r13
nop
and %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r13)
nop
lfence
lea addresses_WT_ht+0x1c454, %rsi
lea addresses_A_ht+0x1194c, %rdi
nop
nop
nop
nop
sub $19598, %r8
mov $50, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $9477, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x17bae, %rsi
lea addresses_D+0x94c, %rdi
nop
nop
nop
nop
and $28086, %rbp
mov $106, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx

// REPMOV
lea addresses_UC+0x3540, %rsi
lea addresses_normal+0x6494, %rdi
nop
nop
nop
nop
inc %r14
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x1014c, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $3612, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
inc %r12

// Faulty Load
mov $0x65bb10000000014c, %r10
sub $48533, %r12
movb (%r10), %r14b
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'58': 18523, '00': 957, '37': 2349}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 37 58 58 58 58 58 58 58 00 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 00 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 58 58 00 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 37 58 58 37 58 37 58 58 58 37 58 58 58 58 58 00 58 58 37 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 37 58 58 58 37 58 58 58 37 58 58 58 58 58 37 58 58 37 58 37 58 58 37 58 58 58 58 58 58 37 37 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 37 58 58 37 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 37 58 58 58 00 58 58 37 58 00 58 58 58 58 58 37 58 58 58 58 58 37 58 58 58 58 58 37 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 37 58 58 37 58 37 37 58 58 37 58 58 00 58 58 58 58 58 37 58 58 58 58 58 00 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 37 58 58 58 37 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 37 58 00 58 58 58 58 58 58 58 58 37 37 58 58 58 58 58 58 37 00 00 58 58 58 37 37 37 58 58 58 37 58 58 58 58 37 37 58 58 58 58 37 58 58 58 37 58 37 58 58 58 58 37 58 37 58 00 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 37 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 37 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 00 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 37 58 58 58 58 58 58 00 58 58 37 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 37 58 58 58 37 58 37 37 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 58 58 58 58 37 58 37 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 37 58 37 58 58 58 58 58 37 58 37 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 37 58 58 58 58 58 58 58 58 58 58 37 58 58 37 58 37 37 58 58 58 58 58 58 58 58 58 37 00 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 37 58 58 58 58 58 00 58 58 37 58 58 37 58 37 58 58 58 58 37 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 37 58 58 58 58 58 58 37 00 58 58 58 58 58 37 58 58 58 58 00 58 58 58 58 00 58 58 58 58 37 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 37 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58 58 58 58 58 58 58 37 58 37 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 37 58
*/
