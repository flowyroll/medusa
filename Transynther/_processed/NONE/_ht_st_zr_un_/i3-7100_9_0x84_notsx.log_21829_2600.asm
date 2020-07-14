.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xadf9, %rdi
nop
nop
nop
nop
nop
and $61610, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x18289, %r13
nop
nop
nop
nop
nop
xor %r8, %r8
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xffd9, %rdi
nop
nop
nop
nop
nop
sub $20685, %rdx
movb $0x61, (%rdi)
nop
inc %rcx
lea addresses_A_ht+0xec79, %rcx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rcx)
add %rdi, %rdi
lea addresses_A_ht+0x10679, %r9
and %r13, %r13
movb $0x61, (%r9)
nop
nop
nop
and $35687, %rdx
lea addresses_UC_ht+0x19d9, %rsi
lea addresses_WT_ht+0x16629, %rdi
nop
nop
nop
nop
inc %rbp
mov $41, %rcx
rep movsl
nop
nop
nop
nop
nop
add $22367, %r9
lea addresses_WC_ht+0x92b9, %rsi
lea addresses_WT_ht+0x5481, %rdi
nop
nop
add $49278, %r9
mov $11, %rcx
rep movsl
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xad79, %rbp
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xd279, %rdx
nop
nop
inc %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
sub $9191, %rdx
lea addresses_normal_ht+0x6a79, %rdi
nop
and %r8, %r8
movb (%rdi), %cl
xor %rdi, %rdi
lea addresses_A_ht+0x5739, %r9
nop
nop
nop
nop
inc %r13
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
and $8131, %r9
lea addresses_A_ht+0x18e95, %rcx
inc %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
and $27305, %r9
lea addresses_WC_ht+0x9679, %rsi
lea addresses_WC_ht+0x8b89, %rdi
nop
nop
nop
nop
mfence
mov $110, %rcx
rep movsb
nop
nop
xor $29254, %rbp
lea addresses_normal_ht+0x10ac9, %rbp
clflush (%rbp)
nop
cmp %rsi, %rsi
mov (%rbp), %di
and %rcx, %rcx
lea addresses_normal_ht+0x63f1, %rsi
nop
nop
add %rdi, %rdi
mov (%rsi), %dx
nop
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_WT+0x379, %rdx
nop
nop
sub $60372, %r10
movw $0x5152, (%rdx)
nop
nop
nop
nop
dec %r13

// Store
mov $0x119, %rdx
clflush (%rdx)
nop
nop
xor $43378, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
and %r13, %r13

// Faulty Load
lea addresses_A+0x3679, %rdx
and $30662, %rbp
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'47': 384, '01': 292, '44': 16, '45': 36, 'bf': 2, '67': 5, '36': 2, '08': 15, '48': 370, '80': 295, '46': 29, '00': 20251, 'e0': 1, '3d': 110, '40': 21}
00 00 01 00 00 47 00 00 00 00 00 00 47 80 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 80 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 47 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 3d 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 01 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 3d 00 01 00 00 3d 00 00 00 00 00 00 00 00 00 00 00 00 3d 00 00 00 00 80 00 00 01 48 00 00 00 08 00 00 00 00 00 00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3d 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 80 00 47 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 3d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
