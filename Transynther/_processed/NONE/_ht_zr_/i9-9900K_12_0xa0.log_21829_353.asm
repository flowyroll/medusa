.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15b0e, %rsi
lea addresses_D_ht+0x970e, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $59, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x19854, %rsi
lea addresses_WT_ht+0x9de6, %rdi
nop
nop
and %rbx, %rbx
mov $25, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1e70e, %rdx
and $58995, %rbx
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
dec %rdx
lea addresses_WT_ht+0x4e6e, %rsi
lea addresses_WC_ht+0x1394c, %rdi
nop
nop
nop
nop
nop
add $50158, %r10
mov $79, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x18452, %r10
add $50996, %rsi
movb $0x61, (%r10)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x14df2, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r8), %bl
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0xebc5, %rsi
nop
dec %rbx
mov (%rsi), %r8d
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x634e, %rsi
lea addresses_D_ht+0xc70e, %rdi
nop
nop
and %r15, %r15
mov $71, %rcx
rep movsl
nop
nop
nop
nop
and $2972, %rcx
lea addresses_normal_ht+0x104e, %rbx
nop
nop
xor %rdi, %rdi
mov (%rbx), %r8
nop
nop
nop
nop
nop
add $5210, %rdi
lea addresses_normal_ht+0x1a10e, %rcx
nop
nop
and $29024, %r10
mov (%rcx), %r15
nop
xor $43266, %r8
lea addresses_normal_ht+0xe3ab, %rsi
lea addresses_WC_ht+0x10f0e, %rdi
clflush (%rsi)
nop
nop
cmp %rbx, %rbx
mov $55, %rcx
rep movsb
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x670e, %rcx
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
dec %rcx
lea addresses_normal_ht+0x7fae, %r8
add %r10, %r10
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $56973, %rcx
lea addresses_WC_ht+0x520e, %rsi
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rsi)
cmp %rbx, %rbx
lea addresses_UC_ht+0xf37f, %rcx
nop
nop
nop
nop
nop
dec %r10
movw $0x6162, (%rcx)
and $21102, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x349e, %rdi
inc %r10
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
add $53597, %r10

// Faulty Load
lea addresses_UC+0x1f70e, %r12
sub $52105, %rbp
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'44': 3570, '46': 24, '49': 6974, '00': 11116, '48': 145}
46 44 44 49 00 44 44 00 49 00 49 00 00 00 49 00 44 00 00 44 44 00 00 49 00 00 00 00 44 49 49 00 49 00 00 00 00 00 44 44 49 00 00 49 44 00 00 44 00 49 00 44 00 00 49 00 00 49 00 44 49 49 00 00 49 00 00 49 00 44 00 00 49 00 00 49 49 00 49 49 44 00 44 44 00 00 00 44 00 00 49 00 00 49 49 00 00 49 49 00 49 00 00 49 49 44 00 44 00 00 49 00 00 00 00 49 49 00 00 49 00 44 49 00 00 49 00 00 49 49 44 49 00 00 49 00 44 00 49 00 44 00 00 44 49 49 00 49 49 00 00 49 49 00 00 44 44 00 00 44 00 00 00 44 00 00 49 00 00 44 49 00 00 44 49 00 49 00 00 49 49 00 00 49 00 00 00 44 00 49 00 00 49 00 49 49 00 00 49 00 00 49 49 00 49 00 00 49 49 00 00 49 49 49 00 44 49 00 00 49 00 00 49 49 00 00 49 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 44 49 00 00 49 49 00 49 00 00 49 49 49 49 49 00 00 49 00 00 49 49 00 00 49 49 44 49 00 00 49 00 00 49 44 49 00 00 44 00 00 49 49 49 00 49 44 44 00 49 00 00 49 49 48 00 00 00 00 00 00 00 44 00 00 00 49 44 44 49 00 49 49 49 49 00 49 00 00 49 49 48 44 49 49 00 00 49 49 49 44 00 49 49 49 00 49 49 00 00 00 44 00 00 49 49 00 00 00 44 00 00 49 00 00 00 49 49 49 00 00 44 44 00 49 49 00 49 49 00 00 49 00 44 44 00 49 49 44 00 49 00 00 49 00 49 00 00 49 49 44 00 49 44 00 49 00 44 00 00 00 49 44 00 00 00 49 00 00 49 49 00 49 00 44 44 00 44 00 00 00 44 00 00 49 00 44 00 44 44 44 00 44 49 00 49 00 00 49 49 00 00 49 49 00 49 00 00 49 49 44 49 49 00 00 49 00 00 49 00 44 49 00 00 49 00 44 44 00 49 00 00 49 49 00 00 44 49 00 49 49 00 49 49 44 49 49 00 49 49 00 00 49 44 49 44 00 49 00 49 49 00 49 00 00 00 00 00 00 44 00 00 49 49 00 00 49 00 00 00 00 44 00 00 00 44 44 00 49 00 44 44 00 00 00 00 00 49 00 44 44 00 49 49 00 00 49 00 00 49 49 00 49 49 00 00 49 44 44 00 00 44 49 00 49 49 44 44 49 00 00 49 00 49 49 00 49 49 00 00 49 00 00 49 00 44 44 44 44 00 49 49 00 00 49 00 44 00 00 49 00 00 00 44 49 49 00 00 44 00 00 49 00 00 00 44 44 00 00 00 44 44 00 00 44 00 00 49 00 44 49 49 00 44 00 44 44 00 44 49 00 00 49 44 46 44 49 49 49 00 49 49 00 00 49 49 44 00 00 44 49 00 44 44 44 00 49 00 00 49 00 44 00 44 49 00 00 49 49 00 49 44 00 00 00 44 00 00 00 44 00 00 49 49 44 00 44 00 00 49 49 00 49 00 44 49 49 49 00 44 00 00 00 44 44 00 49 00 00 49 00 00 49 49 00 00 00 44 44 00 00 44 44 44 00 44 49 00 49 49 00 00 44 00 49 00 44 49 49 48 00 49 00 49 00 00 49 49 00 49 00 00 49 00 44 00 00 49 49 49 00 44 00 49 00 00 49 49 00 00 49 00 00 49 00 00 49 49 44 49 49 00 44 49 00 00 49 00 44 00 00 49 00 00 49 00 44 49 00 00 49 49 00 49 49 44 00 00 44 44 00 49 49 49 00 49 49 49 00 49 49 00 49 49 00 00 00 44 44 44 44 00 00 00 44 44 00 49 49 44 00 00 44 00 00 00 44 00 00 49 49 44 00 49 49 00 44 49 00 00 00 44 00 00 00 44 00 44 49 00 00 49 00 44 00 44 44 00 00 44 00 44 00 00 49 49 00 00 49 00 00 49 49 00 49 00 00 44 00 44 00 00 49 49 00 00 49 00 00 49 00 00 00 49 49 48 00 00 49 00 00 49 44 00 49 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 49 49 00 00 44 00 00 49 00 44 49 00 49 00 00 49 44 00 49 49 49 00 49 00 00 49 00 44 49 00 49 49 00 49 49 49 44 00 00 44 00 49 00 44 49
*/
