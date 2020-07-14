.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13bc3, %r9
nop
nop
nop
xor $40374, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xbdf, %r10
sub %r8, %r8
mov (%r10), %rdx
nop
cmp %r8, %r8
lea addresses_WC_ht+0x7ec7, %r9
sub $7957, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r9)
inc %r8
lea addresses_WC_ht+0x55df, %rsi
lea addresses_A_ht+0xc897, %rdi
add %rbp, %rbp
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $11924, %r10
lea addresses_WT_ht+0x1611d, %rdx
nop
xor $25978, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x6c3f, %rcx
nop
nop
xor $58906, %r8
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r9
xor %rsi, %rsi
lea addresses_WT_ht+0x14a95, %rcx
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x3745, %rbp
nop
nop
inc %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
xor $40686, %rbp
lea addresses_normal_ht+0x4c9f, %rsi
lea addresses_UC_ht+0x7ddf, %rdi
sub %r8, %r8
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xd8f3, %rbp
nop
inc %r10
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rcx
inc %rcx
lea addresses_A_ht+0xb527, %rsi
lea addresses_UC_ht+0x1499f, %rdi
sub $8301, %rbp
mov $46, %rcx
rep movsb
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1aa8b, %r9
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r9), %r8
nop
nop
nop
xor $59062, %rcx
lea addresses_WC_ht+0x1dfdf, %rsi
lea addresses_normal_ht+0x49df, %rdi
nop
and $25558, %r10
mov $125, %rcx
rep movsl
nop
and $41560, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rdi
push %rdx

// Store
mov $0x5dbde00000005df, %r15
nop
nop
nop
xor $262, %rax
movw $0x5152, (%r15)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_A+0x1d65f, %rax
nop
nop
cmp $36755, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movntdq %xmm4, (%rax)
add $45264, %rbp

// Faulty Load
mov $0x4bff010000000ddf, %rax
nop
nop
nop
nop
nop
and $48370, %rdx
vmovntdqa (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'00': 648, '44': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00
*/
