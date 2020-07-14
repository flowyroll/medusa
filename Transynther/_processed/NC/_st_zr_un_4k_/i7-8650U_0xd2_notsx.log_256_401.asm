.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11369, %rsi
lea addresses_D_ht+0x1848b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $45, %rcx
rep movsq
nop
nop
nop
and $50574, %r13
lea addresses_D_ht+0x5e5d, %r10
xor %rsi, %rsi
mov (%r10), %rdi
sub $24197, %r10
lea addresses_A_ht+0x10fb9, %r10
sub %rsi, %rsi
movl $0x61626364, (%r10)
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1e319, %r13
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %r13
vmovaps %ymm6, (%r13)
xor $3076, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0xf979, %r14
nop
nop
and $39351, %r12
movl $0x51525354, (%r14)
nop
sub $37801, %r14

// Store
lea addresses_RW+0x12e19, %r12
cmp %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_RW+0x1a819, %r14
nop
xor $47314, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_UC+0xb1b9, %rbx
and %r15, %r15
movb $0x51, (%rbx)
nop
nop
nop
nop
xor $40181, %rcx

// Faulty Load
mov $0x7131380000000819, %rdx
nop
nop
nop
nop
nop
inc %rbx
mov (%rdx), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 177, '58': 68, 'e0': 11}
00 58 00 00 00 00 00 00 00 58 58 58 58 00 58 58 00 00 00 00 e0 00 58 00 58 58 e0 e0 00 00 00 58 00 00 e0 58 58 58 00 00 00 58 58 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 e0 00 00 e0 00 00 00 00 e0 00 00 00 00 e0 00 00 00 00 00 58 58 58 00 00 58 58 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 e0 00 00 00 58 00 00 58 00 58 00 58 00 00 00 00 58 58 58 58 00 00 58 00 00 00 00 58 58 00 00 00 58 00 00 00 58 e0 58 58 00 58 00 00 00 58 00 00 00 00 00 00 00 58 00 58 00 58 58 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 58 58 58 00 58 00 00 00 00 00 00 58 00 58 00 00 58 e0 58 00 00 00 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 58 00 00
*/
