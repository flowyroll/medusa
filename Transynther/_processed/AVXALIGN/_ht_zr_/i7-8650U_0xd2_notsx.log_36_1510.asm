.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7653, %r15
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
cmp $47457, %r13
lea addresses_D_ht+0x1a3c3, %r8
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r8)
nop
nop
add $31659, %r15
lea addresses_WT_ht+0x4f43, %rbp
xor $26473, %r13
mov (%rbp), %si
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x4f43, %rbp
inc %rax
movl $0x61626364, (%rbp)
inc %rsi
lea addresses_WC_ht+0x4543, %rsi
lea addresses_UC_ht+0x18193, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $71, %rcx
rep movsw
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x173c3, %rsi
lea addresses_WC_ht+0x17111, %rdi
cmp $22805, %rbp
mov $66, %rcx
rep movsq
add $11764, %r8
lea addresses_normal_ht+0x3acf, %r8
nop
nop
nop
xor $61358, %rax
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xdd43, %r8
nop
nop
sub %rax, %rax
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rbp
add %r15, %r15
lea addresses_WC_ht+0x7493, %r13
nop
nop
nop
nop
xor $17264, %rdi
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rdx

// Store
lea addresses_A+0x1bf43, %r10
clflush (%r10)
sub %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
nop
cmp $30517, %r10

// Store
lea addresses_D+0xf143, %r10
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%r10)
nop
nop
cmp $52642, %rdx

// Store
mov $0x8c3, %r8
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r8)
nop
nop
sub %r10, %r10

// Load
lea addresses_WT+0x34f7, %r8
sub $43755, %r14
mov (%r8), %edx
sub $53188, %r12

// Faulty Load
lea addresses_WC+0x1ed43, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
vmovaps (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 19, '49': 17}
00 49 49 49 49 00 49 00 00 49 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 49 49 00 00 49 49 49 49 00 49 49
*/
