.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2bd2, %r10
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %r10
vmovaps %ymm2, (%r10)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xd1d2, %r9
nop
nop
xor %rbp, %rbp
mov (%r9), %r10w
nop
cmp $8199, %r10
lea addresses_WC_ht+0xb3d2, %r12
nop
nop
nop
sub $41053, %rcx
movb (%r12), %r10b
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1c0d2, %rsi
lea addresses_UC_ht+0x6b52, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $2, %rcx
rep movsl
nop
nop
add %r9, %r9
lea addresses_D_ht+0x19138, %rcx
nop
sub %rbp, %rbp
mov (%rcx), %r9
sub $15846, %r9
lea addresses_A_ht+0x3712, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $37679, %rsi
mov (%rcx), %r10
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xd512, %rsi
lea addresses_D_ht+0x5112, %rdi
clflush (%rsi)
nop
nop
nop
add %r9, %r9
mov $66, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x4fd2, %rcx
clflush (%rcx)
nop
nop
nop
and $44515, %rbp
movb $0x61, (%rcx)
sub %rcx, %rcx
lea addresses_WC_ht+0x12d52, %rsi
lea addresses_UC_ht+0x12fd2, %rdi
cmp %r10, %r10
mov $53, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1a572, %rsi
lea addresses_WT_ht+0x11fd2, %rdi
clflush (%rsi)
nop
nop
nop
nop
lfence
mov $18, %rcx
rep movsb
nop
inc %rdi
lea addresses_UC_ht+0x1fd2, %rsi
lea addresses_WC_ht+0x1b466, %rdi
nop
nop
nop
cmp $31870, %rbp
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $64634, %rdi
lea addresses_UC_ht+0x711e, %rcx
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%rcx)
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1724a, %r8
nop
nop
nop
nop
nop
xor $51054, %r10
mov (%r8), %r9d
inc %rdi
lea addresses_UC_ht+0x2e29, %r10
nop
dec %rbp
movb (%r10), %r9b
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0xeb92, %rsi
lea addresses_D_ht+0x10952, %rdi
nop
nop
nop
cmp $61305, %rbp
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x2952, %r14
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
inc %rax

// REPMOV
lea addresses_normal+0x1463a, %rsi
lea addresses_normal+0x5ad2, %rdi
nop
nop
nop
nop
nop
cmp $58529, %r15
mov $26, %rcx
rep movsq
nop
sub %r11, %r11

// Store
lea addresses_UC+0x8d2, %rdi
cmp %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
cmp %rsi, %rsi

// Store
mov $0x64b54500000003d2, %rcx
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_RW+0xf2e2, %rsi
nop
sub %r14, %r14
mov (%rsi), %rcx

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
sub %r14, %r14

// Store
lea addresses_WT+0x27d2, %r11
nop
nop
nop
nop
nop
add $34744, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_US+0x7d2, %rax
dec %rdi
mov (%rax), %r14d
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'58': 97}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
