.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8e34, %r8
nop
nop
nop
nop
sub $35322, %rbp
movb (%r8), %cl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x57b4, %r10
clflush (%r10)
and %r14, %r14
mov (%r10), %r15
nop
nop
nop
add $3269, %rcx
lea addresses_normal_ht+0xbdb4, %rcx
cmp %rbp, %rbp
mov (%rcx), %r8w
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xd734, %rsi
lea addresses_WT_ht+0xa134, %rdi
inc %r8
mov $6, %rcx
rep movsl
nop
nop
nop
nop
sub $15322, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_D+0xefb4, %r9
nop
nop
nop
nop
add $812, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0x1e1c, %r9
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
sub $33321, %rbx

// Store
lea addresses_WT+0x14ecc, %rbx
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
xor $639, %r10

// Store
lea addresses_D+0x7b34, %r8
nop
nop
nop
nop
nop
cmp $27853, %rsi
movw $0x5152, (%r8)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x17a34, %r10
clflush (%r10)
nop
nop
xor $36509, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_US+0x17a34, %rsi
nop
cmp $30469, %r8
mov (%rsi), %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
