.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3f07, %r10
nop
nop
nop
nop
nop
add $36612, %rax
movb (%r10), %bl
nop
add $56272, %rbp
lea addresses_normal_ht+0x5e69, %rdi
nop
nop
nop
cmp %r8, %r8
mov (%rdi), %ebp
cmp %rbx, %rbx
lea addresses_D_ht+0x1588e, %rbx
clflush (%rbx)
nop
nop
cmp %rax, %rax
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x3579, %rsi
lea addresses_D_ht+0xb356, %rdi
nop
nop
nop
nop
nop
xor $55038, %rbp
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x19569, %rsi
lea addresses_UC_ht+0xac99, %rdi
nop
nop
xor %rbx, %rbx
mov $92, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0xbb69, %rsi
lea addresses_WT_ht+0x1d969, %rdi
dec %rbp
mov $12, %rcx
rep movsq
nop
nop
cmp $32360, %rdi
lea addresses_WT_ht+0x5369, %r10
nop
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %r10
vmovaps %ymm2, (%r10)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x9cc9, %rsi
nop
nop
dec %rax
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
sub $16536, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_normal+0x2769, %r10
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
add $50556, %r9

// Store
lea addresses_RW+0x142b9, %r15
nop
xor $51049, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r15)
nop
nop
sub $65443, %rdx

// Store
lea addresses_UC+0xc53b, %rbx
dec %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%rbx)
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_normal+0x2769, %rbx
nop
nop
nop
nop
dec %rdx
movb (%rbx), %r9b
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 12}
58 58 58 58 58 58 58 58 58 58 58 58
*/
