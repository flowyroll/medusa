.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5cb1, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $61369, %r10
mov (%rcx), %r15
nop
nop
nop
nop
nop
add $56449, %rdx
lea addresses_UC_ht+0x6ea, %rsi
lea addresses_UC_ht+0xfac8, %rdi
nop
nop
add %rbp, %rbp
mov $87, %rcx
rep movsw
inc %rbp
lea addresses_A_ht+0x2688, %r15
nop
nop
add $62377, %r10
movl $0x61626364, (%r15)
nop
nop
nop
sub $52262, %rdx
lea addresses_A_ht+0x17cc8, %rbp
inc %rdx
mov (%rbp), %r15w
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1e8d8, %rdx
nop
nop
nop
nop
nop
sub $40137, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
cmp $39323, %rdi
lea addresses_normal_ht+0x13ac8, %rsi
lea addresses_WT_ht+0xf0c8, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $17, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x18088, %rsi
nop
nop
nop
nop
nop
sub $44807, %rdx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
and $19874, %rdx
lea addresses_normal_ht+0x148c4, %rsi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x87e8, %rdi
nop
nop
nop
nop
nop
xor $36129, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xd348, %rdx
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x135c8, %rdx
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x3ec8, %rsi
lea addresses_normal_ht+0x158c8, %rdi
clflush (%rdi)
nop
sub %r15, %r15
mov $110, %rcx
rep movsq
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0xcbe8, %rbp
nop
nop
nop
nop
add %rcx, %rcx
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x126c8, %rdi
nop
nop
nop
inc %rsi
movb (%rdi), %dl
nop
nop
nop
cmp $2558, %r15
lea addresses_WC_ht+0x123bc, %rsi
lea addresses_D_ht+0x13078, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x12c8, %rbp
nop
nop
nop
cmp $53766, %r14
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x12c8, %rbp
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
and $49012, %rdi

// Store
mov $0xec8, %rdi
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
dec %r14

// Store
mov $0xd21, %r14
clflush (%r14)
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r14)
nop
xor $59361, %r14

// Store
lea addresses_WC+0x1aec8, %rdx
nop
nop
and $53305, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
cmp $6182, %r10

// Load
mov $0x4600ef0000000af8, %rsi
cmp %rdi, %rdi
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
xor $58836, %r10

// Load
lea addresses_WC+0x87c8, %rdx
nop
nop
nop
nop
add %r14, %r14
movb (%rdx), %r10b
nop
nop
nop
nop
nop
xor $26689, %rdi

// Faulty Load
lea addresses_RW+0x12c8, %rdx
nop
add $20702, %rsi
mov (%rdx), %bp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'58': 695}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
