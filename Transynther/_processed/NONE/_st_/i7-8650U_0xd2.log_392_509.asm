.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d195, %r9
sub $13562, %rdx
movb (%r9), %al
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x14815, %r15
clflush (%r15)
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x4f15, %rsi
lea addresses_A_ht+0x4615, %rdi
nop
and %r9, %r9
mov $58, %rcx
rep movsq
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x14815, %rsi
lea addresses_normal_ht+0x9a95, %rdi
nop
and $1572, %rdx
mov $80, %rcx
rep movsq
dec %rsi
lea addresses_UC_ht+0x5e45, %rcx
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rcx)
nop
add %rdx, %rdx
lea addresses_D_ht+0x5115, %rax
nop
nop
nop
nop
nop
cmp $45954, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x17215, %rsi
nop
nop
dec %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $55205, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WT+0x17a15, %r9
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r9)
and %r9, %r9

// Store
lea addresses_WT+0x19440, %r9
nop
add $12294, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_US+0x15f15, %r8
nop
nop
nop
nop
nop
add $302, %rcx
movl $0x51525354, (%r8)
nop
nop
dec %r12

// Store
lea addresses_A+0x1bab9, %r8
nop
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r8)
xor $28008, %r9

// Store
mov $0xa15, %rdi
add $58671, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x15, %rcx
nop
nop
xor $55829, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_UC+0x10015, %rcx
nop
nop
sub $9151, %r10
mov (%rcx), %r8w
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'58': 392}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
