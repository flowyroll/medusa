.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1223e, %rsi
nop
cmp %rax, %rax
movb (%rsi), %r10b
nop
nop
xor $48693, %rax
lea addresses_D_ht+0x16828, %r10
nop
nop
sub %rcx, %rcx
mov (%r10), %r14d
nop
and %rax, %rax
lea addresses_D_ht+0x15528, %r9
clflush (%r9)
nop
nop
nop
add $15695, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r9)
and $33280, %rcx
lea addresses_WT_ht+0xf130, %r14
nop
cmp $845, %rcx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm1
vpextrq $0, %xmm1, %r9
cmp $62367, %r14
lea addresses_normal_ht+0x6328, %rcx
nop
nop
nop
and %rbx, %rbx
movb (%rcx), %r9b
nop
sub %rcx, %rcx
lea addresses_A_ht+0x19628, %rsi
lea addresses_D_ht+0x7a44, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $76, %rcx
rep movsw
nop
sub $26922, %r10
lea addresses_D_ht+0xe798, %r10
nop
add %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x3c8c, %rbx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
add $58256, %r10
lea addresses_WC_ht+0x11394, %rbx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r14
xor %r9, %r9
lea addresses_UC_ht+0x1a5a8, %rsi
nop
xor %rax, %rax
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
add $20193, %r10
lea addresses_UC_ht+0xa328, %rsi
nop
nop
cmp %r10, %r10
movb (%rsi), %r14b
nop
nop
nop
nop
nop
add $17337, %rcx
lea addresses_WC_ht+0x7828, %rsi
lea addresses_WC_ht+0x277c, %rdi
clflush (%rsi)
nop
nop
and %r9, %r9
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x4de8, %rsi
lea addresses_US+0x14ce8, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $50, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x15828, %rax
nop
nop
xor $8172, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WT+0x7b28, %rcx
clflush (%rcx)
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
xor $37258, %r15

// Store
lea addresses_PSE+0xd028, %rsi
nop
nop
cmp $52302, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_WC+0xc128, %rdi
nop
nop
nop
nop
and %r9, %r9
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
cmp $43443, %rbx

// Faulty Load
lea addresses_US+0x15828, %rax
clflush (%rax)
nop
nop
nop
nop
and $5753, %r15
movb (%rax), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'00': 2, '58': 14}
00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
