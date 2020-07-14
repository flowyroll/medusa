.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf6a7, %rsi
lea addresses_D_ht+0xaba7, %rdi
nop
nop
sub %r11, %r11
mov $119, %rcx
rep movsl
nop
cmp $30290, %rbx
lea addresses_UC_ht+0x18fe7, %r12
nop
inc %r15
mov (%r12), %ebx
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1d7a7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
cmp $51198, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x12653, %r12
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_UC+0x194a7, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
cmp $9461, %r13

// Store
lea addresses_PSE+0x1cda7, %rdi
nop
nop
sub $54467, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
cmp $57048, %rdi

// Store
lea addresses_WT+0x9895, %rcx
inc %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
inc %rdi

// Faulty Load
lea addresses_A+0xe3a7, %r13
nop
xor %rcx, %rcx
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'40': 2, '41': 1, '48': 6845, '85': 1, '00': 9410}
00 00 48 48 48 00 00 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 00 48 48 00 00 48 00 48 48 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 00 00 48 48 00 00 00 00 00 00 48 48 00 48 00 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 00 00 00 00 48 00 00 00 48 48 48 48 00 00 00 48 00 48 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 48 48 00 48 48 00 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 00 48 00 00 00 00 48 48 48 48 00 00 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 00 48 00 48 48 48 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 48 48 00 48 48 48 48 00 48 48 00 48 00 48 48 00 00 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 00 48 48 48 00 00 48 00 00 48 00 48 48 00 48 00 48 00 00 00 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 48 00 48 00 48 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 48 00 00 00 48 48 00 48 48 48 00 48 48 48 48 00 48 00 00 48 48 48 48 00 00 00 00 00 00 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 00 00 48 48 48 48 48 00 00 00 00 00 48 48 48 00 48 00 48 48 48 00 00 00 48 00 48 00 00 48 48 48 00 48 00 48 00 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 40 00 48 48 00 48 00 00 48 48 48 48 00 48 00 00 00 48 00 48 00 00 48 48 00 48 48 48 00 48 48 00 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 00 00 48 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 48 48 48 00 00 00 00 48 00 00 48 48 48 48 00 00 00 48 00 48 48 48 00 48 48 00 00 00 48 00 48 00 00 00 48 48 00 48 00 00 48 00 48 00 00 48 00 48 48 48 00 48 00 00 00 00
*/
