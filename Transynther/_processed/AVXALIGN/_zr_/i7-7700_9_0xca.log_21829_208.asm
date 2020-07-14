.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7f61, %rsi
lea addresses_normal_ht+0x8821, %rdi
nop
nop
add $15318, %rbx
mov $93, %rcx
rep movsl
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xa421, %r10
nop
nop
nop
lfence
mov (%r10), %di
nop
nop
nop
xor $25476, %rdi
lea addresses_A_ht+0x7621, %rbx
sub %r10, %r10
mov (%rbx), %rdi
and $7095, %rbx
lea addresses_WC_ht+0xb721, %rsi
lea addresses_WC_ht+0x15229, %rdi
nop
nop
nop
nop
cmp $16741, %r12
mov $87, %rcx
rep movsb
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x1d2f1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
movb (%rdi), %r10b
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x14621, %rcx
add $8741, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x19021, %rcx
nop
sub %r10, %r10
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
cmp $53105, %r10
lea addresses_A_ht+0x14659, %rsi
lea addresses_WT_ht+0x14e51, %rdi
nop
nop
and $5289, %rbx
mov $15, %rcx
rep movsb
nop
nop
nop
nop
add $7900, %rbp
lea addresses_normal_ht+0x11221, %rbp
nop
nop
nop
and %r10, %r10
mov (%rbp), %r8w
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xf5f1, %rsi
nop
nop
sub %rbp, %rbp
movb (%rsi), %r8b
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x850d, %rsi
lea addresses_A_ht+0x88f1, %rdi
nop
nop
cmp %r8, %r8
mov $32, %rcx
rep movsw
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x10290, %rsi
lea addresses_normal_ht+0x15b11, %rdi
nop
nop
nop
nop
nop
cmp $28202, %rbp
mov $110, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_WT_ht+0x2f11, %rbx
clflush (%rbx)
nop
nop
nop
cmp $56084, %rbp
mov (%rbx), %rdi
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x199c9, %rbx
nop
nop
xor $48012, %r12
movl $0x61626364, (%rbx)
nop
nop
nop
add $34836, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_RW+0x1daa1, %rsi
nop
nop
nop
inc %rax
mov (%rsi), %r10
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_WC+0xa75, %rdx
nop
nop
xor $10705, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
xor $13582, %r12

// Store
lea addresses_WC+0x1727d, %r10
nop
nop
nop
nop
sub $7600, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r10)
sub %r12, %r12

// Store
lea addresses_PSE+0x9399, %rax
nop
and %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0xd821, %rax
nop
nop
inc %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_WT+0xa021, %rbp
nop
nop
nop
nop
dec %r10
mov (%rbp), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
