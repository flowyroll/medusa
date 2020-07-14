.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b7b2, %rsi
lea addresses_A_ht+0x1c382, %rdi
nop
nop
nop
nop
and $22030, %r9
mov $51, %rcx
rep movsb
sub $62154, %r9
lea addresses_A_ht+0x101e2, %r9
xor $39932, %rdx
movb (%r9), %r13b
nop
nop
nop
cmp $12312, %rsi
lea addresses_A_ht+0x16182, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rsi
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x1d382, %rsi
lea addresses_D+0x1f9e4, %rdi
nop
nop
nop
nop
nop
sub $45197, %rbp
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0xa686, %r12
nop
nop
nop
add $27763, %rdx
movb $0x51, (%r12)
xor $5741, %rsi

// Faulty Load
lea addresses_D+0x19382, %rdi
nop
nop
nop
xor $42217, %rdx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'36': 4}
36 36 36 36
*/
