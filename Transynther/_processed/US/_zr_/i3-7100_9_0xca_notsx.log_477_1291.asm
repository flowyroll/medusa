.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1395b, %rsi
lea addresses_WC_ht+0x1689d, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $121, %rcx
rep movsw
nop
nop
mfence
lea addresses_WT_ht+0x17b1b, %rdi
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x7b65, %rdi
nop
nop
nop
and $23393, %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
sub $59793, %r14
lea addresses_WC_ht+0x182cd, %rsi
nop
dec %r13
mov (%rsi), %di
nop
nop
dec %rdi
lea addresses_A_ht+0x13911, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r12
nop
nop
cmp $63900, %r13
lea addresses_UC_ht+0x7219, %rcx
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1a6ad, %rdi
nop
sub %r12, %r12
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r14
cmp $63438, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Load
lea addresses_A+0x82ad, %rsi
xor %rcx, %rcx
mov (%rsi), %r15
inc %rbp

// Store
mov $0x2f78dd0000000193, %r10
nop
nop
nop
and $23487, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
xor $14139, %r13

// Store
lea addresses_UC+0x11cd9, %rcx
add %rsi, %rsi
movb $0x51, (%rcx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
add $20626, %r8

// Store
lea addresses_normal+0x17c2d, %r10
xor %rsi, %rsi
movl $0x51525354, (%r10)
nop
cmp $63850, %r13

// Faulty Load
lea addresses_US+0x1832d, %r15
clflush (%r15)
nop
nop
cmp %r8, %r8
mov (%r15), %r10w
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 477}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
