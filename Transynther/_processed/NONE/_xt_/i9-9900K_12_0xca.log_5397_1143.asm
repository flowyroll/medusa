.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7d1f, %r8
xor %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r8)
nop
sub %rax, %rax
lea addresses_D_ht+0xe61f, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add $42923, %rsi
mov (%rbx), %rcx
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xe11f, %rax
nop
nop
nop
sub $2859, %r8
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xa61f, %rbx
nop
nop
nop
sub %rdi, %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
cmp $19935, %rbx
lea addresses_A_ht+0x18732, %rsi
lea addresses_D_ht+0x9dab, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $58, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1e57f, %rsi
nop
nop
nop
nop
inc %r8
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1d161, %r14
cmp $54826, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r14)
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x1991f, %rbx
clflush (%rbx)
nop
dec %r8
mov (%rbx), %si
nop
nop
nop
nop
nop
and $49076, %rcx
lea addresses_A_ht+0x5d1f, %r8
nop
nop
nop
cmp %r14, %r14
mov (%r8), %cx
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x1eb9f, %rsi
lea addresses_UC+0x901f, %rdi
xor %rbp, %rbp
mov $5, %rcx
rep movsq
cmp %rdx, %rdx

// Faulty Load
lea addresses_D+0x1f51f, %rcx
nop
nop
add %rbp, %rbp
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'36': 5397}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
