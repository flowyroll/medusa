.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5ad5, %rax
nop
nop
nop
nop
nop
add $7530, %rbx
mov (%rax), %r13d
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xead5, %rsi
lea addresses_A_ht+0x4841, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
mov $86, %rcx
rep movsq
nop
nop
and $31370, %r13
lea addresses_normal_ht+0x1b3f5, %rax
nop
nop
nop
sub %r8, %r8
mov (%rax), %r13w
nop
nop
and $25072, %rsi
lea addresses_D_ht+0xad5, %r13
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r13
vmovaps %ymm6, (%r13)
nop
nop
dec %rsi
lea addresses_A_ht+0x18355, %r13
nop
nop
add $44036, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %r13
movaps %xmm1, (%r13)
nop
xor $54136, %rbx
lea addresses_UC_ht+0xc2d5, %rbx
nop
inc %rax
mov (%rbx), %r8
nop
nop
nop
nop
nop
sub $32677, %r8
lea addresses_A_ht+0x5b55, %rsi
lea addresses_A_ht+0x1ec15, %rdi
xor $21101, %rbx
mov $107, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x15ad5, %rbx
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
cmp $58345, %rbx
lea addresses_A_ht+0xbb45, %rsi
lea addresses_WC_ht+0xfb99, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r13, %r13
mov $115, %rcx
rep movsq
nop
sub $34597, %r13
lea addresses_D_ht+0x14315, %rsi
lea addresses_UC_ht+0x1b115, %rdi
nop
nop
add $55642, %r10
mov $66, %rcx
rep movsb
nop
nop
nop
cmp $30964, %r13
lea addresses_normal_ht+0x83d5, %rsi
lea addresses_WC_ht+0x69a1, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $90, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x16ed5, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_RW+0x42d5, %rdi
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
add %rbp, %rbp

// Store
mov $0xa15, %r14
nop
nop
nop
nop
add %rax, %rax
movb $0x51, (%r14)
nop
xor $7057, %r15

// Faulty Load
lea addresses_A+0xb2d5, %rbp
nop
nop
nop
add %rdx, %rdx
movb (%rbp), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'d0': 6, '58': 21823}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
