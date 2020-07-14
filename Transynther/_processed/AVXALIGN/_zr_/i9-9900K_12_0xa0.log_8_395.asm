.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
lea addresses_A_ht+0xe178, %r8
clflush (%r8)
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r8)
nop
nop
dec %r12
lea addresses_WC_ht+0x1a3fe, %r12
nop
nop
nop
and $60089, %rdi
mov (%r12), %r10w
cmp %rax, %rax
lea addresses_D_ht+0xcc26, %r12
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%r12)
sub $8278, %rcx
lea addresses_D_ht+0x3ee6, %r12
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x19e96, %rdi
nop
nop
xor %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
dec %r10
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xd826, %rsi
nop
nop
sub $22261, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x1626, %rdx
mfence
movl $0x51525354, (%rdx)
sub %rdx, %rdx

// Store
mov $0x1a6, %rdx
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdx)
nop
and $17216, %rsi

// Store
mov $0xc8b220000000c66, %rax
nop
nop
nop
nop
add $22665, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%rax)
nop
add $52235, %rbx

// Load
lea addresses_PSE+0x4726, %r9
xor $47821, %r13
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $39833, %r9

// Store
lea addresses_D+0x98a6, %rax
nop
nop
nop
and $52111, %r9
movl $0x51525354, (%rax)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WC+0x7626, %r15
and %rax, %rax
movb $0x51, (%r15)
nop
nop
xor $11431, %rdx

// Load
lea addresses_PSE+0x10de6, %rax
and %rdx, %rdx
mov (%rax), %r13d
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x17c26, %rbx
nop
nop
nop
nop
and $54943, %r9
movb $0x51, (%rbx)
xor $56022, %rbx

// Faulty Load
lea addresses_US+0x5026, %rbx
nop
nop
sub $53426, %rsi
movb (%rbx), %r13b
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
