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
lea addresses_A_ht+0x7670, %rbx
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add $33988, %r15
lea addresses_D_ht+0x3a90, %r10
nop
sub %r8, %r8
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
cmp $5594, %r8
lea addresses_D_ht+0x5450, %rsi
lea addresses_WC_ht+0x7a5, %rdi
nop
nop
nop
sub $24974, %r13
mov $0, %rcx
rep movsw
xor %r15, %r15
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
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xa250, %rdi
nop
nop
nop
add $12973, %rdx
movb $0x51, (%rdi)
nop
sub $18926, %rdx

// Store
mov $0x185f680000000250, %rbp
nop
dec %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rbp)
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x1a240, %rdx
nop
cmp $5459, %r15
movw $0x5152, (%rdx)
dec %rdx

// Load
lea addresses_US+0x137a0, %rbp
nop
nop
nop
add %r15, %r15
mov (%rbp), %r12
nop
and %r15, %r15

// Store
lea addresses_RW+0x19bd0, %rdi
and $26068, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movntdq %xmm0, (%rdi)
sub %r12, %r12

// Load
mov $0x17efc00000000450, %rdx
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdx), %r15
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x6450, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $64948, %r12
movb $0x51, (%rbp)
cmp $42533, %rbx

// Store
lea addresses_normal+0x13850, %rdi
nop
nop
cmp $27464, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rdi)
nop
dec %rdx

// Load
lea addresses_US+0x12b70, %r10
nop
nop
nop
nop
nop
cmp $33499, %rdi
mov (%r10), %rbp
xor $57157, %rdx

// Faulty Load
mov $0x185f680000000250, %r10
clflush (%r10)
xor %r15, %r15
vmovaps (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
