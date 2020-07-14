.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e2e8, %r14
add $30761, %r8
mov (%r14), %r10
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x16b54, %rdx
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%rdx), %cl
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0xd80b, %rdx
and %rsi, %rsi
mov (%rdx), %r8d
nop
nop
nop
nop
nop
add $19550, %r10
lea addresses_WT_ht+0x198f8, %r14
nop
nop
nop
dec %rsi
movl $0x61626364, (%r14)
nop
cmp $41505, %rdx
lea addresses_D_ht+0x1b8e0, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r10)
and %rsi, %rsi
lea addresses_UC_ht+0x12e70, %rsi
lea addresses_normal_ht+0x135b0, %rdi
cmp $19780, %rdx
mov $88, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x70, %rdx
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
xor $63391, %r10
lea addresses_WT_ht+0xb5b0, %rdx
nop
nop
nop
and $15275, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x12ef0, %rsi
lea addresses_WT_ht+0x9170, %rdi
nop
xor $61415, %rbx
mov $123, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_RW+0x8d70, %r13
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_WT+0x3b70, %r9
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r9), %dl
nop
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x1b170, %r9
nop
nop
nop
add $14777, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r9)
nop
nop
sub $62122, %rbx

// Store
mov $0x23b580000000170, %rdx
nop
dec %r13
movb $0x51, (%rdx)
nop
sub %rdx, %rdx

// Faulty Load
mov $0x23b580000000170, %rbp
nop
nop
nop
sub %rdx, %rdx
mov (%rbp), %r13d
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'00': 37, '51': 41, '58': 13}
00 51 51 00 00 51 58 00 51 00 58 51 51 00 00 51 00 58 00 00 51 00 51 00 51 51 51 00 58 51 00 58 00 51 51 00 51 00 51 00 51 51 51 51 51 00 51 00 51 00 51 58 00 51 51 58 51 00 58 51 58 51 58 00 51 00 51 58 51 00 00 51 51 00 00 51 51 51 00 00 00 00 00 51 51 00 51 58 00 58 00
*/
