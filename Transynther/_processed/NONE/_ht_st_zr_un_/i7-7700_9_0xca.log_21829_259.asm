.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14d54, %r12
nop
nop
nop
nop
cmp $3810, %rcx
movb $0x61, (%r12)
and $36337, %r13
lea addresses_UC_ht+0xa4c8, %rsi
lea addresses_A_ht+0xc8de, %rdi
nop
inc %rdx
mov $121, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xdfb8, %rcx
nop
nop
nop
nop
cmp $22593, %rdx
movb (%rcx), %r13b
nop
xor $34354, %rsi
lea addresses_UC_ht+0x4338, %rsi
lea addresses_WC_ht+0x1b8, %rdi
nop
nop
add $39069, %rbp
mov $8, %rcx
rep movsl
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xabb8, %rdi
nop
and $12755, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x15b8, %rsi
lea addresses_WT_ht+0x1b2f8, %rdi
nop
nop
and %r11, %r11
mov $39, %rcx
rep movsl
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x51b8, %rsi
lea addresses_WC_ht+0x1b0b8, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $38765, %r13
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $63480, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0xa1b8, %r14
nop
nop
nop
and %rdx, %rdx
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'44': 24, '46': 70, '47': 1648, '00': 4755, '70': 88, '53': 1435, 'e8': 1, '92': 1, '20': 3, '79': 32, 'df': 1, 'ff': 11024, 'fa': 1, '76': 1, 'a6': 1, '01': 2736, '90': 8}
ff 00 00 ff ff 01 ff 01 ff 00 ff ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 01 ff 01 ff ff 01 ff 01 53 ff 47 ff 00 ff ff ff 01 ff ff 01 ff 01 ff 01 ff ff 01 47 00 ff 53 ff ff ff 01 ff 01 47 47 00 00 53 ff ff 00 ff ff 00 00 00 00 00 53 ff ff ff 47 ff 47 00 00 ff 47 47 47 ff 00 ff ff ff ff ff 01 ff 70 47 47 53 00 ff 20 53 ff 53 ff 00 00 53 00 00 00 47 ff ff ff ff ff 01 ff 01 00 ff 53 ff ff 01 ff ff 01 ff 01 ff 01 ff 01 00 00 00 ff ff ff ff 01 00 ff ff 70 00 00 00 ff 00 ff ff ff 00 ff 01 ff 01 53 53 ff ff 00 ff 47 ff ff 01 00 ff ff 01 ff 01 ff 01 00 ff ff ff 01 00 ff ff 01 00 00 ff 53 ff ff 00 ff 00 ff ff 01 ff 01 ff ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 01 ff ff 01 47 47 ff 00 ff 00 ff ff ff 01 47 ff ff 00 00 00 ff ff ff 47 ff ff 01 ff 01 ff 01 53 ff 47 ff 47 53 ff ff ff 01 ff ff 01 47 ff ff 01 ff 01 ff 01 ff 01 00 00 00 ff 00 ff 00 47 00 53 53 00 47 00 ff ff 00 ff ff 00 ff 47 ff 00 ff ff ff 01 ff 01 ff ff 01 ff ff 01 ff 01 ff ff 70 47 47 ff 00 ff 00 00 47 ff ff ff ff ff ff 01 ff 01 ff 01 ff 01 ff ff 01 00 00 00 ff ff 00 ff ff ff 00 ff 00 ff 53 00 00 53 47 ff ff 47 ff 00 00 47 00 ff ff ff ff 00 ff ff 01 ff 01 ff 01 ff ff 01 ff 01 47 00 ff 00 00 53 ff ff 00 ff ff ff 00 00 ff ff ff 01 ff ff 01 00 ff 53 00 ff 47 47 ff ff ff 00 79 ff 00 ff ff 53 ff ff 01 ff 01 ff 00 47 ff ff ff 01 00 53 ff 00 00 00 00 00 ff 53 ff ff ff 00 ff ff 00 00 00 ff ff ff ff 01 ff 01 00 ff ff 01 ff 01 ff 00 53 47 ff 00 ff ff ff ff 01 ff 70 00 ff ff 53 ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 00 00 ff 00 00 00 ff 00 ff ff ff ff ff 01 00 ff ff 01 ff 01 ff 01 ff 01 ff 00 ff ff 01 53 ff 00 00 ff ff ff ff 01 00 ff ff 01 00 00 ff ff 01 ff 00 47 00 ff 00 00 ff 53 ff ff ff 00 47 ff ff 00 00 ff ff ff ff 01 00 00 00 00 ff ff 00 00 00 47 00 53 ff 47 ff ff 47 ff ff ff 00 ff 00 ff ff 01 ff 01 ff 01 00 ff 47 00 ff ff ff 00 ff ff 01 ff 01 ff 01 ff 01 ff 70 ff 01 00 ff 53 00 47 ff 00 00 ff ff ff 00 ff ff ff 01 00 ff ff 01 ff 01 00 53 00 00 ff 47 ff 47 00 ff 47 ff 01 ff ff 00 00 ff ff ff ff ff 01 ff 00 ff 01 ff 00 ff ff 01 ff ff 01 00 ff ff 70 53 00 ff ff 47 ff ff 01 53 ff ff 01 ff ff ff 01 47 00 ff ff 01 ff 47 ff ff ff ff 01 53 00 ff ff 00 00 53 00 ff ff ff 00 ff 00 ff 47 ff ff ff 01 00 ff ff 00 ff ff 01 ff 01 ff 01 ff ff 01 ff ff 01 ff ff 01 ff 01 ff 01 00 ff 01 00 00 00 ff ff ff 00 00 00 00 00 ff ff ff ff ff ff 01 ff 01 ff 70 ff 01 ff 01 ff 01 53 53 ff ff ff 01 ff 01 ff ff ff 01 ff 01 00 ff 01 00 ff 00 00 ff 00 ff ff 47 00 00 ff 01 00 ff ff 00 ff 53 ff 00 00 ff 47 ff 53 ff 00 ff 00 00 00 47 ff 00 00 ff 00 ff ff ff ff ff ff 01 ff 01 ff 01 00 ff ff ff 01 00 ff 00 00 47 47 47 ff ff 53 53 ff ff 00 00 ff ff ff ff 01 00 ff ff 01 ff 01 00 ff ff 01 ff 01 53 ff ff 01 00 53 47 ff ff ff ff ff 01 ff 01 ff ff 01 ff 47 ff ff 01 ff 01 00 ff ff 01 00 ff 00 ff ff 01 ff 47 ff ff ff 01 ff ff ff 01 ff 01 00 00 ff 00 00 47 ff 00 00 ff ff ff 53 00 47 ff ff 00 53 ff 47 53 ff ff 00 ff 00 ff 53 47 00 ff ff ff ff ff ff 01 ff 01 00 00 ff 47 ff 47 00 ff 47 00 ff ff ff 90 ff ff ff 90 53 ff 47 ff ff 00 ff 47 ff 53 ff 01 ff 01 ff 01 ff
*/
