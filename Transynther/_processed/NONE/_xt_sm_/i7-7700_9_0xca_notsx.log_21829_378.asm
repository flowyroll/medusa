.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6adc, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x781c, %rsi
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
add %r15, %r15
lea addresses_A_ht+0xdedc, %rsi
lea addresses_D_ht+0x64dc, %rdi
and $34738, %rbp
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x157dc, %rbp
nop
nop
sub $51296, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
add $5796, %r15
lea addresses_D_ht+0x16adc, %rsi
lea addresses_WT_ht+0x3adc, %rdi
nop
nop
nop
nop
dec %rdx
mov $36, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1bf40, %rsi
lea addresses_UC_ht+0x14164, %rdi
add $59014, %r11
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x2fbd, %rbp
nop
nop
nop
nop
nop
and $9180, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rbp)
nop
inc %rdx
lea addresses_UC_ht+0x705c, %rdx
nop
nop
dec %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x345c, %rsi
lea addresses_WC_ht+0x1a85c, %rdi
nop
nop
add $60358, %r15
mov $85, %rcx
rep movsw
cmp $22180, %rsi
lea addresses_WT_ht+0x1114c, %rdx
nop
nop
nop
xor $31612, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xaec, %rcx
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x11adc, %rsi
clflush (%rsi)
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_WT+0xe5d2, %rsi
lea addresses_A+0x1d80c, %rdi
nop
nop
nop
sub %r8, %r8
mov $70, %rcx
rep movsw
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_normal+0x1eb3e, %rsi
lea addresses_A+0x2adc, %rdi
xor $38436, %rax
mov $27, %rcx
rep movsq
nop
and $19250, %rdi

// Store
lea addresses_normal+0xd86e, %r15
nop
cmp $43754, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
xor %rax, %rax

// Load
lea addresses_normal+0x1471c, %rdi
nop
nop
nop
nop
inc %r8
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
nop
add $56826, %r8

// Store
lea addresses_D+0x9806, %rsi
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_D+0x1b2dc, %rdi
add %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rdi)

// Exception!!!
mov (0), %rax
nop
nop
nop
add $12354, %r15

// Store
lea addresses_RW+0xa1dc, %r8
nop
sub $19443, %rax
movw $0x5152, (%r8)
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_D+0x1b2dc, %rax
add $34891, %r15
mov (%rax), %r8d
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
