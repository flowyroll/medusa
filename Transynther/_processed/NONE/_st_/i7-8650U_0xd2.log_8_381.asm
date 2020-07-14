.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1cfc9, %rax
cmp %r9, %r9
movl $0x61626364, (%rax)
nop
nop
nop
and $3143, %rbx
lea addresses_A_ht+0xf2c9, %rsi
lea addresses_A_ht+0x5609, %rdi
nop
nop
nop
dec %r12
mov $118, %rcx
rep movsb
xor $6133, %rdi
lea addresses_A_ht+0x49, %rsi
lea addresses_A_ht+0x615b, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r9, %r9
mov $86, %rcx
rep movsq
lfence
lea addresses_UC_ht+0x3ec9, %rsi
lea addresses_UC_ht+0x82c1, %rdi
nop
inc %rax
mov $125, %rcx
rep movsq
nop
and $44875, %rdi
lea addresses_WC_ht+0x1008d, %rsi
lea addresses_WC_ht+0x14d09, %rdi
nop
nop
cmp %r9, %r9
mov $11, %rcx
rep movsb
nop
dec %r15
lea addresses_WT_ht+0x1c989, %rsi
lea addresses_D_ht+0x1815e, %rdi
nop
nop
dec %r12
mov $102, %rcx
rep movsq
add %rdi, %rdi
lea addresses_UC_ht+0x1bdc9, %rsi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
cmp $25516, %rdi
lea addresses_UC_ht+0x105c9, %rsi
lea addresses_WC_ht+0xe38d, %rdi
nop
nop
nop
nop
add $4262, %rbx
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $14318, %rcx
lea addresses_normal_ht+0x15fc9, %r12
clflush (%r12)
nop
nop
add $12914, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x51f1, %rsi
lea addresses_WC_ht+0x13ee1, %rdi
nop
and $48816, %rax
mov $2, %rcx
rep movsb
add %r9, %r9
lea addresses_D_ht+0x5fc9, %rdi
nop
nop
nop
inc %r9
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xe719, %rsi
lea addresses_A_ht+0x1c609, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $95, %rcx
rep movsb
nop
nop
nop
sub $13464, %rax
lea addresses_normal_ht+0x4bf, %rsi
lea addresses_D_ht+0x37c9, %rdi
nop
nop
nop
dec %r15
mov $8, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0xbfc9, %r11
add %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
cmp $28870, %r10

// Store
mov $0x6e6a9800000006a1, %rdx
nop
nop
nop
xor $35054, %rcx
movw $0x5152, (%rdx)
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0xe3c9, %rcx
nop
nop
add $50873, %r13
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
inc %r10

// Store
lea addresses_PSE+0x1d5b7, %rdi
nop
inc %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add $50938, %rdx

// Store
lea addresses_RW+0x9fc9, %rcx
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
dec %r11

// Faulty Load
lea addresses_UC+0x1dfc9, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
