.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18ce, %rsi
clflush (%rsi)
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rsi)
dec %rax
lea addresses_WT_ht+0xfd1e, %r12
nop
nop
nop
sub $46450, %r14
movw $0x6162, (%r12)
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x828e, %r14
nop
nop
sub $37543, %rdx
movw $0x6162, (%r14)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x18f1e, %rsi
lea addresses_UC_ht+0x6952, %rdi
nop
nop
nop
and %r15, %r15
mov $27, %rcx
rep movsb
sub %r15, %r15
lea addresses_WC_ht+0x201e, %rcx
nop
cmp $2992, %r13
movl $0x61626364, (%rcx)
and %rdi, %rdi
lea addresses_D_ht+0x1311e, %r13
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0xac3e, %rax
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
sub $11801, %rax

// Store
lea addresses_UC+0x1bf1e, %r9
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
and $5648, %rdx

// Store
lea addresses_RW+0x1c038, %rdx
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
sub $46551, %rdx

// Store
lea addresses_RW+0x1fb1e, %rax
nop
nop
add $41180, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movntdq %xmm1, (%rax)
nop
xor $53900, %r15

// Store
lea addresses_RW+0x1121e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %rbp
movw $0x5152, (%r15)
nop
sub $53613, %rdx

// Store
mov $0x69e, %rbx
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rbx)
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_US+0x1ff1e, %rdx
nop
sub %r9, %r9
movb (%rdx), %r15b
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'58': 14}
58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
