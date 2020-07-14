.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1609, %rsi
lea addresses_WC_ht+0x13369, %rdi
sub $38438, %r12
mov $113, %rcx
rep movsq
cmp $30363, %rbx
lea addresses_D_ht+0x16589, %r8
sub $56126, %r13
mov (%r8), %r12
inc %rsi
lea addresses_UC_ht+0x1d189, %rsi
nop
nop
nop
inc %r13
mov (%rsi), %r12w
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x11689, %rsi
lea addresses_UC_ht+0x17e89, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $74, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $43676, %r8
lea addresses_WC_ht+0x9, %rsi
lea addresses_D_ht+0xeef6, %rdi
nop
nop
nop
add %r13, %r13
mov $33, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x9c09, %rsi
lea addresses_UC_ht+0x6989, %rdi
nop
inc %r12
mov $75, %rcx
rep movsl
nop
nop
sub $25364, %r13
lea addresses_WC_ht+0xf201, %rbx
dec %rsi
movb $0x61, (%rbx)
nop
nop
cmp $1940, %r14
lea addresses_normal_ht+0x1ecc9, %rcx
nop
nop
inc %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x11e89, %rsi
lea addresses_normal_ht+0x6586, %rdi
nop
nop
nop
add %r12, %r12
mov $52, %rcx
rep movsb
nop
nop
add %r13, %r13
lea addresses_A_ht+0x1d09, %rbx
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
sub $10447, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x17a81, %rax
nop
nop
nop
nop
mfence
mov (%rax), %r14
nop
nop
nop
nop
add $61606, %rcx

// Store
lea addresses_UC+0x17879, %r10
nop
nop
nop
inc %r8
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_A+0xa1c1, %r14
nop
nop
nop
add $37564, %rsi
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
sub %r14, %r14

// Load
lea addresses_WC+0x1f17e, %rsi
nop
nop
nop
nop
nop
dec %r8
mov (%rsi), %ecx
nop
nop
sub %r10, %r10

// Load
lea addresses_US+0x4fa5, %rcx
nop
cmp %r8, %r8
mov (%rcx), %r10d
and %rcx, %rcx

// Store
mov $0xd41, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp $52042, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
sub $64571, %r14

// Faulty Load
lea addresses_A+0x11e89, %rsi
add $34521, %rax
mov (%rsi), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 25}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
