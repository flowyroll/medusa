.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11ed, %r13
nop
nop
nop
nop
xor $29386, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r13)
nop
nop
xor $65403, %r15
lea addresses_UC_ht+0x1421d, %r11
dec %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r11)
nop
xor $54230, %r13
lea addresses_UC_ht+0x1116d, %r11
nop
nop
xor $6984, %rdx
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
add $56081, %r10
lea addresses_D_ht+0x1d76d, %rax
nop
nop
nop
and $53636, %r15
mov (%rax), %r11w
nop
nop
nop
nop
nop
cmp $17449, %r11
lea addresses_WC_ht+0xa06d, %rsi
lea addresses_A_ht+0x56ed, %rdi
nop
nop
nop
add %r13, %r13
mov $52, %rcx
rep movsl
nop
nop
and $61850, %rcx
lea addresses_WC_ht+0xc6ed, %rsi
lea addresses_WC_ht+0x1c69c, %rdi
nop
nop
nop
nop
sub $46685, %rax
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $33305, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Load
lea addresses_D+0xcd2d, %rbx
nop
nop
nop
nop
add %r15, %r15
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
lfence

// Store
lea addresses_WT+0x6111, %rdx
nop
nop
nop
nop
xor $50343, %r14
movb $0x51, (%rdx)
nop
nop
add $42282, %rax

// Store
lea addresses_RW+0x27ed, %rdx
and $50808, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_PSE+0x5eed, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $14555, %rbx
vmovaps (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'47': 23, '48': 14559, '00': 7247}
48 00 48 00 48 48 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 00 48 00 48 00 48 48 48 00 00 00 48 48 00 00 00 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 00 48 00 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 00 48 48 00 48 48 00 48 00 00 48 48 48 00 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 48 00 48 48 48 48 48 00 00 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 00 48 48 48 00 00 00 00 00 48 48 00 48 00 00 00 48 00 48 48 00 48 48 48 00 48 48 48 00 48 48 00 00 48 00 00 48 00 48 00 00 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 00 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 00 48 48 00 00 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 00 00 48 00 48 48 48 00 00 48 48 00 48 48 48 00 48 00 48 00 00 48 48 00 48 48 48 48 48 00 00 00 48 48 48 00 48 48 48 00 00 00 48 00 00 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 00 48 48 00 48 48 00 48 00 48 48 00 00 00 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 00 48 48 48 48 00 00 48 00 48 48 48 00 48 48 48 00 48 48 00 00 48 48 48 00 48 48 00 00 48 48 00 00 48 48 48 48 48 00 48 48 48 48 00 00 00 48 48 48 48 00 00 48 48 48 00 48 48 00 48 48 48 48 00 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 00 00 48 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 00 00 48 00 48 00 48 48 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 00 48 00 48 48 00 00 48 48 00 00 00 48 48 48 00 48 48 48 00 48 00 00 48 00 48 48 00 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 48 48 48 00 48 00 00 48 48
*/
