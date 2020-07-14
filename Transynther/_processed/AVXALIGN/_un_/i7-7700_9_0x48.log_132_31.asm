.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x741f, %r15
nop
nop
nop
nop
and %r14, %r14
mov (%r15), %rcx
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0xfd5f, %rcx
xor %r13, %r13
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rbx
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x8dff, %rsi
lea addresses_D_ht+0xc53f, %rdi
nop
nop
nop
nop
add $16336, %r8
mov $1, %rcx
rep movsw
nop
sub $28909, %rsi
lea addresses_WT_ht+0xc107, %rsi
lea addresses_WC_ht+0x178c5, %rdi
nop
nop
nop
nop
nop
add $19817, %rbx
mov $47, %rcx
rep movsb
nop
nop
nop
sub $46426, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rcx
push %rdx
push %rsi

// Faulty Load
mov $0xd3f, %r15
and %rdx, %rdx
mov (%r15), %ecx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'c0': 58, 'e0': 74}
e0 e0 c0 e0 c0 e0 c0 c0 e0 e0 c0 e0 e0 c0 c0 c0 e0 c0 e0 c0 c0 e0 e0 e0 c0 c0 c0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 c0 c0 e0 e0 c0 e0 e0 c0 c0 c0 c0 e0 e0 c0 c0 e0 c0 c0 e0 e0 c0 e0 e0 e0 e0 e0 e0 e0 e0 c0 e0 c0 c0 e0 e0 c0 c0 c0 c0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 c0 e0 c0 e0 c0 e0 c0 c0 c0 c0 e0 c0 c0 e0 e0 c0 c0 e0 e0 e0 c0 e0 e0 e0 c0 c0 c0 e0 c0 c0 c0 c0 e0 e0 c0 e0 c0 c0 e0 c0 e0 e0 c0 c0 e0 e0
*/
