.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x199a5, %rsi
lea addresses_UC_ht+0x185e5, %rdi
nop
nop
nop
nop
nop
and $23371, %r12
mov $118, %rcx
rep movsb
nop
nop
sub $37355, %r11
lea addresses_WT_ht+0xebe5, %r8
nop
nop
and %r14, %r14
mov (%r8), %rsi
nop
nop
nop
nop
xor $12775, %rdi
lea addresses_WT_ht+0x112a5, %r12
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r12
vmovaps %ymm4, (%r12)
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0xce5, %rdi
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $9705, %r14
lea addresses_A_ht+0xeca5, %rsi
lea addresses_D_ht+0x137a3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbx
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x10df5, %r8
nop
nop
nop
and $41025, %rcx
mov (%r8), %r11w
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x10175, %rsi
lea addresses_normal_ht+0x191f5, %rdi
nop
nop
inc %r14
mov $46, %rcx
rep movsq
nop
nop
nop
nop
add $55145, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x164a5, %rsi
nop
nop
nop
cmp %rdi, %rdi
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %r8
and $0xff, %r8
shlq $12, %r8
mov (%r8,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'2a': 1}
2a
*/
