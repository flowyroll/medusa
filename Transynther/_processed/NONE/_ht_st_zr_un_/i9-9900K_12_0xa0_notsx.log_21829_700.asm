.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x12446, %r9
nop
nop
nop
nop
and %rbx, %rbx
mov (%r9), %r12
xor %rcx, %rcx
lea addresses_normal_ht+0x6d5a, %rdx
nop
nop
nop
inc %r13
movl $0x61626364, (%rdx)
nop
add %rcx, %rcx
lea addresses_WT_ht+0x188fa, %rbx
nop
xor $3080, %r9
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
and $245, %rdx
lea addresses_UC_ht+0x23fa, %rsi
lea addresses_WT_ht+0x13e5a, %rdi
nop
nop
nop
nop
and $26319, %r12
mov $1, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xc55a, %r12
nop
and %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x16d22, %rsi
lea addresses_normal_ht+0x505a, %rdi
clflush (%rdi)
nop
dec %r12
mov $67, %rcx
rep movsb
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xe39a, %rdi
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
inc %rsi
lea addresses_D_ht+0x1b55a, %r13
cmp $40625, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r13)
cmp $19868, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x965a, %rsi
lea addresses_WC+0x2bef, %rdi
clflush (%rsi)
nop
xor $34285, %r12
mov $97, %rcx
rep movsw
nop
and %rax, %rax

// REPMOV
lea addresses_UC+0x215a, %rsi
lea addresses_UC+0x135a, %rdi
nop
nop
sub $45826, %rbp
mov $115, %rcx
rep movsb

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
xor $5814, %rdi

// Store
mov $0xc5a, %rbp
nop
nop
nop
nop
dec %r15
movl $0x51525354, (%rbp)
nop
cmp $32476, %rdi

// Store
lea addresses_WT+0x95a, %rbp
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rbp
movaps %xmm4, (%rbp)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0x1f1da, %rbp
nop
nop
nop
nop
nop
add $44752, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
add $40703, %r15

// Store
lea addresses_US+0x1d95a, %rbp
nop
nop
nop
nop
nop
sub $23459, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbp)
and %r15, %r15

// Load
lea addresses_RW+0xb61a, %rbp
nop
nop
nop
nop
sub %r12, %r12
mov (%rbp), %r15
cmp %rcx, %rcx

// Load
lea addresses_US+0x3eda, %rsi
clflush (%rsi)
nop
nop
nop
nop
and $64991, %r12
mov (%rsi), %eax
inc %r15

// Faulty Load
lea addresses_A+0x755a, %rdi
clflush (%rdi)
nop
sub $413, %rsi
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 10}}
{'08': 15, '00': 14329, '44': 1, '38': 20, '34': 7452, '94': 1, 'ff': 11}
00 00 00 00 34 34 34 00 00 34 34 34 34 00 34 34 00 34 00 00 00 00 34 34 00 00 34 34 00 00 34 34 00 00 00 34 34 34 34 00 34 34 34 34 00 00 00 00 00 00 00 00 34 34 00 00 00 34 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 34 34 34 00 00 00 34 00 00 00 34 00 00 34 34 00 34 00 34 00 00 00 00 00 00 00 34 00 34 00 34 00 00 00 00 00 00 34 00 00 34 34 00 00 34 00 34 00 00 00 34 00 00 34 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 34 00 00 00 34 00 34 34 00 00 00 00 00 00 00 00 34 00 34 34 34 34 00 34 00 34 00 00 34 34 00 00 00 34 00 00 34 34 34 34 00 00 00 00 00 00 34 00 00 00 00 34 00 34 00 34 34 34 34 00 00 00 34 00 00 00 00 34 00 00 34 00 00 00 00 34 34 34 34 00 34 00 34 34 34 00 00 34 00 00 00 34 00 00 00 00 00 00 34 34 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 34 00 00 34 00 00 34 34 34 00 00 00 00 00 00 00 34 34 34 00 00 34 00 34 00 00 34 00 00 00 00 00 00 00 00 ff 00 34 34 00 34 00 00 00 34 00 34 34 34 00 00 00 00 34 00 00 34 00 00 34 34 34 00 34 00 00 34 00 34 00 34 00 34 00 34 00 34 00 00 34 00 00 00 00 34 00 34 00 34 00 00 00 00 00 00 34 00 00 00 34 34 00 00 34 00 00 34 00 00 00 00 00 34 00 00 00 34 00 00 00 00 00 34 00 34 00 00 34 34 00 34 00 34 00 00 00 00 34 00 34 00 00 34 34 00 34 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 34 00 34 00 00 00 00 00 00 34 34 00 00 34 00 00 34 00 00 00 34 00 00 00 00 00 00 00 00 00 00 34 34 34 34 34 34 34 00 34 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 08 00 34 00 00 34 34 00 00 00 34 34 00 34 00 00 34 00 00 34 34 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 34 00 34 00 00 00 34 00 00 00 34 00 34 00 00 00 00 00 00 34 00 34 00 00 34 34 34 00 34 00 00 34 34 00 00 34 34 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 34 00 00 00 00 34 34 34 00 34 00 00 34 34 00 34 00 34 00 34 00 00 00 00 00 34 00 34 00 34 00 00 00 34 00 34 34 34 00 00 34 34 34 34 34 34 00 34 00 34 34 34 34 00 34 00 34 00 00 34 34 00 34 00 34 34 00 00 34 00 34 00 00 00 00 34 00 34 00 00 34 00 00 00 00 00 00 00 34 34 00 00 00 00 00 00 00 00 00 00 34 00 34 00 00 00 00 34 00 00 00 00 00 00 34 34 00 00 00 34 00 00 34 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 34 00 00 34 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 34 34 00 00 34 00 00 00 00 00 34 34 34 34 34 00 00 00 00 00 34 00 00 34 00 34 00 00 00 34 00 00 00 00 00 34 34 00 00 00 34 00 34 34 00 00 34 00 34 34 34 34 00 00 00 34 00 00 00 34 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 34 00 00 34 34 34 08 00 00 34 00 00 34 00 00 34 00 00 34 00 34 00 00 34 00 00 00 34 34 00 34 34 34 00 00 00 34 00 34 00 00 34 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 34 00 34 00 34 00 00 34 34 34 34 00 00 00 34 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 34 34 00 00 34 00 00 34 00 00 00 00 00 00 00 00 00 00
*/
