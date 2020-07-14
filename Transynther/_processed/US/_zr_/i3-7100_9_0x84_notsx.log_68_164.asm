.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x136d4, %rbx
nop
nop
nop
and $11952, %r14
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x69d4, %rsi
lea addresses_D_ht+0x102d4, %rdi
nop
nop
nop
nop
nop
add $21152, %r12
mov $11, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xd4, %rsi
lea addresses_WT_ht+0x14ed4, %rdi
nop
cmp %r15, %r15
mov $68, %rcx
rep movsw
nop
nop
nop
add $45277, %rdi
lea addresses_UC_ht+0x10d6, %r12
nop
cmp %r14, %r14
movb $0x61, (%r12)
nop
nop
nop
nop
add $32940, %rbx
lea addresses_WT_ht+0x1e404, %r12
and %rcx, %rcx
mov (%r12), %r14d
nop
nop
nop
nop
cmp $47668, %r12
lea addresses_D_ht+0xbcf4, %r15
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
add $10040, %rdi
lea addresses_WC_ht+0x8954, %r12
nop
nop
nop
nop
add $33517, %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
sub $50876, %rdi
lea addresses_UC_ht+0x8dd4, %r12
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
and $21697, %r15
lea addresses_UC_ht+0x1c6d4, %rsi
lea addresses_WC_ht+0x166d4, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $125, %rcx
rep movsb
nop
nop
inc %r12
lea addresses_UC_ht+0x14114, %rbx
nop
nop
xor %r9, %r9
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
sub $27777, %r9
lea addresses_WT_ht+0xee14, %rsi
lea addresses_WC_ht+0x42c4, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $65, %rcx
rep movsw
nop
nop
and $17189, %r14
lea addresses_UC_ht+0x1e654, %rsi
lea addresses_D_ht+0x36d4, %rdi
nop
nop
nop
dec %r12
mov $47, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x10d4, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
and %r15, %r15
lea addresses_D_ht+0x14494, %r12
nop
nop
sub %rcx, %rcx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
and $19407, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe2d4, %r12
and $56327, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
xor $24758, %r12

// REPMOV
lea addresses_WC+0x17cd4, %rsi
lea addresses_A+0x1e010, %rdi
nop
nop
sub %r14, %r14
mov $91, %rcx
rep movsl
nop
nop
nop
dec %r14

// REPMOV
lea addresses_RW+0x1c60b, %rsi
lea addresses_WC+0x19ad4, %rdi
nop
nop
nop
nop
add $52146, %r12
mov $33, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_US+0xed4, %r10
cmp $48094, %r15
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
