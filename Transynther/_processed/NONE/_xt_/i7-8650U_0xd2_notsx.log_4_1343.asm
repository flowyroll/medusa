.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10bb5, %r10
nop
nop
cmp $52020, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %r10
movaps %xmm2, (%r10)
nop
nop
nop
nop
and $40303, %rax
lea addresses_WT_ht+0x346a, %rbx
nop
nop
nop
nop
nop
xor %rcx, %rcx
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r12
nop
sub $7852, %r12
lea addresses_WT_ht+0x1186a, %rsi
lea addresses_D_ht+0xb36a, %rdi
nop
nop
nop
nop
nop
xor $19310, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x586a, %r10
sub %rbx, %rbx
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xcb6a, %r8
add %r12, %r12
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x1686a, %rsi
lea addresses_UC_ht+0x1bb9a, %rdi
nop
sub $18807, %r12
mov $28, %rcx
rep movsw
xor $17142, %rax
lea addresses_D_ht+0x44ea, %r8
nop
nop
nop
sub %rax, %rax
movb (%r8), %bl
nop
nop
nop
nop
xor $8151, %r10
lea addresses_D_ht+0x17604, %rsi
lea addresses_A_ht+0x1e9ea, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $63, %rcx
rep movsq
nop
cmp $57783, %r8
lea addresses_WC_ht+0x8b6a, %r10
nop
nop
xor %rsi, %rsi
mov (%r10), %cx
add %r12, %r12
lea addresses_WT_ht+0x13db2, %r12
clflush (%r12)
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%r12)
cmp %rcx, %rcx
lea addresses_UC_ht+0x1866a, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %rdi
mov (%rsi), %r12
cmp $62517, %rdi
lea addresses_D_ht+0x1134a, %rsi
lea addresses_normal_ht+0xb86a, %rdi
nop
nop
sub %r8, %r8
mov $13, %rcx
rep movsl
and $16333, %rbx
lea addresses_D_ht+0x1c65a, %rcx
nop
nop
sub %r8, %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub $57748, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_RW+0x746a, %r10
nop
nop
add %r9, %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub $3206, %r8

// Faulty Load
lea addresses_PSE+0x11c6a, %r15
sub %r10, %r10
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'33': 4}
33 33 33 33
*/
