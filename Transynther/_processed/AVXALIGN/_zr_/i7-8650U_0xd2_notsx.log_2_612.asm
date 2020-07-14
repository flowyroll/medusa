.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x144eb, %rbx
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rbx), %r10d
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x124a3, %rsi
lea addresses_A_ht+0x1211d, %rdi
dec %r9
mov $69, %rcx
rep movsw
xor %r10, %r10
lea addresses_D_ht+0x1dceb, %r13
nop
xor $34422, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %r13
vmovntdq %ymm4, (%r13)
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xa7f1, %rsi
nop
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rsi)
nop
dec %r13
lea addresses_normal_ht+0x3f0b, %rdi
nop
nop
and $19010, %rcx
movw $0x6162, (%rdi)
sub $59297, %rdi
lea addresses_D_ht+0x106b, %rsi
lea addresses_UC_ht+0xd6eb, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $0, %rcx
rep movsq
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x180eb, %rsi
lea addresses_A+0x792b, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r12, %r12
mov $39, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_UC+0x13303, %rcx
nop
nop
nop
nop
inc %rdx
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r11
xor $49800, %rdi

// Store
lea addresses_UC+0x130eb, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
movb $0x51, (%rdi)
sub $49423, %rdi

// Load
mov $0x42b, %rdx
nop
xor $28314, %r11
mov (%rdx), %r12
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0x74eb, %rdi
dec %r11
movw $0x5152, (%rdi)
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_WT+0x74eb, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor $37957, %rsi
vmovaps (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'00': 2}
00 00
*/
