.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1eed4, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
movb (%r8), %r9b
nop
sub $6129, %r13
lea addresses_WT_ht+0x11f50, %r15
nop
nop
nop
nop
xor $22714, %r13
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x2c20, %rsi
lea addresses_WT_ht+0x9a50, %rdi
nop
nop
add %r9, %r9
mov $13, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xc350, %rsi
lea addresses_D_ht+0x1d37c, %rdi
nop
nop
nop
nop
and $41246, %r9
mov $122, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1ce4c, %r9
sub %r8, %r8
mov (%r9), %cx
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x117e8, %r8
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
cmp $17753, %r13
lea addresses_WC_ht+0x13950, %rsi
nop
nop
nop
nop
xor $58933, %r9
movb $0x61, (%rsi)
nop
nop
nop
cmp $2707, %r13
lea addresses_WT_ht+0x1c250, %r15
cmp %rsi, %rsi
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
add $26451, %rdx
lea addresses_D_ht+0x1b050, %rsi
lea addresses_WC_ht+0xaf50, %rdi
clflush (%rdi)
nop
inc %r15
mov $6, %rcx
rep movsw
nop
xor $30794, %r15
lea addresses_WC_ht+0xd50, %rsi
lea addresses_A_ht+0x1b2d4, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
mov $107, %rcx
rep movsl
nop
nop
dec %r13
lea addresses_WC_ht+0x1c3c0, %rsi
lea addresses_normal_ht+0xce50, %rdi
nop
nop
nop
nop
xor $21923, %rdx
mov $101, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x10750, %rsi
lea addresses_normal_ht+0x1a438, %rdi
nop
nop
add $11610, %r9
mov $46, %rcx
rep movsl
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0xd350, %r9
nop
and $7632, %rcx
mov (%r9), %esi
nop
add %rcx, %rcx
lea addresses_WT_ht+0x2532, %rsi
lea addresses_WT_ht+0x1be60, %rdi
nop
nop
nop
add %r13, %r13
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $59698, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x18350, %rax
cmp $51865, %r10
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x2260, %r12
nop
cmp %rdi, %rdi
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
inc %r10

// Load
lea addresses_D+0x8a90, %rbx
nop
add $35347, %r10
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx

// Exception!!!
nop
nop
mov (0), %r12
nop
nop
and $56073, %r15

// Store
lea addresses_UC+0x12cbc, %r15
xor %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r15)
cmp %rax, %rax

// Store
mov $0x7a0, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%r12)
nop
nop
nop
add $32726, %rdx

// Load
lea addresses_PSE+0x13390, %r15
nop
nop
add %rdx, %rdx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
add %r12, %r12

// Faulty Load
mov $0x4a97ff0000000750, %rax
clflush (%rax)
nop
xor $61918, %rbx
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'00': 13, '48': 39, '45': 9}
00 48 48 48 48 48 00 00 48 45 48 48 48 48 45 48 48 48 45 48 45 00 00 48 48 45 45 48 00 48 00 48 48 00 48 00 48 45 48 48 48 48 48 48 48 48 48 48 45 00 48 48 00 48 00 48 48 48 48 00 45
*/
