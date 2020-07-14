.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xdb7d, %rsi
lea addresses_WC_ht+0x2e6d, %rdi
and $26245, %rbx
mov $104, %rcx
rep movsq
cmp $64144, %rdx
lea addresses_A_ht+0x1b25d, %rsi
lea addresses_WC_ht+0x1e3dd, %rdi
nop
nop
inc %r15
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
add $8645, %rcx
lea addresses_UC_ht+0x975d, %rsi
lea addresses_WC_ht+0x19525, %rdi
clflush (%rsi)
nop
nop
cmp %rax, %rax
mov $64, %rcx
rep movsq
nop
nop
nop
cmp $53263, %rcx
lea addresses_UC_ht+0x1731d, %rbx
nop
nop
nop
nop
nop
inc %rax
mov (%rbx), %esi
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1e89d, %rsi
nop
nop
nop
nop
cmp $20372, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1c9dd, %rbx
nop
nop
add %rax, %rax
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
mfence
lea addresses_WC_ht+0x289d, %rbx
nop
nop
nop
nop
nop
sub $19007, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x3cfd, %r15
clflush (%r15)
nop
sub $63528, %rsi
movw $0x6162, (%r15)
nop
nop
nop
sub $56929, %r15
lea addresses_WC_ht+0x1ef9d, %rsi
lea addresses_WC_ht+0x16e1, %rdi
nop
nop
nop
nop
nop
cmp $13490, %r12
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x14d5, %rsi
lea addresses_A_ht+0x14039, %rdi
nop
nop
sub %r15, %r15
mov $111, %rcx
rep movsq
nop
nop
sub $37996, %rdi
lea addresses_UC_ht+0xaf1d, %r12
nop
and $33917, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x165dd, %rsi
mov $0x6d1afa000000031d, %rdi
and %rax, %rax
mov $32, %rcx
rep movsb
nop
nop
add $56995, %rdi

// Faulty Load
lea addresses_normal+0x13b1d, %rcx
nop
nop
nop
inc %rax
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_NC', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'34': 94}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
