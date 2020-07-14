.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1dbbf, %r8
clflush (%r8)
cmp %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
cmp $31324, %r9
lea addresses_normal_ht+0xf2f, %rsi
lea addresses_D_ht+0x1023f, %rdi
clflush (%rdi)
nop
nop
nop
sub %r9, %r9
mov $55, %rcx
rep movsb
nop
nop
nop
nop
and $41761, %r9
lea addresses_WT_ht+0x16e5, %r8
nop
nop
add %r13, %r13
mov (%r8), %rcx
and $61656, %r10
lea addresses_WC_ht+0x1bbf, %rcx
nop
nop
xor $7831, %r8
mov (%rcx), %esi
nop
nop
nop
nop
nop
add $3883, %rsi
lea addresses_D_ht+0xc1bf, %r9
nop
nop
nop
add $44103, %r10
mov (%r9), %r8w
nop
nop
nop
nop
nop
cmp $23651, %r10
lea addresses_D_ht+0x17bc6, %r10
nop
nop
nop
nop
nop
xor %r9, %r9
movb $0x61, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x33bf, %rsi
lea addresses_WC_ht+0x19ff, %rdi
nop
nop
and $52850, %rbp
mov $32, %rcx
rep movsl
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0xf9db, %rcx
nop
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%rcx)
nop
xor $19462, %r13
lea addresses_WT_ht+0x1a973, %rsi
lea addresses_WC_ht+0xb3f, %rdi
clflush (%rsi)
nop
nop
nop
xor %r10, %r10
mov $101, %rcx
rep movsw
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1e707, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
cmp $10613, %rcx
lea addresses_WC_ht+0x1c3bf, %rsi
lea addresses_normal_ht+0x109bf, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $34160, %r8
lea addresses_WC_ht+0xfff, %rsi
lea addresses_WT_ht+0x1a33f, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $30, %rcx
rep movsw
cmp $11268, %rcx
lea addresses_D_ht+0x97bf, %rsi
lea addresses_WT_ht+0x36bf, %rdi
nop
nop
nop
nop
xor $19017, %rbp
mov $65, %rcx
rep movsl
nop
and %rdi, %rdi
lea addresses_normal_ht+0x17e0d, %rsi
lea addresses_normal_ht+0x43bf, %rdi
nop
cmp $50421, %r8
mov $15, %rcx
rep movsb
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_normal+0x1947d, %rbx
nop
xor %r14, %r14
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %rdx
sub %r14, %r14

// Store
mov $0x41ebc60000000f4e, %r10
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
inc %r10

// Store
mov $0x5ffe9100000001ef, %r10
nop
nop
nop
sub $7659, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movntdq %xmm4, (%r10)
nop
nop
nop
nop
nop
cmp $47594, %r14

// Store
lea addresses_RW+0x1a447, %rbx
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
cmp $1682, %r9

// Store
lea addresses_PSE+0x79bf, %r15
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%r15)
nop
nop
cmp %r9, %r9

// Load
lea addresses_A+0x1babf, %r15
and $18666, %rbx
mov (%r15), %r14
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_PSE+0x1b3bf, %r10
nop
nop
nop
nop
dec %rbp
mov (%r10), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'33': 149}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
