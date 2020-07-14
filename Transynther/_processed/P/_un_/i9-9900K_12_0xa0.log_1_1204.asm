.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b873, %r8
nop
and %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
cmp $27144, %r13
lea addresses_D_ht+0xffc7, %rsi
lea addresses_normal_ht+0x1a63, %rdi
add $25031, %rax
mov $43, %rcx
rep movsw
nop
nop
nop
and $54756, %rbx
lea addresses_UC_ht+0x4f67, %r13
dec %rbx
movl $0x61626364, (%r13)
nop
xor %r13, %r13
lea addresses_A_ht+0x62a7, %rdi
nop
nop
nop
nop
nop
inc %r13
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
add $22195, %rcx
lea addresses_D_ht+0x19fa7, %rcx
nop
nop
nop
cmp $9972, %rbx
mov (%rcx), %si
nop
add $24079, %r8
lea addresses_normal_ht+0x16a77, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
and $991, %rax
lea addresses_WT_ht+0xcf37, %rdi
nop
cmp $35625, %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x11227, %rbx
nop
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x185a3, %rcx
nop
nop
nop
nop
and $51, %r13
mov (%rcx), %ax
dec %rdi
lea addresses_D_ht+0x12da7, %r8
nop
nop
nop
nop
dec %rbx
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
dec %r8
lea addresses_WC_ht+0xf8f7, %rax
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rax)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x9a7, %rsi
lea addresses_WT_ht+0xae87, %rdi
nop
nop
add %r10, %r10
mov $77, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xac1, %rsi
lea addresses_US+0x179a2, %rdi
nop
nop
nop
nop
nop
and $30668, %r9
mov $26, %rcx
rep movsb
inc %rdi

// Store
mov $0xda7, %r12
nop
nop
sub $45043, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
nop
and $50691, %rdi

// REPMOV
mov $0xda7, %rsi
mov $0xda7, %rdi
cmp %r9, %r9
mov $20, %rcx
rep movsl
nop
nop
add $33864, %r9

// Store
lea addresses_A+0xfa66, %rsi
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x6488, %r8
nop
nop
cmp $4740, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
cmp $26125, %r9

// Load
lea addresses_D+0x16a47, %r8
nop
nop
nop
add %rsi, %rsi
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
sub $61083, %rcx

// Store
lea addresses_WT+0x1caf7, %rcx
nop
nop
nop
cmp $5171, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
sub $20049, %r13

// Store
lea addresses_UC+0x35a7, %r9
nop
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
add %r8, %r8

// Store
mov $0xb75, %r12
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%r12)
nop
sub %r9, %r9

// Store
lea addresses_WC+0x86a7, %rsi
nop
nop
nop
cmp $6088, %r12
movw $0x5152, (%rsi)
nop
nop
nop
nop
and $47920, %r13

// Faulty Load
mov $0xda7, %r9
clflush (%r9)
nop
nop
nop
dec %r12
mov (%r9), %r13d
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'5c': 1}
5c
*/
