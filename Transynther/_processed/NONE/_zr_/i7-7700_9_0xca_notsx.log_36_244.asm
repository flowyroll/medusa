.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19804, %r8
nop
nop
nop
nop
sub $34592, %r14
mov (%r8), %si
nop
nop
nop
cmp $64028, %r10
lea addresses_UC_ht+0xd7a4, %rbp
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rbp)
nop
dec %r10
lea addresses_D_ht+0x1d5dc, %rsi
lea addresses_A_ht+0xc6c4, %rdi
nop
nop
nop
nop
and $52474, %rax
mov $101, %rcx
rep movsq
and %r8, %r8
lea addresses_A_ht+0x7804, %rax
nop
and $3517, %rbp
mov (%rax), %rsi
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x19d04, %r10
nop
dec %rsi
mov (%r10), %ax
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0xaf8c, %rdx
nop
nop
nop
nop
nop
inc %r14
mov (%rdx), %si
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x6004, %rsi
lea addresses_normal_ht+0x1344, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x11804, %rsi
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
dec %r10
lea addresses_A_ht+0x79bb, %rsi
lea addresses_WT_ht+0x5f4c, %rdi
nop
nop
nop
nop
nop
xor $7627, %r10
mov $114, %rcx
rep movsb
nop
nop
add $60170, %rdx
lea addresses_D_ht+0x6c5c, %rax
cmp $52348, %r8
movl $0x61626364, (%rax)
and $25951, %rbp
lea addresses_UC_ht+0x12b74, %rsi
lea addresses_A_ht+0x19c4c, %rdi
clflush (%rdi)
nop
nop
nop
sub %r8, %r8
mov $64, %rcx
rep movsw
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xb804, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%rdi), %al
add %rdx, %rdx
lea addresses_normal_ht+0x9d84, %rsi
lea addresses_UC_ht+0x73c4, %rdi
cmp %r8, %r8
mov $7, %rcx
rep movsq
nop
nop
nop
add $10286, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi

// Store
mov $0x502d710000000a64, %r8
xor $12610, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_A+0x2004, %rbx
sub $62844, %rdi
mov (%rbx), %r10w
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
