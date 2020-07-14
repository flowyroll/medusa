.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11e4f, %rsi
lea addresses_WT_ht+0x1bd8f, %rdi
nop
nop
cmp %r9, %r9
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
and $59527, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Load
lea addresses_US+0x183cf, %r8
nop
add %rsi, %rsi
movaps (%r8), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
nop
cmp $27556, %rsi

// Load
lea addresses_A+0x7c8f, %r12
nop
nop
nop
nop
nop
cmp $40835, %r10
mov (%r12), %r14d
nop
nop
nop
nop
xor %r10, %r10

// Store
mov $0xa8f, %r14
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%r14)
nop
and %r10, %r10

// Store
lea addresses_WT+0x218f, %r10
nop
cmp $5970, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
sub $43549, %rcx

// Faulty Load
mov $0x5679380000000a8f, %r14
xor %r15, %r15
movb (%r14), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'00': 12, '51': 3}
00 51 00 00 00 00 00 00 51 00 00 00 00 00 51
*/
