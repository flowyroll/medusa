.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5bcc, %rsi
lea addresses_UC_ht+0xccf, %rdi
nop
nop
nop
nop
nop
cmp $24300, %rax
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0xcf53, %rsi
lea addresses_D_ht+0x15653, %rdi
clflush (%rsi)
nop
nop
nop
sub %rbp, %rbp
mov $12, %rcx
rep movsb
nop
dec %r12
lea addresses_WC_ht+0x4053, %rcx
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
xor $36354, %rbp
lea addresses_D_ht+0x70d3, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x17273, %rax
nop
sub $18717, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rax)
xor $33748, %rsi
lea addresses_normal_ht+0x12f53, %rax
nop
add $57146, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x81b3, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
cmp $17814, %rsi
lea addresses_A_ht+0xcc53, %rsi
nop
nop
inc %rbp
mov (%rsi), %ecx
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x5253, %rsi
lea addresses_D_ht+0x1e799, %rdi
nop
nop
nop
nop
cmp $36335, %r11
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $52717, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x1284b, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
cmp $7051, %r12

// Store
lea addresses_WC+0x17c2f, %rdx
nop
nop
nop
dec %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0xec2c, %rcx
nop
nop
nop
cmp $8074, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovntdq %ymm5, (%rcx)
add $24007, %r9

// Load
lea addresses_D+0x64d3, %r15
nop
nop
and $30971, %rdx
movb (%r15), %r9b
nop
nop
nop
nop
nop
xor $29135, %rsi

// Store
mov $0x11d48f0000000253, %r9
nop
nop
nop
cmp $50512, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
and $8492, %r15

// Faulty Load
lea addresses_RW+0x1de53, %r15
nop
nop
nop
nop
cmp $34626, %rdx
mov (%r15), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'32': 9}
32 32 32 32 32 32 32 32 32
*/
