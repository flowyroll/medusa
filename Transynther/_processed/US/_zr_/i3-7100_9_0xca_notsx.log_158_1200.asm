.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x87db, %r12
mfence
movw $0x6162, (%r12)
nop
nop
nop
add $10735, %r14
lea addresses_normal_ht+0x631b, %r13
nop
nop
nop
nop
add $49591, %r15
mov (%r13), %rbp
nop
xor $54672, %r13
lea addresses_A_ht+0x6b1b, %rsi
lea addresses_UC_ht+0x1101b, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $123, %rcx
rep movsb
nop
and $40199, %rsi
lea addresses_UC_ht+0x1681b, %rsi
nop
nop
add $54974, %r15
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
add %r14, %r14
lea addresses_normal_ht+0x1461b, %rsi
lea addresses_D_ht+0x591b, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $11, %rcx
rep movsq
nop
nop
nop
nop
sub $46862, %rdi
lea addresses_A_ht+0x531b, %rsi
lea addresses_A_ht+0x1e197, %rdi
nop
nop
nop
add %rbx, %rbx
mov $63, %rcx
rep movsl
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x17e9b, %r15
nop
nop
sub $28202, %rbp
mov (%r15), %r13
and $32502, %rsi
lea addresses_normal_ht+0x10d5b, %rdi
nop
sub %rcx, %rcx
movw $0x6162, (%rdi)
nop
add $20494, %r13
lea addresses_WT_ht+0x1871b, %rbx
nop
nop
add %rcx, %rcx
mov (%rbx), %r15w
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0xa7fb, %rsi
lea addresses_WT_ht+0x1b16b, %rdi
nop
nop
nop
nop
nop
xor $15843, %r15
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x951b, %r12
nop
nop
cmp %r15, %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_UC+0x611b, %r8
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r8)
and %r14, %r14

// Faulty Load
lea addresses_US+0x131b, %r14
nop
and %r15, %r15
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'00': 158}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
