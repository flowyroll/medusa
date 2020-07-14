.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13540, %rsi
lea addresses_WT_ht+0x2060, %rdi
nop
sub $60422, %r10
mov $126, %rcx
rep movsl
nop
dec %r14
lea addresses_UC_ht+0x10320, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%rbp), %r14w
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x10c30, %rsi
lea addresses_WC_ht+0x6bc0, %rdi
nop
nop
xor $7560, %r15
mov $55, %rcx
rep movsb
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x17d60, %r10
nop
nop
nop
add $59470, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
nop
dec %rsi
lea addresses_D_ht+0x6dc0, %rcx
nop
nop
nop
and $23592, %rsi
mov (%rcx), %rdi
xor %r10, %r10
lea addresses_WT_ht+0x131b8, %r9
nop
nop
nop
nop
cmp $41024, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
and $38756, %rsi
lea addresses_A_ht+0x8ac0, %r9
nop
cmp %r14, %r14
movb (%r9), %r15b
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x131c0, %r15
nop
nop
nop
nop
sub $41038, %rcx
movb $0x61, (%r15)
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x85c0, %rsi
lea addresses_WC_ht+0xd540, %rdi
clflush (%rdi)
nop
nop
nop
sub %r14, %r14
mov $90, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $44533, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1abc0, %rsi
lea addresses_D+0x8951, %rdi
cmp $13152, %r8
mov $91, %rcx
rep movsq
nop
dec %r9

// Load
lea addresses_WC+0x2a75, %rdi
inc %rsi
movb (%rdi), %cl
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0xcf40, %rdi
nop
sub $44923, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
nop
xor $20967, %r14

// REPMOV
lea addresses_PSE+0x1edc0, %rsi
lea addresses_WC+0x1b9c0, %rdi
nop
nop
nop
xor $59818, %r12
mov $79, %rcx
rep movsl
nop
nop
nop
dec %rcx

// Load
lea addresses_D+0xe3a4, %rcx
inc %r12
mov (%rcx), %edx
nop
nop
nop
dec %rcx

// Store
lea addresses_A+0xd8d8, %rcx
nop
dec %r14
movw $0x5152, (%rcx)
nop
cmp $33225, %rsi

// Store
lea addresses_WT+0x5dc0, %r14
nop
nop
and $60031, %r12
movb $0x51, (%r14)
nop
and %r9, %r9

// Faulty Load
lea addresses_WT+0x5dc0, %r14
xor %rdx, %rdx
mov (%r14), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'51': 708}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
