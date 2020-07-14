.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe524, %rsi
lea addresses_UC_ht+0x534, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $98, %rcx
rep movsq
nop
add $64069, %rdx
lea addresses_A_ht+0x920a, %rsi
lea addresses_A_ht+0x1efb4, %rdi
and $27597, %rdx
mov $25, %rcx
rep movsb
nop
nop
dec %r13
lea addresses_normal_ht+0x1a264, %rcx
and $23316, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1ceb4, %r13
add %rsi, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
xor $57670, %r12
lea addresses_normal_ht+0x1bfb4, %rdi
nop
xor %r14, %r14
mov (%rdi), %ecx
xor %r12, %r12
lea addresses_WT_ht+0xb714, %rsi
lea addresses_WC_ht+0x13820, %rdi
nop
nop
nop
nop
nop
and $64877, %r13
mov $36, %rcx
rep movsw
nop
inc %rdx
lea addresses_A_ht+0x47b4, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%rcx)
nop
nop
nop
xor $23289, %r14
lea addresses_D_ht+0x97b4, %r12
nop
nop
nop
cmp %r14, %r14
mov (%r12), %rdx
nop
nop
nop
nop
cmp $63814, %rsi
lea addresses_WC_ht+0xfb4, %rcx
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %dx
and $26970, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx

// Store
lea addresses_D+0xdfb4, %rbx
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_WT+0x1fc8c, %r14
clflush (%r14)
nop
nop
dec %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
and $28559, %r13

// Load
lea addresses_PSE+0x81b4, %r14
clflush (%r14)
nop
nop
nop
dec %r11
mov (%r14), %ebx
nop
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_D+0xdfb4, %r8
clflush (%r8)
nop
nop
nop
nop
and %r13, %r13
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'58': 239}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
