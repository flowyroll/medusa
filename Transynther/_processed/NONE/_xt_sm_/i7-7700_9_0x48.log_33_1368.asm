.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x37a6, %rsi
lea addresses_WT_ht+0xa026, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $10, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x1bb66, %rax
nop
nop
nop
cmp $45129, %r11
movl $0x61626364, (%rax)
nop
nop
nop
nop
cmp $52426, %rax
lea addresses_UC_ht+0x10b86, %rax
and $57706, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
inc %rcx
lea addresses_WT_ht+0x9626, %rsi
lea addresses_WC_ht+0x184a6, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $3, %rcx
rep movsq
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_A+0xc26, %r15
nop
nop
nop
sub %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0xb826, %rsi
sub %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
xor $14355, %r8

// Store
lea addresses_WC+0x87a6, %rcx
cmp %r14, %r14
movb $0x51, (%rcx)
nop
nop
cmp $10680, %r10

// Store
lea addresses_normal+0xa426, %r8
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r8)
nop
sub %r8, %r8

// Store
lea addresses_WC+0x11626, %rsi
cmp %r10, %r10
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
cmp $62155, %r14

// Faulty Load
lea addresses_WC+0xb826, %r12
clflush (%r12)
nop
nop
nop
sub %r15, %r15
mov (%r12), %r10d
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'58': 33}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
