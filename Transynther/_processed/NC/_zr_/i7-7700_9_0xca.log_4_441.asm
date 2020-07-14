.global s_prepare_buffers
s_prepare_buffers:
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17aec, %rsi
lea addresses_UC_ht+0x1d09e, %rdi
nop
nop
nop
nop
sub $36537, %rbx
mov $7, %rcx
rep movsl
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
mov $0x7b4d1a000000088f, %rcx
nop
nop
nop
nop
and $47179, %r9
mov (%rcx), %edi
nop
sub %r13, %r13

// Store
lea addresses_WT+0x3f8f, %r10
nop
nop
nop
cmp %r9, %r9
movb $0x51, (%r10)

// Exception!!!
nop
nop
nop
mov (0), %rdx
nop
cmp $16658, %rcx

// Store
lea addresses_US+0xbd8f, %rdx
nop
nop
nop
nop
sub $38463, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_D+0x1c757, %r13
add $25440, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r13)

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
nop
cmp $40729, %rbp

// Store
mov $0xab6dd000000068f, %rdx
nop
add %r10, %r10
movb $0x51, (%rdx)
nop
inc %r13

// Store
lea addresses_normal+0x1ded9, %r13
nop
nop
nop
sub $37613, %rdx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
mov $0x459444000000048f, %rdi
nop
nop
nop
nop
xor %r13, %r13
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 4}
00 00 00 00
*/
