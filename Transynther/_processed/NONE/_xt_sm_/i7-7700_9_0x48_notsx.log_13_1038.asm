.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dac9, %rsi
lea addresses_A_ht+0x1de49, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $79, %rcx
rep movsq
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1a047, %rsi
lea addresses_A_ht+0x8f7d, %rdi
nop
nop
nop
nop
nop
and $4982, %r8
mov $67, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_UC_ht+0x125b3, %rsi
nop
nop
cmp %r9, %r9
mov (%rsi), %ebp
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x17601, %rsi
nop
add $25299, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
xor $13608, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rsi

// Store
lea addresses_normal+0x18fd9, %r10
nop
nop
nop
inc %r14
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0xb391, %r10
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
dec %r10

// Store
lea addresses_normal+0x1ee49, %rsi
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovaps %ymm3, (%rsi)
nop
nop
nop
sub $20811, %r10

// Store
lea addresses_normal+0x5002, %r8
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)

// Exception!!!
nop
mov (0), %rbp
xor $51719, %rbp

// Store
lea addresses_UC+0x28b, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_normal+0x1ee49, %r13
nop
sub %rsi, %rsi
mov (%r13), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'58': 13}
58 58 58 58 58 58 58 58 58 58 58 58 58
*/
