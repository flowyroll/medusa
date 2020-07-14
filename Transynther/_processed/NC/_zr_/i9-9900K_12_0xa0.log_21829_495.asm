.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1599, %r14
nop
nop
nop
nop
and $15944, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x151e9, %rsi
lea addresses_D_ht+0x1e349, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $0, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x17839, %r11
nop
nop
xor $23258, %rcx
mov (%r11), %ebp
nop
dec %rdi
lea addresses_UC_ht+0x13705, %r11
nop
nop
nop
add $16090, %rbp
mov (%r11), %r10d
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1e739, %r10
nop
nop
nop
nop
and %r14, %r14
mov (%r10), %esi
and $22832, %rdi
lea addresses_WC_ht+0x1339, %rdi
dec %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x941b, %rsi
lea addresses_UC_ht+0x1cdd9, %rdi
nop
nop
nop
nop
nop
sub $42115, %rbp
mov $4, %rcx
rep movsl
nop
dec %r11
lea addresses_A_ht+0xc229, %rsi
lea addresses_normal_ht+0x15039, %rdi
nop
nop
nop
dec %r10
mov $32, %rcx
rep movsb
nop
nop
nop
nop
cmp $2821, %r14
lea addresses_normal_ht+0x16439, %r10
nop
nop
dec %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
and $59078, %r14
lea addresses_D_ht+0x1f39, %r14
nop
nop
nop
add $20117, %r11
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
add $10605, %rdi
lea addresses_A_ht+0x14e39, %rsi
lea addresses_WT_ht+0x1db8b, %rdi
clflush (%rdi)
nop
nop
add $25600, %rax
mov $3, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xdc39, %rsi
lea addresses_UC_ht+0x17a39, %rdi
nop
cmp $7259, %r10
mov $78, %rcx
rep movsq
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x1e839, %r11
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r11)
cmp $11205, %rcx

// Store
lea addresses_D+0xe539, %rsi
nop
nop
nop
nop
nop
cmp $51786, %rax
movb $0x51, (%rsi)
inc %rsi

// Store
lea addresses_PSE+0xd3c1, %r15
xor $43109, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x1efb9, %r14
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%r14)
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_WT+0x1d06a, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
add $44448, %rsi

// Store
lea addresses_A+0x11839, %r14
nop
nop
nop
nop
nop
and $60287, %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_RW+0xbb9, %rdi
nop
nop
cmp %rcx, %rcx
movb (%rdi), %r15b
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
mov $0x58e3e80000000439, %rax
nop
cmp $6924, %r14
mov (%rax), %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
