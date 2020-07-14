.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x78d8, %rsi
lea addresses_A_ht+0xc6f8, %rdi
nop
nop
inc %rbp
mov $11, %rcx
rep movsw
mfence
lea addresses_normal_ht+0x15e78, %rbx
nop
nop
nop
nop
add $11274, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
nop
add $40766, %rsi
lea addresses_A_ht+0x174b8, %rbp
nop
and $25675, %rdi
movb (%rbp), %cl
nop
nop
nop
cmp $59574, %rcx
lea addresses_UC_ht+0xf96, %rsi
lea addresses_A_ht+0x1d2f8, %rdi
inc %r12
mov $77, %rcx
rep movsw
xor $21660, %r14
lea addresses_UC_ht+0x5a8, %rax
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
xor $3750, %rbx
lea addresses_WC_ht+0x42f8, %rbx
nop
nop
nop
dec %rax
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x18fb8, %rbp
nop
nop
nop
cmp $47753, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
add $21480, %rcx
lea addresses_UC_ht+0x1c2f8, %rsi
lea addresses_WT_ht+0x1ec58, %rdi
nop
nop
nop
nop
nop
and $33642, %r12
mov $10, %rcx
rep movsb
and %rax, %rax
lea addresses_normal_ht+0xba38, %rsi
lea addresses_D_ht+0x59b8, %rdi
add %rax, %rax
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $41357, %rax
lea addresses_A_ht+0x68c6, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
movw $0x6162, (%rdi)
nop
cmp $17524, %r14
lea addresses_WC_ht+0x1b578, %rdi
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
sub $53508, %r14
lea addresses_normal_ht+0x12ef8, %rax
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rax)
dec %rcx
lea addresses_UC_ht+0x5bf8, %rbp
nop
nop
nop
nop
nop
and $45139, %r14
movw $0x6162, (%rbp)
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x5478, %r12
cmp $4889, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x5206, %rax
nop
nop
nop
cmp $10697, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
sub $32813, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %r9
push %rsi

// Store
lea addresses_WT+0x2af8, %r14
nop
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp $53626, %r8

// Store
lea addresses_WC+0x32f8, %r13
nop
add $65505, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_D+0x66f8, %r14
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%r14), %esi
nop
nop
xor %r8, %r8

// Store
lea addresses_RW+0x14f8, %r9
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r9)
and $42468, %r11

// Store
lea addresses_WT+0x1d2e0, %r13
sub $18414, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r13)
nop
nop
and $56016, %r9

// Store
lea addresses_US+0x13fb8, %r13
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r13)
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_US+0x6f8, %r10
nop
nop
nop
nop
nop
add %r11, %r11
movb (%r10), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 7625}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
