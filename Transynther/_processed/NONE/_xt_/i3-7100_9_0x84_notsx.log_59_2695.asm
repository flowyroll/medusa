.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa07a, %rsi
lea addresses_normal_ht+0xbe58, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x13efa, %r14
clflush (%r14)
nop
sub %rbp, %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x941a, %r10
nop
nop
nop
nop
cmp %r8, %r8
mov (%r10), %rcx
lfence
lea addresses_A_ht+0x10252, %r14
nop
nop
nop
xor $11120, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
sub $56529, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x1d044, %r11
clflush (%r11)
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0x7ddb8900000008fa, %r14
clflush (%r14)
nop
nop
add $55817, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_US+0xe7fa, %r12
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r12)
nop
add $16502, %rbp

// Faulty Load
lea addresses_normal+0x14fa, %r12
nop
nop
nop
cmp $19221, %rax
mov (%r12), %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 59}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
