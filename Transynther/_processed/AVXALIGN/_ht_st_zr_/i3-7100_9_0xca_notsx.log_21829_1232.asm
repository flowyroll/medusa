.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ccd8, %rsi
lea addresses_WC_ht+0xc182, %rdi
nop
nop
nop
xor %rax, %rax
mov $96, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_WC_ht+0xe482, %r8
nop
and %r15, %r15
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x101a2, %r8
nop
nop
and %rsi, %rsi
mov (%r8), %r15w
nop
nop
add $59723, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1dc62, %rdx
nop
nop
nop
nop
nop
xor $60391, %r15
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x1cd82, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_RW+0x1b872, %rsi
lea addresses_A+0x17502, %rdi
clflush (%rdi)
nop
nop
xor %rbx, %rbx
mov $108, %rcx
rep movsq
xor $34646, %rbx

// Load
lea addresses_US+0x6f82, %r15
and $10096, %rax
mov (%r15), %rdi
nop
nop
nop
xor $47596, %rdi

// Store
lea addresses_PSE+0xe82, %rsi
sub %rbx, %rbx
movb $0x51, (%rsi)
and $34921, %rcx

// Faulty Load
lea addresses_US+0x3082, %rdi
cmp %rbx, %rbx
movaps (%rdi), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 20957, '00': 3, '49': 869}
32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 49 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 49 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 49 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 49 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 49 49 32 32 32 32 32
*/
