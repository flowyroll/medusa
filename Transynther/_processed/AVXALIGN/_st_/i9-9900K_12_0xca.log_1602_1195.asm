.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8eec, %r10
nop
nop
nop
nop
dec %rbx
mov (%r10), %r12d
nop
nop
and $57562, %r8
lea addresses_D_ht+0x5de6, %r10
clflush (%r10)
nop
nop
nop
nop
xor $54489, %rax
mov (%r10), %r9w
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x8b14, %r8
add $8811, %r10
mov (%r8), %r12
and $53031, %r9
lea addresses_UC_ht+0x14aa4, %rsi
lea addresses_normal_ht+0x79a4, %rdi
nop
nop
xor %rbx, %rbx
mov $114, %rcx
rep movsw
nop
nop
sub $11417, %rax
lea addresses_A_ht+0x1bc04, %rsi
lea addresses_normal_ht+0x19264, %rdi
nop
and %rbx, %rbx
mov $8, %rcx
rep movsq
nop
nop
nop
xor $50799, %rsi
lea addresses_D_ht+0xfe44, %rdi
nop
nop
nop
add %r9, %r9
movw $0x6162, (%rdi)
nop
nop
add $43198, %r10
lea addresses_A_ht+0x1d0e4, %r10
nop
nop
nop
nop
add $62661, %r9
movb (%r10), %r12b
nop
nop
add $49233, %rdi
lea addresses_UC_ht+0xd564, %r12
nop
nop
nop
nop
nop
cmp %r10, %r10
movl $0x61626364, (%r12)
nop
nop
add $61862, %rbx
lea addresses_D_ht+0x119a4, %rbx
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
xor $60837, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_RW+0x147b0, %rax
nop
cmp %rbp, %rbp
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
and $60716, %rax

// Store
lea addresses_D+0x23a4, %r10
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0x1501b, %r10
nop
nop
nop
sub $42855, %r9
movw $0x5152, (%r10)
nop
nop
inc %rdx

// Load
lea addresses_RW+0x190e4, %rdx
nop
nop
nop
nop
nop
add $16774, %rax
mov (%rdx), %r10d
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0xc9a4, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rdx)

// Exception!!!
nop
nop
mov (0), %rax
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
mov $0x47ccc900000009ed, %rsi
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
sub $18450, %r10

// Faulty Load
lea addresses_D+0x1a5a4, %rcx
nop
nop
nop
nop
inc %r10
mov (%rcx), %r9d
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'36': 1602}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
