.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1cbc2, %r13
nop
nop
nop
cmp %r9, %r9
mov (%r13), %di
sub $42973, %r10
lea addresses_WT_ht+0x2442, %r10
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
sub $846, %rdi
lea addresses_normal_ht+0x1dac2, %rsi
lea addresses_WC_ht+0x11dc2, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $57366, %r10
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1afc2, %r8
dec %rcx
movw $0x6162, (%r8)
add $52857, %r13
lea addresses_UC_ht+0xc5c2, %r10
add $22976, %rdi
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
cmp $48041, %r10
lea addresses_WT_ht+0x1bb8d, %rsi
nop
nop
nop
nop
xor $4962, %r10
mov (%rsi), %r9d
nop
nop
nop
cmp $53847, %rsi
lea addresses_D_ht+0x16942, %r8
nop
nop
nop
add %rdi, %rdi
mov (%r8), %ecx
mfence
lea addresses_normal_ht+0x44e6, %r8
add $34540, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xd772, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
movl $0x61626364, (%rsi)
sub $51364, %rsi
lea addresses_WC_ht+0x4062, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rcx)
sub %rdi, %rdi
lea addresses_UC_ht+0xe5c2, %rcx
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_A+0x1f401, %rax
clflush (%rax)
nop
nop
nop
nop
cmp $38526, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rax)
nop
nop
dec %rbx

// Store
lea addresses_RW+0x6cf2, %r10
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
xor $64432, %rax

// Store
mov $0xbc2, %rax
nop
nop
cmp $42049, %r12
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
inc %r10

// Store
lea addresses_UC+0x16dc2, %r10
nop
nop
dec %r15
movl $0x51525354, (%r10)
sub %r8, %r8

// Store
mov $0x9e2, %r10
nop
nop
nop
sub %rax, %rax
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_PSE+0xd4ca, %r10
nop
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_UC+0x16dc2, %rsi
nop
cmp $49328, %rbx
mov (%rsi), %eax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'54': 205, '38': 1}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 38 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
