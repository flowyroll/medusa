.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x460a, %rcx
nop
add $63877, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x13896, %rsi
lea addresses_UC_ht+0x86c2, %rdi
nop
inc %rbx
mov $54, %rcx
rep movsb
add $58761, %rdi
lea addresses_WC_ht+0x1a896, %rdi
nop
xor %r14, %r14
movb (%rdi), %r13b
nop
nop
inc %r14
lea addresses_UC_ht+0x1ec16, %rsi
lea addresses_normal_ht+0xf526, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $58, %rcx
rep movsq
nop
nop
nop
xor $55736, %rsi
lea addresses_WC_ht+0x812c, %rbx
nop
nop
nop
nop
and $14251, %rdi
movb (%rbx), %cl
nop
cmp $24343, %rcx
lea addresses_WC_ht+0x5996, %rsi
lea addresses_WT_ht+0x4896, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $79, %rcx
rep movsw
and $65201, %r13
lea addresses_WC_ht+0x15f16, %rbx
nop
nop
nop
add %rcx, %rcx
mov (%rbx), %si
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x5b56, %rsi
lea addresses_normal_ht+0x1276a, %rdi
clflush (%rsi)
nop
nop
nop
dec %r12
mov $66, %rcx
rep movsw
nop
cmp %r14, %r14
lea addresses_A_ht+0x5906, %rsi
lea addresses_D_ht+0x19096, %rdi
clflush (%rsi)
clflush (%rdi)
sub $25895, %r10
mov $44, %rcx
rep movsw
cmp $52844, %rsi
lea addresses_normal_ht+0x1b256, %r13
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r13)
sub $62252, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_PSE+0x1896, %r8
nop
nop
nop
add $18665, %rax
movaps (%r8), %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'45': 3342, '30': 1, '00': 17556, '48': 52, '46': 877, '35': 1}
00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 46 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 46 00 46 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 00 45 46 00 00 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 45 00 00 46 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00
*/
