.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x129b3, %rbx
nop
nop
and %r12, %r12
movb (%rbx), %r13b
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x17c33, %rsi
lea addresses_A_ht+0x2433, %rdi
clflush (%rsi)
inc %rbp
mov $127, %rcx
rep movsq
xor %r13, %r13
lea addresses_normal_ht+0x6c33, %rdi
and $55639, %rbx
movb (%rdi), %r13b
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0xbf93, %rsi
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r13w
nop
nop
nop
and $30366, %rdi
lea addresses_WC_ht+0x13233, %rdi
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %rdi
vmovaps %ymm7, (%rdi)
nop
xor $7761, %rcx
lea addresses_A_ht+0x9c33, %r14
nop
nop
nop
xor $886, %rdi
movb (%r14), %r13b
nop
nop
nop
nop
sub $3077, %r12
lea addresses_normal_ht+0x5c33, %r12
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r12)
nop
sub %rcx, %rcx
lea addresses_D_ht+0x16283, %rbp
nop
nop
sub $62462, %r13
movl $0x61626364, (%rbp)
sub %rbp, %rbp
lea addresses_A_ht+0x16d4f, %rcx
nop
nop
xor %rbp, %rbp
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
xor $56582, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0xb433, %rsi
lea addresses_WT+0xbb6b, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r15
mov $113, %rcx
rep movsl
nop
nop
nop
nop
and $24676, %rdi

// Store
mov $0xc33, %rdi
nop
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
cmp $10827, %r15

// Store
mov $0x7f3, %rsi
xor $64807, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovntdq %ymm5, (%rsi)
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0xb433, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
xor $50533, %r14

// Faulty Load
lea addresses_normal+0xb433, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
movb (%r12), %cl
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
