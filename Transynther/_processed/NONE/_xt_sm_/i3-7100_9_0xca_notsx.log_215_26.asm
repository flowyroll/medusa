.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x174a, %r9
and %r14, %r14
mov (%r9), %edx
nop
nop
and %r10, %r10
lea addresses_D_ht+0xe14a, %rsi
lea addresses_WC_ht+0x12d4a, %rdi
nop
nop
xor $21424, %r14
mov $7, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $3566, %rdx
lea addresses_normal_ht+0x1994a, %rsi
lea addresses_A_ht+0x1e1da, %rdi
nop
nop
nop
nop
xor $20448, %r11
mov $110, %rcx
rep movsl
nop
nop
nop
nop
cmp $65210, %r10
lea addresses_D_ht+0xc83a, %rdi
nop
nop
nop
cmp $52541, %rcx
movb (%rdi), %dl
nop
nop
nop
nop
sub $26230, %r9
lea addresses_A_ht+0x1214a, %r14
dec %r10
mov (%r14), %edi
xor %rsi, %rsi
lea addresses_normal_ht+0x1c66a, %r14
nop
nop
nop
and $64981, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x979a, %r14
nop
nop
nop
and %rdx, %rdx
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
inc %rdx
lea addresses_WT_ht+0xa84a, %rcx
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1da6d, %rsi
lea addresses_A_ht+0x1d74a, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $124, %rcx
rep movsl
nop
nop
nop
sub $54975, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x6bca, %r13
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovntdq %ymm0, (%r13)
nop
nop
nop
nop
nop
and $24865, %r13

// Load
lea addresses_US+0x3fca, %r10
clflush (%r10)
nop
nop
cmp $58918, %r8
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
add $14582, %r8

// Store
lea addresses_D+0x11c56, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovaps %ymm0, (%rbp)
nop
add $5639, %rcx

// Store
lea addresses_RW+0xd14a, %r13
nop
nop
and $15818, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r13)
nop
dec %rcx

// Store
lea addresses_A+0x5d82, %rcx
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
sub $28874, %r8

// Faulty Load
lea addresses_RW+0xd14a, %r10
nop
inc %r13
mov (%r10), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'58': 215}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
