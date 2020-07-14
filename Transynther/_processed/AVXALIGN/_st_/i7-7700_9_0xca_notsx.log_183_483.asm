.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x597e, %r11
dec %r13
movb (%r11), %r14b
nop
nop
inc %r12
lea addresses_normal_ht+0x11186, %rsi
lea addresses_WC_ht+0x12ffe, %rdi
nop
inc %r11
mov $8, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x13b7e, %rsi
lea addresses_WT_ht+0xed7e, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $118, %rcx
rep movsb
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0xebde, %rsi
lea addresses_WC_ht+0x8e7e, %rdi
nop
nop
nop
nop
nop
cmp $36456, %r11
mov $7, %rcx
rep movsb
add %rbp, %rbp
lea addresses_A_ht+0x14a7e, %r13
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0xe9be, %r12
nop
nop
nop
nop
xor $28353, %rbp
movb (%r12), %cl
nop
cmp $3683, %rcx
lea addresses_normal_ht+0x1d10a, %rbp
nop
nop
nop
xor $21344, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbp)
and %r12, %r12
lea addresses_A_ht+0x12d96, %r14
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %r12w
nop
nop
nop
cmp $56546, %r11
lea addresses_A_ht+0x1c93a, %r13
nop
nop
xor %rsi, %rsi
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
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
push %rax
push %rsi

// Load
lea addresses_normal+0x1ec3e, %r13
nop
nop
nop
nop
sub $23401, %rsi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x957e, %r12
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovaps %ymm1, (%r12)
nop
nop
nop
nop
nop
xor $24152, %r12

// Store
lea addresses_WT+0x1957e, %rsi
nop
sub $3454, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
sub $35318, %rax

// Store
lea addresses_US+0x857e, %rsi
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%rsi)
nop
sub $33516, %rax

// Faulty Load
lea addresses_D+0x2d7e, %r10
inc %rax
mov (%r10), %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'36': 183}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
