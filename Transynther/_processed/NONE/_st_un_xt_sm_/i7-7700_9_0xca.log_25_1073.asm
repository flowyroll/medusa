.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x236b, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xff4f, %rsi
lea addresses_A_ht+0x1d2b7, %rdi
nop
xor %r11, %r11
mov $48, %rcx
rep movsq
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Load
lea addresses_RW+0x1172b, %rbp
nop
nop
nop
sub $11256, %r14
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_normal+0xa0b7, %r14
nop
nop
nop
xor $3880, %rcx
movb (%r14), %al
nop
nop
nop
inc %r10

// Load
lea addresses_PSE+0x12a77, %r14
nop
sub $59950, %r10
movaps (%r14), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
cmp $57003, %r14

// Store
lea addresses_WT+0x16d93, %rbp
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor %r14, %r14

// Store
mov $0x2b7, %r14
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
add %rbp, %rbp

// Load
lea addresses_UC+0x1d8b7, %r14
nop
nop
nop
cmp $38921, %r10
movb (%r14), %al
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x14f67, %rbp
nop
inc %rdi
movb $0x51, (%rbp)
nop
xor %rax, %rax

// Store
lea addresses_US+0x8be1, %rax
clflush (%rax)
nop
and $40158, %r8
movb $0x51, (%rax)
and %r10, %r10

// Store
lea addresses_UC+0x4ab7, %rdi
add $47222, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
xor $15513, %rbp

// Faulty Load
lea addresses_UC+0x4ab7, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov (%rdi), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'c2': 1, '8e': 1, 'd8': 1, '72': 1, '58': 10, 'fc': 1, 'c8': 1, '04': 1, '30': 1, 'd0': 1, 'fa': 1, '22': 1, '1a': 1, 'b6': 1, 'e2': 1, '90': 1}
8e 72 c2 58 58 90 58 b6 58 fa 22 58 58 58 58 04 fc 58 c8 30 1a d8 58 d0 e2
*/
