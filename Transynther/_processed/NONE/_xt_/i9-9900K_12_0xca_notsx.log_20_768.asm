.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13ff6, %r15
clflush (%r15)
nop
nop
and %rbx, %rbx
movb (%r15), %r8b
nop
nop
nop
nop
nop
cmp $29162, %rbx
lea addresses_UC_ht+0x3d26, %rsi
lea addresses_WT_ht+0x7bac, %rdi
clflush (%rsi)
clflush (%rdi)
and %rbx, %rbx
mov $47, %rcx
rep movsl
inc %rdi
lea addresses_normal_ht+0x1d06, %rsi
lea addresses_D_ht+0x13006, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r10
mov $74, %rcx
rep movsl
cmp $2970, %r10
lea addresses_normal_ht+0x9806, %rsi
lea addresses_normal_ht+0x9abe, %rdi
nop
cmp $32076, %rbx
mov $70, %rcx
rep movsb
nop
nop
mfence
lea addresses_UC_ht+0x1c862, %rsi
nop
sub %rcx, %rcx
movb (%rsi), %r15b
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x160e6, %r8
nop
nop
nop
sub $2980, %rcx
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
add $41629, %rcx
lea addresses_WC_ht+0x1b806, %rsi
lea addresses_normal_ht+0x2006, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $50, %rcx
rep movsb
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xbe3e, %rsi
nop
nop
nop
nop
dec %rdi
mov (%rsi), %r15d
nop
cmp $19022, %rsi
lea addresses_normal_ht+0xf57a, %rdi
nop
nop
nop
cmp $25611, %rbp
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xe6b2, %rbp
nop
nop
nop
nop
nop
and $23871, %r8
movw $0x6162, (%rbp)
inc %r15
lea addresses_UC_ht+0xec06, %rsi
lea addresses_UC_ht+0xf8c6, %rdi
nop
nop
nop
nop
add $41767, %rbx
mov $27, %rcx
rep movsb
nop
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x625d, %rcx
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movntdq %xmm5, (%rcx)
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x5286, %rcx
nop
nop
nop
and %r9, %r9
movw $0x5152, (%rcx)
nop
nop
nop
dec %rbp

// Store
mov $0x59bf620000000e06, %rdx
add $24209, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
and $19588, %rax

// Faulty Load
lea addresses_WT+0x2806, %r9
nop
nop
nop
nop
add %rax, %rax
mov (%r9), %ebx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'39': 20}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
