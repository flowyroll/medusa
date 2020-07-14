.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12ef9, %r8
nop
cmp %r10, %r10
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x38f9, %rsi
lea addresses_WC_ht+0x1dc85, %rdi
nop
nop
add $1119, %r13
mov $33, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x142f9, %rdi
nop
xor $32675, %r9
mov (%rdi), %r8w
nop
and $30036, %r10
lea addresses_D_ht+0xdd69, %rsi
lea addresses_D_ht+0x82d9, %rdi
xor %r11, %r11
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x19ced, %rsi
lea addresses_D_ht+0x2af9, %rdi
nop
and %r11, %r11
mov $78, %rcx
rep movsw
sub $27015, %rcx
lea addresses_A_ht+0xc6f9, %r11
nop
add %rcx, %rcx
mov (%r11), %r13
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x12929, %r8
nop
and %rcx, %rcx
mov (%r8), %r11d
nop
nop
nop
nop
add $45209, %rsi
lea addresses_UC_ht+0x1b4f9, %r10
nop
nop
and %r9, %r9
movw $0x6162, (%r10)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1dd61, %r9
nop
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x15e99, %r11
nop
and %rsi, %rsi
mov (%r11), %rcx
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x11eb9, %rsi
lea addresses_WC_ht+0x64f9, %rdi
nop
nop
nop
nop
inc %r11
mov $52, %rcx
rep movsb
cmp $24437, %rdi
lea addresses_A_ht+0x9f49, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $17739, %r11
mov (%r10), %r13d
nop
nop
add $43096, %r10
lea addresses_D_ht+0x888d, %rsi
lea addresses_normal_ht+0x811, %rdi
nop
nop
and $48818, %r11
mov $121, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x46f9, %r13
nop
nop
add $61295, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %r13
movntdq %xmm3, (%r13)
nop
nop
nop
cmp $18863, %rdi
lea addresses_WC_ht+0x1dcf9, %rsi
lea addresses_UC_ht+0x14049, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_RW+0x1279, %rdx
nop
nop
cmp %r13, %r13
movb $0x51, (%rdx)
nop
nop
inc %r13

// Store
lea addresses_D+0x3cd9, %r13
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
inc %r15

// Store
lea addresses_normal+0x6e79, %rax
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
sub $57721, %rdx

// Store
lea addresses_US+0x4d79, %r13
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r13)
nop
nop
xor $20136, %r9

// Store
lea addresses_UC+0x3979, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%r13)
nop
add %r9, %r9

// Faulty Load
lea addresses_RW+0x10cf9, %rax
nop
nop
nop
cmp $30153, %rdx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
