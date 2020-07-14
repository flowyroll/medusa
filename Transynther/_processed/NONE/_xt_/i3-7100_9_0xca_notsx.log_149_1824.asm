.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x167c4, %rsi
lea addresses_WT_ht+0x178c3, %rdi
nop
nop
dec %r15
mov $38, %rcx
rep movsq
nop
xor %r10, %r10
lea addresses_D_ht+0x4404, %rsi
lea addresses_WT_ht+0x71c4, %rdi
nop
nop
and $1418, %r13
mov $107, %rcx
rep movsq
nop
nop
nop
add $31007, %r13
lea addresses_WT_ht+0x11c3a, %r13
nop
nop
nop
nop
cmp $55571, %rax
mov (%r13), %r10
nop
nop
xor $1313, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x129c4, %r14
clflush (%r14)
sub %r10, %r10
vmovaps (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
add %r10, %r10

// Store
lea addresses_RW+0xfbc4, %r10
nop
nop
nop
nop
nop
and $40618, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
nop
xor $4229, %r14

// Faulty Load
lea addresses_A+0x129c4, %r10
nop
nop
nop
nop
nop
add %r15, %r15
mov (%r10), %ebp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'35': 149}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
