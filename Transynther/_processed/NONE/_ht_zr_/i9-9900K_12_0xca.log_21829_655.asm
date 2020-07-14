.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14592, %r12
dec %r9
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x15b59, %rsi
nop
nop
dec %rbp
movb (%rsi), %cl
xor %rcx, %rcx
lea addresses_WC_ht+0x1bea5, %rsi
lea addresses_A_ht+0xe852, %rdi
nop
nop
nop
add %r9, %r9
mov $34, %rcx
rep movsl
nop
nop
nop
add $474, %r12
lea addresses_WT_ht+0x13f52, %rbp
mfence
mov (%rbp), %r10d
nop
nop
nop
nop
xor $37512, %rbp
lea addresses_D_ht+0x8152, %rsi
lea addresses_D_ht+0x15446, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $80, %rcx
rep movsq
nop
nop
nop
nop
sub $41026, %r12
lea addresses_A_ht+0x11af2, %r8
nop
xor $45351, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x7592, %rdi
nop
nop
nop
nop
xor %r12, %r12
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x1dab2, %rsi
lea addresses_normal_ht+0x6ae2, %rdi
nop
nop
nop
xor $3033, %r12
mov $85, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_A_ht+0xb752, %r10
nop
nop
nop
cmp $2472, %rsi
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r12
cmp $35019, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_WT+0x14352, %r12
nop
xor $55850, %r10
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'46': 174, '44': 91, '45': 231, '00': 8036, '48': 13297}
48 00 48 00 48 00 48 48 48 48 00 00 48 48 48 00 48 00 00 45 48 48 00 48 00 48 48 00 48 48 00 00 48 48 46 48 00 48 00 48 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 00 00 00 00 48 00 48 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 00 00 00 48 48 48 00 00 48 48 46 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 46 48 48 00 48 00 48 48 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 48 48 48 45 48 00 00 00 48 00 48 00 48 48 48 48 00 48 48 48 48 00 48 00 48 48 00 48 00 48 48 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 48 00 48 48 00 00 00 45 48 45 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 00 48 00 48 00 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 00 48 00 00 45 48 46 48 48 48 48 48 48 00 00 48 00 48 00 48 48 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 45 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 45 48 00 00 48 48 48 00 48 00 00 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 48 00 00 00 48 48 48 00 48 48 00 48 48 00 45 48 48 48 00 00 48 48 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 00 00 00 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 46 48 48 48 00 48 48 45 00 00 00 00 00 00 48 48 45 00 00 48 00 48 48 00 00 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 00 00 00 48 48 48 48 48 48 45 48 00 00 48 00 45 00 00 00 00 00 00 00 48 00 48 48 00 48 48 48 48 00 00 00 48 48 00 00 48 48 48 00 00 00 48 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 00 48 00 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 48 45 00 00 48 00 48 48 48 48 00 48 48 00 48 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 00 00 48 00 48 00 48 48 00 48 48 48 46 48 48 00 48 48 48 48 48
*/
