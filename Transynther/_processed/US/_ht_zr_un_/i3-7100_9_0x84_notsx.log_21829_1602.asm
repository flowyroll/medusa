.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc64, %r10
nop
nop
nop
nop
nop
dec %r9
mov (%r10), %r8
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1cf64, %r12
nop
lfence
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x12c32, %rcx
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rcx)
sub $40165, %r15
lea addresses_normal_ht+0x1647a, %rsi
lea addresses_WC_ht+0x10b61, %rdi
nop
nop
nop
nop
xor $37150, %r15
mov $56, %rcx
rep movsw
nop
nop
cmp $22498, %r15
lea addresses_UC_ht+0x1cce4, %r12
clflush (%r12)
xor $8189, %rdi
movw $0x6162, (%r12)
nop
nop
nop
add $7306, %r9
lea addresses_WC_ht+0x17344, %r9
dec %r15
mov (%r9), %ax
nop
nop
mfence
lea addresses_WC_ht+0xc604, %rsi
lea addresses_A_ht+0x12e6c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $64648, %r12
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0xf964, %r10
nop
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
cmp $8341, %r15

// Store
lea addresses_WC+0x102e4, %rcx
nop
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
dec %r10

// Load
lea addresses_D+0xd564, %rsi
clflush (%rsi)
dec %r15
mov (%rsi), %rbp
nop
nop
add %rbp, %rbp

// Load
lea addresses_RW+0x7864, %rax
clflush (%rax)
nop
nop
nop
cmp $24030, %rbp
mov (%rax), %r10d
nop
nop
nop
nop
nop
add $7862, %rax

// Store
lea addresses_WC+0x122a4, %rcx
nop
nop
nop
nop
nop
add $6322, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)
nop
cmp $14352, %rbp

// Store
lea addresses_D+0x10d64, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
dec %r8

// Store
lea addresses_WC+0x57e4, %r8
mfence
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
xor $59766, %rbp

// Store
lea addresses_UC+0xe764, %r15
nop
add %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_A+0x5cbc, %rsi
lea addresses_normal+0x1622c, %rdi
nop
inc %r8
mov $87, %rcx
rep movsb
nop
nop
and $42898, %r10

// Load
lea addresses_WC+0x1ee28, %rdi
nop
nop
nop
nop
nop
and $62728, %r10
mov (%rdi), %r8
nop
sub $1337, %rsi

// Load
lea addresses_A+0x180e4, %rbp
nop
nop
nop
sub %r15, %r15
movb (%rbp), %r8b
nop
nop
nop
nop
nop
inc %rbp

// Load
mov $0x6fe7060000000cf4, %rsi
nop
nop
nop
cmp $32255, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
sub $64549, %rbp

// Store
mov $0x35c4200000000c64, %rsi
dec %r8
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0x15164, %r8
nop
nop
nop
sub $43133, %rcx
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
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
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'c8': 5293, '00': 2523, '48': 6012, '08': 91, '44': 7910}
00 c8 44 44 44 48 48 00 c8 48 44 48 44 44 00 00 44 44 44 44 c8 44 48 44 c8 c8 48 44 48 c8 48 44 44 c8 c8 c8 44 48 48 48 48 44 00 48 48 48 c8 c8 c8 44 c8 c8 44 48 00 00 48 48 44 c8 c8 44 44 44 44 44 44 44 44 00 48 c8 44 44 48 44 00 00 44 48 44 48 44 44 44 44 44 44 48 48 44 44 44 c8 c8 48 c8 c8 48 44 00 00 44 44 44 44 c8 44 c8 44 00 44 c8 44 48 c8 48 48 44 44 00 48 c8 48 44 c8 44 48 44 44 48 c8 44 44 00 44 48 c8 48 00 00 44 c8 c8 44 48 44 44 44 00 00 48 48 00 48 c8 48 c8 44 44 44 44 44 48 00 48 c8 c8 44 48 48 44 48 44 44 c8 48 00 44 48 48 48 00 c8 48 48 00 00 44 c8 48 48 44 c8 c8 c8 48 44 44 00 48 44 c8 48 00 00 44 c8 44 44 44 44 c8 c8 08 48 c8 48 c8 c8 44 48 c8 c8 44 48 c8 c8 44 48 44 48 00 44 44 c8 44 48 48 48 44 48 48 48 44 44 44 44 c8 c8 44 44 44 c8 c8 48 44 c8 44 00 44 c8 44 48 c8 44 44 48 c8 44 48 c8 c8 c8 44 44 c8 44 48 48 48 44 44 44 00 44 44 c8 44 48 48 c8 44 00 00 48 48 44 00 00 00 48 44 44 44 48 48 44 48 00 00 44 44 c8 48 48 44 00 00 44 48 c8 48 44 00 44 c8 48 c8 48 44 44 44 48 44 48 44 44 48 44 c8 48 00 44 c8 c8 44 00 44 c8 44 44 44 44 44 48 c8 c8 c8 44 00 48 48 c8 44 00 48 48 48 c8 44 44 44 48 c8 48 00 44 44 c8 44 48 00 44 44 44 48 c8 44 44 c8 48 00 44 48 44 c8 c8 44 48 48 c8 c8 48 c8 c8 44 44 48 48 c8 44 c8 c8 48 48 48 44 c8 c8 c8 c8 44 44 c8 48 48 c8 c8 44 44 44 44 44 44 c8 44 48 c8 44 44 44 00 44 44 48 c8 48 48 44 48 48 c8 48 48 c8 48 44 48 48 48 00 48 44 48 48 44 48 48 08 48 44 00 44 c8 44 44 44 48 c8 48 44 c8 44 c8 48 c8 44 48 00 48 48 48 48 44 48 44 c8 48 c8 44 00 44 c8 44 00 48 c8 44 44 44 48 44 44 44 00 00 44 c8 48 44 48 c8 48 48 44 44 44 c8 c8 44 c8 c8 44 48 c8 44 48 48 48 48 c8 44 44 44 44 44 00 48 c8 44 00 00 c8 c8 44 44 44 44 48 44 44 48 48 44 48 48 48 00 48 48 44 44 44 48 c8 44 00 00 c8 44 44 c8 c8 44 48 48 44 c8 c8 48 48 c8 44 44 c8 c8 c8 44 c8 44 44 00 c8 48 44 44 44 44 44 c8 44 44 c8 48 48 00 c8 44 00 44 44 44 48 00 c8 44 48 44 44 44 44 48 c8 48 44 44 48 44 48 c8 44 44 48 00 48 44 44 00 44 44 48 c8 c8 48 c8 c8 48 c8 48 c8 48 00 44 c8 c8 c8 48 48 48 c8 c8 c8 c8 48 00 00 00 48 c8 48 44 c8 c8 48 44 48 00 00 44 44 48 48 44 44 44 44 44 c8 00 48 44 44 44 44 44 c8 c8 c8 44 44 48 44 44 48 00 48 44 c8 44 00 44 44 00 44 48 48 44 48 48 48 48 48 c8 c8 44 48 44 44 48 00 00 48 48 48 44 c8 44 44 c8 48 48 44 44 44 44 44 00 48 44 00 44 c8 48 48 48 c8 44 00 44 48 44 48 c8 48 00 44 c8 48 48 c8 c8 44 44 44 44 00 c8 48 48 00 44 c8 48 00 44 44 48 48 44 c8 44 44 c8 44 44 00 44 44 44 44 48 48 48 48 c8 c8 c8 44 48 44 44 00 48 00 48 48 c8 48 00 00 48 44 44 00 48 44 48 48 44 c8 44 48 48 48 44 c8 44 c8 c8 44 48 c8 44 c8 c8 44 c8 44 00 c8 48 44 c8 48 44 44 00 44 44 44 48 48 44 c8 c8 44 c8 c8 44 44 c8 44 48 c8 c8 c8 48 48 44 48 00 44 c8 48 48 00 48 00 44 44 44 c8 c8 44 c8 44 48 c8 48 48 c8 c8 44 c8 48 48 c8 44 48 48 44 44 44 44 44 00 48 c8 44 44 00 48 c8 c8 44 c8 48 44 c8 44 44 c8 44 48 48 c8 44 48 48 c8 44 48 48 44 44 c8 c8 c8 c8 48 c8 44 44 00 44 44 44 00 44 c8 08 c8 48 00 44 00 44 44 48 c8 44 44 48 00 c8 44 00 48 c8 44 44 00 44 44 48 48 48 44 c8
*/
