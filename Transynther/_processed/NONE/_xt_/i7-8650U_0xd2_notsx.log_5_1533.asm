.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ab90, %rdx
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rdx)
nop
xor $5569, %r15
lea addresses_normal_ht+0x2bb6, %r9
nop
nop
nop
nop
and $43565, %r10
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x1c7b6, %rsi
lea addresses_WC_ht+0x27b6, %rdi
nop
nop
nop
nop
add $10801, %r9
mov $6, %rcx
rep movsw
nop
nop
xor $29399, %rsi
lea addresses_A_ht+0xffb6, %r9
nop
nop
nop
nop
nop
and $41783, %r15
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
sub $42436, %rsi
lea addresses_UC_ht+0x1bb6, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor $3577, %r10
lea addresses_WT_ht+0x3116, %rsi
lea addresses_UC_ht+0x233e, %rdi
nop
nop
nop
xor $60258, %r10
mov $40, %rcx
rep movsq
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x197b6, %rsi
lea addresses_WC_ht+0xdbb6, %rdi
sub $43357, %r10
mov $109, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $38960, %r14
lea addresses_WT_ht+0x163b6, %rsi
lea addresses_WC_ht+0x110ba, %rdi
clflush (%rdi)
add $62469, %rdx
mov $49, %rcx
rep movsw
nop
and %rcx, %rcx
lea addresses_D_ht+0xb6, %rdi
nop
sub $33035, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
nop
cmp %r9, %r9
lea addresses_UC_ht+0xf502, %r14
nop
sub %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r14)
nop
nop
and $59259, %r11
lea addresses_WT_ht+0x1c356, %rdx
nop
add $53929, %rcx
mov (%rdx), %r11w
cmp %r15, %r15
lea addresses_UC_ht+0x12f56, %rdx
nop
nop
nop
sub %r10, %r10
movb (%rdx), %r15b
nop
xor $56224, %rsi
lea addresses_A_ht+0xfb8e, %rdi
dec %r10
mov (%rdi), %si
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
mov $0xb56, %r12
nop
cmp $28743, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovntdq %ymm4, (%r12)
nop
nop
add $22751, %rdi

// Faulty Load
lea addresses_WT+0x163b6, %rax
nop
nop
nop
sub $42340, %r10
mov (%rax), %edi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'39': 5}
39 39 39 39 39
*/
