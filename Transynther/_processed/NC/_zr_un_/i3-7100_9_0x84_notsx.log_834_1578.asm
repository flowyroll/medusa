.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9c0b, %rsi
lea addresses_WT_ht+0xeb8b, %rdi
nop
nop
nop
sub %r13, %r13
mov $1, %rcx
rep movsq
nop
nop
nop
nop
cmp $12961, %rbp
lea addresses_WT_ht+0xbb8b, %r14
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r14), %rsi
nop
nop
nop
sub $43772, %rbp
lea addresses_WC_ht+0x91ef, %r13
clflush (%r13)
nop
add $10048, %rbp
movb (%r13), %r14b
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x119b, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xf937, %rsi
nop
nop
nop
cmp $40253, %rbx
movl $0x61626364, (%rsi)
nop
inc %rbp
lea addresses_A_ht+0x2acb, %rsi
lea addresses_normal_ht+0x520c, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $46, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_normal_ht+0x118b, %rcx
clflush (%rcx)
cmp $24102, %rdi
mov (%rcx), %rbp
nop
nop
nop
nop
nop
xor $37600, %rbp
lea addresses_UC_ht+0x1898b, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
xor $55562, %rcx
lea addresses_UC_ht+0x11e73, %r13
nop
nop
and %rbp, %rbp
movb $0x61, (%r13)
nop
inc %rbp
lea addresses_D_ht+0x15c34, %rsi
lea addresses_D_ht+0xfb37, %rdi
nop
xor $23199, %r14
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
add $31634, %rsi
lea addresses_D_ht+0x798b, %rdi
lfence
mov (%rdi), %r14d
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1cbf7, %r14
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%r14)
nop
cmp $29764, %r13
lea addresses_normal_ht+0x1ac0b, %r13
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r13)
nop
nop
nop
add $17737, %rcx
lea addresses_WC_ht+0x16f27, %rbp
nop
sub $8441, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
add $98, %rdi
lea addresses_normal_ht+0x1a18b, %r14
nop
nop
nop
nop
dec %rbp
movb (%r14), %r13b
nop
nop
nop
nop
nop
cmp $26822, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx

// Store
mov $0x6f74de000000018b, %r15
nop
nop
nop
nop
xor $64972, %rcx
movb $0x51, (%r15)

// Exception!!!
nop
nop
nop
mov (0), %r14
nop
nop
nop
and %r15, %r15

// Store
mov $0x10f, %r14
nop
nop
nop
nop
nop
add $55124, %rdx
movb $0x51, (%r14)
nop
xor $12526, %r14

// Store
mov $0x2381fa00000008cb, %rdi
nop
nop
nop
dec %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_PSE+0x1d9ab, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov (%rdi), %r10d
nop
and $46568, %rdx

// Faulty Load
mov $0x6f74de000000018b, %rdx
nop
nop
nop
nop
inc %r12
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'f3': 2, 'f1': 11, 'fa': 7, '00': 810, 'ff': 3, '2b': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2b 00 00 00 fa 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fa 00 00 00 00 00 00 00 00 00 00 00 00 f1 00 00 00 f1 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f1 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f1 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f1 00 00 00 00 f1 00 f1 f1 00 00 00 f1 00 00 f1 00 00 00 00 00 00 00 00 f1 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
