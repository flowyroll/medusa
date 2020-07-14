.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c084, %rcx
nop
nop
nop
nop
inc %r13
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x187aa, %rsi
lea addresses_WC_ht+0xa82e, %rdi
nop
nop
cmp %rbp, %rbp
mov $127, %rcx
rep movsl
inc %rcx
lea addresses_WC_ht+0xfea, %r8
nop
nop
and $56856, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
sub $6380, %rsi
lea addresses_normal_ht+0x83aa, %r13
nop
dec %r12
movb (%r13), %r8b
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1bbaa, %rbp
nop
nop
nop
nop
cmp $18042, %r13
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x14192, %rbp
nop
xor $51673, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rbp)
nop
inc %r12
lea addresses_D_ht+0x11be, %rsi
lea addresses_UC_ht+0x972a, %rdi
nop
xor $2556, %rbp
mov $69, %rcx
rep movsw
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x143aa, %rcx
dec %r12
movl $0x61626364, (%rcx)
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Store
mov $0x61035f00000000f2, %r9
nop
nop
nop
sub $51014, %r12
movw $0x5152, (%r9)
sub $41573, %rdi

// Load
lea addresses_US+0x79b2, %r8
nop
nop
nop
and $47750, %r10
movups (%r8), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0xbc98, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $50798, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
sub $41201, %r8

// Faulty Load
lea addresses_WT+0xe3aa, %r8
nop
nop
xor %rdi, %rdi
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'46': 12044, '00': 178, '45': 9607}
45 46 46 46 46 45 46 46 45 45 45 45 45 46 46 46 45 45 45 46 45 45 45 46 46 46 45 45 46 45 46 46 46 46 46 45 46 46 45 46 45 00 46 46 45 45 45 45 46 46 45 46 45 45 46 45 45 45 00 45 45 45 46 46 45 46 45 46 46 45 46 46 46 46 45 46 45 46 46 46 45 46 46 46 45 46 46 45 45 46 46 46 46 46 46 00 45 46 45 45 45 45 45 46 46 46 45 46 45 45 45 46 46 45 46 46 45 46 46 45 46 46 45 45 46 46 45 46 45 45 45 46 46 46 46 45 46 46 45 46 46 46 46 46 45 46 45 45 45 46 46 45 46 46 46 46 45 46 46 46 45 46 46 45 46 46 46 46 46 45 46 45 46 46 46 45 46 46 46 45 45 46 46 45 46 46 45 45 46 46 46 46 45 46 46 45 46 46 45 46 46 46 46 45 45 45 45 46 45 46 45 46 45 45 45 46 45 45 46 46 46 45 46 45 46 46 46 46 46 46 46 46 45 46 46 45 46 46 45 46 46 45 46 46 46 46 45 46 46 45 45 45 45 45 46 46 45 45 45 46 46 46 46 46 45 45 46 46 46 45 45 45 46 46 46 45 45 46 46 46 46 46 46 46 46 45 46 46 45 46 46 45 45 46 46 46 45 45 46 46 46 45 46 46 45 46 46 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 46 46 46 45 45 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 45 46 46 45 46 46 45 45 46 46 45 45 46 46 46 45 46 46 45 46 46 45 46 46 45 46 45 45 46 46 46 46 46 45 45 45 45 46 46 46 45 46 45 46 46 45 45 46 45 45 46 45 46 46 46 46 46 45 45 45 45 46 45 45 45 45 46 46 46 46 45 45 46 46 45 45 45 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 45 46 46 46 45 45 46 45 46 46 45 46 45 46 46 45 46 46 46 46 45 45 45 45 46 45 46 46 45 45 45 46 45 45 46 46 46 46 46 45 46 45 45 45 46 46 46 45 46 46 45 46 45 45 46 46 46 46 45 46 46 46 46 45 45 46 45 00 45 46 46 45 45 45 00 45 46 46 45 45 00 45 46 46 45 45 46 46 45 46 45 46 46 45 45 45 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 45 45 46 46 46 45 45 46 45 46 46 46 46 46 45 45 45 45 45 45 46 46 46 46 46 46 45 46 46 46 45 45 45 46 46 46 45 45 45 45 45 45 45 46 45 45 46 46 45 45 45 46 46 46 45 46 46 46 46 45 46 45 45 45 46 46 45 46 46 45 45 45 45 46 46 46 45 45 46 46 45 45 45 45 46 46 46 45 46 45 45 45 46 46 45 45 46 45 45 45 45 46 45 45 46 46 46 45 46 45 45 45 46 45 45 45 45 45 45 45 46 46 46 45 45 46 45 46 46 46 46 46 46 45 45 45 46 46 45 46 46 45 45 45 46 45 46 45 46 45 46 46 46 46 45 45 46 45 46 45 45 46 46 46 46 46 45 46 46 46 46 46 46 45 45 45 45 46 46 46 45 45 45 45 45 46 46 46 46 46 45 45 46 45 46 46 46 46 46 45 46 46 45 45 46 46 46 46 46 46 46 46 45 45 45 45 45 46 46 45 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 45 46 46 45 45 45 45 46 46 45 46 46 46 45 45 45 46 45 46 45 46 46 45 46 46 45 45 45 45 46 46 45 45 46 45 45 46 45 45 45 45 45 46 46 46 46 45 45 45 45 46 46 46 45 46 45 45 45 46 46 45 45 45 45 46 46 46 45 46 45 46 46 45 45 45 46 45 46 46 46 46 46 45 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 45 45 46 45 45 45 46 46 46 45 46 45 46 46 46 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 46 45 46 46 46 46 46 45 46 45 45 45 45 46 00 46 45 45 45 45 45 46 46 45 45 45 45 46 46 46 46 46 45 46 46 46 46 45 45 46 45 46 45 46 46 45 45 45 45 45 46 00 45 46 45 46 46
*/
