.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10a31, %r10
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r10)
nop
dec %r8
lea addresses_WC_ht+0x15335, %rsi
lea addresses_D_ht+0x1bfb1, %rdi
nop
nop
nop
nop
inc %r12
mov $32, %rcx
rep movsl
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x9581, %r8
clflush (%r8)
nop
nop
nop
add $60000, %r12
mov (%r8), %edi
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x19624, %r10
lfence
mov (%r10), %di
and %r10, %r10
lea addresses_D_ht+0x9ff8, %r12
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r12)
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1a7b1, %rsi
lea addresses_WC_ht+0x73b1, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $40, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1e901, %rsi
lea addresses_A_ht+0x13871, %rdi
cmp $53248, %r8
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x11111, %rcx
nop
nop
nop
xor %r8, %r8
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm2
vpextrq $0, %xmm2, %r12
and $50660, %r8
lea addresses_A_ht+0x93b1, %rdi
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
inc %r8
lea addresses_normal_ht+0xc7b1, %rsi
lea addresses_D_ht+0x15cb1, %rdi
nop
and %r10, %r10
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x4e14, %r8
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r8)
nop
nop
nop
nop
xor $7164, %r11

// Store
mov $0x3b1, %r10
nop
nop
inc %r13
mov $0x5152535455565758, %r8
movq %r8, (%r10)
cmp %r15, %r15

// REPMOV
lea addresses_WC+0x29f1, %rsi
lea addresses_UC+0x18801, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $20, %rcx
rep movsb
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_US+0x1bb1, %rcx
add %r13, %r13
mov (%rcx), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 7}}
{'00': 4}
00 00 00 00
*/
