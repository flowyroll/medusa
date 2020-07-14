.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15562, %rsi
lea addresses_UC_ht+0x1eca2, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $126, %rcx
rep movsb
add %rdx, %rdx
lea addresses_UC_ht+0x558a, %r14
nop
and $11443, %rax
movb $0x61, (%r14)
nop
nop
nop
nop
and $60955, %rdx
lea addresses_UC_ht+0x13922, %rax
nop
inc %rsi
movw $0x6162, (%rax)
nop
nop
nop
and $32582, %rax
lea addresses_normal_ht+0x15b18, %rax
nop
nop
nop
nop
inc %rcx
movb (%rax), %dl
nop
add $33525, %rax
lea addresses_WT_ht+0x1ef62, %rsi
lea addresses_WT_ht+0x1428a, %rdi
nop
and %rdx, %rdx
mov $120, %rcx
rep movsw
nop
sub $63843, %rcx
lea addresses_normal_ht+0x194aa, %r14
nop
nop
add $35108, %rsi
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rdi
cmp %rbx, %rbx
lea addresses_WC_ht+0xb58c, %rsi
clflush (%rsi)
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
sub $56303, %rcx
lea addresses_WT_ht+0x16162, %rbx
clflush (%rbx)
nop
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x13362, %rbx
clflush (%rbx)
nop
and $52385, %rdi
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rdx
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x662, %rdi
cmp %rax, %rax
movw $0x6162, (%rdi)
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x1a192, %rdi
nop
nop
nop
nop
cmp $4802, %rsi
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0xff62, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x158d2, %r14
nop
cmp $16541, %rdx
mov (%r14), %rdi
xor %rsi, %rsi
lea addresses_UC_ht+0x13922, %rcx
nop
nop
inc %rsi
mov (%rcx), %di
xor $37743, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0xb82, %rdi
nop
nop
cmp $37035, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0xd6a2, %rcx
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)

// Exception!!!
nop
nop
mov (0), %r10
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0xa762, %r10
nop
and %rbp, %rbp
movw $0x5152, (%r10)
nop
add %rbp, %rbp

// Store
mov $0x162, %rbp
nop
and $32267, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
and %rcx, %rcx

// Store
mov $0x262, %rcx
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%rcx)
nop
nop
nop
nop
add $18328, %rbx

// Store
lea addresses_normal+0x14d62, %r10
clflush (%r10)
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r10)
cmp $24799, %r9

// Faulty Load
lea addresses_PSE+0x18f62, %rbp
nop
cmp %rsi, %rsi
movb (%rbp), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
