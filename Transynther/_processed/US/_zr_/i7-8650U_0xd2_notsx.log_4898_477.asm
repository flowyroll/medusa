.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11b52, %rdi
nop
nop
nop
nop
nop
sub $24052, %rdx
movb $0x61, (%rdi)
sub $36756, %r8
lea addresses_normal_ht+0x1492, %rsi
xor $57699, %rbp
movb (%rsi), %r8b
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x19d2, %rbp
nop
nop
nop
nop
dec %r15
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1b192, %rsi
lea addresses_WC_ht+0x13b12, %rdi
nop
nop
xor $55215, %r15
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $10373, %rsi
lea addresses_A_ht+0x1dc92, %rdi
nop
nop
sub %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x12892, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rcx)
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x18c92, %rcx
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1ec92, %rsi
lea addresses_UC_ht+0x4322, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $126, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_D_ht+0x9c0d, %rsi
lea addresses_UC_ht+0x111b8, %rdi
nop
nop
and $58341, %rdx
mov $80, %rcx
rep movsl
nop
nop
nop
xor $27267, %rbp
lea addresses_UC_ht+0x1580e, %rdi
nop
and $23832, %r8
mov (%rdi), %r15w
nop
nop
nop
nop
nop
and $51191, %rdx
lea addresses_D_ht+0x16c72, %r8
add %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
cmp $60076, %rsi
lea addresses_WC_ht+0x1c492, %rdi
nop
nop
nop
sub %rbp, %rbp
mov (%rdi), %r15
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x180d2, %rbp
nop
nop
nop
and $58451, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
and $31970, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0xac02, %rax
nop
nop
nop
nop
xor %rbp, %rbp
movb (%rax), %r10b
nop
nop
nop
xor $55275, %rbp

// Load
lea addresses_WC+0xa092, %r10
nop
nop
nop
dec %r11
mov (%r10), %edx
nop
nop
nop
nop
inc %r8

// REPMOV
lea addresses_UC+0x1ed92, %rsi
lea addresses_D+0xacc2, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $70, %rcx
rep movsb
nop
nop
nop
xor $12584, %r11

// Store
lea addresses_WT+0x1d692, %r11
clflush (%r11)
nop
xor $26060, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
nop
add $64741, %rsi

// Store
mov $0x4f4f6200000004d2, %r10
nop
nop
add $61602, %rdx
movb $0x51, (%r10)
cmp $37616, %r11

// Store
lea addresses_D+0x1c118, %rcx
nop
nop
sub $40227, %rsi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WC+0x1dc92, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
inc %rsi

// Store
lea addresses_US+0xa02, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%rax)
nop
nop
nop
xor %rdx, %rdx

// Store
mov $0x692, %r10
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x10492, %rax
nop
nop
nop
and $27560, %rbp
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'00': 4898}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
