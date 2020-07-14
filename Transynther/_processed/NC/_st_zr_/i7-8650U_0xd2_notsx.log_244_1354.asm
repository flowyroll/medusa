.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xc94, %rsi
lea addresses_D_ht+0x12bdb, %rdi
nop
nop
mfence
mov $50, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x8013, %rdi
nop
nop
nop
nop
nop
add $4755, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %rdi
vmovaps %ymm7, (%rdi)
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0xa47b, %rdi
nop
nop
dec %rdx
movb $0x61, (%rdi)
nop
nop
and $62856, %rsi
lea addresses_UC_ht+0x4c13, %r14
clflush (%r14)
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0xbb73, %rdx
inc %r9
mov (%rdx), %rsi
nop
and $54347, %r9
lea addresses_WT_ht+0x9613, %rsi
nop
nop
nop
nop
nop
cmp $28219, %rbp
mov (%rsi), %rcx
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1ce13, %rdx
clflush (%rdx)
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdx
vmovaps %ymm4, (%rdx)
and $26430, %r14
lea addresses_A_ht+0x9d33, %rdi
nop
nop
nop
xor %r14, %r14
mov (%rdi), %r9
xor $51718, %rcx
lea addresses_UC_ht+0x13313, %rsi
lea addresses_A_ht+0xc613, %rdi
nop
dec %r9
mov $84, %rcx
rep movsw
nop
nop
nop
and $24511, %rdi
lea addresses_WC_ht+0x5638, %rdx
nop
nop
nop
nop
add %r9, %r9
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x182f3, %rsi
lea addresses_UC+0x1c213, %rdi
clflush (%rsi)
dec %r8
mov $122, %rcx
rep movsq
sub %rdi, %rdi

// REPMOV
lea addresses_RW+0x3613, %rsi
lea addresses_WC+0x4213, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r14, %r14
mov $104, %rcx
rep movsw
nop
and %r8, %r8

// Faulty Load
mov $0x28764b0000000213, %rdi
nop
nop
add %r8, %r8
mov (%rdi), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 159, '00': 77, '34': 8}
32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 00 32 00 00 32 32 00 00 32 00 00 32 00 32 00 00 00 32 32 00 34 00 32 00 00 00 00 00 32 00 00 00 00 34 32 00 32 00 00 32 00 00 34 00 00 32 00 00 34 32 32 00 00 00 00 00 00 32 00 34 00 32 32 00 00 00 00 00 32 00 00 00 00 00 00 32 00 32 00 32 00 32 34 34 00 00 00 00 34 00 00 00 32 00 00 32 00 32 00 00 32 00 00 00 32 00 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32
*/
