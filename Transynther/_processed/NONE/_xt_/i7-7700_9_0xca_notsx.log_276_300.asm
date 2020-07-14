.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xdfc7, %rbp
nop
nop
nop
nop
and %r13, %r13
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
add $31250, %rax
lea addresses_WT_ht+0x99f, %r13
and $56323, %r10
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
cmp $17146, %rax
lea addresses_A_ht+0x417f, %r13
nop
nop
nop
nop
nop
add $58441, %r8
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x3be0, %rsi
lea addresses_normal_ht+0x351f, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $17872, %r13
mov $3, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_normal_ht+0xf955, %r15
xor $35507, %r8
movb (%r15), %r13b
nop
nop
nop
nop
xor $22980, %r13
lea addresses_WT_ht+0x1b025, %rdi
nop
xor $37860, %rbp
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x1159f, %rdi
and %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1339f, %r15
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %r15
vmovntdq %ymm1, (%r15)
nop
nop
nop
nop
cmp $31116, %rcx
lea addresses_A_ht+0xd59f, %rbp
nop
add %rdi, %rdi
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Load
mov $0x577831000000055f, %r12
xor $10912, %rax
movb (%r12), %cl
add %rax, %rax

// Load
lea addresses_D+0x1979f, %rbp
nop
nop
nop
nop
nop
inc %r9
movb (%rbp), %r12b
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_A+0xd41f, %r11
clflush (%r11)
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movntdq %xmm6, (%r11)
nop
nop
add %rbp, %rbp

// Store
lea addresses_WC+0x1e88f, %rcx
nop
nop
nop
nop
nop
and $33960, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movaps %xmm4, (%rcx)
nop
xor $54367, %rcx

// Store
lea addresses_D+0x19953, %r11
nop
xor %rax, %rax
movb $0x51, (%r11)
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_D+0x1979f, %rbp
nop
nop
nop
nop
nop
and $3844, %r9
movb (%rbp), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'36': 276}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
