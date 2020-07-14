.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a61c, %rsi
lea addresses_UC_ht+0x1c3f8, %rdi
nop
nop
add $4129, %r12
mov $108, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xcb68, %rcx
xor $63145, %rdi
movb $0x61, (%rcx)
nop
nop
nop
add $7486, %rcx
lea addresses_A_ht+0x114f8, %rsi
lea addresses_WC_ht+0x2e8, %rdi
nop
nop
inc %r12
mov $27, %rcx
rep movsw
nop
nop
nop
cmp $3620, %rsi
lea addresses_WC_ht+0x49f8, %r13
nop
nop
nop
nop
and $61879, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %r13
movaps %xmm0, (%r13)
xor %rsi, %rsi
lea addresses_WT_ht+0x6f8, %r13
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub $58330, %r12
lea addresses_A_ht+0xc878, %rsi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0xd2f8, %rbp
nop
nop
and $41846, %r13
movaps (%rbp), %xmm5
vpextrq $1, %xmm5, %rbx
nop
sub $49559, %rbx

// Store
lea addresses_WT+0xd678, %r8
nop
nop
nop
sub %r13, %r13
movb $0x51, (%r8)
nop
nop
nop
cmp $1263, %rax

// Store
lea addresses_WC+0x6038, %rax
nop
xor $15090, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
and $47426, %r8

// Store
lea addresses_UC+0x18ef8, %rcx
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
lfence

// Store
lea addresses_normal+0xda38, %rax
clflush (%rax)
nop
nop
cmp %rbx, %rbx
movb $0x51, (%rax)
nop
nop
nop
and $59600, %r10

// Store
lea addresses_PSE+0x10f7a, %r8
nop
nop
xor $57320, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
dec %r8

// REPMOV
lea addresses_UC+0x12800, %rsi
lea addresses_WT+0x146f8, %rdi
nop
xor $25084, %r10
mov $78, %rcx
rep movsw
add $53619, %rsi

// Faulty Load
mov $0x45ff5900000006f8, %r13
nop
inc %rdi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'7e': 1}
7e
*/
