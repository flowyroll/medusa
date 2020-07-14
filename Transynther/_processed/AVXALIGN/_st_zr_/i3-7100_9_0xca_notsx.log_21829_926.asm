.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1939, %rsi
lea addresses_UC_ht+0x8889, %rdi
clflush (%rsi)
dec %r13
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $42669, %rdi
lea addresses_normal_ht+0x14339, %rbx
nop
cmp $48362, %rax
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
cmp $57690, %rax
lea addresses_UC_ht+0xcac1, %r13
nop
xor %rdx, %rdx
mov (%r13), %bx
nop
nop
nop
nop
xor $58221, %rbx
lea addresses_normal_ht+0x1cf39, %rsi
lea addresses_WC_ht+0x12b39, %rdi
and %rbp, %rbp
mov $63, %rcx
rep movsw
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1d427, %r13
nop
nop
nop
nop
nop
cmp $58050, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r13)
nop
nop
sub $40030, %rsi
lea addresses_WT_ht+0x1bf09, %rsi
lea addresses_normal_ht+0x19aed, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $25, %rcx
rep movsw
nop
nop
nop
nop
nop
add $28677, %rsi
lea addresses_D_ht+0x12539, %rbx
clflush (%rbx)
nop
nop
sub $53969, %rdx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
sub $20150, %rdx
lea addresses_WC_ht+0x13df9, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xbb79, %rdx
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%rdx)
sub $26859, %r13
lea addresses_A_ht+0xc6f9, %rbp
clflush (%rbp)
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
sub $47779, %r13
lea addresses_WT_ht+0x6381, %r13
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r13)
nop
sub $5492, %r13
lea addresses_UC_ht+0x1d39, %rdx
clflush (%rdx)
nop
xor $61993, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %rdx
movaps %xmm1, (%rdx)
nop
nop
nop
cmp $54505, %rbx
lea addresses_D_ht+0x19b9, %rax
nop
nop
nop
nop
xor %rbp, %rbp
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
cmp $37675, %rdi
lea addresses_D_ht+0x36b9, %rsi
lea addresses_WT_ht+0xa671, %rdi
nop
nop
nop
inc %rax
mov $21, %rcx
rep movsl
and $56869, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_PSE+0x6739, %rax
nop
nop
sub $33168, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x11141, %r12
nop
xor %r14, %r14
movl $0x51525354, (%r12)
nop
nop
xor %r12, %r12

// Store
lea addresses_UC+0x1cf39, %r15
nop
nop
nop
nop
nop
xor $29016, %r12
movb $0x51, (%r15)
nop
nop
nop
nop
nop
dec %r8

// Store
mov $0xf39, %r8
sub %r15, %r15
movl $0x51525354, (%r8)
cmp $947, %r15

// Faulty Load
lea addresses_A+0x9739, %rax
nop
nop
nop
nop
nop
dec %r9
mov (%rax), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'58': 209, '00': 21620}
58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
