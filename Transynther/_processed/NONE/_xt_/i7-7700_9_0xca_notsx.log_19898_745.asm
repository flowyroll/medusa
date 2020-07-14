.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16643, %rsi
lea addresses_WC_ht+0x2fe1, %rdi
nop
sub %rax, %rax
mov $80, %rcx
rep movsb
nop
nop
cmp $6386, %r8
lea addresses_normal_ht+0x1060c, %r10
dec %r12
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
nop
xor $23005, %rax
lea addresses_WT_ht+0x5cc3, %rsi
lea addresses_WC_ht+0xa843, %rdi
nop
nop
nop
nop
and $16417, %r14
mov $84, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1c643, %rsi
lea addresses_D_ht+0x843, %rdi
nop
nop
nop
nop
inc %r10
mov $9, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_UC_ht+0x19443, %rax
nop
nop
sub $60359, %r12
movb $0x61, (%rax)
nop
nop
nop
nop
nop
and $56541, %rdi
lea addresses_UC_ht+0xf043, %rsi
lea addresses_A_ht+0x1db03, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $171, %rax
lea addresses_A_ht+0x13d53, %rsi
lea addresses_WC_ht+0x17243, %rdi
nop
nop
sub %r10, %r10
mov $113, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_A_ht+0x11919, %r8
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x303, %r8
clflush (%r8)
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
nop
add $56059, %rcx
lea addresses_A_ht+0x65c3, %r14
add $25727, %rcx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x6143, %r10
nop
sub %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
cmp %r14, %r14
lea addresses_A_ht+0x1b623, %rsi
lea addresses_UC_ht+0x19443, %rdi
nop
nop
nop
nop
add $9975, %r10
mov $54, %rcx
rep movsl
dec %rdi
lea addresses_A_ht+0x13f7b, %r12
nop
nop
nop
nop
add $47305, %rcx
movups (%r12), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
dec %r12
lea addresses_normal_ht+0xf413, %rsi
nop
nop
nop
nop
dec %rax
movb (%rsi), %cl
cmp $58496, %rax
lea addresses_UC_ht+0xe643, %rsi
lea addresses_WC_ht+0xac03, %rdi
clflush (%rdi)
nop
sub $55153, %r12
mov $30, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Load
lea addresses_US+0xba33, %r13
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%r13), %r9b
nop
nop
add %rbp, %rbp

// Load
lea addresses_RW+0x1a753, %rbx
nop
nop
sub %rbp, %rbp
mov (%rbx), %r13
nop
nop
nop
nop
cmp $39185, %rbp

// Store
lea addresses_UC+0x1752b, %rbx
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1083, %r8
nop
add %rcx, %rcx
movw $0x5152, (%r8)
nop
add $6342, %rax

// Load
lea addresses_UC+0x1cc0b, %r13
nop
nop
nop
nop
nop
xor %r8, %r8
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rbp
nop
add $2882, %r13

// Store
mov $0x3cb, %rcx
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rcx)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0x8c23, %rbp
nop
xor $31564, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $21432, %r9

// Store
lea addresses_UC+0xc09d, %rbx
cmp %rcx, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_WT+0x1043, %rbp
nop
add $27166, %r9
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 19898}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
