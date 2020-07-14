.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf30d, %r14
nop
nop
nop
add $44577, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
nop
and $20045, %r15
lea addresses_normal_ht+0x1bccd, %rsi
lea addresses_WT_ht+0x9c0d, %rdi
xor $52455, %r14
mov $121, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x118e7, %rsi
clflush (%rsi)
nop
nop
add %r11, %r11
movb (%rsi), %r14b
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x13d6d, %r11
nop
nop
xor %rdi, %rdi
movb $0x61, (%r11)
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1e581, %rcx
sub %r13, %r13
mov (%rcx), %r11w
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xdcf9, %rsi
lea addresses_WT_ht+0xc6e9, %rdi
nop
and $50347, %r15
mov $48, %rcx
rep movsb
nop
xor %r14, %r14
lea addresses_WC_ht+0x741d, %r15
nop
nop
nop
and $17858, %rdi
mov (%r15), %esi
nop
nop
xor $34215, %r15
lea addresses_normal_ht+0x174ad, %rsi
lea addresses_WT_ht+0x1efa8, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r9, %r9
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
add $27231, %r15
lea addresses_WC_ht+0x14b85, %rsi
lea addresses_A_ht+0x6ead, %rdi
nop
sub $49265, %r13
mov $69, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1892d, %r9
nop
nop
nop
cmp %r15, %r15
mov (%r9), %ecx
nop
nop
nop
add $2852, %r13
lea addresses_A_ht+0x12aad, %rsi
nop
inc %r14
mov (%rsi), %cx
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x1b9ed, %rsi
lea addresses_D_ht+0x1253d, %rdi
clflush (%rsi)
nop
cmp %r14, %r14
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x19ea5, %r14
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
sub $56892, %r11
lea addresses_D_ht+0x1d24d, %r11
nop
xor $3005, %rdi
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1caad, %rbx
cmp %r10, %r10
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
add $13309, %r8

// REPMOV
lea addresses_normal+0x1fc4d, %rsi
lea addresses_UC+0x1caad, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $46, %rcx
rep movsq
inc %rbx

// Faulty Load
lea addresses_UC+0x1caad, %r14
nop
nop
sub %r10, %r10
movb (%r14), %bl
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'34': 6572}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
