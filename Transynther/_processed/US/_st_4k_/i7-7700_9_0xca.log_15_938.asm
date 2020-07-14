.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
lea addresses_D_ht+0x2720, %r14
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r14)
add %rbx, %rbx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x6ef6, %rbx
clflush (%rbx)
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x7ef6, %r15
nop
nop
nop
nop
inc %rbp
mov (%r15), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'52': 15}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
