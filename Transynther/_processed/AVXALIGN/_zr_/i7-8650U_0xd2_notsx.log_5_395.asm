.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1623, %rsi
lea addresses_UC_ht+0xd7b1, %rdi
clflush (%rdi)
nop
nop
nop
xor %r10, %r10
mov $85, %rcx
rep movsl
nop
sub $31939, %r10
lea addresses_UC_ht+0x1c423, %rdi
cmp %r10, %r10
movw $0x6162, (%rdi)
nop
nop
dec %r10
lea addresses_WC_ht+0xfc23, %rdx
nop
cmp %r8, %r8
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
and %rdx, %rdx
lea addresses_normal_ht+0x795b, %rsi
lea addresses_normal_ht+0x1a9e3, %rdi
nop
nop
nop
sub $51237, %rbp
mov $40, %rcx
rep movsq
nop
nop
nop
nop
sub $51563, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rsi

// Store
lea addresses_A+0x18b23, %rax
add $63688, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rax)
nop
nop
add %r11, %r11

// Store
lea addresses_PSE+0xa4a3, %r10
nop
nop
nop
nop
nop
add $23768, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
nop
sub $468, %rsi

// Faulty Load
lea addresses_US+0xde23, %rsi
nop
dec %rax
mov (%rsi), %r9d
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
