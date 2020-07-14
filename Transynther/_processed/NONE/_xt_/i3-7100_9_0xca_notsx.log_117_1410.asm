.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_WT+0x1f0af, %rsi
nop
sub %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
add $38233, %r13

// Store
mov $0x6443e00000000157, %rsi
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rsi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
inc %rsi

// Store
mov $0xcc7, %r14
nop
nop
inc %r8
movb $0x51, (%r14)
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_normal+0x16957, %r13
nop
add %rbx, %rbx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_P', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 117}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
