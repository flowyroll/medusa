.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1eb47, %rsi
lea addresses_WC_ht+0x12f47, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $88, %rcx
rep movsb
nop
and $10866, %rax
lea addresses_A_ht+0x1af89, %r13
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r13)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x9707, %rdi
nop
nop
sub $29814, %r9
movb (%rdi), %cl
and $35069, %r9
lea addresses_UC_ht+0x15f47, %rbp
cmp $6368, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
and $59552, %r9
lea addresses_WT_ht+0x867f, %rax
clflush (%rax)
nop
inc %r9
movb $0x61, (%rax)
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xf730, %rdi
cmp $63971, %r13
movw $0x5152, (%rdi)
dec %rbx

// Store
lea addresses_A+0x18e47, %r15
cmp $42165, %rbp
movb $0x51, (%r15)
nop
nop
dec %rbp

// Store
lea addresses_A+0x128c7, %r13
and %rcx, %rcx
movl $0x51525354, (%r13)
add %r15, %r15

// REPMOV
lea addresses_RW+0xc747, %rsi
lea addresses_WC+0x7747, %rdi
nop
nop
nop
nop
add $48916, %rbp
mov $24, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0x15c21, %r12
nop
nop
and $21909, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovntdq %ymm7, (%r12)
nop
dec %rbx

// Store
lea addresses_UC+0xe5c7, %rbp
nop
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%rbp)
nop
and %r12, %r12

// Load
mov $0x6d601e0000000047, %rbp
nop
nop
nop
nop
nop
inc %r15
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
inc %rcx

// Load
lea addresses_WT+0x1eb47, %rbx
nop
nop
nop
nop
add $27128, %rsi
mov (%rbx), %r15
xor %rcx, %rcx

// Faulty Load
lea addresses_normal+0x1f347, %rcx
nop
nop
nop
dec %rsi
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'34': 633}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
