.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x163d1, %r9
add $38535, %r15
movw $0x6162, (%r9)
nop
nop
nop
nop
sub $9189, %rbp
lea addresses_A_ht+0xac9, %rsi
lea addresses_UC_ht+0x7ad1, %rdi
nop
and $14333, %rdx
mov $44, %rcx
rep movsl
nop
nop
nop
and $62992, %rdx
lea addresses_A_ht+0x9443, %rsi
lea addresses_D_ht+0xbbd1, %rdi
nop
nop
nop
nop
nop
xor $47280, %r13
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $14705, %rbp
lea addresses_A_ht+0x175d1, %rcx
nop
nop
nop
dec %r13
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
cmp $24400, %rsi
lea addresses_D_ht+0x17711, %rdx
nop
nop
and %r9, %r9
mov (%rdx), %r13
nop
nop
dec %rdx
lea addresses_UC_ht+0x816d, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0xfec1, %rsi
lea addresses_WT_ht+0x14051, %rdi
nop
nop
nop
nop
nop
and $8456, %r13
mov $112, %rcx
rep movsw
xor $22227, %rsi
lea addresses_WT_ht+0x77d1, %rsi
lea addresses_D_ht+0x1c189, %rdi
nop
nop
nop
cmp $57955, %r9
mov $95, %rcx
rep movsl
sub %r13, %r13
lea addresses_WT_ht+0xce31, %rsi
lea addresses_WT_ht+0x638d, %rdi
sub %rdx, %rdx
mov $99, %rcx
rep movsq
nop
nop
nop
add $39458, %rsi
lea addresses_A_ht+0x99b1, %rbp
clflush (%rbp)
nop
nop
nop
add $33066, %rcx
mov (%rbp), %esi
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x43b1, %r9
nop
nop
nop
nop
xor $46720, %rsi
mov (%r9), %r15d
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x11d93, %rsi
lea addresses_WT_ht+0xd2d1, %rdi
nop
add %r13, %r13
mov $40, %rcx
rep movsb
nop
nop
add %r13, %r13
lea addresses_A_ht+0x93d1, %rsi
lea addresses_WT_ht+0x1a3cb, %rdi
nop
nop
and %r13, %r13
mov $66, %rcx
rep movsq
cmp %rbp, %rbp
lea addresses_normal_ht+0x145d1, %rsi
lea addresses_UC_ht+0x17cb1, %rdi
nop
nop
inc %r13
mov $71, %rcx
rep movsq
nop
nop
nop
nop
cmp $1034, %rbp
lea addresses_A_ht+0x158b1, %rsi
lea addresses_D_ht+0x15a79, %rdi
nop
and %rbp, %rbp
mov $50, %rcx
rep movsw
nop
nop
nop
nop
sub $43842, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1daa1, %r9
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r9)
nop
nop
nop
xor $10530, %r12

// Store
lea addresses_D+0x158d1, %r9
nop
nop
dec %r8
movw $0x5152, (%r9)
nop
nop
cmp $42318, %r12

// REPMOV
lea addresses_A+0x41d1, %rsi
lea addresses_A+0x1eb19, %rdi
add %r8, %r8
mov $107, %rcx
rep movsb
nop
nop
xor $3442, %r8

// Store
lea addresses_UC+0x10d1, %r13
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r13)
nop
cmp %rdi, %rdi

// Load
lea addresses_WC+0x1a41, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
dec %rcx
mov (%rdx), %rsi
and $19998, %rdi

// Load
lea addresses_RW+0x95d1, %r8
xor $7638, %r9
mov (%r8), %r11w
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x99d1, %rdi
and $1336, %rcx
movw $0x5152, (%rdi)
nop
nop
dec %rdx

// Store
lea addresses_normal+0xbf21, %r8
nop
nop
nop
add $61199, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_WT+0x1b5d1, %rsi
cmp $41584, %rdi
mov (%rsi), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
