.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3dc8, %rsi
lea addresses_normal_ht+0x1d788, %rdi
nop
nop
nop
sub $46912, %r11
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $58189, %rbx
lea addresses_UC_ht+0x1ae38, %r8
clflush (%r8)
nop
nop
nop
nop
sub %r9, %r9
mov (%r8), %edi
xor %rbx, %rbx
lea addresses_WC_ht+0xea08, %rbx
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
cmp $17324, %rbx
lea addresses_WC_ht+0x73c8, %rdi
add %r9, %r9
movw $0x6162, (%rdi)
nop
nop
nop
sub $4154, %rdi
lea addresses_normal_ht+0x8de0, %r11
nop
nop
add $20351, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
xor $2730, %rdi
lea addresses_WT_ht+0x76c8, %rsi
lea addresses_WC_ht+0x19808, %rdi
nop
sub $11872, %rax
mov $73, %rcx
rep movsw
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x53e0, %rsi
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
and $52430, %r8
lea addresses_A_ht+0x18ec8, %rax
xor %r8, %r8
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
xor $20675, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xdfb, %rsi
mov $0x6e500f00000007b2, %rdi
nop
nop
nop
sub %r12, %r12
mov $36, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x13fa8, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r14)
nop
sub $20650, %r12

// Store
lea addresses_WT+0x6ac8, %r15
nop
nop
nop
sub $4217, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
cmp $57932, %rsi

// Faulty Load
mov $0x94f390000000ac8, %r12
sub %rcx, %rcx
movb (%r12), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 2812, 'b0': 185, '58': 89}
00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 00 00 b0 00 00 00 00 00 58 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 b0 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 b0 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 b0 58 00 00 58 00 b0 58 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 58 00 b0 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 b0 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 b0 00 00 00 00 00 00 00 b0 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 b0 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 58 00 00 00 00 00 00 00 00 00 b0 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00
*/
