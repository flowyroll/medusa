.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_WT_ht+0x1d53e, %r14
nop
nop
nop
and %rbx, %rbx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rbp
nop
cmp $42756, %rdx
lea addresses_D_ht+0x1ab6, %rbp
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
sub %rbx, %rbx
lea addresses_UC_ht+0xa0f6, %r13
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r13)
nop
nop
add $62607, %r13
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rsi

// Load
mov $0x1ed62500000004b6, %rsi
nop
nop
nop
nop
add $58739, %r9
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
cmp $57979, %r8

// Faulty Load
lea addresses_normal+0x18716, %r8
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%r8), %r15d
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'34': 25}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
