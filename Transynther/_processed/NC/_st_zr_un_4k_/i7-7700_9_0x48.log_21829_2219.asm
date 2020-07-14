.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_UC_ht+0xf9c5, %r9
inc %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
add $9696, %r9
lea addresses_normal_ht+0x1c89d, %r14
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
xor $13358, %r12
lea addresses_UC_ht+0xf0b5, %r9
sub $9141, %rcx
mov (%r9), %dx
nop
nop
nop
nop
nop
and $56440, %rdx
lea addresses_WT_ht+0x1a0f5, %rbp
sub $29284, %r13
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0xe935, %rbp
and $43204, %r13
mov (%rbp), %r14w
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x110b5, %r12
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
and %rcx, %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_US+0x104b5, %r13
nop
nop
nop
add $54416, %r9
movb $0x51, (%r13)
nop
nop
sub $63235, %r9

// Faulty Load
mov $0x157fa00000004b5, %rsi
nop
nop
nop
nop
nop
xor $20151, %r15
movb (%rsi), %bl
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'00': 3918, '5f': 9077, '51': 8834}
51 51 5f 5f 51 5f 5f 5f 5f 51 51 00 00 5f 5f 51 00 51 5f 51 51 51 51 51 5f 5f 5f 51 5f 5f 51 00 00 00 5f 51 00 5f 51 5f 00 51 51 51 51 51 5f 51 5f 5f 51 51 5f 5f 51 5f 5f 5f 5f 00 51 00 00 5f 5f 51 5f 51 5f 51 51 5f 51 5f 00 51 51 51 51 5f 51 5f 51 51 5f 5f 5f 5f 5f 5f 51 51 51 5f 51 51 51 5f 5f 51 5f 51 51 5f 51 5f 51 51 00 5f 00 00 51 00 51 5f 5f 00 5f 51 51 5f 51 5f 5f 5f 5f 51 5f 51 51 5f 51 5f 51 5f 00 51 5f 5f 51 51 5f 51 5f 51 5f 51 51 00 5f 5f 5f 51 5f 51 51 51 51 51 5f 00 51 51 5f 51 51 5f 5f 51 51 5f 51 51 51 51 5f 5f 51 51 5f 00 5f 5f 5f 5f 51 51 00 00 5f 00 51 5f 00 5f 5f 00 51 5f 5f 00 5f 5f 5f 51 00 5f 00 00 00 51 00 00 00 00 00 00 00 51 5f 51 51 5f 5f 5f 51 51 51 5f 51 5f 5f 51 5f 5f 51 51 51 5f 5f 5f 5f 51 5f 5f 5f 5f 00 00 51 51 00 51 5f 5f 00 00 00 5f 51 00 5f 51 5f 5f 51 00 5f 5f 5f 51 5f 51 51 00 5f 00 51 00 5f 51 5f 5f 5f 51 51 5f 51 5f 51 5f 00 00 5f 5f 51 5f 51 51 5f 00 5f 51 5f 5f 51 51 51 5f 51 51 51 00 5f 51 5f 00 00 5f 5f 00 5f 5f 5f 5f 5f 51 5f 5f 51 00 51 00 00 5f 51 51 51 5f 51 5f 5f 00 5f 51 00 51 51 5f 5f 51 51 00 00 5f 51 5f 51 00 00 00 51 00 51 51 51 51 5f 51 51 51 51 51 51 51 51 5f 51 51 51 51 51 51 51 5f 51 51 51 5f 5f 5f 5f 00 5f 51 00 51 51 51 5f 5f 5f 5f 51 5f 5f 51 5f 5f 00 5f 00 51 00 51 5f 51 51 5f 51 51 00 00 51 5f 5f 51 5f 00 51 00 5f 5f 51 00 5f 00 5f 5f 51 51 51 51 00 00 5f 5f 5f 5f 5f 5f 00 51 51 51 00 5f 51 51 5f 00 51 51 5f 51 51 5f 5f 51 5f 00 00 5f 5f 5f 51 51 5f 51 5f 00 5f 51 51 5f 51 00 51 5f 00 5f 5f 51 5f 5f 00 00 5f 51 5f 5f 5f 51 5f 51 5f 5f 5f 51 51 51 00 51 51 51 51 00 51 51 5f 00 5f 5f 5f 00 00 5f 5f 00 5f 51 51 5f 5f 5f 00 51 51 51 51 5f 5f 5f 00 5f 51 00 51 00 51 51 51 51 5f 5f 5f 51 5f 51 5f 00 5f 51 51 5f 5f 5f 5f 5f 51 00 00 51 5f 5f 5f 5f 51 00 5f 51 5f 5f 5f 00 51 5f 51 00 5f 51 51 51 51 00 51 51 51 5f 00 00 5f 5f 51 5f 00 51 5f 00 5f 5f 51 51 51 00 51 51 51 51 51 5f 51 00 00 51 51 00 51 5f 51 5f 51 5f 00 00 51 51 5f 00 5f 5f 00 51 00 51 51 5f 00 00 00 5f 51 5f 5f 51 51 5f 00 5f 5f 51 5f 00 51 51 00 00 5f 51 00 51 5f 5f 5f 51 00 51 51 5f 5f 5f 5f 51 5f 5f 00 51 51 5f 00 51 51 51 51 5f 5f 00 51 51 5f 51 5f 51 5f 5f 5f 51 51 5f 5f 51 51 00 51 5f 51 51 5f 00 5f 51 51 51 5f 5f 5f 51 51 51 5f 51 5f 51 5f 51 5f 5f 51 5f 51 00 00 51 5f 51 5f 5f 5f 51 00 51 5f 5f 5f 51 51 5f 51 5f 51 00 5f 5f 5f 5f 51 5f 51 51 51 5f 51 5f 5f 00 51 00 00 51 00 5f 5f 51 51 51 5f 51 51 51 5f 00 00 5f 5f 00 5f 5f 51 5f 5f 00 5f 5f 51 5f 00 5f 51 5f 51 00 00 51 5f 5f 51 5f 51 51 51 51 51 00 51 51 5f 51 51 51 5f 5f 51 51 5f 51 5f 00 51 00 51 00 51 5f 00 5f 51 51 5f 00 51 00 51 51 51 51 5f 00 00 5f 51 00 51 5f 51 51 00 51 51 5f 5f 00 5f 00 5f 5f 51 5f 5f 51 00 5f 51 51 5f 5f 51 5f 00 5f 5f 5f 51 5f 51 5f 51 51 51 51 5f 5f 51 00 5f 5f 51 51 51 5f 5f 5f 51 00 5f 5f 5f 51 51 00 00 51 5f 51 5f 51 5f 5f 00 51 5f 00 51 51 5f 5f 51 5f 00 5f 51 51 5f 00 51 51 5f 5f 00 5f 51 51 51 51 5f 5f 5f 5f 00 00 5f 51 00 5f 51 5f 51 00 5f 51 51 5f 5f 51 5f 51 5f 51 51 00 00 00 51 51 5f 51 5f 51 51 5f 5f 51 51 5f 5f 51 51 5f 5f 5f
*/
