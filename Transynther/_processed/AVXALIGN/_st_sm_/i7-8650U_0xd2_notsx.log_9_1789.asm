.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xad0f, %rsi
lea addresses_A_ht+0x1be21, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $103, %rcx
rep movsw
nop
nop
sub $26946, %rbp
lea addresses_D_ht+0x9f6f, %r10
and $59134, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x5f6f, %rsi
lea addresses_D_ht+0x1d4f, %rdi
xor $47197, %r8
mov $52, %rcx
rep movsl
cmp %rsi, %rsi
lea addresses_WT_ht+0x1c00f, %rsi
lea addresses_D_ht+0x132ef, %rdi
clflush (%rsi)
nop
sub %r10, %r10
mov $32, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_D_ht+0x1c09f, %rsi
nop
nop
nop
xor $63354, %r13
mov (%rsi), %ecx
nop
nop
nop
nop
nop
cmp $12693, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi

// Store
lea addresses_PSE+0x17077, %r12
nop
sub $34138, %rcx
movw $0x5152, (%r12)
nop
nop
and %r10, %r10

// Store
lea addresses_WT+0x1516f, %rcx
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
xor $34105, %r10

// Store
lea addresses_WT+0x1256f, %r15
nop
inc %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
and %r11, %r11

// Store
lea addresses_RW+0x1396f, %r12
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_RW+0x1396f, %r13
and $43618, %r10
movb (%r13), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
