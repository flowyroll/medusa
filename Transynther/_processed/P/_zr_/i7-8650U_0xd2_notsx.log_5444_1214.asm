.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cd89, %rsi
lea addresses_normal_ht+0x1ae89, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $69, %rcx
rep movsb
nop
xor $14641, %rdx
lea addresses_normal_ht+0x19d89, %r15
nop
sub %rbp, %rbp
movb $0x61, (%r15)
inc %rdx
lea addresses_WT_ht+0x16d89, %rsi
lea addresses_A_ht+0x16f49, %rdi
clflush (%rsi)
nop
nop
add %r9, %r9
mov $33, %rcx
rep movsl
nop
nop
nop
nop
xor $55449, %rsi
lea addresses_WT_ht+0xf5b9, %rcx
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
cmp %rbp, %rbp
lea addresses_A_ht+0xa089, %rcx
nop
nop
nop
cmp $55068, %rdi
movw $0x6162, (%rcx)
nop
nop
xor $39711, %rcx
lea addresses_WC_ht+0x1dd89, %rsi
lea addresses_UC_ht+0x2105, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $103, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x18f29, %rdi
nop
nop
nop
xor %rdx, %rdx
mov (%rdi), %r9
nop
sub %r15, %r15
lea addresses_A_ht+0x16631, %rsi
lea addresses_normal_ht+0x13189, %rdi
nop
xor %r9, %r9
mov $56, %rcx
rep movsw
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1dd89, %rdx
nop
nop
nop
nop
nop
sub $4728, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
and $40787, %rsi
lea addresses_WC_ht+0x1e83d, %rbp
nop
nop
and $30688, %rsi
mov (%rbp), %r9w
nop
add $26759, %rdi
lea addresses_WC_ht+0x11089, %rsi
lea addresses_WC_ht+0xaf49, %rdi
nop
add $57095, %rdx
mov $27, %rcx
rep movsw
and %r9, %r9
lea addresses_UC_ht+0x14229, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $58540, %rcx
mov (%r9), %si
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x12c19, %rcx
nop
and $24829, %rbp
movb (%rcx), %r10b
add %r15, %r15
lea addresses_D_ht+0x15489, %rsi
lea addresses_A_ht+0xed89, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $116, %rcx
rep movsq
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x14c89, %rax
nop
nop
nop
xor $38702, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
nop
sub $27777, %rcx

// Store
lea addresses_WC+0x1c189, %rbx
nop
nop
nop
nop
xor $38991, %rdi
movb $0x51, (%rbx)
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0xdb4, %rdi
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x14ffc, %rcx
nop
nop
nop
and $2879, %r9
movb $0x51, (%rcx)
nop
nop
nop
nop
cmp $6911, %rcx

// Store
lea addresses_normal+0x1eb89, %rsi
clflush (%rsi)
nop
nop
nop
and $15807, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x1de19, %rdi
nop
and %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x12129, %rsi
nop
add %r8, %r8
movw $0x5152, (%rsi)
and $55460, %r8

// Faulty Load
mov $0xd89, %r8
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r8), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'00': 5444}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
