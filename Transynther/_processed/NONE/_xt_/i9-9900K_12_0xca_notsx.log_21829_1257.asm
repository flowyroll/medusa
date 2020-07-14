.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x13e05, %r13
nop
nop
nop
nop
inc %rdx
movb $0x61, (%r13)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x79fd, %rsi
nop
nop
nop
xor %r8, %r8
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
cmp $40482, %rdx
lea addresses_A_ht+0x15f05, %rsi
lea addresses_WC_ht+0x873d, %rdi
xor %r13, %r13
mov $107, %rcx
rep movsw
add %rdx, %rdx
lea addresses_WT_ht+0x1d405, %r15
sub $36507, %rdi
movb (%r15), %r14b
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1eb7, %rsi
lea addresses_D_ht+0x138ab, %rdi
clflush (%rdi)
nop
nop
sub %rdx, %rdx
mov $78, %rcx
rep movsl
nop
inc %r8
lea addresses_UC_ht+0x14105, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %r15
inc %rcx
lea addresses_normal_ht+0x13285, %r14
nop
nop
nop
and %r12, %r12
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x19315, %r12
nop
nop
nop
and $18937, %rdx
movb (%r12), %r8b
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0xa755, %r8
nop
nop
nop
nop
cmp $38266, %r14
mov (%r8), %si
nop
nop
cmp $9976, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_A+0x11f21, %r9
dec %r10
movb $0x51, (%r9)
nop
nop
add $47016, %rbx

// Store
lea addresses_A+0xd685, %r9
nop
sub $61829, %rax
movl $0x51525354, (%r9)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0xd205, %rsi
sub $63372, %rax
movl $0x51525354, (%rsi)
nop
nop
cmp %rbx, %rbx

// Store
mov $0x385, %r14
nop
nop
nop
add $63023, %rbx
movw $0x5152, (%r14)
cmp $59411, %r10

// Store
lea addresses_UC+0x16c05, %r10
cmp %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_WT+0x4d5, %r9
nop
and $16435, %r10
mov (%r9), %r14d
nop
nop
nop
nop
add $12990, %r9

// Store
lea addresses_D+0x2475, %r14
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r14)
sub $36608, %rsi

// Store
mov $0x19a46a0000000605, %rbx
nop
cmp %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
and $5032, %rax

// Store
lea addresses_US+0x1c1ad, %rbx
nop
inc %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovaps %ymm6, (%rbx)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x9a05, %r15
nop
and $43183, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_A+0x199d5, %rsi
nop
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rsi)
cmp $44682, %rbx

// Faulty Load
lea addresses_PSE+0xd205, %rax
clflush (%rax)
inc %rbx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
