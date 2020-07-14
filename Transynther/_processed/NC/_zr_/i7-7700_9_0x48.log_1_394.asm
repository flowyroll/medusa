.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16a01, %rdx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rdx), %r13w
nop
nop
nop
nop
nop
add $18887, %rbx
lea addresses_D_ht+0x8201, %rsi
lea addresses_UC_ht+0x1ae01, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $43419, %rsi
lea addresses_D_ht+0x13c9, %rdx
clflush (%rdx)
cmp $29162, %rcx
movb (%rdx), %r13b
nop
and %rdx, %rdx
lea addresses_WC_ht+0x11d01, %rbx
nop
nop
nop
nop
and $35594, %rcx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
dec %rsi
lea addresses_WT_ht+0x13881, %rsi
lea addresses_UC_ht+0x14fb9, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r10
mov $123, %rcx
rep movsb
xor $47084, %rdi
lea addresses_normal_ht+0xde01, %rsi
lea addresses_WC_ht+0x1d01, %rdi
nop
nop
nop
inc %r13
mov $18, %rcx
rep movsb
nop
xor %rdx, %rdx
lea addresses_A_ht+0x2501, %rsi
lea addresses_UC_ht+0x1404d, %rdi
nop
nop
nop
nop
lfence
mov $65, %rcx
rep movsb
nop
sub $60183, %rdi
lea addresses_A_ht+0xc481, %rsi
lea addresses_A_ht+0xfe01, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r13
mov $25, %rcx
rep movsq
nop
and %r10, %r10
lea addresses_WT_ht+0x1bd01, %r13
sub %rcx, %rcx
movl $0x61626364, (%r13)
sub %rsi, %rsi
lea addresses_A_ht+0x169, %r13
nop
nop
nop
sub $51733, %rcx
mov (%r13), %rbp
nop
nop
nop
add $33939, %r13
lea addresses_A_ht+0xd001, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0xcf41, %rsi
lea addresses_normal_ht+0xc601, %rdi
cmp %r10, %r10
mov $21, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1fe9, %rbx
nop
and $1428, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rbx)
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x7e01, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub %r14, %r14

// REPMOV
lea addresses_WC+0xdb01, %rsi
lea addresses_RW+0x11821, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $53882, %rdi

// Faulty Load
mov $0x58f9860000000601, %r15
nop
nop
nop
cmp $25421, %r8
mov (%r15), %r13d
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'00': 1}
00
*/
