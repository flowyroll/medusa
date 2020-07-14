.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2c44, %rsi
lea addresses_normal_ht+0x11f44, %rdi
nop
nop
add $10041, %r15
mov $122, %rcx
rep movsw
nop
nop
add $57426, %r8
lea addresses_A_ht+0x88c4, %r13
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
nop
cmp %r15, %r15
lea addresses_WT_ht+0x15b44, %r8
nop
nop
nop
nop
cmp $53277, %r11
mov (%r8), %si
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x11444, %r8
nop
nop
nop
dec %r15
movl $0x61626364, (%r8)
nop
dec %r13
lea addresses_D_ht+0x1a844, %rsi
lea addresses_UC_ht+0x444, %rdi
nop
nop
add %r10, %r10
mov $90, %rcx
rep movsl
nop
nop
xor $39123, %r11
lea addresses_normal_ht+0x1e984, %r8
sub %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
and $19689, %r11
lea addresses_D_ht+0x1e844, %rcx
nop
nop
nop
dec %rsi
mov (%rcx), %r13d
nop
nop
nop
add $21806, %rsi
lea addresses_WT_ht+0xdfd7, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
dec %rcx
lea addresses_UC_ht+0x6e44, %rsi
lea addresses_WC_ht+0x1d79c, %rdi
nop
nop
nop
sub $65254, %r11
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x15444, %r15
nop
cmp $36940, %rdi
movb $0x61, (%r15)
nop
nop
nop
cmp $50916, %r8
lea addresses_D_ht+0x1cdd4, %r15
clflush (%r15)
nop
nop
nop
cmp %r11, %r11
mov (%r15), %rsi
and $44290, %r8
lea addresses_WC_ht+0x51c4, %rsi
nop
nop
nop
nop
nop
cmp $42535, %r11
movw $0x6162, (%rsi)
nop
nop
nop
add $46055, %r15
lea addresses_normal_ht+0x9602, %rsi
lea addresses_D_ht+0x1ac44, %rdi
xor $90, %r11
mov $20, %rcx
rep movsl
nop
and $30802, %rdi
lea addresses_A_ht+0x170df, %rsi
lea addresses_UC_ht+0x4144, %rdi
clflush (%rsi)
nop
add %r10, %r10
mov $32, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x3844, %r10
nop
nop
nop
nop
nop
xor $7977, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r10)
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x14744, %rcx
nop
sub $58875, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovaps %ymm3, (%rcx)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x7c44, %rax
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rax
movntdq %xmm5, (%rax)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0x10a44, %rax
clflush (%rax)
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
inc %rbp

// Store
mov $0x144, %rcx
nop
nop
nop
and $37019, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0xaa44, %rdi
clflush (%rdi)
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
and %rbx, %rbx

// Store
lea addresses_WC+0xf54, %r15
nop
nop
cmp $21750, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
dec %rbp

// Store
lea addresses_US+0x14444, %rbp
nop
nop
dec %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movntdq %xmm5, (%rbp)
nop
nop
nop
nop
nop
xor $41505, %rbx

// Store
lea addresses_US+0x14444, %rcx
nop
nop
nop
dec %rbx
movw $0x5152, (%rcx)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x12844, %rsi
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0xd844, %rax
nop
nop
xor $18228, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
sub $48533, %rax

// REPMOV
lea addresses_US+0x1d844, %rsi
lea addresses_RW+0x1b184, %rdi
nop
nop
add $489, %r8
mov $104, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0x12720, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0x14444, %rdi
nop
and $17692, %rbx
movb (%rdi), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'dd': 1}
dd
*/
