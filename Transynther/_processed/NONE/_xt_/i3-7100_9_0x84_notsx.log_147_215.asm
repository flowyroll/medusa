.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9921, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rbp), %rsi
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x19d41, %rdx
clflush (%rdx)
nop
nop
nop
cmp $44640, %r14
movw $0x6162, (%rdx)
nop
nop
nop
add $21561, %r13
lea addresses_D_ht+0x16e81, %r14
nop
nop
nop
sub %rdx, %rdx
mov (%r14), %rbp
xor %r15, %r15
lea addresses_normal_ht+0x1e601, %r14
nop
nop
nop
sub $223, %r15
mov (%r14), %r13d
nop
add $28929, %r15
lea addresses_A_ht+0x17f97, %r15
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r15)
add %r14, %r14
lea addresses_A_ht+0x17e81, %rdx
clflush (%rdx)
nop
add $20474, %r15
movl $0x61626364, (%rdx)
nop
inc %rbp
lea addresses_WT_ht+0xe106, %rsi
lea addresses_WC_ht+0xf481, %rdi
sub %r13, %r13
mov $2, %rcx
rep movsw
nop
inc %r14
lea addresses_WC_ht+0x10101, %rsi
lea addresses_WC_ht+0x12123, %rdi
nop
nop
nop
xor $10363, %r13
mov $78, %rcx
rep movsl
nop
xor %r14, %r14
lea addresses_D_ht+0x1ef95, %rsi
lea addresses_UC_ht+0xed91, %rdi
nop
nop
nop
cmp $42142, %rbx
mov $115, %rcx
rep movsq
nop
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x484e7c0000000d01, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x1c477, %r11
nop
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r11)
dec %r9

// Faulty Load
lea addresses_D+0x18a81, %r14
nop
nop
nop
nop
nop
dec %rdx
movb (%r14), %r10b
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'36': 147}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
