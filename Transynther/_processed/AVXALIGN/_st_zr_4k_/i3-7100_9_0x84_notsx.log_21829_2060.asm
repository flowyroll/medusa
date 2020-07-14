.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11e9c, %rdi
nop
nop
cmp $8533, %rsi
mov (%rdi), %r14d
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x755c, %r12
nop
nop
sub $15268, %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x1361c, %rsi
lea addresses_A_ht+0xba39, %rdi
nop
add $63620, %rdx
mov $17, %rcx
rep movsw
sub $34960, %rsi
lea addresses_normal_ht+0x34dc, %rsi
clflush (%rsi)
nop
nop
cmp %rcx, %rcx
mov (%rsi), %r13w
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1633c, %rsi
nop
nop
nop
nop
nop
inc %rdi
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1c2fc, %r14
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
add $38444, %rax
lea addresses_UC_ht+0xf59e, %r13
add %rdi, %rdi
mov (%r13), %ecx
sub $21590, %rdi
lea addresses_WT_ht+0x1bfd4, %r14
nop
nop
nop
nop
lfence
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x8e9c, %r13
nop
nop
nop
cmp %rdi, %rdi
mov (%r13), %rsi
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x7a1c, %r8
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r8), %al
and $60455, %rdx

// Store
lea addresses_WC+0x721c, %rdi
clflush (%rdi)
nop
nop
nop
add $6617, %rcx
movb $0x51, (%rdi)
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_normal+0x5904, %rsi
lea addresses_A+0x921c, %rdi
and $9774, %r8
mov $25, %rcx
rep movsl
nop
cmp $62618, %rbp

// Store
mov $0x21c, %rdx
nop
nop
xor $52318, %r8
movw $0x5152, (%rdx)
nop
nop
cmp $26668, %r8

// Store
lea addresses_WC+0x1b3dc, %rax
clflush (%rax)
sub %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovaps %ymm5, (%rax)
nop
nop
nop
nop
and $26085, %rbp

// Store
lea addresses_normal+0x2a1c, %r14
nop
cmp $59573, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
sub $34252, %rbp

// Store
lea addresses_D+0x1621c, %rax
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rax)
and $38512, %r14

// Store
mov $0x3fc, %rax
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
sub %r8, %r8

// Load
mov $0xe1c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $10554, %rsi
mov (%rdi), %cx
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_normal+0x1121c, %rdi
nop
nop
nop
add $43429, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdi)
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x921c, %rcx
nop
nop
nop
nop
nop
inc %rbp
movntdqa (%rcx), %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2558, '58': 19271}
58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00
*/
