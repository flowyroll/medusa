.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e785, %rsi
lea addresses_D_ht+0x1b485, %rdi
xor %rdx, %rdx
mov $53, %rcx
rep movsq
nop
cmp %r15, %r15
lea addresses_A_ht+0x5885, %r8
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r8)
nop
add $54646, %r15
lea addresses_WT_ht+0x1dc85, %rdx
nop
cmp $10316, %rsi
mov (%rdx), %ecx
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xbfef, %rsi
lea addresses_WT_ht+0x161e5, %rdi
nop
and $29887, %r9
mov $63, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_D_ht+0xdc5, %r15
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
cmp $16825, %rsi
lea addresses_D_ht+0x1d585, %rsi
lea addresses_D_ht+0x4485, %rdi
clflush (%rsi)
nop
nop
nop
add $47028, %r12
mov $108, %rcx
rep movsq
nop
inc %r8
lea addresses_UC_ht+0x13885, %rsi
lea addresses_WC_ht+0x3bc5, %rdi
xor %r12, %r12
mov $56, %rcx
rep movsw
nop
nop
nop
sub $834, %r12
lea addresses_WC_ht+0x4bc5, %rsi
lea addresses_A_ht+0x1e717, %rdi
sub %r9, %r9
mov $17, %rcx
rep movsb
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rdx

// Store
mov $0xb45, %r14
dec %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_PSE+0x1da05, %rdx
nop
nop
sub $65366, %r13
mov (%rdx), %r15w
cmp $6245, %r14

// Load
lea addresses_WC+0x16445, %r10
nop
nop
sub $59156, %rdx
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x1c85, %r14
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r14)
xor $44547, %r15

// Load
mov $0xe05, %r14
nop
nop
nop
nop
nop
and %r8, %r8
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
sub %r15, %r15

// Store
lea addresses_WT+0x1eafb, %r12
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r12)
add %r15, %r15

// Store
lea addresses_A+0xa485, %r8
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_normal+0x1c85, %r14
nop
nop
nop
nop
xor $31823, %rdx
movups (%r14), %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'58': 136}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
