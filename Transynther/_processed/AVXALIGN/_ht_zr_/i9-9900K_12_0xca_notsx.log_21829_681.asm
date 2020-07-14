.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18364, %r13
nop
add $50003, %r9
movb $0x61, (%r13)
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1744, %r13
nop
nop
nop
xor $13764, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
cmp $46868, %rbx
lea addresses_WT_ht+0x18ffc, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rsi)
nop
xor %r13, %r13
lea addresses_D_ht+0xc401, %r14
nop
nop
nop
nop
nop
xor $53335, %r9
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
and %rbx, %rbx
lea addresses_A_ht+0xcad4, %rsi
lea addresses_WC_ht+0xbd44, %rdi
nop
nop
nop
dec %r12
mov $85, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x19f44, %rsi
nop
nop
add $26214, %r10
mov (%rsi), %rdi
nop
and $6133, %rdi
lea addresses_WC_ht+0x1b3e4, %rsi
lea addresses_UC_ht+0x1d744, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $6827, %r14
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x12644, %rdi
nop
nop
dec %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
inc %rsi
lea addresses_A_ht+0x11f9c, %r10
nop
nop
nop
nop
dec %rsi
mov (%r10), %r9
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xe444, %r13
nop
cmp %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x8ed4, %rsi
lea addresses_UC_ht+0xa744, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $53, %rcx
rep movsq
nop
and %r13, %r13
lea addresses_D_ht+0x2744, %rsi
lea addresses_UC_ht+0x178a2, %rdi
nop
nop
sub $64343, %r10
mov $78, %rcx
rep movsb
cmp $28555, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x18f44, %rcx
nop
nop
nop
nop
and $44199, %r15
movntdqa (%rcx), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'46': 14988, '00': 1, '45': 2009, '44': 4831}
46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 44 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 45 44 44 46 46 45 46 46 44 46 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46 44 46 46 46 46 46 45 46 44 45 46 44 46 46 44 46 46 46 44 46 44 46 46 45 46 46 46 44 46 44 46 46 44 46 46 46 44 46 46 44 46 44 46 46 46 45 46 44 45 46 44 45 46 46 44 46 46 44 46 46 46 46 46 44 46 46 44 46 46 45 46 46 46 46 44 46 44 46 46 46 46 46 44 45 46 46 44 46 46 46 44 46 46 46 46 46 46 46 44 46 44 46 46 44 45 46 45 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 44 45 46 45 46 44 45 46 46 46 44 46 46 46 44 46 46 46 46 46 44 45 46 46 44 46 46 46 46 44 46 44 46 46 46 45 46 46 44 46 46 44 46 44 46 46 44 46 45 45 46 44 46 46 46 46 46 46 46 44 46 46 44 46 46 44 46 44 46 46 44 46 46 44 46 44 46 46 44 45 46 46 44 45 46 44 46 46 46 45 46 46 46 45 46 44 46 46 44 45 46 46 46 46 46 46 46 44 46 46 45 46 46 46 46 44 46 46 46 46 46 44 46 46 44 46 46 44 45 46 45 46 46 44 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 44 45 46 44 46 44 45 46 46 46 46 46 46 44 46 46 46 46 44 46 46 44 46 44 45 46 44 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 46 45 46 46 46 46 44 45 46 46 46 46 46 46 46 46 45 46 46 44 46 46 46 46 46 44 46 44 45 46 44 44 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 44 46 46 46 45 46 46 44 46 46 46 45 46 46 44 46 46 46 46 44 44 46 46 46 46 46 44 44 46 44 46 44 46 46 46 44 45 45 45 46 46 46 46 46 44 46 45 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 45 44 46 46 46 45 46 46 46 45 46 46 46 46 46 46 44 45 46 46 46 46 46 46 45 44 46 46 44 45 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 44 46 45 46 46 44 46 46 46 46 46 44 46 46 44 46 45 44 46 46 46 46 44 46 46 46 46 46 46 44 45 46 46 46 45 46 44 44 45 46 44 46 45 46 46 46 46 44 46 46 44 44 45 46 46 46 44 46 46 45 46 44 46 46 46 44 46 46 44 46 46 46 46 46 46 44 45 46 46 45 46 46 44 45 46 46 46 44 46 46 46 46 46 44 44 46 46 46 44 46 46 46 44 46 46 46 44 46 44 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 45 46 46 46 46 44 46 44 46 46 46 44 46 44 46 46 46 44 46 44 46 46 46 46 46 46 44 46 44 46 44 46 44 46 46 46 46 46 45 46 44 46 46 44 46 46 46 44 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 45 46 45 46 45 46 46 44 46 46 46 44 46 46 44 45 46 46 44 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 46 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 44 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 44 45 46 44 46 46 46 44 44 45 46 46 46 44 46 46 46 46 44 46 46 46 44 46 44 46 44 46 46 44 46 46 46 45 46 44 46 44 46 46 46 44 46 46 44 46 46 44 45 46 46 46 44 46 46 46 44 46 46 46 44 45 46 45 46 46 44 46 46 46 46 46 44 46 46 44 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 44 46 44 45 46 46 46 46 46 45 46 46 46 44 46 46 44 46 46 44 45 46 46 46 45 46 45 46 46 44 46 46 46 46 44 46 46 46 44 44 46 46 44 46 46 44 45 46 44 46 46 45 46 46
*/
