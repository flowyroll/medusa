.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x72fd, %rsi
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x1b8bb, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1a83d, %rsi
lea addresses_D_ht+0x158d, %rdi
sub %r13, %r13
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $28667, %rbp
lea addresses_normal_ht+0x13be3, %r13
nop
nop
nop
inc %rax
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r15
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x15e3d, %rbx
add $44292, %r14
movl $0x51525354, (%rbx)
and %r10, %r10

// Store
lea addresses_A+0x196fd, %rcx
nop
dec %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovaps %ymm6, (%rcx)
xor $5116, %rsi

// Store
lea addresses_WC+0xc9e5, %r14
nop
nop
nop
nop
nop
add $22797, %r8
movl $0x51525354, (%r14)
nop
nop
inc %rsi

// Faulty Load
lea addresses_US+0xaafd, %r12
nop
nop
nop
nop
and $33004, %r8
mov (%r12), %r10w
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
