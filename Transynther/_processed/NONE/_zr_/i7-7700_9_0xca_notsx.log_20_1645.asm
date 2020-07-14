.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
lea addresses_WC_ht+0x1bdb6, %r11
nop
nop
nop
add $57823, %rcx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x1c2b6, %rbx
nop
nop
nop
nop
nop
cmp $56830, %r12
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xdbb6, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add $6667, %rcx
mov (%rbx), %r15
nop
nop
nop
nop
nop
inc %r11
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0xa3be, %r13
add %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_PSE+0x1fc4, %r13
nop
nop
nop
nop
add $31506, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
dec %r11

// Load
lea addresses_RW+0xdbb6, %r10
nop
nop
nop
nop
nop
inc %r8
mov (%r10), %bp
nop
nop
xor $4133, %rsi

// Store
mov $0x76e, %r8
nop
xor %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovntdq %ymm4, (%r8)
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WT+0x1627d, %r10
and %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
cmp $30474, %r13

// Faulty Load
lea addresses_A+0x9bb6, %rbp
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rbp), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
