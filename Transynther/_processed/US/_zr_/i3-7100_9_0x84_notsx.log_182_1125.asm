.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1cfe8, %rsi
lea addresses_WT_ht+0x12350, %rdi
nop
nop
xor $61852, %rdx
mov $76, %rcx
rep movsb
nop
inc %r14
lea addresses_normal_ht+0x1d0, %rbx
xor %r10, %r10
movb $0x61, (%rbx)
nop
and $26852, %rcx
lea addresses_UC_ht+0x11150, %r14
nop
nop
mfence
mov (%r14), %ebx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x11200, %rsi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
add $22324, %r10
lea addresses_normal_ht+0x156d0, %rsi
lea addresses_normal_ht+0x1a5a8, %rdi
nop
nop
nop
nop
nop
and $35918, %r15
mov $70, %rcx
rep movsw
nop
inc %rsi
lea addresses_WC_ht+0x1c8d0, %rsi
lea addresses_UC_ht+0xf150, %rdi
and $25208, %r15
mov $82, %rcx
rep movsl
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x14550, %r15
add $53445, %rcx
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x19130, %r10
nop
nop
sub $18252, %rdx
movb (%r10), %bl
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x14950, %r14
nop
nop
cmp $25012, %r15
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
add $60468, %rdx
lea addresses_WC_ht+0x19610, %rsi
lea addresses_A_ht+0x19e90, %rdi
nop
nop
nop
add %r15, %r15
mov $43, %rcx
rep movsb
dec %rdx
lea addresses_normal_ht+0x15550, %r14
nop
inc %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r14
movaps %xmm5, (%r14)
nop
nop
and $31932, %r15
lea addresses_A_ht+0x13950, %rdi
nop
nop
inc %rdx
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r15
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1b150, %rsi
lea addresses_A+0xf550, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $116, %rcx
rep movsw
nop
add %r14, %r14

// Store
lea addresses_normal+0x1bb48, %rbp
nop
nop
nop
nop
inc %r10
movl $0x51525354, (%rbp)
inc %r12

// Load
lea addresses_D+0x1a018, %rcx
add %rsi, %rsi
mov (%rcx), %r12w
add $58422, %r14

// REPMOV
lea addresses_normal+0x11150, %rsi
lea addresses_A+0x3310, %rdi
nop
add $64193, %r14
mov $80, %rcx
rep movsb
nop
sub %rdi, %rdi

// Store
lea addresses_US+0xb0db, %rbp
add %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movaps %xmm7, (%rbp)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_RW+0x1e450, %rbp
nop
xor $13604, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
cmp $32120, %rsi

// Store
lea addresses_US+0x5d50, %r10
nop
nop
nop
nop
add $9444, %rdi
movw $0x5152, (%r10)
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_WC+0xbe70, %rcx
nop
nop
nop
xor %rsi, %rsi
movb (%rcx), %r14b
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0xf950, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %r12, %r12
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 182}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
