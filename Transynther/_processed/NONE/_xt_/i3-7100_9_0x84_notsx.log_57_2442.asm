.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf8d9, %rbp
nop
nop
nop
sub $28326, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rbp)
nop
inc %r11
lea addresses_A_ht+0xb951, %rcx
nop
nop
nop
add %r12, %r12
movb $0x61, (%rcx)
nop
cmp %r12, %r12
lea addresses_WC_ht+0xb371, %rdx
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x179fb, %rsi
lea addresses_WC_ht+0xa371, %rdi
nop
nop
nop
mfence
mov $2, %rcx
rep movsl
nop
nop
nop
nop
and $48219, %rdi
lea addresses_normal_ht+0x18b71, %r12
nop
nop
nop
nop
nop
dec %r11
mov (%r12), %rsi
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0xa771, %rax
nop
nop
nop
nop
nop
add $42666, %rdi
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x117d9, %rdx
nop
nop
nop
nop
inc %r12
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rdi
nop
dec %rdi
lea addresses_WC_ht+0x101f1, %r12
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
cmp $49601, %rsi
lea addresses_A_ht+0x13871, %rsi
lea addresses_WC_ht+0x19d63, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r10
mov $79, %rcx
rep movsq
nop
nop
nop
xor $52827, %rdi
lea addresses_UC_ht+0xc8f1, %rsi
nop
nop
xor %r10, %r10
mov (%rsi), %r11w
nop
nop
nop
nop
nop
add $16045, %rcx
lea addresses_WT_ht+0x4d71, %rax
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rax)
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x18b71, %rdx
nop
sub %rdi, %rdi
movb (%rdx), %al
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x1eb41, %rsi
lea addresses_normal_ht+0x1c131, %rdi
nop
nop
nop
nop
nop
and $29675, %r12
mov $28, %rcx
rep movsb
nop
nop
and $55501, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdx

// Load
mov $0x76331a0000000311, %r9
nop
inc %r15
mov (%r9), %r14d
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_A+0x8ff1, %r9
dec %r13
movl $0x51525354, (%r9)
nop
dec %rdx

// Store
mov $0x631b4700000001f1, %r14
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_WC+0x17f71, %r14
nop
nop
cmp %r15, %r15
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r13
nop
sub %rdx, %rdx

// Store
lea addresses_normal+0x6d08, %r9
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_PSE+0xcb71, %rdx
xor %r15, %r15
movb (%rdx), %r10b
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'33': 57}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
