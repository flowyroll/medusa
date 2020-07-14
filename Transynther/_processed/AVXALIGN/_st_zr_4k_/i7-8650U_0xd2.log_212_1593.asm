.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18cfe, %rsi
lea addresses_UC_ht+0xa0de, %rdi
nop
cmp %r14, %r14
mov $97, %rcx
rep movsb
nop
nop
add $20522, %rcx
lea addresses_normal_ht+0x118b6, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $42747, %r12
mov (%r9), %eax
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Load
mov $0x259af90000000640, %r8
nop
nop
nop
nop
nop
inc %r9
mov (%r8), %r12
nop
nop
nop
nop
nop
cmp $44437, %r13

// Store
lea addresses_normal+0x34b6, %rdi
clflush (%rdi)
nop
nop
add %rdx, %rdx
movb $0x51, (%rdi)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0x8efa, %r13
clflush (%r13)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
sub $55226, %rdx

// Store
lea addresses_normal+0x179d8, %rdx
nop
add %r13, %r13
movb $0x51, (%rdx)
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_RW+0xa4b6, %rdx
nop
nop
nop
add %r13, %r13
vmovaps (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'51': 202, '00': 10}
51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51
*/
