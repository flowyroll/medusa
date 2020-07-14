.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x122c8, %r14
nop
nop
nop
and $55848, %rcx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x41e0, %rsi
lea addresses_UC_ht+0x13628, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $55, %rcx
rep movsl
nop
nop
sub $30305, %rax
lea addresses_A_ht+0x17548, %rsi
lea addresses_D_ht+0x1ed40, %rdi
nop
nop
inc %r10
mov $78, %rcx
rep movsl
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x4ac8, %rcx
add %r14, %r14
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x16ec8, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
movb (%rcx), %bl
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1a0c8, %rsi
lea addresses_UC_ht+0x19b88, %rdi
mfence
mov $75, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xc548, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and $28829, %r10
movb (%r14), %r15b
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xc548, %rsi
lea addresses_A_ht+0x1d548, %rdi
nop
nop
nop
add $53827, %rax
mov $1, %rcx
rep movsw
and %rdi, %rdi
lea addresses_A_ht+0xcb88, %rcx
nop
nop
nop
nop
nop
sub $15803, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x11b88, %rax
nop
nop
dec %r15
mov (%rax), %rdi
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x348, %rcx
nop
add $41967, %r14
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xa847, %rax
nop
nop
and $32605, %rdx
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %rax
xor $45916, %r8

// Load
lea addresses_WT+0x9548, %rdi
cmp $739, %rsi
mov (%rdi), %ax
cmp %rdx, %rdx

// Store
lea addresses_A+0x1b438, %r10
nop
nop
nop
nop
nop
add $45262, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
cmp %r10, %r10

// Store
lea addresses_normal+0x1cb48, %r8
nop
xor $44062, %r10
movb $0x51, (%r8)
nop
nop
dec %rax

// Store
lea addresses_WT+0xd508, %rdx
nop
nop
sub $57702, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_US+0x8d48, %rax
nop
nop
and $51354, %r10
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
