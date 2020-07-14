.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xeb33, %rsi
lea addresses_WT_ht+0x2933, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $14, %rcx
rep movsl
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x1ea33, %r13
nop
nop
dec %r14
movw $0x6162, (%r13)
nop
nop
sub $55360, %r13
lea addresses_normal_ht+0xeba9, %rdi
dec %r10
movb (%rdi), %r14b
xor %r13, %r13
lea addresses_D_ht+0x47f3, %r10
clflush (%r10)
nop
cmp $23491, %rcx
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x6f33, %rdi
inc %r8
mov (%rdi), %r13d
xor $35748, %r13
lea addresses_UC_ht+0x15a33, %r8
add $29194, %rsi
movb (%r8), %r13b
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0xf1d3, %rcx
nop
add $53667, %r8
movl $0x61626364, (%rcx)
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x5333, %rcx
and $35256, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub $63579, %rsi
lea addresses_WT_ht+0x93b3, %r14
nop
nop
and $31193, %r13
mov (%r14), %rdi
add %r8, %r8
lea addresses_D_ht+0x12a63, %r10
nop
inc %r8
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
xor %r14, %r14
lea addresses_WC_ht+0x26d3, %r14
nop
nop
nop
nop
and %rsi, %rsi
mov (%r14), %r10
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1bb9b, %rsi
lea addresses_D_ht+0x180f3, %rdi
nop
nop
nop
nop
and $39493, %r9
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
add $64613, %rcx
lea addresses_A_ht+0x5d4, %rsi
lea addresses_D_ht+0x13f23, %rdi
nop
nop
cmp %r8, %r8
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $43368, %r14
lea addresses_D_ht+0x1c133, %r8
nop
nop
nop
sub $56997, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x11533, %r14
nop
nop
and %r8, %r8
mov (%r14), %r9w
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
mov $0x60ea450000000bb3, %rax
nop
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%rax)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x13a8f, %rsi
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
xor %r8, %r8

// Load
mov $0x933, %r9
nop
nop
nop
nop
inc %r8
mov (%r9), %si
nop
nop
sub $44032, %rcx

// Store
lea addresses_US+0x13b33, %r9
nop
dec %r8
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_US+0x13b33, %r10
nop
nop
nop
nop
inc %rcx
mov (%r10), %r12w
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'58': 50}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
