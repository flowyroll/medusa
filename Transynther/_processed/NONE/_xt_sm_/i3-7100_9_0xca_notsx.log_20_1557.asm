.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1aade, %r10
sub %r11, %r11
mov (%r10), %r8w
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1eee4, %rsi
lea addresses_normal_ht+0x1534e, %rdi
clflush (%rdi)
nop
xor %r14, %r14
mov $124, %rcx
rep movsw
and %r11, %r11
lea addresses_normal_ht+0xb6ce, %rsi
lea addresses_D_ht+0xc6, %rdi
nop
nop
xor %r11, %r11
mov $38, %rcx
rep movsb
nop
nop
nop
and $53260, %r11
lea addresses_WC_ht+0x112a2, %r14
nop
nop
nop
nop
nop
dec %rsi
movb (%r14), %r8b
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x321a, %rsi
lea addresses_UC_ht+0x90ce, %rdi
nop
nop
nop
nop
add $48002, %r10
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xd5ce, %r10
nop
nop
and $44245, %r11
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xdba6, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
dec %rsi
lea addresses_D_ht+0x18bce, %rsi
lea addresses_WC_ht+0x6b45, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $62, %rcx
rep movsb
xor $3087, %r10
lea addresses_WC_ht+0x19154, %r10
nop
xor $38966, %rdi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x186ae, %rbx
nop
nop
nop
nop
nop
and $45926, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_D+0x165ce, %rbx
nop
nop
nop
nop
nop
cmp %r15, %r15
movb $0x51, (%rbx)
nop
nop
nop
and $2151, %rdx

// Load
lea addresses_A+0x992e, %rbx
nop
nop
cmp %rcx, %rcx
mov (%rbx), %rdx
nop
nop
nop
nop
nop
add $19007, %rcx

// Store
lea addresses_A+0x1bce, %rbx
nop
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
inc %r9

// REPMOV
lea addresses_PSE+0xc4be, %rsi
lea addresses_UC+0x324e, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $121, %rcx
rep movsw
xor %rdx, %rdx

// Store
lea addresses_RW+0x115ce, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0x4dce, %rbx
nop
nop
nop
nop
sub $56492, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovaps %ymm1, (%rbx)
nop
nop
sub %r15, %r15

// Load
lea addresses_A+0x1872d, %rsi
nop
cmp %rdi, %rdi
mov (%rsi), %rbx
nop
and $44011, %rdx

// Store
lea addresses_PSE+0x1ed4e, %r12
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
xor $12561, %rdi

// Store
lea addresses_normal+0x18d1e, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_RW+0x115ce, %rdi
nop
nop
and %r15, %r15
mov (%rdi), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'58': 20}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
