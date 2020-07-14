.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x17c17, %r15
nop
nop
and $3500, %r13
mov (%r15), %r10d
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x17, %rsi
lea addresses_normal_ht+0x3218, %rdi
nop
nop
sub %r15, %r15
mov $22, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_A_ht+0x1223b, %r15
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x18217, %rsi
lea addresses_normal_ht+0x13a17, %rdi
nop
nop
dec %rdx
mov $20, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1a097, %r15
nop
and $61116, %rcx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
cmp $45186, %rdi
lea addresses_WC_ht+0x1d497, %r15
nop
nop
nop
nop
nop
cmp $28811, %rcx
mov (%r15), %r13d
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x82b3, %rsi
lea addresses_A_ht+0xa0b7, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x13417, %rbx
nop
nop
nop
add %rcx, %rcx
mov (%rbx), %rsi
nop
inc %rbx
lea addresses_WT_ht+0x1417, %rdx
clflush (%rdx)
nop
sub $64398, %r15
movl $0x61626364, (%rdx)
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1c017, %rsi
lea addresses_D_ht+0x9c17, %rdi
nop
nop
nop
sub $53371, %r10
mov $68, %rcx
rep movsb
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WT+0x199, %rdx
nop
nop
sub $10789, %rsi
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rax
dec %rbp

// Store
lea addresses_WC+0x15df7, %rax
clflush (%rax)
nop
xor %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rax)
sub %r10, %r10

// Store
lea addresses_normal+0x1217, %rbp
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
sub $57758, %rdx

// Load
lea addresses_PSE+0xe417, %r9
nop
nop
nop
and $31842, %r10
mov (%r9), %si
nop
nop
nop
add %r10, %r10

// Store
lea addresses_RW+0x18c17, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rdx)
dec %rbp

// Store
lea addresses_normal+0x18ed7, %rbp
nop
cmp $10114, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rbp)
and $4688, %rbx

// Store
lea addresses_A+0x14c17, %rbx
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_A+0x12417, %r10
nop
add %rbp, %rbp
mov (%r10), %edx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'00': 810}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
