.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a4c3, %rsi
lea addresses_UC_ht+0x1b9ff, %rdi
nop
nop
nop
add %r13, %r13
mov $61, %rcx
rep movsb
nop
nop
and %r13, %r13
lea addresses_WC_ht+0xe63, %rsi
lea addresses_UC_ht+0x19663, %rdi
clflush (%rsi)
nop
nop
nop
add %r8, %r8
mov $4, %rcx
rep movsq
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x3beb, %rdi
add $27284, %rcx
mov (%rdi), %esi
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1a2e3, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%r8)
nop
nop
nop
nop
and $7591, %r13
lea addresses_WC_ht+0x19625, %r8
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
cmp $7615, %rcx
lea addresses_normal_ht+0x7e63, %rsi
nop
nop
nop
sub $26928, %r9
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rax
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rdx

// Faulty Load
lea addresses_RW+0xca63, %rdx
nop
nop
nop
nop
nop
add %r15, %r15
movaps (%rdx), %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 68, '35': 1, '30': 2, '45': 9925, '62': 6, '00': 11807, '48': 19, 'a9': 1}
45 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 45 45 00 00 45 00 45 00 00 00 45 00 00 00 45 45 45 00 00 45 00 00 45 00 00 44 45 45 45 00 00 45 00 00 45 00 00 45 00 00 45 00 45 00 00 45 45 45 45 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 45 45 45 45 45 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 45 45 00 00 45 00 45 00 00 00 45 00 00 45 00 00 00 45 00 45 45 45 00 00 45 00 00 45 00 00 45 00 00 45 00 45 00 00 45 45 45 45 45 00 00 45 00 45 45 00 00 00 45 45 45 45 45 00 45 00 45 00 45 00 00 45 45 45 45 00 00 00 45 00 00 00 45 00 00 00 45 45 45 45 00 00 45 00 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 45 45 45 00 00 45 00 45 00 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 00 00 45 00 45 45 45 00 45 45 45 00 45 00 00 45 00 00 45 00 45 45 45 45 45 00 00 45 00 45 00 45 00 00 45 00 45 00 45 00 00 45 00 00 45 45 00 45 00 00 45 00 45 45 00 00 45 45 00 45 00 00 45 00 00 45 00 00 00 45 00 45 00 45 45 00 00 45 45 00 45 00 00 45 00 00 00 45 45 45 00 00 45 00 45 00 45 00 45 45 00 45 00 00 00 00 45 00 45 45 00 00 45 00 00 00 45 00 45 00 00 45 00 45 45 45 00 00 00 45 00 45 00 45 00 00 45 00 00 45 00 00 45 00 00 44 45 00 45 00 00 45 00 45 45 45 00 00 45 00 00 45 45 00 45 00 00 45 00 00 45 00 00 00 45 45 45 00 00 45 00 45 00 00 00 45 00 00 00 45 45 00 45 00 45 45 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 00 00 00 45 00 45 00 45 00 00 45 00 00 45 45 45 45 00 00 45 00 00 45 00 45 00 45 00 00 45 00 00 44 45 45 45 45 45 45 00 00 45 00 00 45 00 45 00 00 45 45 45 45 45 00 00 45 00 00 45 00 00 45 45 00 00 45 00 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 45 00 45 00 45 00 00 00 00 00 45 45 00 00 00 45 00 45 00 45 45 00 45 00 00 45 00 45 00 00 45 45 45 00 45 00 00 45 00 00 45 00 00 45 00 00 45 45 45 00 00 00 45 45 00 45 00 45 00 45 00 00 45 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 45 00 00 45 00 00 00 45 00 45 00 00 45 00 45 00 45 00 45 00 45 00 00 45 00 00 00 45 00 00 00 00 45 00 45 00 45 45 00 45 00 00 45 00 00 45 45 45 45 00 00 45 00 45 00 00 00 45 00 45 00 00 45 45 45 45 45 00 00 45 00 00 45 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 00 45 00 00 45 00 00 45 45 45 45 00 45 45 45 00 00 00 45 00 45 00 00 45 45 00 00 45 00 00 45 00 00 45 00 45 45 45 45 45 00 00 45 00 00 45 45 45 45 45 45 45 00 00 45 48 45 45 45 00 00 45 00 00 45 45 45 45 00 45 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 45 00 00 00 00 00 45 45 45 00 00 45 48 45 45 45 00 00 45 00 00 00 00 45 48 45 45 00 00 00 45 45 00 45 00 00 45 00 00 00 45 45 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 00 00 45 00 45 45 45 00 00 45 00 00 45 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 45 00 00 45 00 00 00 45 00 00 45 45 45 45 00 00 00 45 00 00 45 00 00 45 45 45 00 00 45 00 45 45 00 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 00 00 45 45 45 45 45 45 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 45 45 45 45 00 00 45 00 00
*/
