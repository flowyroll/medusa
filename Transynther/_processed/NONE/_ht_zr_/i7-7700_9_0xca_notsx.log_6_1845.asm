.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18bce, %rsi
lea addresses_UC_ht+0x1176e, %rdi
cmp $28920, %rbx
mov $90, %rcx
rep movsb
nop
nop
nop
nop
sub $63418, %r15
lea addresses_WT_ht+0xb5ce, %rsi
lea addresses_D_ht+0x11404, %rdi
nop
nop
cmp $59119, %r10
mov $80, %rcx
rep movsw
nop
nop
nop
xor $61999, %rdi
lea addresses_D_ht+0x11bce, %rsi
lea addresses_UC_ht+0x10b4e, %rdi
nop
nop
nop
add $58679, %r9
mov $6, %rcx
rep movsb
nop
xor $1068, %rdi
lea addresses_UC_ht+0x153ce, %rsi
lea addresses_WC_ht+0x23ce, %rdi
nop
nop
nop
nop
xor $4881, %r10
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
add $31778, %r15
lea addresses_D_ht+0x1c3e9, %rsi
lea addresses_normal_ht+0x17f76, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $71, %rcx
rep movsb
nop
nop
nop
nop
nop
add $61979, %r10
lea addresses_WC_ht+0x1c3ce, %rsi
nop
and %rdi, %rdi
mov (%rsi), %r15
nop
nop
nop
inc %r15
lea addresses_A_ht+0x1aece, %r10
and %rsi, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
add $10112, %r15
lea addresses_A_ht+0x9bce, %r10
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x7dce, %rsi
lea addresses_WT_ht+0x1dc63, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $23, %rcx
rep movsq
and %r15, %r15
lea addresses_D_ht+0xd34e, %rsi
lea addresses_UC_ht+0xb05e, %rdi
nop
add %rbp, %rbp
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x1a7ce, %rsi
lea addresses_D_ht+0xb5a2, %rdi
nop
nop
dec %rbx
mov $24, %rcx
rep movsl
nop
and $20728, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Load
lea addresses_WT+0x1d7ce, %r9
nop
xor $20738, %rbp
mov (%r9), %r15w
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0x78e, %rdi
nop
nop
nop
nop
and $30864, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
cmp $44725, %r10

// Store
mov $0x4434d6000000050e, %r10
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r10)
and %rdx, %rdx

// Store
lea addresses_WC+0x1a24e, %rdi
dec %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
and $13398, %rdi

// Store
lea addresses_PSE+0x1c4ce, %rdi
nop
dec %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_US+0x13ce, %r10
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $31167, %rdi

// Faulty Load
lea addresses_A+0x53ce, %r15
nop
nop
nop
nop
nop
sub $40809, %r9
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 5, '46': 1}
00 00 00 00 46 00
*/
