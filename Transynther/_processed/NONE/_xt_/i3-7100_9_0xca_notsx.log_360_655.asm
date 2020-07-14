.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7974, %rsi
lea addresses_UC_ht+0x166a8, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $74, %rcx
rep movsb
add %r14, %r14
lea addresses_UC_ht+0x15a74, %rbx
and %rbp, %rbp
mov (%rbx), %si
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xeaf4, %rbp
nop
nop
nop
xor $28811, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
and $18814, %r14
lea addresses_A_ht+0xf5b4, %r14
nop
nop
nop
nop
cmp $22727, %rbx
movb $0x61, (%r14)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x154d8, %rbp
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rbp
movaps %xmm6, (%rbp)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x5f4, %rdi
clflush (%rdi)
nop
nop
inc %rsi
mov (%rdi), %cx
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x574, %r14
sub %rsi, %rsi
movb (%r14), %bl
nop
nop
nop
nop
and $38425, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Load
lea addresses_US+0x128f4, %r8
nop
nop
nop
nop
nop
and %r10, %r10
mov (%r8), %esi
nop
nop
add $46257, %rbx

// Load
lea addresses_D+0x1d6f4, %rcx
nop
cmp $53146, %r11
mov (%rcx), %si
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0xf5b0, %rsi
cmp $9861, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add $14904, %r15

// Store
mov $0x4836490000000548, %r11
nop
nop
and %r10, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_RW+0x145a8, %r11
nop
nop
nop
nop
nop
sub $19011, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp $53757, %rsi

// Store
lea addresses_WC+0x1f14, %rcx
add %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
cmp $19887, %rbx

// Store
mov $0x5ae, %r15
nop
and $55394, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r15)
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0x6034, %rcx
clflush (%rcx)
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_D+0x1bef4, %r11
nop
nop
nop
inc %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
dec %r15

// Load
mov $0x454, %r11
cmp %r10, %r10
mov (%r11), %si
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_D+0x1d6f4, %r8
nop
nop
nop
sub %rcx, %rcx
mov (%r8), %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 360}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
