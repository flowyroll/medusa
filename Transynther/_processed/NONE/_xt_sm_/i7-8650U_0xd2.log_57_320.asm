.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11912, %rsi
lea addresses_normal_ht+0x11612, %rdi
nop
nop
nop
nop
nop
sub $64834, %r15
mov $86, %rcx
rep movsb
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xadf2, %r13
clflush (%r13)
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
nop
cmp $35382, %rbx
lea addresses_D_ht+0x168f2, %r15
xor %r14, %r14
movb (%r15), %cl
xor $10141, %rbx
lea addresses_WT_ht+0xa7be, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
nop
nop
and $47138, %r13
lea addresses_normal_ht+0xaef2, %rbx
nop
nop
nop
nop
dec %rcx
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
add $53077, %r13
lea addresses_WC_ht+0x1bef2, %rsi
and %rbx, %rbx
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x60c, %rsi
lea addresses_WT_ht+0x8af2, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $105, %rcx
rep movsl
nop
and $19687, %r13
lea addresses_WC_ht+0x1def2, %rbx
nop
inc %rsi
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
xor $14938, %rbx
lea addresses_UC_ht+0x6472, %r11
nop
nop
nop
nop
add %rcx, %rcx
mov (%r11), %bx
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x168f2, %rsi
lea addresses_UC_ht+0xf6f2, %rdi
nop
nop
nop
nop
nop
add $23681, %rbx
mov $50, %rcx
rep movsq
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rsi

// Store
lea addresses_normal+0x96f2, %r15
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
dec %r12

// Faulty Load
lea addresses_normal+0x96f2, %r11
dec %r13
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'58': 57}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
