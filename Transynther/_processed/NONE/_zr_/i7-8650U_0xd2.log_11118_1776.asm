.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xeff4, %r12
nop
inc %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r12
movntdq %xmm0, (%r12)
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1f4, %rdx
nop
nop
cmp $25041, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1e154, %rcx
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x29f4, %rcx
clflush (%rcx)
nop
and $35870, %rsi
mov (%rcx), %r12d
nop
add $43570, %rbx
lea addresses_UC_ht+0x134e0, %r9
add %rcx, %rcx
mov (%r9), %bp
nop
inc %rbx
lea addresses_normal_ht+0x185f4, %rsi
lea addresses_WC_ht+0x128d4, %rdi
clflush (%rsi)
nop
nop
dec %r9
mov $58, %rcx
rep movsq
nop
nop
add $59885, %rbx
lea addresses_D_ht+0x7bf4, %r12
xor %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1d554, %r12
nop
nop
nop
nop
nop
sub $47376, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r12)
nop
nop
and $44048, %rbx
lea addresses_A_ht+0xabd4, %rsi
lea addresses_WC_ht+0x1fdc, %rdi
nop
nop
nop
and $17236, %rbx
mov $54, %rcx
rep movsb
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1848c, %rsi
lea addresses_D_ht+0x13ef4, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $103, %rcx
rep movsb
nop
nop
nop
nop
xor $60874, %r12
lea addresses_UC_ht+0x12cf4, %rbx
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%rbx)
nop
xor $51952, %rbx
lea addresses_A_ht+0xeb74, %rsi
lea addresses_D_ht+0xfa54, %rdi
sub $41301, %r9
mov $10, %rcx
rep movsq
sub $32771, %rdi
lea addresses_normal_ht+0x19bf4, %r9
add $29665, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
xor $27053, %rbp
lea addresses_UC_ht+0x19f4, %rcx
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x5b4, %r15
nop
nop
nop
nop
nop
xor $33694, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x1fe74, %rdi
nop
nop
nop
inc %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
sub $41760, %r15

// Store
lea addresses_PSE+0x2bf4, %rbp
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $26328, %rbx

// Store
lea addresses_normal+0x160ff, %rdi
nop
sub %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_RW+0x47f4, %rcx
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp $5692, %r15

// Store
lea addresses_D+0x1a894, %r15
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
add $16855, %r12

// Store
lea addresses_A+0x16cf4, %r8
nop
nop
nop
sub $65075, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
nop
cmp $41753, %rcx

// Store
lea addresses_WT+0x157f4, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
cmp $63348, %rbp

// Faulty Load
lea addresses_WT+0x157f4, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 11118}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
