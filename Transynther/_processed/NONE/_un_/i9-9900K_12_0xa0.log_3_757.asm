.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8911, %rsi
lea addresses_normal_ht+0x16511, %rdi
nop
nop
and %r13, %r13
mov $0, %rcx
rep movsl
nop
nop
and $8404, %rcx
lea addresses_UC_ht+0x1791, %rdx
nop
nop
nop
nop
xor $57490, %rdi
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1ed3d, %rcx
nop
nop
nop
mfence
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and $52239, %r13
lea addresses_D_ht+0x198d1, %rsi
lea addresses_normal_ht+0x1141, %rdi
clflush (%rsi)
nop
nop
dec %r8
mov $14, %rcx
rep movsw
nop
lfence
lea addresses_D_ht+0x15091, %rsi
nop
mfence
mov (%rsi), %rdx
xor $22787, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x17291, %rbp
clflush (%rbp)
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_WT+0x5091, %rdi
nop
nop
cmp %rbx, %rbx
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'fb': 1, '87': 2}
87 fb 87
*/
