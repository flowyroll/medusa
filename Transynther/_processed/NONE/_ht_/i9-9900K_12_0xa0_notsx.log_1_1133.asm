.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3710, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rcx), %r9b
nop
nop
nop
nop
nop
sub $47280, %rdi
lea addresses_A_ht+0x13d0, %rsi
lea addresses_D_ht+0x12a10, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
add $7892, %r11
lea addresses_A_ht+0x5850, %rbx
nop
nop
sub %r14, %r14
movb $0x61, (%rbx)
nop
nop
sub $27172, %rbx
lea addresses_D_ht+0xd750, %r11
inc %r14
mov (%r11), %rbx
nop
nop
nop
nop
sub $32563, %rdi
lea addresses_UC_ht+0x2fd0, %rbx
nop
sub $40444, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xc30, %rsi
lea addresses_WT_ht+0x72c9, %rdi
clflush (%rsi)
add %r13, %r13
mov $6, %rcx
rep movsb
nop
and $41759, %r9
lea addresses_A_ht+0x3cb0, %rcx
nop
nop
nop
nop
add %r9, %r9
mov (%rcx), %r13w
and $50486, %r14
lea addresses_D_ht+0x200, %rsi
lea addresses_normal_ht+0x109d0, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $14, %rcx
rep movsb
nop
xor $22175, %r13
lea addresses_WC_ht+0x3e50, %r13
nop
sub $3383, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x58d0, %r10
nop
dec %rcx
movl $0x51525354, (%r10)
nop
cmp %rdi, %rdi

// REPMOV
lea addresses_UC+0x191d0, %rsi
lea addresses_WT+0xcd70, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $44, %rcx
rep movsb
nop
sub %rcx, %rcx

// Load
lea addresses_RW+0x758, %r10
nop
nop
nop
nop
nop
inc %rdx
mov (%r10), %r15
sub %r15, %r15

// Store
lea addresses_RW+0x1f9d0, %rbx
nop
nop
nop
nop
xor $25562, %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0xed30, %rdx
nop
nop
nop
nop
nop
xor $11393, %r10
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp $62995, %rbx

// Store
lea addresses_US+0x1e8d0, %r15
nop
nop
nop
nop
inc %rdi
movb $0x51, (%r15)
nop
inc %r15

// Faulty Load
lea addresses_UC+0x191d0, %r15
nop
nop
nop
nop
sub $25931, %rbx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'68': 1}
68
*/
