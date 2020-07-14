.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x151c6, %rsi
lea addresses_normal_ht+0x1e7eb, %rdi
nop
nop
nop
cmp %r9, %r9
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x13c9e, %r10
nop
sub $4401, %r13
mov (%r10), %si
nop
add %rsi, %rsi
lea addresses_A_ht+0xbb6e, %r13
nop
nop
nop
nop
add $4603, %rdx
movw $0x6162, (%r13)
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x11ace, %rsi
lea addresses_normal_ht+0xc52a, %rdi
nop
nop
cmp %r9, %r9
mov $13, %rcx
rep movsl
nop
cmp $22953, %rdi
lea addresses_A_ht+0x190de, %r10
nop
nop
nop
cmp $19638, %rsi
movw $0x6162, (%r10)
nop
nop
nop
add $64028, %rdx
lea addresses_D_ht+0x1119e, %rsi
lea addresses_WT_ht+0x789e, %rdi
nop
nop
add $28859, %rdx
mov $73, %rcx
rep movsw
and $51785, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Store
mov $0x6194b00000000c9e, %rdx
dec %r13
movb $0x51, (%rdx)
add $13428, %r13

// Store
lea addresses_RW+0x1e89e, %rdx
nop
nop
nop
nop
cmp $55592, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add $61158, %rsi

// Store
mov $0xb0e, %rdx
nop
and $1016, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_RW+0x1e89e, %r15
clflush (%r15)
nop
dec %rsi
mov (%r15), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'58': 237}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
