.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e2ef, %rsi
lea addresses_WT_ht+0x156ef, %rdi
nop
nop
nop
cmp $13153, %rdx
mov $117, %rcx
rep movsb
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x8aef, %rsi
lea addresses_UC_ht+0xf2ef, %rdi
clflush (%rsi)
and %r8, %r8
mov $125, %rcx
rep movsw
add $56008, %rcx
lea addresses_WC_ht+0x14aef, %rcx
nop
nop
nop
and %r10, %r10
mov (%rcx), %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x6b0f, %rsi
lea addresses_D_ht+0x1e4ef, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $44, %rcx
rep movsq
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1b0f, %rsi
nop
nop
xor $40827, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add $63351, %r10
lea addresses_WT_ht+0x1622f, %rdx
xor %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %rdx
movntdq %xmm3, (%rdx)
nop
and $2223, %rdx
lea addresses_normal_ht+0x1b6f, %r10
nop
nop
sub $46297, %rdi
movb $0x61, (%r10)
nop
nop
add $19280, %rcx
lea addresses_normal_ht+0x12cff, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %edi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x59ef, %rsi
lea addresses_normal_ht+0x1deef, %rdi
nop
nop
nop
nop
sub $54483, %r13
mov $21, %rcx
rep movsb
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x6ef, %rcx
nop
nop
nop
cmp $11056, %rdx
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x162ef, %rsi
lea addresses_WC_ht+0x1f0f, %rdi
nop
and $32062, %r14
mov $94, %rcx
rep movsq
xor %rcx, %rcx
lea addresses_UC_ht+0xbaef, %rsi
lea addresses_WC_ht+0x26ef, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r13, %r13
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x804b, %rcx
nop
nop
nop
cmp $50862, %r10
mov (%rcx), %rdx
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x15bef, %rsi
nop
nop
nop
add $43937, %r14
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
add $5551, %r10
lea addresses_normal_ht+0x6bbf, %r8
nop
nop
nop
xor %r10, %r10
mov (%r8), %si
nop
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_normal+0x92ef, %rsi
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_normal+0x92ef, %rdx
cmp %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdx)
cmp $53482, %r12

// Store
lea addresses_D+0xfc0f, %rdx
clflush (%rdx)
nop
nop
nop
sub $48366, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rdx)
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x17b4f, %r9
xor $54387, %rax
movw $0x5152, (%r9)
nop
cmp %r9, %r9

// Faulty Load
lea addresses_normal+0x92ef, %r12
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
