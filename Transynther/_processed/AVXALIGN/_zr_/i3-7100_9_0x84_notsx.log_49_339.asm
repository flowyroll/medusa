.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x12812, %r9
clflush (%r9)
nop
dec %r15
movl $0x61626364, (%r9)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xffa2, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x12922, %rsi
lea addresses_D_ht+0x5192, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $93, %rcx
rep movsq
nop
and $40562, %rsi
lea addresses_WC_ht+0x4812, %rsi
lea addresses_WC_ht+0x19512, %rdi
nop
sub $64374, %rbp
mov $29, %rcx
rep movsw
nop
dec %r9
lea addresses_A_ht+0x31f2, %rsi
lea addresses_A_ht+0x1719c, %rdi
nop
nop
and %rbp, %rbp
mov $102, %rcx
rep movsb
cmp $12138, %r9
lea addresses_WC_ht+0x10592, %rsi
nop
nop
nop
nop
cmp $35317, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
sub $8548, %rdi
lea addresses_WC_ht+0xf51e, %rsi
lea addresses_normal_ht+0x15f92, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $12, %rcx
rep movsw
nop
nop
inc %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdx

// Store
lea addresses_A+0x15a12, %r11
nop
nop
dec %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r11)
xor $31095, %r13

// Faulty Load
lea addresses_US+0x8192, %rdx
nop
nop
nop
nop
nop
add %r15, %r15
mov (%rdx), %r14w
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
