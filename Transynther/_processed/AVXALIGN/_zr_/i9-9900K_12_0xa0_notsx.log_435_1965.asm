.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17c78, %rdi
xor %r15, %r15
mov (%rdi), %ebx
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x9db8, %r13
clflush (%r13)
nop
cmp %r10, %r10
mov (%r13), %rcx
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xa3b8, %rsi
lea addresses_WT_ht+0x81b8, %rdi
nop
nop
nop
nop
dec %r13
mov $68, %rcx
rep movsb
nop
xor $43204, %rbx
lea addresses_WC_ht+0xcdb7, %r8
nop
nop
nop
nop
sub $36414, %r10
mov $0x6162636465666768, %r15
movq %r15, (%r8)
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xa6b8, %r8
nop
nop
nop
dec %rcx
movl $0x61626364, (%r8)
nop
dec %r15
lea addresses_A_ht+0x1ab2b, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rdi), %r10
nop
nop
dec %r8
lea addresses_D_ht+0x71b8, %rsi
lea addresses_A_ht+0x10488, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $21, %rcx
rep movsq
nop
and $57770, %rsi
lea addresses_D_ht+0x10cec, %rsi
lea addresses_WC_ht+0x101b8, %rdi
clflush (%rsi)
nop
nop
nop
and $50884, %r15
mov $17, %rcx
rep movsw
nop
nop
and $62502, %rdi
lea addresses_D_ht+0x179b8, %r10
nop
nop
nop
nop
nop
and %rbx, %rbx
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rdi

// Store
mov $0x7c139400000003b8, %r13
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r13)
nop
cmp %r13, %r13

// Load
lea addresses_normal+0x831b, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
nop
add $19648, %r12

// Faulty Load
lea addresses_WC+0xc9b8, %r8
nop
nop
nop
nop
and %rdi, %rdi
movaps (%r8), %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'00': 435}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
