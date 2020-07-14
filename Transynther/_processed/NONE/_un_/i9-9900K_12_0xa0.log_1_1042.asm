.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x59f, %rsi
lea addresses_A_ht+0x1d4fa, %rdi
nop
nop
nop
nop
and $9967, %rbp
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x88fa, %r8
nop
nop
nop
nop
add %r13, %r13
mov (%r8), %r11d
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0xf7ba, %rsi
lea addresses_WC_ht+0x4afa, %rdi
nop
nop
add %r13, %r13
mov $110, %rcx
rep movsq
nop
nop
inc %r13
lea addresses_normal_ht+0xc3fa, %rsi
lea addresses_WT_ht+0x129fa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $4083, %rax
mov $14, %rcx
rep movsl
add $16021, %rbp
lea addresses_normal_ht+0x84fa, %rcx
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
add %rsi, %rsi
lea addresses_D_ht+0xe19a, %rsi
lea addresses_A_ht+0x21fa, %rdi
nop
dec %rax
mov $34, %rcx
rep movsl
nop
nop
nop
and $30766, %r8
lea addresses_WC_ht+0x6c7a, %rsi
lea addresses_D_ht+0x1a9fa, %rdi
add $7845, %r13
mov $81, %rcx
rep movsw
nop
add $44428, %rsi
lea addresses_UC_ht+0xeac2, %rax
nop
nop
nop
nop
nop
cmp $15259, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xb53e, %rdi
xor $19153, %rax
mov (%rdi), %r8d
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x169da, %r13
nop
cmp $13428, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_A+0x19e7a, %rdi
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp $58859, %r9

// Store
lea addresses_US+0x151fa, %r11
nop
nop
nop
inc %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp $53869, %r13

// Load
lea addresses_RW+0x1f86, %r9
nop
nop
cmp $9819, %rdi
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_RW+0x101fa, %rbp
clflush (%rbp)
nop
nop
nop
xor %r11, %r11
mov (%rbp), %di
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'8f': 1}
8f
*/
