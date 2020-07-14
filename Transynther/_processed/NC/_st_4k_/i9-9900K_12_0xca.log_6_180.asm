.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_D_ht+0x1d54a, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r9)
nop
nop
and $39550, %r8
lea addresses_UC_ht+0x4907, %rax
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x16107, %rcx
nop
nop
nop
nop
nop
and %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
and $29230, %r9
lea addresses_D_ht+0x1453f, %r8
nop
nop
nop
nop
nop
dec %rdi
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
and $46813, %r8
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rdx

// Load
lea addresses_WT+0x5e1b, %rdi
nop
nop
nop
sub $3344, %rax
mov (%rdi), %r13d
sub $26917, %r12

// Store
lea addresses_RW+0x707, %r14
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%r14)
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x1907, %rdx
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovntdq %ymm2, (%rdx)
dec %rax

// Store
lea addresses_WC+0x1a907, %r12
clflush (%r12)
nop
nop
nop
add $17546, %rax
movl $0x51525354, (%r12)
add %r12, %r12

// Store
lea addresses_normal+0x7107, %rdx
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
sub $22984, %rdx

// Store
lea addresses_WC+0x1d107, %rax
inc %r14
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
add $53934, %rbp

// Store
lea addresses_D+0x17107, %rdi
nop
nop
and $44725, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rdi)
nop
nop
add %r12, %r12

// Faulty Load
mov $0xb203f0000000907, %rdi
nop
nop
nop
dec %r12
mov (%rdi), %bp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'54': 6}
54 54 54 54 54 54
*/
