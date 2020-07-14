.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6ac, %rsi
lea addresses_WT_ht+0x19e2c, %rdi
clflush (%rdi)
nop
nop
nop
sub %r14, %r14
mov $34, %rcx
rep movsb
nop
add %r10, %r10
lea addresses_normal_ht+0x1426c, %r10
nop
nop
nop
nop
cmp %r11, %r11
mov (%r10), %rcx
cmp %r11, %r11
lea addresses_D_ht+0x17647, %rsi
lea addresses_A_ht+0xaac, %rdi
nop
xor $64564, %rbp
mov $17, %rcx
rep movsq
xor $9352, %rsi
lea addresses_WC_ht+0x1bb54, %rdi
nop
nop
nop
xor $59085, %rsi
movw $0x6162, (%rdi)
nop
and %rcx, %rcx
lea addresses_WT_ht+0x10106, %r14
nop
nop
add $6426, %rsi
mov (%r14), %r10d
nop
sub $20354, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_PSE+0x1432c, %r11
nop
nop
nop
nop
cmp $51394, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
and $52879, %r11

// Store
lea addresses_normal+0xb38c, %rax
nop
nop
nop
and %r15, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $40153, %rsi

// Load
lea addresses_US+0xdf9c, %r15
nop
nop
inc %r8
mov (%r15), %ax
nop
nop
nop
nop
dec %r15

// Load
lea addresses_D+0xd34e, %r15
nop
nop
and $61008, %rax
mov (%r15), %si
nop
nop
add $6716, %r11

// Store
lea addresses_D+0x16a1c, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $1965, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r11)
dec %r8

// Faulty Load
lea addresses_A+0x1612c, %rax
nop
nop
nop
cmp $4861, %r14
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
