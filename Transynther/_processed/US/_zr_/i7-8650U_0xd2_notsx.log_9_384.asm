.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1272e, %rdi
nop
cmp %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x1ae3a, %rbx
nop
nop
nop
nop
nop
inc %r10
movw $0x6162, (%rbx)
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x12206, %r15
nop
add $31257, %r13
mov (%r15), %bx
xor $24203, %rbx
lea addresses_A_ht+0x17f2e, %rsi
lea addresses_WC_ht+0xa962, %rdi
clflush (%rsi)
nop
inc %r9
mov $36, %rcx
rep movsw
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x193be, %r9
nop
nop
nop
nop
nop
add $49085, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x7b2e, %rsi
lea addresses_normal_ht+0x1a72e, %rdi
nop
xor %r9, %r9
mov $43, %rcx
rep movsq
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x14f2e, %rbp
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
