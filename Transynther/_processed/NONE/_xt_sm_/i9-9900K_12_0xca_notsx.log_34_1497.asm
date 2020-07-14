.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rsi
lea addresses_WT_ht+0x1b80a, %r10
nop
nop
nop
nop
xor $24483, %r11
movw $0x6162, (%r10)
nop
inc %r15
lea addresses_D_ht+0x83c6, %r11
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Store
mov $0xca, %rax
nop
nop
and $48128, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rax)
add $9692, %r13

// Load
lea addresses_A+0x193e6, %r8
nop
add %r10, %r10
mov (%r8), %rdi
nop
nop
dec %r13

// Store
lea addresses_WC+0x137e6, %r13
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r13)
nop
nop
add $9245, %r8

// Store
lea addresses_PSE+0x1bfe6, %r10
nop
nop
nop
nop
and $33248, %r13
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x193e6, %rax
nop
nop
nop
nop
add $5487, %rdi
movw $0x5152, (%rax)
nop
nop
nop
cmp $31603, %r10

// Store
lea addresses_WT+0x1ff95, %rcx
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movntdq %xmm5, (%rcx)
and $19963, %r13

// Faulty Load
lea addresses_A+0x193e6, %r10
nop
nop
and %r14, %r14
mov (%r10), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'52': 34}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
