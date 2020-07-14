.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3d54, %rbx
nop
nop
nop
nop
dec %rax
movb (%rbx), %r11b
nop
xor $985, %r14
lea addresses_A_ht+0x5a78, %r11
cmp %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
cmp %rax, %rax
lea addresses_normal_ht+0x16178, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%r15)
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1a2a8, %r9
nop
nop
nop
nop
nop
inc %rax
mov (%r9), %r14w
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x15db8, %r15
nop
nop
nop
nop
nop
lfence
movups (%r15), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
and $42917, %rax
lea addresses_UC_ht+0x1ab78, %r9
cmp %rbx, %rbx
mov (%r9), %r14w
nop
nop
nop
nop
and $35813, %rbx
lea addresses_A_ht+0xb778, %r10
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
and $36975, %rax
lea addresses_D_ht+0x2378, %rsi
lea addresses_WT_ht+0xa978, %rdi
nop
nop
nop
nop
nop
lfence
mov $96, %rcx
rep movsb
nop
sub $2531, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rsi

// Store
lea addresses_A+0x1e20, %r12
nop
nop
nop
nop
xor $60191, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_UC+0x1cb78, %r11
nop
nop
nop
nop
nop
xor $8121, %r14
movaps (%r11), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
cmp $52255, %r12

// Load
lea addresses_D+0x2378, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and $33208, %r12
movb (%r8), %r14b
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_normal+0x8bc8, %rbx
clflush (%rbx)
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_D+0x2378, %r11
and $8209, %rbx
mov (%r11), %r10w
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'36': 156}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
