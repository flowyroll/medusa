.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x566f, %rax
nop
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%rax)
nop
nop
nop
nop
sub $1197, %r13
lea addresses_UC_ht+0xa66f, %r15
nop
nop
cmp $2311, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r15)
nop
nop
add $65393, %r15
lea addresses_A_ht+0x9e6f, %r11
clflush (%r11)
nop
nop
nop
nop
nop
inc %rbx
movb $0x61, (%r11)
nop
inc %rax
lea addresses_WC_ht+0x12f21, %rsi
lea addresses_normal_ht+0xb66f, %rdi
clflush (%rdi)
sub %r13, %r13
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0xb06f, %rsi
lea addresses_D_ht+0xe227, %rdi
nop
nop
nop
nop
add $4044, %rbx
mov $87, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x70b6, %rbp
clflush (%rbp)
xor %rdi, %rdi
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax

// Store
lea addresses_PSE+0x1e26f, %r14
clflush (%r14)
nop
nop
nop
nop
add $30731, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovntdq %ymm0, (%r14)
sub $28150, %r8

// Store
lea addresses_normal+0x966f, %r14
nop
xor %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movntdq %xmm2, (%r14)
xor $22254, %r14

// Load
mov $0x178f2c0000000e6f, %r9
nop
nop
nop
xor $25087, %r11
mov (%r9), %r10w

// Exception!!!
mov (0), %r8
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WT+0x1012f, %r14
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r14)
nop
cmp $18678, %r10

// Store
lea addresses_WC+0x4b8f, %r14
clflush (%r14)
nop
nop
nop
nop
sub $12728, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
sub $47982, %r8

// Store
lea addresses_normal+0x1f58a, %r12
xor $17690, %r14
mov $0x5152535455565758, %rax
movq %rax, (%r12)
xor %r8, %r8

// Faulty Load
mov $0x178f2c0000000e6f, %r10
clflush (%r10)
nop
nop
add %r14, %r14
mov (%r10), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
