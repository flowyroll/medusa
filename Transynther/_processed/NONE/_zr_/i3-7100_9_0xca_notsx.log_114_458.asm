.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi
lea addresses_normal_ht+0x414, %r9
nop
nop
nop
nop
nop
cmp $25794, %rsi
movb $0x61, (%r9)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x4584, %rax
nop
nop
sub %rbp, %rbp
mov (%rax), %r15d
nop
nop
cmp $21672, %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x16d14, %rsi
lea addresses_UC+0x17d94, %rdi
nop
nop
nop
nop
add $58558, %rdx
mov $88, %rcx
rep movsw
nop
nop
nop
nop
and %rdx, %rdx

// Store
mov $0x114, %rax
nop
dec %r8
movb $0x51, (%rax)
nop
nop
dec %r13

// Store
lea addresses_WT+0x1b114, %rsi
nop
nop
nop
nop
nop
xor $63685, %r13
movb $0x51, (%rsi)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0xbb7c, %rax
clflush (%rax)
dec %rdx
movl $0x51525354, (%rax)
nop
add %rax, %rax

// Store
lea addresses_WT+0x5484, %r13
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_A+0x1c914, %rax
nop
nop
nop
nop
nop
and $35455, %r8
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 114}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
