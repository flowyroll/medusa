.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rdx
lea addresses_WC_ht+0xaaf1, %rdi
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
cmp $7803, %rax
lea addresses_normal_ht+0x5999, %r9
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %r9
movaps %xmm1, (%r9)
nop
nop
xor %rax, %rax
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0x14408, %rbp
nop
cmp $16620, %rbx
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_D+0x17371, %rax
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rax)
dec %r11

// Store
lea addresses_RW+0x1ca29, %r10
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r10)
nop
nop
cmp %rdx, %rdx

// Store
mov $0x3f1, %r11
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
add $55128, %rbx

// Faulty Load
mov $0x3f1, %rax
nop
nop
xor $48389, %rbp
movntdqa (%rax), %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'54': 3}
54 54 54
*/
