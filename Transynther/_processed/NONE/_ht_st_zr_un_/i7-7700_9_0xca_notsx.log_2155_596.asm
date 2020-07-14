.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4ff8, %rsi
lea addresses_A_ht+0x47f8, %rdi
nop
sub $18847, %r12
mov $122, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xc8f8, %r15
nop
nop
nop
nop
add $17309, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WC+0x1abf8, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_A+0xfaaa, %r11
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r11)
and $43179, %r10

// Store
lea addresses_RW+0x1f8b7, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rdi)
cmp %r10, %r10

// Faulty Load
lea addresses_A+0x1ddf8, %rdi
nop
and %rbp, %rbp
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'67': 150, '00': 1935, '01': 1, 'e0': 10, '1a': 5, '47': 53, '3c': 1}
47 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 67 47 00 00 00 67 47 00 00 00 00 00 00 00 00 00 67 67 00 00 00 00 00 00 00 00 e0 67 00 00 00 00 00 67 00 00 00 00 00 00 00 00 67 00 00 00 00 00 67 00 00 00 00 67 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 67 67 00 00 00 00 00 47 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 67 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 67 00 00 67 00 00 00 00 67 67 00 67 00 67 00 00 00 00 67 00 47 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 47 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 47 00 67 00 00 00 00 00 00 00 00 00 67 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 00 67 67 00 00 00 00 00 47 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 67 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 e0 00 00 00 00 00 00 00 00 00 00 e0 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 67 00 67 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 67 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 67 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 67 00 67 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 67 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 67 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 67 67 00 00 00 00 67 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 67 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 67 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 67 00 00 00 67 00 00 67 00 67 00 00 00 00 00 67 00 00 00
*/
