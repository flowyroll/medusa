.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbx
push %rdi
push %rsi
lea addresses_UC_ht+0x157e2, %rax
nop
nop
nop
sub $1283, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
nop
nop
add %r14, %r14
lea addresses_A_ht+0xf682, %rdi
clflush (%rdi)
nop
nop
and $55063, %rsi
mov (%rdi), %eax
nop
nop
nop
nop
nop
xor $25298, %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Load
lea addresses_A+0x1fa3a, %rsi
nop
nop
and %r10, %r10
mov (%rsi), %bp
nop
nop
cmp %r9, %r9

// Load
lea addresses_normal+0x12962, %r8
clflush (%r8)
nop
nop
nop
nop
nop
inc %r15
mov (%r8), %r9w
nop
nop
nop
sub $20406, %rsi

// Load
lea addresses_UC+0x4a3a, %rbp
nop
xor %r10, %r10
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
xor $12565, %r10

// Faulty Load
lea addresses_UC+0x523a, %rsi
nop
nop
nop
sub %r15, %r15
mov (%rsi), %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 13, '34': 14, '58': 1, '45': 2, '80': 3, '66': 1, '01': 4}
45 58 00 80 00 34 80 34 34 00 45 34 00 66 00 34 34 34 00 00 01 01 00 34 34 00 00 01 34 34 00 34 34 00 01 80 00 34
*/
