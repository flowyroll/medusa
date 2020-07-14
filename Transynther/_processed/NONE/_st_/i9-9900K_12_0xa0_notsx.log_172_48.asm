.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13646, %rsi
lea addresses_A_ht+0x1d1d6, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $126, %rcx
rep movsw
nop
cmp $26745, %r11
lea addresses_normal_ht+0xbb56, %rbp
nop
dec %r11
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r14
nop
cmp $58764, %rcx
lea addresses_A_ht+0x12fe6, %rsi
lea addresses_normal_ht+0x1edd6, %rdi
nop
nop
sub $41536, %rbx
mov $124, %rcx
rep movsl
nop
nop
nop
nop
add $6805, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_RW+0x17016, %r12
clflush (%r12)
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r12)
nop
add $38618, %rax

// Store
lea addresses_RW+0x16356, %rax
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
cmp $1824, %r14

// Store
lea addresses_US+0x4556, %rsi
nop
nop
nop
nop
cmp $30950, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_RW+0x2a86, %r8
nop
sub %r14, %r14
movl $0x51525354, (%r8)
nop
nop
cmp %r12, %r12

// Store
lea addresses_normal+0x11756, %rdx
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdx)
nop
nop
sub $64362, %r14

// Store
mov $0xb6, %rdx
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rdx)
nop
nop
sub $180, %r12

// Faulty Load
lea addresses_A+0x1c756, %r10
inc %r12
mov (%r10), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'58': 172}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
