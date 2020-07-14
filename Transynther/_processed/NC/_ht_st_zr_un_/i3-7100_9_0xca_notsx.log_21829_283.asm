.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6186, %rsi
clflush (%rsi)
nop
dec %r8
mov (%rsi), %di
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1a793, %rsi
lea addresses_D_ht+0xd12b, %rdi
nop
nop
inc %rdx
mov $111, %rcx
rep movsl
nop
nop
nop
nop
xor $43824, %r15
lea addresses_A_ht+0x9293, %r8
nop
nop
nop
inc %r14
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0xc6d3, %r8
add $46310, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
xor $23972, %rdx
lea addresses_D_ht+0x1e445, %rdi
nop
nop
nop
nop
nop
add $9601, %r8
mov (%rdi), %r15
nop
nop
cmp $10333, %r8
lea addresses_D_ht+0x18833, %r14
nop
and %rcx, %rcx
movw $0x6162, (%r14)
dec %rcx
lea addresses_WC_ht+0x10b93, %rdi
sub $34615, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
add $22242, %r15
lea addresses_normal_ht+0x1c053, %r8
add %r14, %r14
movl $0x61626364, (%r8)
nop
nop
add $4423, %r14
lea addresses_A_ht+0xbd93, %rdx
nop
nop
nop
add %rsi, %rsi
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r14
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xff93, %r8
clflush (%r8)
nop
nop
xor %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
xor $48878, %rdx
lea addresses_normal_ht+0x10a53, %rsi
lea addresses_WT_ht+0x4793, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $111, %rcx
rep movsw
nop
nop
nop
nop
sub $65219, %r15
lea addresses_A_ht+0xfd93, %rdx
nop
nop
nop
add $54900, %r15
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
sub $27069, %rcx
lea addresses_WC_ht+0x6003, %rsi
lea addresses_WC_ht+0x2e3, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $112, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1b593, %rsi
lea addresses_D_ht+0x14393, %rdi
clflush (%rsi)
nop
nop
cmp $18356, %r15
mov $123, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x543f, %rsi
lea addresses_WC_ht+0x1793, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r14, %r14
mov $108, %rcx
rep movsb
nop
add $12037, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x6b93, %rsi
lea addresses_PSE+0xc093, %rdi
clflush (%rsi)
nop
nop
sub %rbx, %rbx
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $42703, %r10

// Faulty Load
mov $0x71c2fd0000000793, %rsi
nop
nop
xor %r10, %r10
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'45': 1, '3c': 1, '00': 20185, '7f': 1, '48': 736, '37': 13, '44': 767, '0c': 1, '47': 124}
00 00 00 00 00 00 47 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 47 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 47 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 47 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 47 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 47 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 47 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 47 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 47 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
