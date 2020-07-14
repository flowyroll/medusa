.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x17d0, %rsi
lea addresses_A_ht+0xb6a0, %rdi
and $26565, %rdx
mov $108, %rcx
rep movsw
nop
nop
dec %rbp
lea addresses_WT_ht+0xc59a, %rsi
lea addresses_normal_ht+0x2030, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $92, %rcx
rep movsw
add %rdi, %rdi
lea addresses_normal_ht+0x188b0, %rsi
lea addresses_A_ht+0xc8ec, %rdi
nop
nop
nop
sub $22821, %r14
mov $84, %rcx
rep movsw
add $17767, %rbp
lea addresses_A_ht+0xe743, %rbp
clflush (%rbp)
xor $48398, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rbp
movaps %xmm0, (%rbp)
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0xeb0, %r13
nop
nop
nop
nop
nop
sub $32639, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_D+0x6f1b, %rsi
lea addresses_PSE+0xf5e8, %rdi
nop
nop
sub $19616, %rbp
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x9b0, %r10
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
xor $57888, %r10

// Faulty Load
lea addresses_D+0xa8b0, %rax
nop
nop
nop
nop
inc %rcx
mov (%rax), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'36': 14}
36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
