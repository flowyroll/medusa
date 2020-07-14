.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xcfec, %rbp
nop
nop
xor $5305, %rdx
mov (%rbp), %rsi
nop
xor %r10, %r10
lea addresses_WT_ht+0x166ec, %rbx
nop
nop
sub $36303, %r14
movl $0x61626364, (%rbx)
nop
add $55441, %r10
lea addresses_D_ht+0x14a0, %rbp
add $64853, %r11
movb (%rbp), %r10b
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x16cec, %rdx
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
cmp $41490, %rbx
lea addresses_D_ht+0x490a, %rsi
lea addresses_WC_ht+0x186c, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $49, %rcx
rep movsw
add $44000, %rbp
lea addresses_A_ht+0x1b0ec, %r10
add %rdi, %rdi
movw $0x6162, (%r10)
nop
nop
nop
sub $30134, %rbp
lea addresses_WC_ht+0x2e4, %rdx
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
and $19260, %r14
lea addresses_WC_ht+0xb33c, %r11
nop
nop
nop
nop
nop
and $31086, %rsi
movb $0x61, (%r11)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x19cec, %rsi
lea addresses_UC_ht+0x1ebac, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $93, %rcx
rep movsq
nop
add $4126, %rdx
lea addresses_normal_ht+0x8e0c, %rsi
lea addresses_D_ht+0x839d, %rdi
nop
nop
sub %r10, %r10
mov $3, %rcx
rep movsw
nop
nop
nop
nop
xor $57969, %r14
lea addresses_UC_ht+0x3f94, %rsi
lea addresses_UC_ht+0xa6c, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbx, %rbx
mov $69, %rcx
rep movsb
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1340c, %r14
clflush (%r14)
and $16968, %r11
movb (%r14), %r10b
nop
add $39295, %rbp
lea addresses_WT_ht+0x1d43c, %rsi
lea addresses_A_ht+0x17bec, %rdi
and %rdx, %rdx
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
and $3170, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax

// Store
lea addresses_WC+0xb4ec, %r11
nop
nop
nop
add $11878, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and $23715, %r10

// Store
lea addresses_D+0x1ea2c, %r10
nop
nop
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%r10)
nop
nop
nop
nop
and $23470, %r10

// Store
lea addresses_RW+0x1eec, %r11
nop
nop
nop
nop
xor $38662, %r12
movb $0x51, (%r11)
cmp $2116, %r11

// Store
mov $0x7a7fa40000000eec, %r12
nop
nop
nop
nop
nop
dec %r8
movw $0x5152, (%r12)
nop
nop
xor %r11, %r11

// Store
lea addresses_US+0x16aec, %r8
add $17255, %r12
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
dec %r13

// Store
lea addresses_D+0x19ac, %r13
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
cmp %r8, %r8

// Store
mov $0xc5c, %rax
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rax)
nop
add $63187, %r10

// Store
mov $0x5ea9680000000cec, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
sub $34990, %r14

// Faulty Load
mov $0x5ea9680000000cec, %r14
nop
nop
nop
nop
sub $34930, %rax
mov (%r14), %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'58': 1}
58
*/
