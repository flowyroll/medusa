.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x986b, %rsi
lea addresses_normal_ht+0x1aae1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rax
mov $60, %rcx
rep movsb
nop
nop
nop
nop
nop
and $43211, %r9
lea addresses_WC_ht+0x5c6b, %r12
nop
nop
and $21053, %r9
mov (%r12), %cx
nop
nop
sub $6526, %rdi
lea addresses_D_ht+0xf46b, %r9
nop
sub $43221, %r8
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xed6b, %rax
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rax)
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xe04f, %rsi
lea addresses_UC_ht+0xb7cb, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $3799, %rbp
mov $100, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_A_ht+0xe96b, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1ebeb, %r9
cmp %r12, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %r9
movaps %xmm2, (%r9)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xae8b, %rsi
lea addresses_WC_ht+0x346b, %rdi
clflush (%rsi)
nop
add $20553, %r8
mov $63, %rcx
rep movsl
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1b46b, %rsi
lea addresses_A_ht+0x74eb, %rdi
nop
nop
inc %r9
mov $93, %rcx
rep movsb
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0xec47, %rcx
nop
nop
and $37568, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x596b, %rsi
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0xacab, %rsi
lea addresses_A_ht+0x1355a, %rdi
nop
nop
nop
nop
nop
cmp $44527, %r8
mov $99, %rcx
rep movsb
nop
nop
and %rax, %rax
lea addresses_D_ht+0x889b, %r12
cmp %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r12
movaps %xmm3, (%r12)
and %rbp, %rbp
lea addresses_WC_ht+0x1ac6b, %rsi
lea addresses_WC_ht+0x11d63, %rdi
nop
nop
nop
xor $64904, %rax
mov $104, %rcx
rep movsl
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x13bfb, %rbp
nop
nop
xor $10829, %rax
movb $0x51, (%rbp)
nop
nop
xor %r12, %r12

// REPMOV
lea addresses_WC+0x2c6b, %rsi
lea addresses_WT+0x5c6b, %rdi
nop
nop
nop
cmp $58654, %rbp
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x1946b, %r14
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_D+0x15ceb, %r11
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r11)
sub %rax, %rax

// REPMOV
lea addresses_PSE+0x556b, %rsi
lea addresses_WT+0x5c6b, %rdi
nop
add $55205, %r12
mov $8, %rcx
rep movsw
nop
nop
nop
nop
add $7300, %rcx

// Faulty Load
lea addresses_WT+0x5c6b, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
