.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10cab, %rsi
lea addresses_WT_ht+0x72b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r10, %r10
mov $23, %rcx
rep movsw
nop
add $6574, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0xdfbb, %r14
nop
xor %r12, %r12
movb $0x51, (%r14)
sub %r14, %r14

// Store
mov $0x44f5400000003ab, %rbx
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbx)
nop
sub $30055, %r8

// Load
lea addresses_WC+0x202b, %rdx
and $52744, %r8
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
dec %r10

// Store
lea addresses_RW+0x7d2b, %rdx
nop
nop
add $51733, %rcx
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x1eb8c, %rcx
nop
nop
nop
inc %r8
movb $0x51, (%rcx)
nop
nop
and $48031, %rcx

// Faulty Load
lea addresses_A+0xfb2b, %rbx
nop
add %r10, %r10
mov (%rbx), %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
