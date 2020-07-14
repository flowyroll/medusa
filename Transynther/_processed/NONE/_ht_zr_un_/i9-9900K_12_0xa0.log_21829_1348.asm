.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b5e9, %r8
nop
nop
nop
and $42238, %r15
movb (%r8), %r13b
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xf409, %rdx
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1e9ab, %r13
nop
nop
nop
nop
nop
cmp $11099, %r12
mov (%r13), %edx
nop
nop
xor $11039, %r15
lea addresses_WT_ht+0xcde9, %rsi
lea addresses_WT_ht+0x1a6e9, %rdi
nop
nop
nop
nop
dec %rbx
mov $119, %rcx
rep movsl
mfence
lea addresses_D_ht+0x19c75, %r12
nop
nop
cmp %r13, %r13
mov (%r12), %edx
xor $43676, %rcx
lea addresses_WC_ht+0x11f69, %r12
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r12
vmovaps %ymm1, (%r12)
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1abe9, %rdi
add $36007, %rsi
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xb5a9, %r8
nop
cmp %rbx, %rbx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x19ae9, %rdx
nop
nop
sub $6914, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
nop
and $35542, %rdi
lea addresses_D_ht+0x10ee9, %rsi
lea addresses_normal_ht+0x1b4e9, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $50, %rcx
rep movsl
nop
nop
nop
nop
sub $37292, %r13
lea addresses_normal_ht+0x1a839, %rsi
lea addresses_normal_ht+0x12ce9, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $118, %rcx
rep movsq
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x13e9, %r10
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
cmp $26027, %rdx
lea addresses_WC_ht+0x145a9, %rdx
nop
nop
cmp $42308, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
and $36571, %r10
lea addresses_WC_ht+0x2fd3, %rsi
nop
nop
mfence
movb (%rsi), %r13b
xor %rbx, %rbx
lea addresses_WC_ht+0x110e9, %rcx
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
xor $58686, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rdx

// Faulty Load
lea addresses_WC+0x1fee9, %r14
nop
nop
nop
xor $57036, %r10
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'44': 13918, '46': 6, '49': 7880, '8b': 1, '00': 19, 'f5': 1, '08': 4}
44 44 44 44 49 49 44 49 44 44 44 44 44 44 49 49 49 44 44 49 44 44 44 44 44 49 49 44 49 44 44 44 44 44 49 44 44 44 44 44 44 49 49 44 49 49 49 44 44 49 44 44 44 44 44 44 44 49 44 44 44 49 49 44 44 44 49 44 44 49 44 44 44 44 44 49 44 49 44 44 44 44 44 44 44 49 44 49 49 49 49 44 44 44 44 44 44 49 44 49 49 44 49 44 49 49 44 49 44 44 49 49 44 44 44 44 49 44 44 44 49 49 44 44 44 44 44 44 44 49 49 44 49 49 44 49 49 44 49 49 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 49 49 44 44 44 44 44 44 49 44 44 49 44 44 49 44 49 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 49 44 44 44 44 49 44 44 49 44 44 49 44 49 44 44 49 44 49 49 44 44 44 49 49 44 44 44 49 44 44 49 44 44 49 44 49 44 44 44 44 49 44 44 49 44 44 49 49 49 44 49 44 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 49 44 49 49 44 44 44 44 49 49 44 49 49 49 44 49 49 49 44 44 44 49 44 49 44 44 49 44 44 44 44 49 44 49 44 44 44 49 44 44 44 44 44 44 49 44 49 49 49 49 49 44 44 44 44 44 49 44 49 49 44 44 44 44 49 44 49 44 49 49 44 44 49 44 49 49 44 44 44 44 44 44 44 49 44 49 44 44 44 49 44 49 44 49 44 49 44 44 49 44 44 49 44 49 44 49 49 44 49 44 44 44 44 49 44 44 49 49 49 44 44 44 44 49 44 49 49 44 49 49 44 44 44 44 44 44 44 44 49 44 44 49 49 44 44 49 44 44 49 44 49 44 44 44 44 49 44 44 44 44 49 49 44 44 44 49 44 44 44 44 44 49 44 49 49 44 49 44 49 44 44 49 44 44 49 44 49 44 49 44 44 49 44 44 44 49 49 44 44 49 44 49 44 44 49 44 49 49 44 49 49 44 44 44 44 49 49 44 49 49 44 49 44 49 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 49 44 44 49 44 44 44 44 49 44 49 44 44 49 49 44 44 44 44 44 49 49 44 44 49 44 44 49 44 44 44 49 49 44 49 49 44 44 44 44 44 44 44 44 49 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 49 49 44 44 49 44 49 49 44 44 49 49 49 44 44 49 49 44 44 44 49 44 44 44 44 44 49 44 44 44 44 49 44 49 44 49 44 44 49 44 49 49 49 8b 44 44 44 49 44 44 49 44 44 49 49 44 49 44 44 44 49 44 44 44 44 44 44 44 44 49 49 44 44 49 44 49 44 44 49 44 49 44 49 44 44 49 44 49 49 44 44 49 44 44 44 49 44 44 44 44 44 44 44 49 44 49 49 49 44 44 49 44 49 44 49 44 49 44 44 49 44 44 49 44 44 49 44 49 44 49 49 44 44 44 49 44 44 44 44 44 44 44 44 49 49 44 44 49 44 49 49 49 44 49 49 44 44 44 44 44 44 44 49 44 44 49 44 44 44 49 44 44 44 49 44 44 49 44 44 44 49 44 44 44 44 44 49 44 44 44 49 44 44 49 44 44 49 44 44 44 44 44 49 49 49 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 49 49 44 44 49 44 44 49 44 44 44 44 49 44 49 49 49 44 44 44 44 44 49 44 44 44 44 44 49 49 44 49 49 44 44 44 49 49 44 44 49 44 49 44 44 49 44 44 44 49 49 49 44 49 44 49 44 44 49 49 49 49 44 44 44 44 44 49 49 49 44 49 49 44 44 49 44 49 49 44 44 44 44 44 44 49 44 44 44 44 49 44 44 49 44 44 44 49 44 44 44 44 49 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 49 49 44 49 44 44 44 44 44 44 49 49 44 44 44 44 44 44 49 44 49 49 44 44 49 44 44 49 44 44 49 44 44 49 44 44 49 44 49 44 49 44 49 44 44 49 44 49 49 44 44 49 44 49 44 49 44 49 44 44 44 44 49 44 44 49 44 44
*/
