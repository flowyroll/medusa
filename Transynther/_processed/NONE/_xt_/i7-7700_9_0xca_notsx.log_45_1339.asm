.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8492, %rdi
nop
nop
nop
nop
add $27599, %rdx
mov (%rdi), %r15
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x13202, %rsi
lea addresses_A_ht+0x1066a, %rdi
nop
sub $59692, %r11
mov $29, %rcx
rep movsq
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x11662, %rsi
lea addresses_UC_ht+0x2712, %rdi
nop
nop
nop
nop
nop
and $10442, %r11
mov $54, %rcx
rep movsl
nop
and %r15, %r15
lea addresses_UC_ht+0x1bf12, %rsi
lea addresses_A_ht+0x3d89, %rdi
add %rbx, %rbx
mov $54, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_normal+0x1ff12, %r10
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
add $37507, %r15

// Store
mov $0x5178990000000962, %r15
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $48096, %rbx

// Faulty Load
lea addresses_PSE+0x12b12, %r11
nop
nop
nop
nop
nop
inc %r14
mov (%r11), %bx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'33': 45}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
