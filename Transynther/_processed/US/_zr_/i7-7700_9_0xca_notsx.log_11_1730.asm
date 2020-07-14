.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16efb, %rcx
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rcx
movaps %xmm4, (%rcx)
nop
xor $15816, %r13
lea addresses_WT_ht+0x681b, %r12
and %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r12)
lfence
lea addresses_UC_ht+0x2227, %rsi
lea addresses_UC_ht+0xed1b, %rdi
nop
nop
nop
add $9170, %r12
mov $61, %rcx
rep movsw
nop
nop
nop
sub $43609, %r11
lea addresses_D_ht+0x1a9b, %rsi
nop
nop
nop
nop
add $53378, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rsi)
sub $64173, %r8
lea addresses_WC_ht+0x3f8d, %r13
nop
add %rdi, %rdi
mov (%r13), %r14d
xor $25234, %r11
lea addresses_WT_ht+0x2fb, %rsi
lea addresses_A_ht+0x737b, %rdi
nop
nop
nop
inc %r8
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x365b, %r12
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r12), %r13w
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1491b, %rcx
nop
nop
sub $51749, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x399b, %rsi
lea addresses_A_ht+0xa193, %rdi
nop
nop
nop
inc %r13
mov $17, %rcx
rep movsw
inc %rdi
lea addresses_WT_ht+0x1cb99, %rsi
clflush (%rsi)
xor %r11, %r11
movw $0x6162, (%rsi)
add $4612, %rcx
lea addresses_D_ht+0xaecb, %r11
add %r8, %r8
movb $0x61, (%r11)
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x311b, %rsi
lea addresses_UC_ht+0x28bb, %rdi
nop
nop
nop
cmp %r13, %r13
mov $106, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_D_ht+0xa5b3, %rsi
lea addresses_normal_ht+0x34a7, %rdi
nop
nop
nop
nop
inc %r11
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $61493, %r8
lea addresses_WC_ht+0x7a7b, %rsi
lea addresses_UC_ht+0x1749b, %rdi
nop
nop
nop
sub $18922, %r11
mov $5, %rcx
rep movsw
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x1c51b, %rcx
nop
nop
nop
cmp $55223, %r14
movb (%rcx), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
