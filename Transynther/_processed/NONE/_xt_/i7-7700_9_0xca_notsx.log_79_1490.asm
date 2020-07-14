.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa58d, %rsi
lea addresses_WC_ht+0xd4ad, %rdi
nop
nop
cmp %rax, %rax
mov $84, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1d1d5, %rsi
lea addresses_UC_ht+0x96ed, %rdi
nop
nop
nop
nop
add $32277, %r10
mov $100, %rcx
rep movsq
nop
nop
nop
nop
xor $848, %rcx
lea addresses_D_ht+0x1620d, %r10
nop
nop
nop
nop
inc %rcx
mov (%r10), %di
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x111ed, %rax
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%rax)
nop
add $42971, %rsi
lea addresses_UC_ht+0xc89d, %rcx
xor $25249, %r15
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xa7ed, %r15
nop
nop
nop
nop
cmp $28932, %r8
mov (%r15), %r10
dec %r10
lea addresses_WT_ht+0x161d5, %rsi
lea addresses_WC_ht+0x151ed, %rdi
nop
nop
xor %rdx, %rdx
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1c06d, %rsi
lea addresses_A_ht+0x151ed, %rdi
nop
nop
nop
xor $25868, %r8
mov $70, %rcx
rep movsq
nop
dec %rdi
lea addresses_UC_ht+0xb1ed, %rsi
lea addresses_A_ht+0x13fed, %rdi
nop
nop
nop
xor $31813, %r8
mov $16, %rcx
rep movsq
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1e6ed, %rcx
nop
nop
nop
nop
nop
add $8197, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
sub $20467, %rax
lea addresses_D_ht+0x111ed, %rdi
clflush (%rdi)
nop
nop
xor %rsi, %rsi
mov (%rdi), %ax
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rax
push %rdi

// Load
lea addresses_A+0x1b4ed, %r12
nop
nop
nop
cmp %rax, %rax
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
sub $19816, %r10

// Store
mov $0x767d5c00000003ed, %r15
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movntdq %xmm1, (%r15)
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x1d8ad, %rdi
nop
nop
nop
nop
nop
inc %r9
movb $0x51, (%rdi)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_D+0x131ed, %r11
sub %r12, %r12
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'36': 79}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
