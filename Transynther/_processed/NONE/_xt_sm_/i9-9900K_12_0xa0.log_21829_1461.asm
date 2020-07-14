.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1895b, %r8
nop
nop
nop
sub %r11, %r11
movb (%r8), %r9b
nop
sub %r10, %r10
lea addresses_UC_ht+0x12c93, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%rdx)
nop
and $1195, %r8
lea addresses_UC_ht+0x11a93, %r9
nop
nop
nop
nop
add $64233, %rdx
movb $0x61, (%r9)
nop
xor %r11, %r11
lea addresses_normal_ht+0x10a93, %rbp
nop
nop
nop
nop
nop
xor $54891, %r12
mov (%rbp), %r11
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x19cab, %r8
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%r8)
add %r8, %r8
lea addresses_UC_ht+0x12e93, %rsi
lea addresses_WT_ht+0x1e2d3, %rdi
nop
nop
nop
sub $33525, %r11
mov $34, %rcx
rep movsq
sub %r10, %r10
lea addresses_A_ht+0x16093, %r8
nop
add %r11, %r11
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x12e13, %rdx
nop
nop
cmp %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x3c93, %rsi
lea addresses_normal_ht+0x3e43, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $86, %rcx
rep movsl
sub $30248, %rbp
lea addresses_WT_ht+0x1885, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rcx), %esi
add $19333, %r9
lea addresses_D_ht+0xec6f, %rsi
nop
nop
nop
nop
inc %r9
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1a1b3, %rdx
nop
nop
xor %r8, %r8
movb (%rdx), %r10b
nop
add $54110, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rax
push %rsi

// Store
mov $0x893, %rax
sub %rsi, %rsi
movl $0x51525354, (%rax)
sub $16553, %r11

// Store
lea addresses_D+0x17e93, %r14
dec %r10
movw $0x5152, (%r14)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x1b65b, %r11
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r11)
nop
sub %r14, %r14

// Load
lea addresses_UC+0x152dc, %r15
nop
nop
dec %r10
mov (%r15), %r8d
nop
cmp $42039, %rsi

// Store
lea addresses_US+0x1293, %r15
clflush (%r15)
and $24294, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
inc %r15

// Store
lea addresses_WT+0x1d6d9, %r11
cmp %rax, %rax
movl $0x51525354, (%r11)
nop
sub %r11, %r11

// Load
lea addresses_normal+0x10993, %r10
nop
nop
add %r11, %r11
mov (%r10), %ax
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x1ce93, %rax
nop
nop
nop
nop
nop
xor $43266, %r8
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
add $50758, %rax

// Faulty Load
lea addresses_WT+0x1ce93, %rsi
nop
nop
nop
add $54127, %r10
mov (%rsi), %r11d
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
