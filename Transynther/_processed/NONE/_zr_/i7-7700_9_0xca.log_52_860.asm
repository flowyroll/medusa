.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xc833, %rdi
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
cmp %r12, %r12
lea addresses_A_ht+0x2ae3, %r14
nop
nop
nop
nop
add %rcx, %rcx
mov (%r14), %dx
cmp %r15, %r15
lea addresses_A_ht+0x5a33, %r15
nop
nop
inc %rcx
mov (%r15), %rdx
nop
nop
nop
nop
nop
sub $8350, %r15
lea addresses_D_ht+0x46c3, %rsi
lea addresses_WC_ht+0xc973, %rdi
sub %r15, %r15
mov $73, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x81f3, %r15
nop
dec %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
and $24935, %r15
lea addresses_WT_ht+0x158f3, %rsi
lea addresses_D_ht+0xeebf, %rdi
add %r15, %r15
mov $110, %rcx
rep movsb
nop
nop
nop
cmp $40667, %rdx
lea addresses_UC_ht+0x107b3, %r12
nop
add $29366, %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rdx
push %rsi

// Load
lea addresses_PSE+0x17f73, %rdx
nop
nop
nop
sub %r11, %r11
mov (%rdx), %r12
nop
nop
nop
cmp $57978, %r13

// Store
lea addresses_WT+0x18173, %rdx
nop
nop
nop
nop
and $5418, %rax
movb $0x51, (%rdx)
nop
dec %rdx

// Store
lea addresses_A+0x10973, %r11
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r11)
nop
dec %r11

// Store
lea addresses_WT+0xc473, %r12
nop
nop
add $59955, %r10
movw $0x5152, (%r12)
nop
xor %r11, %r11

// Store
lea addresses_UC+0x1ab73, %r12
nop
nop
add $54706, %rsi
movl $0x51525354, (%r12)
nop
nop
inc %rax

// Store
lea addresses_UC+0x1e87b, %r13
clflush (%r13)
add $21043, %r12
movb $0x51, (%r13)
nop
nop
xor $55122, %rax

// Store
lea addresses_UC+0x1b633, %rax
nop
nop
nop
nop
and $31308, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_A+0x10973, %rax
cmp $35943, %rdx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
