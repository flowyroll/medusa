.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcc48, %rsi
lea addresses_UC_ht+0xc3e8, %rdi
clflush (%rsi)
nop
add $59971, %r10
mov $47, %rcx
rep movsl
nop
nop
sub $64227, %r15
lea addresses_A_ht+0xe188, %r9
nop
nop
nop
sub $15074, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r9)
and $33998, %rcx
lea addresses_A_ht+0x133e8, %rsi
lea addresses_WC_ht+0xb710, %rdi
nop
nop
nop
nop
xor $49526, %r10
mov $33, %rcx
rep movsb
nop
nop
nop
nop
xor $20175, %r9
lea addresses_D_ht+0x135e8, %rsi
lea addresses_normal_ht+0x1dee8, %rdi
nop
nop
nop
add $49660, %rbx
mov $1, %rcx
rep movsl
nop
nop
nop
add $5079, %rax
lea addresses_normal_ht+0x11568, %r15
nop
nop
cmp $51492, %r9
movl $0x61626364, (%r15)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x94e8, %rsi
lea addresses_A_ht+0x1a908, %rdi
nop
cmp %r15, %r15
mov $35, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x13988, %r15
dec %r10
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
sub %rbx, %rbx
lea addresses_normal_ht+0x9685, %rsi
lea addresses_WC_ht+0x67e8, %rdi
xor %rbx, %rbx
mov $96, %rcx
rep movsl
nop
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xed48, %rax
nop
nop
inc %rcx
movw $0x6162, (%rax)
inc %r10
lea addresses_WC_ht+0xe736, %rax
add %r10, %r10
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x4b90, %r15
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r15)
dec %rbx
lea addresses_D_ht+0x1ebe8, %rbx
xor %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
nop
cmp $36869, %rsi
lea addresses_A_ht+0x53e8, %rsi
lea addresses_A_ht+0xb728, %rdi
nop
add $8930, %r9
mov $16, %rcx
rep movsl
add $38012, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Load
lea addresses_UC+0x193e8, %rax
nop
nop
nop
nop
sub %r9, %r9
movb (%rax), %r12b
nop
nop
nop
nop
inc %r8

// Store
lea addresses_RW+0x13668, %rax
clflush (%rax)
nop
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%rax)
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x1a3b8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $17398, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0xb9e8, %rax
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%rax)
xor %rdi, %rdi

// Faulty Load
lea addresses_WT+0x183e8, %rbp
nop
nop
nop
nop
xor %r12, %r12
mov (%rbp), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'39': 14}
39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
