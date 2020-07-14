.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xece7, %rsi
lea addresses_WT_ht+0x658f, %rdi
nop
nop
sub $36552, %r9
mov $80, %rcx
rep movsl
nop
nop
nop
and $22499, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x76e7, %r15
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
cmp $55343, %rcx

// Store
lea addresses_WC+0x1f0e7, %rbp
nop
cmp $25000, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
cmp $20766, %rbp

// Store
lea addresses_normal+0x3ff3, %r13
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r13)
nop
sub %r13, %r13

// Store
lea addresses_WC+0x1f0e7, %rax
nop
nop
xor $58840, %r13
movl $0x51525354, (%rax)
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_WC+0x1f0e7, %rdx
clflush (%rdx)
nop
inc %rdi
mov (%rdx), %ax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'54': 80}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
