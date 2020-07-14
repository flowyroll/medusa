.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1887f, %rsi
lea addresses_A_ht+0x56bb, %rdi
clflush (%rsi)
nop
nop
nop
xor $63329, %rbp
mov $29, %rcx
rep movsq
nop
and $1943, %rcx
lea addresses_UC_ht+0x1372b, %rsi
lea addresses_normal_ht+0x15c3b, %rdi
nop
inc %r14
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1be5b, %rsi
lea addresses_WT_ht+0x1303b, %rdi
nop
sub $10895, %r14
mov $29, %rcx
rep movsw
nop
cmp $64106, %rbp
lea addresses_normal_ht+0xe76, %rsi
lea addresses_UC_ht+0x1523b, %rdi
nop
nop
nop
nop
nop
cmp $34641, %r13
mov $25, %rcx
rep movsw
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
mov $0x4a8954000000063b, %rdx
nop
dec %r11
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
nop
add $43474, %r8

// Load
lea addresses_normal+0xfabb, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%r8), %ebp
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_PSE+0x1f7b, %r15
nop
nop
nop
nop
nop
add $16989, %rdi
mov (%r15), %edx
nop
nop
and $58802, %rdx

// Faulty Load
lea addresses_US+0xaa3b, %r12
nop
xor %r8, %r8
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'00': 264}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
