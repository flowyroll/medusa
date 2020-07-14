.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x170ee, %rdi
nop
nop
nop
dec %r9
mov (%rdi), %r10
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1952e, %rsi
lea addresses_WC_ht+0x59ee, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $121, %rcx
rep movsq
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x180025000000049e, %rcx
nop
nop
and $48970, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovntdq %ymm4, (%rcx)

// Exception!!!
nop
mov (0), %rcx
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x18eae, %rbx
nop
sub %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
inc %r9

// Store
lea addresses_US+0x61ee, %r8
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
sub %rcx, %rcx

// Load
mov $0x4b45da00000008ce, %r12
nop
nop
and $49697, %r8
mov (%r12), %ebp
nop
xor %r9, %r9

// Faulty Load
lea addresses_A+0x119ee, %rbx
nop
nop
and $53702, %rcx
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'00': 1}
00
*/
