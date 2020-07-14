.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x101bf, %r9
nop
nop
nop
nop
and %r8, %r8
mov (%r9), %r13
xor $204, %rdi
lea addresses_WT_ht+0x1a7d3, %r10
clflush (%r10)
nop
nop
dec %rbp
movb (%r10), %al
nop
nop
nop
nop
nop
sub $23862, %rbp
lea addresses_normal_ht+0x50bd, %rsi
lea addresses_UC_ht+0x471b, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbp, %rbp
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
add $64303, %rdi
lea addresses_WT_ht+0xcb8f, %rdi
nop
and $23654, %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x3d7f, %rsi
lea addresses_WT_ht+0x1c1bf, %rdi
nop
nop
nop
sub %r10, %r10
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x12ebf, %r10
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%r10)
dec %r10
lea addresses_WT_ht+0x1bb7f, %rcx
and $52948, %rsi
mov (%rcx), %r13
cmp $62388, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x69cf, %rdi
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
add %r12, %r12

// REPMOV
lea addresses_normal+0x1d60f, %rsi
lea addresses_PSE+0x3d7f, %rdi
nop
nop
nop
nop
xor $19513, %r12
mov $3, %rcx
rep movsl
nop
nop
dec %rcx

// Store
mov $0x7f3140000000ebf, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movntdq %xmm7, (%rdi)
nop
nop
nop
add $64010, %rsi

// Store
lea addresses_A+0xce67, %r12
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r12)

// Exception!!!
nop
nop
mov (0), %rcx
nop
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x7f3140000000ebf, %rdi
nop
nop
cmp %r8, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_D+0x154b7, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%r12)
add $27908, %rdx

// Faulty Load
mov $0x7f3140000000ebf, %r8
nop
add %rdi, %rdi
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'46': 2, '50': 1, '00': 1, '9f': 1}
00 50 46 46 9f
*/
