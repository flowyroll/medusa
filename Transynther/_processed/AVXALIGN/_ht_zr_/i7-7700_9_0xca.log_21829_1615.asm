.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7aad, %rsi
lea addresses_A_ht+0x554d, %rdi
nop
dec %r11
mov $114, %rcx
rep movsq
nop
and %r15, %r15
lea addresses_WT_ht+0x136ad, %rsi
lea addresses_A_ht+0x11ed, %rdi
nop
nop
nop
dec %r10
mov $13, %rcx
rep movsl
nop
nop
xor $49670, %rdi
lea addresses_A_ht+0x1a0ad, %rcx
nop
nop
nop
add $2750, %rbx
mov (%rcx), %r15d
nop
sub $56805, %rdi
lea addresses_D_ht+0x14ad, %rbx
nop
nop
dec %rdi
mov (%rbx), %r11w
nop
nop
nop
nop
and $42308, %rbx
lea addresses_A_ht+0x1cad, %rbx
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x538d, %rcx
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x5cad, %rdi
nop
nop
and %r11, %r11
mov (%rdi), %rsi
nop
nop
inc %rbx
lea addresses_normal_ht+0xa50d, %rsi
lea addresses_WT_ht+0x1bbcd, %rdi
nop
nop
nop
add %rdx, %rdx
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x16f9d, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x47d, %rsi
lea addresses_normal_ht+0x8e19, %rdi
clflush (%rdi)
nop
nop
inc %rdx
mov $26, %rcx
rep movsw
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x1813d, %r10
nop
add %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %r10
movntdq %xmm1, (%r10)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x13011, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
nop
cmp $19326, %r15
lea addresses_UC_ht+0x13d2d, %rsi
lea addresses_A_ht+0x1762d, %rdi
nop
nop
dec %r10
mov $109, %rcx
rep movsb
nop
nop
nop
nop
add $35744, %rbx
lea addresses_D_ht+0x1b11d, %r11
clflush (%r11)
nop
nop
nop
nop
add $34973, %rdi
mov (%r11), %rcx
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0x1a2ad, %r8
nop
nop
nop
nop
nop
inc %r10
movb $0x51, (%r8)
xor %r8, %r8

// Load
lea addresses_WT+0x12fdd, %r8
xor $44081, %rcx
mov (%r8), %r10
cmp $24502, %rbp

// Load
lea addresses_US+0x68ad, %rax
nop
nop
dec %r14
mov (%rax), %r8
nop
add $51461, %rax

// Store
lea addresses_UC+0x1fb65, %rcx
nop
cmp $61936, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x7fcd, %r10
clflush (%r10)
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r10)
nop
nop
dec %rbp

// Faulty Load
lea addresses_UC+0x104ad, %r8
sub %r10, %r10
vmovaps (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'49': 2000, '00': 19829}
00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49
*/
