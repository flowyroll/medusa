.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xd613, %rbp
nop
nop
nop
cmp $54321, %r10
mov (%rbp), %r9
nop
dec %rcx
lea addresses_UC_ht+0x8613, %r8
clflush (%r8)
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r8)
nop
nop
sub $14008, %rbp
lea addresses_WC_ht+0x6e53, %r15
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r15)
nop
inc %r10
lea addresses_D_ht+0x1d613, %r10
nop
nop
nop
add %r15, %r15
mov (%r10), %r8d
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x51f3, %rsi
lea addresses_WT_ht+0x1dc13, %rdi
xor %r15, %r15
mov $60, %rcx
rep movsw
nop
nop
nop
nop
and $53854, %rax
lea addresses_WT_ht+0x14413, %rax
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x16505, %rsi
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x17e13, %rsi
lea addresses_WC_ht+0x14e13, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $60517, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xa213, %rdi
add $23674, %r15
movb (%rdi), %r14b
nop
nop
xor $61418, %rcx

// Load
lea addresses_D+0x1fe13, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
dec %r9
mov (%rbx), %r14d
nop
nop
sub %rdi, %rdi

// Load
lea addresses_US+0xade3, %r15
xor $60947, %r14
vmovntdqa (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
cmp $23152, %r9

// Store
lea addresses_WC+0x1ce13, %r15
nop
nop
nop
xor $193, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0x98d3, %r14
nop
sub %rcx, %rcx
movl $0x51525354, (%r14)
xor $18613, %rcx

// Load
lea addresses_WC+0xfb13, %r15
nop
nop
and %rdi, %rdi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
and $28606, %r9

// Load
lea addresses_US+0xd493, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdi), %rsi
nop
nop
nop
add $10325, %r14

// Store
lea addresses_A+0x17613, %r14
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x1de13, %rsi
nop
nop
nop
nop
sub $41186, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x5a8b, %rcx
nop
nop
add %r14, %r14
movl $0x51525354, (%rcx)
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WC+0x1ce13, %r15
dec %rbx
movntdqa (%r15), %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'46': 4, '00': 106}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00
*/
