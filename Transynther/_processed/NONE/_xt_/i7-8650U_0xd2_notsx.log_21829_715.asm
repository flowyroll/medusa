.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e431, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
dec %rbp
mov (%rbx), %r13
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x18e5a, %r8
nop
nop
nop
mfence
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
sub $53566, %r9
lea addresses_WT_ht+0x262a, %rdx
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdx
vmovaps %ymm3, (%rdx)
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x1089a, %r13
clflush (%r13)
sub $20097, %r8
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x40fa, %rsi
lea addresses_WT_ht+0x136aa, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $33, %rcx
rep movsl
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x7afa, %rsi
lea addresses_A_ht+0x155fa, %rdi
nop
nop
nop
nop
nop
cmp $50590, %rax
mov $2, %rcx
rep movsl
nop
nop
nop
xor $27953, %rbx
lea addresses_normal_ht+0x1a43e, %rdx
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rdx)
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x369a, %r8
nop
nop
nop
nop
xor $10028, %r13
movb $0x61, (%r8)
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rdi
push %rdx

// Faulty Load
lea addresses_D+0xd5fa, %rax
nop
nop
nop
xor $19591, %rdi
mov (%rax), %edx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
