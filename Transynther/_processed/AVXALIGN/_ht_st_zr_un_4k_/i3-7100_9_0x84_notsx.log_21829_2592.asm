.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3bac, %rdi
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $24947, %r13
lea addresses_normal_ht+0xb6cc, %r15
nop
nop
xor %rsi, %rsi
movb (%r15), %bl
nop
dec %rsi
lea addresses_WT_ht+0x182c, %r15
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
cmp $60888, %r13
lea addresses_WC_ht+0x1e32c, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x266c, %rsi
lea addresses_UC_ht+0x522c, %rdi
nop
dec %r8
mov $110, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0xa0fc, %rsi
lea addresses_A_ht+0x1ab3c, %rdi
nop
cmp %rbx, %rbx
mov $44, %rcx
rep movsq
nop
nop
nop
nop
sub $16075, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x7062, %r10
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%r10)
and $27552, %rdx

// Load
lea addresses_D+0x1702c, %rcx
and $8059, %rax
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r13
inc %rcx

// Store
lea addresses_D+0x17cac, %r10
clflush (%r10)
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
inc %r10

// REPMOV
lea addresses_D+0xb215, %rsi
lea addresses_WC+0xfc83, %rdi
clflush (%rsi)
nop
nop
dec %r13
mov $125, %rcx
rep movsq
nop
nop
nop
inc %r9

// Store
lea addresses_RW+0x302c, %r13
nop
nop
and %r9, %r9
movw $0x5152, (%r13)
inc %r9

// Faulty Load
lea addresses_D+0x1702c, %r9
nop
cmp $23625, %rdx
movaps (%r9), %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'36': 5814, '52': 8367, '85': 18, '48': 36, '46': 1901, '00': 5691, 'fa': 1, '2c': 1}
00 00 52 46 46 46 36 36 46 36 36 52 52 00 52 52 36 52 52 52 52 36 36 00 36 52 52 46 52 00 52 36 52 36 52 00 52 52 00 36 36 52 52 36 52 52 52 00 00 52 46 52 00 52 52 00 36 36 46 36 52 46 36 52 52 46 36 00 00 52 00 36 36 52 52 00 52 00 36 52 00 52 00 52 52 52 36 46 36 00 36 52 52 52 00 52 00 52 00 52 36 52 46 52 00 36 36 46 52 52 36 52 00 36 52 00 46 36 00 52 36 46 36 00 00 00 52 00 00 36 00 52 52 46 36 52 52 52 36 52 36 52 52 36 00 52 52 52 36 00 52 00 36 36 52 52 00 52 52 46 52 36 52 36 52 52 36 00 00 52 00 46 52 36 00 36 36 00 36 52 46 46 52 00 00 52 00 00 36 00 52 52 52 36 52 52 52 52 52 52 52 00 00 36 00 52 00 36 52 00 36 46 46 52 00 52 36 52 00 52 36 00 52 36 46 36 46 36 00 00 00 52 52 00 36 36 52 52 00 52 52 00 36 52 00 00 52 00 52 36 46 52 52 46 52 52 46 36 00 00 36 00 00 85 52 52 52 52 36 36 46 36 46 36 52 00 52 36 46 00 52 52 46 52 00 36 00 52 36 00 52 52 46 52 36 00 52 52 52 52 00 52 36 00 36 52 36 00 52 36 36 46 52 52 00 52 00 52 00 52 52 46 52 36 52 52 00 52 36 52 52 00 52 52 36 36 00 00 52 36 00 52 36 52 36 36 00 52 52 00 52 00 00 52 52 52 52 00 52 36 46 52 36 52 00 52 36 36 52 52 36 46 52 36 00 52 00 52 52 52 52 36 52 46 52 00 00 52 52 36 00 36 36 00 36 36 36 46 36 46 52 00 52 36 00 00 52 52 36 52 52 00 52 52 00 36 52 36 46 36 52 52 46 52 36 52 52 36 36 00 00 52 00 52 36 00 00 52 36 52 00 00 52 52 52 36 00 36 52 36 00 52 52 52 00 36 36 52 52 52 00 36 52 52 46 36 52 46 46 52 00 00 36 36 36 46 52 36 00 52 36 36 00 36 36 36 52 00 52 52 00 52 52 36 36 00 36 36 00 36 36 00 46 36 36 52 36 00 46 36 52 52 36 52 36 36 00 52 36 52 52 36 52 36 00 36 00 36 36 46 52 52 00 48 00 36 36 00 00 52 36 00 00 52 52 00 52 36 00 36 00 00 52 00 00 36 52 00 52 46 52 36 46 52 52 46 36 52 46 36 46 52 52 00 36 52 52 36 36 46 52 36 00 36 46 36 36 52 52 00 52 36 46 52 00 52 52 46 52 36 52 00 00 36 52 00 52 36 52 52 36 46 36 52 46 36 52 00 52 00 52 00 00 52 36 46 52 52 52 36 36 36 52 36 52 52 36 52 46 36 36 52 52 00 52 00 00 36 00 36 00 36 52 52 36 36 00 36 52 52 36 00 52 00 36 52 00 00 52 36 00 36 36 00 52 00 52 36 52 52 52 52 52 36 00 36 52 36 00 52 36 00 52 36 36 36 52 52 52 52 52 00 52 36 00 00 52 36 52 46 52 52 52 36 00 52 52 52 46 52 36 52 52 36 46 52 36 52 52 36 36 52 52 00 46 52 46 00 52 36 00 00 00 52 36 00 52 36 00 52 52 00 36 00 46 52 52 00 52 52 52 52 52 52 52 48 52 52 52 00 46 00 00 36 52 46 52 00 00 52 00 52 52 00 52 52 52 00 36 00 52 36 00 36 46 36 36 00 52 52 36 00 52 36 00 52 52 46 00 36 46 52 36 00 36 36 00 00 36 00 36 00 52 52 36 46 46 52 00 00 00 52 36 46 36 52 46 52 00 36 00 36 36 00 00 36 00 52 36 52 00 36 00 52 52 00 36 52 36 36 52 36 00 52 00 00 52 36 00 36 36 00 52 52 52 52 46 52 52 52 52 52 00 00 52 52 52 52 52 52 00 00 52 36 52 52 52 52 52 46 52 52 46 36 52 00 52 00 52 36 00 36 00 46 36 52 52 36 52 00 52 52 52 36 00 52 36 52 52 00 52 52 52 52 46 52 36 52 52 52 36 52 46 52 36 52 36 00 00 52 52 00 52 36 00 52 36 00 52 00 52 36 52 00 52 00 00 52 36 00 00 52 52 52 00 36 36 00 36 52 52 36 46 36 36 00 00 52 00 00 52 52 36 00 00 52 00 00 52 46
*/
