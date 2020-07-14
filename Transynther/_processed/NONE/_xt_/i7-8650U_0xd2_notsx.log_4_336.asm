.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x17f97, %rdx
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%rdx)
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x17f97, %rsi
lea addresses_WT_ht+0x86d7, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $77, %rcx
rep movsb
add %r10, %r10
lea addresses_D_ht+0xc157, %rdx
sub %r9, %r9
mov (%rdx), %edi
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x18157, %rsi
lea addresses_A_ht+0x3ed7, %rdi
dec %r14
mov $76, %rcx
rep movsw
nop
nop
nop
sub $34232, %rcx
lea addresses_WC_ht+0x12957, %rsi
lea addresses_normal_ht+0x1e157, %rdi
nop
nop
nop
add $16230, %rbp
mov $34, %rcx
rep movsq
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x14157, %r10
add $1359, %rbp
movb (%r10), %r14b
nop
nop
nop
nop
nop
cmp $30769, %rbp
lea addresses_normal_ht+0x7127, %rsi
lea addresses_A_ht+0x11557, %rdi
inc %rdx
mov $39, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x12d57, %rsi
lea addresses_D_ht+0xd957, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x6557, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
nop
add %rdi, %rdi
lea addresses_normal_ht+0xfa51, %rsi
lea addresses_WT_ht+0x1a9d7, %rdi
nop
nop
add %r10, %r10
mov $95, %rcx
rep movsw
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x18fd7, %rbp
nop
nop
nop
nop
add %rdi, %rdi
movb (%rbp), %r14b
nop
nop
nop
nop
nop
add $22801, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0x1b357, %rbp
sub $30783, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
dec %rbx

// Store
mov $0x341716000000029f, %r15
xor $23746, %r14
movb $0x51, (%r15)
nop
xor $40437, %r15

// Store
lea addresses_WT+0x10157, %r8
nop
xor $2562, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
add $41463, %r8

// Faulty Load
lea addresses_WT+0x2957, %r14
nop
nop
nop
nop
sub $1969, %rbp
movups (%r14), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'39': 4}
39 39 39 39
*/
