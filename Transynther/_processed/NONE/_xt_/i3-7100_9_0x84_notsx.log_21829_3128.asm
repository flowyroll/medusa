.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1213c, %r8
nop
nop
nop
nop
dec %r10
mov (%r8), %rbx
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1b494, %r9
add %rdi, %rdi
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xfe1c, %rsi
lea addresses_WT_ht+0x23c, %rdi
inc %r10
mov $78, %rcx
rep movsq
and $36140, %rbp
lea addresses_D_ht+0x1327c, %rbp
clflush (%rbp)
nop
xor $18250, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
nop
and $28782, %r9
lea addresses_normal_ht+0x1027c, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor $29713, %rdi
movups (%r10), %xmm2
vpextrq $0, %xmm2, %r9
nop
and $48084, %rbp
lea addresses_D_ht+0x86bc, %rsi
lea addresses_UC_ht+0x1036c, %rdi
nop
nop
nop
sub $55174, %r10
mov $118, %rcx
rep movsl
nop
nop
nop
cmp $20565, %rbp
lea addresses_A_ht+0x16b4c, %rsi
lea addresses_A_ht+0x1e07c, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $105, %rcx
rep movsb
nop
add $42677, %rcx
lea addresses_UC_ht+0xab7c, %rcx
nop
nop
nop
and %rbx, %rbx
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
mfence
lea addresses_WC_ht+0x10f9c, %rsi
lea addresses_A_ht+0x97, %rdi
nop
nop
nop
nop
nop
sub $36141, %r8
mov $46, %rcx
rep movsw
cmp $20688, %rdi
lea addresses_A_ht+0x181fc, %rsi
lea addresses_normal_ht+0x121dc, %rdi
sub %r9, %r9
mov $56, %rcx
rep movsl
xor $58835, %r8
lea addresses_A_ht+0x1efac, %rsi
lea addresses_D_ht+0x4d9e, %rdi
nop
nop
nop
and %r10, %r10
mov $124, %rcx
rep movsq
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1547c, %rdi
nop
nop
nop
xor $32358, %r9
mov (%rdi), %ecx
inc %rbp
lea addresses_WT_ht+0xdf64, %rsi
nop
cmp %rbx, %rbx
mov (%rsi), %r10w
nop
nop
and $23972, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdx

// Store
lea addresses_UC+0xd83c, %r10
nop
nop
sub $36656, %rcx
movw $0x5152, (%r10)
nop
cmp %r13, %r13

// Load
lea addresses_WC+0x1e2bc, %r11
nop
and $19955, %r8
mov (%r11), %r10w
nop
dec %rcx

// Store
lea addresses_D+0x1be7c, %rdx
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
add $61942, %r12

// Store
lea addresses_A+0x1483c, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x12a7c, %r8
xor $40928, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovaps %ymm0, (%r8)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_RW+0x1467c, %r13
clflush (%r13)
nop
nop
nop
sub %rdx, %rdx
movups (%r13), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
