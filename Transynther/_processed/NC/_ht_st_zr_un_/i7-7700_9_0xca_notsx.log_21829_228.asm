.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x186f0, %rsi
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1e448, %r8
and %rax, %rax
movb $0x61, (%r8)
nop
nop
inc %rdi
lea addresses_normal_ht+0x19e80, %rsi
lea addresses_D_ht+0x7480, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $28901, %r12
mov $45, %rcx
rep movsl
nop
nop
nop
nop
add $564, %rax
lea addresses_D_ht+0x14280, %rsi
lea addresses_WC_ht+0x19dc, %rdi
nop
and $29069, %r11
mov $97, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x3340, %r12
nop
xor %rcx, %rcx
mov (%r12), %eax
nop
add $16820, %r11
lea addresses_D_ht+0x1a6c8, %rsi
lea addresses_normal_ht+0x2280, %rdi
nop
nop
nop
nop
mfence
mov $31, %rcx
rep movsl
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x5048, %rdi
clflush (%rdi)
and $18374, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
cmp $151, %r11
lea addresses_D_ht+0x18f80, %r8
nop
nop
cmp %r12, %r12
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
and $46105, %rcx
lea addresses_D_ht+0x19280, %r12
clflush (%r12)
nop
nop
and %r8, %r8
mov (%r12), %rax
nop
nop
nop
nop
nop
and $27742, %r12
lea addresses_A_ht+0x6df0, %rcx
nop
nop
inc %r11
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
xor $29377, %rsi
lea addresses_normal_ht+0xb42a, %rdi
nop
nop
nop
nop
nop
cmp $10538, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
xor $44653, %r11
lea addresses_WT_ht+0x15dc0, %rsi
lea addresses_WC_ht+0x6680, %rdi
clflush (%rsi)
nop
inc %r12
mov $23, %rcx
rep movsl
nop
xor $24111, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_WT+0x10e80, %r10
clflush (%r10)
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_D+0xc280, %rcx
nop
nop
nop
nop
nop
and $23656, %r15
mov (%rcx), %r10d
nop
nop
xor $11825, %r10

// Load
lea addresses_WT+0x4d20, %r12
xor $53796, %r9
movups (%r12), %xmm6
vpextrq $0, %xmm6, %r13

// Exception!!!
mov (0), %r9
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
mov $0x7cdd9e0000000a80, %r15
nop
nop
nop
nop
nop
dec %r10
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'7b': 1, '00': 20186, '01': 3, '30': 1, '44': 514, '46': 23, '39': 957, '45': 9, '49': 135}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 46 00 39 00 39 39 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 39 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 49 00 00 49 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 39 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 39 44 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 44 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 39 00 00 44 00 00 00 00 00 00 00 00 00 00 39 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
