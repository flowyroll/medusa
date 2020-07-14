.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb69d, %rsi
lea addresses_WC_ht+0x1759d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
mov $93, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0xa9d, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x369d, %rcx
and $53689, %r8
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1be9d, %r13
and $51703, %r8
mov (%r13), %edx
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x16a9d, %rsi
lea addresses_D_ht+0xfddb, %rdi
nop
nop
nop
add $31175, %r13
mov $52, %rcx
rep movsb
sub $32734, %rdi
lea addresses_A_ht+0x186dd, %r13
nop
nop
nop
sub $44992, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
xor $24278, %rdi
lea addresses_A_ht+0x1a29d, %r8
nop
nop
cmp $13125, %r13
mov (%r8), %rdi
nop
xor %rdx, %rdx
lea addresses_D_ht+0x14211, %rsi
lea addresses_WT_ht+0x789d, %rdi
nop
nop
add $64527, %r14
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
add $30733, %r13
lea addresses_UC_ht+0x1e469, %rsi
lea addresses_WT_ht+0xd9d, %rdi
clflush (%rdi)
and %rax, %rax
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $36093, %rax
lea addresses_D_ht+0x7e9d, %r8
inc %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x2e9d, %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rdx), %eax
nop
nop
inc %r14
lea addresses_normal_ht+0x429d, %r14
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r14)
sub $25673, %r13
lea addresses_WC_ht+0xe57b, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_UC+0x1b69d, %rbx
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rbx), %r9w
nop
inc %rdx

// Store
lea addresses_UC+0x1c81d, %r12
nop
nop
nop
nop
nop
add $14475, %r8
movl $0x51525354, (%r12)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x469d, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $48796, %r12
movl $0x51525354, (%rbx)
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_normal+0xee9d, %rax
clflush (%rax)
nop
nop
xor $17288, %rdx
mov (%rax), %ebp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 9, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
