.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x157e6, %r10
nop
nop
xor $30466, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
cmp $54372, %r13
lea addresses_normal_ht+0x7fde, %rsi
lea addresses_WC_ht+0x5546, %rdi
nop
nop
nop
and $51137, %rdx
mov $98, %rcx
rep movsq
nop
nop
nop
and $64770, %rcx
lea addresses_WC_ht+0x83e6, %rsi
lea addresses_A_ht+0xd436, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $23, %rcx
rep movsl
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x4066, %rdi
add $26126, %rdx
movb (%rdi), %r15b
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1fa4, %rbp
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rbp)
and $57464, %r15
lea addresses_WC_ht+0x138f2, %rsi
lea addresses_A_ht+0x77e6, %rdi
nop
nop
nop
nop
nop
sub $38718, %r10
mov $123, %rcx
rep movsw
nop
nop
nop
xor $58476, %rdi
lea addresses_A_ht+0xbe6, %r15
clflush (%r15)
nop
nop
nop
and $17504, %rbp
mov (%r15), %di
nop
nop
nop
nop
and $61328, %rdx
lea addresses_A_ht+0x18c26, %rdx
nop
nop
nop
nop
add $53530, %rcx
movb $0x61, (%rdx)
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x18b3e, %rbp
nop
sub $36732, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rbp
vmovaps %ymm5, (%rbp)
nop
nop
nop
nop
cmp $31756, %rdi
lea addresses_WT_ht+0x33c6, %r10
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r10), %rcx
lfence
lea addresses_WT_ht+0x1cbe6, %rsi
lea addresses_D_ht+0x16be6, %rdi
clflush (%rdi)
mfence
mov $109, %rcx
rep movsb
nop
nop
xor $28465, %r10
lea addresses_D_ht+0x296e, %r10
nop
nop
nop
nop
nop
sub $22548, %rsi
movl $0x61626364, (%r10)
cmp $51834, %rbp
lea addresses_A_ht+0x11d66, %rsi
lea addresses_WC_ht+0xbe6, %rdi
add %rbp, %rbp
mov $87, %rcx
rep movsq
nop
dec %r10
lea addresses_D_ht+0xb7e6, %rsi
lea addresses_A_ht+0x8086, %rdi
nop
nop
nop
nop
add $57427, %r13
mov $84, %rcx
rep movsl
nop
sub $27880, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_RW+0x1f926, %r13
nop
nop
nop
xor $46589, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
nop
dec %r9

// Load
lea addresses_US+0x8be6, %r13
nop
nop
nop
nop
and $7798, %rbp
mov (%r13), %r9
nop
add $35800, %r9

// Store
lea addresses_normal+0x1d5e6, %rbp
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
xor %r15, %r15

// Faulty Load
lea addresses_US+0x8be6, %r13
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%r13), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
