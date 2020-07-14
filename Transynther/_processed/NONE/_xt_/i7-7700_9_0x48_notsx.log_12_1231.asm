.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3fef, %rsi
lea addresses_A_ht+0xd955, %rdi
nop
nop
add %rax, %rax
mov $33, %rcx
rep movsb
nop
cmp $57202, %r12
lea addresses_normal_ht+0x4bef, %rax
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %rax
movaps %xmm7, (%rax)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x6e2f, %rbp
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbp)
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1cfef, %r9
nop
sub %rcx, %rcx
mov (%r9), %rdi
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x63ef, %rcx
nop
nop
nop
xor $31052, %r12
mov (%rcx), %di
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x1155f, %r14
cmp $25661, %rbp
movw $0x5152, (%r14)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_US+0xf32f, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $42551, %rdi
mov (%rbp), %r14
nop
and $15113, %rdx

// Store
lea addresses_normal+0x196ef, %rdi
nop
nop
nop
add $14152, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
add $36479, %r14

// Load
lea addresses_WT+0x67f3, %rcx
nop
nop
nop
nop
nop
cmp $56309, %r13
movb (%rcx), %r12b
nop
and %rcx, %rcx

// Store
lea addresses_A+0x69ef, %rcx
nop
nop
nop
dec %rdi
movw $0x5152, (%rcx)
nop
nop
nop
add $24095, %rdx

// Load
lea addresses_D+0x1efdf, %rdi
nop
nop
dec %r12
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_D+0x1e7ef, %rbp
nop
nop
nop
inc %r14
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
