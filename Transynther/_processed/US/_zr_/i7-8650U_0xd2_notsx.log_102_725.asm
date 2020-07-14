.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx
lea addresses_A_ht+0x133ef, %r14
nop
add $17728, %r10
mov (%r14), %ecx
nop
nop
nop
cmp $4, %rax
lea addresses_WC_ht+0xdf0f, %rax
clflush (%rax)
nop
nop
nop
and $64649, %r9
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
inc %rcx
lea addresses_WT_ht+0xf37f, %r10
nop
nop
xor %r8, %r8
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0xcf, %rdx
nop
nop
sub $28345, %r9
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r10
nop
cmp $48636, %r8
lea addresses_D_ht+0x273a, %r14
nop
nop
lfence
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
and %r10, %r10
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x4303, %rdi
nop
nop
nop
nop
dec %r8
mov (%rdi), %edx
nop
nop
nop
add %r8, %r8

// Store
lea addresses_UC+0x3bf, %r12
nop
dec %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r12)
nop
nop
inc %rdx

// Load
lea addresses_US+0x1d0cf, %rdx
clflush (%rdx)
nop
nop
nop
and $65435, %r13
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r8
nop
add %rsi, %rsi

// Store
lea addresses_D+0x6bff, %r8
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
cmp $57321, %rdi

// Store
mov $0x4af, %r8
nop
and %r12, %r12
movw $0x5152, (%r8)
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x1fcaf, %r13
nop
nop
nop
nop
and $13186, %r12
movw $0x5152, (%r13)
nop
and $41282, %rdi

// Store
lea addresses_US+0x16e2f, %r8
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
add %rsi, %rsi

// Store
mov $0x580e800000006c5, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
cmp $8883, %r13

// Faulty Load
lea addresses_US+0x16e2f, %rdx
inc %r15
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 102}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
