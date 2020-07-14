.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a333, %r8
nop
and $47509, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
xor $85, %r9
lea addresses_A_ht+0x7fc3, %rdi
nop
nop
nop
nop
cmp $41982, %r13
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
sub $27271, %rbp
lea addresses_UC_ht+0xce73, %rsi
lea addresses_A_ht+0x4fd3, %rdi
nop
nop
nop
nop
nop
xor $42804, %rax
mov $0, %rcx
rep movsb
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x17b33, %rbp
nop
nop
nop
nop
nop
xor $60583, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x1ccb4, %rbp
nop
and $17874, %rcx
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1b7b3, %rax
sub $11677, %rsi
mov (%rax), %r13w
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x1cd69, %r8
nop
nop
nop
nop
and $59105, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
add $42019, %rsi
lea addresses_WC_ht+0x14b33, %rdi
nop
cmp $3461, %r13
movw $0x6162, (%rdi)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x179f3, %rsi
lea addresses_WT_ht+0x6633, %rdi
nop
nop
nop
nop
sub $296, %r8
mov $84, %rcx
rep movsq
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0xb50b, %rcx
nop
nop
nop
nop
add $29833, %rdi
movb (%rcx), %r8b
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x1e733, %r8
nop
and %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %r8
vmovntdq %ymm0, (%r8)
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x15c93, %rsi
lea addresses_WT_ht+0x5c02, %rdi
dec %r9
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
and $524, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x7b33, %r14
nop
and $61170, %r12
movntdqa (%r14), %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'00': 10426, '45': 11328, '48': 75}
45 00 45 45 00 00 45 00 45 45 00 45 00 45 00 45 00 00 00 45 45 00 45 00 00 00 45 00 45 00 45 00 45 00 00 00 45 45 00 45 00 00 45 45 45 00 45 45 00 00 45 00 00 45 45 45 00 45 00 45 00 45 45 00 45 00 00 45 45 00 00 45 00 00 45 00 45 45 00 00 45 45 00 45 45 00 45 00 00 00 45 00 45 00 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 00 00 00 00 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 00 00 45 00 45 45 00 45 45 00 45 00 00 45 45 00 45 45 00 00 00 45 00 45 00 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 00 45 45 45 00 45 00 00 45 00 45 00 45 45 00 00 45 00 45 45 45 00 45 45 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 00 45 00 45 45 00 45 45 00 45 00 00 45 00 45 45 45 00 45 45 00 45 45 00 45 45 00 00 00 45 45 00 45 45 00 00 45 45 00 45 45 00 00 45 45 00 00 45 00 00 00 45 45 00 45 00 45 45 00 45 00 45 00 45 45 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 00 45 00 45 45 00 45 00 45 00 00 45 00 45 45 45 00 45 45 00 00 45 45 00 45 45 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 00 45 00 45 00 45 00 00 45 00 00 00 45 00 45 45 45 00 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 45 00 45 45 00 00 45 00 45 45 00 45 00 45 00 45 45 45 00 45 00 00 45 45 45 00 45 45 45 00 45 00 45 00 45 00 00 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 45 45 45 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 45 00 00 45 45 00 00 45 45 00 45 45 00 45 45 00 45 00 48 45 00 45 00 45 00 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 00 45 45 00 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 00 00 00 00 45 00 00 45 00 45 45 00 45 00 45 00 45 45 00 45 00 48 00 45 00 45 00 45 00 45 00 00 45 00 45 48 45 00 00 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 00 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 00 00 45 00 45 00 45 45 00 45 00 00 00 45 00 45 00 45 45 00 00 00 45 00 45 45 00 45 00 00 00 45 00 45 00 45 45 00 45 45 00 45 00 00 00 45 00 45 00 45 00 45 00 45 00 00 45 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 45 45 00 00 45 00 45 45 00 45 00 45 00 45 45 00 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 00 00 45 00 45 45 45 00 45 45 45 00 00 45 00 45 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 00
*/
