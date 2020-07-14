.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x54d, %rsi
lea addresses_normal_ht+0x2e0d, %rdi
nop
nop
nop
sub $47985, %rbx
mov $110, %rcx
rep movsl
nop
nop
nop
nop
xor $28669, %rdx
lea addresses_WC_ht+0xba4d, %rbx
nop
nop
xor $6994, %r15
mov (%rbx), %rdi
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x174d, %rdx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xa24d, %rbp
nop
nop
nop
sub $44777, %rsi
mov (%rbp), %r15d
nop
xor $44085, %rbx
lea addresses_WT_ht+0xd49f, %rdi
nop
cmp $57467, %r15
movb (%rdi), %cl
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x191fd, %r15
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
sub $16194, %rdi
lea addresses_D_ht+0x1154d, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x29a5, %rbx
nop
nop
sub %rsi, %rsi
mov (%rbx), %r15
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1c4d, %rbx
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
cmp $47669, %rdi
lea addresses_D_ht+0xce4d, %r15
nop
nop
nop
add $15170, %rbx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x675, %rbx
nop
and $27407, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
inc %rdi
lea addresses_WC_ht+0x1a3ec, %rsi
lea addresses_WC_ht+0x1924d, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $117, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rsi

// Load
lea addresses_UC+0x1524d, %r8
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %r11w
and %r13, %r13

// Store
lea addresses_WC+0xd095, %r12
nop
dec %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
xor $49432, %r8

// Store
lea addresses_A+0x64d, %r9
nop
nop
xor $34167, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_UC+0xb375, %rcx
nop
nop
cmp %r13, %r13
movw $0x5152, (%rcx)
nop
xor %rcx, %rcx

// Load
lea addresses_US+0x1636d, %r12
inc %r13
mov (%r12), %esi
nop
xor $4154, %rcx

// Store
lea addresses_WC+0x524d, %r9
nop
nop
nop
nop
nop
add $38531, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_WC+0x524d, %rsi
nop
nop
nop
sub %r8, %r8
mov (%rsi), %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
