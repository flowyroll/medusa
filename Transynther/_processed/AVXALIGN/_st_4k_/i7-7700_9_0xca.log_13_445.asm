.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xaa10, %rsi
lea addresses_A_ht+0x8410, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $94, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x2810, %rdx
inc %rax
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x5690, %rax
nop
xor $55620, %r12
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $31013, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi

// Load
lea addresses_A+0x1e490, %r9
nop
nop
nop
nop
nop
inc %r15
movb (%r9), %r13b
nop
nop
nop
nop
nop
sub $13372, %rdi

// Store
lea addresses_normal+0x1f810, %r11
nop
nop
nop
nop
nop
xor $25175, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
add $30872, %r12

// Store
lea addresses_normal+0x4010, %r12
nop
nop
nop
nop
nop
dec %r9
movb $0x51, (%r12)
add %rdi, %rdi

// Store
lea addresses_A+0x1c810, %r12
nop
nop
nop
inc %r11
movb $0x51, (%r12)
nop
xor %r11, %r11

// Store
lea addresses_WC+0x254a, %r11
sub $50330, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovaps %ymm4, (%r11)
nop
nop
nop
nop
nop
xor $3424, %r15

// Store
lea addresses_RW+0x1e30, %rdi
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
dec %r15

// Load
lea addresses_US+0x9810, %rdi
nop
nop
sub $63290, %r13
movb (%rdi), %r15b
nop
nop
nop
cmp $39163, %rdi

// Faulty Load
lea addresses_US+0x9810, %rcx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rcx), %r9w
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'51': 13}
51 51 51 51 51 51 51 51 51 51 51 51 51
*/
