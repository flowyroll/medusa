.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8550, %r15
nop
nop
nop
sub $55203, %r10
mov (%r15), %r9w
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x14788, %rsi
lea addresses_WC_ht+0x1e090, %rdi
nop
and $40393, %r12
mov $6, %rcx
rep movsb
nop
and %rbx, %rbx
lea addresses_A_ht+0x1078, %rsi
nop
cmp $63, %r15
mov (%rsi), %di
add %r10, %r10
lea addresses_UC_ht+0x8cf6, %rcx
nop
xor $44035, %r12
mov (%rcx), %si
nop
nop
nop
nop
nop
and $23633, %r9
lea addresses_D_ht+0x16b10, %rbx
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x13a70, %rdi
nop
nop
nop
nop
cmp $35986, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
add $15765, %r15
lea addresses_A_ht+0x15350, %r15
inc %rbx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and $45853, %r9
lea addresses_WT_ht+0x14d7c, %r15
nop
nop
and %rsi, %rsi
movb (%r15), %r9b
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x1d950, %rsi
nop
nop
nop
sub $56204, %r9
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
and $55453, %rdi
lea addresses_UC_ht+0xf7d0, %rcx
nop
nop
nop
nop
nop
add $41735, %rdi
mov (%rcx), %r10
nop
nop
nop
xor $8459, %rbx
lea addresses_UC_ht+0x5750, %rdi
nop
nop
nop
add $55164, %r9
movb (%rdi), %cl
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0xdd50, %rcx
nop
nop
nop
sub $29517, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add $20160, %r14

// Store
lea addresses_WC+0x11410, %r10
clflush (%r10)
nop
nop
nop
nop
add $27291, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
and $0xffffffffffffffc0, %r10
vmovntdq %ymm4, (%r10)
nop
nop
sub $3554, %rcx

// Store
mov $0xd50, %r14
nop
nop
nop
nop
nop
add $42558, %r10
movl $0x51525354, (%r14)
nop
nop
dec %rdi

// Store
lea addresses_US+0x1a59d, %rdi
nop
sub %r11, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x6310, %rdi
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%rdi)
nop
nop
dec %rbp

// Load
mov $0xb50, %r14
xor $62957, %r10
mov (%r14), %edi

// Exception!!!
nop
mov (0), %rax
nop
nop
inc %r11

// Store
mov $0xb90, %r14
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%r14)
inc %rax

// Store
lea addresses_RW+0x4ec4, %r14
and $2463, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r14)
nop
nop
inc %r10

// Store
lea addresses_WT+0xe93a, %r10
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x9b50, %rcx
nop
nop
nop
xor $35885, %rdi
vmovntdqa (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'44': 1}
44
*/
