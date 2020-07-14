.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10dca, %rbx
nop
nop
inc %r12
mov (%rbx), %cx
nop
nop
nop
xor $8639, %r10
lea addresses_A_ht+0x5862, %rsi
lea addresses_WT_ht+0x9902, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $42, %rcx
rep movsb
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1d6f6, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x5d6c, %rsi
nop
nop
nop
nop
nop
sub $41761, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
nop
inc %rbx
lea addresses_normal_ht+0xc41a, %rbx
nop
nop
nop
nop
nop
dec %rcx
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x6e22, %rsi
lea addresses_D_ht+0x37aa, %rdi
nop
nop
and %rdx, %rdx
mov $97, %rcx
rep movsl
nop
xor $45640, %r12
lea addresses_WT_ht+0x12fa2, %rsi
lea addresses_WC_ht+0x149c2, %rdi
nop
nop
nop
sub %r8, %r8
mov $1, %rcx
rep movsb
nop
nop
sub $11912, %rdi
lea addresses_D_ht+0x11282, %r12
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add $21494, %rcx
lea addresses_UC_ht+0xc202, %rsi
lea addresses_D_ht+0x1a582, %rdi
nop
nop
and $16816, %rbx
mov $35, %rcx
rep movsq
nop
nop
add $21882, %rbx
lea addresses_WC_ht+0x128b2, %rdi
clflush (%rdi)
nop
and $49020, %rbx
mov (%rdi), %rdx
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_UC+0x1dc82, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
add $18706, %r13

// Faulty Load
mov $0x456b390000000282, %r13
nop
nop
nop
xor $55224, %r8
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'44': 1107, '45': 4303, '00': 11140, '48': 5147, '47': 132}
48 44 48 00 00 45 00 48 00 00 00 48 00 48 48 00 48 00 48 00 00 45 48 48 45 00 00 48 00 00 00 00 00 00 48 00 44 44 48 45 47 48 00 00 00 00 00 00 00 00 45 48 00 00 44 00 00 00 00 44 00 48 00 45 48 00 48 00 00 44 00 00 45 45 48 44 48 00 00 00 44 00 00 00 00 00 00 00 45 00 00 44 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 44 00 00 45 45 48 00 00 00 00 00 00 00 00 44 00 00 44 48 00 48 00 48 44 48 00 48 45 45 48 00 00 00 00 44 48 00 45 00 00 00 48 00 48 45 45 48 45 48 48 00 00 00 45 48 00 45 48 48 00 00 00 45 48 45 00 48 45 00 00 45 45 45 48 48 44 00 45 45 48 45 48 45 48 00 45 48 00 45 48 00 45 45 48 45 48 48 45 00 48 00 00 00 45 48 00 00 45 00 00 45 00 00 45 00 48 45 45 48 00 48 00 45 00 00 44 00 00 00 48 00 00 00 00 00 00 44 48 48 00 00 44 00 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 48 00 45 48 48 45 47 00 45 45 48 45 48 00 00 00 00 45 48 45 48 48 45 48 00 45 45 48 00 00 00 45 45 48 45 48 45 48 48 45 48 48 45 00 00 45 00 00 45 48 45 00 45 48 48 00 00 00 45 48 00 00 00 00 45 48 00 45 00 45 48 00 44 48 00 00 48 00 44 48 00 48 00 00 45 00 00 45 00 45 00 48 45 45 48 00 48 00 00 45 00 00 00 00 00 44 00 48 00 45 00 00 44 00 00 00 48 00 00 44 48 00 00 00 00 48 44 00 00 45 48 00 00 00 00 45 45 48 45 48 45 48 00 45 00 00 00 00 45 00 00 00 00 00 45 45 48 45 48 45 48 00 00 00 00 45 00 00 45 00 45 45 48 45 48 00 45 45 48 45 00 45 48 48 45 48 00 45 45 00 45 48 00 00 00 00 45 48 00 00 00 00 44 48 48 00 00 45 00 44 48 00 00 00 00 00 44 48 48 00 00 45 45 48 00 48 00 00 45 48 48 00 00 45 47 48 44 48 00 45 45 48 00 00 45 47 48 48 45 47 48 00 00 00 00 44 48 00 45 45 48 44 00 45 48 45 00 00 45 00 48 45 48 45 48 00 00 00 00 00 48 44 48 45 47 48 00 00 44 00 00 00 00 00 00 00 00 00 48 48 00 00 45 48 00 45 00 00 00 00 00 48 45 45 48 00 00 45 45 48 00 00 44 00 00 00 00 00 45 00 00 00 45 48 00 45 48 00 45 48 00 45 48 45 48 45 00 45 48 00 45 48 00 45 48 45 48 00 00 00 00 45 48 00 00 45 00 45 48 00 45 48 45 00 45 45 48 45 00 48 45 00 00 00 00 00 00 00 00 45 45 48 45 48 00 45 48 48 00 00 44 48 00 44 48 00 00 45 00 00 45 00 48 45 00 00 00 48 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 45 45 48 00 00 45 48 00 00 00 00 48 45 45 48 44 00 45 00 48 45 45 48 00 00 00 00 44 48 00 44 00 00 00 00 00 48 00 00 00 00 44 00 48 00 45 00 48 44 00 00 00 00 44 00 45 48 48 44 00 00 44 48 48 44 00 00 00 00 44 00 00 00 48 44 00 00 00 00 00 00 44 00 48 00 00 00 00 45 48 00 45 48 00 45 48 48 45 00 00 45 48 48 45 48 45 48 45 48 00 44 00 45 45 48 00 00 00 45 48 00 45 48 45 48 00 00 00 00 00 00 44 48 00 44 48 00 00 45 48 00 00 00 00 00 48 00 48 00 45 48 00 00 00 00 00 00 00 00 44 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 48 45 48 44 00 00 00 00 00 48 44 00 00 00 00 48 48 45 48 00 00 00 00 45 48 00 45 48 48 00 00 00 45 45 48 48 45 48 48 45 45 48 00 00 45 00 00 45 48 45 48 45 48 00 00 00 00 45 00 00 45 48 00 45 48 00 45 48 48 00 00 00 00 45 48 00 45 48 00 45 00 00 45 45 48 45 00 45 48 00 00 48 00 00 00 00 00 00 44 48 00
*/
