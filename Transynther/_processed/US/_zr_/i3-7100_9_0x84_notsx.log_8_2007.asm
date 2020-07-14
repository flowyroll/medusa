.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdcdc, %rsi
clflush (%rsi)
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x90dc, %rsi
lea addresses_WC_ht+0x15e36, %rdi
nop
nop
dec %rbp
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x134fc, %rsi
lea addresses_A_ht+0x8930, %rdi
nop
nop
nop
dec %r8
mov $40, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_normal_ht+0x1234, %rbp
nop
nop
add $29169, %r10
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
sub %r8, %r8
lea addresses_D_ht+0x1e1c, %r8
nop
nop
xor %rbp, %rbp
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x90dc, %rsi
lea addresses_normal_ht+0x26dc, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $112, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x39a6, %rsi
lea addresses_WC_ht+0x166cc, %rdi
cmp $3090, %r12
mov $73, %rcx
rep movsb
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x1c03c, %rsi
lea addresses_A_ht+0x16864, %rdi
nop
nop
add $34689, %r10
mov $107, %rcx
rep movsb
nop
nop
nop
nop
sub $57406, %rsi
lea addresses_A_ht+0x1e40c, %rsi
lea addresses_normal_ht+0x3dc, %rdi
clflush (%rsi)
inc %r8
mov $5, %rcx
rep movsw
nop
xor $3015, %r12
lea addresses_WT_ht+0x1dbdc, %rsi
lea addresses_UC_ht+0x105dc, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $43, %rcx
rep movsq
nop
nop
sub $7610, %r13
lea addresses_D_ht+0x19ddc, %r10
nop
nop
nop
mfence
mov (%r10), %r8w
sub $62679, %rbp
lea addresses_D_ht+0x1b7dc, %rsi
lea addresses_normal_ht+0x1885c, %rdi
nop
nop
nop
add %r8, %r8
mov $58, %rcx
rep movsw
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x46dc, %r12
sub %rsi, %rsi
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x3cdc, %r10
nop
nop
and $3976, %r13
movb $0x61, (%r10)
nop
nop
nop
nop
nop
add $55424, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_US+0x1442c, %rdi
nop
nop
nop
nop
nop
cmp $57559, %rcx
movaps (%rdi), %xmm3
vpextrq $1, %xmm3, %rbp
xor %rdi, %rdi

// Store
lea addresses_WT+0x1965c, %rax
nop
nop
nop
nop
dec %r9
movl $0x51525354, (%rax)
nop
and %rcx, %rcx

// Load
lea addresses_WT+0x7f8, %r15
clflush (%r15)
sub %rax, %rax
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0x39c, %rax
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%rax)
nop
nop
sub $1940, %rax

// Store
mov $0x2361a40000000d2c, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rdi)
nop
inc %rbp

// Store
lea addresses_WT+0x169dc, %rbp
nop
nop
nop
nop
nop
inc %r9
movw $0x5152, (%rbp)
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_US+0x168dc, %r12
and %r15, %r15
movb (%r12), %al
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
