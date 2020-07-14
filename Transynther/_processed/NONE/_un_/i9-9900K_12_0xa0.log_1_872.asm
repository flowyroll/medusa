.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x18323, %rdi
nop
nop
nop
nop
nop
and $25534, %r8
movl $0x61626364, (%rdi)
dec %r9
lea addresses_WT_ht+0x15c26, %r11
nop
xor %rdx, %rdx
mov (%r11), %r12
nop
nop
nop
nop
and $61015, %rcx
lea addresses_D_ht+0x18126, %r12
nop
nop
nop
nop
cmp $24904, %r11
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x176d6, %rdx
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x16726, %r8
nop
nop
nop
add $27212, %rdi
mov (%r8), %r12
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xf482, %rcx
nop
nop
mfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
and $57422, %rcx
lea addresses_WT_ht+0x5ae6, %rsi
lea addresses_A_ht+0xafa6, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $57, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x16b26, %rsi
lea addresses_WC_ht+0x19926, %rdi
nop
nop
nop
nop
nop
sub $979, %r12
mov $124, %rcx
rep movsq
nop
nop
and $54747, %r11
lea addresses_A_ht+0xe396, %r9
nop
nop
nop
nop
add %r8, %r8
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r12
nop
and $21101, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x3b26, %rsi
lea addresses_UC+0xdbba, %rdi
nop
add %rbp, %rbp
mov $66, %rcx
rep movsl
dec %rdi

// Load
lea addresses_US+0x6926, %rcx
nop
add %r10, %r10
mov (%rcx), %ax
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_US+0xeb26, %rsi
clflush (%rsi)
cmp $22038, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x1ef26, %rdi
nop
nop
nop
nop
and %rax, %rax
movb $0x51, (%rdi)
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_UC+0x3b26, %rsi
lea addresses_D+0x1a3f2, %rdi
nop
add $19361, %r13
mov $107, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x17126, %r14
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r14)
cmp $19295, %r14

// Store
lea addresses_normal+0x15b26, %r10
nop
dec %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r10)
and %rcx, %rcx

// Store
lea addresses_RW+0x17126, %rdi
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
and $12214, %r14

// Store
lea addresses_UC+0x3b26, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x51, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
nop
lfence

// Store
mov $0x2acdf40000000b26, %rbp
nop
add %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
add %rbp, %rbp

// Store
lea addresses_UC+0x1f5a6, %rdi
nop
sub $18947, %r13
movl $0x51525354, (%rdi)
nop
xor $35845, %rsi

// Store
mov $0x6e08840000000602, %r10
sub $50935, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
cmp $23115, %rbp

// Store
lea addresses_US+0x191a6, %rcx
nop
nop
nop
cmp $50781, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x16626, %rdi
nop
nop
add $24021, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rdi)
nop
dec %rcx

// Faulty Load
lea addresses_UC+0x3b26, %r14
nop
cmp $49406, %rcx
mov (%r14), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'71': 1}
71
*/
