.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d50b, %r14
nop
nop
nop
nop
inc %rdx
mov (%r14), %cx
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x1e64b, %rsi
lea addresses_A_ht+0x9b0b, %rdi
clflush (%rsi)
inc %rbx
mov $41, %rcx
rep movsb
nop
nop
inc %r14
lea addresses_A_ht+0x1097b, %rsi
cmp %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x134ab, %rbx
nop
nop
nop
and %rdi, %rdi
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x2891, %r8
xor %r14, %r14
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
cmp $43778, %r8
lea addresses_UC_ht+0x1eb1b, %r14
clflush (%r14)
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %r14
movaps %xmm5, (%r14)
nop
nop
and $34811, %r14
lea addresses_WT_ht+0x1accf, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1e04b, %rsi
lea addresses_UC_ht+0x16233, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1204b, %rcx
dec %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
xor %rcx, %rcx
lea addresses_A_ht+0x1c3cb, %rsi
lea addresses_D_ht+0x141bb, %rdi
nop
nop
add %rbx, %rbx
mov $12, %rcx
rep movsq
nop
cmp %r8, %r8
lea addresses_UC_ht+0x1904b, %rbx
nop
nop
inc %rcx
movw $0x6162, (%rbx)
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_A+0x16b6b, %rcx
nop
nop
and %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub $15381, %r9

// Store
lea addresses_RW+0x18d4b, %r8
nop
nop
nop
add $41876, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r8)
nop
nop
add $16421, %rcx

// Store
mov $0xfcb, %rbx
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rbx)
add %rbx, %rbx

// Store
lea addresses_WC+0x15acb, %r13
nop
cmp $28863, %r9
movl $0x51525354, (%r13)
nop
cmp %r9, %r9

// Store
mov $0x3a58eb00000002cb, %rcx
nop
cmp %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovntdq %ymm5, (%rcx)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_RW+0x1bbcb, %r8
clflush (%r8)
nop
xor %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r8)
nop
xor $59099, %rbx

// Store
lea addresses_normal+0xb4cb, %r8
nop
nop
nop
nop
sub $57556, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r8)
inc %r9

// Faulty Load
lea addresses_UC+0x15acb, %r10
nop
dec %r12
mov (%r10), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'54': 156}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
