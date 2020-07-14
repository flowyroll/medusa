.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1def0, %r13
nop
nop
nop
xor $22322, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r13)
nop
nop
and $28696, %r13
lea addresses_normal_ht+0xc7f0, %rdi
cmp %r9, %r9
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x4810, %r11
nop
nop
nop
nop
nop
add $7278, %rdi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x7aba, %rsi
lea addresses_D_ht+0x1ddf0, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
mov $56, %rcx
rep movsl
nop
nop
nop
xor $47229, %r13
lea addresses_normal_ht+0xe2f0, %rsi
lea addresses_normal_ht+0x16bf0, %rdi
nop
nop
cmp %r14, %r14
mov $71, %rcx
rep movsl
nop
sub %r14, %r14
lea addresses_WC_ht+0xc558, %rsi
lea addresses_normal_ht+0x123f0, %rdi
nop
nop
and %r14, %r14
mov $91, %rcx
rep movsq
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x38d0, %rsi
lea addresses_WT_ht+0x18ad0, %rdi
nop
nop
nop
nop
nop
sub $34868, %r11
mov $8, %rcx
rep movsl
add $41814, %r14
lea addresses_A_ht+0x18f30, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $30034, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1d5f0, %rsi
xor $34805, %r9
mov (%rsi), %r8w
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x121f8, %r13
nop
nop
and $49665, %rsi
movl $0x61626364, (%r13)
xor $4217, %r13
lea addresses_normal_ht+0x103f0, %rsi
nop
cmp $39465, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x19da0, %r11
nop
nop
add %r14, %r14
movw $0x6162, (%r11)
add %rdi, %rdi
lea addresses_normal_ht+0x9570, %rcx
nop
nop
and %rdi, %rdi
mov (%rcx), %r14d
nop
sub $42232, %r9
lea addresses_WC_ht+0x71f0, %r11
nop
nop
cmp $29010, %r14
mov $0x6162636465666768, %r9
movq %r9, (%r11)
cmp $22536, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0x1abf0, %rdx
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_A+0x1abf0, %rdx
nop
nop
inc %rbp
movw $0x5152, (%rdx)
nop
and $31526, %rbp

// Store
lea addresses_WT+0x6cf0, %r11
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovntdq %ymm2, (%r11)
nop
nop
xor $22120, %rcx

// Faulty Load
lea addresses_A+0x1abf0, %r12
clflush (%r12)
and $56226, %rcx
movb (%r12), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'52': 23}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
