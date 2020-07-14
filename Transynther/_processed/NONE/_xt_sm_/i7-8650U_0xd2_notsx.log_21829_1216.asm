.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d03e, %rdi
nop
nop
nop
inc %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
xor $65064, %rcx
lea addresses_WC_ht+0x1b40e, %rsi
lea addresses_WC_ht+0x3ad4, %rdi
nop
nop
nop
inc %r14
mov $73, %rcx
rep movsq
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x13dd4, %r14
nop
nop
nop
nop
sub $35395, %r9
mov (%r14), %rdi
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xa314, %rsi
lea addresses_WC_ht+0x189d4, %rdi
sub $52736, %rbp
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $52776, %rbp
lea addresses_normal_ht+0x2954, %r9
nop
nop
dec %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r9
vmovaps %ymm0, (%r9)
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0xe72d, %rsi
lea addresses_A_ht+0x189d4, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $24, %rcx
rep movsb
nop
cmp %rax, %rax
lea addresses_UC_ht+0x10c74, %rcx
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rcx)
and $18906, %rbp
lea addresses_WT_ht+0x15dd4, %rsi
lea addresses_WT_ht+0x9af4, %rdi
clflush (%rsi)
nop
nop
sub $31304, %rax
mov $66, %rcx
rep movsb
nop
xor $16951, %rsi
lea addresses_A_ht+0x121d4, %rsi
lea addresses_D_ht+0xd1ac, %rdi
nop
nop
nop
sub %r9, %r9
mov $126, %rcx
rep movsb
nop
cmp %r8, %r8
lea addresses_D_ht+0x1ccd4, %rsi
lea addresses_normal_ht+0x2984, %rdi
clflush (%rsi)
nop
add %rbp, %rbp
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x14ea4, %rsi
lea addresses_WC_ht+0xc2d4, %rdi
nop
add $58395, %rbp
mov $43, %rcx
rep movsw
nop
nop
sub $13208, %rax
lea addresses_D_ht+0x79ae, %rax
clflush (%rax)
nop
xor $57951, %rsi
movl $0x61626364, (%rax)
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x2d94, %rax
nop
nop
nop
dec %rbp
movb $0x61, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0xd254, %rsi
lea addresses_WT_ht+0x1bd4, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $104, %rcx
rep movsw
nop
nop
sub $23868, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x5b54, %rax
clflush (%rax)
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rax)
add %rbx, %rbx

// Store
lea addresses_A+0x7f74, %r10
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
cmp $280, %rbx

// Store
lea addresses_UC+0xf3d4, %r10
nop
xor %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_UC+0x16dd4, %r10
nop
nop
nop
inc %r13
movw $0x5152, (%r10)
nop
add $44255, %rdi

// Store
lea addresses_A+0xb3b4, %r10
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r10)
cmp %rdi, %rdi

// Store
lea addresses_A+0xe5d4, %rax
nop
xor %r10, %r10
movw $0x5152, (%rax)
nop
nop
inc %rax

// Store
lea addresses_normal+0x1fd38, %rax
nop
nop
nop
nop
nop
add $24582, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
cmp $25900, %r10

// REPMOV
lea addresses_A+0xe5d4, %rsi
lea addresses_D+0x1f86c, %rdi
nop
nop
nop
xor %r13, %r13
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0xe5d4, %rax
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rax), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
