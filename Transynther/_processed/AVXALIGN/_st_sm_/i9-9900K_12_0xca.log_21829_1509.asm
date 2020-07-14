.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x80b0, %r9
nop
nop
nop
dec %rsi
mov (%r9), %r10
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x1ef37, %rsi
nop
nop
nop
xor %r9, %r9
mov (%rsi), %rbp
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1877, %r13
nop
nop
nop
nop
and %r15, %r15
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
sub $57741, %r13
lea addresses_A_ht+0xf4d7, %rsi
lea addresses_D_ht+0xe37, %rdi
nop
nop
nop
cmp $46794, %r13
mov $71, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_D_ht+0x7d37, %r13
nop
xor $48478, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
sub $40484, %r13
lea addresses_WC_ht+0x9e87, %rsi
nop
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
dec %r10
lea addresses_A_ht+0x1817, %rsi
lea addresses_A_ht+0x18475, %rdi
nop
nop
xor $12270, %r10
mov $87, %rcx
rep movsl
nop
sub %r9, %r9
lea addresses_A_ht+0x15037, %rsi
lea addresses_D_ht+0xfad7, %rdi
and $14738, %r9
mov $32, %rcx
rep movsl
nop
nop
sub $41134, %r9
lea addresses_WC_ht+0x1837, %rsi
lea addresses_A_ht+0x17987, %rdi
clflush (%rdi)
nop
nop
sub %r9, %r9
mov $102, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x19837, %r15
nop
nop
sub %rdi, %rdi
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
cmp $38963, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xe547, %rdx
nop
nop
sub %rax, %rax
movb $0x51, (%rdx)
nop
nop
and $38669, %r9

// Store
lea addresses_normal+0x637d, %r12
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r12)
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x10f37, %r12
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%r12)
cmp %rax, %rax

// Store
lea addresses_WT+0x10037, %r12
cmp %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x31f2160000000837, %rax
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
inc %r9

// Store
mov $0xbf7, %rdi
nop
inc %r9
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
xor $62896, %rdx

// Store
lea addresses_normal+0xb177, %r12
nop
cmp %rbx, %rbx
movw $0x5152, (%r12)
and %r9, %r9

// Load
lea addresses_A+0x1f3b7, %rdi
nop
nop
nop
and $6325, %rbp
mov (%rdi), %ebx
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_WT+0x10037, %rdx
dec %rbx
mov (%rdx), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
