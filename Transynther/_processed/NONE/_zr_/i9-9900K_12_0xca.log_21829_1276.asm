.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1250f, %rax
nop
nop
nop
nop
nop
sub $15132, %rbx
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x150f, %rsi
lea addresses_normal_ht+0x44b6, %rdi
nop
and $35914, %rbp
mov $88, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x4e8f, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x10c47, %rbx
nop
cmp $54924, %rbp
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
xor $49554, %r15
lea addresses_WT_ht+0xd50f, %rbp
nop
nop
lfence
mov (%rbp), %ecx
dec %rbx
lea addresses_normal_ht+0x5b0f, %rdi
nop
dec %rcx
movb (%rdi), %dl
nop
nop
nop
nop
nop
add $60844, %rbx
lea addresses_WT_ht+0x1b05b, %rsi
lea addresses_WC_ht+0x1bd0f, %rdi
xor %rbx, %rbx
mov $110, %rcx
rep movsl
nop
nop
xor $42549, %rcx
lea addresses_D_ht+0x11747, %rdx
nop
nop
nop
sub $7561, %rbp
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x1d1a2, %rsi
nop
nop
nop
inc %rdx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm2
vpextrq $0, %xmm2, %rdi
and %rbp, %rbp
lea addresses_WT_ht+0x12f0f, %r15
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xf047, %rsi
lea addresses_UC_ht+0x8397, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1c7eb, %rbx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rbx), %rsi
add %rbx, %rbx
lea addresses_WC_ht+0x1384f, %rcx
nop
nop
nop
sub $37309, %rdx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x1bd0f, %rdi
nop
and %rbx, %rbx
mov (%rdi), %rcx
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x230f, %rsi
nop
nop
nop
nop
nop
add $35692, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %rsi
movaps %xmm7, (%rsi)
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rdi

// Faulty Load
lea addresses_A+0x1cd0f, %r15
nop
sub $30806, %rbx
mov (%r15), %di
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
