.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7f3b, %rcx
nop
xor %rdi, %rdi
mov (%rcx), %edx
nop
sub $54361, %r13
lea addresses_WC_ht+0xd8fb, %rsi
lea addresses_normal_ht+0x1e94b, %rdi
nop
sub $45924, %rbp
mov $60, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1427b, %rsi
lea addresses_WC_ht+0x70fb, %rdi
nop
nop
nop
nop
nop
add $16953, %r15
mov $62, %rcx
rep movsw
nop
nop
inc %rdx
lea addresses_UC_ht+0x195fb, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %r13d
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x19c34, %rbp
inc %rdx
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1e0eb, %rcx
nop
dec %rdx
mov (%rcx), %rdi
nop
nop
add $4347, %rsi
lea addresses_A_ht+0x17bb, %rsi
lea addresses_A_ht+0x5cfb, %rdi
dec %r10
mov $75, %rcx
rep movsb
nop
xor %r15, %r15
lea addresses_A_ht+0x6b69, %r15
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x1033b, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
and $33266, %rdi
lea addresses_WC_ht+0xd3fb, %rdx
nop
xor %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0xb107, %rsi
lea addresses_UC_ht+0x902b, %rdi
nop
dec %r15
mov $110, %rcx
rep movsw
and %rdx, %rdx
lea addresses_WC_ht+0x1b6cf, %rsi
lea addresses_WT_ht+0x160fb, %rdi
and $51755, %r13
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1529b, %rcx
nop
nop
nop
and $23115, %rsi
movb (%rcx), %r10b
nop
nop
and %r10, %r10
lea addresses_WT_ht+0xf1d1, %rdx
cmp %r15, %r15
movl $0x61626364, (%rdx)
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x198fb, %rdx
nop
nop
nop
inc %rcx
movw $0x6162, (%rdx)
nop
dec %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x177f, %r13
nop
nop
nop
xor %r9, %r9
movw $0x5152, (%r13)
nop
cmp %r9, %r9

// Load
lea addresses_A+0x1e5bb, %r12
nop
nop
nop
and $58338, %rdx
mov (%r12), %r13w
nop
nop
and $58928, %r12

// Load
lea addresses_PSE+0x74fb, %r15
dec %rbx
movb (%r15), %r13b
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0xc4fb, %r9
nop
nop
add %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x28fb, %r13
nop
and %rbx, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
cmp $40917, %r13

// Store
lea addresses_WC+0x68e7, %rbp
nop
and $49677, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
and $31346, %r13

// Load
lea addresses_PSE+0x30db, %r15
nop
nop
nop
nop
xor %r12, %r12
vmovntdqa (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
cmp %r12, %r12

// Store
lea addresses_RW+0x136db, %r12
inc %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r12)
add $30365, %r13

// Store
lea addresses_WT+0x5811, %r13
nop
nop
nop
nop
add $34731, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_UC+0x2fb, %r12
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r12)
nop
add %r9, %r9

// Store
lea addresses_WC+0x1a3fb, %rdx
nop
nop
nop
nop
cmp $8792, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_PSE+0x28fb, %rbp
nop
nop
nop
nop
and %r12, %r12
mov (%rbp), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC_ht'}}
{'54': 9}
54 54 54 54 54 54 54 54 54
*/
