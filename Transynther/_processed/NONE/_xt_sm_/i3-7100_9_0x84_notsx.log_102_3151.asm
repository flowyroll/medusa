.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11b29, %rbx
nop
nop
nop
xor %r12, %r12
movb (%rbx), %al
nop
nop
nop
and $19145, %r15
lea addresses_WT_ht+0x1e329, %rsi
nop
nop
nop
nop
dec %rax
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x19b29, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rbx), %r15d
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1abb9, %rsi
lea addresses_A_ht+0x1729, %rdi
nop
nop
nop
xor $31730, %rbx
mov $3, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x16ade, %rdi
nop
sub $30116, %rbx
mov (%rdi), %r12d
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x6629, %rsi
lea addresses_UC_ht+0xdac9, %rdi
clflush (%rsi)
nop
nop
cmp $47492, %r8
mov $115, %rcx
rep movsl
nop
cmp $45528, %r8
lea addresses_UC_ht+0x15089, %r8
clflush (%r8)
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0x4329, %rbx
nop
nop
cmp $39043, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
and $10631, %rdi

// Store
lea addresses_normal+0x64ab, %r14
nop
nop
nop
nop
xor $29806, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r14)

// Exception!!!
nop
nop
mov (0), %r13
nop
and $55513, %r9

// Store
lea addresses_WC+0x7f49, %r14
nop
nop
nop
xor $40743, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x18d29, %rbx
add $56399, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
and $1961, %r9

// Faulty Load
lea addresses_RW+0x4329, %r9
nop
nop
nop
nop
nop
add %r10, %r10
mov (%r9), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 102}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
