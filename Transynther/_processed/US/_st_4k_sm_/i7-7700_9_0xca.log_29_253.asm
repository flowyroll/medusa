.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x101a, %rsi
lea addresses_WT_ht+0x1b61a, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $63, %rcx
rep movsl
nop
cmp $53705, %rbp
lea addresses_UC_ht+0x703a, %r9
nop
nop
nop
cmp $3666, %rax
movb $0x61, (%r9)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1e01a, %rax
nop
and $63813, %rdx
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x5e1a, %rbp
clflush (%rbp)
nop
nop
dec %rdi
movb $0x61, (%rbp)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x105da, %rsi
lea addresses_normal_ht+0x1611a, %rdi
sub $45922, %r8
mov $50, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x16d1a, %r8
nop
nop
nop
nop
add %rdx, %rdx
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
and $48316, %rdx
lea addresses_WC_ht+0x10a1a, %r9
nop
xor $8210, %r8
movl $0x61626364, (%r9)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0xdd1a, %rsi
lea addresses_WC_ht+0xe01a, %rdi
nop
nop
inc %rax
mov $119, %rcx
rep movsl
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1598a, %rcx
nop
nop
nop
add %rsi, %rsi
mov (%rcx), %r9d
nop
nop
nop
nop
nop
sub $18076, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rsi

// Store
lea addresses_A+0x1941a, %r12
nop
nop
nop
add $11470, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
mov $0x72311000000073a, %r15
nop
nop
nop
cmp $50319, %r11
movb $0x51, (%r15)
nop
nop
nop
nop
nop
xor $21130, %r12

// Store
lea addresses_A+0x6c1a, %r15
nop
cmp $13667, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r15
vmovaps %ymm4, (%r15)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x1713a, %r12
nop
nop
and $6108, %rsi
movb $0x51, (%r12)
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WT+0x901a, %r15
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x71775b000000059a, %rcx
nop
and $29743, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rcx)
nop
xor %r15, %r15

// Store
lea addresses_US+0x641a, %r12
nop
add $34921, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movaps %xmm3, (%r12)
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_US+0x641a, %rcx
sub %r15, %r15
movb (%rcx), %r11b
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'58': 29}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
