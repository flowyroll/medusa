.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1cd10, %rsi
lea addresses_UC_ht+0x4660, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor $37116, %r10
mov $115, %rcx
rep movsb
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x14060, %rbx
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rbx)
nop
sub $21647, %rbx

// Store
lea addresses_WT+0x1cd70, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r9)
and $43777, %r10

// Store
lea addresses_US+0x1dfc0, %rbx
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x9e60, %rcx
clflush (%rcx)
xor $59445, %rax
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'33': 17}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
