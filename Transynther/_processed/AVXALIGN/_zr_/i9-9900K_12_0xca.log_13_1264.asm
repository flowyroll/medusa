.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
lea addresses_normal_ht+0x1dce9, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
xor $16221, %rbp
lea addresses_WC_ht+0x1b469, %rax
nop
nop
nop
sub $62429, %rdi
mov (%rax), %rbx
nop
nop
sub $50242, %r12
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_UC+0x17f23, %rax
nop
cmp %r13, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
and $5410, %r13

// Store
lea addresses_PSE+0x7df1, %r12
nop
and $53078, %r14
movl $0x51525354, (%r12)
inc %rdi

// Store
lea addresses_WT+0x1f7e9, %rsi
and %r13, %r13
movb $0x51, (%rsi)
nop
nop
nop
nop
and $60443, %r14

// Store
lea addresses_WC+0x198b9, %r8
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
cmp $31393, %rsi

// Load
lea addresses_A+0xd9e9, %r8
nop
nop
xor %rax, %rax
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_RW+0xe2e9, %r12
nop
nop
nop
nop
nop
add %r13, %r13
vmovntdqa (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
