.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3f53, %rdi
sub %rbx, %rbx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
nop
and $24007, %r8
lea addresses_normal_ht+0x14af3, %rsi
nop
nop
nop
nop
nop
and $64089, %rdi
mov (%rsi), %r8w
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x123af, %r8
cmp %r14, %r14
movb $0x61, (%r8)
cmp $25163, %rdi
lea addresses_WC_ht+0x187eb, %rsi
lea addresses_D_ht+0x4abb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $125, %rcx
rep movsl
inc %r12
lea addresses_A_ht+0x1ee73, %rcx
nop
nop
nop
nop
cmp $48988, %rdi
mov (%rcx), %bp
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x10673, %rbp
clflush (%rbp)
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0xda73, %rsi
lea addresses_UC_ht+0xb8ad, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $71, %rcx
rep movsb
and %r12, %r12
lea addresses_A_ht+0x10273, %r12
nop
xor $17296, %r14
movups (%r12), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x12ab3, %rsi
lea addresses_normal_ht+0x8fd3, %rdi
nop
nop
nop
nop
nop
xor $14904, %r12
mov $66, %rcx
rep movsl
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x1d673, %rsi
lea addresses_WT_ht+0x19363, %rdi
clflush (%rdi)
xor %r12, %r12
mov $80, %rcx
rep movsq
nop
nop
cmp $52932, %r8
lea addresses_WT_ht+0x3673, %rsi
lea addresses_A_ht+0x6113, %rdi
nop
nop
nop
sub %r12, %r12
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x152fb, %rsi
lea addresses_WT_ht+0x9873, %rdi
xor $8347, %r14
mov $73, %rcx
rep movsb
nop
nop
xor $22510, %rdi
lea addresses_WC_ht+0x1de73, %r12
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r12)
nop
xor $22218, %rsi
lea addresses_A_ht+0x10c73, %r14
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0xd69f, %r10
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0x1697f, %r14
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r14)
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_normal+0xbe73, %rdx
nop
nop
nop
nop
sub %r11, %r11
movb (%rdx), %bl
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
