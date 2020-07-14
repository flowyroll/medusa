.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x431d, %rsi
lea addresses_UC_ht+0xe5bd, %rdi
clflush (%rdi)
add $48802, %r15
mov $29, %rcx
rep movsl
nop
nop
nop
nop
xor $56362, %rbx
lea addresses_WC_ht+0x18f1d, %rsi
lea addresses_WT_ht+0x1859d, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x12e9d, %rsi
lea addresses_A_ht+0x14b1d, %rdi
clflush (%rsi)
nop
dec %rdx
mov $95, %rcx
rep movsq
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1bbdd, %rsi
lea addresses_normal_ht+0x7ed1, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
add $62463, %rdi
lea addresses_UC_ht+0x3b1d, %rbx
nop
nop
nop
sub %rdx, %rdx
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x9b1d, %rsi
lea addresses_WC_ht+0x1651d, %rdi
and %r9, %r9
mov $92, %rcx
rep movsb
nop
cmp $1655, %r9
lea addresses_UC_ht+0x1a79f, %r9
add $14777, %rdx
mov (%r9), %ebx
nop
nop
nop
nop
nop
cmp $25109, %r9
lea addresses_WT_ht+0x11cdd, %rsi
lea addresses_UC_ht+0x1091d, %rdi
nop
nop
nop
nop
nop
add $13592, %rax
mov $11, %rcx
rep movsq
nop
nop
and $21447, %rdi
lea addresses_A_ht+0x13a59, %rsi
lea addresses_A_ht+0x1b1ed, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $82, %rcx
rep movsq
cmp %r9, %r9
lea addresses_D_ht+0x52ed, %rsi
nop
add $36176, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x301d, %rsi
lea addresses_WT_ht+0x1e1b9, %rdi
clflush (%rsi)
nop
inc %r9
mov $39, %rcx
rep movsw
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x9ddd, %rbp
nop
nop
add $48175, %rdi
movb $0x51, (%rbp)
nop
nop
nop
xor $49984, %r9

// Store
lea addresses_WT+0x1a31d, %rdi
nop
and %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x1e08f, %rdi
nop
nop
nop
nop
nop
and $17426, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub $10305, %rdx

// Store
lea addresses_WC+0x13df5, %r12
nop
nop
nop
nop
nop
xor $59759, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r12)
nop
add $57117, %rbp

// Store
lea addresses_WT+0x1631d, %r9
nop
xor %r8, %r8
movw $0x5152, (%r9)
nop
nop
xor $23374, %rdx

// Store
lea addresses_WC+0x1ef1d, %r8
nop
nop
and %r12, %r12
movl $0x51525354, (%r8)
sub $29865, %rdi

// Store
lea addresses_WT+0x15b1d, %r8
clflush (%r8)
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
nop
sub $64808, %r8

// Faulty Load
lea addresses_WT+0x1631d, %r9
nop
nop
dec %r12
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'46': 5, '00': 7, '49': 8, '45': 24}
45 49 49 00 45 45 45 45 45 45 45 45 49 00 45 45 49 46 49 45 00 45 45 49 00 45 00 46 46 49 00 46 49 45 45 45 46 45 00 45 45 45 45 45
*/
