.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbb32, %rsi
lea addresses_WC_ht+0xd46f, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1b67f, %rdi
nop
sub %r8, %r8
movb (%rdi), %r15b
nop
nop
nop
nop
nop
add $61603, %r15
lea addresses_WC_ht+0xa27f, %rsi
lea addresses_UC_ht+0x15a54, %rdi
cmp %r14, %r14
mov $109, %rcx
rep movsl
nop
nop
add $23421, %r12
lea addresses_WC_ht+0xb00f, %r14
nop
nop
nop
xor $60811, %r12
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x165f, %rsi
nop
xor %rdi, %rdi
mov (%rsi), %r12d
nop
lfence
lea addresses_UC_ht+0x46d7, %r14
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x9f7f, %rsi
lea addresses_normal_ht+0x567f, %rdi
add %rbx, %rbx
mov $127, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xcba7, %r8
clflush (%r8)
cmp %r15, %r15
mov (%r8), %r12w
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x2a7f, %rsi
nop
nop
and %r8, %r8
mov (%rsi), %ebx
nop
sub %r8, %r8
lea addresses_D_ht+0x5e7f, %rsi
lea addresses_A_ht+0x1da7f, %rdi
nop
xor %rbx, %rbx
mov $8, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_D_ht+0x82d3, %rsi
lea addresses_normal_ht+0x11b9f, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $80, %rcx
rep movsw
nop
nop
nop
nop
xor $38460, %rbx
lea addresses_D_ht+0x15a7f, %rdi
add %r15, %r15
mov (%rdi), %r14
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x472f, %rsi
lea addresses_D_ht+0x1af7f, %rdi
clflush (%rdi)
add $20318, %r8
mov $63, %rcx
rep movsl
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xe27f, %rsi
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x173a7, %r12
nop
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%r12)
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x16cff, %r12
nop
nop
nop
and $6938, %rdi
movw $0x5152, (%r12)
nop
nop
add %rdi, %rdi

// Load
mov $0x67f, %r9
nop
nop
nop
add $2269, %rsi
mov (%r9), %rdx
nop
nop
cmp $9623, %rdi

// Load
lea addresses_RW+0x1527f, %r9
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r9), %r11
nop
cmp %rdx, %rdx

// Store
lea addresses_RW+0x17cbf, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
xor $32897, %r9

// Store
lea addresses_WT+0x4baf, %rdx
nop
inc %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
add $34064, %rdx

// Faulty Load
lea addresses_RW+0xaa7f, %r11
nop
nop
nop
xor %r12, %r12
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'32': 92}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
