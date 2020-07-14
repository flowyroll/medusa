.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x206f, %r12
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r12)
nop
add %rsi, %rsi
lea addresses_A_ht+0x17c6f, %rdi
nop
nop
nop
nop
nop
cmp $60124, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdi)
nop
xor $54488, %rdx
lea addresses_WT_ht+0x15338, %r12
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%r12)
nop
inc %r12
lea addresses_A_ht+0x113a7, %rsi
lea addresses_WT_ht+0x1726f, %rdi
clflush (%rdi)
nop
and $64496, %r13
mov $0, %rcx
rep movsb
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1b1ef, %r12
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x139e7, %r12
nop
nop
xor %r13, %r13
movb $0x61, (%r12)
nop
and %rsi, %rsi
lea addresses_A_ht+0xefaf, %r15
nop
nop
nop
mfence
mov (%r15), %ecx
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x918f, %r12
nop
nop
nop
nop
nop
inc %r13
movw $0x6162, (%r12)
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rdi
push %rsi

// Load
mov $0x68ee920000000c4f, %rax
inc %rsi
movups (%rax), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
mov $0x2425ea000000046f, %r12
nop
nop
nop
inc %r14
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'00': 176}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
