.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x108b, %rsi
lea addresses_WT_ht+0x1a7fb, %rdi
nop
xor %r13, %r13
mov $60, %rcx
rep movsq
and $58969, %r12
lea addresses_normal_ht+0x24fb, %rsi
lea addresses_WT_ht+0x1457b, %rdi
dec %rdx
mov $23, %rcx
rep movsw
nop
add $13330, %r13
lea addresses_normal_ht+0x49b, %r12
and %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0xeab, %rsi
lea addresses_normal_ht+0x263b, %rdi
nop
nop
nop
and $25465, %r14
mov $37, %rcx
rep movsb
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x18e6b, %rsi
lea addresses_D_ht+0x9abb, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $78, %rcx
rep movsb
nop
xor %rdx, %rdx
lea addresses_A_ht+0xe7fb, %rsi
lea addresses_A_ht+0x9cfb, %rdi
nop
nop
nop
cmp %r14, %r14
mov $86, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x3a2b, %rsi
lea addresses_WC_ht+0x18fb, %rdi
nop
nop
nop
nop
nop
and $8304, %r12
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $12304, %rcx
lea addresses_UC_ht+0xb3b, %rsi
lea addresses_D_ht+0x19fbb, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $62, %rcx
rep movsq
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x16877, %rsi
lea addresses_normal_ht+0xb0bb, %rdi
and %r14, %r14
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x171cb, %r14
add $30010, %rdi
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
cmp $40018, %r13
lea addresses_D_ht+0xf77b, %rsi
lea addresses_WT_ht+0xedfb, %rdi
and %r12, %r12
mov $12, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1e9e, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1339b, %r15
inc %r14
movw $0x6162, (%r15)
xor $3675, %r12
lea addresses_normal_ht+0x15f7b, %r15
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %r14
nop
nop
nop
nop
nop
add $9582, %rdx
lea addresses_D_ht+0x18fb, %r13
nop
nop
dec %rsi
movb $0x61, (%r13)
nop
nop
cmp $46378, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_A+0xb8fb, %rbx
nop
inc %r10
mov (%rbx), %ebp
nop
dec %rbp

// Store
lea addresses_D+0x16afb, %r12
nop
nop
nop
sub $29425, %r13
movw $0x5152, (%r12)
nop
nop
sub %rbx, %rbx

// Store
mov $0xd9b, %rdi
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
sub $13436, %rsi

// Load
lea addresses_D+0x6561, %r13
nop
nop
xor $37546, %rbx
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
add $38416, %rsi

// Store
lea addresses_D+0xcbfb, %rdi
nop
nop
nop
nop
nop
and $12119, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rdi)
nop
sub %r12, %r12

// Faulty Load
lea addresses_US+0xdcfb, %rdi
nop
and $814, %rbp
mov (%rdi), %r12d
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 140}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
