.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7a89, %rsi
lea addresses_UC_ht+0x9189, %rdi
clflush (%rsi)
nop
cmp $10339, %rbx
mov $55, %rcx
rep movsb
nop
nop
inc %rbp
lea addresses_D_ht+0x10e99, %rsi
lea addresses_A_ht+0x1c589, %rdi
nop
xor %r14, %r14
mov $66, %rcx
rep movsl
nop
inc %r14
lea addresses_WT_ht+0x1c009, %rsi
lea addresses_WT_ht+0x16189, %rdi
clflush (%rdi)
nop
nop
nop
add %r15, %r15
mov $27, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $10817, %rdi
lea addresses_UC_ht+0xee59, %rcx
nop
nop
nop
nop
inc %rbp
mov (%rcx), %si
nop
nop
nop
nop
xor $30739, %r14
lea addresses_UC_ht+0x13989, %r14
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xc8c5, %rdi
nop
nop
nop
nop
and $33838, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
cmp $51733, %r15
lea addresses_WC_ht+0x14841, %rsi
lea addresses_WT_ht+0xf051, %rdi
nop
xor %r13, %r13
mov $39, %rcx
rep movsb
nop
add $30531, %rcx
lea addresses_WT_ht+0x8e89, %rsi
nop
nop
nop
nop
inc %rdi
mov (%rsi), %ebp
nop
nop
add $26683, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Load
lea addresses_RW+0xa989, %rax
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
and %r9, %r9

// Store
mov $0x6cd1640000000d89, %rsi
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movaps %xmm4, (%rsi)
nop
nop
nop
nop
and %rsi, %rsi

// Load
mov $0x5f76930000000d89, %rax
nop
nop
dec %r8
mov (%rax), %r13
nop
nop
nop
and $13889, %rdi

// Store
lea addresses_normal+0xae20, %r15
clflush (%r15)
nop
nop
and %r9, %r9
movl $0x51525354, (%r15)
nop
add $39509, %rax

// Store
lea addresses_RW+0xa989, %r9
nop
xor $44130, %rsi
movw $0x5152, (%r9)
nop
nop
xor $50940, %r8

// Store
mov $0x65afce0000000d89, %rdi
nop
nop
nop
sub $21562, %rax
movl $0x51525354, (%rdi)
nop
nop
inc %r13

// Store
lea addresses_US+0x5589, %r15
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovaps %ymm5, (%r15)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_RW+0xa989, %rsi
nop
and $49036, %r13
vmovaps (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'46': 33, '00': 152}
00 00 00 00 00 00 00 00 00 46 46 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 46 00 46 00 00 46 00
*/
