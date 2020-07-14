.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x104f, %r10
nop
nop
nop
nop
inc %rax
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
cmp $5784, %r15
lea addresses_WC_ht+0x196d3, %rsi
lea addresses_UC_ht+0x4c4f, %rdi
cmp $4452, %rdx
mov $61, %rcx
rep movsl
nop
cmp $52316, %r15
lea addresses_WC_ht+0x1514f, %r15
nop
nop
nop
nop
cmp %rax, %rax
movb (%r15), %r10b
sub %r10, %r10
lea addresses_A_ht+0x504f, %rcx
xor $17930, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
and %rax, %rax
lea addresses_WT_ht+0x2a9e, %rsi
lea addresses_A_ht+0xb44f, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $80, %rcx
rep movsq
nop
cmp $19870, %r10
lea addresses_WT_ht+0x204f, %rsi
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
cmp $36564, %r12
lea addresses_WT_ht+0xc04f, %rcx
nop
nop
nop
nop
cmp %r10, %r10
mov (%rcx), %di
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x12351, %rdi
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xf84f, %rsi
lea addresses_WC_ht+0x7ccf, %rdi
nop
nop
nop
cmp $45135, %r15
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
add $64386, %r12
lea addresses_WC_ht+0x546f, %rsi
lea addresses_WT_ht+0x5e4f, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $77, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1a6bf, %rsi
lea addresses_A_ht+0x1acdf, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $74, %rcx
rep movsw
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rdx

// Store
lea addresses_UC+0x1def, %r10
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
sub $45811, %rdx

// Store
lea addresses_D+0x132cf, %r11
nop
nop
xor $42813, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x10f62, %r11
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r11)
sub %r14, %r14

// Store
mov $0x51100f0000000ccb, %rdx
cmp $17805, %rbp
movl $0x51525354, (%rdx)
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x404f, %r13
nop
xor %rbp, %rbp
vmovaps (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'00': 658, '49': 4}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
