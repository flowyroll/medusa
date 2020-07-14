.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15ea, %r12
nop
inc %r14
movl $0x61626364, (%r12)
nop
and $32362, %rsi
lea addresses_normal_ht+0xe586, %r10
nop
nop
nop
xor %rsi, %rsi
movb (%r10), %r15b
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x11afe, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x13de, %rsi
lea addresses_WT_ht+0x651e, %rdi
nop
nop
nop
inc %r14
mov $100, %rcx
rep movsb
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x4026, %rsi
lea addresses_D_ht+0x1d63e, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $3935, %r15
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xafde, %rsi
nop
nop
nop
add %r14, %r14
movb (%rsi), %r15b
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x67de, %rdi
nop
nop
and %r10, %r10
movb (%rdi), %r14b
nop
nop
nop
nop
nop
sub $45734, %rsi
lea addresses_D_ht+0x159ba, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rcx)
nop
dec %r8
lea addresses_WT_ht+0xcf40, %rsi
lea addresses_WC_ht+0x29de, %rdi
nop
nop
nop
dec %r15
mov $13, %rcx
rep movsb
nop
nop
inc %r8
lea addresses_A_ht+0xddde, %rdi
sub $7367, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add $19346, %r14
lea addresses_normal_ht+0x1ade, %rsi
lea addresses_UC_ht+0xae86, %rdi
cmp %rbx, %rbx
mov $97, %rcx
rep movsw
nop
nop
nop
nop
sub $47879, %rsi
lea addresses_WT_ht+0x2bde, %rcx
nop
nop
inc %r14
mov (%rcx), %rbx
nop
nop
and $9242, %r12
lea addresses_D_ht+0x178de, %r10
nop
nop
nop
nop
nop
cmp $37657, %r15
mov (%r10), %r8
nop
nop
nop
nop
sub $24980, %rcx
lea addresses_A_ht+0xa7de, %rsi
lea addresses_normal_ht+0x147de, %rdi
nop
nop
nop
nop
nop
cmp $23339, %r14
mov $51, %rcx
rep movsl
dec %rbx
lea addresses_A_ht+0xef16, %rsi
lea addresses_UC_ht+0xb3de, %rdi
add %rbx, %rbx
mov $41, %rcx
rep movsl
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rdi
push %rdx

// Load
lea addresses_D+0x1e85e, %rdi
nop
nop
xor %rax, %rax
mov (%rdi), %r10d
nop
nop
nop
nop
xor %rdx, %rdx

// Store
mov $0x49e, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r12)
nop
nop
dec %rdi

// Store
lea addresses_PSE+0x133de, %rdi
nop
nop
nop
nop
and $59848, %r8
movb $0x51, (%rdi)
nop
nop
add $12450, %r10

// Store
lea addresses_US+0x1c81e, %r12
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
and $58656, %rdi

// Load
lea addresses_PSE+0x15dde, %r15
nop
nop
cmp %r8, %r8
mov (%r15), %r12d
nop
nop
nop
inc %rdx

// Store
lea addresses_WT+0x83de, %rax
nop
nop
nop
cmp $39307, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
cmp $56689, %r8

// Store
lea addresses_WC+0x11a8e, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_WT+0x143de, %rdx
nop
nop
and $48128, %r8
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'58': 35}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
