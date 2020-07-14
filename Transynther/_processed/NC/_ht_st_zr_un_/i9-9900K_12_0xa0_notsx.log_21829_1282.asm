.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc2a5, %r13
nop
xor $44733, %rdi
movb $0x61, (%r13)
nop
nop
nop
xor $48862, %rbp
lea addresses_normal_ht+0x173d5, %rsi
lea addresses_D_ht+0x29a5, %rdi
nop
nop
cmp $55387, %rbp
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x6235, %rsi
lea addresses_WT_ht+0x82a5, %rdi
clflush (%rsi)
nop
xor %r9, %r9
mov $86, %rcx
rep movsq
nop
nop
nop
nop
cmp $29834, %r9
lea addresses_WT_ht+0x1bbe5, %rsi
lea addresses_normal_ht+0x34c1, %rdi
nop
nop
nop
nop
nop
sub $945, %r8
mov $61, %rcx
rep movsw
nop
nop
nop
nop
cmp $51581, %r14
lea addresses_normal_ht+0x18625, %r14
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r14)
nop
add %r8, %r8
lea addresses_normal_ht+0x199c3, %r14
nop
nop
nop
and $18195, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1eb3d, %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1e663, %r9
nop
nop
nop
nop
sub $17547, %rdi
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xdb0d, %r13
add %r8, %r8
movb $0x61, (%r13)
nop
nop
nop
nop
nop
xor $42481, %rdi
lea addresses_A_ht+0x1d2a5, %rsi
lea addresses_UC_ht+0x10ca5, %rdi
nop
nop
xor %r9, %r9
mov $101, %rcx
rep movsl
nop
nop
nop
nop
and $31779, %rcx
lea addresses_WC_ht+0x14a71, %rsi
nop
and %r8, %r8
mov (%rsi), %r13w
nop
and %r8, %r8
lea addresses_D_ht+0x5505, %rcx
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %esi
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_normal+0xca9d, %r8
nop
nop
and %r10, %r10
movl $0x51525354, (%r8)
nop
nop
nop
and $23760, %r8

// Store
lea addresses_RW+0x7d25, %r8
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
nop
cmp $4467, %r9

// Faulty Load
mov $0x20a6be0000000aa5, %r10
sub %rsi, %rsi
movups (%r10), %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'08': 9, 'd4': 1, '44': 11016, '45': 4623, '37': 12, 'ff': 1, '46': 6, '49': 513, '00': 5648}
00 45 00 00 00 45 44 00 00 00 45 00 44 44 00 45 44 44 00 45 44 44 00 44 45 00 44 44 44 45 00 44 44 45 44 44 44 44 45 45 00 44 00 44 45 00 00 00 45 45 44 44 44 44 45 49 44 44 00 45 45 00 44 00 44 45 00 44 44 45 44 00 00 45 00 44 00 44 45 45 44 00 44 45 44 44 44 45 45 00 44 44 45 00 44 44 44 45 44 44 00 44 45 44 44 00 44 00 44 00 45 45 44 00 00 45 00 44 44 00 45 44 44 44 45 49 44 00 44 45 44 44 44 44 44 00 44 00 45 44 00 00 00 45 00 44 44 44 44 44 44 44 45 44 44 00 44 45 00 44 44 45 44 44 44 45 45 44 44 00 44 45 00 44 44 44 44 00 44 45 00 00 44 00 44 49 00 00 44 45 44 00 44 45 44 44 00 44 45 00 44 44 45 00 44 00 44 45 00 00 44 45 44 44 00 44 45 44 44 00 00 45 45 00 44 00 45 00 00 44 45 49 44 00 44 44 00 44 44 45 44 00 44 44 45 44 44 44 44 44 44 00 45 45 00 44 44 45 44 44 44 45 44 44 44 44 45 00 44 00 00 44 49 44 00 44 45 44 00 44 45 49 44 44 44 44 44 00 00 44 45 44 44 44 00 45 00 44 44 44 45 00 00 44 45 44 44 44 44 45 00 00 44 44 45 44 44 44 45 44 00 44 44 45 44 00 44 00 45 00 44 00 45 00 44 44 00 44 45 44 00 44 44 00 44 44 45 45 44 00 44 44 45 00 44 00 49 44 00 45 45 00 44 00 44 45 44 00 44 45 00 44 44 45 45 44 44 44 00 44 49 00 44 44 45 00 44 44 45 44 00 44 44 44 49 00 44 44 44 44 44 44 45 44 00 00 44 45 44 44 44 44 44 44 00 44 45 44 00 44 44 45 44 00 44 45 44 44 44 00 45 00 44 00 44 45 00 44 00 45 44 44 44 44 45 00 44 00 44 45 00 00 00 45 00 00 00 44 45 44 44 44 44 45 44 00 44 45 44 00 44 44 45 44 00 44 00 44 45 00 44 00 45 44 44 44 45 45 00 44 00 44 44 00 00 45 44 00 44 45 45 44 44 44 45 44 44 00 45 44 00 44 44 45 44 44 44 00 45 44 00 44 45 44 00 44 00 45 44 44 00 44 45 44 44 44 45 44 44 00 45 00 44 44 44 45 00 44 44 45 49 44 00 44 45 44 00 44 44 45 44 00 44 45 44 44 00 44 45 44 00 44 45 44 44 44 45 44 00 44 00 45 44 44 44 00 45 00 00 44 45 44 00 00 00 45 44 44 44 45 45 00 44 00 45 44 44 00 44 45 44 44 44 45 00 44 44 45 45 44 00 44 45 44 00 44 44 45 44 44 44 44 45 45 44 44 00 44 45 00 00 00 00 44 00 44 45 44 44 00 44 44 45 00 00 44 45 44 44 44 44 45 00 44 44 44 45 49 44 00 45 44 44 00 44 45 49 44 00 44 45 44 44 00 45 49 44 00 45 49 44 00 44 00 00 44 44 45 45 44 00 44 44 45 49 44 00 44 45 44 44 44 45 45 44 00 44 45 49 44 44 44 45 00 00 44 45 45 00 00 44 45 45 44 44 00 44 44 00 00 45 45 44 44 00 44 45 00 00 00 45 00 44 00 45 44 00 44 00 44 49 44 44 44 00 44 44 44 45 00 44 00 44 45 44 00 44 45 44 44 44 45 44 00 00 00 00 44 44 45 45 00 44 44 00 45 45 44 00 44 45 00 44 44 44 45 44 44 44 00 45 49 00 00 00 45 49 44 44 44 45 00 44 00 44 44 45 44 00 00 45 44 44 44 44 45 00 44 44 00 45 44 44 00 45 44 44 44 45 49 44 44 44 45 00 00 44 45 49 44 00 00 45 00 44 44 44 44 44 44 45 00 44 44 45 45 00 44 00 45 00 00 00 45 45 44 44 44 45 49 00 44 45 44 44 00 44 45 44 44 44 44 45 44 00 44 45 44 44 00 45 49 44 00 44 45 44 44 00 45 44 00 44 00 45 44 00 44 44 45 00 44 00 45 44 44 00 00 45 00 44 00 44 44 44 00 45 44 44 00 00 45 49 44 44 44 44 49 44 00 45 49 44 00 44 45 44 44 00 44 45 44 00 00 45 45 44 00 00 45 44 44 00 44 45 44 00 44 44 45 44 44 44 00 44 44 00 45 49 44
*/
