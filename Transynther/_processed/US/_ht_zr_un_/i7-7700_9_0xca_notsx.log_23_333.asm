.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x87f, %r13
and $7900, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
nop
sub %r14, %r14
lea addresses_WC_ht+0x8f43, %rsi
lea addresses_WT_ht+0x173bf, %rdi
nop
nop
inc %rbx
mov $88, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1cddf, %r14
clflush (%r14)
xor %r13, %r13
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x190bf, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
sub $36913, %r13
lea addresses_normal_ht+0xb107, %rsi
lea addresses_A_ht+0x1a75f, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $103, %rcx
rep movsw
cmp $31758, %r11
lea addresses_WT_ht+0x537f, %rbx
nop
sub %rdi, %rdi
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
nop
sub $15660, %rbx
lea addresses_UC_ht+0x1eecd, %rsi
lea addresses_normal_ht+0x101cf, %rdi
nop
nop
and %rbx, %rbx
mov $28, %rcx
rep movsb
nop
sub $10134, %r13
lea addresses_D_ht+0xa67f, %r8
nop
nop
xor $65355, %rcx
mov (%r8), %ebx
and $3154, %rsi
lea addresses_UC_ht+0xcbbf, %rdi
nop
nop
sub %rbx, %rbx
movb $0x61, (%rdi)
cmp %r11, %r11
lea addresses_WT_ht+0x139df, %rsi
lea addresses_WC_ht+0x87f, %rdi
nop
add %r13, %r13
mov $42, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x438f, %rsi
lea addresses_normal_ht+0x1b793, %rdi
nop
nop
nop
cmp $13792, %r13
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1b17f, %r11
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r11
vmovntdq %ymm7, (%r11)
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x16bff, %r10
nop
lfence
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
add %r15, %r15

// Load
lea addresses_WC+0x1c27f, %r15
nop
sub %r8, %r8
movb (%r15), %r10b
nop
nop
nop
nop
nop
sub %r10, %r10

// Load
lea addresses_WT+0x1167f, %r15
nop
nop
nop
nop
lfence
mov (%r15), %r10d
nop
add %r10, %r10

// Store
lea addresses_UC+0x2ff, %r10
and $35393, %rax
movb $0x51, (%r10)
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0x1917f, %rsi
nop
nop
nop
nop
nop
cmp $50676, %r8
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 10, '49': 4, '44': 2, 'ff': 1, '46': 6}
00 00 00 46 ff 00 44 00 00 49 49 44 00 46 46 46 49 00 00 49 46 46 00
*/
