.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa27d, %rbx
nop
nop
nop
xor %rbp, %rbp
mov (%rbx), %r13d
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x155bd, %rsi
lea addresses_A_ht+0x8dbd, %rdi
nop
nop
xor $19829, %r14
mov $79, %rcx
rep movsq
nop
nop
nop
and $54925, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rdx

// Store
lea addresses_PSE+0x1b4fd, %rbp
clflush (%rbp)
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movaps %xmm5, (%rbp)
and %rdx, %rdx

// Store
lea addresses_A+0x1fb04, %r12
nop
nop
nop
nop
nop
sub $35335, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r12)
nop
nop
and $53650, %r13

// Load
lea addresses_A+0x65bd, %rbp
nop
nop
nop
dec %r10
mov (%rbp), %r15
inc %rdx

// Store
lea addresses_D+0x1043d, %r13
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
add $5174, %r10

// Store
lea addresses_D+0x1a8d, %rax
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%rax)
sub %rbp, %rbp

// Store
lea addresses_UC+0xd5bd, %r13
nop
nop
nop
xor $30548, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r13)
sub $24252, %rdx

// Store
lea addresses_WT+0x44e9, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add $12364, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r12)
nop
xor %r15, %r15

// Store
mov $0xcc9, %rdx
nop
xor $19576, %rbp
movw $0x5152, (%rdx)
xor %rax, %rax

// Faulty Load
lea addresses_UC+0xd5bd, %rdx
nop
sub %r15, %r15
mov (%rdx), %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'58': 158}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
