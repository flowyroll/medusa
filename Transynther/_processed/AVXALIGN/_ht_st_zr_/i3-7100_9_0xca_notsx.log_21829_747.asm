.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xaae4, %r10
and $14934, %r11
mov (%r10), %r8d
nop
nop
nop
nop
xor $47915, %r10
lea addresses_D_ht+0xdc14, %rsi
lea addresses_UC_ht+0x12714, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $29, %rcx
rep movsq
add $49736, %rsi
lea addresses_normal_ht+0x2f64, %rsi
nop
nop
sub %r8, %r8
mov (%rsi), %r10
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0xe864, %r10
nop
nop
nop
add %r9, %r9
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x122e4, %rsi
lea addresses_D_ht+0x34d0, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
and $38093, %r8
lea addresses_A_ht+0x1518c, %rsi
lea addresses_WT_ht+0x1c9e4, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $37743, %rax
mov $108, %rcx
rep movsq
nop
nop
and $63780, %rax
lea addresses_WT_ht+0xdee4, %r8
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%r8)
cmp %r11, %r11
lea addresses_A_ht+0x12324, %r11
clflush (%r11)
nop
nop
nop
nop
sub $29941, %r9
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rax
nop
cmp $20212, %r9
lea addresses_normal_ht+0x6494, %rsi
lea addresses_WC_ht+0x182e4, %rdi
nop
nop
nop
nop
add $3142, %rax
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $61675, %r11
lea addresses_WC_ht+0x11ae4, %rsi
lea addresses_UC_ht+0xd1f2, %rdi
nop
nop
nop
nop
inc %r9
mov $51, %rcx
rep movsl
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xf9e4, %rsi
nop
nop
nop
and $16439, %rcx
movb (%rsi), %r11b
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x13144, %rax
nop
nop
add $43205, %r11
mov (%rax), %rcx
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x7bf4, %rsi
lea addresses_A_ht+0x1810e, %rdi
nop
nop
nop
sub %r9, %r9
mov $93, %rcx
rep movsb
add %rax, %rax
lea addresses_D_ht+0xb9e4, %r9
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r9
vmovntdq %ymm5, (%r9)
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x12fc4, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $60876, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
cmp %r11, %r11

// REPMOV
lea addresses_D+0x1dd04, %rsi
lea addresses_PSE+0xccd4, %rdi
nop
nop
nop
nop
nop
add $36440, %r14
mov $101, %rcx
rep movsq
nop
nop
nop
add $8996, %rbx

// Store
lea addresses_normal+0x1e574, %r14
nop
nop
nop
cmp $32139, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_US+0x118c3, %rdi
nop
nop
nop
nop
sub $48576, %rcx
mov (%rdi), %edx
nop
nop
cmp $2090, %r14

// Store
lea addresses_WT+0xc6e4, %rdx
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rdx)
nop
sub $43157, %r11

// Store
lea addresses_A+0xd488, %r11
clflush (%r11)
nop
and $24299, %r15
movw $0x5152, (%r11)
sub %r14, %r14

// Store
lea addresses_normal+0xa2e4, %r14
nop
nop
xor %r11, %r11
movb $0x51, (%r14)
nop
nop
nop
inc %rbx

// Store
lea addresses_UC+0x15be4, %rcx
nop
xor %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
xor %r14, %r14

// Store
lea addresses_WT+0x7ae4, %r15
clflush (%r15)
nop
add $19273, %rdx
movw $0x5152, (%r15)
nop
nop
cmp $6042, %r15

// Faulty Load
lea addresses_PSE+0xae4, %r11
nop
nop
add $22829, %rbx
movntdqa (%r11), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'36': 21098, '44': 1, '00': 730}
36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 00 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36
*/
