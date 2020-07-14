.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdx
push %rsi
lea addresses_D_ht+0x148dc, %r10
nop
nop
nop
dec %r12
mov (%r10), %si
nop
nop
nop
xor $40229, %rdx
lea addresses_A_ht+0x195dc, %rcx
add %r14, %r14
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %r9
and %rdx, %rdx
lea addresses_WT_ht+0x1c7dc, %rdx
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x25c, %rdx
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rdx)
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0xdddc, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add $19798, %rdx

// Store
lea addresses_A+0x103d2, %rax
nop
nop
nop
add $32503, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
nop
and %rdx, %rdx

// Store
mov $0xb3c, %rax
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rax)
nop
inc %r12

// Store
lea addresses_D+0x1c5dc, %rdx
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0x119dc, %rdx
nop
nop
nop
nop
nop
and $29827, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
sub $60087, %rbp

// Store
mov $0x34082d00000007dc, %rdx
nop
cmp %r12, %r12
movb $0x51, (%rdx)
nop
nop
nop
inc %rsi

// Store
mov $0x3b21000000063c, %rdi
clflush (%rdi)
nop
nop
xor $16156, %r15
movw $0x5152, (%rdi)
nop
nop
xor $39333, %rdx

// Faulty Load
lea addresses_WT+0xdddc, %rax
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rax), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'54': 133}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
