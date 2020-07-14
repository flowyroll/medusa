.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x36d, %rsi
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x1a1fd, %r14
nop
nop
sub %r10, %r10
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x239d, %r10
clflush (%r10)
nop
inc %r9
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x165dd, %rsi
lea addresses_normal_ht+0xb57d, %rdi
nop
nop
cmp %r14, %r14
mov $98, %rcx
rep movsb
nop
nop
nop
nop
and $40563, %rdi
lea addresses_WT_ht+0x6dfd, %r9
nop
nop
nop
nop
and $474, %rdi
movl $0x61626364, (%r9)
nop
inc %rdi
lea addresses_A_ht+0x6d7d, %r9
clflush (%r9)
sub %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0xd97d, %r10
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x8e1d, %rsi
lea addresses_WT_ht+0x17bd, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $111, %rcx
rep movsq
nop
nop
nop
nop
and $37116, %rcx
lea addresses_normal_ht+0x13db5, %rsi
lea addresses_D_ht+0xfd7d, %rdi
nop
nop
nop
nop
nop
xor $32012, %r13
mov $81, %rcx
rep movsl
nop
nop
nop
and $26680, %rsi
lea addresses_normal_ht+0x797d, %rsi
lea addresses_UC_ht+0x937d, %rdi
nop
nop
nop
nop
inc %r13
mov $7, %rcx
rep movsb
nop
nop
nop
nop
cmp $23633, %r9
lea addresses_normal_ht+0xd625, %rdi
nop
nop
nop
nop
add %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $65281, %r15
lea addresses_normal_ht+0x1111, %rsi
lea addresses_WT_ht+0xd57d, %rdi
nop
nop
inc %r15
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $52538, %r10
lea addresses_WT_ht+0xa474, %r13
nop
nop
xor $19779, %rdi
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x4f7d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdi)
add %rdi, %rdi

// Store
lea addresses_US+0x3341, %r14
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
xor %rdi, %rdi

// Store
lea addresses_US+0xe97d, %rdi
nop
nop
cmp $52274, %r9
movw $0x5152, (%rdi)
xor %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1d7d, %r11
nop
nop
nop
nop
cmp $12226, %rdi
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'44': 1768, 'c0': 2, '47': 1290, '00': 5129, 'ff': 11406, '3c': 4, '53': 1759, '81': 2, '49': 456, 'de': 12, '8f': 1}
ff ff ff 00 ff ff 44 00 47 ff ff ff ff ff 00 ff 00 ff ff ff 00 47 44 ff 00 ff 00 47 53 ff ff 00 53 44 ff ff ff ff 00 00 00 ff ff 00 ff 00 ff ff 53 00 47 53 ff ff 00 47 44 ff ff 47 00 ff 53 ff 53 00 ff ff 44 ff ff 00 ff ff ff ff 44 00 47 ff 47 ff 00 00 ff ff ff ff ff ff 00 ff 00 ff ff 49 ff ff 00 ff ff 44 ff 53 ff 00 ff ff 44 47 47 00 00 00 00 49 ff ff ff ff ff ff ff ff 00 ff ff 44 53 ff 47 00 ff ff ff ff ff ff 44 ff ff ff ff 44 00 ff ff 00 ff ff 53 ff ff ff ff 44 ff 00 00 00 49 ff 53 ff 44 00 ff ff 53 00 ff ff ff ff ff 00 49 ff 44 ff ff 53 00 47 00 ff 00 47 ff 00 00 00 44 47 ff 00 00 de 00 ff 47 ff ff ff 47 53 00 44 ff 53 ff ff ff ff ff 44 00 ff ff 53 ff ff ff ff ff ff ff ff ff ff 00 49 ff ff ff 44 ff ff 00 47 53 ff 49 44 ff ff 00 53 00 ff ff ff 00 00 ff ff ff ff 00 ff ff 44 ff ff ff 44 ff 53 00 ff ff ff ff 53 00 ff ff 44 00 49 00 00 00 ff ff ff ff 00 49 ff ff ff ff ff 53 00 00 ff ff ff ff ff ff 47 47 44 ff 00 00 49 44 ff ff ff 44 ff 49 ff ff ff 44 00 ff ff 53 00 ff ff ff 00 ff 00 00 ff 00 ff ff ff 53 ff ff 53 ff 44 00 ff ff 00 ff ff ff 00 ff ff 53 ff ff ff ff 47 ff 00 ff 00 ff ff ff ff 47 ff ff 49 ff ff 00 00 ff 47 49 53 ff ff ff 00 ff ff 44 ff 44 ff ff ff ff 49 00 ff 47 00 53 00 49 ff ff ff ff ff 00 ff ff ff 00 ff 00 ff 00 ff ff 00 ff ff 47 ff ff ff 53 00 53 ff ff 47 00 49 00 47 ff ff 53 ff 44 ff ff 53 ff ff 44 ff 00 47 ff ff 47 ff ff 53 ff ff 00 ff 00 ff ff 53 00 00 ff ff ff 00 ff ff ff 47 00 ff ff ff ff 00 ff ff 44 00 00 00 ff 47 ff 00 00 ff 00 ff ff 44 00 ff 00 53 53 ff 47 53 53 00 ff ff 00 00 47 44 ff 00 00 ff ff ff 53 ff ff ff 00 ff ff 53 ff 53 00 53 44 00 00 ff 00 ff 00 ff 00 ff 00 ff ff 44 00 00 ff ff ff ff 44 00 ff ff 53 00 49 00 00 00 ff 00 ff ff ff ff ff ff ff 00 ff 00 47 ff 00 00 ff ff 00 ff ff 44 00 44 ff ff 00 ff 00 ff 00 ff ff 44 53 ff ff 00 ff ff ff ff 00 49 00 ff 00 00 44 00 00 00 ff ff 47 00 53 00 00 ff 00 53 00 53 ff ff 00 ff ff 44 00 49 ff 00 49 00 ff ff 44 ff 53 47 ff 53 ff ff ff 44 ff ff 00 00 ff 47 00 44 47 47 ff 53 ff 00 49 00 ff 44 ff 53 00 ff ff ff ff 00 ff 00 ff ff 47 ff 47 ff 53 53 00 47 53 49 ff ff 00 53 44 00 ff ff 44 ff ff ff 53 ff 44 00 00 ff 00 ff 00 00 53 ff 49 00 ff ff 00 ff 00 ff 00 00 44 ff ff ff ff ff 44 ff ff 44 ff 53 53 53 ff 00 00 ff 53 ff 00 ff ff 47 ff ff 00 ff ff 47 ff 49 44 00 ff 47 ff ff 53 53 44 47 ff 00 00 44 00 ff ff ff ff 53 ff ff ff 00 ff 00 44 00 00 ff 47 44 ff ff 00 ff ff ff 00 ff ff 44 00 ff 47 53 ff ff 44 00 ff 47 ff ff ff 44 ff ff ff 44 ff ff 53 47 00 00 53 53 53 ff ff ff ff 00 44 47 ff ff ff 00 44 00 ff 47 47 ff 53 ff 53 00 44 ff 00 ff 53 ff ff 00 ff ff ff 00 00 44 00 00 49 ff 00 47 00 44 47 53 44 00 47 ff ff ff 47 ff 00 ff 47 00 ff 47 ff ff ff 00 ff 00 ff ff ff 00 53 ff ff 00 ff 44 ff ff ff 44 00 ff 00 00 ff ff 44 ff ff 53 44 ff 53 ff ff ff 00 00 53 ff 53 00 ff ff 44 ff 49 ff 00 ff ff ff ff ff 44 ff 44 00 47 ff 00 ff ff 44 00 00 ff 00 53 00 ff 00 ff 47 ff ff ff 00 ff 00 ff 47 00 ff 47 49 00 00 ff 44 ff 53 00 00 53 53 ff 44 ff 44 53 ff ff ff 00 ff ff ff 00 49 44 ff ff ff 44 00 00 49 00 00
*/
