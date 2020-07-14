.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16333, %rsi
lea addresses_normal_ht+0x12133, %rdi
nop
nop
sub %rbx, %rbx
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x15d33, %rsi
lea addresses_normal_ht+0x123f3, %rdi
clflush (%rdi)
nop
nop
sub %r15, %r15
mov $12, %rcx
rep movsq
nop
nop
nop
and $49018, %r15
lea addresses_WT_ht+0xaf93, %rsi
lea addresses_D_ht+0x23d5, %rdi
add $26129, %rax
mov $33, %rcx
rep movsq
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x6b33, %rsi
lea addresses_normal_ht+0x1ebf3, %rdi
clflush (%rsi)
nop
nop
nop
nop
lfence
mov $76, %rcx
rep movsl
nop
nop
nop
nop
nop
add $9507, %rcx
lea addresses_WC_ht+0x107a3, %rsi
lea addresses_WC_ht+0xe67, %rdi
add $63762, %r13
mov $121, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x19fbc, %rsi
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r13d
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x16a97, %r15
and %r13, %r13
movb (%r15), %r12b
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1cb33, %rsi
lea addresses_WT_ht+0x189f3, %rdi
nop
nop
nop
nop
cmp $48125, %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
add $13926, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x453, %r8
clflush (%r8)
inc %r11
movl $0x51525354, (%r8)
nop
nop
xor %rsi, %rsi

// Load
mov $0x7800540000000ab3, %rdx
nop
nop
nop
nop
dec %rdi
movntdqa (%rdx), %xmm2
vpextrq $1, %xmm2, %rax
add %rax, %rax

// Load
lea addresses_WC+0x9333, %r8
nop
nop
nop
nop
sub $36593, %rdi
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
cmp $59723, %rdi

// Store
lea addresses_PSE+0x156b3, %r11
cmp %rax, %rax
movw $0x5152, (%r11)
add %rdi, %rdi

// Faulty Load
mov $0x4d8c700000000b33, %rdi
nop
nop
nop
inc %rbp
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'08': 6, '48': 8486, '17': 7, '89': 2, '49': 2873, '00': 10455}
00 48 00 49 00 48 48 00 00 00 48 00 48 00 00 48 00 00 48 00 48 48 48 00 49 48 48 00 49 48 48 48 48 49 48 00 48 48 00 48 00 00 00 00 48 00 48 00 00 48 48 49 49 00 48 48 48 49 00 00 00 00 49 48 00 00 00 00 00 48 00 48 49 48 00 00 00 49 48 48 00 48 49 00 00 48 48 49 00 00 00 48 49 48 48 00 48 49 49 00 00 00 00 49 00 00 48 49 48 00 00 00 49 48 48 48 48 49 00 00 48 49 00 48 48 00 00 00 00 00 48 48 49 48 00 00 00 49 48 48 00 48 49 00 00 48 00 00 00 00 00 00 00 48 48 00 49 48 00 48 49 00 00 00 48 00 48 48 48 48 49 00 00 00 00 49 00 48 48 00 00 48 00 48 00 48 48 00 48 00 48 00 00 00 49 00 48 00 48 49 48 00 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 48 00 48 48 48 49 00 48 00 00 49 00 48 48 00 49 48 48 48 48 00 48 00 48 48 49 00 48 48 49 00 00 48 00 00 00 48 48 00 49 00 00 48 48 00 00 00 48 00 49 48 48 48 48 00 48 00 00 48 49 48 00 48 00 49 00 48 00 49 48 48 48 48 00 48 00 48 00 49 00 48 00 48 49 00 00 48 00 00 48 48 48 48 49 48 48 00 48 49 48 00 00 00 00 48 00 00 49 48 48 00 48 49 48 48 00 48 00 48 48 48 49 00 00 48 00 49 00 48 48 48 00 00 48 48 00 00 00 00 48 00 49 49 48 48 48 49 48 00 48 48 00 48 48 00 48 00 00 48 48 00 49 00 48 48 00 00 00 48 48 48 00 48 00 48 48 49 00 48 00 00 00 49 00 48 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 49 00 48 48 48 00 00 48 48 48 48 00 48 48 48 49 48 00 00 48 00 00 48 48 00 49 00 48 00 00 00 00 48 48 48 49 00 00 48 48 00 49 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 48 48 48 00 48 00 00 00 49 48 48 48 48 00 48 00 48 48 49 00 48 48 00 48 00 48 48 49 00 00 00 48 49 00 00 48 48 49 00 00 48 48 48 48 48 00 00 00 00 48 48 00 49 48 48 48 00 00 00 00 48 49 49 00 48 48 49 00 00 48 48 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 48 00 00 48 00 00 00 48 48 48 48 00 00 48 00 00 49 00 48 00 48 00 00 00 00 48 49 00 48 48 48 49 49 00 48 48 00 49 48 48 00 00 49 00 48 48 49 48 00 48 00 49 00 00 48 00 49 00 48 00 00 00 00 48 48 48 00 00 00 00 48 49 48 00 00 48 49 00 48 00 00 00 49 00 00 48 49 00 00 48 48 49 48 48 00 48 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 00 00 00 00 48 49 00 00 00 49 00 00 00 48 49 00 00 48 48 00 49 00 48 48 49 48 48 00 48 00 48 48 48 48 00 00 00 00 49 00 00 00 00 49 00 48 48 00 00 49 00 48 00 49 00 00 48 48 00 49 00 48 00 49 49 00 48 48 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 49 00 00 48 48 49 00 48 00 00 00 00 00 48 00 49 00 48 48 00 49 00 48 48 48 00 00 00 48 00 00 00 08 00 00 00 48 00 00 49 00 48 48 48 49 00 48 00 48 48 00 48 48 48 48 00 48 00 48 48 49 00 00 48 00 49 00 00 48 48 49 00 00 00 49 00 00 48 48 49 00 00 48 48 48 49 48 00 00 00 00 48 00 48 48 49 00 48 48 48 00 00 48 48 49 48 00 48 48 49 00 00 48 48 49 48 00 00 00 49 48 00 48 49 00 48 00 00 49 00 48 48 48 49 00 48 48 00 49 48 48 00 48 49 00 00 48 48 00 48 00 00 49 49 48 48 48 49 00 48 48 48 00 00 00 48 48 49 00 48 00 48 00 00 48 48 48 49 48 48 48 48 49 48 48 48 00 49 48 48 48 48 00 48 48 00 00 00 00 00 00 48 49 00 00 48 49 00 48 48 00 49 48 00 48 48 00 48 00 48 48 00 00 48 48 48 00 00 00 00 48 49 48 48 48 00 49 00 48 00 49
*/
