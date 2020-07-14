.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2d05, %r15
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
xor $38144, %r15
lea addresses_UC_ht+0x8315, %r14
add $61304, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %r14
vmovaps %ymm6, (%r14)
nop
dec %r11
lea addresses_WT_ht+0x15505, %r12
nop
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%r12)
nop
and $46455, %r14
lea addresses_WT_ht+0x1d07d, %r12
nop
nop
nop
add $45513, %rax
movb (%r12), %r11b
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1ea15, %r11
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
dec %r15
lea addresses_A_ht+0xbc99, %rax
nop
nop
sub $52715, %r12
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
xor $6458, %rbp
lea addresses_WC_ht+0x15955, %rdx
dec %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rdx
vmovaps %ymm1, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x14a35, %r15
nop
inc %r12
mov (%r15), %r11d
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x6fcb, %rdx
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
nop
add $24849, %r12
lea addresses_UC_ht+0x1bc15, %r14
cmp %r12, %r12
mov (%r14), %ebp
nop
nop
nop
nop
nop
add $36260, %rax
lea addresses_UC_ht+0x19f15, %r15
nop
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%r15)
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x14215, %rsi
lea addresses_normal_ht+0x7b35, %rdi
nop
nop
nop
sub $38719, %r11
mov $29, %rcx
rep movsb
nop
nop
nop
xor $49310, %r11
lea addresses_D_ht+0xa15, %rdx
nop
inc %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
sub $62125, %r11
lea addresses_UC_ht+0x18c7f, %r12
nop
nop
nop
sub %r15, %r15
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_A+0x1b425, %r12
clflush (%r12)
nop
nop
and $61082, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
nop
add $17952, %r9

// Faulty Load
mov $0xf15, %r12
nop
nop
nop
add %r11, %r11
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 3}
00 00 00
*/
