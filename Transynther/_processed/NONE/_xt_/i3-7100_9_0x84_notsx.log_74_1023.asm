.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19b6a, %rsi
lea addresses_D_ht+0x18886, %rdi
nop
nop
nop
cmp %r9, %r9
mov $86, %rcx
rep movsl
nop
and %r10, %r10
lea addresses_WT_ht+0x93ea, %rdx
nop
nop
sub %rbp, %rbp
mov (%rdx), %r10w
nop
nop
nop
nop
sub $19664, %r9
lea addresses_normal_ht+0x67ea, %rsi
lea addresses_normal_ht+0x73ea, %rdi
nop
nop
sub %r11, %r11
mov $105, %rcx
rep movsq
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0xc6a, %rsi
dec %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovaps %ymm0, (%rsi)
dec %rbp

// Store
lea addresses_A+0x3cea, %r14
sub %rbx, %rbx
movb $0x51, (%r14)
add $29040, %rbx

// Store
lea addresses_US+0xdf58, %r12
nop
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%r12)
nop
nop
nop
sub $50130, %rbx

// Store
lea addresses_WC+0x177ea, %r15
nop
nop
nop
nop
nop
and $33802, %r12
movb $0x51, (%r15)
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_D+0x193ea, %rbx
xor $61005, %r14
mov (%rbx), %bp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'36': 74}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
