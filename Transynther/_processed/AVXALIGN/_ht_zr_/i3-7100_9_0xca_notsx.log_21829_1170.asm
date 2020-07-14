.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d7a5, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
and %rbp, %rbp
lea addresses_A_ht+0x2798, %rsi
lea addresses_UC_ht+0x116e5, %rdi
nop
nop
nop
nop
xor $22082, %rdx
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $11364, %rbp
lea addresses_WT_ht+0xe0e5, %rsi
lea addresses_D_ht+0x1a9a9, %rdi
nop
nop
nop
nop
nop
xor $45886, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x19ce5, %rsi
lea addresses_WT_ht+0x90e5, %rdi
nop
add %r12, %r12
mov $7, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_normal_ht+0x164e5, %rsi
lea addresses_A_ht+0xc2d3, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r12, %r12
mov $56, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1989d, %rdx
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x15de5, %rsi
lea addresses_D_ht+0x44e5, %rdi
xor $17631, %r8
mov $83, %rcx
rep movsb
and $7339, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_A+0xe8e5, %r15
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
and $36637, %rbp

// Faulty Load
lea addresses_PSE+0x70e5, %r8
nop
nop
nop
sub $24255, %r15
vmovntdqa (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'45': 8035, '44': 13755, '00': 4, '49': 35}
45 44 45 44 45 44 44 44 45 44 45 44 45 44 44 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 44 45 44 45 44 44 44 45 44 44 45 44 44 44 45 44 45 44 44 45 44 45 44 44 44 45 44 45 44 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 45 44 45 44 44 45 44 44 44 45 44 44 44 44 45 44 45 44 45 45 44 45 44 45 45 44 45 44 45 44 45 44 44 44 45 44 45 44 45 44 44 44 44 45 44 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 45 45 44 45 44 45 44 45 44 44 44 45 44 44 45 44 45 44 44 44 44 44 45 44 44 44 45 44 44 45 44 45 44 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 45 44 45 44 44 44 45 44 44 45 44 44 45 44 44 45 45 44 44 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 44 45 44 45 44 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 44 44 45 45 44 44 45 44 44 44 44 44 44 45 45 45 44 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 44 44 45 44 44 45 44 45 44 45 44 44 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 49 44 45 44 44 45 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 45 44 45 44 44 44 45 44 45 44 44 45 44 45 44 44 44 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 45 44 45 45 44 44 44 45 44 44 45 44 44 45 44 45 44 45 45 44 44 44 45 44 45 44 45 44 44 44 45 44 44 44 45 44 44 44 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 45 44 44 44 44 45 44 45 44 45 44 44 45 44 45 44 44 45 44 44 45 44 45 44 44 45 44 45 44 44 44 45 44 44 44 45 44 45 44 45 45 44 45 44 44 45 44 44 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 45 44 45 44 44 45 44 45 45 44 45 44 44 45 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 44 44 45 44 45 44 45 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 45 44 44 45 44 44 45 44 44 45 44 44 45 44 45 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 44 45 44 45 44 44 45 45 44 45 44 45 44 45 44 44 44 45 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 44 44 44 45 44 45 44 44 45 44 45 44 44 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 45 44 44 45 44 44 45 44 44 44 45 44 45 44 44 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 45 44 45 44 44 45 44 44 45 44 45 44 45 44 45 44 44 45 44 44 44 45 45 44 44 44 45 44 44 45 44 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 45 44 45 44 44 45 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 44 45 44 45 44 44 45 44 45 44 44 45 44 45 44 45 44 44 45 44 45 44 44 44 44 44 45 44 45 44 44 45
*/
