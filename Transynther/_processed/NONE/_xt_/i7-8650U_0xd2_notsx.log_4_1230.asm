.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14e05, %rsi
lea addresses_normal_ht+0x186a5, %rdi
clflush (%rdi)
nop
nop
inc %rbp
mov $84, %rcx
rep movsq
nop
nop
nop
nop
and $37504, %rbx
lea addresses_UC_ht+0x1bde5, %r9
nop
nop
nop
nop
add $40165, %r14
movl $0x61626364, (%r9)
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xb515, %rsi
lea addresses_WC_ht+0x7025, %rdi
clflush (%rsi)
nop
nop
nop
add %r15, %r15
mov $71, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xfe25, %rsi
nop
nop
and $42342, %rcx
movb (%rsi), %bl
xor %r9, %r9
lea addresses_A_ht+0x132d5, %rsi
lea addresses_D_ht+0x15a25, %rdi
nop
nop
nop
xor %r14, %r14
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $57429, %rdi
lea addresses_A_ht+0xe595, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rbp), %r9b
nop
nop
nop
nop
sub $8074, %rbx
lea addresses_A_ht+0x19425, %rsi
lea addresses_UC_ht+0xa8a5, %rdi
nop
nop
nop
cmp %r15, %r15
mov $121, %rcx
rep movsl
nop
nop
nop
nop
and $51478, %r15
lea addresses_UC_ht+0x27a5, %rbp
nop
nop
sub $30041, %r9
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_PSE+0x10825, %rsi
clflush (%rsi)
xor $46425, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rsi)

// Exception!!!
nop
mov (0), %r8
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_WT+0xb025, %rsi
nop
nop
nop
nop
cmp %r14, %r14
movb (%rsi), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'39': 4}
39 39 39 39
*/
