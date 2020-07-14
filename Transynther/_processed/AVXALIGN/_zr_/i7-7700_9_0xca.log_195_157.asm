.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xcfb4, %r15
cmp %rcx, %rcx
mov (%r15), %r11d
nop
nop
nop
nop
nop
add $6547, %rdi
lea addresses_normal_ht+0x9de7, %rsi
lea addresses_UC_ht+0xa9d4, %rdi
nop
nop
xor $34134, %r10
mov $11, %rcx
rep movsw
nop
add $3488, %rsi
lea addresses_A_ht+0x8ad4, %rsi
lea addresses_WT_ht+0x10111, %rdi
nop
nop
cmp %r13, %r13
mov $127, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_A_ht+0x4194, %rsi
lea addresses_UC_ht+0x4e64, %rdi
nop
nop
cmp %r15, %r15
mov $125, %rcx
rep movsq
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1a804, %rsi
lea addresses_D_ht+0x19b4, %rdi
nop
nop
nop
add $2124, %rax
mov $12, %rcx
rep movsw
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x13194, %rsi
mov $0x594, %rdi
nop
xor %r14, %r14
mov $8, %rcx
rep movsl
xor $12940, %rdi

// Faulty Load
lea addresses_WC+0x9994, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $48045, %rbp
mov (%rsi), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'00': 195}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
