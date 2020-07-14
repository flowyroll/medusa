.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
lea addresses_A_ht+0x443e, %rbx
nop
nop
nop
nop
sub %r12, %r12
mov (%rbx), %r14w
nop
nop
cmp $56837, %r10
lea addresses_D_ht+0xec7e, %r15
nop
nop
inc %rcx
mov (%r15), %rbp
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x5e3e, %r10
nop
nop
nop
nop
cmp $34714, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r10)
cmp %rbx, %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_WT+0x9a3e, %r15
nop
sub %rbx, %rbx
mov (%r15), %edi
nop
nop
nop
sub $24557, %rbx

// Faulty Load
lea addresses_D+0x943e, %r15
nop
nop
nop
nop
nop
add $33278, %rdi
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'36': 1}
36
*/
