.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11da6, %rsi
lea addresses_normal_ht+0x3426, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x5c26, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
sub $11662, %rcx
lea addresses_normal_ht+0x2326, %rsi
nop
and %rcx, %rcx
mov (%rsi), %rdi
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xeba6, %rbp
nop
nop
nop
cmp $8687, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x1c426, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdi), %esi
nop
nop
add $39205, %rsi
lea addresses_UC_ht+0x3976, %rbp
nop
nop
add %r10, %r10
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
mfence
lea addresses_normal_ht+0xdc26, %r15
nop
xor %rdx, %rdx
mov (%r15), %di
xor %rcx, %rcx
lea addresses_WC_ht+0x9c26, %rsi
lea addresses_D_ht+0x6e46, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $103, %rcx
rep movsb
nop
nop
nop
nop
nop
and $8828, %rbp
lea addresses_A_ht+0xac9a, %rbp
nop
nop
sub $40261, %r10
mov (%rbp), %dx
nop
nop
and $54053, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0xa926, %rax
add %r8, %r8
movb (%rax), %cl
nop
and %r12, %r12

// REPMOV
lea addresses_PSE+0x7026, %rsi
lea addresses_WC+0x18c26, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $71, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0x1cb74, %rcx
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rcx)
nop
xor $43792, %rdi

// Faulty Load
lea addresses_WC+0xec26, %r13
and $51356, %rcx
movntdqa (%r13), %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'44': 432, '33': 12452, '48': 7797, '47': 24, '00': 1124}
33 48 33 33 44 48 33 48 48 33 48 33 33 33 48 33 48 48 33 48 33 33 48 33 48 33 33 48 33 00 33 48 33 48 33 48 48 48 33 33 48 33 33 48 33 33 33 33 48 33 48 33 33 48 33 48 33 33 48 33 33 48 33 33 48 00 33 48 33 48 33 44 33 48 48 48 48 33 33 48 33 33 48 48 33 33 48 33 48 33 33 33 48 48 33 00 33 33 48 33 48 33 33 48 33 48 48 33 48 33 48 33 48 33 48 33 33 48 33 48 33 48 33 48 33 33 33 48 33 48 33 48 33 48 33 48 33 48 33 33 48 33 48 33 48 00 00 48 48 00 33 48 48 33 33 48 33 48 33 48 33 48 33 48 33 48 33 33 48 33 48 33 48 33 48 33 48 33 33 33 48 33 48 33 48 48 48 33 33 33 33 48 33 48 33 48 00 33 48 33 48 33 33 33 33 48 33 33 48 44 48 33 48 33 33 48 33 33 48 33 33 48 00 00 48 00 48 48 33 33 48 33 33 48 33 33 48 33 33 33 48 33 48 33 33 48 33 48 33 48 33 33 33 48 48 33 33 48 33 48 00 33 48 48 33 48 44 33 33 48 33 33 33 33 33 48 33 48 33 48 33 33 33 33 48 33 48 33 33 33 33 33 33 33 33 48 33 48 33 48 33 33 33 48 48 33 48 33 33 33 48 33 33 33 48 33 48 48 33 48 33 33 33 33 33 48 33 48 48 33 33 48 33 48 33 48 33 48 33 48 33 33 33 33 33 33 48 33 48 48 33 33 33 33 00 33 48 33 48 33 33 48 33 33 33 44 48 33 48 33 48 33 48 48 33 48 33 48 48 33 33 48 33 48 48 33 48 33 33 48 33 33 33 33 33 48 33 33 33 33 33 33 48 33 48 33 48 33 48 33 48 00 33 48 33 33 48 48 33 33 48 33 48 33 48 33 48 33 48 33 48 33 48 33 33 33 48 33 48 48 33 48 33 33 48 33 33 48 33 48 48 33 33 48 33 48 33 48 33 33 48 33 48 00 33 48 00 33 48 33 48 48 33 48 48 33 33 33 33 48 33 48 33 33 33 48 33 33 00 48 33 48 33 48 48 33 48 33 48 33 33 33 33 33 48 33 48 33 48 33 48 33 33 48 33 48 33 48 33 00 44 33 33 48 33 48 33 33 48 33 48 44 33 33 48 33 33 48 33 33 33 33 33 48 33 48 48 33 48 33 48 44 48 48 33 33 48 33 33 48 33 33 33 48 33 33 48 33 48 33 48 48 48 48 48 00 00 48 33 00 33 48 33 48 48 33 33 48 33 48 33 48 00 33 48 33 48 33 33 48 33 33 33 48 44 33 33 48 33 48 33 33 48 48 33 48 48 33 33 48 33 33 33 33 48 33 33 48 33 48 33 44 33 48 33 48 33 33 33 48 33 48 44 33 48 48 33 33 33 48 33 48 33 33 48 33 48 33 48 00 00 33 33 33 33 33 48 33 48 33 33 48 33 33 48 33 48 33 33 33 33 48 33 48 33 48 33 33 33 48 33 48 33 33 48 33 48 33 48 33 48 33 33 33 48 33 48 33 33 33 33 33 00 33 33 48 33 48 48 33 48 33 48 33 48 33 48 33 48 33 33 33 33 48 33 33 33 33 33 44 33 00 48 33 33 48 33 33 48 48 33 33 48 33 48 33 48 33 33 48 33 33 48 33 48 33 33 48 33 33 33 48 48 33 48 33 48 33 48 33 33 48 00 48 33 48 00 33 33 48 48 33 48 33 48 33 48 33 48 33 48 00 48 33 48 33 48 33 33 33 48 33 33 48 33 33 33 48 33 33 48 00 48 33 48 33 33 48 33 48 33 33 33 48 33 48 33 48 33 48 33 48 33 48 48 33 48 33 33 48 33 33 33 33 33 33 33 48 00 33 48 00 00 33 48 33 48 33 33 33 48 33 48 33 44 33 48 48 33 48 33 48 48 33 48 33 48 33 33 48 33 48 48 48 48 48 33 48 00 33 33 48 33 33 33 48 33 33 48 33 48 33 33 33 33 33 33 48 33 33 48 33 33 33 33 48 33 48 33 48 33 33 33 48 33 48 33 33 48 33 48 33 33 33 33 33 48 33 48 48 48 33 48 33 48 48 33 33 48 48 48 33 48 33 48 33 48 33 33 48 33 48 33 33 33 44 33 48 33 48 33 48 33 33 33 33 48 33 48 33 48 33 48 33 48 48 33 33 33 33
*/
