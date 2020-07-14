.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11e44, %rdx
nop
nop
nop
nop
cmp $31182, %r10
movb $0x61, (%rdx)
nop
nop
dec %r9
lea addresses_UC_ht+0x7444, %rsi
lea addresses_WC_ht+0x1eb44, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $78, %rcx
rep movsb
add %r10, %r10
lea addresses_UC_ht+0xa493, %rdx
nop
nop
nop
nop
nop
inc %rbp
mov (%rdx), %r9
nop
nop
nop
dec %r9
lea addresses_D_ht+0x15454, %rdi
clflush (%rdi)
nop
nop
nop
dec %r10
movb $0x61, (%rdi)
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x9890, %r9
nop
nop
nop
and $4285, %rbp
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
add $19015, %r9
lea addresses_normal_ht+0x2e2c, %rsi
lea addresses_WT_ht+0x8644, %rdi
nop
nop
and %r9, %r9
mov $94, %rcx
rep movsq
sub $35983, %rbp
lea addresses_UC_ht+0xf344, %rdi
clflush (%rdi)
nop
nop
nop
cmp $38197, %rsi
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
nop
sub $17909, %r9
lea addresses_normal_ht+0x1a744, %rsi
lea addresses_D_ht+0x14f74, %rdi
nop
nop
nop
add $38393, %r13
mov $57, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x13744, %r10
nop
nop
and %r9, %r9
movl $0x61626364, (%r10)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1c34c, %rsi
lea addresses_WC_ht+0xf344, %rdi
clflush (%rsi)
nop
nop
nop
cmp $64402, %r10
mov $78, %rcx
rep movsl
xor $55839, %rdi
lea addresses_WC_ht+0x72c, %rsi
lea addresses_WC_ht+0xc744, %rdi
nop
nop
nop
nop
nop
and $55808, %rbp
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x9744, %r9
clflush (%r9)
sub %r13, %r13
movw $0x6162, (%r9)
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1d014, %r10
nop
nop
nop
nop
lfence
mov (%r10), %rsi
nop
nop
nop
cmp $54930, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xdf14, %r15
nop
nop
nop
nop
inc %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $27735, %rax

// REPMOV
lea addresses_normal+0x10b44, %rsi
lea addresses_WT+0x1c344, %rdi
nop
nop
nop
nop
dec %r15
mov $18, %rcx
rep movsl
nop
cmp $2403, %rax

// Store
lea addresses_WT+0x632a, %rbp
clflush (%rbp)
nop
and $47154, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movaps %xmm3, (%rbp)
nop
nop
sub $11215, %rbx

// Store
lea addresses_D+0x1ad44, %rsi
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
sub $13054, %rcx

// Load
lea addresses_RW+0x1fb44, %r15
nop
nop
and $51473, %rbx
mov (%r15), %rcx

// Exception!!!
nop
nop
mov (0), %rcx
nop
nop
nop
sub $11897, %rbp

// Faulty Load
lea addresses_RW+0x3b44, %rcx
nop
nop
sub $524, %rax
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 69}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
