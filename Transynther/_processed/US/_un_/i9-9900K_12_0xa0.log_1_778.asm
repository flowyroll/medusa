.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xe884, %r15
clflush (%r15)
nop
add $28993, %rbp
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
xor $135, %r8
lea addresses_D_ht+0xc21c, %rsi
lea addresses_WT_ht+0x192c4, %rdi
add %rdx, %rdx
mov $72, %rcx
rep movsq
nop
nop
nop
and $19504, %rsi
lea addresses_WT_ht+0x16364, %rcx
nop
nop
nop
nop
nop
dec %r12
mov (%rcx), %edx
nop
add %rcx, %rcx
lea addresses_A_ht+0x15444, %rsi
lea addresses_D_ht+0x4809, %rdi
cmp %r8, %r8
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1be04, %rbp
nop
nop
nop
nop
nop
add $9907, %rdi
mov (%rbp), %rcx
add %rdx, %rdx
lea addresses_A_ht+0xb084, %r8
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
sub $263, %r8
lea addresses_UC_ht+0x10884, %r8
clflush (%r8)
nop
cmp $39694, %r15
mov (%r8), %ebp
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xfc84, %rdx
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x11684, %rsi
lea addresses_A_ht+0xe084, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $51, %rcx
rep movsw
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x6e84, %rbp
nop
nop
nop
nop
nop
cmp $41974, %r15
mov (%rbp), %si
nop
cmp $32802, %r15
lea addresses_A_ht+0xf94c, %r8
nop
nop
nop
inc %rbp
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rdx
nop
sub $41790, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xe344, %r13
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r13)
nop
add $47627, %r15

// Store
lea addresses_WT+0xd8c4, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%r8)
add $39429, %rbp

// Load
mov $0x224, %rbp
nop
add $57274, %rbx
mov (%rbp), %r11
nop
nop
and $32035, %rbx

// Store
lea addresses_PSE+0x11e88, %r11
and %r8, %r8
movw $0x5152, (%r11)
nop
dec %rsi

// Store
lea addresses_A+0xbb84, %rbp
nop
nop
nop
dec %r11
movw $0x5152, (%rbp)
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WC+0x10154, %r11
nop
nop
nop
nop
nop
cmp $22954, %rbp
mov (%r11), %r15d
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0xaa, %rsi
nop
cmp $56542, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rsi)
nop
and %r11, %r11

// Store
lea addresses_US+0xc84, %r8
inc %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r8)
nop
cmp $29648, %rbx

// Store
lea addresses_RW+0x7c84, %rsi
nop
and %rbx, %rbx
movw $0x5152, (%rsi)

// Exception!!!
nop
xor %r15, %r15
div %r15
nop
nop
nop
nop
nop
and $42052, %rbp

// Store
lea addresses_PSE+0x3c84, %r15
nop
nop
add $60474, %r8
movb $0x51, (%r15)
nop
nop
nop
inc %r11

// Load
lea addresses_RW+0x62bc, %rbp
nop
nop
add $41239, %r15
mov (%rbp), %esi
nop
nop
nop
nop
add $34762, %r13

// Store
lea addresses_normal+0x7bcb, %rbp
nop
nop
nop
dec %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
add $7110, %rbp

// REPMOV
lea addresses_RW+0xaecc, %rsi
lea addresses_A+0x1720, %rdi
clflush (%rdi)
nop
nop
inc %r11
mov $22, %rcx
rep movsb
nop
nop
nop
nop
add $11806, %rbx

// Store
lea addresses_WC+0x1bcc6, %rbp
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
dec %r15

// Store
lea addresses_D+0x18f84, %rbx
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%rbx)
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0xc84, %rdi
nop
nop
nop
add %r8, %r8
movb (%rdi), %r11b
lea oracles, %r11
and $0xff, %r11
shlq $12, %r11
mov (%r11,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'22': 1}
22
*/
