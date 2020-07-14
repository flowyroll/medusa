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
lea addresses_normal_ht+0xde8, %rsi
lea addresses_WT_ht+0x10c0a, %rdi
nop
nop
nop
nop
nop
xor $59468, %r8
mov $76, %rcx
rep movsw
dec %rsi
lea addresses_normal_ht+0x1b372, %rsi
lea addresses_A_ht+0x490a, %rdi
clflush (%rdi)
nop
nop
nop
add %r15, %r15
mov $113, %rcx
rep movsb
nop
nop
and $1520, %rsi
lea addresses_normal_ht+0xf46a, %r10
nop
nop
nop
xor %rcx, %rcx
movb (%r10), %r15b
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x65ca, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp $673, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r8
vmovntdq %ymm2, (%r8)
cmp %rdi, %rdi
lea addresses_normal_ht+0x1ce0a, %rax
nop
nop
nop
sub %r15, %r15
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
and %rdi, %rdi
lea addresses_WC_ht+0x1b836, %rdi
nop
sub $47509, %r8
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
xor $44974, %rax
lea addresses_A_ht+0x1d9ca, %r15
nop
nop
cmp $51377, %rax
movw $0x6162, (%r15)
nop
nop
add $8186, %r15
lea addresses_WT_ht+0x171ea, %r8
nop
nop
inc %r15
mov (%r8), %edi
add $62997, %rsi
lea addresses_UC_ht+0x790a, %r15
nop
nop
add $1286, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r15)
nop
cmp %r15, %r15
lea addresses_D_ht+0xc80a, %rcx
nop
nop
nop
nop
sub $42814, %rax
mov (%rcx), %di
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x1780a, %rsi
lea addresses_D_ht+0x8f2a, %rdi
xor %r14, %r14
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r8, %r8
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
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rsi

// Store
lea addresses_US+0x1cb8a, %r14
clflush (%r14)
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r14)
nop
nop
sub %r14, %r14

// Store
mov $0xaaa, %r13
nop
add $32338, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
inc %r10

// Store
lea addresses_D+0xc40a, %r13
nop
and $50743, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r13)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
add %r14, %r14

// Faulty Load
lea addresses_WT+0x400a, %r12
nop
nop
nop
and %r14, %r14
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'39': 32}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
