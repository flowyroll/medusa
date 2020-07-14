.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rdi
lea addresses_A_ht+0x1a42e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%r15)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1061a, %rax
nop
nop
nop
cmp $11322, %rdi
mov (%rax), %r14w
nop
nop
sub $61577, %r15
lea addresses_WC_ht+0x8a1a, %r11
cmp %r9, %r9
movb $0x61, (%r11)
nop
nop
cmp $12506, %r15
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x1e61a, %rcx
nop
nop
nop
nop
dec %r13
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x161a, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
nop
and $46788, %r14

// Store
lea addresses_UC+0x2e1a, %r14
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r14)
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_WT+0x161a, %r14
nop
nop
nop
cmp $55827, %rdx
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'58': 22}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
