.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rdi
push %rdx
lea addresses_UC_ht+0xd782, %rdi
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
cmp $55285, %rbp
pop %rdx
pop %rdi
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_normal+0x1e0aa, %rax
nop
nop
nop
nop
xor $12640, %rdi
movw $0x5152, (%rax)
nop
nop
dec %rbp

// Store
mov $0xa0a, %rdi
nop
add %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_US+0x1d22a, %rax
cmp $7650, %r14
movl $0x51525354, (%rax)
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x1d22a, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
