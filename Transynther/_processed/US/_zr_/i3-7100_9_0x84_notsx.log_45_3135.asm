.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x179ae, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rcx)
nop
xor %r10, %r10
lea addresses_D_ht+0x7baa, %rsi
nop
nop
nop
sub %r13, %r13
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
sub $55642, %r10
lea addresses_WC_ht+0x1c0ea, %rsi
nop
nop
xor %r15, %r15
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
xor $15611, %rsi
lea addresses_D_ht+0x6ada, %rsi
lea addresses_normal_ht+0x1395a, %rdi
nop
sub $6087, %r9
mov $126, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xcac2, %rsi
lea addresses_D_ht+0x1235a, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $86, %rcx
rep movsb
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x15d1a, %rsi
lea addresses_WT_ht+0x60ba, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r10, %r10
mov $101, %rcx
rep movsl
and $48713, %r15
lea addresses_D_ht+0x12bb8, %r9
dec %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x172fa, %r9
nop
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%r9)
and %rcx, %rcx
lea addresses_D_ht+0x12124, %rsi
nop
nop
nop
nop
nop
add $20988, %rdi
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
add $29872, %rcx
lea addresses_WT_ht+0x1a71a, %rsi
lea addresses_A_ht+0x17ada, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $10, %rcx
rep movsl
nop
nop
nop
sub $3143, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x1ce5a, %rdx
nop
nop
nop
nop
nop
cmp $53676, %rax
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
add $48496, %r15

// Load
lea addresses_US+0x935a, %r10
nop
nop
nop
nop
nop
sub $27834, %rbp
movb (%r10), %dl
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x1755a, %rax
nop
nop
nop
nop
add $41180, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
xor $27679, %r15

// Faulty Load
lea addresses_US+0x935a, %rdx
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rdx), %esi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
