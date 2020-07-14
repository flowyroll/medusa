.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1cf0c, %rsi
lea addresses_D_ht+0x163ec, %rdi
clflush (%rdi)
nop
nop
and $57071, %rdx
mov $46, %rcx
rep movsw
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x16424, %r10
nop
nop
add $52889, %rcx
mov (%r10), %r12
and $63566, %r12
lea addresses_WT_ht+0x1c48c, %rcx
nop
nop
cmp $9727, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
nop
add $58589, %r12
lea addresses_UC_ht+0x6fcc, %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xd88c, %r12
nop
nop
nop
nop
add $28411, %rsi
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rdi
nop
cmp $5232, %r12
lea addresses_WT_ht+0x1c48c, %rax
nop
nop
add %r10, %r10
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
xor $5798, %rsi
lea addresses_WT_ht+0x11b8c, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
xor $30324, %rsi
lea addresses_D_ht+0x908c, %rsi
add $60138, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $30371, %rsi
lea addresses_normal_ht+0x1629c, %rsi
lea addresses_WT_ht+0x1c08c, %rdi
cmp %r12, %r12
mov $122, %rcx
rep movsb
nop
nop
nop
add $57615, %rdi
lea addresses_A_ht+0x19d4c, %rax
nop
nop
cmp %r10, %r10
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x18954, %rsi
lea addresses_WC_ht+0x100be, %rdi
nop
and %rdx, %rdx
mov $111, %rcx
rep movsq
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rsi

// Store
lea addresses_D+0xd88c, %r15
nop
nop
nop
xor $10871, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
and $2690, %r15

// Store
lea addresses_A+0xd88c, %r11
nop
cmp %r13, %r13
movw $0x5152, (%r11)
nop
nop
nop
add %r15, %r15

// Store
mov $0x5e815500000008b0, %rax
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovaps %ymm6, (%rax)
nop
nop
xor $29486, %r8

// Store
lea addresses_WT+0x1988c, %r13
nop
nop
nop
nop
nop
add $20071, %r11
movl $0x51525354, (%r13)
and $13360, %rsi

// Store
lea addresses_RW+0x2122, %rsi
nop
dec %r11
movl $0x51525354, (%rsi)
sub %r14, %r14

// Faulty Load
lea addresses_A+0x208c, %rsi
add %r15, %r15
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'46': 1, '44': 4, '00': 2}
44 00 46 44 44 44 00
*/
