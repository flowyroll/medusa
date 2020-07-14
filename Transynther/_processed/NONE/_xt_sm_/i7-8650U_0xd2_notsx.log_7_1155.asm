.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
lea addresses_WC_ht+0x56e4, %rbp
nop
xor %r11, %r11
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
nop
add $2701, %r15
lea addresses_UC_ht+0x1aee, %r12
clflush (%r12)
nop
nop
cmp %rax, %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
and $8367, %r12
lea addresses_A_ht+0xa0f0, %r11
nop
nop
nop
nop
xor %r9, %r9
mov (%r11), %ebp
nop
nop
nop
nop
nop
sub %r12, %r12
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x12680, %rcx
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x1c240, %r15
clflush (%r15)
nop
sub %r13, %r13
movl $0x51525354, (%r15)

// Exception!!!
nop
nop
mov (0), %rdx
cmp $37286, %r15

// Store
lea addresses_D+0xe2a0, %r13
nop
add $28085, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and $14126, %rbx

// Store
lea addresses_PSE+0xc680, %r15
nop
nop
cmp $28928, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
nop
add $25135, %rdi

// Faulty Load
lea addresses_D+0x12680, %r14
nop
nop
nop
nop
nop
xor $29662, %r15
mov (%r14), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'58': 7}
58 58 58 58 58 58 58
*/
