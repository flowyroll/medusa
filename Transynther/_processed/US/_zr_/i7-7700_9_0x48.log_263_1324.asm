.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b592, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %rax
nop
cmp $28869, %rax
lea addresses_WC_ht+0xa332, %rdx
nop
nop
dec %rbx
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
xor $12299, %rdx
lea addresses_WC_ht+0x114aa, %rax
nop
nop
nop
nop
sub %r14, %r14
mov (%rax), %r13d
nop
nop
nop
nop
nop
cmp $15175, %r13
lea addresses_WC_ht+0x1a1b2, %rsi
lea addresses_normal_ht+0x130b2, %rdi
nop
dec %rax
mov $2, %rcx
rep movsq
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xfb32, %r13
nop
nop
nop
nop
mfence
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x5c32, %rsi
lea addresses_A_ht+0x11222, %rdi
and $342, %r13
mov $117, %rcx
rep movsw
xor $27359, %rbx
lea addresses_A_ht+0x17702, %rsi
lea addresses_A_ht+0x3d32, %rdi
nop
nop
nop
add %rbx, %rbx
mov $58, %rcx
rep movsl
nop
nop
nop
nop
xor $4972, %rax
lea addresses_WT_ht+0xa532, %rax
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
and %r13, %r13
lea addresses_normal_ht+0xd824, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x7f32, %rdi
and %r14, %r14
mov (%rdi), %r13w
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x19fb2, %rdi
nop
nop
sub %r13, %r13
movb (%rdi), %al
and %rsi, %rsi
lea addresses_D_ht+0x1c96a, %rax
nop
nop
nop
nop
dec %r13
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1b972, %rsi
lea addresses_WC_ht+0xb985, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $21, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x14f32, %rsi
lea addresses_WC_ht+0x2732, %rdi
nop
nop
inc %r13
mov $14, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x42e6, %rsi
nop
inc %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_WC+0x5332, %rcx
clflush (%rcx)
and $6483, %rax
movb (%rcx), %r15b
nop
nop
add $54501, %rbp

// Store
lea addresses_UC+0x49f2, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
and $21895, %rcx

// Store
lea addresses_US+0xcea, %rsi
nop
add %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
inc %r10

// Store
lea addresses_UC+0xa932, %rcx
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp $6156, %rax

// Store
lea addresses_UC+0xb620, %rcx
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
cmp $57351, %rbp

// Store
lea addresses_WC+0x13d4a, %r10
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
nop
dec %rax

// Store
lea addresses_US+0x1ae3e, %r15
nop
nop
nop
nop
nop
cmp $56393, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r15)
dec %rax

// Faulty Load
lea addresses_US+0x1b332, %r15
nop
inc %rcx
mov (%r15), %ebp
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
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'00': 263}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
