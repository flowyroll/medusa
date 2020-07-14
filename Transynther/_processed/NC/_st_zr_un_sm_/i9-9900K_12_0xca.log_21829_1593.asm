.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19220, %r11
clflush (%r11)
nop
xor $41293, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r11)
xor %rbx, %rbx
lea addresses_UC_ht+0x17a81, %rsi
lea addresses_WT_ht+0x12d97, %rdi
nop
nop
add $52337, %r8
mov $54, %rcx
rep movsq
nop
nop
xor $36137, %r11
lea addresses_A_ht+0xc981, %rsi
lea addresses_WT_ht+0x13181, %rdi
nop
nop
xor %r14, %r14
mov $88, %rcx
rep movsb
add $31834, %r8
lea addresses_WC_ht+0xb181, %rsi
clflush (%rsi)
nop
nop
xor $19379, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1badf, %r11
clflush (%r11)
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r11)
nop
nop
sub $27036, %rsi
lea addresses_A_ht+0x383e, %rsi
lea addresses_A_ht+0x97c1, %rdi
nop
nop
nop
nop
nop
and $30657, %r8
mov $75, %rcx
rep movsl
nop
xor $7072, %rbx
lea addresses_WT_ht+0xbc81, %r14
nop
nop
nop
nop
xor $62257, %rsi
movw $0x6162, (%r14)
nop
nop
nop
add $47291, %rbx
lea addresses_WC_ht+0x1e2c1, %r15
nop
nop
nop
nop
and %rcx, %rcx
mov (%r15), %r14d
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xd781, %r11
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0xb381, %rsi
lea addresses_WC_ht+0xb811, %rdi
clflush (%rdi)
add $27299, %rbx
mov $20, %rcx
rep movsq
nop
nop
add $63291, %rsi
lea addresses_D_ht+0xd8cc, %rbx
nop
nop
nop
xor $15913, %r8
movw $0x6162, (%rbx)
nop
nop
nop
sub $22335, %r11
lea addresses_D_ht+0x1aa21, %r15
nop
nop
nop
sub $52398, %r14
movl $0x61626364, (%r15)
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rdi
push %rdx
push %rsi

// Store
mov $0x3aaf7c0000000181, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x10a31, %r14
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
cmp $45494, %r11

// Load
lea addresses_WT+0x18f81, %r13
xor $49996, %r12
vmovaps (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
cmp $62122, %rdi

// Store
lea addresses_US+0x6371, %r11
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r11)
nop
nop
cmp %r13, %r13

// Store
lea addresses_WC+0x10201, %r12
nop
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp $38588, %r12

// Faulty Load
mov $0x3aaf7c0000000181, %r13
nop
xor $30267, %r12
mov (%r13), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'f0': 1, '00': 140, '58': 21688}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
