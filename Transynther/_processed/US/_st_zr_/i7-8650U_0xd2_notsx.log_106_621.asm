.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14f04, %rbx
nop
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
add $38874, %rcx
lea addresses_A_ht+0x14984, %rsi
lea addresses_A_ht+0x19104, %rdi
clflush (%rdi)
nop
cmp %r10, %r10
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1bc84, %r10
and $7377, %r8
movl $0x61626364, (%r10)
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x6084, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rcx), %rsi
add $2448, %r8
lea addresses_WT_ht+0x2014, %rdi
add %rcx, %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
and $13192, %rsi
lea addresses_WC_ht+0xba04, %rbx
nop
cmp %r14, %r14
movb (%rbx), %cl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x41c4, %r14
nop
nop
xor $33264, %rbx
mov (%r14), %rcx
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x18b96, %rbx
nop
nop
nop
nop
nop
and $44811, %rsi
movb $0x61, (%rbx)
sub %rcx, %rcx
lea addresses_D_ht+0x12584, %rsi
lea addresses_UC_ht+0xf584, %rdi
clflush (%rdi)
nop
nop
cmp $738, %r12
mov $81, %rcx
rep movsl
nop
nop
nop
nop
add $60849, %rbx
lea addresses_A_ht+0xc6d0, %rsi
lea addresses_D_ht+0x18084, %rdi
clflush (%rsi)
nop
inc %r10
mov $119, %rcx
rep movsb
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1dada, %rsi
lea addresses_PSE+0x1ed84, %rdi
nop
xor %r15, %r15
mov $117, %rcx
rep movsb
nop
xor %r13, %r13

// Store
lea addresses_WC+0x65b4, %r13
nop
nop
add $27780, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_US+0x12814, %rax
clflush (%rax)
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
cmp %rax, %rax

// Store
lea addresses_UC+0x1a5c, %r13
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovaps %ymm2, (%r13)
nop
nop
nop
and $11730, %r13

// Faulty Load
lea addresses_US+0x3d84, %r13
nop
nop
nop
sub $1748, %rcx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'00': 102, '35': 4}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 35 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00
*/
