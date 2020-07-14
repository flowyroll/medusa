.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1825, %rsi
lea addresses_WC_ht+0x9565, %rdi
nop
nop
add %rbx, %rbx
mov $28, %rcx
rep movsw
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x5425, %rcx
nop
nop
and %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x29ed, %rdi
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
sub $34189, %rcx
lea addresses_D_ht+0x165d7, %r13
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r13)
nop
add $11409, %rbx
lea addresses_A_ht+0x14865, %rax
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
nop
xor $6784, %r13
lea addresses_UC_ht+0x1bee5, %rcx
nop
nop
nop
nop
sub $11416, %rbx
mov (%rcx), %esi
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x253, %rax
nop
dec %rbx
mov (%rax), %di
dec %r13
lea addresses_D_ht+0x155ed, %rdi
nop
nop
nop
xor $35753, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x128e5, %rax
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rax)
nop
xor $8387, %rdi
lea addresses_A_ht+0x3345, %rcx
nop
nop
nop
cmp $14928, %rsi
movl $0x61626364, (%rcx)
nop
add %rbx, %rbx
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
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xedf5, %rdx
nop
and %r8, %r8
movw $0x5152, (%rdx)
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_UC+0x75e5, %r10
nop
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
and $59490, %r10

// Store
lea addresses_PSE+0x165a5, %rdx
nop
nop
nop
nop
nop
and $56130, %rdi
movw $0x5152, (%rdx)
nop
add %r15, %r15

// Load
lea addresses_A+0xbce5, %rdi
nop
nop
nop
dec %r15
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r8
and %r9, %r9

// Store
lea addresses_A+0xdc0d, %rdx
nop
nop
dec %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
sub $34769, %r15

// Store
lea addresses_normal+0x148cd, %r9
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
cmp $28479, %r8

// Store
lea addresses_D+0x19005, %r10
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
sub $54360, %rbp

// Load
lea addresses_D+0x3ce5, %rbp
nop
nop
nop
cmp $10831, %r9
movb (%rbp), %r15b
nop
nop
nop
nop
add $11390, %rbp

// Store
lea addresses_WT+0x14ce5, %r9
nop
nop
sub $32165, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r9)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x11665, %r9
cmp %rbp, %rbp
movb $0x51, (%r9)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_WC+0xbae5, %rdx
add $3601, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdx)
and $23934, %r10

// REPMOV
lea addresses_A+0x79c5, %rsi
lea addresses_normal+0x6ce5, %rdi
nop
nop
and $11988, %rbp
mov $41, %rcx
rep movsl
nop
nop
nop
nop
xor $57922, %rdx

// Faulty Load
lea addresses_WT+0x14ce5, %r10
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r10), %r15d
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
