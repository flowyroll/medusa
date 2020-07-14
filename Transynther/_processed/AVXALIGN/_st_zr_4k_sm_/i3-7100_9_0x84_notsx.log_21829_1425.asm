.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xe2dd, %rsi
lea addresses_UC_ht+0x1cabd, %rdi
clflush (%rdi)
nop
nop
nop
cmp $45323, %rdx
mov $23, %rcx
rep movsb
nop
dec %rax
lea addresses_WC_ht+0x52cd, %r12
xor %rbx, %rbx
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rdx
cmp %rdi, %rdi
lea addresses_normal_ht+0x1e2dd, %rbx
nop
nop
nop
add $64981, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1868b, %rdi
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
and $5036, %rsi
lea addresses_WT_ht+0x138c5, %rsi
lea addresses_A_ht+0x6e9d, %rdi
nop
xor %rbx, %rbx
mov $15, %rcx
rep movsq
nop
nop
dec %rax
lea addresses_WC_ht+0xfed, %rbx
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rbx)
nop
nop
cmp $25884, %rax
lea addresses_D_ht+0x7ea2, %rcx
nop
nop
nop
and %rsi, %rsi
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
and $20230, %rsi
lea addresses_WT_ht+0x162dd, %rdi
nop
sub %rcx, %rcx
mov (%rdi), %rsi
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1101d, %rsi
nop
nop
nop
nop
nop
add $612, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
and $50377, %rcx
lea addresses_D_ht+0x1a2dd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x92dd, %r12
nop
xor $54868, %rax
movl $0x61626364, (%r12)
nop
nop
cmp $11302, %rsi
lea addresses_WT_ht+0x46d5, %rcx
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
add %rsi, %rsi
lea addresses_normal_ht+0x8aee, %rcx
nop
xor $33680, %rdx
mov (%rcx), %rax
cmp %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x3add, %rcx
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%rcx)
nop
and %r15, %r15

// REPMOV
lea addresses_UC+0xcdd, %rsi
lea addresses_UC+0x1e9dd, %rdi
nop
nop
cmp $59796, %rdx
mov $25, %rcx
rep movsq
nop
and %rdx, %rdx

// Load
mov $0x12d, %rbp
clflush (%rbp)
nop
cmp $50971, %rdi
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
cmp $39169, %r15

// Store
mov $0x1af6a700000001fa, %rsi
nop
nop
nop
xor %rbp, %rbp
movb $0x51, (%rsi)
nop
cmp $16933, %r15

// Store
lea addresses_UC+0x1e45, %rbp
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbp)
and $7556, %rdx

// Store
lea addresses_normal+0x105dd, %rbp
nop
nop
nop
nop
inc %rcx
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and $47167, %rcx

// Store
lea addresses_PSE+0x3b6d, %rdi
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
xor $13660, %rcx

// Store
lea addresses_UC+0x3add, %rbp
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rbp)
nop
nop
nop
dec %r8

// Store
mov $0x68100e00000006dd, %rdx
nop
nop
inc %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
cmp $9769, %rbp

// Store
lea addresses_WT+0x1acdd, %rsi
cmp $50742, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_UC+0x3add, %rcx
nop
nop
nop
nop
and %r8, %r8
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 21498, '00': 331}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
