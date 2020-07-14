.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19796, %rsi
nop
nop
inc %r9
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x38b6, %rsi
lea addresses_normal_ht+0x13bd6, %rdi
clflush (%rdi)
nop
nop
xor $31976, %r9
mov $10, %rcx
rep movsl
cmp $31526, %r13
lea addresses_normal_ht+0x14116, %r14
nop
nop
cmp $42141, %rdx
mov (%r14), %rsi
nop
sub %rdx, %rdx
lea addresses_A_ht+0x2b16, %rsi
lea addresses_UC_ht+0xde96, %rdi
nop
nop
nop
cmp $26631, %rdx
mov $70, %rcx
rep movsb
nop
nop
nop
nop
xor $51694, %rdi
lea addresses_A_ht+0x11c16, %rdi
nop
nop
dec %r14
mov (%rdi), %r9
add $53, %r14
lea addresses_WT_ht+0x7216, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x1c688, %r14
nop
nop
nop
nop
and %r13, %r13
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
cmp $8247, %rdi
lea addresses_UC_ht+0xf876, %rsi
lea addresses_WT_ht+0x1c416, %rdi
nop
nop
and %rbp, %rbp
mov $53, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x14b16, %r14
nop
nop
sub $53995, %r9
movb (%r14), %r13b
nop
nop
nop
and $50679, %rdi
lea addresses_WC_ht+0x10f82, %rdx
nop
sub $63903, %rdi
movb (%rdx), %r14b
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x5496, %rdx
nop
nop
nop
cmp $46337, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_US+0x1c116, %r15
nop
nop
nop
nop
and $47491, %rbx
mov (%r15), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
