.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13c17, %rsi
lea addresses_A_ht+0x57db, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x1089b, %rsi
lea addresses_D_ht+0xb77b, %rdi
nop
nop
xor $54498, %r8
mov $49, %rcx
rep movsb
nop
nop
nop
sub $1211, %rsi
lea addresses_WT_ht+0x1c29b, %rsi
lea addresses_WT_ht+0x1d257, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $28, %rcx
rep movsl
nop
nop
add $58020, %r9
lea addresses_WC_ht+0xaa5b, %rsi
nop
nop
nop
dec %rax
movb (%rsi), %r10b
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1ce9b, %r10
nop
nop
cmp $30366, %rax
mov (%r10), %r9
nop
nop
inc %rsi
lea addresses_WT_ht+0xdbfb, %r9
inc %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
sub $26358, %rsi
lea addresses_WT_ht+0x1189b, %rax
clflush (%rax)
cmp $27489, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rax
movntdq %xmm1, (%rax)
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x949b, %rsi
lea addresses_A_ht+0x1a59b, %rdi
nop
inc %r14
mov $61, %rcx
rep movsl
add $44966, %r14
lea addresses_UC_ht+0x114b6, %r8
nop
nop
nop
inc %r14
mov (%r8), %r10
nop
nop
cmp $28856, %rdi
lea addresses_normal_ht+0x74eb, %rsi
lea addresses_WT_ht+0x4ebb, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $47, %rcx
rep movsl
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx

// Load
mov $0x99b, %r15
nop
nop
nop
nop
add %r8, %r8
mov (%r15), %r10d
nop
nop
nop
sub $21956, %r10

// Faulty Load
lea addresses_A+0x529b, %rbx
xor $49746, %r13
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'08': 1, '44': 4982, '45': 16831, '49': 1, '00': 14}
45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 44 44 44 45 44 44 44 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 44 44 45 45 45 44 45 45 45 45 44 44 45 44 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 44 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 44 44 44 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 44 44 44 44 45 45 45 44 45 44 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 45 44 45 45 44 44 44 44 45 44 45 45 45 45 45 44 45 44 45 45 44 44 44 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 45 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 44 44 44 45 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 00 45 44 45 45 45 44 45 44 45 45 45 45 44 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 44 45 45 45 45 45 44 45 45 44 45 44 45 44 45 44 45 45 45 45 45 44 45 45 44 44 45 45 45 44 44 45 45 44 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 44 45 44 45 45 45 45 45 44 45 44 45 45 45 45 44 45
*/
