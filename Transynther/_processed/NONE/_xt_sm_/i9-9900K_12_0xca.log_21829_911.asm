.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c579, %r10
clflush (%r10)
nop
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
sub $502, %rax
lea addresses_A_ht+0x15e29, %r13
nop
cmp $6153, %rdx
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x19a29, %rdx
nop
nop
nop
nop
cmp %r15, %r15
movb $0x61, (%rdx)
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x45d1, %rdx
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
cmp $32726, %r13
lea addresses_D_ht+0x17709, %r10
and $64462, %rbx
movw $0x6162, (%r10)
nop
nop
inc %rbp
lea addresses_UC_ht+0x12a29, %rbx
nop
nop
nop
nop
nop
sub $19545, %r13
mov (%rbx), %bp
nop
nop
nop
nop
nop
and $1691, %rax
lea addresses_D_ht+0x6b29, %rsi
lea addresses_WT_ht+0x3e29, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $72, %rcx
rep movsw
nop
nop
nop
sub $12620, %rdx
lea addresses_UC_ht+0x1649, %rsi
lea addresses_D_ht+0x184e9, %rdi
clflush (%rdi)
nop
nop
nop
xor %r13, %r13
mov $69, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_WC_ht+0x10829, %rsi
lea addresses_normal_ht+0x5529, %rdi
nop
nop
and %r10, %r10
mov $70, %rcx
rep movsw
dec %r15
lea addresses_D_ht+0x15a29, %rbp
clflush (%rbp)
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x80d9, %rdx
nop
nop
cmp $40828, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x14049, %rdi
nop
nop
xor $50486, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x4729, %r10
nop
and $55968, %rax
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0xa229, %r10
nop
nop
nop
nop
nop
xor $2355, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $46687, %rax

// Store
lea addresses_A+0x104a9, %r10
nop
add $7039, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_WC+0xa229, %rdi
nop
nop
xor $52606, %rbx
mov (%rdi), %ax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
