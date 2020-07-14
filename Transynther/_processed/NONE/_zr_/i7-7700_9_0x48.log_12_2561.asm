.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16e33, %r13
nop
nop
dec %rcx
mov (%r13), %si
nop
add $4230, %rsi
lea addresses_WC_ht+0x9c17, %r12
nop
xor %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
xor $30886, %rsi
lea addresses_UC_ht+0x18b07, %rdx
nop
dec %r13
movb $0x61, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x12cc7, %rsi
nop
nop
nop
nop
nop
xor $20779, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
xor $11828, %rcx
lea addresses_A_ht+0xa31d, %rdx
nop
nop
add %r13, %r13
movl $0x61626364, (%rdx)
nop
and $7190, %r13
lea addresses_D_ht+0x106db, %rcx
nop
nop
xor $62069, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x14217, %r13
nop
nop
nop
nop
and $7007, %rcx
movw $0x6162, (%r13)
cmp %rdi, %rdi
lea addresses_normal_ht+0x4c17, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
mov (%r12), %r10d
nop
and %r10, %r10
lea addresses_WT_ht+0x11817, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rdx)
nop
xor %rdx, %rdx
lea addresses_D_ht+0xba87, %rsi
nop
nop
and $6591, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
sub %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0x1a817, %r9
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movntdq %xmm5, (%r9)
nop
inc %r15

// Faulty Load
lea addresses_UC+0x18017, %rdi
nop
nop
nop
nop
add %r14, %r14
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
