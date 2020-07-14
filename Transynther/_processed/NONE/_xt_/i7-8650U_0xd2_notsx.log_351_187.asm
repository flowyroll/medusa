.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16876, %rsi
lea addresses_A_ht+0x15440, %rdi
nop
nop
add $11050, %r10
mov $96, %rcx
rep movsl
inc %rsi
lea addresses_A_ht+0x15712, %rcx
cmp %r15, %r15
mov (%rcx), %edi
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x197aa, %r14
nop
nop
nop
sub $34276, %rsi
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
cmp $29533, %r14
lea addresses_normal_ht+0x12cb, %rdi
nop
nop
and $42391, %r12
movb (%rdi), %cl
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x84a, %rcx
nop
nop
nop
nop
nop
sub $54314, %rdi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x3a9a, %r14
add %rdi, %rdi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x9d4a, %rsi
lea addresses_A_ht+0xc5ce, %rdi
nop
nop
inc %rbx
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $13981, %r14
lea addresses_WC_ht+0x184ca, %rbx
nop
nop
nop
nop
cmp %r12, %r12
movl $0x61626364, (%rbx)
xor $46584, %r10
lea addresses_UC_ht+0x1b454, %rsi
lea addresses_normal_ht+0x1294a, %rdi
nop
nop
nop
nop
nop
and $41701, %r10
mov $93, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x1a595, %rax
cmp $8599, %rdx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
xor $19926, %r12

// Store
mov $0x4df5790000000f1c, %rax
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rax)
nop
cmp %rax, %rax

// Faulty Load
lea addresses_D+0x1c94a, %rbp
nop
nop
nop
nop
sub %r15, %r15
mov (%rbp), %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'36': 351}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
