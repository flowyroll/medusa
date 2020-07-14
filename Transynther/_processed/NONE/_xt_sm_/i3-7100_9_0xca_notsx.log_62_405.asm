.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13d46, %rsi
lea addresses_UC_ht+0x8ba6, %rdi
nop
nop
nop
xor $57349, %r14
mov $21, %rcx
rep movsb
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xa646, %r12
nop
nop
nop
and $8802, %rdx
mov (%r12), %rax
nop
nop
inc %r14
lea addresses_D_ht+0x11946, %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x2946, %rcx
dec %r14
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
nop
sub $31378, %r14
lea addresses_normal_ht+0x14ac6, %rsi
lea addresses_WC_ht+0x1ee46, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $125, %rcx
rep movsw
nop
and $3274, %rbp
lea addresses_UC_ht+0xf86, %rsi
lea addresses_WT_ht+0x18746, %rdi
nop
nop
dec %rbp
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $63758, %rcx
lea addresses_WC_ht+0xa8fa, %r12
nop
nop
nop
cmp %rdi, %rdi
movb (%r12), %cl
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x14286, %r14
nop
nop
nop
xor %rax, %rax
mov (%r14), %r12w
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x181be, %rdx
nop
nop
add $27825, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x113b6, %rsi
lea addresses_D_ht+0x11946, %rdi
clflush (%rdi)
dec %rax
mov $32, %rcx
rep movsw
nop
sub $53041, %rax
lea addresses_normal_ht+0xb946, %rsi
lea addresses_WC_ht+0x16766, %rdi
clflush (%rdi)
nop
add %r14, %r14
mov $31, %rcx
rep movsl
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x44a6, %rbp
nop
add $25833, %rcx
mov (%rbp), %rdi
nop
nop
nop
nop
nop
add $60876, %rax
lea addresses_normal_ht+0x138c6, %rsi
nop
nop
and $21368, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x11aa, %rsi
lea addresses_normal_ht+0x14026, %rdi
nop
nop
dec %rax
mov $64, %rcx
rep movsq
nop
add $13733, %rax
lea addresses_normal_ht+0x18a1c, %rbp
nop
nop
inc %rcx
movb $0x61, (%rbp)
add $19102, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rdi
push %rdx

// Load
lea addresses_RW+0xda86, %rbx
nop
nop
nop
xor $26320, %r11
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0xe946, %r11
clflush (%r11)
nop
nop
nop
add $28739, %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_RW+0x204f, %rbx
nop
nop
nop
nop
xor $48632, %r13
movl $0x51525354, (%rbx)
nop
nop
sub $33438, %r13

// Store
lea addresses_A+0x3946, %rdx
clflush (%rdx)
nop
and %rdi, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
sub $58685, %r13

// Faulty Load
lea addresses_A+0x3946, %r13
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r13), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'52': 62}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
