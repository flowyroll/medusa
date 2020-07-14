.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d19e, %r12
cmp %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x22fe, %rsi
lea addresses_normal_ht+0x151fe, %rdi
dec %r10
mov $31, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x151a6, %r15
clflush (%r15)
nop
nop
nop
nop
inc %r13
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $7016, %r13
lea addresses_WT_ht+0x16dfe, %rsi
lea addresses_normal_ht+0x1e976, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $14, %rcx
rep movsl
sub %r12, %r12
lea addresses_D_ht+0x10d22, %rbp
nop
nop
nop
nop
sub $33139, %rcx
movb $0x61, (%rbp)
nop
add %r12, %r12
lea addresses_normal_ht+0x19756, %r12
nop
inc %rsi
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
xor $39176, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xd70a, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
dec %rsi

// Store
lea addresses_RW+0x1479e, %rcx
nop
nop
nop
and $48526, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rcx)
nop
nop
nop
nop
add $45786, %rsi

// Load
lea addresses_PSE+0x1dfe, %rax
and %rdx, %rdx
mov (%rax), %esi

// Exception!!!
nop
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
and $49800, %rdx

// Faulty Load
lea addresses_PSE+0x1dfe, %rax
nop
add %r14, %r14
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 91}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
