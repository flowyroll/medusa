.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8fb4, %r10
and $44594, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r10)
nop
cmp $16340, %rbp
lea addresses_normal_ht+0x191e4, %r15
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and $42183, %r10
lea addresses_normal_ht+0xb194, %rsi
lea addresses_UC_ht+0x10994, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $87, %rcx
rep movsq
nop
nop
sub $19489, %rsi
lea addresses_WT_ht+0x35cc, %r15
xor $13152, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x163e4, %rsi
lea addresses_A_ht+0xfee, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r14, %r14
mov $16, %rcx
rep movsw
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1aac0, %r13
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x2a14, %rsi
lea addresses_WT_ht+0x3bba, %rdi
nop
cmp %rbp, %rbp
mov $109, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x17994, %r10
and $38957, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x8b94, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rdx), %r14b
nop
nop
nop
nop
nop
and $61480, %rsi
lea addresses_D_ht+0x6994, %rsi
lea addresses_normal_ht+0x15891, %rdi
nop
add $15956, %r10
mov $48, %rcx
rep movsb
add $63446, %rbp
lea addresses_A_ht+0x3c98, %rsi
lea addresses_WT_ht+0x820c, %rdi
dec %r13
mov $75, %rcx
rep movsl
nop
xor %r15, %r15
lea addresses_A_ht+0xfb14, %rdx
nop
sub $23584, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm6, (%rdx)
nop
dec %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x18bea, %rax
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x1a96c, %r9
clflush (%r9)
and %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r9)
nop
nop
and %r11, %r11

// Store
lea addresses_PSE+0x13c54, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $20162, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
nop
nop
cmp $47396, %r15

// REPMOV
lea addresses_WT+0x12994, %rsi
lea addresses_WC+0x16294, %rdi
nop
nop
nop
nop
nop
xor $9023, %r11
mov $29, %rcx
rep movsb
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_WT+0x128d0, %rsi
lea addresses_PSE+0x11994, %rdi
cmp %r11, %r11
mov $66, %rcx
rep movsq
nop
nop
dec %r9

// Load
lea addresses_UC+0x7f4, %r15
nop
nop
sub %r11, %r11
mov (%r15), %ebx
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_UC+0xf194, %r8
nop
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%r8)
nop
add %rdi, %rdi

// Store
lea addresses_A+0x1f394, %rcx
nop
add %rbx, %rbx
movl $0x51525354, (%rcx)
nop
cmp $38991, %rbx

// Store
lea addresses_UC+0x16dc2, %r11
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%r11)
inc %r15

// Store
lea addresses_normal+0x8794, %rax
nop
cmp %r11, %r11
movl $0x51525354, (%rax)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x1a794, %rsi
nop
nop
nop
nop
add $2325, %r8
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x192d4, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rcx)
nop
lfence

// Store
lea addresses_WT+0x12a94, %rax
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_WT+0x12994, %r9
nop
nop
nop
xor %rsi, %rsi
mov (%r9), %ecx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 7}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
