.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa3cb, %r10
nop
nop
nop
nop
nop
sub %rax, %rax
movb $0x61, (%r10)
dec %rax
lea addresses_UC_ht+0x1066d, %rax
nop
nop
nop
nop
nop
dec %rdx
mov (%rax), %r15
and $38158, %r8
lea addresses_normal_ht+0x1416d, %rsi
lea addresses_UC_ht+0x1ab6d, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $46, %rcx
rep movsb
dec %rcx
lea addresses_UC_ht+0xa8f1, %rsi
nop
nop
and $51955, %rdx
movb (%rsi), %r15b
nop
nop
nop
nop
nop
cmp $18455, %r10
lea addresses_WT_ht+0x1656d, %rsi
lea addresses_UC_ht+0x616d, %rdi
nop
nop
nop
add $5604, %rdx
mov $1, %rcx
rep movsb
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1a16d, %rsi
lea addresses_WT_ht+0x516d, %rdi
nop
nop
nop
xor %rax, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xaaa1, %r8
nop
nop
and $22727, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r8)
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x2135, %rsi
lea addresses_A_ht+0x11e3, %rdi
nop
nop
and $21850, %r10
mov $123, %rcx
rep movsw
nop
nop
nop
nop
cmp $7422, %rax
lea addresses_normal_ht+0x3c6d, %r10
nop
and $46789, %r8
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1e8ed, %rdi
nop
nop
cmp $55791, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1016d, %rsi
lea addresses_normal_ht+0x18fc0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r10
mov $70, %rcx
rep movsb
nop
cmp $2937, %rcx
lea addresses_WT_ht+0x10e6d, %rdi
nop
xor %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x119ed, %rsi
lea addresses_WC_ht+0x1b627, %rdi
nop
xor $15144, %r15
mov $118, %rcx
rep movsw
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0xe96d, %r10
nop
cmp %r8, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $22940, %rcx
lea addresses_D_ht+0xceb1, %r10
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r10
vmovntdq %ymm1, (%r10)
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x58ec47000000016d, %r14
nop
add %r8, %r8
movb $0x51, (%r14)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_US+0xa16d, %r15
nop
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_US+0xa16d, %r8
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r8), %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'58': 415, '6d': 1}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
