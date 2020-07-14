.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2baf, %rsi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
cmp $61320, %r14
lea addresses_UC_ht+0x121f, %rsi
lea addresses_A_ht+0x11a6e, %rdi
nop
dec %r10
mov $80, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x648f, %rsi
lea addresses_UC_ht+0x7af, %rdi
nop
nop
sub %r15, %r15
mov $27, %rcx
rep movsq
nop
sub $29260, %r15
lea addresses_UC_ht+0x1ba8f, %rsi
lea addresses_WC_ht+0x14e6f, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $121, %rcx
rep movsl
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x4daf, %r8
nop
nop
nop
nop
nop
add $13113, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
nop
nop
nop
lfence

// REPMOV
lea addresses_UC+0xd7af, %rsi
lea addresses_WT+0xd5ee, %rdi
nop
nop
nop
add %r8, %r8
mov $4, %rcx
rep movsw
nop
cmp %r9, %r9

// REPMOV
lea addresses_A+0x38af, %rsi
lea addresses_WC+0xf1f5, %rdi
nop
nop
nop
add $52504, %r9
mov $35, %rcx
rep movsl
nop
nop
nop
nop
add $4768, %r8

// Store
lea addresses_US+0xb05f, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
xor $83, %rsi

// Load
lea addresses_A+0x1f10f, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r9d
nop
nop
and $37633, %r8

// Store
lea addresses_WT+0x1ebaf, %rdi
nop
nop
nop
nop
add $46491, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
nop
add $34735, %r8

// Store
lea addresses_WC+0xebaf, %r12
nop
nop
nop
xor $7658, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r12)
xor %rdi, %rdi

// Store
mov $0xcaf, %rcx
nop
inc %r12
movw $0x5152, (%rcx)
nop
nop
sub %r9, %r9

// Store
lea addresses_D+0xdfaf, %rbx
nop
nop
nop
nop
nop
cmp $49703, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%rbx)
nop
add $26206, %r8

// Store
lea addresses_normal+0xe1f3, %rdx
clflush (%rdx)
nop
nop
nop
nop
dec %rsi
movw $0x5152, (%rdx)
add %r8, %r8

// Store
lea addresses_D+0x40af, %r8
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_WT+0x87af, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r8), %edx
nop
nop
nop
and $56067, %rbx

// Faulty Load
lea addresses_RW+0x177af, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r9), %r12w
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'32': 742}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
