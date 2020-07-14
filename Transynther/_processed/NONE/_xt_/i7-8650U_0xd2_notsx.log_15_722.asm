.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ab8d, %rsi
lea addresses_WC_ht+0xca19, %rdi
nop
nop
xor %r12, %r12
mov $61, %rcx
rep movsl
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x17bd8, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov (%rdi), %r12w
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x3419, %rdx
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rdx)
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0xa51, %r14
add %rbx, %rbx
movw $0x5152, (%r14)
nop
nop
nop
nop
cmp $52813, %rbx

// Faulty Load
lea addresses_D+0x1f219, %rbp
nop
cmp %r9, %r9
mov (%rbp), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'36': 15}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
