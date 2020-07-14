.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf7b0, %r14
nop
nop
nop
nop
nop
add %r13, %r13
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rbp
nop
dec %rax
lea addresses_WC_ht+0x3664, %rdi
nop
nop
dec %r15
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
sub %r14, %r14
lea addresses_A_ht+0x17b0, %rsi
lea addresses_WC_ht+0xceb0, %rdi
nop
nop
cmp $40315, %r15
mov $32, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x32f0, %rsi
lea addresses_A_ht+0x6e90, %rdi
clflush (%rdi)
nop
nop
and %r15, %r15
mov $88, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_D_ht+0x9080, %rsi
lea addresses_WT_ht+0xfbb0, %rdi
nop
nop
cmp %rbp, %rbp
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x107b0, %rbp
nop
inc %rdi
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
add $50241, %r14
lea addresses_normal_ht+0x127b0, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $36668, %r15
lea addresses_UC_ht+0x173b0, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rbp)
nop
nop
and $20741, %rsi
lea addresses_A_ht+0x1bfb0, %rsi
lea addresses_WC_ht+0x9db8, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $25, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1b380, %rsi
lea addresses_WT_ht+0x114b0, %rdi
xor $57027, %rax
mov $73, %rcx
rep movsq
nop
nop
add $3823, %rax
lea addresses_normal_ht+0xcb30, %rbp
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rbp
movntdq %xmm3, (%rbp)
nop
nop
add $22486, %rax
lea addresses_WC_ht+0xbd90, %rdi
nop
nop
nop
cmp $705, %r15
movb $0x61, (%rdi)
add %r14, %r14
lea addresses_normal_ht+0x1e4fe, %r15
xor %r13, %r13
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1d330, %rsi
lea addresses_WT_ht+0xe7f0, %rdi
nop
nop
nop
nop
dec %r15
mov $1, %rcx
rep movsl
nop
nop
nop
and $16378, %r14
lea addresses_WT_ht+0xe250, %rdi
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
nop
and $6452, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xd7b0, %rdx
xor $2914, %r9
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_normal+0x8870, %rdx
nop
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_A+0x16758, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rdi), %edx
nop
sub %r15, %r15

// Store
lea addresses_D+0x15fb0, %r10
and %r15, %r15
movw $0x5152, (%r10)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0x1e3b0, %r10
nop
nop
xor %rbp, %rbp
movb $0x51, (%r10)
nop
sub $2453, %r10

// Load
lea addresses_normal+0xffb0, %rdx
nop
cmp %rbx, %rbx
movb (%rdx), %r9b
nop
nop
nop
nop
dec %rdx

// REPMOV
lea addresses_A+0xf7b0, %rsi
lea addresses_D+0x9f00, %rdi
xor %rbx, %rbx
mov $119, %rcx
rep movsq
nop
nop
nop
xor $23724, %rbp

// Store
lea addresses_A+0xc608, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub $1582, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
and $236, %r9

// REPMOV
lea addresses_WT+0x109b0, %rsi
lea addresses_PSE+0xc4, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $16, %rcx
rep movsq
and %r10, %r10

// REPMOV
lea addresses_PSE+0x1ad58, %rsi
lea addresses_A+0x1d9f0, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $19, %rcx
rep movsw
nop
nop
nop
sub $41309, %rcx

// Faulty Load
lea addresses_A+0xf7b0, %rbx
nop
nop
cmp $21907, %rdi
mov (%rbx), %r10d
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
