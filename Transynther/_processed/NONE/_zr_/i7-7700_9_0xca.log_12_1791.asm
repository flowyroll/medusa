.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbx
push %rdx
lea addresses_WT_ht+0x182ac, %rbx
nop
nop
sub %r12, %r12
movl $0x61626364, (%rbx)
xor $8113, %rdx
pop %rdx
pop %rbx
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_D+0x18534, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rsi), %eax
nop
nop
nop
cmp $7184, %r10

// Store
lea addresses_UC+0x13b6c, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
inc %rax

// Store
lea addresses_US+0x1deb2, %rbp
nop
nop
dec %rsi
movw $0x5152, (%rbp)
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_A+0x1746c, %rdi
nop
and $61303, %rbp
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
