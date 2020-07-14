.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ca64, %r13
clflush (%r13)
and $40284, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0xea74, %rsi
lea addresses_WC_ht+0xab9c, %rdi
nop
nop
nop
sub $22552, %r14
mov $74, %rcx
rep movsw
sub $412, %rax
lea addresses_normal_ht+0x196d0, %rcx
nop
nop
nop
nop
nop
and $62742, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x59c, %rsi
nop
nop
nop
nop
dec %rdx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
add $33297, %rdx
lea addresses_WC_ht+0x1bcb0, %rsi
lea addresses_WT_ht+0x1781c, %rdi
nop
nop
nop
cmp $16045, %r10
mov $22, %rcx
rep movsw
nop
inc %rdx
lea addresses_UC_ht+0x1785c, %r14
nop
nop
nop
add $38555, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
add $37531, %r14
lea addresses_A_ht+0x1569c, %r14
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r14)
cmp $39611, %rsi
lea addresses_WC_ht+0xd5ac, %rcx
and %rax, %rax
movb (%rcx), %r14b
nop
nop
add %r14, %r14
lea addresses_normal_ht+0xabbc, %rcx
nop
nop
nop
and $64583, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x1c19c, %rsi
lea addresses_D_ht+0x13d9c, %rdi
nop
add %r14, %r14
mov $77, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x1559c, %rax
nop
nop
nop
mfence
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1cf9c, %rdi
nop
nop
nop
inc %r13
movw $0x6162, (%rdi)
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x21fc, %rcx
nop
nop
nop
sub $32731, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
sub $64408, %r10
lea addresses_WT_ht+0xad9c, %rsi
lea addresses_normal_ht+0x14c1c, %rdi
nop
nop
nop
nop
inc %r13
mov $38, %rcx
rep movsq
nop
nop
nop
nop
and $27095, %rdi
lea addresses_WT_ht+0x1e11c, %r13
nop
add %r14, %r14
mov (%r13), %r10
nop
nop
nop
nop
nop
cmp $30843, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WC+0xf59c, %rsi
nop
nop
sub %rbx, %rbx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
xor $17257, %r10

// Store
mov $0x2263bf00000000c8, %r9
nop
nop
nop
dec %r14
movw $0x5152, (%r9)
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_A+0xf89c, %rsi
nop
nop
nop
nop
inc %rdi
mov (%rsi), %r14w
and %r9, %r9

// Store
lea addresses_normal+0x6006, %r9
nop
nop
xor %r10, %r10
movl $0x51525354, (%r9)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_D+0x8aec, %rdi
nop
and %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
add $2749, %r8

// Store
lea addresses_A+0x1449c, %r8
clflush (%r8)
xor %r14, %r14
movw $0x5152, (%r8)
nop
nop
and %r14, %r14

// Store
lea addresses_D+0xc1bc, %r14
nop
nop
add %r9, %r9
movw $0x5152, (%r14)
nop
xor $18313, %r9

// Store
lea addresses_normal+0xf9c, %r9
nop
nop
nop
add %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WT+0x1519c, %rsi
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
sub $6369, %r9

// Faulty Load
lea addresses_WC+0xf59c, %rdi
nop
nop
nop
nop
nop
dec %r9
mov (%rdi), %r14w
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
