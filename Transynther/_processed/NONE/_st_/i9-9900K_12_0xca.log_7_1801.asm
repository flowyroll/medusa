.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x185f2, %r13
nop
nop
nop
nop
add %rax, %rax
mov (%r13), %r15d
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xc5a, %rcx
nop
nop
nop
nop
nop
dec %r12
movb (%rcx), %r14b
xor $61503, %r12
lea addresses_normal_ht+0xc85a, %r12
nop
nop
nop
nop
nop
and $1818, %r15
movb (%r12), %r13b
nop
nop
nop
xor $22607, %r13
lea addresses_UC_ht+0x445a, %rax
nop
dec %r14
movl $0x61626364, (%rax)
and %r15, %r15
lea addresses_A_ht+0x5b5a, %rcx
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0xb05a, %rdi
nop
nop
nop
and %rax, %rax
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor $24935, %r14
lea addresses_D_ht+0x8b7a, %rsi
lea addresses_WT_ht+0x1925a, %rdi
nop
nop
nop
nop
nop
xor $220, %rax
mov $76, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x685a, %rdi
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xf10a, %rsi
mov $0xc5a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $28577, %rdx
mov $40, %rcx
rep movsw
nop
nop
inc %rdx

// Faulty Load
lea addresses_A+0x16c5a, %r8
nop
nop
cmp %r12, %r12
mov (%r8), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_RW', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_P', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'32': 7}
32 32 32 32 32 32 32
*/
