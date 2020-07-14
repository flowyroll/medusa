.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7b87, %rsi
nop
nop
nop
and $43893, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
cmp $13456, %rax
lea addresses_UC_ht+0xea37, %rbx
xor $19904, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
nop
sub $48142, %r8
lea addresses_D_ht+0x1b617, %rsi
lea addresses_normal_ht+0x4817, %rdi
nop
nop
inc %rdx
mov $90, %rcx
rep movsq
xor %r8, %r8
lea addresses_normal_ht+0x169d7, %rsi
lea addresses_A_ht+0xe617, %rdi
nop
nop
and %rax, %rax
mov $78, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x5417, %rax
clflush (%rax)
lfence
movb $0x61, (%rax)
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x18717, %rsi
lea addresses_D_ht+0x7e7f, %rdi
nop
nop
add %r15, %r15
mov $117, %rcx
rep movsl
xor $35679, %r8
lea addresses_normal_ht+0x2517, %rsi
lea addresses_A_ht+0x16e17, %rdi
nop
nop
nop
xor $19232, %rbx
mov $48, %rcx
rep movsq
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x6d, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
movb (%rsi), %cl
inc %rdi
lea addresses_normal_ht+0xb997, %rbx
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1de17, %rsi
lea addresses_normal_ht+0xea17, %rdi
clflush (%rdi)
nop
xor $12008, %r8
mov $45, %rcx
rep movsq
nop
nop
nop
nop
nop
and $14273, %rax
lea addresses_WC_ht+0x1166b, %rsi
lea addresses_UC_ht+0xecf7, %rdi
cmp %r15, %r15
mov $99, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rdi

// Store
lea addresses_WT+0x3617, %rdi
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
cmp $53233, %r14

// Store
lea addresses_UC+0x10fe7, %r10
nop
nop
nop
nop
sub $62963, %r13
movb $0x51, (%r10)
nop
and %r10, %r10

// Store
mov $0x7aa1850000000a17, %r10
nop
nop
nop
nop
add $55180, %r9
movb $0x51, (%r10)
nop
nop
nop
inc %r10

// Store
lea addresses_UC+0x617, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rdi)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x617, %rdi
nop
nop
inc %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
dec %r12

// Store
lea addresses_UC+0x1a5bb, %r12
nop
nop
sub $65111, %r10
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_UC+0x617, %r13
xor $30600, %r10
vmovaps (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'44': 11885, '48': 9344, '94': 1, 'e2': 1, '00': 588, '0e': 1, '20': 1, '08': 2, '72': 6}
48 44 00 48 44 44 48 44 44 44 44 48 44 44 44 44 44 44 48 48 44 44 48 48 00 44 48 44 44 00 44 48 48 44 48 44 48 48 44 44 44 48 44 44 44 44 48 48 44 44 48 48 44 44 44 48 48 48 48 48 48 44 48 44 48 44 44 48 44 44 44 44 44 44 44 48 44 44 48 48 44 44 44 44 48 48 44 48 44 44 44 48 48 48 44 44 48 44 44 48 48 48 48 44 44 44 44 48 44 44 48 44 48 44 44 44 48 44 44 44 44 44 48 44 44 44 44 48 44 44 44 44 44 48 44 44 00 48 44 44 44 44 44 44 48 44 44 44 44 48 44 48 44 44 44 44 48 48 44 44 00 48 48 48 44 48 48 44 44 48 48 48 48 00 48 00 44 44 44 48 44 48 44 44 44 44 48 44 44 48 48 48 48 44 44 48 44 44 48 48 48 48 48 44 44 44 48 48 44 44 48 44 44 44 48 44 48 48 44 44 48 44 44 44 44 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 48 48 44 44 48 44 48 44 48 44 48 44 44 48 48 48 48 44 44 44 44 44 00 00 44 48 44 44 44 44 48 44 48 44 44 48 44 48 48 00 48 44 44 48 48 44 44 48 44 44 44 44 48 44 44 44 48 48 44 48 44 48 00 44 48 48 44 48 44 44 44 48 48 44 44 48 48 48 44 44 48 48 44 44 48 44 48 44 48 48 44 48 48 48 48 44 44 00 44 48 44 44 48 48 48 48 44 48 44 44 48 48 48 48 48 44 44 48 44 48 44 44 48 44 44 44 44 48 48 48 48 44 48 44 48 44 48 44 44 44 44 48 44 44 44 44 44 48 48 48 48 44 44 48 48 44 44 48 44 48 48 44 44 44 48 44 48 48 44 00 44 48 44 44 44 44 44 48 44 44 48 44 44 44 48 48 48 48 48 48 44 44 44 48 48 48 44 44 48 48 44 44 48 48 48 44 48 48 44 48 48 44 48 44 48 44 48 48 44 48 44 44 44 48 44 44 48 44 48 44 44 48 48 44 44 44 44 48 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 48 48 44 44 48 48 44 44 44 48 44 48 44 00 48 44 44 48 44 48 48 44 44 48 48 44 44 48 48 48 48 48 44 44 44 44 44 48 48 48 48 48 44 44 48 48 44 44 44 44 48 44 48 44 48 48 44 44 48 48 48 44 44 44 44 44 44 48 48 44 48 44 44 44 48 44 48 48 44 44 44 44 48 44 44 48 48 44 48 00 48 44 44 44 48 48 44 44 44 00 48 44 48 48 44 44 48 44 48 48 48 44 44 44 48 48 44 48 44 44 48 44 44 48 00 44 48 44 44 44 44 48 48 44 44 48 48 44 44 48 48 44 44 44 44 48 44 44 44 44 48 48 44 08 44 44 44 44 48 44 48 44 48 48 48 48 44 44 00 44 48 44 44 44 48 48 44 48 48 48 48 44 48 48 48 44 44 48 48 44 44 44 44 48 44 48 44 44 48 48 44 44 44 44 48 44 48 44 44 44 44 48 48 48 48 44 44 48 44 44 44 48 44 48 44 44 44 48 48 48 44 48 44 48 48 44 44 44 44 44 44 48 44 48 48 48 44 44 44 44 48 44 44 48 48 44 44 48 44 44 48 44 48 44 44 44 44 48 48 44 44 44 44 44 44 48 48 48 44 44 44 48 44 48 48 44 48 48 48 44 44 48 48 44 44 48 48 48 48 44 44 44 44 44 44 44 48 00 48 44 44 44 44 48 48 44 48 48 48 44 48 44 44 44 44 48 48 48 44 48 44 48 48 48 44 48 48 44 44 48 48 44 48 44 44 48 44 44 44 44 00 48 48 44 48 44 44 44 48 48 00 48 44 44 48 44 44 44 48 48 48 44 44 44 48 48 44 44 44 44 48 44 44 44 44 44 44 48 44 44 44 48 48 44 48 44 44 48 48 44 48 48 48 44 44 44 44 44 44 44 44 44 44 48 44 48 48 44 48 44 44 44 44 48 48 48 44 44 44 48 44 44 48 44 48 48 48 48 44 44 48 48 44 44 44 48 44 48 48 00 44 44 44 44 44 48 44 44 48 44 44 48 48 44 44 48 44 44 44 48 44 44 44 44 44 44 44 44 44 44 48 44 48 44 44 48 44 48 48 48 48 48 48 44 48 48 48 44 44 44 48 44 44 44
*/
