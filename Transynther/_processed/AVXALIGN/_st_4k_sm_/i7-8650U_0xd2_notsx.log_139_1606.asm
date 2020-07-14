.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x6c86, %r13
clflush (%r13)
nop
nop
nop
sub $10995, %rax
mov (%r13), %r10d
nop
nop
nop
nop
add %r10, %r10

// REPMOV
lea addresses_PSE+0x7046, %rsi
lea addresses_A+0x8f56, %rdi
nop
nop
nop
and $4345, %r12
mov $88, %rcx
rep movsl
mfence

// Store
lea addresses_normal+0x15e46, %r10
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0x17646, %r13
nop
nop
nop
nop
nop
add $36459, %r15
movb $0x51, (%r13)
nop
xor $62947, %r15

// Store
lea addresses_normal+0x1e769, %r13
clflush (%r13)
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0x172, %r12
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x6246, %rsi
nop
cmp %r13, %r13
movl $0x51525354, (%rsi)
nop
and $24560, %rax

// Load
lea addresses_RW+0x6346, %r10
nop
nop
nop
nop
and $16059, %rcx
mov (%r10), %r13
nop
nop
nop
nop
nop
xor $31813, %rcx

// Faulty Load
lea addresses_normal+0x15e46, %r13
nop
nop
nop
nop
nop
sub $22316, %r10
movb (%r13), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 139}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
