.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdx
lea addresses_UC_ht+0x19912, %rax
nop
nop
nop
nop
xor $32250, %rcx
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xfb1a, %rbp
nop
nop
nop
nop
nop
sub $57018, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rbp
vmovaps %ymm3, (%rbp)
nop
nop
nop
nop
nop
add $51526, %r8
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xab12, %r15
nop
nop
nop
nop
and $9857, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r15)
nop
xor $61554, %r15

// Store
lea addresses_normal+0x6e12, %r13
xor %r12, %r12
movw $0x5152, (%r13)
nop
sub $20432, %r13

// REPMOV
lea addresses_RW+0xe112, %rsi
lea addresses_PSE+0x16168, %rdi
xor $62442, %r12
mov $35, %rcx
rep movsb
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0xdb10, %rdi
nop
add %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x15112, %rcx
nop
sub $36992, %r15
movw $0x5152, (%rcx)
nop
nop
and %r12, %r12

// Store
lea addresses_WT+0x10132, %r12
nop
cmp $50694, %r13
movb $0x51, (%r12)
nop
nop
cmp $25835, %r13

// Store
mov $0x40f8ee0000000e52, %rbp
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%rbp)
add $58867, %rcx

// Store
lea addresses_UC+0x1dd65, %rdi
cmp $37739, %r13
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
cmp $55613, %rdi

// Store
mov $0xf84030000000912, %rax
nop
xor $60208, %rcx
movb $0x51, (%rax)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x26b6, %r13
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r13)
cmp %rbp, %rbp

// Load
lea addresses_UC+0x15112, %r15
nop
nop
nop
cmp %rax, %rax
movups (%r15), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
cmp $17039, %r15

// Store
lea addresses_UC+0x15112, %r13
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r13)
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_UC+0x15112, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'58': 12}
58 58 58 58 58 58 58 58 58 58 58 58
*/
