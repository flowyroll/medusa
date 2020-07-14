.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xed83, %r10
nop
nop
nop
and $39406, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r10)
cmp %r14, %r14
lea addresses_WT_ht+0x162cd, %rsi
lea addresses_normal_ht+0x9d83, %rdi
nop
nop
nop
nop
nop
sub $38606, %r10
mov $49, %rcx
rep movsw
dec %r14
lea addresses_D_ht+0x9a0b, %rsi
nop
nop
nop
nop
xor $37418, %r14
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r13
nop
sub %r14, %r14
lea addresses_UC_ht+0x48c7, %r10
nop
nop
nop
nop
sub $49350, %r14
mov (%r10), %si
sub %rdi, %rdi
lea addresses_UC_ht+0xc495, %rsi
add %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x19903, %r13
cmp %r10, %r10
movb $0x61, (%r13)
dec %rsi
lea addresses_WC_ht+0x18b83, %r10
nop
cmp $5691, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $44568, %rsi
lea addresses_A_ht+0xe583, %r10
nop
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%r10)
inc %r13
lea addresses_WC_ht+0x9d83, %rsi
lea addresses_UC_ht+0x371b, %rdi
nop
nop
nop
nop
nop
add $19193, %rdx
mov $87, %rcx
rep movsb
sub %rdx, %rdx
lea addresses_D_ht+0x1b25b, %rsi
lea addresses_normal_ht+0x15183, %rdi
clflush (%rdi)
nop
cmp $52292, %r14
mov $76, %rcx
rep movsw
nop
cmp %r13, %r13
lea addresses_D_ht+0x18003, %rcx
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rcx
movaps %xmm6, (%rcx)
nop
nop
nop
add $38837, %rcx
lea addresses_UC_ht+0x95c3, %r14
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
sub $60112, %rdx
lea addresses_D_ht+0x7283, %rsi
lea addresses_D_ht+0x1bd83, %rdi
nop
nop
cmp $21598, %r10
mov $38, %rcx
rep movsb
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x18013, %rdi
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_normal+0x11183, %r9
nop
nop
nop
nop
cmp $40897, %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp $10224, %rsi

// Store
lea addresses_WT+0x13193, %rdi
and $33533, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
sub $40430, %r14

// Load
lea addresses_UC+0x1c5b, %rax
nop
nop
nop
sub %rdx, %rdx
mov (%rax), %rsi
nop
nop
nop
nop
nop
cmp $35705, %rax

// Load
lea addresses_US+0x1583, %rbp
nop
nop
cmp %rdx, %rdx
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
xor $55181, %rdi

// Faulty Load
lea addresses_US+0x1583, %r9
clflush (%r9)
nop
nop
nop
add $306, %rdx
vmovaps (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'46': 24, '00': 3}
00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00
*/
