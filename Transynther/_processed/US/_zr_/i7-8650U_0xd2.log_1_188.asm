.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x191b9, %rsi
clflush (%rsi)
nop
add $24244, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rsi
nop
sub %rdi, %rdi

// Store
lea addresses_US+0x1e2b9, %rbp
nop
nop
and $40187, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x161ab, %rdi
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0xb469, %rbp
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
xor $27880, %r14

// Faulty Load
lea addresses_US+0x17cb9, %rcx
and %rdx, %rdx
mov (%rcx), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 1}
00
*/
