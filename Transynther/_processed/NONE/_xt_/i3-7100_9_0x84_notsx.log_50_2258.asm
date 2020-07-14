.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
lea addresses_UC_ht+0x198ac, %r14
nop
nop
cmp %r8, %r8
mov (%r14), %r11w
nop
cmp %r13, %r13
lea addresses_WT_ht+0x14fc, %r11
nop
add %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r11)
nop
cmp $26778, %r11
lea addresses_D_ht+0x14148, %rax
nop
xor %rbx, %rbx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1212c, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r8), %rax
nop
nop
and $21474, %rbp
lea addresses_normal_ht+0xfa14, %r8
nop
sub %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x1b4ac, %r11
sub %rax, %rax
movl $0x61626364, (%r11)
nop
nop
nop
and $19453, %r11
lea addresses_normal_ht+0x64ac, %rbx
nop
nop
nop
nop
and $47151, %rbp
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm6
vpextrq $0, %xmm6, %rax
nop
xor $29398, %r8
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x1abac, %rax
and %rcx, %rcx
movb $0x51, (%rax)
nop
nop
nop
sub $24529, %rax

// Load
lea addresses_RW+0x1d2fc, %rcx
nop
nop
nop
and %r14, %r14
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
cmp %rax, %rax

// Faulty Load
lea addresses_RW+0x1bcac, %rbp
dec %rax
mov (%rbp), %edi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'32': 50}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
