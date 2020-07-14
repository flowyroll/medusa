.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdx
push %rsi
lea addresses_WT_ht+0xf0ff, %r15
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r15)
nop
nop
nop
cmp $3816, %rdx
lea addresses_D_ht+0xf5bf, %rdx
clflush (%rdx)
nop
nop
nop
mfence
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xc47f, %r8
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
xor $29869, %r15
lea addresses_normal_ht+0x1a5ff, %r9
nop
nop
nop
add %r8, %r8
mov (%r9), %dx
sub $2508, %r9
lea addresses_A_ht+0x1dcff, %r15
nop
nop
cmp $59804, %rbx
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1deff, %rsi
nop
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rsi)
nop
nop
cmp $25864, %rbx
lea addresses_WT_ht+0x19d73, %r15
inc %rsi
mov (%r15), %ebx
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xd67f, %r15
nop
nop
nop
add $60030, %r8
movb (%r15), %bl
add $26469, %r14
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_WT+0x46cf, %r10
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0x138ff, %rbx
nop
nop
nop
xor %r13, %r13
mov (%rbx), %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'44': 10, 'c0': 12, '46': 1, '00': 255, 'ff': 9, '58': 1, '6a': 1, '53': 1, 'a9': 2, '80': 2, '01': 742}
00 58 00 01 01 00 00 01 01 00 01 01 01 01 01 01 01 01 01 01 00 01 00 01 01 01 01 01 00 01 01 01 00 01 01 01 00 01 01 01 00 01 01 01 01 01 01 ff 80 00 01 01 01 01 01 01 44 00 00 01 01 01 01 01 01 01 00 01 00 00 01 01 00 01 01 01 01 01 01 01 01 00 01 01 00 01 00 00 01 01 01 01 01 01 00 01 00 00 01 01 01 01 01 01 01 01 01 00 01 01 00 00 01 00 01 01 00 01 00 00 01 01 01 01 01 01 01 01 01 01 01 00 00 01 00 01 00 01 00 01 01 01 01 01 01 00 01 01 00 01 01 01 01 00 00 01 00 01 01 01 01 01 01 01 01 01 01 01 01 01 01 00 44 6a 00 01 01 01 00 44 00 00 01 01 01 01 01 01 c0 00 01 01 01 01 01 01 01 01 c0 00 01 01 ff 00 01 01 01 01 01 00 01 01 01 01 01 00 01 44 00 00 c0 00 00 00 01 c0 00 00 00 01 01 01 01 01 00 01 01 01 00 01 00 01 00 01 01 01 01 01 01 01 00 00 01 01 01 01 00 00 01 01 01 01 01 01 00 01 01 01 01 01 00 01 01 01 00 01 01 01 01 01 00 01 01 01 00 00 00 00 01 01 01 01 00 01 00 01 01 00 00 00 44 00 01 c0 00 01 01 01 01 00 01 00 00 01 01 01 01 01 00 01 00 01 01 01 01 01 01 01 01 00 01 01 00 01 01 01 01 01 00 01 01 01 00 01 01 01 01 01 01 01 a9 00 01 01 01 01 01 01 01 01 00 01 01 01 01 01 00 01 01 01 00 01 00 01 01 00 01 00 01 00 01 01 01 00 01 00 01 01 00 01 01 c0 00 01 00 00 01 00 01 01 c0 ff 00 01 01 01 01 01 01 01 00 01 01 01 00 01 01 01 01 01 01 00 01 01 53 00 01 01 01 01 01 01 01 01 01 00 01 01 01 01 01 01 00 00 01 00 00 00 01 00 ff 00 01 01 01 00 01 01 01 00 01 01 01 00 01 ff 00 01 01 01 01 01 01 01 01 00 01 01 01 00 01 01 01 01 01 00 01 01 01 00 01 01 c0 44 00 01 01 01 01 01 01 00 01 01 46 00 00 01 01 01 01 01 01 01 00 01 01 00 01 01 01 01 01 01 01 01 01 01 01 01 00 00 00 01 01 01 01 01 01 01 01 01 01 00 00 01 01 01 01 01 01 01 01 00 01 00 01 00 01 01 01 01 00 00 01 01 01 01 01 01 01 01 01 01 ff 00 c0 00 01 01 01 01 00 01 01 01 01 01 01 01 00 00 01 01 00 01 00 00 01 01 01 01 01 00 01 01 01 01 01 01 01 01 01 01 01 01 01 00 01 01 44 00 01 01 01 01 00 00 01 00 01 00 01 01 00 01 01 01 00 01 01 01 01 00 01 ff 00 01 00 01 01 01 44 00 01 01 01 01 00 01 01 01 01 ff 00 01 01 01 01 00 01 01 01 01 01 01 00 01 01 00 00 01 01 01 00 01 00 01 01 01 01 01 01 01 01 01 01 01 00 01 01 01 00 01 01 01 00 ff 00 01 01 01 00 01 00 01 01 01 00 01 00 00 00 00 00 01 a9 00 00 01 00 00 00 01 01 01 01 01 01 00 01 00 01 01 01 01 00 01 01 00 01 01 01 01 01 00 00 00 00 01 01 00 01 00 01 00 01 01 01 01 01 00 01 00 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 00 80 00 01 01 01 01 01 01 01 01 01 01 01 00 00 01 00 00 00 01 01 01 01 01 01 01 01 01 01 00 01 01 01 01 01 01 00 01 01 01 01 01 01 00 01 01 00 00 01 01 00 00 01 01 01 01 01 01 01 01 00 01 01 00 01 01 01 01 01 01 01 01 01 01 01 01 01 00 01 01 01 01 01 01 01 00 01 01 01 00 01 00 01 01 01 01 01 00 01 01 01 00 01 01 00 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 01 00 01 01 01 01 01 01 01 00 01 00 c0 00 01 01 01 01 44 00 01 01 01 00 01 01 01 00 01 00 01 01 00 01 01 01 01 01 01 01 00 01 01 01 01 00 01 00 00 44 00 01 01 01 00 01 01 00 01 00 01 01 01 01 00 01 01 00 00 01 01 01 01 01 01 01 01 00 00 01 01 01 01 00 01 01 01 01 01 01
*/
