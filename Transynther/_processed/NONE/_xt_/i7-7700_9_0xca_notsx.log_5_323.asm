.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17177, %r15
and %r10, %r10
movb (%r15), %dl
nop
and %rdx, %rdx
lea addresses_WC_ht+0x13653, %rsi
lea addresses_WT_ht+0x1b6f3, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $52, %rcx
rep movsw
sub %rcx, %rcx
lea addresses_normal_ht+0x144f3, %r10
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1220e, %rsi
lea addresses_WC_ht+0x1d0f3, %rdi
nop
nop
nop
nop
dec %r12
mov $82, %rcx
rep movsl
nop
nop
nop
and $51273, %rsi
lea addresses_D_ht+0x1b273, %rsi
lea addresses_normal_ht+0x7bb3, %rdi
nop
nop
and %rdx, %rdx
mov $102, %rcx
rep movsb
nop
and $42231, %r12
lea addresses_D_ht+0xf7f3, %rsi
lea addresses_WT_ht+0x9af3, %rdi
xor $29683, %rbp
mov $72, %rcx
rep movsl
nop
nop
nop
xor $41517, %rcx
lea addresses_UC_ht+0x1e3f3, %r12
nop
nop
and $14171, %r10
movl $0x61626364, (%r12)
add %r10, %r10
lea addresses_UC_ht+0x19af3, %r10
xor $37712, %rsi
mov (%r10), %r15
xor $41987, %rdx
lea addresses_D_ht+0xa5b9, %rsi
lea addresses_normal_ht+0x16e42, %rdi
nop
and $45748, %rbp
mov $101, %rcx
rep movsq
nop
nop
nop
and $1282, %r10
lea addresses_D_ht+0x11912, %rsi
lea addresses_normal_ht+0x5bf3, %rdi
nop
nop
nop
cmp $61329, %rbp
mov $14, %rcx
rep movsq
cmp $28179, %rsi
lea addresses_normal_ht+0x285b, %rcx
nop
nop
nop
nop
add $17085, %rbp
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1a23, %r15
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
nop
and $56808, %rdi
lea addresses_WT_ht+0x10af3, %rdx
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
nop
add $15721, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x9bf3, %r13
nop
nop
nop
nop
nop
xor $60657, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r13)
nop
dec %r10

// Store
mov $0x21c9cd00000000f3, %r15
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_UC+0x116aa, %rbx
nop
nop
xor $4614, %r14
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
inc %rdx

// Store
lea addresses_UC+0x1bb3, %rdx
nop
nop
nop
add $23080, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdx)
dec %rbp

// Faulty Load
lea addresses_PSE+0x18ef3, %rbx
nop
nop
nop
nop
cmp $31175, %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'33': 5}
33 33 33 33 33
*/
