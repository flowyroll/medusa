.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a2fd, %r10
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r10)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x14c45, %rsi
lea addresses_normal_ht+0xfd45, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $18, %rcx
rep movsq
nop
nop
sub $14040, %rax
lea addresses_A_ht+0x15d97, %rsi
lea addresses_UC_ht+0xcf45, %rdi
and %r15, %r15
mov $82, %rcx
rep movsw
nop
nop
cmp $35388, %rcx
lea addresses_WT_ht+0x11745, %rdi
nop
nop
nop
and $6565, %r15
mov (%rdi), %esi
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x13e25, %rsi
lea addresses_UC_ht+0x11dc5, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r12, %r12
mov $101, %rcx
rep movsq
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x120c5, %r8
nop
nop
nop
nop
nop
xor $13832, %r15
movl $0x61626364, (%r8)
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x16345, %rsi
lea addresses_WT+0x11345, %rdi
xor %rbx, %rbx
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbp

// Load
lea addresses_US+0x1d745, %rdi
clflush (%rdi)
nop
and $24886, %rdx
mov (%rdi), %bp
nop
nop
and $13984, %rsi

// Load
lea addresses_A+0xca45, %rcx
cmp $48289, %rdi
mov (%rcx), %edx
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0xf737, %r12
clflush (%r12)
nop
nop
nop
add $23037, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x14e65, %rbx
add %rbp, %rbp
movl $0x51525354, (%rbx)
xor %rsi, %rsi

// Faulty Load
lea addresses_RW+0x9345, %rbp
dec %rcx
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
{'32': 31}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
