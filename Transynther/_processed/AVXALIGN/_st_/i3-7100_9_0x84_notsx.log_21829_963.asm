.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x78f1, %rsi
lea addresses_D_ht+0x128d1, %rdi
nop
nop
nop
nop
nop
cmp $51511, %rbp
mov $110, %rcx
rep movsq
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x1dca1, %r13
nop
nop
nop
nop
nop
add $2280, %rdi
movb $0x61, (%r13)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x12005, %rdi
nop
nop
nop
nop
nop
and $37128, %r9
movb (%rdi), %cl
cmp %rsi, %rsi
lea addresses_D_ht+0x1949, %rsi
lea addresses_WC_ht+0x178d1, %rdi
nop
nop
nop
nop
nop
sub $29147, %r8
mov $63, %rcx
rep movsw
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0xc0d1, %r15
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
sub $11310, %r9
lea addresses_WC_ht+0x158d1, %r15
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r15)
nop
and $57878, %rcx
lea addresses_A_ht+0x1ed1, %r8
clflush (%r8)
nop
nop
nop
nop
add $49949, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
nop
cmp %r15, %r15
lea addresses_D_ht+0xb9d1, %r13
mfence
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
nop
sub $36348, %r13
lea addresses_UC_ht+0x1b1d1, %rcx
nop
nop
sub %rdi, %rdi
movb (%rcx), %r13b
xor $53578, %rdi
lea addresses_D_ht+0x6d1, %rsi
lea addresses_UC_ht+0x3fa1, %rdi
nop
xor %r15, %r15
mov $48, %rcx
rep movsb
nop
sub $52860, %rcx
lea addresses_UC_ht+0x34d1, %rsi
lea addresses_D_ht+0x1add1, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $56, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x8611, %rcx
nop
nop
xor %rbp, %rbp
mov (%rcx), %esi
nop
nop
nop
nop
nop
xor $14890, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rdx

// Faulty Load
lea addresses_D+0x188d1, %r8
nop
nop
lfence
movb (%r8), %r14b
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
