.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x180fa, %r12
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x188ac, %rsi
lea addresses_WT_ht+0x3fac, %rdi
nop
cmp $45985, %rax
mov $45, %rcx
rep movsq
sub $15275, %r10
lea addresses_D_ht+0x70ac, %rax
clflush (%rax)
nop
nop
nop
mfence
movw $0x6162, (%rax)
nop
nop
nop
sub $34683, %rcx
lea addresses_WC_ht+0x32ac, %rax
clflush (%rax)
nop
nop
nop
nop
inc %rdx
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x14eac, %rsi
xor %rdx, %rdx
mov (%rsi), %r14w
inc %rsi
lea addresses_D_ht+0x12a2c, %rcx
nop
nop
nop
nop
and $24400, %r10
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x1a6ac, %rdx
nop
and %rdi, %rdi
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
and $55078, %r14
lea addresses_A_ht+0x14ee4, %rdx
nop
xor $8455, %rsi
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1e58c, %rsi
lea addresses_WC_ht+0xd6dc, %rdi
xor %r10, %r10
mov $20, %rcx
rep movsl
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0xd0ac, %rsi
lea addresses_WC_ht+0x1e5ac, %rdi
nop
add $39772, %rax
mov $77, %rcx
rep movsq
nop
nop
nop
nop
xor $58008, %rsi
lea addresses_UC_ht+0x12aac, %rsi
lea addresses_A_ht+0x17a3a, %rdi
clflush (%rdi)
nop
sub $24252, %r14
mov $68, %rcx
rep movsq
cmp %r12, %r12
lea addresses_WC_ht+0x1782c, %rsi
lea addresses_WC_ht+0x174db, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $53, %rcx
rep movsw
nop
nop
nop
nop
sub $11811, %rcx
lea addresses_D_ht+0xbb29, %r14
nop
nop
nop
nop
and %rdx, %rdx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rdi
dec %rsi
lea addresses_D_ht+0xa90c, %rsi
lea addresses_A_ht+0x114ac, %rdi
sub $60956, %r14
mov $50, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $6275, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0xa4ac, %rsi
nop
nop
and %rdx, %rdx
mov (%rsi), %r13d
nop
nop
nop
nop
nop
and $62190, %rcx

// Store
lea addresses_WT+0x78ac, %r13
nop
xor $44284, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
and $24296, %rcx

// Store
lea addresses_normal+0x236c, %r13
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r13)
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x12ec, %rbp
clflush (%rbp)
sub $32127, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
add $38331, %rcx

// Store
lea addresses_A+0x25ac, %rdi
clflush (%rdi)
nop
nop
nop
cmp $12829, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
dec %r10

// Store
lea addresses_A+0x1b2cc, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
nop
and $31176, %rdx

// REPMOV
lea addresses_WC+0x18dab, %rsi
lea addresses_A+0x14858, %rdi
xor $52936, %r12
mov $53, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi

// Load
lea addresses_US+0x22ac, %rsi
nop
and $9915, %rcx
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r12

// Exception!!!
xor %rcx, %rcx
div %rcx
nop
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_WT+0x78ac, %r10
nop
nop
nop
nop
nop
xor $59719, %r13
movb (%r10), %cl
and %rdi, %rdi

// Faulty Load
lea addresses_WT+0x78ac, %r13
nop
nop
and $9162, %rcx
movb (%r13), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'6b': 1}
6b
*/
