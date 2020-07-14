.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
lea addresses_normal_ht+0xa784, %rcx
nop
nop
nop
nop
nop
and $48521, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xb02, %rbx
nop
nop
nop
nop
nop
cmp $46791, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
xor $10871, %rbx
lea addresses_D_ht+0x1dc44, %r12
nop
nop
nop
xor %r14, %r14
movb (%r12), %r8b
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x72a6, %r8
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%r8)
and $54129, %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rsi

// Load
lea addresses_A+0x8eee, %r12
nop
nop
nop
nop
and $45401, %rcx
movb (%r12), %r11b
nop
nop
sub %rbp, %rbp

// Load
lea addresses_normal+0xaa6c, %r9
nop
nop
nop
cmp %rsi, %rsi
mov (%r9), %ebp
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x1d1ee, %r10
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
add $29459, %r12

// Load
lea addresses_UC+0x1f252, %r11
nop
add %rbp, %rbp
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
and $56707, %r9

// Faulty Load
lea addresses_US+0xc6ee, %rsi
clflush (%rsi)
nop
inc %r9
mov (%rsi), %r10d
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 110}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
