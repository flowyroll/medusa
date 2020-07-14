.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16cda, %rsi
lea addresses_D_ht+0x1d2aa, %rdi
xor %rdx, %rdx
mov $95, %rcx
rep movsl
nop
xor $59522, %rax
lea addresses_UC_ht+0x1807e, %rax
nop
nop
nop
nop
sub $38307, %rdi
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
add $15143, %rcx
lea addresses_D_ht+0x17cca, %rax
nop
nop
sub $7171, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
add %rax, %rax
lea addresses_A_ht+0x3e92, %rdi
nop
nop
nop
nop
add $31201, %rdx
mov (%rdi), %ax
nop
nop
inc %rdi
lea addresses_A_ht+0xa38a, %r8
nop
nop
nop
nop
nop
xor %r11, %r11
movb (%r8), %al
nop
nop
sub $42181, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdx

// Store
lea addresses_UC+0xab7a, %r12
clflush (%r12)
nop
nop
nop
add $61451, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovntdq %ymm4, (%r12)
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x793, %r15
nop
nop
nop
sub $51715, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r15)
nop
nop
sub %r15, %r15

// Store
lea addresses_A+0x106ca, %r13
nop
nop
xor $123, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor $53364, %rdx

// Load
mov $0x677fa3000000028a, %r13
nop
nop
nop
nop
nop
xor $60747, %r12
movb (%r13), %dl
cmp %rdx, %rdx

// Store
lea addresses_RW+0x233e, %r14
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r14)
cmp $24301, %rdx

// Store
lea addresses_UC+0xd14a, %rdx
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x164ca, %r15
clflush (%r15)
nop
nop
nop
cmp $50329, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
inc %r15

// Faulty Load
lea addresses_PSE+0x164ca, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%r8), %r14w
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 3, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'58': 1}
58
*/
