.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7d76, %rsi
lea addresses_D_ht+0xfdd0, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $44, %rcx
rep movsl
nop
nop
and $65097, %r8
lea addresses_A_ht+0x125f6, %rax
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rax), %rdi
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x5358, %r15
nop
nop
cmp $26342, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r15)
nop
and $37667, %rdi
lea addresses_WC_ht+0x1ea36, %rsi
lea addresses_D_ht+0x3496, %rdi
nop
xor %rax, %rax
mov $100, %rcx
rep movsl
nop
xor $43318, %r15
lea addresses_A_ht+0x14f76, %rsi
lea addresses_normal_ht+0x115f6, %rdi
nop
nop
sub $65467, %r15
mov $66, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xe5f6, %r12
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r12)
inc %rdi
lea addresses_UC_ht+0xb4f6, %rcx
clflush (%rcx)
nop
nop
sub $19444, %r8
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
sub %r8, %r8
lea addresses_WC_ht+0xe5f6, %r8
nop
inc %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Store
mov $0x5f6, %rsi
clflush (%rsi)
nop
add %rbp, %rbp
movb $0x51, (%rsi)

// Exception!!!
nop
nop
nop
nop
xor %r15, %r15
div %r15
nop
sub $9975, %r11

// Faulty Load
mov $0x5f6, %rbp
nop
nop
nop
and %rax, %rax
mov (%rbp), %r9d
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'00': 1}
00
*/
