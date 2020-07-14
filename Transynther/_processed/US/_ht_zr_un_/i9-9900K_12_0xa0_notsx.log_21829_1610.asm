.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7dfb, %r15
nop
nop
nop
and $24426, %r13
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
add $24465, %rdi
lea addresses_D_ht+0x14a9c, %rbp
nop
nop
nop
and %r13, %r13
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x1f5b, %r13
nop
sub $59456, %r14
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
dec %r13
lea addresses_UC_ht+0xf03b, %rsi
lea addresses_WT_ht+0x616b, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $36294, %rbp
mov $116, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x617b, %r13
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x6162, (%r13)
nop
nop
add $56824, %rdi
lea addresses_WT_ht+0x1c69f, %rbp
nop
nop
nop
nop
and $61672, %rsi
mov (%rbp), %r10w
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1ceab, %rsi
add %rbp, %rbp
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x124bb, %rbp
sub $58359, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
sub %rdi, %rdi
lea addresses_A_ht+0xc663, %rsi
lea addresses_normal_ht+0x6bfb, %rdi
add $62565, %r10
mov $46, %rcx
rep movsw
and %r10, %r10
lea addresses_A_ht+0xfb, %rbp
nop
nop
nop
add $8402, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x89fb, %rsi
lea addresses_normal_ht+0x19fb, %rdi
nop
inc %rbp
mov $12, %rcx
rep movsq
nop
nop
and $2411, %r14
lea addresses_UC_ht+0x87fb, %r10
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r10)
xor %r15, %r15
lea addresses_A_ht+0xee5b, %rsi
nop
nop
nop
add %r13, %r13
mov (%rsi), %cx
cmp $49477, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_UC+0x3dfb, %r9
nop
nop
nop
nop
nop
dec %rsi
mov (%r9), %dx
nop
xor $3566, %rbp

// Store
lea addresses_normal+0x6dfb, %rbp
nop
nop
nop
cmp $43977, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0xa9fb, %rdx
nop
nop
dec %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
sub $25249, %r12

// Faulty Load
lea addresses_US+0x115fb, %rsi
xor $48226, %rbp
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'7d': 1, '46': 1267, '45': 12725, '49': 6, '00': 7830}
45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 45 45 00 45 45 46 46 45 45 00 45 45 45 45 45 45 45 45 00 00 00 00 46 00 00 46 45 45 00 45 00 00 45 00 00 00 45 00 45 45 45 00 45 45 45 45 45 45 45 46 45 00 45 45 00 45 45 45 45 00 00 00 00 00 45 45 45 00 00 00 00 00 00 45 00 45 00 45 45 00 45 00 00 00 45 45 46 00 45 46 45 00 45 45 45 45 00 00 00 45 45 46 45 45 45 45 45 00 00 46 45 00 45 45 45 00 45 45 45 45 46 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 00 45 46 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 00 45 45 45 00 45 45 00 45 00 45 45 46 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 45 45 45 45 00 45 45 46 00 00 46 00 45 00 00 00 45 45 00 45 45 45 46 45 45 00 00 46 00 00 00 46 45 45 45 00 45 45 00 00 45 00 00 45 45 00 45 00 45 45 00 00 00 00 46 45 00 45 00 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 45 45 45 00 00 45 45 00 45 45 45 45 00 45 00 00 00 46 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 00 46 00 00 45 46 45 00 45 00 46 00 00 00 45 45 00 45 00 00 00 00 45 46 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 46 45 00 45 00 00 00 45 45 45 00 45 45 00 45 45 45 45 45 00 00 45 00 45 00 45 00 00 00 00 45 00 00 45 00 45 00 45 45 00 00 45 46 00 00 00 45 45 00 45 00 46 00 00 45 45 46 45 45 45 45 45 45 45 00 45 00 45 45 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 45 00 45 45 00 00 45 45 46 00 45 45 00 45 45 46 00 00 00 45 00 45 00 45 45 45 00 45 00 00 45 45 00 45 00 00 46 45 45 46 45 45 00 00 00 00 45 00 45 00 00 46 45 45 46 00 45 45 46 45 00 46 00 45 45 45 00 00 45 00 00 45 46 45 00 45 45 00 45 45 45 00 45 45 00 45 00 00 00 00 45 45 00 45 45 00 45 00 45 46 45 45 45 45 45 45 45 45 45 00 45 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 00 46 00 00 46 00 00 45 45 00 00 45 46 00 00 45 00 46 45 45 00 45 00 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 45 00 00 00 46 00 45 46 45 45 45 00 45 45 00 00 45 00 45 45 45 00 45 00 45 00 45 00 45 00 00 45 45 45 45 00 45 00 45 45 00 00 00 00 00 00 00 00 45 45 45 45 45 00 45 45 45 46 00 45 45 00 45 00 45 00 46 00 45 00 45 46 00 45 45 00 45 45 45 45 45 45 45 00 45 00 46 00 00 45 45 00 45 45 00 45 00 00 45 00 00 00 00 00 00 00 45 45 45 45 00 45 45 00 45 45 00 45 45 45 46 45 45 45 45 00 00 46 00 00 00 00 46 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 00 00 00 00 00 00 45 00 46 00 45 46 00 45 46 45 45 45 45 00 00 00 00 00 45 45 45 46 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 00 00 45 00 45 45 45 45 45 45 00 46 00 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 00 46 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 46 45 46 00 45 45 46 45 45 45 00 46 00 00 45 00 45 45 46 00 00 45 45 45 00 45 45 45 45 45 00 00 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 00
*/
