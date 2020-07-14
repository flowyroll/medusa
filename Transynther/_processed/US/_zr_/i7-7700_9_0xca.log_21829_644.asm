.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6f36, %rsi
lea addresses_WC_ht+0x233e, %rdi
nop
nop
nop
nop
xor $15760, %r12
mov $98, %rcx
rep movsq
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x66, %rcx
nop
nop
nop
and $25134, %rbx
movw $0x6162, (%rcx)
nop
sub $7550, %r12
lea addresses_D_ht+0x16d06, %rsi
lea addresses_WT_ht+0x3966, %rdi
nop
nop
add $33202, %r10
mov $72, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x9c66, %r15
nop
nop
nop
nop
nop
add $21168, %rdi
mov (%r15), %si
cmp $39199, %rdi
lea addresses_WT_ht+0x5706, %rsi
lea addresses_WT_ht+0x18ca6, %rdi
nop
nop
nop
nop
sub $12694, %r11
mov $72, %rcx
rep movsw
nop
sub $63418, %r10
lea addresses_WC_ht+0x3c66, %r12
nop
nop
cmp %r10, %r10
mov (%r12), %bx
nop
nop
xor $14344, %rdi
lea addresses_WC_ht+0x17f66, %r10
nop
xor %r11, %r11
movl $0x61626364, (%r10)
sub $54253, %rdi
lea addresses_WC_ht+0x1cbda, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r15), %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x57b6, %rsi
lea addresses_WT_ht+0x13d1, %rdi
nop
nop
nop
nop
dec %r15
mov $21, %rcx
rep movsb
nop
nop
nop
xor $1867, %rbx
lea addresses_normal_ht+0x9484, %rsi
lea addresses_WT_ht+0x39a6, %rdi
nop
nop
nop
and %r12, %r12
mov $61, %rcx
rep movsq
nop
nop
nop
dec %r10
lea addresses_D_ht+0x6806, %rsi
cmp %rdi, %rdi
movb (%rsi), %r15b
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1a906, %r10
nop
nop
xor $65089, %rcx
movl $0x61626364, (%r10)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x866, %rsi
lea addresses_WC_ht+0x19f76, %rdi
clflush (%rdi)
nop
nop
dec %r12
mov $77, %rcx
rep movsw
nop
nop
add $59444, %r12
pop %rsi
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
push %r13
push %r15
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x66, %r15
nop
inc %rcx
movb (%r15), %r13b
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
