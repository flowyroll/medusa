.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3a34, %rsi
lea addresses_normal_ht+0xa784, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $45, %rcx
rep movsw
nop
nop
nop
sub $28384, %r12
lea addresses_WC_ht+0x161f4, %r13
nop
nop
nop
and %rdi, %rdi
mov (%r13), %r12d
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x13464, %r13
nop
nop
nop
nop
nop
cmp $7058, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r13)
dec %r12
lea addresses_D_ht+0x84a4, %rsi
lea addresses_WC_ht+0x12a04, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $28, %rcx
rep movsb
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x14fe4, %rcx
nop
nop
nop
nop
nop
and $24280, %rax
mov (%rcx), %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x6d64, %rcx
nop
nop
nop
add $47157, %rdx
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
nop
and $46715, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x13264, %r9
nop
nop
nop
nop
nop
cmp $14848, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x1e9d4, %r14
and $41288, %rdi
movb $0x51, (%r14)
nop
nop
xor $23630, %rax

// Store
lea addresses_A+0x46a4, %r9
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r9)
nop
nop
dec %r9

// Store
lea addresses_UC+0x4480, %r14
nop
nop
nop
nop
nop
add $23272, %rax
movb $0x51, (%r14)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0x18f64, %rax
nop
nop
nop
and $7447, %rbx
movw $0x5152, (%rax)
nop
nop
cmp $47782, %r8

// Load
lea addresses_normal+0x12764, %rdi
clflush (%rdi)
nop
nop
nop
sub %r13, %r13
mov (%rdi), %bx
nop
nop
add $35210, %r13

// REPMOV
mov $0xf64, %rsi
lea addresses_US+0x17f2e, %rdi
nop
nop
nop
nop
xor $44897, %r13
mov $53, %rcx
rep movsq
nop
nop
cmp $50249, %rdi

// Store
lea addresses_UC+0x1c8a4, %rbx
nop
nop
nop
sub $17359, %r9
movw $0x5152, (%rbx)
nop
dec %r8

// Faulty Load
mov $0xf64, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r8), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'00': 1}
00
*/
