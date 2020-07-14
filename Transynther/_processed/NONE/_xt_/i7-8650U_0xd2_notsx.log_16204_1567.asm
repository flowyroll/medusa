.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x599f, %rbp
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rbp), %r15d
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x15b9f, %rsi
lea addresses_normal_ht+0x4b9f, %rdi
nop
nop
nop
dec %r15
mov $79, %rcx
rep movsl
nop
sub $55301, %r15
lea addresses_D_ht+0x1cf7f, %rdx
nop
nop
nop
nop
nop
dec %r12
mov (%rdx), %r15w
cmp %r12, %r12
lea addresses_UC_ht+0x3d9f, %rsi
lea addresses_normal_ht+0x19ebf, %rdi
nop
nop
cmp %rbx, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
and $41112, %r15
lea addresses_WC_ht+0x79e6, %rcx
nop
nop
nop
nop
add %rdi, %rdi
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
xor $431, %rbp
lea addresses_A_ht+0xf29f, %rsi
lea addresses_WC_ht+0x2b9f, %rdi
nop
nop
nop
sub $51124, %rbx
mov $33, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_WC_ht+0xa29f, %rdi
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0xca5f, %rbp
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x659f, %rbx
nop
nop
nop
sub $10275, %rdx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and $47052, %rcx
lea addresses_normal_ht+0x5f2f, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0xc9f, %r12
nop
nop
nop
dec %rbx
movb (%r12), %dl
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1c87f, %rsi
nop
nop
nop
nop
xor $40595, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $62209, %r12
lea addresses_normal_ht+0x6f71, %r15
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x15017, %rdi
nop
and %r15, %r15
mov (%rdi), %rbp
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x939f, %rdi
nop
nop
nop
nop
xor $23318, %rbx
mov (%rdi), %esi
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_A+0x13ff8, %r14
nop
nop
nop
sub $35298, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp $17909, %r14

// Store
lea addresses_D+0x539f, %rbx
cmp $33165, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rbx)
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x1e23f, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbx)
and %rbp, %rbp

// Store
lea addresses_A+0x1519f, %rcx
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rcx)
and $2935, %r13

// Store
lea addresses_normal+0x1e73f, %rbx
nop
sub %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x925f, %r13
nop
nop
nop
nop
lfence
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_WT+0x139f, %rbp
nop
cmp $53887, %rdi
mov (%rbp), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'39': 16204}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
