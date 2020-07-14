.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x195cd, %rsi
lea addresses_normal_ht+0xa77b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $112, %rcx
rep movsq
nop
nop
nop
xor $4910, %rbx
lea addresses_D_ht+0x6d7b, %rbx
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rbx)
nop
nop
and $22450, %rdx
lea addresses_A_ht+0x1507b, %rsi
lea addresses_UC_ht+0x895b, %rdi
nop
and %rax, %rax
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x17c9b, %rsi
lea addresses_UC_ht+0x1312e, %rdi
cmp $29882, %r15
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1487b, %rsi
lea addresses_D_ht+0x3373, %rdi
nop
inc %rdx
mov $45, %rcx
rep movsl
cmp $39288, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x511b, %rsi
lea addresses_RW+0x1a87b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rax
mov $28, %rcx
rep movsb
add $59957, %rdx

// Store
lea addresses_D+0xc25f, %rdx
nop
nop
xor $31263, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
add $32540, %rdx

// Faulty Load
lea addresses_US+0x1007b, %rdx
nop
nop
nop
sub $9543, %rax
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
