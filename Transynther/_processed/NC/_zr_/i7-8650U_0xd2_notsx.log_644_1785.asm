.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x4573, %rdx
add $33528, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x15d73, %rsi
lea addresses_normal_ht+0xebdb, %rdi
nop
sub %rdx, %rdx
mov $110, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1e073, %r15
nop
nop
nop
nop
nop
inc %rdx
mov (%r15), %ecx
nop
nop
add $26761, %r14
lea addresses_normal_ht+0xc173, %rsi
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and $47364, %rdx
lea addresses_WT_ht+0x41a9, %r15
nop
nop
nop
sub $56334, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0xa34d, %rdx
nop
nop
nop
nop
xor $22015, %r15
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
sub $36835, %rdi
lea addresses_WT_ht+0x14773, %rdi
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rdi)
nop
add %r14, %r14
lea addresses_UC_ht+0x1d073, %rsi
lea addresses_D_ht+0x3273, %rdi
and $40102, %r15
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $34397, %rsi
lea addresses_D_ht+0x2f73, %r13
nop
nop
nop
nop
add %r15, %r15
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
and $56760, %r14
lea addresses_A_ht+0x19673, %rsi
lea addresses_A_ht+0x16b73, %rdi
nop
nop
nop
cmp $44669, %r15
mov $41, %rcx
rep movsq
xor $57742, %rcx
lea addresses_UC_ht+0x14523, %rsi
lea addresses_normal_ht+0x573, %rdi
nop
nop
nop
nop
nop
and $18258, %rdx
mov $30, %rcx
rep movsb
nop
nop
nop
add $32200, %r14
lea addresses_A_ht+0x18573, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rdi), %r14b
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x529f, %rdi
nop
sub %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
add $13336, %rdx
lea addresses_A_ht+0x1d573, %r15
nop
and $27033, %rdx
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $64116, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0xed73, %rsi
lea addresses_D+0x8173, %rdi
nop
nop
nop
nop
add $5911, %rax
mov $0, %rcx
rep movsw
add $26840, %rcx

// Store
lea addresses_A+0x17f73, %r15
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_UC+0xd5f3, %r15
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovaps %ymm1, (%r15)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0x3497, %rcx
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
mov $0x56b8440000000573, %rax
nop
nop
xor %r8, %r8
mov (%rax), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'00': 644}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
