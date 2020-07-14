.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
lea addresses_A_ht+0x1a94c, %r10
xor %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r10)
nop
cmp %r11, %r11
lea addresses_A_ht+0x85fb, %r8
dec %r12
mov (%r8), %di
nop
add %r8, %r8
lea addresses_A_ht+0x609d, %rdi
nop
nop
nop
inc %r12
movw $0x6162, (%rdi)
nop
nop
and %r10, %r10
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x114fb, %r9
add $56339, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
and $50989, %rcx

// Store
lea addresses_US+0x1c57b, %rdi
nop
add $31509, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movaps %xmm4, (%rdi)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x1a20b, %r9
nop
nop
nop
xor $25898, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_A+0xa97b, %rsi
nop
add %r13, %r13
movb (%rsi), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 78}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
