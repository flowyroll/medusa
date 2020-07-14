.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2761, %rcx
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xcc39, %rsi
lea addresses_WC_ht+0x14f39, %rdi
nop
nop
nop
xor $28112, %r13
mov $72, %rcx
rep movsq
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xed39, %r11
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
nop
xor $6812, %rdx

// Store
lea addresses_A+0x18a39, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $12645, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
dec %r12

// Store
mov $0x339, %r10
add $27110, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r10)
dec %rbp

// REPMOV
mov $0x5a1710000000ce9, %rsi
mov $0x439, %rdi
nop
nop
sub $43640, %rbp
mov $39, %rcx
rep movsb
nop
nop
nop
nop
inc %r11

// Faulty Load
mov $0x7001b20000000a39, %rbp
nop
nop
nop
nop
nop
and $2497, %r12
mov (%rbp), %r11d
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_NC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'58': 13396, '00': 8433}
58 58 58 58 58 58 00 00 00 00 58 58 58 00 58 58 00 58 00 00 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 00 58 00 58 00 58 00 00 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 00 00 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 00 00 58 00 58 00 58 58 58 58 00 00 00 58 58 00 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 00 58 00 00 00 58 00 00 58 00 00 58 58 00 00 58 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 00 58 00 58 58 00 58 00 00 58 58 58 00 58 00 58 58 00 58 00 58 58 58 58 00 58 00 58 58 00 58 00 00 58 00 00 58 00 58 58 58 00 58 58 58 58 00 00 00 58 58 00 58 58 58 00 58 00 00 00 00 00 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 58 58 00 00 58 00 58 58 00 58 58 00 58 00 58 00 58 00 58 00 58 58 58 00 00 00 58 00 58 00 00 58 58 58 00 58 00 00 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 00 00 00 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 00 58 58 00 58 58 58 00 00 58 00 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 00 58 58 00 00 00 58 58 00 00 00 00 00 00 00 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 00 00 58 00 00 00 00 58 58 58 58 00 00 00 58 58 00 58 00 00 58 58 00 58 58 00 00 58 58 00 00 00 58 00 00 58 00 00 00 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 58 00 00 58 00 00 58 00 58 00 58 58 58 58 00 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 00 58 00 00 00 58 58 00 58 00 58 00 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 00 00 00 58 00 00 00 00 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 00 58 00 00 58 00 58 00 58 58 00 00 58 58 58 00 58 00 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 00 58 00 58 58 58 58 00 00 58 58 58 58 00 58 00 00 58 00 58 58 58 00 00 58 00 58 00 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 58
*/
