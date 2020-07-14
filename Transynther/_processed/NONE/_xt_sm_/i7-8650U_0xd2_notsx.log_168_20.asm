.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a59d, %rbp
nop
nop
and $17107, %r14
movb $0x61, (%rbp)
sub %rcx, %rcx
lea addresses_UC_ht+0x12b9d, %rsi
lea addresses_UC_ht+0x1b79d, %rdi
clflush (%rsi)
nop
and $10119, %rdx
mov $98, %rcx
rep movsl
and %rsi, %rsi
lea addresses_D_ht+0xfb9d, %rcx
nop
nop
nop
cmp $19339, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rcx)
and $65006, %rdx
lea addresses_normal_ht+0xcf6d, %rsi
nop
sub $41937, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x39d, %r14
xor $27841, %rcx
movups (%r14), %xmm1
vpextrq $0, %xmm1, %rax
nop
sub $33145, %rdi
lea addresses_WT_ht+0x1939d, %r14
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%r14)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x7cc, %rcx
nop
nop
nop
nop
nop
inc %rdi
mov (%rcx), %ebp
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_A+0x1139d, %rcx
and %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
nop
add $39466, %r12

// Faulty Load
lea addresses_A+0x1139d, %rcx
nop
nop
dec %rax
mov (%rcx), %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 168}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
