.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c71d, %rsi
lea addresses_normal_ht+0x7cc5, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $91, %rcx
rep movsb
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x18f31, %r15
clflush (%r15)
sub %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
sub $47152, %r13
lea addresses_WC_ht+0x1a05d, %rsi
lea addresses_normal_ht+0xec9d, %rdi
nop
nop
nop
sub $55133, %rdx
mov $97, %rcx
rep movsq
nop
nop
nop
and $54288, %rcx
lea addresses_normal_ht+0x1db1d, %r13
nop
nop
xor $39634, %rdx
movb (%r13), %cl
nop
xor $34336, %r15
lea addresses_WT_ht+0x1029d, %rsi
lea addresses_A_ht+0x2b1d, %rdi
nop
nop
nop
nop
nop
add $60241, %r10
mov $13, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x429d, %r15
nop
nop
dec %rsi
movw $0x6162, (%r15)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xb81d, %rsi
lea addresses_D_ht+0x12d1d, %rdi
clflush (%rdi)
nop
and $47373, %r15
mov $71, %rcx
rep movsw
add $54020, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Load
lea addresses_WC+0x8b1d, %rdx
nop
nop
nop
nop
xor %rax, %rax
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
xor $36735, %rdx

// Store
lea addresses_A+0x1f31d, %r11
nop
nop
xor %r15, %r15
movb $0x51, (%r11)
xor %r15, %r15

// Load
mov $0x379d8e0000000fc5, %r15
nop
nop
nop
nop
sub $52677, %r11
mov (%r15), %eax
nop
nop
cmp %r11, %r11

// Store
mov $0x3444f0000000071d, %r9
nop
nop
nop
cmp $16596, %r8
movw $0x5152, (%r9)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_WC+0x8b1d, %r11
nop
inc %r8
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'48': 16229, '73': 3, '72': 1, '00': 5596}
00 48 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 00 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 00 48 00 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 00 48 00 00 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 00 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 00 48 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 00 00 48 48 48 48 00 48 48 00 00 48 48 48 00 00 48 48 00 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 00 48 48
*/
