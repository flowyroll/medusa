.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd9ef, %rax
nop
nop
add %rsi, %rsi
mov (%rax), %ebx
add %rbx, %rbx
lea addresses_UC_ht+0x1d6b7, %rsi
lea addresses_UC_ht+0x1cfef, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1b54f, %rbx
nop
cmp $5004, %r15
movl $0x61626364, (%rbx)
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x10de8, %rsi
nop
nop
cmp $18657, %rdi
movb (%rsi), %bl
inc %r15
lea addresses_D_ht+0x325f, %rsi
lea addresses_D_ht+0x1def, %rdi
nop
nop
nop
nop
and $26582, %rax
mov $22, %rcx
rep movsq
cmp $59373, %rcx
lea addresses_WT_ht+0x127ef, %rsi
lea addresses_D_ht+0x1ceef, %rdi
nop
nop
nop
nop
nop
xor $49301, %r15
mov $105, %rcx
rep movsb
nop
inc %rbx
lea addresses_UC_ht+0x45ef, %rdi
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %esi
nop
dec %rcx
lea addresses_normal_ht+0x1d061, %rsi
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rsi)
nop
inc %rsi
lea addresses_WT_ht+0xa9f4, %rsi
nop
nop
nop
nop
lfence
mov (%rsi), %rdi
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_WC+0x1edef, %r14
and $41140, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
nop
nop
add $13770, %r14

// Store
lea addresses_WC+0x189ef, %r10
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x90ef, %r13
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%r13)
nop
nop
nop
nop
and $8934, %r14

// Load
lea addresses_US+0x1c4ef, %r14
nop
nop
nop
dec %r8
mov (%r14), %r9
inc %r8

// Store
lea addresses_PSE+0x18e87, %r8
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r8)

// Exception!!!
mov (0), %r13
nop
nop
and $22221, %r10

// Store
lea addresses_A+0xadef, %r9
nop
add $13035, %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_PSE+0x149ef, %r8
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%r8)
nop
and $41086, %rdx

// Faulty Load
lea addresses_A+0x105ef, %r14
inc %r9
mov (%r14), %edi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 83}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
