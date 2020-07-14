.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x81ea, %r9
nop
cmp $13377, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r9)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x6022, %rdx
nop
cmp %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rdx)
nop
add $35974, %r15
lea addresses_WT_ht+0x1eea0, %rbp
nop
add $35676, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
inc %r9
lea addresses_WC_ht+0x8f62, %r9
clflush (%r9)
nop
nop
nop
nop
sub $37706, %rbp
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
and $5781, %rsi
lea addresses_WC_ht+0x1d62, %rbp
clflush (%rbp)
nop
cmp %rdx, %rdx
movw $0x6162, (%rbp)
nop
nop
xor $63129, %rbp
lea addresses_normal_ht+0xa32, %r9
nop
and $41166, %rsi
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
xor %r15, %r15
lea addresses_WC_ht+0xfbd5, %rsi
lea addresses_A_ht+0x12e02, %rdi
nop
nop
nop
add %r8, %r8
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $8497, %r9
lea addresses_WT_ht+0x6862, %rcx
xor $23820, %r9
movb $0x61, (%rcx)
inc %rcx
lea addresses_normal_ht+0xb1de, %rsi
lea addresses_UC_ht+0x12662, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r8, %r8
mov $23, %rcx
rep movsw
nop
nop
nop
nop
sub $36092, %rsi
lea addresses_A_ht+0x19ec8, %rdi
nop
nop
and $32663, %rsi
movw $0x6162, (%rdi)
xor %rbp, %rbp
pop %rsi
pop %rdx
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
push %r9

// Faulty Load
lea addresses_WT+0x12b62, %r12
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1839, '44': 680}
00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 44 00 44 00 00 00 00 00 44 44 44 44 44 00 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 44 00 44 44 00 00 00 00 00 00 44 44 00 44 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 44 44 44 44 44 00 00 00 44 00 00 44 00 44 44 44 44 00 00 00 44 44 00 00 00 44 44 44 44 44 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 44 44 44 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 44 44 44 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 44 44 00 44 44 44 44 44 00 00 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 44 44 44 00 00 00 00 00 44 44 00 00 00 00 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 44 44 44 44 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 44 00 00 00 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 44 00 44 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 44 00 00 44 44 44 44 44 00 00 44 00 00 00 00 00 44 00 00 44 44 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
