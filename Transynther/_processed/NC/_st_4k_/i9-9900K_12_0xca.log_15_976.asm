.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19b9f, %r8
nop
nop
nop
and $18530, %rbx
mov (%r8), %rdi
nop
nop
nop
nop
nop
add $54720, %rbp
lea addresses_D_ht+0x1a79f, %r10
and $53233, %r13
mov (%r10), %r8
nop
nop
nop
nop
xor $8597, %r10
lea addresses_WC_ht+0x1cf9f, %rbx
cmp %rax, %rax
mov (%rbx), %r10d
nop
cmp $54036, %rbx
lea addresses_normal_ht+0x7a9d, %rsi
lea addresses_WT_ht+0xae9f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $48027, %rbp
mov $22, %rcx
rep movsl
cmp $40896, %r8
lea addresses_UC_ht+0x16a8f, %rdi
nop
xor $57374, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
inc %rax
lea addresses_WT_ht+0xbe9f, %r8
nop
nop
nop
nop
nop
cmp %r10, %r10
movl $0x61626364, (%r8)
nop
nop
nop
nop
cmp $21517, %rcx
lea addresses_WT_ht+0x1997f, %rsi
lea addresses_normal_ht+0xcdf, %rdi
and %r10, %r10
mov $79, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_D_ht+0x1ae3f, %rax
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rax)
xor $48142, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Load
mov $0x2ebed5000000099f, %rcx
nop
cmp %r15, %r15
mov (%rcx), %r14w
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x1fd9f, %r8
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor $22988, %rbx

// Store
lea addresses_A+0x1e8c5, %r15
inc %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x1f99f, %r15
nop
nop
nop
xor $7842, %r14
movl $0x51525354, (%r15)
and $42773, %r15

// Store
lea addresses_normal+0x8ae8, %rbx
clflush (%rbx)
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x86d7, %rax
nop
nop
cmp $12419, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
dec %rax

// Faulty Load
mov $0x2ebed5000000099f, %rcx
nop
sub %r10, %r10
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'54': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
