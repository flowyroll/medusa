.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13973, %rsi
lea addresses_UC_ht+0x6c93, %rdi
nop
nop
cmp %rax, %rax
mov $126, %rcx
rep movsb
nop
nop
xor $12767, %rdi
lea addresses_A_ht+0x2073, %rbp
dec %rax
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %rdi
add %rcx, %rcx
lea addresses_A_ht+0xe093, %rsi
lea addresses_D_ht+0x1aa93, %rdi
nop
nop
nop
nop
nop
add $12249, %r10
mov $25, %rcx
rep movsb
nop
cmp $2762, %rdi
lea addresses_D_ht+0xd263, %rcx
nop
nop
nop
and %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x14793, %rbx
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0xb893, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r10), %ebp
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x122b, %rcx
nop
nop
nop
nop
nop
cmp $39805, %rbx
mov (%rcx), %ax
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x563b, %rcx
nop
nop
sub %rdi, %rdi
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x16603, %r10
nop
nop
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%r10)
nop
cmp %r10, %r10
lea addresses_A_ht+0xb2d3, %rax
clflush (%rax)
nop
cmp %rcx, %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x18293, %rsi
lea addresses_A_ht+0x150d3, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $53, %rcx
rep movsw
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xb40b, %r11
nop
nop
nop
nop
nop
and $58564, %rsi
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and $24701, %rcx

// REPMOV
lea addresses_PSE+0xd893, %rsi
lea addresses_WT+0x11b63, %rdi
nop
nop
nop
nop
and $33331, %r10
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $36627, %rdi

// Store
lea addresses_A+0xb093, %r10
clflush (%r10)
and $14922, %r13
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10

// Load
lea addresses_WT+0x9c93, %r10
nop
and %r13, %r13
movb (%r10), %r11b
nop
nop
nop
nop
nop
add $16771, %rcx

// Store
lea addresses_A+0x12093, %r13
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r13)
nop
cmp %r13, %r13

// REPMOV
lea addresses_WC+0x4493, %rsi
lea addresses_UC+0x10893, %rdi
nop
nop
nop
nop
add $13862, %r13
mov $98, %rcx
rep movsq
nop
nop
nop
nop
mfence

// Store
lea addresses_PSE+0x13333, %r11
nop
nop
nop
cmp $52586, %rsi
movl $0x51525354, (%r11)
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0x1dd93, %rdi
nop
nop
nop
nop
inc %rcx
movl $0x51525354, (%rdi)
nop
and %rcx, %rcx

// Load
lea addresses_D+0xabd3, %rbp
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rbp), %r11
nop
nop
nop
sub $62670, %rsi

// Store
lea addresses_A+0x14b93, %rsi
nop
nop
nop
nop
nop
add $63506, %r10
movl $0x51525354, (%rsi)
nop
dec %rcx

// Load
lea addresses_US+0xef93, %rcx
nop
nop
and $29294, %r13
mov (%rcx), %ebp
nop
nop
nop
nop
xor $32591, %rsi

// Store
lea addresses_US+0x2433, %rbp
cmp $28571, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_WC+0x12b0e, %r11
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r11)
nop
nop
sub $4020, %rsi

// Load
lea addresses_normal+0x3123, %r11
add %rcx, %rcx
mov (%r11), %r10d
cmp $43860, %r11

// Faulty Load
lea addresses_A+0x12093, %r13
clflush (%r13)
nop
nop
and %rsi, %rsi
mov (%r13), %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
