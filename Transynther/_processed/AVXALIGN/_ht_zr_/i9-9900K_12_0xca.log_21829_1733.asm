.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1332a, %r12
nop
nop
nop
nop
xor %rbp, %rbp
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
add %r13, %r13
lea addresses_D_ht+0xbbaa, %rsi
nop
sub %rcx, %rcx
mov (%rsi), %di
nop
nop
nop
add $32107, %r13
lea addresses_D_ht+0x123aa, %rsi
lea addresses_UC_ht+0x123aa, %rdi
nop
nop
nop
nop
nop
xor $3104, %rbp
mov $107, %rcx
rep movsw
nop
nop
dec %r13
lea addresses_D_ht+0x15eaa, %rsi
lea addresses_normal_ht+0xc2a, %rdi
nop
nop
nop
add $47874, %r10
mov $31, %rcx
rep movsq
nop
nop
nop
add $58748, %r12
lea addresses_UC_ht+0x16aa, %r10
nop
nop
nop
nop
inc %rbp
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1beaa, %rsi
lea addresses_normal_ht+0x11faa, %rdi
nop
nop
cmp $57060, %rdx
mov $107, %rcx
rep movsw
nop
add %rdx, %rdx
lea addresses_normal_ht+0x432a, %rsi
nop
nop
nop
sub %rdi, %rdi
movb (%rsi), %cl
cmp $1595, %rdi
lea addresses_WC_ht+0x1bdaa, %rcx
nop
nop
cmp $33513, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x193ea, %rsi
lea addresses_normal_ht+0xafaa, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r10, %r10
mov $4, %rcx
rep movsb
nop
nop
nop
nop
xor $15432, %r10
lea addresses_UC_ht+0xa77a, %rsi
nop
nop
nop
add $25257, %rcx
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
cmp $63085, %rsi
lea addresses_D_ht+0x136da, %rdi
nop
and $53478, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x113aa, %r10
sub $8359, %rsi
vmovntdqa (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'45': 1535, '47': 8861, '46': 6673, '00': 4760}
46 47 00 45 00 46 47 46 47 46 47 46 47 46 47 00 47 00 45 00 47 00 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 00 46 47 46 47 46 47 46 47 45 00 46 47 45 00 46 47 46 47 45 00 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 46 47 46 47 00 47 46 47 46 47 46 47 45 47 46 47 46 47 45 00 45 00 46 47 46 47 46 47 46 47 45 00 45 00 47 00 46 47 45 00 46 47 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 00 47 46 47 46 47 46 47 46 47 00 47 45 00 46 47 46 47 45 00 46 47 46 47 45 00 47 46 00 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 00 47 45 00 46 47 46 47 46 47 00 47 00 47 45 00 46 47 46 47 46 47 46 47 00 47 45 00 47 00 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 45 00 45 00 46 00 45 00 47 00 00 00 46 47 00 47 00 46 46 47 00 46 47 00 46 47 00 46 47 45 00 47 46 46 47 46 47 00 46 47 46 47 00 46 47 46 47 00 46 47 00 46 47 45 00 47 00 45 00 46 47 46 47 46 47 46 47 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 45 00 45 00 46 47 46 47 46 47 00 46 47 46 47 45 00 46 47 46 47 47 47 46 47 46 47 47 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 00 47 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 00 47 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 00 46 47 45 00 46 47 46 47 45 00 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 00 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 00 47 00 47 46 00 46 47 46 47 00 47 45 00 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 45 00 46 47 45 00 46 47 45 00 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 00 47 45 00 46 47 46 47 46 47 46 47 46 47 46 00 46 47 46 47 46 47 46 47 00 47 47 46 47 46 47 45 00 46 47 46 47 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 46 47 00 47 00 47 45 00 46 47 46 47 46 47 46 47 45 00 46 47 00 47 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 46 47 45 00 46 47 46 47 46 47 46 47 00 47 45 00 46 47 46 47 46 47 46 47 46 47 45 00 46 47 45 00 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 00 47 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 00 46 47 46 47 46 47 46 47 46 47 46 47 45 00 46 47 00 47 45 00 45 00 46 47 46 47 46 47 46 47 45 00 46 47 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 46 47 46 47 46 47 46 47 45
*/
