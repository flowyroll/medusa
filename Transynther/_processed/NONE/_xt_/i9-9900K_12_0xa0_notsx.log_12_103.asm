.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x141fe, %rsi
lea addresses_WT_ht+0x666e, %rdi
clflush (%rdi)
nop
nop
nop
and %r11, %r11
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x102ee, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
xor $8842, %r11
lea addresses_WC_ht+0x11dde, %rsi
lea addresses_A_ht+0x166ee, %rdi
nop
nop
nop
add $43826, %r14
mov $27, %rcx
rep movsl
and %r13, %r13
lea addresses_A_ht+0x49ee, %r11
nop
nop
add %r15, %r15
movb (%r11), %r13b
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_A+0x1b9de, %r10
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovntdq %ymm0, (%r10)
nop
nop
nop
dec %r8

// Load
mov $0x3338fa0000000cee, %r12
nop
nop
nop
nop
nop
and $7163, %rbx
mov (%r12), %r8d
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WC+0x1a056, %r9
nop
nop
nop
sub $50070, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_D+0x2cee, %r10
nop
and %rbx, %rbx
mov (%r10), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
