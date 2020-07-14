.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1932e, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%rsi)
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xc8c9, %r11
nop
nop
nop
nop
cmp $38322, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x18eea, %r12
nop
nop
nop
sub $29854, %r11
movb (%r12), %r13b
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x157ee, %rsi
lea addresses_D_ht+0x9b4e, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $37, %rcx
rep movsb
nop
nop
nop
and $44820, %rdi
lea addresses_D_ht+0x1a8f6, %rsi
lea addresses_WT_ht+0x1826e, %rdi
nop
nop
add %r11, %r11
mov $46, %rcx
rep movsw
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x6dee, %rsi
lea addresses_A_ht+0xeaee, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $93, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x27ee, %r12
nop
nop
nop
add %rdi, %rdi
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
add $52561, %rcx
lea addresses_WC_ht+0x1e1ee, %r11
nop
nop
nop
nop
sub %r15, %r15
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
sub $9887, %rdi
lea addresses_WT_ht+0x182ee, %rcx
nop
nop
nop
and %r11, %r11
movw $0x6162, (%rcx)
add $17199, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xdcf2, %rdx
nop
nop
xor %r8, %r8
movw $0x5152, (%rdx)
add %r8, %r8

// REPMOV
lea addresses_UC+0xd20e, %rsi
lea addresses_normal+0x19d6e, %rdi
nop
add $17941, %r11
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $35138, %r11

// Store
lea addresses_PSE+0x113ee, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%rbp)
nop
nop
cmp $31460, %rdx

// Store
lea addresses_A+0x596e, %rdx
nop
nop
nop
nop
nop
and $54194, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_WT+0x16c94, %r8
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r8)
nop
and %r10, %r10

// Store
lea addresses_RW+0xec6, %r11
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r11)
inc %rdi

// Store
lea addresses_WC+0x197ae, %r11
nop
nop
nop
nop
and $22383, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x139ee, %r10
nop
inc %rsi
movw $0x5152, (%r10)
cmp $47120, %r11

// Load
lea addresses_UC+0x19cee, %r8
nop
nop
nop
nop
cmp $42957, %rdx
mov (%r8), %di
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
mov $0x486cf200000007ac, %r8
cmp $23067, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
and $1841, %r10

// Store
lea addresses_PSE+0x32ee, %rcx
nop
nop
xor %rdi, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x135ee, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_UC+0xee26, %rdx
nop
and $32889, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
cmp $63462, %r11

// Faulty Load
lea addresses_PSE+0x113ee, %rbp
nop
nop
nop
nop
nop
and $4862, %rsi
mov (%rbp), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'54': 1}
54
*/
