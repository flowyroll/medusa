.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17fd8, %rsi
lea addresses_WC_ht+0x1b5c0, %rdi
nop
nop
nop
nop
nop
cmp $13520, %r14
mov $0, %rcx
rep movsl
sub $51207, %r10
lea addresses_D_ht+0x17018, %rbx
nop
nop
add $56527, %r9
movb (%rbx), %cl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1a868, %rsi
lea addresses_normal_ht+0x8c18, %rdi
clflush (%rdi)
sub $183, %rax
mov $122, %rcx
rep movsb
nop
nop
nop
nop
cmp $46904, %r14
lea addresses_A_ht+0x3ff8, %rdi
add %r9, %r9
movl $0x61626364, (%rdi)
add %rdi, %rdi
lea addresses_D_ht+0x9418, %rsi
lea addresses_normal_ht+0x1bc00, %rdi
nop
xor %r10, %r10
mov $13, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x1d24a, %rsi
lea addresses_normal_ht+0x17018, %rdi
nop
nop
nop
nop
sub $58393, %rax
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x17c18, %rcx
nop
xor $25666, %rsi
mov (%rcx), %ebx
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x9658, %rax
nop
nop
nop
nop
and %rsi, %rsi
movb (%rax), %r14b
nop
nop
nop
cmp $20162, %rdi
lea addresses_normal_ht+0x7c58, %rcx
nop
nop
sub $27965, %rdi
mov (%rcx), %esi
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x9ca8, %rbx
nop
nop
nop
dec %r14
mov (%rbx), %r9w
add %rbx, %rbx
lea addresses_normal_ht+0x11018, %rsi
lea addresses_WT_ht+0x9818, %rdi
nop
nop
nop
nop
nop
and $47702, %r9
mov $30, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x5c18, %rbx
nop
nop
nop
nop
nop
cmp $19232, %rdi
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x3418, %r14
nop
sub %rbx, %rbx
mov (%r14), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 334}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
