.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x86e, %rsi
lea addresses_D_ht+0x226e, %rdi
inc %r9
mov $56, %rcx
rep movsq
nop
nop
nop
cmp $46686, %rdx
lea addresses_WC_ht+0x28ee, %rsi
lea addresses_WT_ht+0x1dee6, %rdi
and %r9, %r9
mov $21, %rcx
rep movsw
nop
nop
nop
nop
sub $61814, %rsi
lea addresses_A_ht+0x19cee, %rsi
lea addresses_D_ht+0x10f6e, %rdi
clflush (%rdi)
nop
cmp %r11, %r11
mov $51, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x1074e, %rsi
lea addresses_A_ht+0xb6ee, %rdi
nop
nop
and %r13, %r13
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0xaeee, %rsi
lea addresses_UC_ht+0x1eee, %rdi
nop
nop
nop
nop
dec %r11
mov $112, %rcx
rep movsl
nop
add $33785, %rdi
lea addresses_normal_ht+0x6152, %rsi
lea addresses_D_ht+0x16dee, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $104, %rcx
rep movsb
sub %r13, %r13
lea addresses_WC_ht+0x11c28, %r11
nop
dec %rcx
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_normal+0xba1e, %r8
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
cmp $60070, %rax

// Faulty Load
lea addresses_US+0x5eee, %r15
nop
nop
dec %r11
mov (%r15), %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
