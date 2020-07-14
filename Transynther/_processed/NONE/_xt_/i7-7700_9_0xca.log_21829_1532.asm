.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11c19, %rsi
lea addresses_WC_ht+0xa959, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $29, %rcx
rep movsb
add %r11, %r11
lea addresses_WT_ht+0x3019, %rdi
nop
nop
cmp %r13, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
cmp $61930, %r13
lea addresses_WT_ht+0xa219, %rsi
lea addresses_D_ht+0xaa19, %rdi
clflush (%rdi)
nop
nop
inc %rdx
mov $102, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x11c19, %rsi
nop
nop
cmp $61882, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
sub $23680, %r13
lea addresses_UC_ht+0x5999, %rbx
nop
nop
nop
dec %rdi
mov (%rbx), %r13d
nop
nop
cmp $32708, %rcx
lea addresses_WT_ht+0x3669, %r13
nop
nop
nop
nop
nop
add %r11, %r11
mov (%r13), %rsi
nop
nop
nop
sub $17996, %r11
lea addresses_WT_ht+0xdc19, %rdi
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x19219, %rsi
lea addresses_normal_ht+0x1de19, %rdi
nop
nop
add $2552, %r14
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $55814, %rbx
lea addresses_normal_ht+0x1935c, %rsi
lea addresses_A_ht+0x11a19, %rdi
clflush (%rsi)
nop
nop
nop
cmp $56741, %r14
mov $118, %rcx
rep movsb
nop
nop
nop
nop
xor $34848, %rbx
lea addresses_A_ht+0x1c29, %r13
nop
nop
inc %rbx
mov (%r13), %r14d
nop
nop
nop
nop
nop
add $62346, %r13
lea addresses_A_ht+0x3f19, %rdx
nop
nop
nop
and $2850, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
and $2928, %rdx
lea addresses_normal_ht+0xe419, %r13
nop
nop
nop
nop
and $43652, %rdx
movw $0x6162, (%r13)
nop
nop
nop
nop
add $45118, %rcx
lea addresses_D_ht+0x15519, %r11
nop
and $28044, %rdi
movb $0x61, (%r11)
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xc3d9, %rsi
lea addresses_UC_ht+0x4019, %rdi
nop
nop
nop
nop
add $34538, %r13
mov $77, %rcx
rep movsq
nop
cmp $46235, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x3699, %r12
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0x3ee9, %r9
nop
nop
and $10326, %r14
movb $0x51, (%r9)
and %r9, %r9

// Store
lea addresses_PSE+0xe739, %rbx
nop
cmp %r13, %r13
movl $0x51525354, (%rbx)
nop
cmp $46739, %r12

// Store
mov $0x2036c90000000019, %rsi
xor $11406, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WC+0x16619, %r14
nop
nop
nop
xor $41496, %r12
movl $0x51525354, (%r14)
nop
nop
add $3623, %r12

// Load
lea addresses_normal+0xa1d9, %rbx
nop
nop
nop
nop
and %rsi, %rsi
mov (%rbx), %r14w
nop
nop
xor $42990, %r14

// Load
lea addresses_UC+0x1a4a6, %rbx
nop
nop
nop
nop
add %rdx, %rdx
mov (%rbx), %r13d
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_D+0x1d419, %r9
xor $65330, %rdx
mov (%r9), %r14d
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
