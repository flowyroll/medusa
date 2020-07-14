.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9914, %rsi
lea addresses_WT_ht+0x2ed4, %rdi
nop
nop
nop
inc %r8
mov $6, %rcx
rep movsw
nop
nop
nop
nop
nop
and $31237, %r15
lea addresses_A_ht+0xfe14, %r11
clflush (%r11)
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %r11
vmovntdq %ymm2, (%r11)
nop
inc %rsi
lea addresses_WC_ht+0xd014, %rsi
lea addresses_normal_ht+0x10a14, %rdi
clflush (%rdi)
add %r15, %r15
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0xac34, %r8
xor %r9, %r9
movl $0x61626364, (%r8)
nop
inc %rdi
lea addresses_WC_ht+0x13224, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov (%rdi), %rsi
nop
nop
nop
cmp $54021, %rcx
lea addresses_A_ht+0x1f7c, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r8)
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Load
lea addresses_US+0x187d4, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $10274, %rax
mov (%rdi), %r8
nop
inc %r12

// Store
mov $0x4e29e000000002bb, %r9
and %r10, %r10
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_normal+0x3614, %r8
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
dec %r8

// Load
lea addresses_A+0xe760, %rax
nop
nop
nop
xor $11374, %r12
mov (%rax), %edi
cmp %rax, %rax

// Faulty Load
lea addresses_WT+0x5e14, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 15381, '48': 6448}
48 48 00 00 48 00 00 00 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 48 00 48 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 48 48 48 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 00 48 00 48 48 00 00 48 48 00 00 48 00 48 00 48 00 00 48 00 00 00 00 48 00 00 48 48 48 00 00 48 48 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 48 48 48 48 48 00 00 00 48 48 48 48 48 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 48 48 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 00 48 00 48 00 48 48 00 00 48 00 00 00 48 48 48 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 48 00 00 00 48 00 48 48 00 00 48 48 00 00 00 48 48 00 00 48 48 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 48 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 48 00 48 00 00 00 48 00 48 48 00 00 48 00 48 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 48 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 48 48 00 00 48 48 00 48 48 00 00 48 00 00 00 48 00 00 48 48 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 48 48 48 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 48 00 48 48 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 48 48 00 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 48 00 00 00 48 00 48 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 48 48 00 00 00 00 48 48 00 00 48 00
*/
