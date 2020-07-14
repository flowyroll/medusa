.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1478, %rsi
lea addresses_D_ht+0x1821c, %rdi
nop
nop
nop
nop
nop
sub $57638, %r11
mov $40, %rcx
rep movsl
nop
nop
dec %rbx
lea addresses_A_ht+0x1139c, %rsi
lea addresses_WT_ht+0x1862c, %rdi
nop
and %r9, %r9
mov $126, %rcx
rep movsb
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x601c, %rsi
lea addresses_A_ht+0x1021c, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r15, %r15
mov $98, %rcx
rep movsb
sub $24427, %r9
lea addresses_WT_ht+0xb010, %rsi
lea addresses_WC_ht+0x1d464, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
and $61228, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0xf01c, %r11
nop
nop
nop
nop
nop
sub $58206, %rbp
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
cmp $1795, %rbp

// REPMOV
lea addresses_PSE+0x1665c, %rsi
lea addresses_normal+0xbd5c, %rdi
nop
xor %rdx, %rdx
mov $48, %rcx
rep movsw
nop
nop
and $60123, %rdi

// Store
lea addresses_UC+0x8a6e, %rcx
nop
nop
dec %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movntdq %xmm4, (%rcx)
nop
sub %rdx, %rdx

// Load
lea addresses_A+0x1321c, %rbp
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rbp), %r14w
cmp $32884, %r12

// Store
lea addresses_D+0x1961c, %rbp
nop
add %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovaps %ymm1, (%rbp)
and $30583, %rdi

// Load
lea addresses_WC+0x1e81c, %rsi
nop
dec %rbp
mov (%rsi), %cx
nop
nop
nop
add $33282, %rcx

// Load
lea addresses_D+0x118fc, %rdx
nop
nop
nop
nop
add %r14, %r14
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_A+0x1321c, %r12
and %rsi, %rsi
movups (%r12), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'00': 285}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
