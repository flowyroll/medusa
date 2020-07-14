.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xfba, %rsi
lea addresses_A_ht+0x1833a, %rdi
add %r11, %r11
mov $85, %rcx
rep movsb
and %rdi, %rdi
lea addresses_UC_ht+0x71aa, %r9
nop
add $42935, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
sub $51507, %rsi
lea addresses_UC_ht+0x2ea2, %rsi
lea addresses_WC_ht+0xf91a, %rdi
nop
nop
nop
add %r14, %r14
mov $116, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x873a, %rcx
cmp %r11, %r11
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
inc %rcx
lea addresses_normal_ht+0x7daa, %r14
nop
inc %r9
movl $0x61626364, (%r14)
nop
nop
sub $28404, %r14
lea addresses_WT_ht+0x81ba, %r14
nop
nop
nop
nop
add $900, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
and $36145, %rsi
lea addresses_D_ht+0x4cba, %r9
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
dec %rcx
lea addresses_A_ht+0x12f00, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1c33a, %rax
nop
nop
nop
add $46246, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x100be, %rcx
clflush (%rcx)
inc %rax
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
xor $29314, %r14
lea addresses_A_ht+0x19b5a, %r11
nop
nop
nop
add $63679, %rax
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0xa19a, %r14
nop
nop
add $61509, %r9
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
nop
nop
nop
nop
sub $41722, %r13
lea addresses_A_ht+0x1a73a, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rsi), %r9b
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x1471a, %rbp
nop
nop
sub $5327, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
cmp $36851, %rbp

// Faulty Load
lea addresses_US+0x3b3a, %r12
cmp $48111, %r8
mov (%r12), %r11d
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 124}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
