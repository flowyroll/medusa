.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17489, %r10
nop
nop
xor %r12, %r12
mov (%r10), %rdi
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xb828, %r14
nop
xor $56890, %rbp
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x189a9, %r12
nop
nop
nop
sub $17522, %r14
movb $0x61, (%r12)
nop
nop
nop
nop
xor $1682, %rdi
lea addresses_normal_ht+0xc291, %rsi
lea addresses_normal_ht+0xbed9, %rdi
dec %rbp
mov $86, %rcx
rep movsq
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x5d9, %r12
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%r12)
cmp $63949, %rsi
lea addresses_D_ht+0x103b9, %rsi
lea addresses_UC_ht+0x13519, %rdi
sub %r12, %r12
mov $102, %rcx
rep movsw
nop
nop
nop
nop
sub $34430, %rax
lea addresses_normal_ht+0x8859, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r14)
and %rbp, %rbp
lea addresses_A_ht+0x14ed9, %rbp
nop
nop
add $16553, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%rbp)
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1e6d9, %rcx
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%rcx)
nop
nop
and $59322, %rdx

// Store
lea addresses_US+0x12ed9, %rbp
nop
nop
nop
sub $45874, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0x1d829, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_US+0x1c33d, %rdx
nop
nop
nop
nop
xor %r14, %r14
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0xcd32, %r8
nop
xor $47340, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movntdq %xmm7, (%r8)
nop
add %rdi, %rdi

// Store
lea addresses_D+0x131d9, %rdi
nop
nop
nop
nop
nop
sub $13219, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_normal+0x126d9, %rdi
nop
and $12794, %r15
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $16994, %rdx

// Load
lea addresses_normal+0x3569, %rdx
clflush (%rdx)
xor $29894, %rbp
mov (%rdx), %ecx
nop
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_US+0x12ed9, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'58': 1}
58
*/
