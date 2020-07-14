.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11241, %r14
nop
nop
nop
nop
xor %r10, %r10
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $62200, %r11
lea addresses_UC_ht+0x714f, %rsi
lea addresses_A_ht+0x1e41, %rdi
clflush (%rdi)
nop
nop
add $41654, %r13
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
and $26969, %rdi
lea addresses_WC_ht+0x12d81, %r10
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%r10)
nop
and $15367, %r14
lea addresses_D_ht+0x1518d, %r10
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x14dc1, %rsi
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x4f, %rsi
nop
nop
nop
and $5720, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x105b1, %rcx
nop
nop
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1b41, %rsi
lea addresses_D_ht+0x6901, %rdi
nop
nop
nop
add $18017, %r12
mov $2, %rcx
rep movsb
cmp $23968, %r10
lea addresses_WT_ht+0x18811, %rsi
lea addresses_WC_ht+0x3699, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $71, %rcx
rep movsb
and $1807, %rdi
lea addresses_D_ht+0x5d81, %rsi
lea addresses_WT_ht+0x1c241, %rdi
clflush (%rsi)
sub %r12, %r12
mov $124, %rcx
rep movsq
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x17e41, %rsi
lea addresses_normal_ht+0xae41, %rdi
nop
nop
nop
cmp %r11, %r11
mov $72, %rcx
rep movsq
nop
xor $6360, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
mov $0x4c180000000008a5, %r12
nop
nop
nop
nop
xor $22568, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r12)
nop
nop
add $40632, %r8

// Store
lea addresses_UC+0x19141, %r14
nop
add %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
nop
nop
nop
sub $52742, %r9

// Store
lea addresses_WT+0x1e241, %r8
nop
nop
nop
nop
cmp $14477, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_A+0x3351, %rbx
clflush (%rbx)
nop
nop
nop
xor %rbp, %rbp
mov (%rbx), %r9
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_WT+0x18641, %r8
nop
sub $33820, %r14
mov (%r8), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'39': 23}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
