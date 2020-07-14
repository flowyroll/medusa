.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xfb5e, %rsi
lea addresses_UC_ht+0xd5c4, %rdi
nop
sub $26490, %r10
mov $116, %rcx
rep movsw
cmp $15276, %r15
lea addresses_D_ht+0x94f6, %rbx
nop
cmp %r9, %r9
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
cmp $8753, %rcx
lea addresses_WT_ht+0x19b1e, %rsi
nop
cmp %r15, %r15
mov (%rsi), %rbx
nop
nop
inc %r9
lea addresses_D_ht+0x17546, %rsi
lea addresses_WT_ht+0xff5e, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0xa8de, %rcx
clflush (%rcx)
nop
and $37973, %rax
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x9f70, %rsi
lea addresses_D_ht+0x12b5e, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $46, %rcx
rep movsb
lfence
lea addresses_normal_ht+0x120e, %rbx
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rbx)
cmp $14644, %r10
lea addresses_D_ht+0x1096a, %rcx
nop
nop
nop
nop
cmp $30798, %rbx
movb (%rcx), %r10b
nop
nop
nop
nop
xor $40317, %rax
lea addresses_normal_ht+0x875e, %rsi
lea addresses_UC_ht+0x14f5e, %rdi
nop
dec %r15
mov $78, %rcx
rep movsl
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xb75e, %r12
nop
nop
nop
nop
dec %rax
movb $0x51, (%r12)

// Exception!!!
nop
nop
nop
nop
mov (0), %r12
nop
cmp $31359, %rax

// Store
lea addresses_normal+0x147aa, %r13
clflush (%r13)
xor $11786, %r14
movb $0x51, (%r13)
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x41fe, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x51, (%rsi)
nop
add %rsi, %rsi

// Store
lea addresses_D+0xf5e, %r14
nop
and %r12, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add $12163, %r13

// Store
lea addresses_UC+0x1695e, %r14
nop
nop
inc %r13
movl $0x51525354, (%r14)
nop
nop
nop
add $55265, %r12

// Load
lea addresses_WC+0xcdec, %r12
nop
nop
cmp %rsi, %rsi
mov (%r12), %r13
nop
nop
nop
nop
nop
add $51591, %r13

// Store
lea addresses_US+0x15b5e, %rdx
sub $60822, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x1ec1e, %r14
clflush (%r14)
nop
and %rsi, %rsi
movb $0x51, (%r14)
nop
nop
nop
and $55969, %r13

// Store
mov $0x124a490000000502, %r14
clflush (%r14)
nop
nop
nop
nop
sub $20277, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r14)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_normal+0xb75e, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $57487, %r13
vmovaps (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 6942, '51': 1448}
00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 51 00 00 00 00 00 00 00 00 51 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 51 00 00 00 00 51 00 00 00 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 51 00 00 00 51 00 00 00 51 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 51 00 51 00 00 00 00 00 51 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 51 00 00 00 00 51 00 00 00 51 00 00 51 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 51 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 51 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 51 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 51 51 51 00 00 51 00 00 00 51 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 51 00 00 00 51 51 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 51 00 00 51 00 00 00 00 51 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 51 00 00 00 00 00 00 00 00 00 51 51 00 00 51 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 51 00 00 51 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 51 00 00 00 51 00 00 00 00 00 00 00 00 51 51 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00
*/
