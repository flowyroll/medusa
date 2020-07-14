.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3253, %rdx
nop
add %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x3721, %r9
add $62650, %r15
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor $22598, %rdx
lea addresses_D_ht+0x485b, %r13
nop
nop
nop
cmp %rdx, %rdx
mov (%r13), %r12
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x3a53, %r15
nop
inc %r13
mov (%r15), %rsi
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x2362, %r13
nop
nop
nop
and $51986, %r14
mov (%r13), %r9d
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0xa253, %rsi
nop
nop
nop
cmp %r14, %r14
movb (%rsi), %r12b
nop
cmp %r15, %r15
lea addresses_D_ht+0xebb3, %r12
lfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r12)
nop
add %rsi, %rsi
lea addresses_A_ht+0xd2eb, %r14
add $158, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r14
movntdq %xmm7, (%r14)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x11453, %r15
nop
nop
nop
nop
nop
sub $8773, %r14
mov (%r15), %r13w
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x1ee13, %rsi
lea addresses_normal_ht+0x43d3, %rdi
clflush (%rsi)
nop
nop
and %r14, %r14
mov $5, %rcx
rep movsw
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x7cd3, %rsi
lea addresses_UC_ht+0x1f53, %rdi
nop
xor $10298, %r15
mov $115, %rcx
rep movsq
nop
nop
nop
add $4969, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x8a73, %rsi
lea addresses_WC+0x6453, %rdi
nop
sub $58639, %r9
mov $15, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_UC+0xa053, %r13
cmp $27378, %r15
movb (%r13), %cl
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
mov $0x2a93090000000a53, %rsi
nop
nop
nop
nop
nop
add $1786, %r12
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'00': 1}
00
*/
