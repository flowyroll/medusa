.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xbc08, %r12
add $40118, %r8
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rdi
sub $37294, %r13
lea addresses_normal_ht+0x178f7, %rsi
lea addresses_UC_ht+0x3178, %rdi
nop
nop
nop
sub %r14, %r14
mov $56, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x170f8, %rsi
lea addresses_UC_ht+0x15978, %rdi
clflush (%rsi)
nop
nop
and $32748, %rdx
mov $27, %rcx
rep movsq
and %r8, %r8
lea addresses_WC_ht+0x9b78, %rcx
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
cmp $27816, %r13
lea addresses_A_ht+0x15178, %rsi
lea addresses_UC_ht+0x8cb8, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $87, %rcx
rep movsq
nop
nop
and %r13, %r13
lea addresses_A_ht+0xbc18, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1e258, %rsi
lea addresses_A_ht+0xfb78, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $69, %rcx
rep movsw
add $35491, %rdx
lea addresses_D_ht+0x4d78, %r12
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
add $56692, %r14
lea addresses_UC_ht+0xc1e8, %rdi
xor $63107, %rsi
movb (%rdi), %cl
inc %r8
lea addresses_UC_ht+0x9578, %rdx
nop
nop
dec %r12
movl $0x61626364, (%rdx)
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x5c00, %r12
nop
nop
nop
nop
xor $4744, %rsi
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
sub $48859, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x16378, %r10
clflush (%r10)
nop
nop
nop
cmp $44752, %rax
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'64': 1, 'c2': 1, '48': 112, '47': 8, '00': 15079, 'af': 19, '2c': 1, '36': 1, '80': 4, 'c0': 1, '1c': 1, 'ff': 4172, '60': 93, 'ea': 1, '3c': 17, 'e0': 16, '44': 324, '45': 1445, '5c': 1, '53': 530, 'fa': 1, 'aa': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 53 ff 53 00 00 00 ff 00 00 45 53 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 53 ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff 00 00 ff ff 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff ff ff ff 00 00 00 00 00 00 00 00 ff 00 00 00 ff ff ff ff 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 45 53 ff 00 00 00 00 45 53 53 ff 00 ff ff 00 00 00 00 45 ff 00 53 ff 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 ff 00 00 00 00 ff ff ff 44 00 00 00 00 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 45 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 45 ff 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 00 45 45 45 ff 00 ff 45 44 44 ff 00 45 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff ff 00 ff ff 00 ff 00 00 45 44 ff ff ff ff 00 00 00 00 00 00 ff e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 45 ff 00 00 00 00 00 00 00 00 00 00 60 00 ff 44 ff 44 44 44 00 ff 44 00 00 00 00 00 45 ff 53 ff 00 00 00 00 00 00 00 00 00 45 ff ff 00 00 00 ff 00 45 ff ff 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 60 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 45 45 ff 00 00 ff 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 ff ff 00 ff 45 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 45 ff 00 00 00 00 00 00 ff ff ff 48 ff ff 00 00 ff ff ff ff 45 53 ff 00 00 00 00 45 53 ff 00 00 00 00 00 00 00 00 00 00 00 00 45 ff 44 00 00 00 00 00 00 00 00 00 ff ff 00 ff 00 00 00 00 60 00 00 00 00 00 00 00 00 00 44 00 00 ff 00 00 45 ff 00 00 ff ff ff ff 45 45 53 53 53 ff ff 00 00 00 45 ff ff 00 00 00 ff e0 ff ff 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 ff 00 00 45 ff 00 00 00 00 00 00 ff ff 48 53 53 00 00 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 45 ff 53 53 ff 00 44 00 00 00 00 00 00 00 45 ff 00 00 00 00 ff 53 ff ff 45 53 ff ff 00 00 00 00 00 00 00 00 45 ff 00 00 00 00 00 ff 00 00 ff ff ff 00 ff ff 53 00 00 00 00 45 ff ff ff 00 00 48 00 45 ff ff ff 00 00 00 00 00 45 ff 45 ff 48 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 45 44 ff ff 60 ff ff 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 ff 00 00 ff ff ff ff ff ff 00 00 60 45 53 ff ff 00 00 00 00 00 00 00 00 00 00 00 3c 00 00 00 00 00 00 00 45 ff 45 ff ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 53 ff 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 44 ff 00 00 45 45 ff 00 45 45 ff ff 00 00 00 ff ff 00 00 00 00 00 00 00 ff 00 45 ff ff ff ff ff 53 ff 00 00 45 ff 00 00 00 00 80 00 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 48 53 ff 00 00 ff 00
*/
