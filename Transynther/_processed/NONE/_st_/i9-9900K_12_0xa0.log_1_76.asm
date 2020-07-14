.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16a12, %r13
sub $59838, %rbx
mov (%r13), %r8w
nop
nop
nop
cmp $14547, %rbp
lea addresses_D_ht+0xf692, %rsi
lea addresses_UC_ht+0xa1d2, %rdi
clflush (%rdi)
nop
nop
xor $50485, %rbx
mov $8, %rcx
rep movsw
nop
nop
xor $52262, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdx

// Store
lea addresses_UC+0xd192, %r11
nop
lfence
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor $1343, %r9

// Store
mov $0x7b6, %rax
nop
add $55392, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x5a92, %r14
clflush (%r14)
nop
nop
add $55106, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %r14
vmovntdq %ymm3, (%r14)
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x192a6, %r9
nop
nop
add $14861, %r15
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x1c3c4, %rax
clflush (%rax)
nop
xor $22441, %r11
movb $0x51, (%rax)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_normal+0xce04, %rdx
nop
nop
add %rax, %rax
movl $0x51525354, (%rdx)
xor %r15, %r15

// Store
mov $0x7680860000000a6d, %r9
nop
nop
and $7671, %rax
movb $0x51, (%r9)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_A+0x10292, %r12
nop
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r12)
nop
nop
and $6712, %r11

// Store
mov $0xd0ce0000000112, %rax
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %r15
nop
add $11566, %r15

// Store
lea addresses_PSE+0x19522, %rax
nop
nop
nop
nop
nop
add $62187, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
add %rdx, %rdx

// Load
lea addresses_UC+0x18592, %r12
nop
dec %r9
mov (%r12), %dx
nop
nop
nop
nop
dec %rdx

// Store
mov $0x6b170b0000000f12, %rdx
nop
dec %rax
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
and %r12, %r12

// Load
lea addresses_UC+0x16a92, %r14
dec %r9
mov (%r14), %r12w
nop
nop
nop
nop
sub $51737, %r15

// Faulty Load
lea addresses_WC+0x18e92, %rax
nop
nop
nop
nop
nop
inc %r12
movb (%rax), %r11b
lea oracles, %r11
and $0xff, %r11
shlq $12, %r11
mov (%r11,%r11,1), %r11
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'30': 1}
30
*/
