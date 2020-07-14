.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x84bc, %r14
nop
cmp $36977, %r9
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rdx
nop
and %rdi, %rdi
lea addresses_WC_ht+0xcc1c, %rdi
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
xor $48613, %rdx
lea addresses_normal_ht+0x8d9c, %rsi
nop
nop
nop
add $39907, %r9
movw $0x6162, (%rsi)
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x134c4, %rsi
lea addresses_WT_ht+0x1bd0c, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $30, %rcx
rep movsb
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x186cc, %rcx
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
inc %rax
lea addresses_normal_ht+0xe49c, %r11
nop
nop
nop
nop
nop
add $65089, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xa034, %r11
nop
nop
nop
add %rax, %rax
mov (%r11), %r9d
sub %rdi, %rdi
lea addresses_WT_ht+0x117ac, %r9
and $36931, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
add $40780, %rsi
lea addresses_A_ht+0x1ad9c, %rsi
lea addresses_WC_ht+0xac1c, %rdi
nop
nop
cmp %r9, %r9
mov $92, %rcx
rep movsl
nop
nop
nop
nop
xor $53830, %r9
lea addresses_D_ht+0x6b9c, %rsi
lea addresses_A_ht+0x1bfec, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r9
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0xc22c, %rsi
lea addresses_UC_ht+0x1bc74, %rdi
dec %rax
mov $27, %rcx
rep movsl
nop
nop
nop
add $14835, %r9
lea addresses_UC_ht+0x1f9c, %rax
cmp %rdi, %rdi
movb (%rax), %cl
nop
nop
nop
cmp $9450, %rax
lea addresses_WC_ht+0x1b89c, %rcx
nop
nop
nop
xor $63985, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xc21c, %rcx
nop
nop
nop
nop
nop
dec %r14
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
add $48357, %r9
lea addresses_A_ht+0x65cc, %rsi
lea addresses_D_ht+0xc99c, %rdi
clflush (%rsi)
nop
add $11272, %rax
mov $86, %rcx
rep movsw
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rdi
push %rsi

// Load
mov $0x3fc6060000000c36, %r10
nop
nop
add $34368, %r11
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
add $50728, %rdi

// Store
lea addresses_RW+0xd19c, %r9
nop
nop
nop
nop
xor $14428, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovntdq %ymm4, (%r9)
nop
xor %r11, %r11

// Store
lea addresses_A+0x10b1e, %r11
and $16080, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
nop
cmp $42503, %r10

// Load
lea addresses_normal+0x12d9c, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $53247, %r11
mov (%r9), %r14d
inc %r10

// Faulty Load
lea addresses_A+0xb59c, %r10
nop
nop
xor $1717, %r9
movb (%r10), %r14b
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
