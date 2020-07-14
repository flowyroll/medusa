.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb6ad, %r15
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xcf0d, %rcx
nop
nop
and $1331, %rax
movb $0x61, (%rcx)
xor $19959, %r10
lea addresses_WC_ht+0x11aed, %r12
nop
nop
nop
nop
inc %rbp
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x1458d, %rbp
nop
nop
xor %r11, %r11
mov (%rbp), %r12
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1966d, %r11
nop
nop
nop
nop
inc %r10
movb $0x61, (%r11)
nop
add $18906, %rbp
lea addresses_WC_ht+0x1899d, %rax
nop
nop
xor %rbp, %rbp
movb (%rax), %cl
nop
nop
nop
nop
nop
cmp $31837, %rax
lea addresses_UC_ht+0xf6ed, %r15
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
nop
nop
and $59648, %rcx
lea addresses_WC_ht+0x1d9d, %r10
clflush (%r10)
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
cmp $55907, %r12
lea addresses_UC_ht+0xa36d, %rsi
lea addresses_WT_ht+0x740d, %rdi
nop
nop
nop
cmp %r12, %r12
mov $24, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rdx

// Store
mov $0x79b, %rdx
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rdx)
nop
nop
nop
xor $36735, %r9

// Load
lea addresses_WC+0x1d06d, %r14
clflush (%r14)
nop
nop
nop
add $24853, %r11
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r10
nop
inc %r10

// Store
lea addresses_PSE+0x736d, %r10
nop
cmp %r13, %r13
movw $0x5152, (%r10)
nop
sub %r10, %r10

// Store
lea addresses_UC+0x1376d, %rbx
nop
nop
nop
nop
nop
add $49096, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
cmp %r10, %r10

// Store
lea addresses_RW+0x142ed, %r9
nop
nop
nop
nop
xor $3403, %r11
movb $0x51, (%r9)
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_UC+0x1376d, %r10
clflush (%r10)
nop
nop
nop
cmp $28618, %r13
mov (%r10), %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_P'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'58': 31}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
