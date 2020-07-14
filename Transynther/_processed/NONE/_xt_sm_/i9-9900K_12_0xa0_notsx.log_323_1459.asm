.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x7493, %rdx
cmp %rbp, %rbp
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
and $22802, %r13
lea addresses_WC_ht+0x4623, %r8
nop
and $5393, %rbx
mov (%r8), %dx
xor %rbx, %rbx
lea addresses_A_ht+0x7623, %rsi
lea addresses_WT_ht+0x913b, %rdi
nop
nop
nop
nop
nop
xor $6721, %r8
mov $64, %rcx
rep movsl
sub %r13, %r13
lea addresses_D_ht+0x1a27, %rcx
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
add $18623, %rsi
lea addresses_A_ht+0x1477f, %rbp
nop
cmp %rbx, %rbx
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xf2c3, %rsi
lea addresses_normal_ht+0x1623, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $126, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x13623, %rdi
cmp $54997, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
dec %rdx
lea addresses_WT_ht+0x1ead3, %r8
nop
add $56440, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor $1613, %rdx
lea addresses_normal_ht+0x1d223, %rsi
lea addresses_A_ht+0xc1a3, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $35, %rcx
rep movsq
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x1d0ea, %rsi
lea addresses_A_ht+0x11523, %rdi
nop
nop
nop
nop
dec %rbp
mov $121, %rcx
rep movsw
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x9703, %r8
clflush (%r8)
nop
and $31681, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
and $39940, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0xbb53, %rdx
nop
nop
nop
xor %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x1f623, %rbp
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovntdq %ymm2, (%rbp)
nop
nop
dec %r15

// Faulty Load
lea addresses_A+0x1f623, %rdx
nop
xor $28216, %rbp
mov (%rdx), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'58': 323}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
