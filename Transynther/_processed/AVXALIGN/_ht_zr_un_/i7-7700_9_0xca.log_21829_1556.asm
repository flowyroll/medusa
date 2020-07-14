.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ede4, %rcx
cmp %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x2264, %rdx
nop
and $50158, %rsi
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
dec %rcx
lea addresses_normal_ht+0x3424, %rsi
lea addresses_D_ht+0x11d90, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %r12, %r12
mov $5, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_WC_ht+0xf164, %rcx
nop
nop
cmp $19092, %rdi
movw $0x6162, (%rcx)
cmp $55205, %r11
lea addresses_A_ht+0xa426, %rsi
lea addresses_WT_ht+0x304, %rdi
nop
nop
nop
nop
nop
add $44655, %r11
mov $39, %rcx
rep movsb
nop
cmp %r14, %r14
lea addresses_A_ht+0xa6e4, %rsi
lea addresses_D_ht+0x9834, %rdi
nop
nop
nop
and %rbx, %rbx
mov $110, %rcx
rep movsl
nop
nop
nop
nop
xor $62048, %rdx
lea addresses_UC_ht+0x1b1e4, %r11
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r11)
cmp $21132, %rdi
lea addresses_WC_ht+0xc63e, %rdi
nop
nop
nop
nop
cmp $41852, %rcx
mov (%rdi), %edx
nop
xor $49176, %rbx
lea addresses_WT_ht+0x18c5c, %rsi
lea addresses_normal_ht+0x67e4, %rdi
clflush (%rdi)
cmp $49767, %r12
mov $24, %rcx
rep movsq
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x9ee4, %rbx
sub $52876, %rcx
movb (%rbx), %r11b
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Load
lea addresses_PSE+0x10654, %rbp
add $59902, %r9
movb (%rbp), %r15b
nop
nop
nop
dec %r9

// Store
lea addresses_WC+0x3c24, %rax
nop
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%rax)
nop
add %r9, %r9

// Store
lea addresses_US+0xf424, %rbp
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and $53810, %rsi

// Load
mov $0x6b31e40000000ae4, %rsi
nop
nop
nop
nop
nop
xor $34997, %r15
movb (%rsi), %r9b
nop
nop
and %rbp, %rbp

// Load
lea addresses_normal+0x17ee4, %rsi
nop
nop
nop
nop
and $14383, %r15
mov (%rsi), %r9
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_US+0x116e4, %rsi
nop
nop
cmp %rbp, %rbp
vmovntdqa (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'44': 3286, '45': 10973, '49': 7509, '00': 60, 'fd': 1}
fd 44 45 45 49 45 49 45 45 45 49 45 49 45 45 44 49 45 49 45 49 44 45 45 49 44 49 45 45 49 45 49 49 44 45 45 49 49 44 45 45 45 44 45 49 49 45 45 49 49 45 45 45 45 45 45 45 45 49 49 44 49 45 49 49 45 49 45 45 49 45 45 45 49 45 45 45 44 49 45 45 45 44 45 45 49 45 44 45 45 49 45 49 45 44 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 44 45 45 45 49 44 45 49 49 44 44 45 45 45 45 45 49 49 44 49 45 49 49 49 45 49 44 45 49 44 49 44 49 45 45 49 44 45 49 45 44 49 44 45 45 45 49 44 49 49 45 45 45 49 49 45 49 49 44 45 49 44 44 45 45 49 49 45 45 44 49 44 44 49 49 45 45 49 45 44 45 49 45 45 45 49 45 49 45 49 45 45 49 45 45 49 45 49 44 44 49 45 44 44 45 45 49 49 45 45 49 45 45 45 45 49 45 45 45 45 44 49 45 49 45 45 45 45 49 45 49 45 49 44 49 45 45 49 45 49 44 44 49 45 49 45 49 49 45 49 44 45 45 45 49 44 45 44 45 00 49 49 49 45 45 45 45 44 49 44 49 45 49 45 45 49 45 45 49 49 45 45 49 44 49 44 45 44 49 45 49 45 49 45 49 45 49 44 45 45 45 49 45 49 45 49 49 45 45 45 45 45 45 45 44 49 44 45 49 45 45 44 49 45 45 44 44 49 45 45 45 45 45 44 45 45 49 45 45 44 49 49 44 45 44 49 45 44 44 49 45 45 45 44 49 44 49 45 49 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 49 45 45 49 49 45 45 45 44 45 45 44 49 49 45 45 45 44 44 44 49 49 49 45 44 49 45 45 49 49 49 44 45 45 45 49 49 45 45 45 45 49 45 45 49 49 44 49 45 45 49 45 45 45 49 45 45 44 45 45 45 49 44 49 49 49 45 45 45 49 49 44 45 49 45 45 45 45 45 45 45 45 49 45 49 45 44 49 49 49 45 45 45 45 45 44 49 45 45 45 45 49 49 45 49 45 49 44 45 45 49 45 45 49 44 45 45 45 44 49 44 44 49 45 49 44 45 45 45 49 49 44 49 44 49 49 45 49 45 45 45 49 45 49 44 49 45 45 49 44 49 45 44 49 45 49 44 49 44 44 45 45 49 44 45 45 45 45 49 45 45 44 49 44 49 45 45 45 49 45 45 49 49 45 45 45 45 49 49 49 49 45 49 45 49 45 49 45 49 45 45 44 49 45 45 49 44 49 45 49 45 45 45 45 45 45 45 49 49 45 45 49 45 49 45 45 44 00 45 49 44 45 45 44 49 45 45 49 45 45 44 45 45 49 45 49 45 49 45 45 45 45 49 49 49 45 49 44 45 49 44 49 45 45 45 45 45 49 45 45 49 49 45 45 49 49 45 45 44 45 44 49 44 49 49 49 45 49 45 45 49 45 49 45 45 45 45 45 49 49 45 49 49 45 45 45 44 45 45 44 49 45 45 49 44 49 49 45 49 49 44 45 49 45 45 49 45 44 44 49 45 49 49 44 49 44 45 45 44 45 49 49 44 45 49 45 45 45 49 45 45 45 49 44 45 45 45 44 49 44 44 49 45 45 49 49 49 49 49 44 49 45 44 45 44 49 45 49 44 45 45 44 49 45 45 44 49 49 45 45 44 44 45 45 44 44 49 45 49 45 45 45 49 49 45 49 49 44 00 49 49 45 45 49 45 49 45 44 49 45 45 49 49 45 49 45 49 45 49 49 45 45 45 45 45 45 49 45 45 45 44 45 45 45 45 49 45 45 45 45 44 45 45 45 49 49 45 44 45 45 49 45 49 45 45 45 45 49 49 45 45 45 49 49 45 49 49 45 49 45 49 49 45 49 49 45 45 45 45 49 45 45 44 45 45 49 45 49 45 45 45 44 49 45 45 49 45 45 45 49 45 49 45 45 45 49 49 45 49 45 45 45 45 44 49 49 45 44 44 49 49 45 45 49 49 44 44 45 45 45 45 45 49 44 44 49 44 44 44 45 49 49 44 49 45 49 49 44 49 49 45 45 45 45 45 49 45 45 49 44 49 45 45 45 44 49 49 45 45 45 49 49 45 45 49 44 45 49 45 45 49 45 44 45 49 44 49 45 49 45 49 45 49 44 45 44 44 49 45 49 45 45 49 45 49
*/
