.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11fa8, %r14
nop
nop
nop
dec %r8
movl $0x61626364, (%r14)
cmp $30677, %r10
lea addresses_D_ht+0x153f4, %rsi
lea addresses_A_ht+0x1b274, %rdi
nop
nop
cmp $31356, %rax
mov $29, %rcx
rep movsw
nop
nop
nop
nop
sub $21818, %rcx
lea addresses_normal_ht+0x98f8, %rsi
lea addresses_normal_ht+0xd5b4, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $4, %rcx
rep movsw
nop
dec %r15
lea addresses_A_ht+0x67d8, %rdi
cmp %r14, %r14
mov (%rdi), %r8
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xdf4, %rsi
clflush (%rsi)
nop
nop
add %rcx, %rcx
mov (%rsi), %r15
nop
nop
nop
sub $28009, %r10
lea addresses_normal_ht+0x1d0b4, %rdi
nop
nop
dec %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm7
and $0xffffffffffffffc0, %rdi
movaps %xmm7, (%rdi)
sub $59412, %r10
lea addresses_normal_ht+0x9694, %rsi
lea addresses_D_ht+0x145f4, %rdi
nop
and %r8, %r8
mov $98, %rcx
rep movsw
nop
nop
nop
xor $18472, %rcx
lea addresses_normal_ht+0x1703c, %r15
nop
nop
nop
nop
nop
sub $51842, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x13df4, %r10
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r10)
nop
cmp $42417, %r10
lea addresses_D_ht+0x5df4, %r10
nop
nop
nop
nop
sub $21685, %r14
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_D+0x16b94, %r15
clflush (%r15)
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%r15)
cmp %r15, %r15

// Load
lea addresses_D+0x43d4, %rcx
nop
xor %rsi, %rsi
mov (%rcx), %r13w
nop
inc %rcx

// Store
lea addresses_WC+0x8df4, %r13
nop
nop
nop
xor $52941, %r12
movw $0x5152, (%r13)
nop
and $6170, %rsi

// Load
lea addresses_WC+0x1a334, %r8
and $55875, %rcx
mov (%r8), %r9w
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0xc63c, %r9
nop
cmp $5934, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_WC+0x8df4, %r13
nop
cmp %r12, %r12
mov (%r13), %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'52': 30}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
