.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x52a7, %r15
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%r15)
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x7bf5, %rsi
lea addresses_UC_ht+0xe5e9, %rdi
nop
and %rbp, %rbp
mov $42, %rcx
rep movsq
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xba05, %rdi
nop
dec %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x16de6, %rdi
nop
nop
xor $52762, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
nop
nop
and $16203, %rsi
lea addresses_D_ht+0x8885, %rsi
lea addresses_WT_ht+0xe17d, %rdi
nop
add %r10, %r10
mov $119, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x1d3bd, %rsi
lea addresses_normal+0x156f5, %rdi
nop
inc %rbx
mov $87, %rcx
rep movsq
nop
nop
and %r14, %r14

// Store
lea addresses_D+0xa685, %rbp
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rbp)
nop
nop
add $605, %rcx

// Store
lea addresses_A+0x17545, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $60989, %rdi

// Store
lea addresses_D+0xc0a1, %rdi
nop
nop
inc %rdx
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
add $26296, %rdx

// Load
lea addresses_WC+0xf205, %rsi
nop
nop
dec %rdi
mov (%rsi), %ebx
nop
nop
inc %rcx

// Store
lea addresses_UC+0x1c2dd, %rcx
clflush (%rcx)
nop
dec %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x7e95, %r14
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
add $45528, %rbx

// Store
mov $0x77f7940000000305, %rbp
nop
add %rbx, %rbx
movw $0x5152, (%rbp)
xor $65450, %rdx

// Store
lea addresses_WC+0x1cd05, %rsi
add %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_normal+0x5205, %rbx
nop
cmp $30575, %rcx
mov (%rbx), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}}
{'34': 11}
34 34 34 34 34 34 34 34 34 34 34
*/
