.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x71c4, %r10
nop
nop
nop
nop
nop
add $5832, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
nop
add $51115, %rdx
lea addresses_WC_ht+0x17b44, %r9
and $61486, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xff44, %rdx
clflush (%rdx)
nop
nop
nop
and $36660, %r14
movb (%rdx), %al
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x79c4, %rcx
nop
xor %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
add %r9, %r9
lea addresses_A_ht+0x31c4, %rsi
lea addresses_UC_ht+0xeb84, %rdi
nop
nop
cmp %r10, %r10
mov $126, %rcx
rep movsw
and %r13, %r13
lea addresses_A_ht+0x10ca4, %rdx
nop
nop
xor %r9, %r9
mov (%rdx), %r10w
cmp $9026, %rsi
lea addresses_D_ht+0xfdc4, %rsi
lea addresses_normal_ht+0xf31c, %rdi
and $5389, %rax
mov $42, %rcx
rep movsq
nop
nop
nop
nop
nop
add $5654, %r9
lea addresses_D_ht+0x148f7, %rsi
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
xor $26335, %r9
lea addresses_WT_ht+0x14484, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
sub $44728, %r10
lea addresses_D_ht+0x1304, %rdx
dec %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
sub $49935, %rdi
lea addresses_WC_ht+0x659c, %r13
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r13)
nop
add %r14, %r14
lea addresses_UC_ht+0x1a5c4, %rsi
lea addresses_UC_ht+0xe504, %rdi
clflush (%rdi)
nop
add $31879, %rdx
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1c988, %rdi
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rsi

// Load
lea addresses_UC+0x1704, %rbx
nop
nop
nop
dec %r10
mov (%rbx), %rsi
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0xdb3e, %rbp
clflush (%rbp)
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbp)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
dec %r14

// Store
lea addresses_A+0x189c4, %r14
nop
nop
nop
sub $1340, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
add $46312, %r10

// Load
lea addresses_normal+0x19bb8, %rbp
nop
nop
nop
nop
xor %r13, %r13
mov (%rbp), %r14
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x13244, %rbx
nop
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%rbx)
nop
nop
nop
and $30079, %r10

// Faulty Load
mov $0x5e535000000001c4, %rbp
cmp $7809, %rsi
mov (%rbp), %ebx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
