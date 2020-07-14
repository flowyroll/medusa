.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14741, %rax
nop
nop
add $26350, %rdx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm7
vpextrq $1, %xmm7, %r10
xor $53950, %r14
lea addresses_A_ht+0x10d21, %rbp
nop
nop
cmp %rcx, %rcx
mov (%rbp), %r14w
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x181ed, %rsi
lea addresses_UC_ht+0xf49b, %rdi
xor %r14, %r14
mov $44, %rcx
rep movsl
nop
nop
nop
cmp $62950, %rdx
lea addresses_WC_ht+0x6781, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
nop
and $58193, %rax
lea addresses_UC_ht+0x1abb1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $18513, %rbp
movb $0x61, (%rdi)
dec %rbp
lea addresses_WC_ht+0xd41, %r14
nop
nop
nop
xor %rsi, %rsi
mov (%r14), %di
add $46875, %rdi
lea addresses_A_ht+0x8b51, %rsi
lea addresses_WT_ht+0xd141, %rdi
nop
nop
xor %rdx, %rdx
mov $91, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x17141, %rsi
lea addresses_WT_ht+0x1c499, %rdi
nop
nop
nop
nop
mfence
mov $127, %rcx
rep movsl
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xc601, %r14
nop
nop
nop
nop
nop
sub $28541, %rsi
movw $0x6162, (%r14)
nop
inc %rax
lea addresses_A_ht+0x13fe1, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x9d91, %rsi
lea addresses_normal_ht+0x1e091, %rdi
xor %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Load
mov $0x47a4ca0000000441, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
movb (%rsi), %r15b
add $9123, %r10

// Load
lea addresses_WC+0x75aa, %rbp
nop
add $5977, %rdx
movb (%rbp), %r12b

// Exception!!!
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x6dd7bd0000000141, %rdx
nop
nop
nop
cmp $56677, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
xor $42480, %r15

// Store
lea addresses_D+0x3d41, %r15
nop
nop
nop
nop
nop
cmp $3767, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_UC+0x1e311, %rsi
dec %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rsi)
xor %r10, %r10

// Store
lea addresses_RW+0x1761, %rdx
inc %r10
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor $36324, %r15

// Store
lea addresses_US+0x10241, %rsi
nop
and $38135, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rsi)

// Exception!!!
nop
nop
nop
mov (0), %r10
inc %rbp

// Faulty Load
mov $0x6dd7bd0000000141, %r10
and $14826, %rsi
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'45': 4168, '00': 1354}
45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 00 00 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 45 45 45 00 00 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 00 00 00 45 00 45 00 45 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 00 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 00 45 00 45 45 45 00 00 45 45 45 45 45 45 00 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 00 00 00 45 45 45 00 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 00 00 45 45 00 45 45 00 00 45 00 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 00 00 00 45 00 45 00 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 00 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 45 00 45 00 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 00 45 45 45 45 45 45 00 00 45 00 45 00 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 00 45 00 00 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 00 00 00 45 45 45 45 00 00 00 45 00 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 00 00 45 45 00 45 45 45 45 00 00 45 45 00 45 45 00 00 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 00 00
*/
