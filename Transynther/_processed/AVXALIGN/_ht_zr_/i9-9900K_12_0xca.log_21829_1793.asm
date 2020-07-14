.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a73, %r10
nop
nop
add $27290, %rcx
mov (%r10), %si
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x17a23, %rdi
nop
sub %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
cmp $29859, %rdx
lea addresses_WC_ht+0x1ee43, %rsi
clflush (%rsi)
and $40331, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
add $51216, %rcx
lea addresses_A_ht+0x4f33, %rsi
lea addresses_normal_ht+0x3f13, %rdi
clflush (%rdi)
cmp $63557, %r15
mov $63, %rcx
rep movsb
nop
nop
nop
dec %r10
lea addresses_WT_ht+0xb5b3, %rsi
lea addresses_D_ht+0xc4f3, %rdi
nop
nop
nop
nop
nop
sub $53093, %r8
mov $50, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WC+0x4073, %r8
clflush (%r8)
nop
nop
dec %r10
mov (%r8), %ebx
cmp $58988, %r15

// Faulty Load
lea addresses_RW+0x18073, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $22381, %r14
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'45': 18768, '49': 3060, '00': 1}
00 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 49 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 49 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 49 49 45 45 45 45 45 45 45 49 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 49 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45
*/
