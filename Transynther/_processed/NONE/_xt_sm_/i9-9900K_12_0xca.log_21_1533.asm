.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_normal_ht+0x143f9, %rax
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rax)
xor $9526, %rcx
lea addresses_D_ht+0xe059, %rbp
nop
nop
nop
inc %r8
mov (%rbp), %eax
dec %rbp
lea addresses_UC_ht+0x9a59, %rcx
nop
cmp %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rcx)
nop
nop
xor $21776, %rbp
lea addresses_A_ht+0xe459, %r10
nop
sub $32101, %rsi
movb (%r10), %r12b
nop
nop
and $4793, %rcx
lea addresses_A_ht+0x9749, %rcx
nop
nop
nop
nop
nop
cmp %rax, %rax
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
and $19569, %rbp
lea addresses_WT_ht+0x1aea1, %rsi
nop
nop
nop
nop
xor %r8, %r8
mov (%rsi), %ecx
nop
nop
and %r10, %r10
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rsi

// Store
lea addresses_PSE+0xa7d9, %r15
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%r15)
inc %rsi

// Store
lea addresses_WT+0x1560d, %rax
nop
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
xor $14170, %r12

// Store
lea addresses_normal+0x10059, %r12
and %r14, %r14
movb $0x51, (%r12)
nop
nop
nop
nop
add %r15, %r15

// Store
mov $0x12bb860000000701, %rax
dec %rcx
movb $0x51, (%rax)
nop
nop
inc %r14

// Store
lea addresses_normal+0x13ea9, %r11
nop
nop
xor $63812, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
cmp $432, %rax

// Store
lea addresses_normal+0x10059, %rax
xor $39404, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
inc %r11

// Faulty Load
lea addresses_normal+0x10059, %rsi
nop
nop
nop
nop
and %r14, %r14
mov (%rsi), %r15w
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
