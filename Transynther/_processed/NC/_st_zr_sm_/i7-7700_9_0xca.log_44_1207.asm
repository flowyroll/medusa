.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3666, %rsi
lea addresses_A_ht+0x1d62b, %rdi
clflush (%rdi)
nop
nop
nop
cmp $44753, %r14
mov $4, %rcx
rep movsl
nop
nop
nop
xor $33794, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax
push %rdi

// Store
mov $0xe8b, %r10
nop
nop
nop
sub $34184, %r9
movl $0x51525354, (%r10)
nop
nop
nop
add %r12, %r12

// Store
mov $0x2b64fe000000092b, %r15
clflush (%r15)
cmp %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
nop
nop
nop
add %r10, %r10

// Store
mov $0x38ad0c000000092b, %r10
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovaps %ymm0, (%r10)
nop
nop
sub $39221, %r10

// Faulty Load
mov $0x38ad0c000000092b, %r9
nop
cmp %r13, %r13
mov (%r9), %r12d
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 4, '58': 40}
58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58
*/
