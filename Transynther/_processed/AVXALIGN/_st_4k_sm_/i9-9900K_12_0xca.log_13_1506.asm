.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19209, %r10
xor $42701, %rbx
mov (%r10), %r13d
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1d2e9, %rbx
nop
add %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
inc %r10
lea addresses_D_ht+0x1939, %rsi
nop
add %r14, %r14
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
inc %rbp
lea addresses_D_ht+0x8ed9, %r13
add %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x1ed99, %rbx
nop
nop
nop
nop
inc %r10
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x11339, %rsi
lea addresses_A_ht+0xd139, %rdi
nop
inc %r10
mov $75, %rcx
rep movsl
nop
nop
nop
and $7943, %rcx
lea addresses_UC_ht+0x18959, %rsi
lea addresses_WC_ht+0x13039, %rdi
nop
inc %r13
mov $89, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_D_ht+0x1a339, %rdi
nop
nop
and %r14, %r14
mov (%rdi), %bp
nop
nop
nop
nop
nop
sub $52718, %r14
lea addresses_D_ht+0x2939, %rsi
lea addresses_D_ht+0x1cbf1, %rdi
nop
nop
add %r13, %r13
mov $65, %rcx
rep movsw
nop
nop
nop
nop
xor $43618, %r10
lea addresses_normal_ht+0x16639, %r13
nop
nop
nop
and $61942, %r10
mov (%r13), %ebx
nop
add %rax, %rax
lea addresses_D_ht+0xb139, %rbp
nop
nop
dec %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x21b9, %rax
nop
nop
cmp $26124, %rbp
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x17239, %rdi
lfence
mov (%rdi), %rbp
xor %r13, %r13
lea addresses_WT_ht+0x6139, %rsi
lea addresses_normal_ht+0xdc1, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $54, %rcx
rep movsl
nop
nop
nop
sub $63265, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0x2159, %r12
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r12)
nop
nop
cmp $14247, %rax

// Store
lea addresses_RW+0x4ed4, %r9
nop
nop
dec %rdx
movw $0x5152, (%r9)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x12c01, %rax
nop
nop
nop
and $8423, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_A+0x5939, %rax
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_WT+0x1b139, %r10
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r10)
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x1e939, %r9
nop
nop
nop
and %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0xf4d9, %rax
nop
inc %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
xor %r10, %r10

// Store
mov $0x739, %r10
nop
cmp $33136, %rdx
movl $0x51525354, (%r10)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_PSE+0xe5c9, %r10
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add $19383, %r10

// Faulty Load
lea addresses_A+0x5939, %r10
nop
sub %r13, %r13
movb (%r10), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'51': 13}
51 51 51 51 51 51 51 51 51 51 51 51 51
*/
