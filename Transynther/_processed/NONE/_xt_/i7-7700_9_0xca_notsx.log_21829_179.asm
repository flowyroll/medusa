.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7991, %rsi
lea addresses_normal_ht+0x16b91, %rdi
and %r12, %r12
mov $90, %rcx
rep movsb
cmp $58521, %r13
lea addresses_WT_ht+0x8bfd, %r8
nop
nop
nop
nop
add $3088, %rsi
movb (%r8), %r12b
nop
nop
nop
add $13771, %rsi
lea addresses_WC_ht+0x4391, %r8
nop
nop
add $28713, %r14
movb $0x61, (%r8)
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xeda8, %rsi
lea addresses_D_ht+0x1791, %rdi
nop
xor $13550, %rax
mov $85, %rcx
rep movsl
nop
nop
nop
nop
xor $50466, %r8
lea addresses_A_ht+0x12b91, %r13
clflush (%r13)
nop
nop
nop
and $7090, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
xor $63272, %r12
lea addresses_D_ht+0x16131, %rdi
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1eeb1, %rdi
nop
nop
nop
nop
cmp $874, %rcx
movl $0x61626364, (%rdi)
add %r12, %r12
lea addresses_WC_ht+0x1ad11, %rcx
clflush (%rcx)
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
sub $33411, %rcx
lea addresses_D_ht+0x369d, %rsi
lea addresses_WT_ht+0x7191, %rdi
nop
nop
nop
add $59120, %r12
mov $56, %rcx
rep movsq
nop
sub $4483, %r13
lea addresses_A_ht+0x7991, %r8
xor %rsi, %rsi
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
cmp $37458, %rax
lea addresses_WC_ht+0x161d1, %rax
and %r12, %r12
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
inc %r12
lea addresses_D_ht+0x17011, %rcx
nop
add %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x14391, %rsi
lea addresses_WT_ht+0x19011, %rdi
nop
and $31661, %r8
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x431, %rsi
lea addresses_A_ht+0x1d15d, %rdi
nop
nop
xor $53294, %r14
mov $29, %rcx
rep movsb
nop
nop
nop
nop
xor $55317, %rsi
lea addresses_WC_ht+0xb2d8, %r8
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x6b91, %rcx
nop
nop
nop
nop
nop
cmp $52279, %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub %r12, %r12

// REPMOV
lea addresses_WC+0x1b3ed, %rsi
lea addresses_D+0x17391, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $47873, %r9
mov $13, %rcx
rep movsw
add $60106, %rdx

// Store
lea addresses_WT+0x12dc1, %rsi
clflush (%rsi)
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
cmp %r12, %r12

// Store
lea addresses_normal+0x17a89, %r12
nop
add %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x16f91, %r9
nop
nop
nop
and $49347, %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x1481, %rbx
nop
nop
sub $27986, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
add $34086, %rsi

// Store
lea addresses_D+0x18751, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%rdi)
sub %rdx, %rdx

// REPMOV
lea addresses_UC+0x2791, %rsi
lea addresses_WT+0x18ea9, %rdi
nop
xor %rax, %rax
mov $42, %rcx
rep movsl
nop
xor $58510, %rdx

// Faulty Load
lea addresses_PSE+0x6b91, %rdi
nop
add $59467, %rdx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
