.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6b81, %rsi
lea addresses_D_ht+0xa441, %rdi
xor %rbx, %rbx
mov $91, %rcx
rep movsl
nop
nop
xor $13197, %rdx
lea addresses_D_ht+0x183bf, %r9
nop
nop
nop
nop
xor %r14, %r14
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
and $12515, %rbx
lea addresses_normal_ht+0xd581, %r9
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%r9)
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x9af1, %rsi
lea addresses_normal_ht+0x7a01, %rdi
and %r13, %r13
mov $37, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xa581, %r14
nop
xor $47351, %rdi
mov (%r14), %r9d
nop
and %rcx, %rcx
lea addresses_WC_ht+0x16908, %rdi
nop
nop
nop
nop
nop
add $9426, %rsi
mov (%rdi), %r14
nop
xor %r14, %r14
lea addresses_normal_ht+0x5581, %rsi
lea addresses_D_ht+0x6e21, %rdi
nop
nop
cmp %r13, %r13
mov $48, %rcx
rep movsq
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0xd741, %r14
nop
add $14370, %rsi
mov (%r14), %r9
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x8741, %rcx
nop
nop
and $44441, %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x65f9, %rbx
nop
nop
dec %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
dec %rcx

// Load
lea addresses_normal+0x8581, %rcx
nop
nop
add $39207, %rax
mov (%rcx), %r14d
and %rax, %rax

// Faulty Load
mov $0x3404c50000000581, %rbx
nop
nop
nop
nop
and %r12, %r12
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'same': True, 'congruent': 1, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'44': 4922, '00': 10831, '48': 6076}
48 44 48 00 00 00 44 48 00 44 48 00 44 00 48 00 00 00 00 00 44 00 48 00 00 48 00 44 48 48 00 00 00 44 48 00 00 00 00 44 48 00 00 00 44 00 48 00 00 48 00 44 48 00 00 48 00 48 00 00 44 48 48 48 00 44 00 48 00 44 48 00 44 48 48 00 00 44 48 00 48 00 44 44 48 00 44 00 00 00 00 00 44 48 00 44 48 00 00 00 00 44 48 00 00 00 44 48 00 00 44 48 48 00 44 48 00 44 48 00 48 00 00 44 44 44 00 48 00 44 48 00 00 00 44 48 00 48 00 00 48 00 44 00 44 48 00 00 00 00 48 48 48 48 00 48 44 48 00 48 48 48 48 00 00 44 44 48 00 00 48 48 44 00 48 48 48 00 44 48 44 00 48 44 00 48 48 48 00 44 44 48 00 48 48 44 48 00 00 48 00 48 48 00 00 44 44 48 00 00 44 44 48 48 48 48 48 00 00 48 00 44 00 00 00 48 48 48 00 48 00 44 00 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 44 48 00 48 44 00 44 00 48 48 48 00 44 00 48 48 48 00 48 48 00 48 00 00 48 00 00 48 48 48 48 00 00 44 00 00 00 00 48 00 00 44 48 00 00 00 00 00 48 00 00 44 00 44 00 00 48 00 44 00 48 00 44 48 00 00 00 00 44 44 48 00 00 00 00 00 00 00 44 00 48 00 48 00 44 00 48 00 00 44 00 44 48 48 48 00 00 00 00 00 00 44 44 48 00 00 44 48 00 00 00 00 48 00 00 00 00 48 00 48 48 48 00 00 00 48 00 00 48 00 44 00 44 48 00 48 00 00 44 48 48 00 44 00 44 48 00 48 00 00 44 44 48 00 44 48 00 44 00 44 00 48 48 00 00 44 48 00 00 44 48 48 00 00 44 00 44 48 48 00 00 00 44 00 44 48 00 00 00 44 44 48 00 00 48 00 44 00 44 48 00 44 48 48 00 44 48 00 44 48 48 00 44 44 48 00 44 00 44 48 00 00 44 00 00 48 00 00 44 48 00 00 00 00 44 48 00 44 00 00 48 48 48 00 44 44 00 00 00 48 00 00 00 00 44 00 00 00 00 00 00 44 48 00 00 44 48 48 00 44 44 48 00 00 44 48 48 00 00 00 00 44 44 48 00 00 00 48 00 44 48 00 00 44 00 00 48 48 00 00 00 44 48 00 00 00 44 00 48 00 00 44 48 00 00 00 00 44 44 00 44 48 00 44 00 48 00 00 00 00 00 44 44 44 00 00 00 44 44 48 00 00 00 00 44 48 00 44 48 48 00 44 48 48 00 44 00 00 48 00 44 00 44 48 00 48 00 00 44 48 48 00 00 44 00 44 00 00 48 00 00 00 00 44 44 48 00 00 44 48 00 00 44 48 00 00 00 00 44 48 00 44 00 00 44 00 48 48 48 48 00 00 44 48 00 00 44 00 44 44 00 48 00 48 48 00 44 00 44 48 48 00 00 44 48 00 44 48 00 48 48 00 44 48 00 00 44 00 48 48 00 00 44 00 44 48 00 44 48 00 00 00 44 48 48 48 00 00 48 00 00 44 44 00 48 00 00 44 48 48 00 48 00 44 00 48 00 00 00 44 00 44 48 00 00 44 44 00 00 44 44 48 00 44 00 48 00 44 00 48 00 00 44 00 48 00 44 48 48 00 44 48 00 00 44 00 00 48 00 00 48 00 44 48 48 00 44 00 44 48 00 44 48 00 44 48 00 00 44 44 44 48 00 00 48 00 44 00 44 44 44 00 48 00 00 44 00 44 00 44 48 00 44 48 48 00 00 00 44 00 48 00 00 00 44 48 00 00 00 00 00 00 44 00 00 00 00 44 48 00 00 44 48 48 00 00 44 00 48 00 00 00 00 44 00 00 00 00 48 48 00 00 44 48 00 00 44 44 00 48 48 00 44 00 48 48 00 44 00 00 48 00 44 00 44 44 00 00 48 44 48 00 00 44 48 00 00 44 48 48 00 44 44 44 00 00 00 48 00 00 44 00 00 48 48 00 44 00 44 48 48 00 00 00 00 44 44 48 48 00 44 00 44 48 00 44 44 48 00 44 48 00 48 00 00 00 44 00 00 00 48 00 00 44 44 00 44 48 00 44 00 00 00 00 00 44 48 00 00 44 00 44 48 00 00 44 48 48 00 00 48 00 44
*/
