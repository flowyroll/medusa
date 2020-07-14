.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0x17f7e, %rax
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_WT+0x947e, %rax
nop
nop
add $36617, %r11
mov (%rax), %edx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
