.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a825, %rsi
lea addresses_D_ht+0x1759d, %rdi
nop
nop
dec %r10
mov $68, %rcx
rep movsl
nop
nop
nop
nop
and $56366, %r9
lea addresses_UC_ht+0xbc55, %r10
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r10
movntdq %xmm7, (%r10)
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x3be1, %r14
clflush (%r14)
nop
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r14)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xa555, %r10
add $13626, %r9
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x1cd05, %rsi
lea addresses_UC_ht+0x13a7, %rdi
inc %r13
mov $29, %rcx
rep movsw
nop
dec %rdi
lea addresses_normal_ht+0x5bf5, %r13
clflush (%r13)
nop
dec %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x6755, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xaec9, %r10
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r10), %edi
dec %r14
lea addresses_A_ht+0x1cf05, %rdi
nop
nop
nop
nop
sub $6284, %r10
movl $0x61626364, (%rdi)
nop
sub %r10, %r10
lea addresses_WC_ht+0x100d3, %rsi
lea addresses_D_ht+0x10985, %rdi
nop
nop
cmp $15540, %r9
mov $77, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xa7dd, %r14
nop
cmp $23313, %r9
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm2
vpextrq $0, %xmm2, %r13
cmp $19929, %rcx
lea addresses_UC_ht+0xea55, %r10
nop
nop
nop
nop
xor $47404, %r9
mov (%r10), %esi
cmp $7739, %r10
lea addresses_WT_ht+0x15cf5, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
add $50481, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xbd5, %rsi
lea addresses_D+0x184cd, %rdi
nop
sub %rbp, %rbp
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x1655, %r15
sub $18318, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
xor $56701, %r8

// Store
mov $0x46541300000009b5, %r8
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x1d14390000000755, %r15
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_UC+0x1aa55, %rsi
nop
add $8630, %r8
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
