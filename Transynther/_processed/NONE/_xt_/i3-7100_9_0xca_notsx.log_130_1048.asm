.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x142b6, %r14
cmp %rsi, %rsi
mov (%r14), %r15d
nop
sub $63570, %r10
lea addresses_WC_ht+0x17586, %rsi
lea addresses_normal_ht+0x7e6, %rdi
nop
nop
nop
nop
nop
cmp $42391, %r9
mov $5, %rcx
rep movsw
nop
nop
dec %r14
lea addresses_WC_ht+0xcb02, %rdi
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
and $12694, %r15
lea addresses_UC_ht+0x1936, %rsi
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
xor %rcx, %rcx
lea addresses_normal_ht+0x1e40e, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x17146, %rsi
lea addresses_D_ht+0xe2b6, %rdi
nop
nop
and %r12, %r12
mov $61, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x10136, %r9
nop
nop
sub $57524, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
inc %r15

// Store
lea addresses_UC+0x1e136, %rdi
nop
xor $5597, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0xaf36, %r10
sub %r15, %r15
movw $0x5152, (%r10)
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x3207, %rsi
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovaps %ymm0, (%rsi)
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x8d26, %r10
nop
nop
xor %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_D+0xf536, %rdi
nop
nop
nop
nop
and $55575, %r9
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'36': 130}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
