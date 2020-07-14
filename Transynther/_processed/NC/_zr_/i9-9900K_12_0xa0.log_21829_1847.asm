.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13b90, %rsi
lea addresses_normal_ht+0x10aa8, %rdi
clflush (%rdi)
nop
cmp %r13, %r13
mov $106, %rcx
rep movsl
nop
nop
nop
inc %r15
lea addresses_A_ht+0xff9c, %rcx
nop
nop
nop
nop
dec %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0xb1ac, %rsi
lea addresses_normal_ht+0x1e63e, %rdi
nop
nop
nop
nop
nop
xor $8295, %r13
mov $127, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x1ba9c, %rax
clflush (%rax)
nop
cmp %r13, %r13
mov (%rax), %esi
nop
nop
nop
cmp $54613, %rcx
lea addresses_normal_ht+0x565c, %rcx
nop
nop
add %r15, %r15
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rax
nop
add %r13, %r13
lea addresses_D_ht+0x13860, %rcx
nop
nop
nop
nop
nop
inc %r10
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xa09c, %rsi
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
xor $61878, %rax
lea addresses_WT_ht+0x1611c, %rsi
lea addresses_WT_ht+0x1779c, %rdi
nop
nop
nop
xor %r9, %r9
mov $91, %rcx
rep movsb
inc %r15
lea addresses_WC_ht+0xb9a9, %r9
dec %r15
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
add $51298, %r9
lea addresses_WT_ht+0x1e984, %rax
nop
nop
nop
nop
and $19766, %r15
movb $0x61, (%rax)
nop
nop
cmp $18253, %r9
lea addresses_WT_ht+0x2858, %rcx
cmp $48894, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rcx)
nop
sub %rax, %rax
lea addresses_A_ht+0x989c, %r10
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x15788, %r15
clflush (%r15)
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%r15)
nop
xor %r9, %r9
lea addresses_normal_ht+0xac9c, %rsi
lea addresses_A_ht+0x354a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
sub %r10, %r10
mov $45, %rcx
rep movsq
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1769c, %r10
nop
nop
nop
cmp $34021, %r13
movl $0x61626364, (%r10)
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_RW+0x1f088, %r11
clflush (%r11)
nop
nop
nop
add $12031, %rbp
mov (%r11), %edi
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x8a1c, %rdx
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%rdx)
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0xee0, %r12
nop
nop
add %r9, %r9
movb $0x51, (%r12)
and %r11, %r11

// Store
lea addresses_PSE+0x19e70, %r12
nop
and %rdi, %rdi
movb $0x51, (%r12)
nop
nop
dec %r11

// Store
mov $0x1a0, %r9
cmp $51936, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
sub $40332, %rdi

// Faulty Load
mov $0x18fec0000000089c, %r9
nop
nop
nop
nop
add %rbp, %rbp
mov (%r9), %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
