.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b598, %rbp
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp $4985, %rcx
lea addresses_WT_ht+0x9d89, %r13
nop
and %r15, %r15
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
xor $52878, %r15
lea addresses_normal_ht+0x1ae68, %rdi
nop
nop
nop
nop
cmp $29684, %rbx
mov (%rdi), %rbp
nop
nop
nop
nop
and $6620, %rbx
lea addresses_normal_ht+0x1798, %rdi
sub %rbx, %rbx
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x7798, %rsi
lea addresses_WC_ht+0x12718, %rdi
nop
nop
nop
nop
xor $40828, %r13
mov $72, %rcx
rep movsw
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x18ac7, %rbx
cmp %rcx, %rcx
mov (%rbx), %r13w
add $54723, %r13
lea addresses_UC_ht+0x17bf8, %r15
nop
nop
and %rsi, %rsi
mov (%r15), %rbp
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1ab58, %r10
inc %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x130b8, %rsi
lea addresses_WC_ht+0x19198, %rdi
nop
nop
dec %r15
mov $24, %rcx
rep movsl
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x8c68, %rbp
nop
nop
cmp $54588, %r10
movb (%rbp), %bl
nop
nop
nop
inc %rbp
lea addresses_D_ht+0xed8, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r15w
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WC+0x8798, %rsi
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_WC+0x8798, %r14
nop
nop
nop
nop
and %r10, %r10
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'7f': 1, 'eb': 3, '3b': 2, 'ef': 2, '0b': 1001, 'a6': 14, '87': 1, '48': 27, '5b': 3, '9f': 2, '00': 620, '03': 1983, '6e': 2433, '43': 728, 'b3': 2, '8b': 3, 'bf': 164, '72': 4022, '6d': 4790, '27': 1, 'ff': 1, '4f': 1, '46': 1, '1f': 1, '0f': 1, '33': 4, '06': 4, 'be': 4127, '83': 5, '5f': 1, '23': 1, 'a7': 1765, 'e3': 7, '2b': 3, '6f': 5, '37': 1, '77': 5, 'c3': 4, '57': 6, 'bb': 4, '7b': 1, 'd3': 54, '3f': 1, 'db': 2, '93': 2, 'af': 4, 'a3': 1, '73': 2, 'd7': 1, '9b': 2, '2f': 1, '97': 2, 'e7': 1, '6b': 6}
06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 00 2b 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 2b 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 a6 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 be 43 43 43 43 43 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 03 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 0b 00 be 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 6d 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 03 0b 0b 0b 0b 0b
*/
