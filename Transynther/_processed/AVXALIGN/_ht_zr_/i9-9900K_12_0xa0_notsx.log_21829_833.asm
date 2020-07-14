.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x564b, %r9
cmp %r10, %r10
mov (%r9), %r15d
nop
nop
and $5379, %rdx
lea addresses_A_ht+0x198ab, %r9
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
sub $3684, %r9
lea addresses_A_ht+0x2827, %rsi
lea addresses_WT_ht+0x1799f, %rdi
clflush (%rsi)
nop
cmp %rbp, %rbp
mov $114, %rcx
rep movsb
sub $2106, %rdx
lea addresses_D_ht+0x19e8b, %rdx
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rdx), %r15b
nop
nop
cmp $3668, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Store
mov $0x70b, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
xor $5887, %rsi

// Load
lea addresses_normal+0x1488b, %r8
clflush (%r8)
nop
nop
dec %rsi
movb (%r8), %r9b
nop
nop
dec %r9

// Faulty Load
lea addresses_WC+0x348b, %rsi
nop
nop
nop
nop
inc %r14
vmovntdqa (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'45': 5755, '00': 16074}
00 45 45 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 45 45 45 45 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 45 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 45 45 45 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 00 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 45 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 45 45 45 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 45 45 00 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00
*/
