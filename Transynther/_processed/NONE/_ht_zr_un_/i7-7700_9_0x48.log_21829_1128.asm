.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13e72, %rsi
lea addresses_A_ht+0x15f7c, %rdi
nop
nop
inc %rdx
mov $49, %rcx
rep movsq
nop
add $14988, %r8
lea addresses_normal_ht+0x1c27c, %rdi
nop
nop
nop
nop
cmp $24720, %rbx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
add $57765, %rcx
lea addresses_UC_ht+0x1e7bc, %rcx
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rcx)
cmp $15559, %rbx
lea addresses_A_ht+0x3c74, %rsi
lea addresses_D_ht+0xcee8, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbp
mov $83, %rcx
rep movsw
nop
nop
nop
xor $41638, %rcx
lea addresses_D_ht+0x182c, %rdi
nop
nop
and $34768, %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1517c, %rsi
lea addresses_WC_ht+0x1e350, %rdi
nop
nop
nop
cmp $15678, %rbx
mov $119, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x1c7c0, %rbx
nop
nop
nop
nop
cmp $32085, %r9
movw $0x6162, (%rbx)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xe232, %rsi
lea addresses_UC_ht+0x19e3c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $30, %rcx
rep movsq
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x168a8, %rdx
nop
nop
inc %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rdx)
add $23565, %rdi
lea addresses_UC_ht+0x1e4f4, %r8
nop
inc %rdi
movb (%r8), %cl
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x9a7c, %rsi
lea addresses_WC_ht+0xdd1c, %rdi
clflush (%rdi)
nop
nop
add %rdx, %rdx
mov $3, %rcx
rep movsw
xor $12157, %rdx
lea addresses_UC_ht+0x7ffc, %rdx
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rdx
movaps %xmm1, (%rdx)
nop
nop
add $26507, %rcx
lea addresses_normal_ht+0x40ac, %rsi
lea addresses_WT_ht+0xf324, %rdi
nop
sub $49955, %r9
mov $36, %rcx
rep movsq
nop
nop
nop
nop
sub $57081, %r9
lea addresses_D_ht+0xd44, %rcx
nop
nop
nop
add %r9, %r9
mov (%rcx), %edi
nop
nop
nop
nop
nop
cmp $37912, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rdi

// Load
lea addresses_PSE+0x777c, %r10
nop
nop
nop
and $12485, %rbp
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x7c, %rdi
cmp %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
add $56691, %r10

// Faulty Load
lea addresses_UC+0x11a7c, %r10
nop
nop
nop
nop
nop
add %r12, %r12
mov (%r10), %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'47': 7, '6a': 2829, '48': 158, '80': 1, 'ff': 10, '1a': 128, '46': 1, '69': 4141, '29': 86, '45': 26, 'd0': 655, '00': 13725, '44': 59, '70': 1, 'e0': 1, '50': 1}
00 00 00 00 69 00 69 00 00 00 69 00 00 69 00 00 00 69 00 69 69 00 00 00 00 00 00 00 69 69 00 00 69 00 69 00 d0 00 69 00 00 00 69 00 69 00 00 69 00 00 00 00 69 00 00 d0 00 00 00 69 00 00 69 00 00 69 00 00 69 00 00 00 00 00 00 69 69 00 00 69 00 69 69 00 69 69 69 00 69 d0 00 69 69 69 00 00 00 1a 00 45 69 00 00 69 00 00 00 00 69 69 69 69 d0 69 00 48 00 69 00 00 00 00 69 69 00 00 00 69 69 00 00 00 00 69 00 69 00 69 00 69 00 00 00 00 69 00 69 00 69 d0 00 00 00 69 00 69 69 44 00 00 69 00 69 d0 00 69 69 69 69 00 00 00 69 00 00 00 00 69 00 00 00 69 69 00 00 69 00 69 00 00 69 00 00 00 00 00 00 00 00 00 69 00 00 69 00 00 00 69 00 69 00 00 00 69 00 00 00 00 00 69 69 00 69 00 69 d0 69 00 00 00 00 d0 00 69 00 00 00 00 00 69 00 69 69 69 69 69 69 00 69 69 69 00 00 00 00 00 69 00 69 1a 00 00 69 69 69 69 00 69 d0 00 69 00 00 00 00 00 00 00 69 69 00 00 69 48 00 00 00 69 00 00 69 69 00 00 69 69 00 00 00 00 00 00 00 00 69 00 00 69 00 69 00 00 00 00 69 69 00 69 69 00 00 00 00 69 00 00 69 69 00 00 00 00 69 69 d0 00 69 00 00 69 00 00 69 69 69 00 00 00 00 00 00 00 00 69 69 69 00 00 48 69 00 00 d0 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 69 00 d0 69 00 00 00 00 69 00 00 69 00 69 00 69 69 00 69 00 00 69 00 69 00 d0 d0 00 69 69 d0 00 69 00 69 69 00 69 00 69 00 00 00 29 00 00 69 00 00 00 00 00 69 00 69 00 00 00 00 00 00 d0 69 00 00 00 69 69 00 69 00 00 00 00 69 00 00 00 00 00 00 69 69 00 00 00 d0 00 00 00 00 00 00 00 69 00 00 44 69 00 69 00 69 69 00 00 00 00 69 69 00 69 00 00 00 69 00 00 00 69 00 00 69 69 00 00 69 00 00 69 00 69 00 00 00 00 00 69 00 69 00 69 00 69 69 00 00 00 00 69 00 00 00 00 69 00 69 69 69 69 00 00 69 00 69 69 00 00 00 00 69 00 00 69 00 00 69 00 69 00 00 69 69 69 00 00 00 69 69 00 00 69 00 00 00 00 00 00 00 48 00 69 00 69 00 1a 00 69 00 69 00 00 00 69 00 00 00 00 69 00 00 00 00 00 69 00 69 69 00 00 00 69 69 00 00 00 00 00 69 d0 69 00 69 00 00 00 69 00 00 00 00 00 00 00 00 69 00 69 00 00 00 00 00 00 00 00 00 69 00 00 00 00 00 69 00 00 d0 00 69 00 00 00 69 69 00 00 00 00 00 00 69 00 69 69 00 00 00 00 00 00 1a 69 00 00 00 00 00 00 69 00 69 69 69 d0 00 00 44 00 00 69 00 00 d0 00 69 00 69 69 00 69 00 69 00 69 00 69 00 44 69 00 00 00 00 69 69 69 00 d0 00 69 69 69 69 00 69 69 69 00 00 69 00 00 00 69 00 00 00 00 69 00 69 69 00 00 00 69 69 00 00 00 00 00 69 00 00 00 00 00 69 69 00 00 00 69 69 00 00 00 00 00 69 69 69 69 00 00 69 00 00 00 00 00 00 00 00 00 69 00 00 00 00 69 69 00 00 00 69 69 69 69 00 00 69 00 00 69 00 69 00 00 69 69 00 00 d0 00 00 00 00 69 00 00 69 00 69 00 1a 00 00 69 00 00 00 69 48 00 69 00 69 00 69 00 69 00 69 00 00 00 00 00 69 00 00 d0 00 00 00 00 69 00 00 00 00 00 00 00 69 00 00 00 00 00 69 69 69 69 00 00 69 69 00 00 69 00 00 00 00 69 00 00 69 69 69 00 00 00 69 69 00 d0 00 00 00 00 00 69 00 00 d0 69 00 69 00 69 69 00 00 00 00 00 00 69 d0 00 69 00 00 00 69 69 00 69 69 00 00 00 00 69 69 00 69 00 00 69 00 00 69 d0 00 69 00 69 00 69 00 00 00 69 00 00 00 00 00 69 00 00 69 00 69 00 00 00 00 00 00 00 00 00 00 00 69 45 00 69 69 69 00 00 00 00 00
*/
