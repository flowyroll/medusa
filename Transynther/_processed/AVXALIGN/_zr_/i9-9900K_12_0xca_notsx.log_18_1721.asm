.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1425a, %rsi
lea addresses_normal_ht+0x1060a, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $125, %rcx
rep movsq
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x18e6c, %rsi
lea addresses_normal_ht+0xa15e, %rdi
clflush (%rsi)
nop
nop
nop
inc %r12
mov $125, %rcx
rep movsq
nop
add $27720, %rcx
lea addresses_UC_ht+0xb6f2, %rsi
nop
nop
inc %r15
mov (%rsi), %rdi
sub %rdi, %rdi
lea addresses_normal_ht+0x1420a, %rdi
nop
add $33333, %r8
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
and $35005, %rdi
lea addresses_UC_ht+0x1140a, %rsi
lea addresses_D_ht+0x1648e, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $1006, %r14
mov $55, %rcx
rep movsb
nop
cmp %rax, %rax
lea addresses_WC_ht+0x1b40a, %rdi
clflush (%rdi)
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
and %r8, %r8
lea addresses_A_ht+0x1ad96, %rsi
nop
nop
nop
inc %r14
movl $0x61626364, (%rsi)
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x32d8, %r15
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x66a6, %r14
inc %rdi
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x7c0a, %r14
nop
nop
add %r8, %r8
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
cmp $19262, %rcx
lea addresses_UC_ht+0x4e0a, %rsi
lea addresses_UC_ht+0xc27a, %rdi
nop
nop
cmp %r12, %r12
mov $95, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x4738, %rdi
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %ax
nop
xor $13870, %rdi
lea addresses_UC_ht+0xc58a, %rsi
lea addresses_A_ht+0x2c0a, %rdi
clflush (%rsi)
nop
xor $63740, %rax
mov $89, %rcx
rep movsl
nop
nop
nop
nop
xor $14311, %rax
lea addresses_WC_ht+0x1734a, %rsi
lea addresses_WT_ht+0xe9c8, %rdi
clflush (%rdi)
add %r12, %r12
mov $18, %rcx
rep movsb
add $22190, %r14
lea addresses_WC_ht+0x1140a, %rdi
xor %r12, %r12
movw $0x6162, (%rdi)
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1050a, %r9
nop
add $4842, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r9)
sub $25387, %rdi

// REPMOV
lea addresses_A+0x1100a, %rsi
lea addresses_WT+0x18fca, %rdi
clflush (%rdi)
sub $18754, %rax
mov $6, %rcx
rep movsb
xor $32910, %rdi

// Load
lea addresses_UC+0x1ec0a, %r9
nop
nop
and $49355, %rdx
movntdqa (%r9), %xmm3
vpextrq $0, %xmm3, %rsi
and $12107, %rsi

// Store
lea addresses_RW+0x8e0a, %rax
add %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rax)
nop
cmp %r9, %r9

// Faulty Load
mov $0x3d257f000000040a, %rsi
nop
nop
nop
dec %r9
mov (%rsi), %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
