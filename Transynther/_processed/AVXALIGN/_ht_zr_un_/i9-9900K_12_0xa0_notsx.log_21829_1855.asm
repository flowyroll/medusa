.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e2ec, %rsi
lea addresses_D_ht+0x1b96c, %rdi
sub $50163, %rbp
mov $44, %rcx
rep movsb
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x162e4, %rsi
lea addresses_D_ht+0x18ec, %rdi
nop
nop
nop
add $23753, %r8
mov $27, %rcx
rep movsb
cmp %r9, %r9
lea addresses_D_ht+0xd4dc, %rsi
nop
nop
nop
nop
nop
cmp $20646, %r8
mov (%rsi), %edi
and $42749, %r8
lea addresses_A_ht+0x13fec, %rdi
clflush (%rdi)
nop
nop
inc %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
add $4289, %rbp
lea addresses_normal_ht+0x1d29c, %r9
add %rdi, %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x70ec, %rsi
lea addresses_WC_ht+0x149ec, %rdi
nop
dec %r12
mov $14, %rcx
rep movsl
nop
nop
cmp $59577, %rcx
lea addresses_normal_ht+0x1bd17, %r12
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
nop
sub $36594, %r12
lea addresses_normal_ht+0x1bdec, %r12
clflush (%r12)
nop
nop
nop
cmp $33948, %rdi
mov (%r12), %rcx
nop
nop
nop
nop
cmp $52011, %r9
lea addresses_D_ht+0x16e2c, %rbp
nop
nop
nop
cmp $42004, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
and $56060, %r12
lea addresses_UC_ht+0x106ec, %rsi
lea addresses_A_ht+0xd4c, %rdi
clflush (%rsi)
nop
nop
sub $26595, %r12
mov $24, %rcx
rep movsw
add $24675, %r9
lea addresses_WC_ht+0x1b0ec, %rsi
lea addresses_WC_ht+0x30ec, %rdi
nop
nop
nop
cmp %r14, %r14
mov $36, %rcx
rep movsw
nop
nop
nop
cmp $42179, %r12
lea addresses_UC_ht+0x1b4ec, %rcx
clflush (%rcx)
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
and $46693, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rdi
push %rsi

// Store
mov $0x3c154f00000007ec, %rax
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rax)
nop
nop
nop
and $14011, %r12

// Faulty Load
lea addresses_WT+0x1a0ec, %rax
sub %r12, %r12
movaps (%rax), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 10}}
{'2f': 2, '48': 4795, '44': 26, '45': 4102, 'ff': 2, '00': 12902}
00 45 48 45 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 45 00 45 48 00 00 48 45 00 48 00 00 45 00 00 00 45 00 48 00 00 45 00 48 45 00 00 44 00 45 00 00 45 48 00 48 00 00 00 00 00 48 48 00 45 00 00 45 00 45 48 48 00 45 00 00 45 00 00 48 00 48 48 45 48 00 45 00 00 00 00 48 00 00 00 48 45 00 00 48 00 00 00 00 45 48 45 00 48 00 00 00 00 00 00 00 48 48 00 45 00 48 00 00 45 00 00 00 00 00 00 00 48 45 00 48 48 48 00 45 00 00 00 00 00 45 00 48 00 00 00 00 48 45 00 45 00 00 45 00 45 00 45 48 00 00 48 48 48 00 00 45 00 00 00 48 00 00 45 45 48 48 00 00 45 48 00 45 00 48 00 45 00 45 00 48 45 45 48 00 00 00 00 45 00 00 48 00 48 00 00 00 00 48 48 48 45 00 00 48 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 45 48 48 00 00 00 00 00 48 48 00 00 00 48 00 00 00 45 00 00 00 00 00 48 00 00 00 00 48 48 45 00 45 48 00 00 45 00 45 00 48 45 00 45 00 00 00 45 00 45 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 48 00 45 00 45 00 48 00 00 00 45 00 48 00 00 00 00 00 45 45 00 48 48 00 00 45 48 00 45 00 45 00 48 45 00 00 45 00 00 00 48 00 45 00 48 00 00 45 00 00 00 48 00 00 00 00 00 48 45 00 00 45 00 00 45 48 45 00 00 48 48 00 00 00 00 48 45 00 45 45 00 00 45 48 48 48 00 00 00 00 00 48 48 00 00 00 00 48 00 45 45 00 00 48 00 00 00 45 00 00 45 45 00 00 00 48 00 45 00 00 48 48 00 00 00 45 48 00 00 00 00 00 00 00 00 45 45 00 00 48 00 45 00 48 00 48 45 00 00 00 00 00 45 00 00 00 48 45 48 00 00 00 00 48 48 00 48 45 00 45 00 45 00 48 00 00 00 00 00 00 48 00 45 00 00 00 48 00 48 00 00 45 00 48 00 00 45 00 00 00 00 00 00 00 45 00 48 45 00 45 00 48 45 00 00 00 00 45 00 00 00 00 48 45 00 45 00 48 48 45 45 45 48 00 00 00 48 00 48 00 45 00 48 45 00 00 45 48 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 48 45 00 00 48 48 00 00 45 00 00 00 45 00 48 00 45 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 45 48 48 00 00 00 00 00 00 00 00 00 45 00 48 48 45 00 00 45 48 00 00 44 00 00 00 00 45 00 00 45 00 48 00 00 00 00 00 00 00 48 00 48 00 00 48 00 45 00 00 00 00 45 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 45 00 48 00 00 48 00 48 45 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 45 00 48 00 48 00 45 45 00 44 00 00 45 00 48 00 45 00 48 45 00 00 00 00 00 45 00 00 00 00 00 48 00 45 48 48 00 00 00 48 00 48 00 48 00 45 00 45 45 00 00 00 00 00 48 00 00 00 00 00 00 48 45 45 00 00 00 00 45 00 00 00 48 45 00 00 45 00 45 45 00 00 00 00 00 48 48 00 00 00 00 45 00 45 00 48 48 00 48 45 00 00 45 00 45 00 48 00 48 00 48 00 00 45 00 48 00 45 00 00 00 00 00 00 48 45 00 00 00 00 45 00 00 48 00 45 00 48 00 00 00 00 00 48 45 00 00 45 00 00 00 00 48 48 00 45 00 48 00 00 00 00 00 00 00 00 48 45 00 00 45 48 00 48 48 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 48 00 00 45 00 45 45 48 00 00 48 45 45 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 45 48 48 45 00 48 00 00 45 48 48 00 00 48 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 45 00 48 45 00 00 00 00 45 00 00 48 45 00 00 00 00 00 00 00 00 48 48 45 00 45 00 00 00 00 48 48 00 00 00 00 00
*/
