.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x321e, %rsi
lea addresses_D_ht+0x98ee, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $51, %rcx
rep movsb
nop
nop
nop
nop
add $29426, %r9
lea addresses_WC_ht+0xa1ac, %rdi
nop
nop
nop
nop
nop
sub $13166, %rsi
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
cmp $51738, %rdi
lea addresses_UC_ht+0x1694e, %rcx
nop
nop
dec %r12
mov (%rcx), %r9w
nop
nop
inc %rcx
lea addresses_UC_ht+0x5b79, %rsi
lea addresses_WC_ht+0xf282, %rdi
nop
nop
nop
add $20902, %r8
mov $23, %rcx
rep movsl
nop
nop
and $55816, %r9
lea addresses_D_ht+0x1b94e, %r8
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
and $28612, %rdi
lea addresses_WC_ht+0xa5d4, %rcx
nop
nop
inc %rbp
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r8
and $19232, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x16b4e, %rsi
lea addresses_WT+0x1c94e, %rdi
nop
nop
nop
dec %rbx
mov $23, %rcx
rep movsq
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_WT+0xe34e, %r11
clflush (%r11)
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r11)
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x1254e, %r10
nop
nop
nop
add $24732, %rbp
movw $0x5152, (%r10)
nop
nop
cmp $45956, %rdi

// Store
mov $0x2a, %r10
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r10)
nop
nop
sub $43487, %r11

// Store
mov $0x514, %rsi
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WT+0x1b74e, %rbp
nop
nop
nop
nop
nop
and $23083, %rcx
mov (%rbp), %di
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x1254e, %r11
and $63084, %rcx
mov (%r11), %esi
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x1254e, %rbp
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rbp)
nop
nop
and %rbx, %rbx

// Store
lea addresses_WT+0x11096, %rdi
nop
nop
sub $437, %rsi
movl $0x51525354, (%rdi)
sub $19353, %rdi

// Faulty Load
lea addresses_RW+0x1254e, %rdi
nop
xor %rbx, %rbx
movb (%rdi), %cl
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 5}
58 58 58 58 58
*/
