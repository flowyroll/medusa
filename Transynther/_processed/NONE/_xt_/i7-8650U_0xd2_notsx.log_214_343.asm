.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1de40, %rsi
lea addresses_WC_ht+0x19300, %rdi
clflush (%rdi)
nop
nop
nop
and $23843, %r13
mov $20, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x18f40, %r13
nop
nop
nop
xor %r10, %r10
mov (%r13), %ebx
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x131c0, %rdi
nop
nop
add %rax, %rax
movb (%rdi), %r10b
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xc1c0, %rax
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rax), %ecx
nop
nop
nop
nop
cmp $41506, %rsi
lea addresses_UC_ht+0x1b6c0, %rdi
nop
xor %rax, %rax
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r13
dec %r10
lea addresses_WT_ht+0x12eff, %rsi
nop
nop
nop
cmp $24343, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
xor $14922, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x5100, %rsi
lea addresses_UC+0x12e40, %rdi
clflush (%rdi)
nop
nop
and %rdx, %rdx
mov $66, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1f040, %r8
nop
nop
add $25439, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_D+0x1bcb0, %rcx
nop
nop
inc %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movntdq %xmm4, (%rcx)
cmp %rcx, %rcx

// Store
lea addresses_D+0xa880, %r14
and %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r14)
nop
add %rcx, %rcx

// Store
lea addresses_UC+0x13140, %rdi
nop
nop
nop
nop
nop
xor $631, %rsi
movb $0x51, (%rdi)
nop
nop
xor $30683, %r12

// Store
lea addresses_PSE+0x1a320, %rcx
xor $4709, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
sub $530, %rdx

// Faulty Load
lea addresses_UC+0x2040, %rsi
add $1958, %rcx
mov (%rsi), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'37': 214}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
