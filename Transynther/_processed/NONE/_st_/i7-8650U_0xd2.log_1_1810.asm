.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19dd1, %r9
nop
nop
nop
nop
sub $59543, %rax
movw $0x6162, (%r9)
nop
add %rcx, %rcx
lea addresses_UC_ht+0x4841, %rsi
lea addresses_A_ht+0x7d91, %rdi
nop
add $34220, %rbp
mov $81, %rcx
rep movsq
nop
nop
nop
add $29578, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1612d, %rdx
nop
cmp %rsi, %rsi
movb (%rdx), %r8b
sub %r8, %r8

// Store
lea addresses_RW+0x8bc1, %rax
inc %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
sub $55543, %rbx

// Store
lea addresses_WT+0xfa01, %rax
sub %rcx, %rcx
movb $0x51, (%rax)
nop
xor %rcx, %rcx

// Store
mov $0x1, %rsi
nop
nop
nop
xor $62222, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0xea01, %rsi
nop
nop
xor $19869, %r8
mov (%rsi), %ecx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'51': 1}
51
*/
