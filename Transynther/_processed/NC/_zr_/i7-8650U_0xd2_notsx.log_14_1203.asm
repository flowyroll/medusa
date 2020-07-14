.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12d94, %rdx
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rdx), %rsi
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x8214, %rbx
nop
nop
nop
nop
nop
cmp $65116, %rdi
movb (%rbx), %r15b
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x190cc, %rbx
and %r10, %r10
mov (%rbx), %ecx
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x19414, %r10
xor $2564, %rsi
movb (%r10), %dl
nop
nop
nop
nop
nop
cmp $18463, %rdx
lea addresses_normal_ht+0x5b48, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rcx)
cmp $55805, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x19f74, %rax
nop
nop
nop
nop
nop
inc %rbx
movl $0x51525354, (%rax)
nop
nop
nop
nop
and $35079, %r13

// REPMOV
lea addresses_RW+0x16614, %rsi
lea addresses_WC+0xac14, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r13, %r13
mov $23, %rcx
rep movsq
nop
nop
sub %rax, %rax

// Store
mov $0x167fef0000000c14, %r8
nop
nop
nop
nop
nop
add $52646, %r10
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
add $5121, %rdi

// Store
lea addresses_WT+0x16f14, %r13
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%r13)
nop
nop
nop
nop
nop
xor $48863, %rcx

// Faulty Load
mov $0x167fef0000000c14, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
