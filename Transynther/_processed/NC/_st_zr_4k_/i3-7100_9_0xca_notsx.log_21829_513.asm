.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2bc4, %r8
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r8)
and %rcx, %rcx
lea addresses_D_ht+0x11f10, %rsi
add $18945, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0xf498, %r10
nop
nop
nop
nop
nop
and $59497, %r12
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0xec54, %rdx
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
and $21111, %r13

// Load
mov $0xb84, %r8
nop
nop
and $22372, %r9
mov (%r8), %cx
nop
nop
inc %r8

// Store
lea addresses_normal+0x13284, %rcx
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rcx)
nop
nop
dec %rdx

// Load
lea addresses_RW+0x11164, %r9
sub %r8, %r8
mov (%r9), %edi
nop
nop
nop
nop
cmp $48844, %rdi

// Store
lea addresses_D+0x16844, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
movw $0x5152, (%rdi)
nop
add %rdx, %rdx

// Load
lea addresses_UC+0x17011, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r9
add %rdi, %rdi

// Store
lea addresses_PSE+0xb16c, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
add $58816, %rdx

// Faulty Load
mov $0x339f7e0000000284, %r9
clflush (%r9)
nop
nop
sub %r13, %r13
mov (%r9), %ecx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 11641, '52': 10188}
52 52 00 52 52 52 52 52 52 00 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 00 52 52 00 52 00 00 00 52 52 52 00 52 00 52 52 52 52 00 52 52 00 00 00 52 00 52 00 00 00 00 00 00 52 52 00 00 52 52 52 52 00 00 00 52 00 52 00 52 00 52 00 00 52 00 52 52 00 52 00 52 00 00 52 00 00 00 52 00 00 00 52 52 52 00 52 52 52 52 52 00 52 00 00 00 52 52 00 00 52 00 00 52 00 52 00 52 52 52 00 52 52 52 52 00 52 52 00 52 00 52 52 00 00 00 00 52 52 00 00 52 52 52 00 00 52 52 52 52 52 52 00 52 52 00 00 52 00 52 00 00 52 00 00 52 00 00 52 52 52 00 00 00 52 00 00 52 52 52 00 00 00 52 00 00 52 00 52 52 00 00 00 52 00 00 52 00 00 52 52 00 00 52 00 00 00 00 00 52 52 52 52 00 52 00 52 00 52 52 00 00 00 00 52 00 52 52 00 52 00 52 00 00 00 00 52 52 00 00 52 00 00 52 52 52 52 52 52 00 00 00 52 52 00 52 00 52 00 52 00 00 52 00 52 00 52 00 00 00 00 00 00 52 52 52 00 00 00 52 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 00 00 52 00 00 52 52 52 52 00 00 52 52 52 00 52 52 52 00 00 00 52 00 00 00 52 52 00 52 00 52 00 00 52 00 00 00 52 00 00 00 00 00 52 00 52 52 00 52 00 52 00 00 52 00 00 52 52 52 00 52 00 52 00 52 52 52 00 00 00 52 52 00 52 52 00 52 52 52 52 00 52 00 00 00 52 00 00 52 00 52 00 52 52 52 52 00 00 52 52 00 00 00 00 00 52 00 00 00 00 52 52 52 00 52 00 52 52 52 52 52 00 00 52 00 52 52 00 52 52 00 52 52 52 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 00 52 00 00 52 00 52 52 52 00 00 00 52 52 52 00 52 52 52 00 52 00 00 00 00 52 00 00 00 52 00 00 52 52 00 52 00 00 52 00 00 00 52 00 52 00 52 52 52 52 00 00 52 00 52 00 52 52 52 52 52 00 52 00 52 52 00 52 52 52 00 52 52 00 52 00 00 52 00 00 00 52 00 52 00 52 00 00 52 00 00 52 00 52 52 52 52 52 00 00 52 00 00 00 52 00 52 00 52 00 00 00 00 00 00 00 52 52 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 52 52 52 52 00 00 00 00 00 00 52 00 00 52 52 52 00 00 00 00 00 00 52 52 52 52 52 52 52 00 52 00 00 00 00 52 00 00 00 00 52 00 52 00 00 00 00 00 00 00 52 52 52 52 00 52 00 00 52 52 00 00 52 52 52 52 00 52 52 00 00 00 52 52 00 00 52 00 00 52 52 52 52 52 00 52 52 52 00 00 00 52 52 00 52 00 52 00 00 52 52 00 52 52 52 52 00 00 00 52 52 00 52 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 00 00 00 00 00 00 52 00 52 00 00 00 52 52 52 00 00 00 00 52 52 52 52 52 00 00 52 00 52 52 52 52 52 00 00 00 00 00 52 00 52 00 00 52 00 52 52 00 00 00 00 52 52 00 52 00 00 52 52 52 00 00 00 00 52 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 52 52 52 00 00 00 52 52 52 52 52 52 00 00 52 52 52 00 00 52 00 52 00 00 00 00 52 52 00 00 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 52 00 00 52 00 00 00 52 00 00 52 00 52 52 52 00 00 52 00 00 00 00 52 00 00 52 00 00 00 52 00 00 00 00 00 00 00 52 00 52 52 00 00 52 52 52 00 00 52 00 00 00 00 52 52 52 00 52 00 52 00 52 52 00 00 00 00 00 52 52 00 00 52 00 52 00 00 52 52 00 52 52 00 52 52 52 00 52 52 00 00 52 00 52 52 52 52 00 52 52 52 52 00 52 00 52 52 00 52 52 00 52 52 00 00 00 52 00 00 00 52 00 00 00 52 00 52 00 00 00 00 52 00 52 52 00 52 00 00
*/
