.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf01, %rax
clflush (%rax)
nop
add %r9, %r9
movb $0x61, (%rax)
nop
and $3502, %r14
lea addresses_WT_ht+0x2f47, %rdx
nop
nop
dec %rbp
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x71c7, %rsi
lea addresses_UC_ht+0x1c7, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $16737, %rax
mov $74, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x17cc7, %rbp
nop
nop
nop
nop
xor $35600, %rcx
mov (%rbp), %dx
nop
nop
nop
nop
sub $3457, %r9
lea addresses_WT_ht+0xb707, %rcx
nop
nop
xor %r9, %r9
movb $0x61, (%rcx)
add %rsi, %rsi
lea addresses_WT_ht+0xb9c7, %r13
nop
nop
cmp $36330, %r14
mov (%r13), %esi
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x16dd7, %r13
and %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r13)
nop
nop
inc %r14
lea addresses_D_ht+0x79c7, %rdi
nop
nop
nop
nop
and %r9, %r9
mov (%rdi), %rsi
nop
nop
add $32608, %rsi
lea addresses_normal_ht+0x49c7, %rdi
nop
cmp %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_normal+0x45c7, %r14
nop
nop
nop
sub %rbp, %rbp
movntdqa (%r14), %xmm1
vpextrq $1, %xmm1, %rax
nop
and $5894, %rbp

// Store
lea addresses_D+0x6f2b, %rbx
cmp %r12, %r12
movw $0x5152, (%rbx)
nop
nop
sub $12624, %rbp

// Store
mov $0x1c7, %rax
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
nop
and $55512, %r9

// Store
lea addresses_PSE+0x1d27f, %r12
nop
nop
nop
nop
sub $23138, %rax
movb $0x51, (%r12)
nop
dec %r9

// Load
lea addresses_US+0x108c7, %r12
nop
nop
nop
sub $22165, %rbx
mov (%r12), %rdi
nop
xor $42963, %rbx

// Faulty Load
lea addresses_RW+0xe9c7, %r14
nop
nop
dec %rax
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'32': 6}
32 32 32 32 32 32
*/
