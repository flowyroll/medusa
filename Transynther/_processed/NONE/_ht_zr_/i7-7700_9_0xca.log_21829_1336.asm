.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16b28, %rbx
nop
nop
nop
nop
nop
cmp $22305, %r14
mov (%rbx), %r10
nop
inc %rax
lea addresses_WC_ht+0x1e6a8, %r12
dec %rbx
movb $0x61, (%r12)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x47a8, %r12
nop
nop
add $7592, %r8
movl $0x61626364, (%r12)
nop
nop
nop
and $24864, %r8
lea addresses_A_ht+0x1eec, %rbx
nop
nop
nop
nop
and $885, %r8
movb $0x61, (%rbx)
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x1d0a8, %rsi
lea addresses_D_ht+0x15ca8, %rdi
add $52473, %r12
mov $34, %rcx
rep movsq
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x847c, %r12
nop
nop
nop
and %r8, %r8
mov (%r12), %r14d
xor $47291, %rdi
lea addresses_D_ht+0x9828, %rax
clflush (%rax)
nop
nop
nop
and $43093, %rdi
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x174a8, %rsi
clflush (%rsi)
nop
nop
inc %rdi
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x7fde, %rsi
lea addresses_WC_ht+0x2ba8, %rdi
nop
nop
nop
nop
inc %rax
mov $69, %rcx
rep movsl
dec %r12
lea addresses_WT_ht+0x108a8, %rsi
lea addresses_UC_ht+0x18228, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $31387, %r12
mov $92, %rcx
rep movsw
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0xcfa8, %r14
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x197a8, %r14
and $18543, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%r14)
inc %r13

// Faulty Load
lea addresses_WT+0xd0a8, %r14
nop
nop
nop
sub %rbx, %rbx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'46': 388, '00': 3501, '49': 10905, '45': 7035}
49 49 49 45 49 45 49 45 49 49 49 45 49 49 45 00 45 45 49 45 49 49 00 49 49 49 45 49 49 45 45 00 49 49 49 45 49 45 49 45 49 49 45 49 49 46 49 45 49 45 00 49 49 00 00 45 00 45 49 49 49 49 45 45 49 45 49 49 49 45 46 49 00 49 00 00 49 49 49 46 49 49 49 49 45 49 49 49 45 49 49 00 49 49 49 49 49 45 49 49 49 49 49 00 49 49 00 45 49 45 45 49 49 45 49 45 00 45 45 45 49 49 49 49 00 45 49 49 00 45 49 49 00 49 45 00 45 49 00 49 46 45 00 49 49 49 45 00 49 49 49 49 49 00 45 00 49 49 49 49 49 00 49 49 49 00 49 49 45 45 49 45 49 45 45 00 49 00 45 49 49 45 49 00 49 49 45 49 00 45 45 45 49 49 00 49 00 49 45 00 45 49 45 49 49 49 49 00 00 45 00 49 46 49 49 49 49 49 46 45 00 45 45 45 49 45 49 00 45 49 45 45 00 45 45 45 49 49 49 00 45 00 49 00 49 49 00 45 49 45 45 49 45 00 49 49 45 00 49 49 45 00 45 49 45 45 49 49 49 45 49 00 45 49 00 45 49 49 45 00 45 49 49 00 49 45 00 45 45 45 49 49 49 49 45 49 00 49 45 45 49 49 45 00 45 49 00 49 46 45 49 49 00 49 49 45 00 45 49 49 45 46 49 49 49 49 00 45 00 00 49 49 45 49 49 49 00 45 49 49 49 49 45 45 49 00 45 49 00 49 45 45 49 00 49 49 49 49 49 00 49 45 45 49 45 45 49 49 49 49 46 49 49 49 49 45 00 45 49 49 49 49 49 00 49 49 45 45 49 00 49 49 49 00 49 45 00 49 49 00 45 49 45 49 45 45 49 45 49 49 49 00 49 46 45 49 49 49 00 00 49 49 49 49 45 49 49 45 49 00 45 45 00 45 49 45 00 49 49 00 45 49 45 49 49 49 45 49 45 49 49 46 45 00 49 49 45 49 00 45 00 45 45 49 00 49 49 49 49 45 49 45 49 49 00 45 49 49 45 45 45 45 49 45 45 45 49 49 49 49 49 45 49 49 49 49 49 49 49 00 00 00 45 49 49 49 49 00 49 49 45 49 45 49 45 49 46 45 00 49 45 45 49 45 49 49 49 49 49 49 45 49 46 45 45 49 49 49 49 45 46 49 49 45 45 00 49 45 45 00 45 49 49 45 49 49 49 45 49 49 49 49 49 00 45 46 49 00 00 49 45 49 45 49 00 49 49 45 49 49 49 49 45 49 49 49 49 49 49 45 00 00 49 49 46 45 49 49 45 49 00 00 45 45 45 45 49 49 00 49 00 49 49 45 49 45 49 49 45 49 49 45 45 45 45 49 00 00 45 49 49 46 49 49 45 45 00 45 49 49 45 45 49 49 49 00 45 45 45 49 49 49 49 49 45 49 00 45 49 45 49 00 00 45 49 49 49 45 46 45 00 45 49 00 45 00 49 45 49 49 45 45 45 45 49 49 49 49 49 49 00 49 49 49 45 45 45 49 00 49 45 45 00 45 49 49 49 49 45 45 49 46 49 49 49 45 49 00 49 49 49 45 45 45 45 49 45 49 00 45 49 49 45 45 46 45 49 49 49 49 45 45 45 49 00 45 45 49 45 49 00 45 49 49 45 45 00 45 46 00 45 49 49 49 49 45 49 49 00 45 45 00 45 49 00 49 45 49 45 49 45 45 49 00 00 49 49 49 45 45 45 45 49 45 49 49 00 45 45 49 45 49 49 49 45 46 45 00 45 49 49 45 00 49 45 49 00 45 49 45 45 49 49 49 45 46 49 45 49 49 00 45 49 49 49 00 45 49 00 45 49 49 49 45 45 45 49 49 00 49 49 00 45 00 45 00 00 49 45 49 45 49 00 45 49 45 45 45 49 49 49 49 49 45 45 00 45 49 00 00 00 00 45 45 49 00 45 49 00 45 49 45 49 49 49 49 45 45 45 49 00 45 49 49 49 49 49 45 00 49 00 45 00 49 45 49 49 45 49 45 45 49 45 49 49 49 45 00 45 45 45 49 00 45 49 45 49 45 49 45 49 00 49 45 45 00 49 49 49 00 00 49 00 45 46 49 00 49 45 45 45 45 45 45 00 45 45 49 49 49 00 00 45 49 49 45 00 49 45 49 45 49 46 45 49 49 00 00 00 45 49 49 49 49 49 49 45 49 49 49
*/
