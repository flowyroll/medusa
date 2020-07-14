.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1beb3, %rcx
nop
inc %rsi
mov (%rcx), %rax
nop
nop
nop
nop
add $63057, %r14
lea addresses_UC_ht+0x1ae0b, %rdx
nop
sub $7817, %rsi
mov (%rdx), %r13
nop
nop
nop
nop
nop
add $33192, %rcx
lea addresses_A_ht+0x1ba93, %rsi
lea addresses_UC_ht+0xcbd3, %rdi
clflush (%rdi)
xor %r13, %r13
mov $127, %rcx
rep movsw
nop
xor $52627, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x42f3, %rsi
lea addresses_A+0xca13, %rdi
clflush (%rdi)
nop
nop
nop
inc %rbx
mov $101, %rcx
rep movsq
sub %rbx, %rbx

// REPMOV
lea addresses_WC+0xd167, %rsi
mov $0x1db3c60000000473, %rdi
nop
nop
nop
nop
dec %r12
mov $97, %rcx
rep movsw
nop
nop
nop
nop
add $58291, %rsi

// Store
mov $0x55c8ca0000000c93, %rdi
nop
nop
nop
nop
nop
and $54604, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdi)
sub %r12, %r12

// Faulty Load
lea addresses_normal+0x1c093, %rsi
nop
nop
nop
nop
nop
add $42145, %r11
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'34': 62}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
