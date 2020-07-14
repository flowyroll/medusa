.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18990, %r10
nop
sub $57680, %r8
mov (%r10), %r14d
nop
and %rcx, %rcx
lea addresses_normal_ht+0x336e, %rsi
lea addresses_D_ht+0x1b190, %rdi
nop
nop
nop
nop
nop
add $35184, %r12
mov $108, %rcx
rep movsb
xor %rcx, %rcx
lea addresses_normal_ht+0x17486, %r8
nop
nop
nop
nop
nop
and %r12, %r12
mov (%r8), %ecx
nop
nop
nop
and $40680, %r8
lea addresses_A_ht+0x10f68, %rsi
lea addresses_A_ht+0x101c4, %rdi
nop
nop
add %r10, %r10
mov $12, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_WC_ht+0x1c326, %rdi
nop
nop
nop
xor $21174, %rsi
mov (%rdi), %r14d
nop
nop
nop
nop
cmp $50028, %r8
lea addresses_WT_ht+0x7be8, %rdi
nop
nop
inc %r12
movw $0x6162, (%rdi)
nop
nop
cmp $15040, %rcx
lea addresses_A_ht+0x1cf68, %rsi
lea addresses_WT_ht+0xede8, %rdi
nop
nop
cmp $3046, %r11
mov $99, %rcx
rep movsb
nop
nop
add %r11, %r11
lea addresses_D_ht+0xf168, %rdi
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rdi)
cmp %r8, %r8
lea addresses_A_ht+0x10a12, %rsi
lea addresses_WC_ht+0x4058, %rdi
nop
nop
nop
nop
nop
mfence
mov $99, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x1c068, %r11
clflush (%r11)
nop
nop
nop
inc %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
cmp $22285, %r12
lea addresses_WT_ht+0x1e368, %rcx
nop
nop
nop
nop
nop
dec %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub $10318, %r11
lea addresses_D_ht+0x9da8, %rsi
lea addresses_D_ht+0x111e0, %rdi
sub %r12, %r12
mov $52, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Load
mov $0x53bb940000000098, %rbp
nop
nop
xor $24790, %r14
movntdqa (%rbp), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x1ed68, %r15
nop
nop
nop
nop
and $10348, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
and $47577, %r10

// Load
lea addresses_WC+0x5268, %r10
nop
nop
and $16781, %rbp
movups (%r10), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0x45e8, %r10
sub $60328, %r15
movb $0x51, (%r10)

// Exception!!!
mov (0), %rbp
nop
nop
nop
nop
nop
add $65372, %r8

// Faulty Load
lea addresses_US+0xff68, %rbp
nop
xor $35597, %r14
mov (%rbp), %r15w
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'00': 325}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
