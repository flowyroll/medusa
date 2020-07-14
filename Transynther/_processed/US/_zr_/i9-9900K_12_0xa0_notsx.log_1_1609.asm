.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x44f9, %rdi
clflush (%rdi)
nop
add %r9, %r9
mov (%rdi), %bp
nop
inc %rbp
lea addresses_WT_ht+0x2f6f, %rsi
lea addresses_WT_ht+0x19343, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $20, %rcx
rep movsw
and $58644, %rbp
lea addresses_normal_ht+0x64f9, %rsi
lea addresses_normal_ht+0x1c8f9, %rdi
nop
nop
nop
and %r14, %r14
mov $83, %rcx
rep movsb
nop
nop
lfence
lea addresses_WC_ht+0xd2b9, %r9
nop
nop
nop
add $62525, %rsi
mov (%r9), %rcx
sub %rsi, %rsi
lea addresses_normal_ht+0x1d8f9, %r9
nop
nop
nop
nop
nop
inc %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
nop
sub $10917, %rdx
lea addresses_WC_ht+0x4139, %r9
inc %rbp
mov (%r9), %ecx
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x14c89, %rsi
lea addresses_WC_ht+0x138a9, %rdi
nop
nop
nop
xor %r12, %r12
mov $18, %rcx
rep movsl
cmp %r9, %r9
lea addresses_WC_ht+0x16bf9, %rsi
lea addresses_normal_ht+0x1c0f9, %rdi
clflush (%rdi)
nop
nop
xor %r9, %r9
mov $26, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xc0f9, %rcx
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rcx)
add $35697, %r9
lea addresses_D_ht+0x13bf9, %rsi
lea addresses_normal_ht+0x4191, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $116, %rcx
rep movsq
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x18ca3, %r10
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_A+0x1ffd9, %r9
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0xc0f9, %rax
nop
nop
nop
and $3848, %r14
mov (%rax), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
