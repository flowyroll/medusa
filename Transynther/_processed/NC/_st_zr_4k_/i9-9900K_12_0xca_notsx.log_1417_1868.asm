.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1bb66, %r14
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%r14), %bx
dec %rcx
lea addresses_A_ht+0x8e68, %r11
nop
nop
inc %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r11)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1ec68, %r9
nop
sub $48289, %rax
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rbx
dec %rbx
lea addresses_UC_ht+0x17c68, %r14
dec %rbx
movw $0x6162, (%r14)
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x175dc, %r9
nop
cmp %r14, %r14
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
xor $58637, %r12
lea addresses_D_ht+0x1e5d8, %rax
nop
nop
and $38335, %rbx
movb $0x61, (%rax)
nop
nop
inc %rbx
lea addresses_normal_ht+0x1be68, %rsi
lea addresses_D_ht+0x186e8, %rdi
nop
nop
nop
dec %rax
mov $50, %rcx
rep movsq
nop
nop
nop
nop
cmp $4235, %r11
lea addresses_WT_ht+0x10868, %r9
nop
nop
nop
and $36889, %rbx
movl $0x61626364, (%r9)
nop
cmp %r9, %r9
lea addresses_D_ht+0x19568, %rsi
lea addresses_WC_ht+0x12118, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $112, %rcx
rep movsq
nop
nop
nop
nop
and $35876, %rax
lea addresses_UC_ht+0xb980, %rsi
nop
and $21825, %rcx
mov (%rsi), %r12d
nop
nop
nop
nop
and $39582, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_D+0x2768, %r14
clflush (%r14)
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movntdq %xmm1, (%r14)
nop
nop
nop
cmp $56825, %r14

// Load
lea addresses_A+0x7d38, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r13
nop
cmp $37265, %r14

// Store
lea addresses_A+0x19152, %r8
nop
nop
nop
cmp $19142, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
xor $49326, %r8

// Store
lea addresses_US+0x183f4, %r14
nop
nop
nop
nop
cmp $39370, %r8
movb $0x51, (%r14)
nop
nop
nop
xor $13372, %r13

// Load
mov $0x3994040000000668, %r14
nop
nop
nop
nop
xor %r9, %r9
mov (%r14), %esi
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x5a68, %r10
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r10)
inc %r9

// Store
lea addresses_US+0x18668, %rax
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%rax)
nop
xor $30675, %r10

// Faulty Load
mov $0x3994040000000668, %r10
nop
nop
and %r8, %r8
mov (%r10), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'51': 384, '00': 1033}
51 00 51 00 00 51 51 00 00 51 51 00 00 00 00 51 00 51 51 00 51 51 00 00 00 00 00 00 00 51 51 00 51 00 51 51 00 00 00 51 00 51 51 51 51 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 51 51 00 00 00 00 00 00 51 00 00 00 51 00 51 00 51 51 00 00 51 51 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 51 00 00 00 00 00 00 51 00 51 51 00 51 00 00 51 51 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 51 00 00 00 51 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 51 51 00 51 00 51 00 51 00 51 00 51 51 00 51 00 00 00 51 51 51 00 51 00 51 00 00 00 00 00 00 51 00 00 00 00 51 51 00 00 00 51 00 00 00 00 00 00 51 51 00 00 51 00 00 00 00 51 51 00 00 51 00 00 00 00 51 51 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 51 51 00 00 00 00 00 00 00 00 00 51 51 51 51 51 00 00 00 51 00 00 00 51 00 51 00 00 00 51 51 00 00 00 00 51 00 51 51 00 00 00 00 51 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 51 51 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 51 00 00 00 00 00 51 00 00 51 51 51 51 51 51 00 00 00 00 00 51 51 51 51 00 00 00 00 00 00 51 51 51 51 00 00 00 00 00 51 00 51 00 00 00 51 51 51 00 00 00 00 00 00 00 00 51 00 51 51 00 00 51 00 00 00 51 00 00 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 51 51 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 51 51 51 00 00 00 51 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 51 00 51 00 00 00 00 51 00 00 00 00 00 00 51 51 00 00 00 00 51 00 51 00 51 00 00 51 51 51 00 51 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 51 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 51 00 00 51 51 51 00 51 51 00 00 51 00 51 00 51 00 00 00 00 00 00 00 51 51 00 00 00 51 51 51 00 00 00 00 00 51 00 00 00 00 00 51 51 00 51 00 00 00 51 51 00 00 00 51 00 00 00 51 00 00 00 51 51 51 00 00 00 51 51 00 00 51 00 00 00 00 00 51 00 00 51 00 51 00 00 00 51 51 00 00 00 00 00 00 51 00 00 51 51 00 00 00 00 51 00 51 00 51 00 00 51 51 51 51 00 00 00 00 51 00 51 00 00 00 00 51 00 00 51 00 51 00 00 00 51 00 51 51 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 51 00 51 00 00 00 51 51 00 00 00 51 51 51 00 00 51 51 00 00 51 00 51 00 00 00 00 00 00 00 00 00 51 00 51 00 00 51 51 51 00 00 00 51 51 51 00 51 00 00 00 00 51 51 51 51 51 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 51 00 00 51 00 00 00 00 51 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 51 00 00 51 00 51 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 51 51 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 51 51 00 00
*/
