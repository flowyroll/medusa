.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x108dc, %rbx
cmp $33654, %rdx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x183e7, %rsi
lea addresses_WT_ht+0xdb07, %rdi
cmp %rdx, %rdx
mov $14, %rcx
rep movsw
nop
nop
sub $43088, %rdx
lea addresses_normal_ht+0x5f67, %rsi
lea addresses_WC_ht+0x2f67, %rdi
sub $8462, %rax
mov $9, %rcx
rep movsl
sub $61304, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0xebe7, %rax
cmp %r12, %r12
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_A+0x1a7, %r12
xor %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r12)
nop
nop
inc %r15

// Store
lea addresses_PSE+0xdee3, %r12
clflush (%r12)
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
xor $26409, %r12

// Store
mov $0x6fd1b20000000be7, %rbx
add %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
and %r15, %r15

// Store
lea addresses_US+0x2267, %rcx
nop
sub $50296, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
and %r15, %r15

// Load
lea addresses_WC+0x8ee7, %rdx
nop
nop
add %rcx, %rcx
mov (%rdx), %ax
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x7d47, %r15
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_UC+0x43e7, %rax
dec %r12
movb (%rax), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'00': 146}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
