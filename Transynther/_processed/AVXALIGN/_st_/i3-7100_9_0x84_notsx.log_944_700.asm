.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5c8f, %rsi
lea addresses_WC_ht+0x13997, %rdi
clflush (%rdi)
nop
nop
cmp $6212, %r13
mov $80, %rcx
rep movsl
xor $61615, %rdi
lea addresses_normal_ht+0xc78f, %r11
nop
nop
nop
nop
dec %rsi
movb $0x61, (%r11)
xor $51294, %r8
lea addresses_UC_ht+0x199bb, %rsi
lea addresses_UC_ht+0x1d38f, %rdi
nop
nop
nop
nop
sub $30640, %r15
mov $97, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_WT_ht+0xec5f, %rcx
cmp $40047, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x9f8f, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
nop
sub $35851, %rdi
lea addresses_WC_ht+0xdf8f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r11), %r15b
nop
nop
nop
nop
sub $11273, %rcx
lea addresses_normal_ht+0x1cf8f, %rcx
nop
nop
nop
nop
sub $18625, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
inc %r15
lea addresses_WT_ht+0x1364f, %rsi
lea addresses_normal_ht+0x1d1d6, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $57, %rcx
rep movsb
nop
sub $10413, %r13
lea addresses_normal_ht+0xbc7b, %rsi
lea addresses_WC_ht+0xe10f, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $95, %rcx
rep movsl
cmp %rax, %rax
lea addresses_A_ht+0x14b8f, %r11
nop
nop
nop
nop
xor %r8, %r8
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rdi
add $30876, %rsi
lea addresses_UC_ht+0x56f, %r11
nop
nop
nop
and $55677, %r13
movl $0x61626364, (%r11)
nop
cmp $32140, %r11
lea addresses_normal_ht+0x13bcf, %r15
nop
sub $39668, %rcx
movw $0x6162, (%r15)
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x4f8f, %r13
nop
nop
inc %rax
movb (%r13), %r15b
nop
nop
nop
nop
add $54983, %rax
lea addresses_normal_ht+0xa68f, %r8
nop
sub $30408, %rax
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
sub $33133, %r11
lea addresses_D_ht+0x1af8f, %rsi
lea addresses_WC_ht+0x438f, %rdi
add $48709, %r11
mov $63, %rcx
rep movsw
nop
nop
sub $56464, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rsi

// Store
lea addresses_UC+0x184ef, %r12
nop
nop
nop
nop
nop
sub $37264, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r12)
nop
nop
cmp $38224, %r11

// Store
lea addresses_D+0x478f, %r11
nop
nop
nop
nop
nop
sub $19020, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r11)
nop
nop
xor $29514, %rcx

// Load
lea addresses_D+0x1817f, %r11
nop
nop
nop
add $51225, %r14
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r13
nop
and $12455, %r12

// Store
lea addresses_US+0x7b8f, %rcx
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovntdq %ymm3, (%rcx)
nop
nop
nop
nop
nop
and $39291, %r13

// Faulty Load
lea addresses_RW+0xe78f, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r13), %r12b
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'32': 944}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
