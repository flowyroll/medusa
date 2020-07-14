.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d5fd, %rsi
clflush (%rsi)
nop
sub $40349, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1a875, %rax
nop
add %r14, %r14
mov (%rax), %r11w
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x12fad, %r11
nop
nop
nop
nop
and %r15, %r15
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x34c5, %rdx
nop
nop
nop
nop
nop
sub $19440, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
inc %rax
lea addresses_A_ht+0x444d, %rdx
nop
add $2040, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdx)
nop
sub %r14, %r14
lea addresses_WT_ht+0xb5ad, %r15
nop
nop
nop
nop
nop
mfence
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0xb4ad, %r14
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r14)
nop
sub %r10, %r10
lea addresses_WT_ht+0x1bd6d, %rdx
nop
nop
dec %r11
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r15
nop
and %rsi, %rsi
lea addresses_WC_ht+0x142ad, %rsi
lea addresses_normal_ht+0x13b2d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $13840, %r10
mov $121, %rcx
rep movsq
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x2fad, %rsi
lea addresses_UC_ht+0x163ad, %rdi
nop
add $21713, %r10
mov $79, %rcx
rep movsq
nop
nop
nop
nop
nop
add $45362, %rax
lea addresses_WC_ht+0x1a35, %rsi
lea addresses_D_ht+0x5f2d, %rdi
nop
nop
nop
cmp $6536, %r14
mov $41, %rcx
rep movsw
nop
xor $44918, %rax
lea addresses_A_ht+0xec9d, %rdi
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
cmp %rax, %rax
lea addresses_UC_ht+0x1dfad, %rdx
nop
nop
and $23308, %r10
movw $0x6162, (%rdx)
nop
xor $7963, %r14
lea addresses_D_ht+0x42ed, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %si
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_RW+0xbbad, %rbx
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
mov $0x621a8300000004ad, %r10
nop
nop
nop
xor $49444, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r10)
nop
add $4794, %rax

// Store
lea addresses_D+0x144a5, %r8
nop
nop
nop
nop
nop
add $43550, %rcx
movl $0x51525354, (%r8)
dec %rcx

// Faulty Load
lea addresses_RW+0x77ad, %rax
nop
nop
nop
nop
nop
inc %r9
mov (%rax), %cx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 176}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
