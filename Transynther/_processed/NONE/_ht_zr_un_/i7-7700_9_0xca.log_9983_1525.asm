.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1dba1, %rax
nop
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
cmp $3682, %r11
lea addresses_normal_ht+0x83d2, %r13
sub %rdi, %rdi
movb $0x61, (%r13)
nop
nop
add %r11, %r11
lea addresses_A_ht+0x2d4e, %rsi
lea addresses_normal_ht+0x17272, %rdi
sub $36623, %r14
mov $63, %rcx
rep movsl
nop
nop
nop
and $11826, %rcx
lea addresses_WC_ht+0x8652, %rsi
nop
nop
nop
nop
nop
dec %r14
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x14d0a, %r11
nop
nop
and $13253, %rdx
mov (%r11), %si
xor %rdx, %rdx
lea addresses_A_ht+0x13952, %r13
nop
nop
cmp $32569, %rsi
movw $0x6162, (%r13)
nop
nop
nop
and $15768, %r14
lea addresses_A_ht+0x5dc0, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r14), %cl
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0xebd2, %rsi
lea addresses_D_ht+0x788a, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $117, %rcx
rep movsl
nop
nop
nop
nop
and $18420, %r11
lea addresses_WC_ht+0x6512, %rsi
lea addresses_UC_ht+0x67d2, %rdi
clflush (%rdi)
nop
nop
nop
dec %r14
mov $64, %rcx
rep movsl
nop
nop
nop
nop
xor $36798, %r11
lea addresses_UC_ht+0x8dc4, %rax
nop
nop
nop
nop
xor $9928, %r13
movl $0x61626364, (%rax)
nop
nop
and $42131, %rdi
lea addresses_UC_ht+0xb232, %rax
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rax)
nop
nop
nop
xor $41079, %rdi
lea addresses_UC_ht+0x1c752, %rsi
lea addresses_UC_ht+0x157f2, %rdi
nop
and $53161, %r14
mov $116, %rcx
rep movsq
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1801b, %rsi
lea addresses_UC_ht+0x1e532, %rdi
nop
nop
xor $312, %r11
mov $117, %rcx
rep movsl
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x1a3d2, %r11
cmp %rax, %rax
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
add $41014, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rdx

// Store
lea addresses_D+0x707c, %r13
nop
nop
cmp %rdx, %rdx
movb $0x51, (%r13)
and %r11, %r11

// Store
lea addresses_normal+0x4c5a, %rdx
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rdx)
nop
nop
add $3668, %rbp

// Load
lea addresses_WT+0x82d2, %r13
add $38372, %r12
movb (%r13), %r15b
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WT+0x16fd2, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
nop
dec %rbp

// Load
lea addresses_WC+0x1aed2, %rdx
nop
nop
nop
nop
nop
sub $10276, %r12
mov (%rdx), %r11d
nop
nop
nop
nop
nop
add $1132, %r11

// Store
lea addresses_A+0xf3d2, %rbp
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rbp)
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_WC+0x83d2, %rbp
nop
and %r11, %r11
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 1832, '44': 3649, '00': 2043, '45': 2458, '08': 1}
46 00 44 46 00 00 44 00 00 45 44 44 44 46 46 46 45 44 46 45 45 46 44 46 45 45 45 46 46 46 45 46 46 00 44 00 46 44 44 00 46 46 45 00 46 45 00 44 44 44 46 44 45 44 00 45 46 45 45 46 46 45 44 45 45 44 44 00 00 44 45 44 00 44 00 44 44 44 46 45 45 00 45 44 46 00 45 45 44 45 45 46 45 44 44 00 45 45 45 44 46 44 44 44 00 44 44 44 00 45 00 46 00 44 44 45 00 44 44 44 44 00 46 44 00 45 45 46 46 44 00 45 44 46 00 00 00 45 45 44 44 00 44 45 46 46 44 45 44 00 44 00 00 00 45 44 46 00 45 45 44 44 46 44 45 00 46 44 45 45 44 44 44 45 44 44 44 44 44 45 46 44 00 44 44 45 44 45 46 46 45 45 45 00 00 45 44 46 44 45 45 46 44 44 00 45 45 44 44 45 45 45 00 00 45 44 44 44 45 44 44 44 44 45 46 45 46 44 00 44 45 44 44 00 46 46 45 44 44 44 44 00 44 44 44 00 44 45 46 00 45 45 44 45 46 00 45 45 45 00 45 45 00 46 44 44 00 46 00 46 46 45 00 00 44 46 45 44 00 46 44 45 00 44 00 00 44 45 45 00 00 44 45 46 46 00 44 44 44 44 46 44 46 46 45 44 45 46 00 45 45 45 44 00 44 00 44 45 00 45 00 45 46 45 44 00 45 45 44 44 46 45 00 44 45 44 45 00 44 44 45 46 45 44 44 00 46 00 46 44 45 45 44 44 44 00 44 44 46 45 00 45 00 44 46 00 44 00 44 45 44 45 00 44 45 45 45 45 45 44 46 44 00 46 00 44 46 44 44 45 00 45 45 44 00 45 46 00 00 00 46 46 45 00 45 00 00 46 45 44 46 45 46 45 44 00 44 00 44 46 45 00 00 46 00 46 00 44 45 45 44 46 45 00 46 45 45 00 44 44 44 44 45 44 44 00 44 44 00 44 46 44 46 45 46 46 00 45 00 44 45 00 00 45 46 44 00 45 46 46 44 46 45 46 00 46 44 44 00 44 46 44 00 45 44 00 44 44 45 44 45 45 44 44 45 00 44 00 45 44 44 00 44 00 46 45 46 45 44 44 44 44 46 44 45 46 45 44 44 45 46 46 00 45 44 45 45 45 45 44 44 45 00 44 44 44 44 46 46 00 44 44 46 45 44 45 46 46 44 46 44 46 46 46 00 00 00 45 46 44 46 00 44 45 00 44 45 45 00 44 45 44 45 44 45 46 44 44 00 45 00 00 45 00 44 45 44 46 46 44 44 46 44 45 00 45 46 44 45 44 45 45 00 45 00 46 44 00 44 44 45 00 45 00 45 00 44 00 45 44 46 44 00 46 00 00 45 00 46 44 00 44 44 44 00 46 46 44 44 46 44 00 44 45 44 45 45 45 44 44 46 46 00 44 00 44 45 00 45 44 46 44 44 44 44 46 45 44 44 45 00 45 45 44 00 46 46 08 00 44 46 00 45 44 44 44 44 44 00 46 46 44 44 45 44 00 00 44 44 44 00 46 44 45 44 44 44 44 44 00 00 46 00 44 44 45 44 46 00 44 46 45 46 45 46 00 46 45 45 46 00 44 44 45 00 00 45 00 46 44 45 00 44 45 44 44 45 45 46 46 44 44 45 44 44 45 00 46 44 00 44 45 44 44 45 44 46 44 44 44 00 44 00 44 44 45 46 45 44 44 46 44 00 45 46 44 44 46 45 45 45 00 44 45 44 45 46 46 44 44 44 44 45 44 44 45 46 45 44 00 46 45 00 46 45 44 00 00 45 00 46 00 44 44 44 46 00 45 44 00 46 00 44 45 46 00 46 45 00 44 45 46 44 44 46 44 00 00 44 46 44 44 44 46 00 00 45 46 44 45 45 44 44 46 45 00 45 45 46 00 45 00 00 44 46 45 44 00 46 00 00 00 46 00 46 00 44 46 45 00 46 44 45 00 44 44 00 44 45 44 00 44 44 00 44 00 45 46 44 45 00 46 46 44 46 00 00 44 00 00 46 00 46 45 44 00 00 46 46 00 45 45 45 44 45 44 00 46 44 44 44 44 45 44 45 00 44 44 44 45 00 44 45 46 45 45 44 46 44 44 46 45 45 45 44 44 45 45 00 44 44 00 44 00 46 45 00 45 45 44 00 45 45 45 46 45 45 44 44 44 44 45 00 46 44 00 46 45 44 44
*/
