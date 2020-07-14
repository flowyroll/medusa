.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8760, %r15
nop
nop
dec %r8
mov (%r15), %rbx
xor %r10, %r10
lea addresses_normal_ht+0xd528, %rsi
lea addresses_WC_ht+0x1a540, %rdi
sub $17714, %rdx
mov $88, %rcx
rep movsq
nop
add %r8, %r8
lea addresses_A_ht+0x86e0, %rsi
cmp $46309, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xf87c, %rsi
lea addresses_WC_ht+0x16480, %rdi
nop
nop
cmp %r10, %r10
mov $127, %rcx
rep movsw
xor %rbx, %rbx
lea addresses_A_ht+0x1822c, %r8
nop
nop
nop
add $26171, %rdx
mov (%r8), %r10
nop
nop
nop
xor $35880, %rcx
lea addresses_normal_ht+0x1cf70, %rsi
lea addresses_WC_ht+0x1a600, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
mov $84, %rcx
rep movsl
inc %r10
lea addresses_WT_ht+0x10a80, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $55225, %rcx
movb (%rbx), %r10b
nop
nop
nop
nop
nop
add $4793, %r8
lea addresses_WT_ht+0x15c0, %rsi
lea addresses_UC_ht+0x17300, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $116, %rcx
rep movsq
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x13080, %rsi
lea addresses_WT_ht+0x11230, %rdi
nop
inc %r8
mov $127, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_normal_ht+0x10b78, %rsi
add $9744, %r15
mov (%rsi), %bx
nop
sub $22341, %rdi
lea addresses_D_ht+0x1413e, %rsi
lea addresses_WT_ht+0x9380, %rdi
nop
nop
dec %r15
mov $77, %rcx
rep movsq
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0xd080, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rsi)
cmp $30644, %rdi
lea addresses_WT_ht+0x19880, %r15
nop
and $52953, %rcx
movw $0x6162, (%r15)
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rsi

// Faulty Load
mov $0x880, %rsi
nop
nop
nop
nop
sub %r13, %r13
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'00': 1}
00
*/
