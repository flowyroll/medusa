.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf23, %rsi
lea addresses_A_ht+0x1c023, %rdi
nop
nop
nop
add $52289, %r13
mov $88, %rcx
rep movsw
nop
cmp %r13, %r13
lea addresses_D_ht+0x19f23, %rbp
clflush (%rbp)
nop
nop
add %rbx, %rbx
mov (%rbp), %eax
nop
nop
nop
sub $21885, %rdi
lea addresses_WC_ht+0x67b3, %rbx
add %rdi, %rdi
movw $0x6162, (%rbx)
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
mov $0x1e692a0000000723, %rax
clflush (%rax)
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovntdq %ymm2, (%rax)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_normal+0x8b23, %rbp
nop
nop
nop
and $65456, %rax
movl $0x51525354, (%rbp)
cmp $54806, %r15

// Faulty Load
lea addresses_normal+0xaf23, %r14
nop
xor %r9, %r9
mov (%r14), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 41}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
