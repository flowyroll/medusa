.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xeb6c, %r15
and %r14, %r14
movl $0x61626364, (%r15)
nop
nop
inc %rdi
lea addresses_UC_ht+0x1bf54, %rsi
lea addresses_WC_ht+0x1d134, %rdi
nop
nop
nop
nop
inc %r12
mov $41, %rcx
rep movsw
add $27927, %r12
lea addresses_D_ht+0x6a2c, %r12
nop
nop
nop
nop
add $54480, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xfdbc, %r15
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x1ebfa, %r14
nop
nop
nop
nop
xor $56508, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r14)
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1aacc, %rcx
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rcx)
sub $43929, %rsi
lea addresses_normal_ht+0x70ac, %rdi
nop
nop
cmp $54280, %rax
movl $0x61626364, (%rdi)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x10f0c, %rsi
nop
nop
nop
nop
sub $26278, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x202c, %rax
nop
nop
nop
and $26111, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
add $42823, %r11

// REPMOV
lea addresses_UC+0x1ec2c, %rsi
lea addresses_A+0x132ac, %rdi
nop
and $11001, %rdx
mov $58, %rcx
rep movsl
nop
xor $62208, %rcx

// Store
lea addresses_WT+0x85cc, %rcx
sub $48637, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rcx)
nop
and $3662, %r13

// Faulty Load
lea addresses_normal+0x202c, %rax
nop
nop
add $34588, %r11
mov (%rax), %edx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': True}}
{'58': 1}
58
*/
