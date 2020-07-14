.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4e34, %rbx
clflush (%rbx)
nop
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
inc %rdi
lea addresses_normal_ht+0x2760, %r9
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r9)
add $29137, %rsi
lea addresses_normal_ht+0x1c5a4, %rsi
and $35344, %r14
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x1161c, %r9
nop
nop
nop
nop
cmp $6458, %rax
movl $0x61626364, (%r9)
nop
and %r14, %r14
lea addresses_D_ht+0xcaa4, %r9
cmp %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x121a4, %rax
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rax)
sub %r9, %r9
lea addresses_WT_ht+0x1b224, %rcx
nop
nop
nop
nop
nop
and $3195, %rdi
movw $0x6162, (%rcx)
nop
cmp $42248, %rax
lea addresses_D_ht+0x11bf2, %rsi
lea addresses_normal_ht+0xec24, %rdi
xor $39532, %r14
mov $118, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $55121, %rsi
lea addresses_WT_ht+0x5f24, %rcx
clflush (%rcx)
nop
nop
cmp $62430, %rsi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
xor %r9, %r9
lea addresses_D_ht+0x15ca4, %rsi
lea addresses_WC_ht+0x29a4, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r15, %r15
mov $114, %rcx
rep movsq
nop
nop
nop
sub $60333, %r14
lea addresses_WC_ht+0x1baa4, %rbx
nop
inc %r15
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x34a6, %r15
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r15)
nop
cmp %r15, %r15
lea addresses_WC_ht+0xe8a4, %rcx
dec %rdi
mov (%rcx), %r9
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x13144, %r9
nop
nop
sub $62764, %rcx
movw $0x6162, (%r9)
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x18314, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rsi
movw $0x5152, (%r12)
nop
nop
dec %r15

// Store
lea addresses_US+0x1a0a4, %rbp
clflush (%rbp)
inc %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
sub %rcx, %rcx

// Load
mov $0x49a, %rcx
nop
nop
nop
nop
and $33642, %rdi
mov (%rcx), %rsi
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x112a4, %rcx
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rcx)
nop
add $55934, %r15

// Load
lea addresses_normal+0x100a4, %r15
and %r12, %r12
mov (%r15), %rcx
cmp $60471, %r15

// Store
lea addresses_A+0x1f8a4, %r15
nop
add $30672, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
add $14837, %rsi

// Store
lea addresses_US+0xb6a4, %rcx
nop
add %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp $26212, %r9

// Store
lea addresses_normal+0x14ca4, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rdi)
add %r15, %r15

// Load
lea addresses_A+0x12a64, %rdi
nop
and %rcx, %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0xd664, %rbp
nop
xor $60122, %rsi
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
and $27541, %r9

// Faulty Load
lea addresses_A+0x1f8a4, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 2}
58 58
*/
