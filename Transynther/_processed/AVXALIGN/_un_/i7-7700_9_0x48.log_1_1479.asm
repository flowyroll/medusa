.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf3f5, %r10
nop
nop
and $6809, %rbx
mov (%r10), %rbp
nop
nop
nop
nop
nop
and $58602, %rbx
lea addresses_WC_ht+0x85c5, %rsi
lea addresses_UC_ht+0x7ddb, %rdi
clflush (%rsi)
cmp %rbx, %rbx
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x5845, %rbp
nop
nop
inc %r15
mov (%rbp), %rcx
nop
nop
nop
nop
nop
xor $43396, %rcx
lea addresses_D_ht+0xe585, %rsi
lea addresses_D_ht+0xc1ba, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $15, %rcx
rep movsw
nop
and %rbp, %rbp
lea addresses_WC_ht+0x4845, %rcx
nop
nop
nop
sub $26453, %rbx
mov (%rcx), %bp
nop
nop
nop
cmp $14405, %r12
lea addresses_A_ht+0x1db35, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1b4c5, %r15
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%r15)
nop
add %r10, %r10
lea addresses_WT_ht+0x14fae, %r10
nop
nop
nop
nop
nop
cmp $28494, %rsi
mov (%r10), %di
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x6845, %rsi
lea addresses_UC_ht+0xe8c5, %rdi
nop
nop
nop
cmp $65308, %rbx
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x16569, %rbp
nop
cmp %rbx, %rbx
movl $0x61626364, (%rbp)
cmp %rcx, %rcx
lea addresses_UC_ht+0x45c5, %rsi
lea addresses_UC_ht+0x15ec5, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $11, %rcx
rep movsq
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
mov $0x45063f0000000445, %rcx
nop
xor %rbx, %rbx
movb $0x51, (%rcx)
nop
nop
nop
sub $29813, %rcx

// Store
lea addresses_WT+0x19a7, %rbx
nop
nop
nop
add $62949, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
and $32475, %rcx

// Store
lea addresses_PSE+0x1ca45, %rbx
sub $21159, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WC+0x10ce1, %r12
clflush (%r12)
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_US+0x149c5, %rcx
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovntdq %ymm7, (%rcx)
cmp $56960, %r14

// Store
lea addresses_WT+0x1e045, %r9
clflush (%r9)
nop
add $2101, %rcx
movb $0x51, (%r9)
nop
add $10606, %r12

// Store
lea addresses_WC+0x11cc5, %rbx
nop
xor %r14, %r14
movw $0x5152, (%rbx)
nop
cmp $23641, %r8

// Load
mov $0x685, %r8
nop
nop
nop
xor $6376, %rbx
mov (%r8), %r14w
nop
add $47749, %r14

// Store
lea addresses_A+0x1ecf5, %rbp
nop
cmp $27883, %r8
movb $0x51, (%rbp)
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_WT+0x1e045, %rcx
inc %r12
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'ff': 1}
ff
*/
