.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rdx
lea addresses_A_ht+0x1563b, %r14
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x1463b, %r12
clflush (%r12)
nop
nop
nop
nop
sub $33080, %r11
mov (%r12), %r15d
nop
nop
nop
cmp $3525, %rbx
lea addresses_normal_ht+0x803b, %r15
cmp $53041, %rdx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
and $16981, %r14
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx

// Faulty Load
lea addresses_US+0x1663b, %rcx
nop
and %r8, %r8
mov (%rcx), %r9d
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
