.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x121b9, %r11
nop
sub $46386, %rdi
mov (%r11), %rbp
cmp $37101, %rax
lea addresses_WC_ht+0x11a66, %rbp
nop
add $54886, %r12
movb (%rbp), %dl
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1bb9, %r12
nop
nop
dec %r9
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
add $55938, %r12
lea addresses_WC_ht+0x113f5, %r11
sub $11502, %rdx
movb $0x61, (%r11)
nop
nop
nop
dec %rax
lea addresses_D_ht+0x7dd9, %rsi
lea addresses_UC_ht+0x16d01, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
add $23335, %rdx
lea addresses_D_ht+0x1a7b9, %r9
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r9), %rdi
cmp %rax, %rax
lea addresses_WC_ht+0x545f, %rdi
add %r9, %r9
mov (%rdi), %r11d
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x529, %rax
nop
nop
nop
xor %rcx, %rcx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
add $20480, %rcx
lea addresses_D_ht+0x9459, %rsi
lea addresses_WT_ht+0x1918d, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $98, %rcx
rep movsb
cmp $25974, %rax
lea addresses_normal_ht+0x1dab9, %rcx
nop
nop
nop
inc %r12
movb $0x61, (%rcx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x5bb9, %rbp
nop
add %rsi, %rsi
mov (%rbp), %r12
nop
nop
xor $60034, %rdi
lea addresses_WC_ht+0x117b9, %r9
nop
nop
xor $26973, %rax
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
add $28753, %r9
lea addresses_UC_ht+0x4c9, %rsi
lea addresses_WC_ht+0x1b079, %rdi
nop
xor $36428, %r11
mov $43, %rcx
rep movsl
nop
nop
xor $33776, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x10fb9, %rsi
lea addresses_UC+0x1ebb9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r12
mov $89, %rcx
rep movsl
inc %rcx

// Store
lea addresses_D+0x1516d, %rbp
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_normal+0x9fb9, %rdx
nop
dec %rcx
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
