.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13afc, %rbx
nop
dec %r15
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
xor %r12, %r12
lea addresses_A_ht+0x16dec, %rsi
lea addresses_WC_ht+0xbebf, %rdi
nop
nop
nop
cmp $35842, %rbp
mov $112, %rcx
rep movsb
nop
nop
xor $7802, %rbp
lea addresses_normal_ht+0xdb5, %rsi
clflush (%rsi)
nop
nop
nop
and %rbp, %rbp
mov (%rsi), %r15w
nop
nop
nop
nop
nop
and $26706, %rbx
lea addresses_WC_ht+0x18594, %r12
sub $42917, %rcx
movb $0x61, (%r12)
nop
nop
dec %rbp
lea addresses_normal_ht+0xa79c, %r8
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
dec %rcx
lea addresses_UC_ht+0x4dec, %rcx
nop
nop
nop
nop
inc %r12
mov (%rcx), %rbp
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1bc2c, %rbp
nop
nop
nop
xor %rbx, %rbx
mov (%rbp), %esi
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x31ec, %rbp
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rbp), %r12d
nop
nop
nop
nop
xor $22565, %rdi
lea addresses_UC_ht+0x8b5c, %rsi
nop
nop
and %r12, %r12
mov (%rsi), %r15d
nop
sub $1605, %rdi
lea addresses_D_ht+0x57ec, %rsi
lea addresses_D_ht+0x6a0c, %rdi
nop
add $47790, %rbp
mov $53, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_WT_ht+0x185ec, %rsi
lea addresses_A_ht+0xc46c, %rdi
sub %rbp, %rbp
mov $62, %rcx
rep movsl
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1e334, %rcx
nop
nop
nop
nop
cmp $5076, %rsi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
xor $62231, %rbp
lea addresses_A_ht+0x990c, %rsi
lea addresses_normal_ht+0xa5af, %rdi
nop
add $45386, %rbp
mov $17, %rcx
rep movsw
nop
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_RW+0x11a2c, %r10
nop
nop
nop
nop
add $26578, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r10)

// Exception!!!
mov (0), %r8
cmp $36279, %r10

// Store
lea addresses_A+0x1c3ec, %rax
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rax)
nop
nop
add $45643, %r12

// Store
lea addresses_WC+0xc59c, %r8
nop
nop
nop
nop
nop
add $36664, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x15a54, %r9
nop
xor $21674, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovntdq %ymm5, (%r9)
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_RW+0x35ec, %r9
cmp %r10, %r10
mov (%r9), %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
