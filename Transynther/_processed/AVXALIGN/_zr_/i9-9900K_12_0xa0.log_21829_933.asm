.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb254, %r8
nop
nop
nop
nop
cmp $7681, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r8
vmovntdq %ymm7, (%r8)
nop
nop
sub $47087, %r8
lea addresses_D_ht+0xa4fc, %rdi
clflush (%rdi)
xor %r13, %r13
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x11bd4, %r8
nop
nop
nop
nop
nop
add %rbx, %rbx
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r13
nop
add $15242, %r8
lea addresses_WT_ht+0xead4, %rsi
lea addresses_normal_ht+0xbb24, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $124, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x2c4e, %rsi
lea addresses_D_ht+0x9fd4, %rdi
dec %rbp
mov $53, %rcx
rep movsb
sub %r14, %r14
lea addresses_normal_ht+0x6ad4, %r13
nop
nop
nop
nop
nop
sub $58577, %rax
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm0
vpextrq $0, %xmm0, %rbx
xor %rbx, %rbx
lea addresses_A_ht+0x1d1d4, %r8
nop
nop
nop
cmp $23546, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r8)
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1d4d4, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r14), %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x102d4, %rsi
nop
nop
xor $53993, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x3074, %rbp
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x6162, (%rbp)
nop
nop
dec %rdi
lea addresses_A_ht+0x1c08b, %rsi
lea addresses_normal_ht+0x1bbd4, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $17, %rcx
rep movsq
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x18f06, %rsi
lea addresses_A_ht+0xb6d4, %rdi
clflush (%rsi)
nop
nop
nop
xor $33530, %r13
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $48999, %rax
lea addresses_A_ht+0x17554, %rcx
nop
nop
inc %rsi
mov (%rcx), %bx
nop
nop
nop
nop
xor $56777, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x1b354, %r13
nop
sub $48937, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
and $52833, %rdi

// Store
lea addresses_PSE+0x10f54, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movntdq %xmm7, (%rbx)
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_WC+0x4ed4, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rbx), %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
