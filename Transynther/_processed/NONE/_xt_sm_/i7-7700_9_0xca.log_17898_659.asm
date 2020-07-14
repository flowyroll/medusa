.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4ff5, %rsi
lea addresses_A_ht+0x17755, %rdi
nop
nop
dec %r12
mov $15, %rcx
rep movsw
nop
nop
nop
and $48046, %rbp
lea addresses_UC_ht+0x12539, %r13
nop
nop
nop
dec %r11
mov (%r13), %si
nop
nop
add $22163, %rsi
lea addresses_A_ht+0x18bf5, %rdi
nop
nop
nop
nop
nop
xor $9170, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x15f4d, %rsi
lea addresses_WT_ht+0x6ff8, %rdi
nop
nop
inc %rdx
mov $93, %rcx
rep movsl
nop
nop
and %r12, %r12
lea addresses_A_ht+0xf3f5, %rsi
nop
nop
nop
dec %r13
mov (%rsi), %rdx
nop
nop
nop
nop
xor $21291, %rdi
lea addresses_WC_ht+0xf845, %rsi
lea addresses_normal_ht+0x13f5, %rdi
nop
nop
nop
nop
nop
cmp $27139, %rdx
mov $109, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x17f5, %rsi
lea addresses_WT_ht+0x18e45, %rdi
inc %rdx
mov $69, %rcx
rep movsq
nop
nop
nop
nop
add $15287, %rdi
lea addresses_UC_ht+0xde85, %rdx
nop
nop
cmp $62812, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xd769, %rsi
lea addresses_normal_ht+0x69f5, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
mov $23, %rcx
rep movsb
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x1c0f5, %r11
sub $53819, %r13
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdx
cmp $39050, %rdx
lea addresses_WT_ht+0x1a3f5, %rcx
nop
sub %r13, %r13
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
cmp $29024, %r13
lea addresses_WT_ht+0x18f4b, %rsi
lea addresses_A_ht+0xc3f5, %rdi
nop
inc %r11
mov $113, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xfd49, %rdi
nop
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xe6c9, %rdi
nop
nop
inc %r11
movw $0x6162, (%rdi)
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
mov $0x789b040000000f75, %r10
and %r13, %r13
movb $0x51, (%r10)
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x156c5, %rbx
nop
and $2389, %rdx
movw $0x5152, (%rbx)
cmp %rbx, %rbx

// Load
lea addresses_UC+0x154dd, %rbx
nop
nop
nop
nop
add %rdx, %rdx
mov (%rbx), %r15w
nop
nop
xor %rbx, %rbx

// Store
lea addresses_normal+0x1bbf5, %r13
nop
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%r13)
nop
inc %rdx

// Store
mov $0x2699850000000a95, %r13
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_A+0x1d7f5, %rbx
nop
add %r15, %r15
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
sub %rbp, %rbp

// Store
lea addresses_normal+0x23a3, %r10
nop
add %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
add $7862, %r15

// Load
lea addresses_A+0x1bff5, %r15
inc %r13
mov (%r15), %ebx
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1bbf5, %rbx
nop
nop
nop
sub $57771, %r13
mov (%rbx), %r15d
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_PSE'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'54': 17898}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
