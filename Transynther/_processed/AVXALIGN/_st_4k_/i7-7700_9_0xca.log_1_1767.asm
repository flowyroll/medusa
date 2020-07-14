.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1378e, %rsi
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xc9ae, %r8
dec %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %r8
vmovntdq %ymm0, (%r8)
nop
nop
nop
nop
add $23527, %r14
lea addresses_WT_ht+0x1108e, %r14
nop
nop
sub %r9, %r9
movb (%r14), %r15b
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x168e, %rsi
lea addresses_A_ht+0x1288e, %rdi
nop
nop
nop
sub $51036, %r9
mov $69, %rcx
rep movsl
nop
and $5420, %r14
lea addresses_A_ht+0x1808e, %rsi
lea addresses_UC_ht+0x6ace, %rdi
add $57393, %rdx
mov $1, %rcx
rep movsl
nop
add $59155, %rsi
lea addresses_WC_ht+0x828e, %rsi
lea addresses_normal_ht+0x1c98e, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $42, %rcx
rep movsl
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1068e, %rcx
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1458e, %rcx
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
dec %r14
lea addresses_D_ht+0x1c9ee, %r9
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r9)
nop
xor %r14, %r14
lea addresses_A_ht+0xd9ee, %r15
clflush (%r15)
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
xor $59668, %rdx
lea addresses_D_ht+0xe2c2, %r9
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r9)
add $6987, %rcx
lea addresses_UC_ht+0x1b8e, %rsi
lea addresses_UC_ht+0x1ba4e, %rdi
nop
nop
nop
add $62136, %rdx
mov $35, %rcx
rep movsq
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1288e, %r9
nop
nop
nop
nop
sub $38337, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x88e, %rsi
lea addresses_A_ht+0x63cd, %rdi
clflush (%rsi)
add $2500, %r15
mov $116, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_US+0x11ef2, %rdx
clflush (%rdx)
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movntdq %xmm1, (%rdx)
nop
dec %rax

// Store
lea addresses_WT+0x1a0e6, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
dec %rdi

// Store
mov $0x88e, %rdi
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movntdq %xmm3, (%rdi)
nop
xor %rdi, %rdi

// Load
lea addresses_A+0x1d22e, %r9
nop
nop
cmp $63726, %rdx
mov (%r9), %r14d
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
mov $0x18e0190000000c8e, %r8
nop
nop
nop
nop
nop
xor $43104, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
sub $63838, %rdx

// Store
lea addresses_WT+0x1008e, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rdi)
nop
sub $56333, %rdx

// Store
mov $0xa0e, %r9
nop
cmp $7486, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_WT+0x1608e, %rax
nop
nop
xor %rdi, %rdi
mov (%rax), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_P'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'52': 1}
52
*/
