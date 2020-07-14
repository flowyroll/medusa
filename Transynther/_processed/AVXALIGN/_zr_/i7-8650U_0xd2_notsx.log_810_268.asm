.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16f75, %rsi
lea addresses_D_ht+0xb575, %rdi
cmp %rdx, %rdx
mov $121, %rcx
rep movsb
inc %rsi
lea addresses_WT_ht+0x1e275, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
cmp %rsi, %rsi
lea addresses_D_ht+0x10375, %rbp
nop
nop
nop
dec %r9
mov (%rbp), %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xd2b5, %rcx
nop
nop
nop
nop
add $62697, %rbx
mov (%rcx), %rdx
cmp $19448, %r9
lea addresses_A_ht+0x2355, %rcx
nop
nop
sub $42931, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xe681, %rsi
lea addresses_UC_ht+0xd775, %rdi
nop
inc %r14
mov $109, %rcx
rep movsb
nop
cmp $38332, %rcx
lea addresses_WC_ht+0x13c95, %rsi
lea addresses_normal_ht+0x1c149, %rdi
nop
nop
nop
nop
nop
cmp $31262, %rbp
mov $36, %rcx
rep movsq
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xcf75, %rsi
nop
nop
nop
nop
nop
and $64239, %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_RW+0x7595, %rcx
nop
xor $54844, %r15
mov (%rcx), %esi
add $30094, %r15

// Store
lea addresses_A+0xc275, %rax
xor $17463, %r12
movl $0x51525354, (%rax)
nop
nop
nop
add $31068, %rax

// Store
lea addresses_UC+0x1c5f5, %rax
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rax)
nop
and $47057, %rax

// REPMOV
lea addresses_D+0x5275, %rsi
lea addresses_UC+0x4665, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $3804, %r8
mov $1, %rcx
rep movsw
inc %r15

// Faulty Load
lea addresses_US+0x2f75, %rsi
nop
and $25394, %r15
mov (%rsi), %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'00': 810}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
