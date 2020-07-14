.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11f04, %rsi
nop
nop
nop
nop
dec %rax
mov (%rsi), %r12
nop
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1a0c4, %rdi
nop
and $20393, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
nop
and %rsi, %rsi
lea addresses_D_ht+0x15714, %r13
nop
nop
nop
cmp %rax, %rax
mov (%r13), %r12d
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xf954, %rbx
cmp %rsi, %rsi
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
cmp $56522, %r8
lea addresses_WC_ht+0x19fce, %rdi
and $17512, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rdi)
add $29084, %r13
lea addresses_WT_ht+0x15b74, %rsi
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
sub %r12, %r12
lea addresses_D_ht+0xcb14, %r8
nop
xor $37319, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
nop
nop
sub $65136, %rax
lea addresses_UC_ht+0x18344, %rsi
lea addresses_UC_ht+0x127c4, %rdi
nop
nop
nop
nop
nop
cmp $59236, %rbx
mov $34, %rcx
rep movsw
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1edc4, %rdi
nop
nop
nop
sub $47280, %rcx
movw $0x6162, (%rdi)
inc %rdi
lea addresses_normal_ht+0x10bc4, %rdi
nop
nop
nop
inc %rax
movb (%rdi), %cl
nop
cmp $63398, %r8
lea addresses_A_ht+0x13bc4, %rcx
nop
nop
nop
nop
nop
and $30741, %rdi
mov (%rcx), %esi
nop
nop
nop
xor $18688, %r8
lea addresses_A_ht+0x64a4, %rsi
nop
xor %rcx, %rcx
mov (%rsi), %rbx
inc %r12
lea addresses_UC_ht+0xc9e4, %r8
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
add $26803, %rbx
lea addresses_UC_ht+0xdce4, %r8
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r8)
nop
nop
xor $39905, %rdi
lea addresses_UC_ht+0x12c44, %rdi
nop
nop
nop
nop
xor $39475, %r13
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0xb3c4, %rbx
inc %r12
movb $0x51, (%rbx)
nop
nop
add $2057, %r8

// Store
lea addresses_WC+0xe3c4, %r12
clflush (%r12)
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r12)
dec %r8

// Load
lea addresses_WC+0x1efc4, %r10
clflush (%r10)
nop
nop
dec %rdx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
inc %rbp

// Store
lea addresses_WC+0x72c4, %rbp
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%rbp)

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
xor $30746, %r8

// Store
lea addresses_A+0x1eba4, %rdx
sub %r12, %r12
movb $0x51, (%rdx)
nop
sub %rbx, %rbx

// Store
mov $0x1373c70000000bc4, %rbp
nop
nop
nop
nop
nop
add $51760, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
add $2432, %r14

// Store
mov $0x33c, %r8
nop
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
add $34701, %r8

// Store
lea addresses_UC+0xf464, %rbx
nop
sub %r10, %r10
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
and $21252, %r10

// Load
lea addresses_US+0x1b3c4, %r12
nop
nop
and %r8, %r8
movups (%r12), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
and %r12, %r12

// Faulty Load
mov $0x1373c70000000bc4, %rdx
nop
nop
nop
sub $28043, %r10
mov (%rdx), %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 16909, '00': 4920}
58 58 00 58 58 58 58 00 58 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 58 00 00 00 58 58 58 00 58 00 00 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 00 00 00 00 58 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 00 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 00 00 58 58 00 00 58 58 58 00 58 58 58 00 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58
*/
