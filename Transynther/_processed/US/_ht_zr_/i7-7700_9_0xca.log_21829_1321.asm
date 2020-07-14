.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cbf3, %r9
nop
nop
nop
xor %rdx, %rdx
mov (%r9), %si
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x175f3, %r10
nop
sub $11444, %rcx
movl $0x61626364, (%r10)
nop
sub %rax, %rax
lea addresses_WT_ht+0x10533, %r9
nop
cmp $41765, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
cmp $2226, %rcx
lea addresses_D_ht+0xe5f3, %rsi
lea addresses_WC_ht+0x1e273, %rdi
nop
dec %r9
mov $61, %rcx
rep movsw
and %rcx, %rcx
lea addresses_WT_ht+0x46b3, %rsi
lea addresses_WT_ht+0x13cf3, %rdi
nop
nop
mfence
mov $99, %rcx
rep movsb
nop
nop
add $58560, %rcx
lea addresses_WC_ht+0x2605, %r12
nop
nop
nop
nop
and $58488, %r9
mov (%r12), %esi
nop
nop
inc %r10
lea addresses_WT_ht+0x1c773, %r12
nop
nop
nop
sub $13046, %rcx
mov (%r12), %r9
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0xccf3, %rsi
lea addresses_A_ht+0x12bdf, %rdi
xor %r10, %r10
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x2a03, %rsi
lea addresses_UC_ht+0xf1, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $3, %rcx
rep movsw
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1a9f3, %r12
nop
nop
xor $3785, %rdx
movw $0x6162, (%r12)
nop
nop
and $23656, %rsi
lea addresses_A_ht+0x8ce5, %rdi
nop
cmp $48904, %r12
movw $0x6162, (%rdi)
nop
xor $5124, %r10
lea addresses_normal_ht+0x1e223, %r9
nop
nop
inc %rsi
mov (%r9), %rdi
nop
nop
add $59933, %r9
lea addresses_UC_ht+0x4c73, %r12
nop
nop
nop
and $52090, %rdi
mov (%r12), %ax
add $25762, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0x1642d, %rbp
nop
nop
nop
nop
nop
sub $47447, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
inc %rbp

// Store
mov $0x6d5b200000000ff3, %r15
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_US+0x133f3, %rdx
nop
sub %rdi, %rdi
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'46': 7360, '45': 7005, '49': 542, '00': 6922}
00 00 45 46 45 00 45 45 45 46 45 00 00 00 00 45 45 49 46 00 45 49 46 45 46 45 46 00 45 46 45 46 00 45 46 46 45 46 00 45 46 00 45 46 00 45 46 00 45 46 00 45 46 00 00 46 00 45 46 00 45 46 00 45 46 00 00 00 45 49 46 00 45 49 46 00 45 46 00 45 46 00 00 45 46 49 46 00 46 00 45 46 00 45 46 00 00 45 46 45 46 00 00 45 49 46 00 45 49 46 46 45 46 00 45 46 45 00 00 00 45 46 00 46 45 46 00 00 45 46 00 45 46 45 46 45 49 46 46 45 46 46 00 45 00 00 45 46 00 00 00 45 46 00 00 00 45 46 46 00 00 00 45 49 46 00 45 46 00 45 46 00 45 46 00 45 46 00 45 46 00 45 46 45 46 00 45 49 46 00 46 00 46 00 45 45 46 45 46 46 00 45 46 45 46 00 45 45 46 00 00 45 46 00 45 46 00 00 00 45 46 45 46 46 00 46 00 45 46 00 45 46 00 45 46 00 00 45 46 45 46 45 46 00 45 46 00 46 00 45 46 00 46 00 45 46 00 45 00 45 00 45 46 00 45 46 00 00 45 46 00 46 00 45 45 46 00 45 46 00 45 49 46 00 00 46 45 46 45 46 45 49 46 00 45 46 00 00 00 45 46 00 46 00 00 46 00 46 00 00 45 46 45 00 45 45 46 45 46 00 45 46 00 45 46 49 46 00 46 00 45 00 45 46 00 00 00 45 46 00 45 49 00 45 46 00 00 45 46 45 46 45 46 46 45 46 00 45 46 00 45 46 45 00 45 46 45 46 45 00 45 46 00 00 45 46 00 00 45 46 45 49 00 45 46 00 00 45 46 45 46 45 46 46 45 46 45 46 45 46 45 49 46 45 46 00 00 45 49 46 00 45 46 00 45 45 46 45 46 00 46 00 45 45 46 00 45 46 45 46 00 45 45 46 45 46 00 00 45 46 45 45 00 00 45 46 00 45 46 00 00 00 46 00 45 46 00 45 46 46 00 00 00 45 45 46 45 46 00 45 46 45 46 00 45 46 00 45 46 00 45 46 00 45 46 00 00 00 45 46 45 46 00 46 46 00 49 46 45 46 00 46 00 46 00 00 45 46 45 46 45 46 45 46 00 45 46 46 45 46 00 45 00 45 46 00 45 46 00 45 46 45 46 45 46 45 46 46 45 46 00 45 46 00 00 46 00 46 00 00 00 00 45 00 45 45 46 45 46 00 45 45 46 45 46 00 00 45 46 00 00 00 45 46 00 00 45 46 45 46 00 45 46 45 49 46 00 00 45 46 45 46 00 00 45 46 45 46 00 45 46 45 46 45 46 45 46 00 46 00 45 00 00 00 00 45 46 00 00 45 49 46 00 45 46 45 46 00 00 45 46 45 00 00 45 46 45 46 46 45 46 00 46 46 45 46 45 46 45 46 00 00 45 46 45 46 45 46 00 45 46 49 46 45 49 46 45 46 00 46 00 45 46 00 45 46 00 45 46 45 46 00 46 00 45 46 46 45 46 45 46 00 00 00 45 46 00 00 00 45 46 00 00 46 00 45 46 00 00 45 46 00 45 45 49 45 46 45 46 45 46 45 46 45 46 00 45 49 46 00 45 46 00 00 45 00 45 46 00 45 46 45 45 00 45 46 00 00 45 46 45 46 45 45 46 45 46 45 46 00 45 46 00 00 00 46 00 45 46 45 46 00 49 46 00 46 00 45 46 00 00 45 46 46 00 00 45 46 00 45 46 00 45 46 00 45 46 00 00 00 45 46 00 45 46 45 46 45 46 00 45 46 45 46 00 00 45 46 46 45 46 00 00 00 00 00 45 46 00 00 00 45 46 45 45 00 45 45 00 45 46 49 46 45 46 45 46 45 46 00 45 45 49 46 46 00 00 00 45 46 00 00 45 46 00 00 45 46 45 46 00 45 46 46 45 46 00 45 00 00 45 49 46 45 46 45 46 45 46 00 00 00 45 46 00 00 45 00 45 46 45 46 45 46 00 45 46 45 46 00 00 45 46 00 46 00 45 46 00 45 46 45 46 45 46 45 46 00 00 45 46 00 45 46 00 45 46 45 46 46 45 46 49 46 45 46 00 45 46 00 00 45 46 45 46 45 46 45 46 00 00 45 46 00 45 46 45 46 00 46 00 45 46 00 46 00 00 00 00 45 46 45 46 45 46 00 45 46 45 46 00 46 00 46 00 45 00 45 46 45
*/
