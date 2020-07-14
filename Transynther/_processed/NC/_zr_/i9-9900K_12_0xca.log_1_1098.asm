.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x938f, %rsi
lea addresses_WC_ht+0x1de4f, %rdi
nop
cmp %r10, %r10
mov $14, %rcx
rep movsq
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x139fd, %rcx
xor $1429, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub $15879, %r12
lea addresses_UC_ht+0x13e4f, %rsi
lea addresses_UC_ht+0x1074f, %rdi
cmp %rax, %rax
mov $103, %rcx
rep movsb
cmp $44307, %r10
lea addresses_A_ht+0x1664f, %rsi
lea addresses_WC_ht+0x30f, %rdi
nop
nop
and $18128, %rbp
mov $8, %rcx
rep movsw
nop
inc %rbp
lea addresses_WT_ht+0x964f, %r12
xor $53466, %rsi
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x1ba4f, %r12
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%r12)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x6e4f, %rdi
nop
nop
nop
nop
and $51655, %rsi
mov (%rdi), %rbp
nop
dec %rcx
lea addresses_A_ht+0x1664f, %rdi
clflush (%rdi)
nop
nop
cmp %rbp, %rbp
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x8067, %rsi
lea addresses_normal_ht+0x3d6f, %rdi
nop
nop
sub %r9, %r9
mov $86, %rcx
rep movsq
nop
nop
add $48932, %rsi
lea addresses_D_ht+0x17e0f, %rax
cmp $45774, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_RW+0xe65f, %r11
nop
lfence
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
nop
dec %rbx

// Load
mov $0x44f, %rbp
nop
nop
sub $35222, %rbx
vmovaps (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
inc %rbx

// Load
mov $0x391490000000064f, %rdi
clflush (%rdi)
inc %r13
mov (%rdi), %rbx
nop
nop
sub %r12, %r12

// Load
mov $0x3a7238000000004f, %rbx
nop
nop
nop
and $22234, %r8
movb (%rbx), %r13b
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_WT+0x3e4f, %rbx
add %r12, %r12
movw $0x5152, (%rbx)
nop
nop
nop
inc %r8

// Load
lea addresses_normal+0x684f, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov (%rdi), %r8d
nop
nop
sub $49114, %rbx

// Store
lea addresses_normal+0x7e4f, %r13
nop
nop
nop
nop
xor $3339, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
cmp $1430, %rbp

// Store
lea addresses_RW+0x4cdf, %rbp
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rbp)

// Exception!!!
nop
nop
mov (0), %rdi
add %rdi, %rdi

// Store
lea addresses_US+0x1064f, %rdi
nop
nop
inc %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
mov $0x391490000000064f, %r8
nop
add %r11, %r11
mov (%r8), %ebx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 1}
00
*/
