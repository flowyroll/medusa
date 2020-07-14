.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e1ab, %rbp
nop
nop
nop
nop
xor $42040, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rbp)
nop
cmp $54257, %rsi
lea addresses_normal_ht+0x892b, %rsi
lea addresses_WT_ht+0x1736b, %rdi
clflush (%rsi)
nop
nop
sub $47306, %rbp
mov $54, %rcx
rep movsb
xor $63216, %r15
lea addresses_A_ht+0x686b, %rbp
nop
nop
nop
cmp $28849, %rdi
movb (%rbp), %cl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xa16b, %r15
nop
nop
nop
nop
xor $50089, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xdd6b, %rdx
nop
and %rcx, %rcx
mov (%rdx), %di
nop
inc %rsi
lea addresses_WT_ht+0x1832b, %rsi
lea addresses_normal_ht+0xbbeb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r13
mov $56, %rcx
rep movsq
xor $17263, %r15
lea addresses_A_ht+0x16834, %rbp
clflush (%rbp)
nop
nop
nop
xor %rsi, %rsi
mov (%rbp), %di
nop
nop
nop
nop
nop
add $65183, %rsi
lea addresses_WC_ht+0x17c6b, %r15
clflush (%r15)
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %r15
movntdq %xmm2, (%r15)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x1d32b, %rdx
nop
nop
inc %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub $21870, %rdx

// Faulty Load
lea addresses_A+0x596b, %r13
nop
nop
nop
nop
and $38646, %r11
mov (%r13), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
