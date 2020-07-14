.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb6f4, %rcx
xor %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
xor $53867, %r13
lea addresses_D_ht+0xd6f4, %r14
nop
nop
nop
add $63357, %r12
movb (%r14), %dl
nop
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0xa434, %rcx
and %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x29f4, %rcx
nop
nop
cmp $4849, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
and $50501, %rbx
lea addresses_WC_ht+0x150f4, %rbx
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%rbx)
nop
add %r13, %r13
lea addresses_WT_ht+0x1c7c6, %r14
nop
cmp $7989, %r13
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
cmp $41477, %r12
lea addresses_WT_ht+0xe734, %r13
nop
nop
and $1454, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
and $52045, %rcx
lea addresses_A_ht+0x176f4, %r12
xor %rbx, %rbx
movb $0x61, (%r12)
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x100b4, %r13
and $37236, %r9
movb (%r13), %bl
cmp %rcx, %rcx
lea addresses_WT_ht+0x1b8b4, %r9
nop
nop
nop
nop
nop
dec %r14
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
xor $12751, %rcx
lea addresses_UC_ht+0x808a, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $1702, %r14
movw $0x6162, (%rbx)
nop
nop
nop
nop
add $61842, %r9
lea addresses_A_ht+0x147b4, %rsi
lea addresses_D_ht+0x74f4, %rdi
nop
nop
nop
add %r12, %r12
mov $126, %rcx
rep movsw
nop
nop
sub $46599, %r14
lea addresses_normal_ht+0x71d0, %rsi
lea addresses_UC_ht+0x6f14, %rdi
nop
nop
nop
sub $5236, %r13
mov $43, %rcx
rep movsb
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_US+0x1c668, %rdi
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovaps %ymm3, (%rdi)
cmp $25237, %rdi

// Store
lea addresses_normal+0xe6f4, %r12
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r12)
nop
nop
xor $20837, %rdx

// Load
lea addresses_UC+0x15754, %rax
nop
nop
nop
sub %rbp, %rbp
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r13
sub %r13, %r13

// Store
mov $0x3a26620000000ff4, %r15
nop
nop
nop
nop
dec %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
sub $49789, %rax

// Store
lea addresses_A+0x1874, %rdx
nop
nop
nop
nop
nop
xor $35036, %r15
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
nop
and $455, %rbp

// Store
lea addresses_WC+0xd9f4, %r13
clflush (%r13)
nop
nop
nop
cmp $23543, %rax
movb $0x51, (%r13)
nop
nop
nop
sub $43544, %rbp

// Faulty Load
lea addresses_RW+0x13ef4, %rdi
nop
nop
nop
nop
add %r12, %r12
mov (%rdi), %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'32': 18115}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
