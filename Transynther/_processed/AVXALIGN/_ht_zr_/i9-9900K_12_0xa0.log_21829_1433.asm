.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13c05, %rdi
nop
nop
cmp %r10, %r10
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
xor $19187, %rbp
lea addresses_normal_ht+0x724, %rbp
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
cmp $61188, %r15
lea addresses_D_ht+0x10da4, %rsi
lea addresses_UC_ht+0x77f5, %rdi
clflush (%rsi)
nop
xor $10753, %r8
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
add $25567, %r15
lea addresses_UC_ht+0x1c1e4, %rbp
cmp $20615, %r10
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rcx
nop
and %r8, %r8
lea addresses_A_ht+0x112a4, %rsi
lea addresses_A_ht+0x45e4, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $3, %rcx
rep movsl
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_normal+0x13ae4, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r13)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_PSE+0x1237c, %r9
nop
nop
nop
nop
nop
cmp $16256, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_RW+0xbea4, %r9
nop
nop
and %r8, %r8
movaps (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'46': 17282, '49': 31, '66': 2, '00': 151, '47': 8, '45': 4335, '4e': 15, '67': 5}
46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 45 45 46 46 45 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 45 46 46 46 46 45 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 45 46 45 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 45 46 46 45 46 45 45 46 46 46 46 46 46 46 46 45 46 45 46 45 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 46 46 45 46 46 45 46 45 46 45 46 46 45 46 46 45 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 00 46 46 45 46 67 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 45 46 46 46 00 46 46 46 46 46 45 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 45 46 45 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 45 46 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 45 46 45 00 45 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 45 46 46 45 46 46 45 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 45 00 46 46 45 46 46 45 46 46 45 46 46 46 46 00 46 46 46 46 46 46 46 45 46 46 45 46 46 46 45 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 45 46 45 46 45 46 46 46 45 46 45 46 46 46 46 45 46 45 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 45 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46
*/
