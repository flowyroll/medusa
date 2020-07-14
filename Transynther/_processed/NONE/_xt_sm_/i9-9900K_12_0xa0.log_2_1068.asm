.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ca3d, %rbx
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xc900, %r9
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r9), %r13
xor $37230, %rdx
lea addresses_normal_ht+0x26c, %r13
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x7200, %rsi
lea addresses_A_ht+0xf500, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $1, %rcx
rep movsw
dec %r9
lea addresses_A_ht+0xb700, %r9
nop
nop
add $1083, %rdx
movb $0x61, (%r9)
nop
nop
lfence
lea addresses_UC_ht+0x11500, %rsi
nop
nop
nop
xor $1217, %r13
movw $0x6162, (%rsi)
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x75d0, %r8
nop
add %r9, %r9
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x10500, %rsi
lea addresses_D_ht+0xb900, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
mov $33, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_D_ht+0x43a8, %rsi
lea addresses_A_ht+0x6842, %rdi
nop
nop
nop
add $48110, %rbp
mov $19, %rcx
rep movsw
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x15500, %rsi
nop
nop
cmp $36549, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rsi)
nop
nop
cmp $28144, %rdi
lea addresses_UC_ht+0xfd00, %rsi
xor %rbp, %rbp
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1eae0, %rcx
nop
dec %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x18b00, %rsi
lea addresses_normal_ht+0x11d00, %rdi
nop
nop
xor %rdx, %rdx
mov $56, %rcx
rep movsl
nop
dec %rbp
lea addresses_WT_ht+0x6700, %rdi
cmp %r8, %r8
mov (%rdi), %si
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rdx

// Store
lea addresses_A+0x4ee4, %r14
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
sub $31398, %r14

// Store
lea addresses_WC+0xcd00, %r9
clflush (%r9)
nop
nop
nop
nop
cmp $33154, %r13
movb $0x51, (%r9)
xor $42901, %r14

// Store
lea addresses_normal+0x7fca, %r13
sub $39692, %r12
movb $0x51, (%r13)
dec %r10

// Load
lea addresses_RW+0x9380, %rbx
nop
nop
sub %r9, %r9
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
add $50454, %rdx

// Store
lea addresses_WC+0x14d00, %r13
nop
inc %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
and $60926, %rbx

// Store
lea addresses_UC+0x9000, %r9
nop
nop
cmp $38242, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r9)
inc %r9

// Store
lea addresses_WT+0x1dc00, %r10
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
sub $38025, %r12

// Store
mov $0x19d7c60000000d00, %r9
nop
dec %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
inc %r12

// Store
mov $0x33baa80000000500, %r9
and $45911, %rdx
movb $0x51, (%r9)
nop
nop
sub %r14, %r14

// Store
lea addresses_D+0xb100, %r9
nop
and $29188, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
and $9543, %r14

// Store
lea addresses_RW+0x17360, %rdx
nop
sub $3163, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rdx)
xor %r12, %r12

// Load
lea addresses_WT+0xd200, %r9
nop
nop
nop
nop
xor %r13, %r13
mov (%r9), %rbx
nop
nop
nop
add $13497, %r14

// Faulty Load
lea addresses_WC+0x14d00, %r14
nop
nop
sub $19641, %r10
movb (%r14), %dl
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'58': 2}
58 58
*/
