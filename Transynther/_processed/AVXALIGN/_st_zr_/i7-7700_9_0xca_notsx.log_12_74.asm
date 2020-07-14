.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc2b8, %r11
add $16230, %rbp
movb (%r11), %r13b
nop
inc %rdi
lea addresses_UC_ht+0x1458, %r10
add %rdi, %rdi
mov (%r10), %r11d
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xbd58, %rdx
nop
nop
nop
xor %r13, %r13
mov (%rdx), %r10w
nop
nop
nop
nop
add $6326, %r11
lea addresses_UC_ht+0x7478, %rbp
nop
nop
nop
nop
nop
xor $60464, %r9
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %r10
nop
xor $18920, %rdi
lea addresses_WC_ht+0x11eb8, %r11
nop
sub %r13, %r13
mov (%r11), %r9w
nop
nop
nop
xor $65513, %rdx
lea addresses_WT_ht+0x1e278, %rsi
lea addresses_UC_ht+0x10b38, %rdi
nop
nop
nop
nop
inc %r9
mov $98, %rcx
rep movsw
nop
nop
nop
lfence
lea addresses_A_ht+0x126b8, %r9
nop
nop
nop
nop
nop
add $41498, %rdi
movb (%r9), %dl
sub %rdi, %rdi
lea addresses_WT_ht+0x1a070, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x18ab8, %r9
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1e0b8, %rsi
lea addresses_D_ht+0x15628, %rdi
nop
nop
nop
nop
dec %r13
mov $88, %rcx
rep movsb
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x7e78, %r10
nop
nop
nop
add %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_normal+0x154a4, %r15
nop
nop
nop
inc %rsi
movl $0x51525354, (%r15)
nop
add $19025, %r14

// Load
lea addresses_A+0x112b8, %r10
nop
nop
nop
nop
cmp $34782, %rdi
mov (%r10), %r14
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x1cd38, %r11
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movaps %xmm2, (%r11)
and %r15, %r15

// Store
lea addresses_WC+0x3010, %r10
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movaps %xmm6, (%r10)
nop
nop
dec %rsi

// Load
lea addresses_WT+0x18ab8, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r14), %r15w
nop
nop
dec %r14

// Store
lea addresses_US+0x1ab8, %r11
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
and $31821, %rsi

// Store
lea addresses_PSE+0x13120, %rcx
nop
cmp $44713, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_WT+0x18ab8, %r11
nop
nop
nop
cmp $31102, %rcx
vmovaps (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 1, '58': 11}
58 58 58 58 00 58 58 58 58 58 58 58
*/
