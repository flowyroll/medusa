.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14a6a, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $21001, %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xf5ba, %r14
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
sub $35220, %rcx
lea addresses_normal_ht+0x4eba, %rsi
lea addresses_D_ht+0x15f2a, %rdi
nop
sub $39014, %r10
mov $91, %rcx
rep movsq
nop
nop
dec %rdi
lea addresses_D_ht+0xc182, %rdx
nop
nop
nop
nop
nop
inc %r15
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
cmp $58521, %r10
lea addresses_normal_ht+0x1d66a, %rdx
nop
nop
nop
nop
add $3679, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm1, (%rdx)
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1ea8, %r10
nop
nop
dec %rdx
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0xfb54, %r15
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1696a, %rsi
lea addresses_WT_ht+0x17035, %rdi
nop
nop
nop
and %r12, %r12
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $54338, %rsi
lea addresses_WT_ht+0x15aa, %r14
nop
nop
xor $51888, %rsi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
xor $38323, %r14
lea addresses_A_ht+0x17138, %r10
nop
nop
and %r15, %r15
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r14
nop
dec %r10
lea addresses_A_ht+0x1522a, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rcx), %r14
nop
nop
xor $12444, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x16698, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $58266, %r12
movl $0x51525354, (%r13)
nop
nop
sub %r13, %r13

// Load
lea addresses_WC+0x49aa, %rcx
nop
nop
nop
nop
and $64729, %rdi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
cmp $57569, %r12

// Store
lea addresses_A+0x3ea, %r12
clflush (%r12)
sub $44846, %r15
movw $0x5152, (%r12)
nop
nop
nop
nop
add $43854, %r13

// Store
lea addresses_A+0x19d6a, %r13
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
and $11358, %rdi

// Store
lea addresses_PSE+0x1e7ea, %rcx
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
add $59028, %rcx

// Store
lea addresses_WT+0xd688, %rbx
nop
add %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x128be, %rbx
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbx)
nop
dec %r13

// Store
lea addresses_WT+0xfaaa, %rdi
nop
nop
dec %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movaps %xmm4, (%rdi)
nop
xor $30204, %r14

// Faulty Load
lea addresses_PSE+0x1e7ea, %r15
nop
nop
nop
cmp $42038, %rcx
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'33': 1}
33
*/
