.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x8d93, %rbp
and $63717, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1b873, %rdi
nop
nop
sub %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1baab, %r15
nop
nop
cmp %r12, %r12
mov (%r15), %ebp
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1e33, %r10
clflush (%r10)
nop
dec %r15
movb (%r10), %r12b
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rdx

// Load
lea addresses_US+0x479b, %rbx
nop
xor $58052, %r15
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
nop
and $13851, %rax

// Store
lea addresses_A+0x18673, %r15
nop
nop
dec %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r15)
add %rax, %rax

// Load
lea addresses_UC+0x15277, %rdx
nop
nop
nop
nop
add $62843, %r11
mov (%rdx), %r12w
cmp %r10, %r10

// Faulty Load
lea addresses_RW+0xf473, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor $52292, %r11
mov (%rbx), %r12w
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'32': 10}
32 32 32 32 32 32 32 32 32 32
*/
