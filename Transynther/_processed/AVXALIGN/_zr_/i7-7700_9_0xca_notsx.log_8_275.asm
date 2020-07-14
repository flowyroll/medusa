.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbf8e, %rdi
nop
nop
add %rsi, %rsi
mov (%rdi), %r15d
nop
nop
nop
nop
sub $57958, %r8
lea addresses_WT_ht+0x11f8e, %rax
xor %rbp, %rbp
movb (%rax), %r15b
nop
nop
nop
nop
nop
and $11527, %rdi
lea addresses_WC_ht+0xdb8e, %rdi
nop
nop
nop
dec %r11
mov (%rdi), %r15
nop
nop
nop
sub $8229, %rbp
lea addresses_A_ht+0xbf8e, %r15
dec %rbp
mov (%r15), %di
nop
dec %rdi
lea addresses_WT_ht+0x757d, %rax
clflush (%rax)
nop
nop
and %rdi, %rdi
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rsi
nop
and %r11, %r11
lea addresses_WC_ht+0x53c2, %rdi
nop
nop
nop
nop
nop
add $50608, %rsi
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xb55e, %rsi
nop
cmp $55616, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
xor $30468, %rdi
lea addresses_A_ht+0xf8be, %rax
and $51674, %rdi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x50fd, %r11
nop
nop
nop
sub $53389, %rax
movb $0x61, (%r11)
nop
xor $26127, %rax
lea addresses_WT_ht+0x1a30a, %rbp
clflush (%rbp)
nop
add $2847, %r8
movw $0x6162, (%rbp)
nop
add %rsi, %rsi
lea addresses_D_ht+0x4e8e, %r8
nop
cmp %rax, %rax
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
cmp $20055, %r8
lea addresses_WC_ht+0xc08e, %rbp
nop
xor $16128, %r15
mov (%rbp), %di
nop
nop
nop
nop
add $4133, %r8
lea addresses_UC_ht+0x17f6e, %rsi
lea addresses_UC_ht+0x702e, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $13, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $8907, %r8
lea addresses_D_ht+0xe78e, %rax
clflush (%rax)
nop
xor %r15, %r15
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
add $20766, %r8
lea addresses_UC_ht+0x2cd2, %rcx
nop
nop
inc %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
add $45582, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x1e78e, %rcx
nop
nop
add %r11, %r11
mov (%rcx), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
