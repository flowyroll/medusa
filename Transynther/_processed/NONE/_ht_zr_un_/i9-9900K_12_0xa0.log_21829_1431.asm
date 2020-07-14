.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11aac, %r9
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
nop
sub $63991, %r14
lea addresses_UC_ht+0xc88c, %rsi
lea addresses_UC_ht+0x17b0c, %rdi
nop
nop
nop
nop
nop
add $36980, %rbp
mov $119, %rcx
rep movsl
nop
add $65432, %r14
lea addresses_UC_ht+0x4b2c, %rdi
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
cmp %rcx, %rcx
lea addresses_D_ht+0x1768c, %rsi
lea addresses_A_ht+0xd67c, %rdi
nop
nop
xor $4204, %rax
mov $36, %rcx
rep movsb
nop
sub $37425, %r9
lea addresses_A_ht+0x520c, %rsi
lea addresses_WT_ht+0xe68c, %rdi
nop
nop
nop
sub $26464, %r14
mov $86, %rcx
rep movsq
nop
nop
nop
xor $16053, %rbx
lea addresses_normal_ht+0x648c, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%r9), %bl
add $18236, %rbx
lea addresses_UC_ht+0x9d8c, %rsi
lea addresses_WC_ht+0xd98c, %rdi
nop
nop
xor $65151, %rax
mov $8, %rcx
rep movsw
nop
nop
nop
cmp $31367, %rsi
lea addresses_WT_ht+0xd68c, %rcx
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
add $5657, %r9
lea addresses_WT_ht+0x1138c, %rsi
lea addresses_A_ht+0x4254, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $16, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_WC_ht+0xf28c, %rsi
lea addresses_normal_ht+0x28c8, %rdi
nop
nop
nop
sub $47381, %r9
mov $112, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1788c, %rbp
and %rcx, %rcx
mov (%rbp), %r9
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1c4cc, %rsi
nop
cmp $18210, %rbx
movb (%rsi), %cl
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1168c, %r14
nop
inc %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %r14
movntdq %xmm6, (%r14)
nop
and $55507, %rbx
lea addresses_D_ht+0x16d5c, %r14
nop
nop
nop
sub $33144, %rbp
movb (%r14), %bl
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0xf654, %rcx
nop
nop
nop
add $20057, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
dec %r8

// Store
lea addresses_WT+0x1db4c, %r10
nop
nop
add $58030, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovntdq %ymm1, (%r10)
nop
xor $62700, %r13

// Faulty Load
lea addresses_WT+0x1728c, %rbp
nop
nop
nop
dec %rsi
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'48': 4570, 'ff': 1, '00': 15061, '46': 2, '45': 2172, '95': 10, '6d': 1, '08': 12}
00 48 00 00 00 00 00 48 00 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 48 00 45 45 45 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 45 45 45 45 45 45 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 45 45 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 48 48 48 00 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 45 45 45 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 48 00 48 00 00 00 00 00 48 00 00 48 48 48 00 48 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 45 45 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 45 45 45 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 48 00 00 48 00 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 48 00 00 00 48 48 48 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 45 45 45 45 45 45 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 45 45 45 45 45 45 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 48 00 00 48 00 48 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 48 00 48 00 45 45 45 45 45 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 45 45 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 45 45 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 00 45 45 00 48 48 00 48 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 48 45 45 45 45 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 45 45 45 45 45 48 00 00 00 48 00 48 48 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 45 45 45 45 45 45 45 00 00 48 00 00 00 48 48 00 48 48 48 00 00 48 00 48 48 48 48 00 00 48 48 00 48 00 45 45 00 00 00 00 00 48
*/
