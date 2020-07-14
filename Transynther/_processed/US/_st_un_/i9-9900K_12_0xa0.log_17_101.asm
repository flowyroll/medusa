.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc3a3, %rsi
lea addresses_D_ht+0x1e263, %rdi
nop
cmp %rbp, %rbp
mov $34, %rcx
rep movsb
nop
inc %rsi
lea addresses_WC_ht+0xa1a3, %r10
nop
add $60806, %r12
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $42838, %r12
lea addresses_UC_ht+0x15ca3, %rsi
lea addresses_WT_ht+0x12923, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $30459, %r15
mov $12, %rcx
rep movsl
nop
nop
nop
nop
sub $4199, %rcx
lea addresses_normal_ht+0x3ee3, %r15
and $40955, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
sub $45170, %rdi
lea addresses_WT_ht+0xdaa3, %r12
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
and $18490, %rbp
lea addresses_WT_ht+0x1b7b3, %r15
nop
nop
sub $50085, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1ad8d, %r12
and $3716, %r15
mov (%r12), %bp
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x490c, %rbp
nop
nop
add %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_RW+0x192a3, %r14
nop
nop
nop
nop
add $21553, %rdi
movw $0x5152, (%r14)
nop
nop
add $2241, %r10

// Store
lea addresses_PSE+0x158d7, %rbp
clflush (%rbp)
nop
nop
nop
add $45390, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
xor $60643, %rbp

// Store
lea addresses_PSE+0x90e3, %rdi
clflush (%rdi)
nop
nop
add $15040, %r14
movb $0x51, (%rdi)
nop
nop
nop
add $25096, %rdx

// Faulty Load
lea addresses_US+0x86a3, %rdx
nop
nop
nop
nop
xor $10194, %rdi
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'bc': 1, '3e': 1, '83': 1, '84': 9, 'e2': 1, 'f0': 1, '7e': 1, '79': 1, '72': 1}
f0 84 3e 84 84 84 79 84 72 e2 84 84 84 7e bc 84 83
*/
