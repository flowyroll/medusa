.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5367, %rsi
lea addresses_UC_ht+0x17aeb, %rdi
nop
nop
cmp $55324, %r8
mov $66, %rcx
rep movsl
nop
dec %r11
lea addresses_D_ht+0x122e7, %r10
nop
dec %rcx
mov (%r10), %r11d
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x2867, %rsi
lea addresses_A_ht+0x9f67, %rdi
nop
nop
nop
cmp $4104, %rbx
mov $47, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_normal_ht+0xec67, %rdi
cmp %r10, %r10
movl $0x61626364, (%rdi)
nop
nop
add $10346, %r11
lea addresses_A_ht+0x1d3a7, %rbx
nop
dec %rsi
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
add $44305, %rcx
lea addresses_D_ht+0x2867, %r10
nop
nop
add %rcx, %rcx
mov (%r10), %r11w
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x3107, %rdi
nop
nop
and $18700, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdi)
inc %rsi
lea addresses_normal_ht+0xb927, %rcx
nop
nop
nop
nop
and $56010, %rbx
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1be67, %rsi
lea addresses_UC_ht+0x3e67, %rdi
nop
nop
nop
xor %rax, %rax
mov $44, %rcx
rep movsl
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_US+0xc09f, %rsi
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovntdq %ymm1, (%rsi)
nop
nop
nop
and $20089, %r10

// Store
lea addresses_A+0x1e5c7, %r15
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
add %rdi, %rdi

// Store
mov $0xa67, %r10
nop
nop
nop
nop
nop
add $8015, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
dec %rsi

// Faulty Load
mov $0x670bbd0000000a67, %rbp
nop
nop
nop
dec %r14
movaps (%rbp), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 13, '45': 6, '44': 4}
45 00 44 45 00 00 00 44 00 00 44 00 00 45 00 00 00 44 45 45 00 45 00
*/
