.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1723c, %rsi
lea addresses_A_ht+0x142fc, %rdi
nop
nop
add $37018, %rbp
mov $10, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1d0bc, %rbp
nop
nop
add $30129, %r8
movl $0x61626364, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x13bbc, %rsi
lea addresses_WC_ht+0x59fc, %rdi
nop
add %rbx, %rbx
mov $1, %rcx
rep movsl
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x89c, %rbx
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
cmp $14710, %r12

// Store
lea addresses_WT+0x87bc, %rcx
and %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rcx)
nop
add $33041, %rcx

// Store
lea addresses_D+0xad84, %rdx
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
cmp $63482, %r13

// Load
lea addresses_WT+0x197bc, %rdx
add $53147, %r12
mov (%rdx), %bx
nop
nop
nop
cmp $26171, %r12

// Store
lea addresses_D+0x1cd00, %rbx
nop
nop
nop
nop
nop
and $46344, %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
and $43619, %r12

// Store
mov $0xfbc, %rdx
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovaps %ymm1, (%rdx)
nop
nop
nop
nop
cmp $29921, %r12

// Load
lea addresses_RW+0x13bbc, %r13
nop
nop
nop
nop
xor $11540, %r12
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
nop
nop
sub $27689, %r9

// Faulty Load
lea addresses_WT+0x87bc, %r13
nop
nop
nop
nop
and $37952, %rbx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 3}
00 00 00
*/
