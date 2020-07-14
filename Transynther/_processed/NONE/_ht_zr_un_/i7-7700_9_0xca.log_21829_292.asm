.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcc07, %rsi
lea addresses_UC_ht+0x150eb, %rdi
nop
nop
nop
and %r9, %r9
mov $72, %rcx
rep movsq
nop
nop
nop
and $24864, %rsi
lea addresses_WC_ht+0xe673, %r10
nop
cmp $26103, %rax
movl $0x61626364, (%r10)
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x753, %rsi
lea addresses_WT_ht+0x10473, %rdi
clflush (%rsi)
add $54222, %r15
mov $76, %rcx
rep movsw
nop
nop
nop
inc %r9
lea addresses_D_ht+0x15773, %r15
nop
nop
nop
nop
nop
inc %r9
movw $0x6162, (%r15)
nop
nop
nop
and $12286, %r14
lea addresses_UC_ht+0x1ae73, %rsi
lea addresses_WC_ht+0x6473, %rdi
nop
nop
add $17602, %rax
mov $61, %rcx
rep movsw
nop
nop
nop
add $21939, %rsi
lea addresses_normal_ht+0x72b3, %rsi
lea addresses_D_ht+0x3873, %rdi
clflush (%rdi)
nop
nop
nop
sub %r15, %r15
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
and $46436, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_WT+0x7a53, %rax
clflush (%rax)
nop
nop
xor $49015, %r13
movb $0x51, (%rax)
inc %r8

// Faulty Load
lea addresses_WC+0x1d273, %rsi
nop
nop
nop
nop
nop
dec %rdx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'44': 14892, '00': 6553, '25': 8, '49': 348, '08': 14, '16': 11, '90': 3}
44 44 25 00 25 00 00 25 00 44 00 25 25 00 44 25 25 44 44 25 44 44 00 44 44 00 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 00 00 00 00 44 44 00 44 00 00 44 44 44 44 44 44 44 00 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 44 00 44 00 00 44 44 00 44 44 44 44 44 00 44 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 00 49 44 44 44 44 49 44 44 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 00 00 44 44 00 44 44 00 44 00 44 44 44 00 49 44 44 44 00 44 44 44 00 44 44 00 00 00 44 44 00 44 44 44 44 44 44 00 49 00 44 44 49 00 49 00 00 44 44 49 00 49 44 44 44 00 44 00 00 44 44 00 44 44 44 00 44 00 00 44 44 44 00 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 00 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 49 44 44 00 44 00 44 00 44 44 00 00 44 44 00 44 49 00 44 44 44 44 00 44 00 44 44 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 49 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 44 49 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 44 44 00 44 44 00 00 00 44 00 00 44 44 00 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 00 00 00 00 44 44 00 00 00 44 00 44 44 00 00 00 44 44 00 00 44 00 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 00 44 00 44 44 44 44 44 00 44 44 00 00 44 00 00 49 00 00 44 00 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 49 00 44 00 00 00 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 44 00 44 00 44 44 44 00 44 44 00 44 44 00 44 00 00 44 44 00 00 44 44 00 44 00 44 44 44 44 44 00 44 44 44 00 00 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 00 00 44 00 44 00 00 00 49 44 44 44 00 44 44 44 44 44 00 44 00 44 44 00 00 44 00 44 00 44 00 44 44 44 00 00 44 00 44 00 44 44 44 44 00 44 00 44 44 00 44 00 44 44 44 44 00 00 44 00 00 00 44 44 00 44 44 44 00 44 49 44 44 44 44 00 44 44 00 44 44 00 44 44 00 00 44 00 44 49 44 00 00 00 00 00 44 00 00 44 44 44 44 00 44 44 44 44 00 44 49 44 00 44 00 44 44 44 44 44 00 44 44 00 00 44 44 00 44 00 44 44 00 00 44 44 00 00 44 00 00 44 00 44 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 00 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 00 44 44 00 44 00 44 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 00 44 44 49 44 00 44 00 44 44 44 49 44 00 44 44 00 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 00 00 00 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44
*/
