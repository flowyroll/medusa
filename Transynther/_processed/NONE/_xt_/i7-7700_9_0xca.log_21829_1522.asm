.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16681, %rsi
lea addresses_WT_ht+0x5961, %rdi
nop
nop
cmp $15466, %rbx
mov $44, %rcx
rep movsb
nop
nop
sub $25991, %r15
lea addresses_D_ht+0x18a1, %rbp
clflush (%rbp)
nop
nop
nop
sub %rax, %rax
mov (%rbp), %rbx
nop
add $26474, %rbp
lea addresses_normal_ht+0x1e735, %r15
clflush (%r15)
cmp %rdi, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x15f21, %r15
nop
sub $19985, %rbx
movl $0x61626364, (%r15)
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x1bf21, %rax
nop
nop
nop
nop
inc %rbp
movl $0x61626364, (%rax)
nop
xor $21559, %rdi
lea addresses_normal_ht+0xfd2f, %rcx
nop
nop
nop
nop
xor %rax, %rax
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
and $19568, %r15
lea addresses_WC_ht+0x5d21, %rax
nop
sub $5109, %r15
movb $0x61, (%rax)
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x2de1, %rsi
lea addresses_D_ht+0xe721, %rdi
nop
nop
nop
sub $10238, %r14
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
add $11407, %rsi
lea addresses_WC_ht+0x6ec1, %rsi
lea addresses_UC_ht+0xcf21, %rdi
clflush (%rsi)
nop
xor %rbp, %rbp
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x8269, %rsi
lea addresses_A_ht+0x7e01, %rdi
clflush (%rdi)
nop
nop
nop
dec %r14
mov $31, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x99ad, %rsi
lea addresses_WC_ht+0xae21, %rdi
nop
nop
add $25041, %r14
mov $52, %rcx
rep movsl
nop
nop
and $29342, %rax
lea addresses_WC_ht+0x166fb, %rax
nop
nop
nop
xor %rbp, %rbp
mov (%rax), %cx
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x11b21, %rbx
nop
nop
nop
nop
nop
sub %rax, %rax
movb (%rbx), %r15b
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x2421, %rsi
lea addresses_A_ht+0x1000, %rdi
add $33444, %r14
mov $16, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_WT_ht+0x1a721, %rbx
clflush (%rbx)
nop
add $42805, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_RW+0x917b, %r13
dec %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
xor $48399, %rdi

// Store
lea addresses_WC+0x116e1, %rsi
and %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rsi)
nop
xor $30182, %rbp

// Store
lea addresses_A+0x1bea1, %r13
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r13)
nop
nop
and %rbp, %rbp

// Load
lea addresses_WT+0x2721, %rbp
nop
xor %r8, %r8
movb (%rbp), %r13b
nop
sub %r8, %r8

// Store
mov $0x95d, %rbp
nop
add $12656, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbp)
nop
nop
sub $46805, %r13

// Load
lea addresses_RW+0x63e1, %rdi
cmp %r13, %r13
mov (%rdi), %rbp
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_RW+0xef21, %rbp
nop
nop
nop
inc %rdi
mov (%rbp), %eax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
