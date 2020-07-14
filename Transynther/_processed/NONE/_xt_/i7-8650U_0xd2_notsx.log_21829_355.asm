.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x20fb, %rsi
lea addresses_WT_ht+0x18ffb, %rdi
nop
nop
nop
nop
inc %rbp
mov $89, %rcx
rep movsq
nop
add %rbx, %rbx
lea addresses_D_ht+0x879b, %r15
nop
nop
nop
nop
nop
sub $25863, %r13
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
cmp $15728, %rbx
lea addresses_WT_ht+0xeb7f, %rsi
lea addresses_UC_ht+0xd0fb, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $30, %rcx
rep movsb
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x79fb, %rsi
lea addresses_D_ht+0x1b72b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $37, %rcx
rep movsq
nop
nop
nop
nop
add $16131, %rdi
lea addresses_UC_ht+0xee3e, %r14
nop
sub $55247, %rbp
movw $0x6162, (%r14)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x135fb, %r15
nop
and $9869, %rcx
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
and $59796, %rsi
lea addresses_normal_ht+0xabcf, %rsi
lea addresses_UC_ht+0x81fb, %rdi
sub %rbx, %rbx
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
add $46041, %r13
lea addresses_D_ht+0xcf9b, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x3423, %rdi
add %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1847b, %rbp
add $29028, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rbp)
nop
nop
nop
nop
xor $17839, %r13
lea addresses_normal_ht+0x1dbfb, %rsi
lea addresses_WC_ht+0x1b57b, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $125, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1666f, %rsi
lea addresses_WC+0x148e3, %rdi
inc %r8
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x105fb, %rdi
nop
nop
nop
nop
nop
add $37631, %r8
movw $0x5152, (%rdi)
nop
nop
nop
sub $41074, %r14

// Store
lea addresses_UC+0x1601b, %rcx
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%rcx)
nop
nop
inc %rsi

// REPMOV
lea addresses_WC+0x11fa3, %rsi
lea addresses_PSE+0x16b1b, %rdi
nop
nop
nop
nop
nop
xor $59318, %r8
mov $98, %rcx
rep movsb
xor $98, %rdi

// Store
lea addresses_normal+0x113e1, %r14
nop
nop
nop
sub $6366, %rsi
movb $0x51, (%r14)
cmp %r14, %r14

// Store
lea addresses_D+0x36fb, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0xc9b, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
xor $38767, %rdi

// REPMOV
lea addresses_UC+0x18cfb, %rsi
lea addresses_WT+0x150a0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $58183, %r8
mov $29, %rcx
rep movsq
nop
nop
cmp %r8, %r8

// Store
lea addresses_A+0x1409d, %r14
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x44fb, %r8
nop
cmp $32861, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_D+0x80f3, %rcx
nop
add $38757, %rsi
mov (%rcx), %r8w
sub %rax, %rax

// Faulty Load
lea addresses_A+0x1fb, %r8
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r8), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
