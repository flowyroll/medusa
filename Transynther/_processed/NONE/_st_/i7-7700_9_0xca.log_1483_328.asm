.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xbd1c, %r13
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r13)
nop
xor $40824, %r10
lea addresses_A_ht+0x1339c, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%r12), %r14b
nop
nop
nop
nop
nop
cmp $20053, %r12
lea addresses_D_ht+0x5d9c, %r10
clflush (%r10)
nop
nop
nop
nop
xor $28603, %r12
movb $0x61, (%r10)
nop
inc %r13
lea addresses_WT_ht+0x89ec, %r15
nop
nop
nop
nop
add %r14, %r14
mov (%r15), %r12w
nop
nop
cmp $53366, %r14
lea addresses_UC_ht+0x10fac, %r15
nop
nop
add $46413, %r12
movw $0x6162, (%r15)
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x18ea4, %r14
nop
nop
sub $31769, %r15
mov (%r14), %r12d
nop
nop
nop
xor $28464, %r15
lea addresses_UC_ht+0x9f2c, %rsi
lea addresses_UC_ht+0xd19c, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
add $44206, %r12
lea addresses_WC_ht+0x1a044, %rcx
nop
nop
nop
add $5673, %r12
mov (%rcx), %rsi
nop
nop
nop
cmp $48020, %rdi
lea addresses_WT_ht+0xeaac, %r13
clflush (%r13)
and $21757, %r12
mov (%r13), %r10w
sub $40777, %rdi
lea addresses_WC_ht+0x7a95, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $59634, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r9)
nop
add $4179, %r14
lea addresses_normal_ht+0xd49c, %r15
clflush (%r15)
nop
nop
nop
nop
and $29104, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xd11c, %rsi
lea addresses_A_ht+0xe99c, %rdi
nop
nop
nop
sub %r14, %r14
mov $103, %rcx
rep movsl
xor %r15, %r15
lea addresses_UC_ht+0x4bc, %rsi
nop
nop
add %r14, %r14
mov (%rsi), %r13
nop
add %r9, %r9
lea addresses_A_ht+0xa594, %rsi
lea addresses_UC_ht+0x1419c, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $35, %rcx
rep movsq
and $20767, %r13
lea addresses_WC_ht+0x4b9c, %r14
nop
sub $64887, %rsi
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
xor $39318, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1a49c, %rax
nop
nop
nop
nop
nop
add $62306, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
dec %r9

// Store
lea addresses_WT+0xc19c, %r9
nop
nop
nop
nop
nop
and $16771, %rax
movl $0x51525354, (%r9)
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0xcb44, %r9
nop
nop
nop
inc %r12
movw $0x5152, (%r9)
nop
nop
and %r14, %r14

// Store
lea addresses_WT+0x168ec, %rdi
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rdi)
nop
xor %r8, %r8

// Store
lea addresses_D+0x899c, %rsi
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movaps %xmm2, (%rsi)
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x1059c, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_WT+0x1cc0c, %rdi
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_A+0x1c19c, %r8
cmp $58350, %r9
mov (%r8), %r14w
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'54': 1483}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
