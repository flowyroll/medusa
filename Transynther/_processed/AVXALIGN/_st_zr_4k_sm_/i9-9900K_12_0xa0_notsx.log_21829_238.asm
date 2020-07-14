.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x134bd, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rcx, %rcx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x6abd, %rsi
lea addresses_UC_ht+0x22bd, %rdi
clflush (%rsi)
add $64822, %rax
mov $79, %rcx
rep movsl
nop
add $4491, %rbp
lea addresses_WC_ht+0x14ebd, %rbp
nop
cmp $13107, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
xor $64796, %rcx
lea addresses_UC_ht+0x1b0bd, %rax
nop
nop
nop
and $20961, %rdi
movl $0x61626364, (%rax)
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x118bd, %rbp
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x18bb5, %rdi
nop
nop
nop
nop
and $45484, %r14
movb $0x61, (%rdi)
nop
nop
nop
cmp $40505, %rdi
lea addresses_WT_ht+0x4fbd, %r12
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r12)
nop
and $54771, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp

// Store
lea addresses_D+0x140c5, %r14
nop
nop
nop
nop
add %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp $17233, %r15

// Store
lea addresses_PSE+0x178bd, %r15
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
sub $19205, %rbp

// Store
lea addresses_A+0xeed5, %r14
clflush (%r14)
nop
add %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, (%r14)
and $27092, %r11

// Store
lea addresses_D+0xc93d, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%rax)
nop
nop
dec %rbp

// Store
lea addresses_WT+0x8bd, %r14
nop
nop
nop
nop
nop
xor $694, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_PSE+0x178bd, %r9
nop
nop
nop
nop
nop
and $8418, %r14
vmovaps (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'58': 21677, '00': 152}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
