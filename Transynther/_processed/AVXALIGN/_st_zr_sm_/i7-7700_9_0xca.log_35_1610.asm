.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rdi
push %rdx
lea addresses_WC_ht+0x4f2f, %rbx
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rbx
movntdq %xmm5, (%rbx)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x5079, %r8
nop
nop
nop
nop
nop
xor $54472, %r10
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
cmp $64366, %rdx
lea addresses_WC_ht+0x57b5, %r10
nop
nop
nop
nop
nop
inc %rdi
mov (%r10), %r8w
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xb4b5, %rdi
and %rbx, %rbx
movl $0x61626364, (%rdi)
sub %r8, %r8
lea addresses_UC_ht+0x1a3b5, %rbx
nop
nop
nop
nop
inc %r14
mov (%rbx), %rdi
nop
nop
nop
nop
add $47514, %rdi
lea addresses_UC_ht+0x1eab5, %rdx
clflush (%rdx)
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x46bd, %r15
cmp $62291, %rdi
mov (%r15), %ebx
nop
nop
nop
nop
xor $54326, %r14
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x44b5, %r8
nop
nop
and $27406, %r14
movb $0x51, (%r8)
nop
inc %r15

// Store
lea addresses_D+0x92b5, %r15
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
sub $21152, %rax

// Store
lea addresses_WC+0xcdb5, %rbx
add %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovntdq %ymm3, (%rbx)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_US+0x1b5, %rbx
nop
add %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movaps %xmm5, (%rbx)
nop
nop
sub $12058, %rax

// Store
lea addresses_PSE+0x1dbd5, %r8
and $1776, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_D+0x92b5, %r15
add $27304, %rbx
movntdqa (%r15), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 1, '58': 34}
58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
