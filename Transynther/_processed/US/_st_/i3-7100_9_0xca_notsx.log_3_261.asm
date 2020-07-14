.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x171bd, %r13
nop
nop
nop
and %r9, %r9
mov (%r13), %r14d
nop
nop
nop
xor $7473, %rdi
lea addresses_D_ht+0xedbd, %r10
and $57632, %rax
movl $0x61626364, (%r10)
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x66bd, %r10
clflush (%r10)
nop
nop
nop
inc %rdx
movb (%r10), %r13b
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0xbe9d, %rsi
lea addresses_A_ht+0x793d, %rdi
nop
xor %r13, %r13
mov $27, %rcx
rep movsq
nop
nop
nop
add $56397, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x178bd, %rax
inc %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rax)
xor %rbp, %rbp

// Store
lea addresses_A+0xff55, %rsi
clflush (%rsi)
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
dec %rbp

// Store
mov $0x26b80500000001bd, %rax
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rax)
nop
add $18536, %rsi

// Store
lea addresses_PSE+0x1c63d, %r8
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
xor $26489, %rbp

// Load
lea addresses_A+0x153d, %r10
nop
nop
nop
nop
and $1908, %rdi
mov (%r10), %dx
nop
nop
add $12107, %r10

// Store
lea addresses_RW+0x11d55, %rdi
clflush (%rdi)
xor $51235, %r8
movw $0x5152, (%rdi)
and $30206, %rax

// Store
lea addresses_A+0x4fbd, %rsi
nop
nop
add %r8, %r8
movb $0x51, (%rsi)
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_US+0xb1bd, %rdi
clflush (%rdi)
nop
nop
nop
sub $25621, %r10
movb (%rdi), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'51': 3}
51 51 51
*/
