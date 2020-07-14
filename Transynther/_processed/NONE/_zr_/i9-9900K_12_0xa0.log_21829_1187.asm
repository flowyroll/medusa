.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3b93, %rdi
clflush (%rdi)
and $47024, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
add %r11, %r11
lea addresses_D_ht+0x7e9b, %rsi
lea addresses_normal_ht+0x1129b, %rdi
nop
cmp %r10, %r10
mov $6, %rcx
rep movsl
nop
nop
and $59955, %rcx
lea addresses_normal_ht+0x189, %rsi
lea addresses_UC_ht+0xe7db, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $46, %rcx
rep movsq
xor $52655, %rcx
lea addresses_D_ht+0x17e9b, %rsi
lea addresses_WT_ht+0x21ab, %rdi
nop
nop
nop
inc %rbx
mov $86, %rcx
rep movsw
nop
nop
nop
nop
xor $57174, %rdi
lea addresses_D_ht+0x1689b, %r11
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
cmp %r13, %r13
lea addresses_A_ht+0xcb2f, %r13
cmp %rbp, %rbp
movb (%r13), %r10b
nop
nop
nop
nop
add $47524, %r11
lea addresses_D_ht+0xe59b, %rsi
lea addresses_normal_ht+0x2c9b, %rdi
add %rbp, %rbp
mov $63, %rcx
rep movsw
nop
add $1831, %rsi
lea addresses_D_ht+0x116c7, %rsi
lea addresses_normal_ht+0xdbfb, %rdi
nop
nop
nop
nop
and $13683, %r10
mov $100, %rcx
rep movsl
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xb89b, %rsi
lea addresses_normal_ht+0x1e6bd, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $62, %rcx
rep movsw
sub $19024, %rbx
lea addresses_normal_ht+0x99b, %rbp
nop
xor %rsi, %rsi
movb $0x61, (%rbp)
xor $146, %rsi
lea addresses_D_ht+0x1ad29, %rsi
lea addresses_A_ht+0x1199b, %rdi
dec %r11
mov $61, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1baf, %r10
nop
nop
nop
nop
nop
and $36303, %r13
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
inc %r10
lea addresses_WT_ht+0x1b69b, %rsi
lea addresses_A_ht+0xc71b, %rdi
dec %rbp
mov $46, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $30889, %r13
lea addresses_D_ht+0x7a9b, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_RW+0x1ab07, %rax
nop
nop
nop
inc %rdi
movb $0x51, (%rax)
nop
nop
sub $57052, %r8

// Store
lea addresses_A+0x51b, %r15
clflush (%r15)
add %r9, %r9
movw $0x5152, (%r15)
nop
nop
nop
cmp %r9, %r9

// Load
lea addresses_WC+0x1619b, %rdi
nop
nop
nop
nop
nop
dec %r15
movb (%rdi), %r8b
nop
nop
cmp %rax, %rax

// Load
mov $0x1a5fd90000000a9b, %r9
add $25585, %r15
mov (%r9), %r8w
nop
nop
nop
inc %r9

// Store
lea addresses_WT+0x1b8c5, %r8
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r8)
nop
nop
sub $16476, %r10

// Load
lea addresses_UC+0x14e9b, %r10
nop
nop
nop
nop
nop
xor $13362, %rdx
mov (%r10), %r9
and $17767, %r8

// Load
lea addresses_UC+0x3e9b, %rdx
clflush (%rdx)
nop
dec %r15
mov (%rdx), %r9w
nop
and %r15, %r15

// Faulty Load
lea addresses_UC+0x14e9b, %r8
nop
and $26579, %rdi
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
