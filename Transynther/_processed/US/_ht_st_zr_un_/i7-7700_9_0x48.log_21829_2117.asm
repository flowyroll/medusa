.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x31b8, %rsi
lea addresses_A_ht+0x8b78, %rdi
nop
xor $13184, %r15
mov $81, %rcx
rep movsl
cmp %r12, %r12
lea addresses_A_ht+0x12db8, %rbp
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
lfence
lea addresses_WT_ht+0xceb8, %rsi
lea addresses_UC_ht+0x6c8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %r8, %r8
mov $74, %rcx
rep movsl
add %rdi, %rdi
lea addresses_WT_ht+0x1a7d8, %rdi
nop
nop
nop
cmp %rsi, %rsi
movb (%rdi), %r15b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0xbdd8, %r15
nop
nop
nop
nop
nop
inc %r9
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xa34, %rsi
lea addresses_A_ht+0x1e686, %rdi
nop
nop
inc %r9
mov $39, %rcx
rep movsq
and %r9, %r9
lea addresses_WT_ht+0x9eb8, %rcx
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rcx)
dec %rcx
lea addresses_WT_ht+0xc0d8, %rdi
nop
cmp %r15, %r15
mov (%rdi), %r9
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x478, %r9
nop
nop
nop
nop
nop
add $33959, %rsi
movb $0x61, (%r9)
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1ad8, %rsi
lea addresses_UC_ht+0x5e42, %rdi
nop
nop
and $32303, %r12
mov $0, %rcx
rep movsw
sub $18917, %r12
lea addresses_A_ht+0xbeb8, %rsi
lea addresses_A_ht+0xb696, %rdi
add $63062, %r8
mov $127, %rcx
rep movsq
nop
nop
nop
nop
and $9479, %rsi
lea addresses_D_ht+0x27b8, %r12
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r12
movaps %xmm5, (%r12)
cmp $20506, %rbp
lea addresses_WC_ht+0xe638, %rsi
nop
nop
nop
nop
and $20392, %r8
mov (%rsi), %rdi
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x13c78, %rbp
nop
nop
nop
nop
nop
xor $25897, %r12
mov (%rbp), %cx
nop
nop
nop
nop
and $42513, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0xaab8, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $40243, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_WC+0xcdc0, %rsi
nop
cmp $24865, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
add %r15, %r15

// Faulty Load
lea addresses_US+0x12eb8, %r10
dec %rsi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'53': 1282, 'e0': 1, '47': 1568, '01': 2084, '50': 4, '00': 2672, '49': 3212, '44': 1, '46': 5, 'ff': 10974, '45': 26}
49 ff ff 49 ff ff 49 ff ff 01 ff ff 01 47 49 ff ff 01 47 ff ff 49 ff ff ff 49 ff 49 ff ff 01 ff 47 ff 49 47 ff ff 47 49 ff 49 ff ff ff ff 01 ff 49 49 ff ff ff 49 ff 49 00 ff 49 ff 53 ff ff 01 ff 49 ff 01 ff 00 49 49 ff 49 ff ff ff ff ff ff ff 01 ff ff 01 53 49 00 47 49 ff ff ff 49 ff 49 00 47 53 ff ff 49 47 47 49 ff 49 ff 00 ff ff 53 ff ff ff ff 01 ff 00 47 00 ff ff ff 01 47 53 ff ff 53 49 ff 49 ff ff ff 53 ff 01 ff ff 01 49 47 ff ff ff ff 49 00 ff 01 00 ff 01 ff ff 47 49 ff ff 01 ff 01 ff 01 ff ff 00 53 ff 00 ff ff 49 ff 49 ff ff 01 47 ff 01 53 ff 53 ff 53 ff ff 47 ff 49 ff ff 47 ff ff ff 49 ff 49 ff 49 47 ff ff 01 00 53 ff 01 49 ff 49 ff ff 00 ff ff ff 00 49 00 00 49 00 00 49 ff ff ff 49 ff 49 00 ff 00 00 ff ff 00 ff ff ff 01 47 49 47 ff 49 47 00 ff ff ff ff ff 01 53 00 ff 49 ff ff ff 00 49 ff 49 47 00 49 ff 49 ff ff 47 ff ff 00 ff ff ff 47 ff 00 ff 00 ff 53 49 ff ff ff ff 00 ff 01 ff 47 ff 01 ff 49 ff 01 49 00 ff 49 00 00 49 ff 49 00 ff ff ff 49 00 ff ff ff ff ff 01 ff ff ff ff ff ff ff 49 ff 00 49 47 00 47 ff 49 ff 49 ff 49 ff 49 ff 49 00 ff 49 ff ff 00 ff ff ff ff ff ff 00 ff 01 ff ff 49 ff 01 ff ff 49 ff 01 49 ff ff ff ff 01 49 ff 49 00 ff ff ff 49 00 00 53 ff ff 00 ff 47 ff ff ff 01 ff 00 00 ff 49 ff ff 01 49 ff 01 49 47 00 ff 00 ff ff ff ff 01 00 ff ff 49 ff 01 ff 01 ff ff ff ff 01 00 53 ff 01 49 ff 49 ff 49 47 00 ff ff 49 49 ff ff 47 49 ff ff 49 47 ff 49 53 ff 49 ff ff 49 ff 53 ff 49 ff 49 ff 49 49 ff ff ff ff ff ff 01 ff 49 ff ff 01 ff 49 ff 49 ff 01 ff 01 ff ff ff ff 01 ff 53 00 ff ff ff ff ff ff 00 ff 01 53 49 ff 49 ff ff 01 ff 01 00 49 ff ff 01 ff ff 01 ff ff ff 49 ff 01 ff 01 ff 01 ff ff 01 ff 49 ff 49 ff ff ff 00 ff ff 49 50 ff ff ff ff 47 49 47 47 ff 47 ff ff ff 49 ff 01 49 00 ff 49 00 ff 47 00 ff ff 49 ff 49 00 ff ff ff ff 00 ff 01 ff 49 00 ff ff ff 49 53 00 ff 00 ff ff ff 47 49 ff ff ff ff ff ff ff 49 ff 01 49 47 00 ff ff 49 00 00 49 ff ff 47 ff ff ff 00 ff 47 ff 49 47 47 49 45 ff 49 ff 49 ff ff ff ff ff ff ff 49 ff ff ff ff 00 ff 49 ff ff 01 ff ff 47 ff ff 49 ff ff 01 ff 49 ff ff 01 ff ff ff 49 ff 01 ff ff 53 47 ff ff ff 53 ff 01 49 ff ff 47 ff 47 49 ff ff 01 ff 49 00 ff ff 01 ff 01 ff 49 ff ff 00 47 49 ff 01 ff 47 ff ff 01 ff 01 00 ff 01 00 47 ff 53 00 ff ff 47 ff ff ff 01 ff 47 49 ff 49 ff ff ff 53 ff 01 49 47 00 ff 53 ff ff ff ff 49 00 49 00 ff 00 49 ff 49 00 47 53 ff 49 ff 49 53 ff ff 00 ff 49 ff ff 53 ff ff ff 01 ff ff 47 53 ff 01 ff 01 53 47 ff 00 ff 00 ff ff 53 ff ff 01 ff 49 ff ff 01 ff ff 01 00 ff 01 ff 49 00 00 49 00 49 ff 49 47 49 00 ff 00 ff 00 49 ff ff ff ff ff 01 47 49 ff ff ff ff 01 00 ff 00 53 ff 49 ff ff 47 53 ff 53 45 ff 49 ff 53 ff ff ff 01 49 ff 01 47 49 53 ff 49 ff ff ff 47 ff ff 49 ff 49 ff ff 47 ff 01 ff 49 ff 53 00 47 ff ff ff ff 01 ff ff 00 49 ff ff 01 ff 47 49 ff ff ff ff ff 49 ff ff ff 47 ff 01 ff ff 01 47 49 49 47 49 ff 49 ff ff ff ff ff 00 ff ff 01 49 ff ff 00 ff 00 49 53 ff 49 ff 53 ff ff 49 47 47 ff ff ff 01 ff ff 01 49 ff ff 01 ff 01 ff 49 00 00 ff 49 00 ff ff 47 ff 47 ff ff 53 ff 01 ff 01 49 ff
*/
