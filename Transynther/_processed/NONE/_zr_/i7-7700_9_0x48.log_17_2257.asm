.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1154, %rsi
lea addresses_D_ht+0xc154, %rdi
nop
nop
xor %r13, %r13
mov $11, %rcx
rep movsl
dec %rax
lea addresses_A_ht+0xb4, %rsi
lea addresses_normal_ht+0x1e354, %rdi
xor %r14, %r14
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xbbd4, %rsi
lea addresses_UC_ht+0x1c554, %rdi
nop
nop
add $30693, %rbx
mov $5, %rcx
rep movsw
nop
nop
nop
nop
xor $14542, %rbx
lea addresses_A_ht+0x1b8d4, %rsi
lea addresses_WC_ht+0x5ac, %rdi
nop
xor %r14, %r14
mov $127, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x1ae21, %rsi
lea addresses_normal_ht+0x5fd4, %rdi
xor %rdx, %rdx
mov $33, %rcx
rep movsb
nop
nop
nop
nop
and $39810, %rdi
lea addresses_normal_ht+0xf25e, %r14
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x17954, %rdx
nop
nop
sub %r14, %r14
movw $0x6162, (%rdx)
nop
add $32969, %r14
lea addresses_D_ht+0x1aa54, %rsi
cmp $32987, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0xfe3c, %r13
clflush (%r13)
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovaps %ymm0, (%r13)
nop
nop
nop
nop
and $1034, %rbp

// Store
lea addresses_UC+0x1f554, %rdi
sub $927, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
and $17713, %rdi

// Store
lea addresses_UC+0xe554, %rax
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%rax)
nop
nop
cmp %r9, %r9

// Load
lea addresses_US+0x1e614, %r13
cmp %rdi, %rdi
mov (%r13), %r15d
nop
nop
inc %r15

// Store
mov $0x31c3c60000000f5c, %rsi
clflush (%rsi)
sub %r15, %r15
movw $0x5152, (%rsi)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_US+0x13354, %r13
nop
nop
and $31218, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
xor $37840, %r15

// Store
lea addresses_RW+0x1528c, %rsi
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
and %rax, %rax

// Store
lea addresses_WT+0x109d0, %r13
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%r13)
sub %rsi, %rsi

// Faulty Load
lea addresses_WC+0x10d54, %rbp
nop
nop
nop
nop
and $5479, %r9
mov (%rbp), %r15w
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
