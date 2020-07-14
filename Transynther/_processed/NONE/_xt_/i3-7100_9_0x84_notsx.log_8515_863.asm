.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e09, %r13
clflush (%r13)
sub %r14, %r14
mov (%r13), %r10w
nop
add %r14, %r14
lea addresses_WT_ht+0x1622e, %r14
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
and %r14, %r14
lea addresses_A_ht+0x12409, %r15
sub %r9, %r9
movb (%r15), %r13b
nop
nop
nop
add $65414, %r14
lea addresses_A_ht+0x1cb51, %rcx
clflush (%rcx)
nop
nop
nop
dec %r13
mov (%rcx), %r14w
nop
and %r10, %r10
lea addresses_WC_ht+0x14d29, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r14
nop
cmp $28654, %r10
lea addresses_UC_ht+0x3b3, %r10
nop
and %r15, %r15
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0xa509, %rsi
lea addresses_WC_ht+0x1c409, %rdi
nop
add $51999, %r9
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x17a09, %r10
nop
nop
nop
and $28309, %r11
movb (%r10), %r9b
nop
xor $35353, %rdi
lea addresses_UC_ht+0xc30f, %rsi
lea addresses_A_ht+0xa609, %rdi
nop
nop
nop
nop
nop
cmp $62142, %r10
mov $10, %rcx
rep movsl
nop
nop
dec %r14
lea addresses_D_ht+0x11609, %r13
nop
cmp $53646, %r10
movb (%r13), %r11b
and %rsi, %rsi
lea addresses_A_ht+0xcf49, %rsi
nop
nop
nop
nop
nop
sub $17423, %r9
movw $0x6162, (%rsi)
nop
nop
inc %rcx
lea addresses_WC_ht+0x17e65, %r10
nop
nop
nop
nop
cmp $45810, %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x112cd, %rsi
lea addresses_A+0x1409, %rdi
nop
nop
nop
nop
dec %rdx
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_PSE+0x15cc1, %rcx
dec %r13
mov (%rcx), %r10
and %r14, %r14

// Load
lea addresses_A+0x13c09, %rdx
nop
nop
nop
nop
nop
xor $9436, %r10
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
and %r14, %r14

// Load
lea addresses_PSE+0x13579, %rcx
nop
nop
add $56107, %rsi
movaps (%rcx), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0xfe39, %rsi
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
add $4678, %rsi

// Faulty Load
lea addresses_A+0x1409, %r14
nop
nop
nop
nop
nop
dec %rdi
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'35': 8515}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
