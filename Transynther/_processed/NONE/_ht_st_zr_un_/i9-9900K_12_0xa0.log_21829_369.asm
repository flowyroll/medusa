.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7f71, %rsi
lea addresses_UC_ht+0x18b1, %rdi
clflush (%rsi)
nop
sub %r8, %r8
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x13cf1, %rsi
clflush (%rsi)
and %r15, %r15
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
cmp $18349, %rcx
lea addresses_UC_ht+0x8cb1, %rsi
nop
nop
sub $20291, %r14
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x70b1, %rsi
lea addresses_UC_ht+0x18b1, %rdi
nop
nop
nop
and $51173, %r8
mov $46, %rcx
rep movsw
nop
nop
xor $42590, %rdi
lea addresses_UC_ht+0x10c1, %rsi
lea addresses_normal_ht+0xf71, %rdi
nop
nop
cmp $55295, %r10
mov $26, %rcx
rep movsq
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x47f2, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and $4272, %r14
movb (%r15), %dl
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x141f1, %rcx
clflush (%rcx)
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
and %rcx, %rcx
lea addresses_D_ht+0x115b1, %rsi
lea addresses_WT_ht+0x1e8b1, %rdi
nop
nop
nop
nop
nop
sub $33843, %r10
mov $32, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xb831, %r8
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r8)
nop
sub %r15, %r15
lea addresses_A_ht+0xb5b5, %r10
nop
and $29568, %r8
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
sub $27011, %rcx
lea addresses_D_ht+0x139ab, %rsi
lea addresses_WT_ht+0xb4b1, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $99, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_normal_ht+0x168b1, %rcx
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rcx)
nop
xor %r10, %r10
lea addresses_WT_ht+0x1b499, %rsi
lea addresses_UC_ht+0x158b1, %rdi
sub %r10, %r10
mov $22, %rcx
rep movsb
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_D+0x14831, %rdi
nop
nop
nop
nop
nop
cmp $9055, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_US+0x1e8d1, %r12
nop
nop
nop
nop
sub %rax, %rax
mov (%r12), %bx
nop
nop
add $29578, %r10

// Faulty Load
lea addresses_WT+0x124b1, %r9
nop
nop
nop
nop
and $32815, %r14
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'48': 6302, '45': 12925, '00': 1414, '46': 984, '01': 2, '47': 200, '37': 1, '08': 1}
48 48 48 00 45 45 45 45 45 45 45 47 48 48 00 48 46 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 48 48 48 48 48 00 46 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 45 45 48 48 48 48 48 00 45 45 45 45 45 48 48 00 45 45 45 45 45 45 45 47 48 48 46 45 45 45 45 45 45 45 45 45 48 48 47 48 46 45 45 45 45 45 45 45 45 48 48 48 46 45 45 45 45 45 45 45 48 47 48 48 00 46 45 45 45 45 45 45 45 45 48 48 48 48 00 46 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 48 48 48 48 48 46 45 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 45 48 48 48 48 48 45 45 45 45 45 48 48 48 45 45 45 45 45 45 45 45 48 48 48 45 45 45 46 45 45 45 47 48 46 45 45 45 45 45 45 45 45 48 48 45 45 45 45 45 45 45 48 47 48 00 45 45 45 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 48 48 48 47 00 46 45 45 45 45 45 45 45 45 48 47 48 46 46 46 45 45 45 45 45 45 48 48 48 48 48 46 00 45 45 45 45 45 48 48 48 46 45 45 45 45 45 45 48 48 47 48 48 00 46 45 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 45 45 48 48 48 46 45 45 46 45 45 45 45 48 48 48 48 48 46 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 48 48 48 48 00 46 00 46 45 45 45 45 45 45 48 48 48 48 48 00 46 45 45 45 45 45 45 45 48 48 48 45 45 45 45 45 45 45 48 48 00 45 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 45 48 48 48 46 45 45 45 45 45 45 45 48 48 48 47 45 45 45 45 45 45 45 45 01 48 48 00 46 45 45 45 45 45 45 48 48 48 46 46 45 45 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 45 48 48 48 48 48 45 45 45 45 45 45 48 48 48 00 46 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 45 48 48 48 48 00 00 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 45 45 45 45 48 48 48 00 00 45 45 45 45 45 45 45 48 48 47 48 00 00 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 48 45 45 45 45 45 45 45 48 48 48 48 48 48 00 45 45 45 45 45 45 48 48 48 48 48 00 45 45 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 45 45 48 48 48 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 48 48 48 46 45 45 45 45 45 45 45 48 48 45 45 45 45 45 45 45 45 48 48 48 48 00 46 45 45 45 45 45 45 45 45 45 48 48 00 46 45 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 45 48 47 48 46 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 48 48 48 00 46 45 45 45 45 45 45 45 48 48 48 00 46 46 45 45 45 45 45 48 48 48 00 45 45 45 45 45 45 48 48 48 48 46 45 45 45 45 45 45 45 45 48 47 48 45 45 45 45 45 45 45 48 48 48 45 45 45 45 45 45 45 48 48 48 48 48 00 45 45 45 45 45 45 48 48 48 48 46 45 45 45 45 45 45 45 45 48 48 48 48 45 45 45 45 45 45 45 48 48 48 00 00 46 45 45 45 45 48 48 48 45 45 45 45 45 48 48 48 48 00 46 45 45 45 45 45 45 45 45 48 48 48 00 00 45 45 45 45 45 45 48 48 00 45 45 45 45 45 45 48 00 45 45 45 45 45 45 45 45 48 48 48 48 48 48 00 45 45 45 45 45 45 45 47 48 48 46 45 45 45 45 45 45 45 48 48 48 48 00 45 45 45 45 45 45 45 48 48 46 45 45
*/
