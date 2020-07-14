.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x7d72, %rbx
nop
inc %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1f72, %rsi
lea addresses_UC_ht+0x1709c, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rbx, %rbx
mov $16, %rcx
rep movsw
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xa772, %rsi
lea addresses_WT_ht+0x522, %rdi
nop
nop
cmp %r12, %r12
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x10862, %rsi
lea addresses_normal_ht+0xe672, %rdi
nop
nop
nop
nop
and $63616, %r11
mov $118, %rcx
rep movsb
nop
nop
nop
nop
xor $20150, %rdi
lea addresses_normal_ht+0x11e32, %r11
nop
nop
nop
nop
nop
add $58341, %r12
movb (%r11), %bl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xff72, %rdi
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
and $53570, %rdx
lea addresses_WT_ht+0x1ed72, %rsi
lea addresses_D_ht+0xe62, %rdi
nop
nop
nop
sub %r11, %r11
mov $89, %rcx
rep movsq
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x3372, %rdi
nop
nop
mfence
movw $0x6162, (%rdi)
nop
and $36523, %r11
lea addresses_UC_ht+0x153ee, %rsi
lea addresses_A_ht+0x1b7a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $8900, %r11
mov $99, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1e572, %rbx
nop
nop
inc %rcx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
add $36290, %rsi
lea addresses_UC_ht+0x6f2, %rbx
nop
nop
nop
nop
nop
add $52247, %rdi
mov (%rbx), %r11
nop
sub %rbp, %rbp
lea addresses_D_ht+0x2174, %rdx
add $45929, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rdx)
nop
nop
xor $12754, %rbx
lea addresses_WC_ht+0x6ffa, %rdx
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp $19810, %rbp
lea addresses_normal_ht+0x1172, %rsi
lea addresses_WC_ht+0x1a8c6, %rdi
nop
nop
inc %r11
mov $116, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x53b2, %rsi
lea addresses_D_ht+0x14572, %rdi
nop
nop
nop
add %rdx, %rdx
mov $3, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9

// Store
lea addresses_UC+0xa792, %r10
nop
nop
nop
nop
and $12371, %r12
movb $0x51, (%r10)
cmp $21084, %r10

// Store
lea addresses_D+0x1f4f2, %r14
and %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movaps %xmm7, (%r14)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_RW+0x2072, %r15
nop
nop
nop
nop
nop
xor $11099, %r12
movl $0x51525354, (%r15)
cmp $30991, %r14

// Faulty Load
lea addresses_D+0x1a572, %r14
nop
nop
nop
nop
sub %r10, %r10
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
