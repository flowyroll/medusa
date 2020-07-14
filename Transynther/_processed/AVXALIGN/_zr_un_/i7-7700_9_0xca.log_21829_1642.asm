.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b96, %r8
and %rax, %rax
mov (%r8), %r10d
nop
nop
nop
nop
sub $11043, %rbx
lea addresses_D_ht+0x46d6, %rsi
lea addresses_D_ht+0x1ed6, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $43, %rcx
rep movsw
nop
nop
nop
nop
and $40568, %r8
lea addresses_normal_ht+0xe762, %rsi
lea addresses_UC_ht+0x12eb6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r9
mov $26, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x6356, %r8
xor %r10, %r10
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
sub $38756, %rsi
lea addresses_UC_ht+0xbfa6, %rdi
nop
nop
sub $53693, %rax
movl $0x61626364, (%rdi)
nop
and %rbx, %rbx
lea addresses_normal_ht+0x46d6, %rax
nop
nop
nop
xor $16609, %r9
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x3096, %rsi
lea addresses_WC_ht+0x11ad6, %rdi
nop
nop
nop
add %r9, %r9
mov $77, %rcx
rep movsl
cmp $9480, %r10
lea addresses_UC_ht+0xee1e, %rsi
nop
nop
xor $56955, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
xor $14504, %rcx
lea addresses_UC_ht+0x1bad6, %rax
nop
and %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rax)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x194d6, %rsi
lea addresses_normal_ht+0x86e, %rdi
nop
nop
nop
nop
and $44940, %rax
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x6596, %rsi
lea addresses_D_ht+0x49b6, %rdi
add $5639, %r9
mov $81, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x45e, %r9
clflush (%r9)
sub $7590, %rdi
movw $0x6162, (%r9)
dec %r9
lea addresses_WT_ht+0x12d6, %rcx
nop
nop
nop
sub $1346, %r8
mov (%rcx), %bx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xd096, %rsi
lea addresses_UC_ht+0x182d6, %rdi
inc %rax
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi

// Store
lea addresses_D+0x13ad6, %r9
xor %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x3756, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %r11
vmovntdq %ymm4, (%r11)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WT+0x1d2d6, %r9
nop
nop
nop
nop
nop
add $44059, %r14
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x1ddd2, %r12
nop
nop
nop
add %r11, %r11
movw $0x5152, (%r12)

// Exception!!!
nop
mov (0), %r9
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_PSE+0x9b6, %r12
add %rcx, %rcx
movb $0x51, (%r12)
nop
nop
dec %r12

// Faulty Load
lea addresses_US+0x1c2d6, %r12
xor $42576, %r9
vmovaps (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 21828, '08': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
