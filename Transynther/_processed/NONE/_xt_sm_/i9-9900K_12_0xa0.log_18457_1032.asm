.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3b14, %rcx
nop
nop
cmp $38341, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
dec %rax
lea addresses_UC_ht+0x18784, %rsi
lea addresses_WT_ht+0x10124, %rdi
nop
nop
nop
nop
nop
mfence
mov $13, %rcx
rep movsw
nop
xor %r9, %r9
lea addresses_A_ht+0x1dfec, %rsi
lea addresses_WC_ht+0x10160, %rdi
nop
nop
nop
nop
xor $456, %r10
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $8204, %r10
lea addresses_WC_ht+0x15f44, %rdx
nop
nop
nop
nop
nop
add $45159, %rdi
mov (%rdx), %esi
nop
nop
nop
nop
add $23397, %r10
lea addresses_WC_ht+0x2744, %r9
nop
cmp %rax, %rax
movb $0x61, (%r9)
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xe744, %rdx
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
cmp $29724, %rsi
lea addresses_D_ht+0x4884, %rsi
lea addresses_normal_ht+0xda84, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $122, %rcx
rep movsw
nop
add $37076, %rsi
lea addresses_WT_ht+0x1bb44, %rsi
lea addresses_D_ht+0x4d44, %rdi
nop
nop
nop
nop
nop
sub $36412, %r15
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0xef44, %rsi
lea addresses_normal_ht+0x16ac4, %rdi
nop
nop
nop
xor %r10, %r10
mov $76, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xeb44, %rsi
lea addresses_UC_ht+0x4484, %rdi
and %r10, %r10
mov $27, %rcx
rep movsl
nop
sub $53698, %rdx
lea addresses_WC_ht+0x1d644, %rsi
lea addresses_D_ht+0x18626, %rdi
nop
and %rax, %rax
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x1ab44, %rsi
lea addresses_D_ht+0x40c4, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $125, %rcx
rep movsb
nop
nop
nop
sub $23190, %rdx
lea addresses_WT_ht+0x5b44, %rdx
nop
nop
nop
inc %rax
mov (%rdx), %ecx
nop
inc %rsi
lea addresses_WC_ht+0xd7a8, %r10
nop
nop
nop
xor $2104, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %r10
vmovntdq %ymm3, (%r10)
nop
nop
nop
nop
nop
and $38348, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x582b00000000344, %rax
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
inc %rbp

// Store
lea addresses_WT+0x12b44, %r11
nop
nop
nop
xor $56604, %rax
movw $0x5152, (%r11)
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x944, %rax
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WT+0xfb44, %rdi
nop
nop
nop
xor $52077, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
nop
sub $8956, %r15

// Store
lea addresses_normal+0x7f44, %rbp
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x2f8, %rsi
nop
and $15295, %rbp
mov (%rsi), %r11d
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_US+0x2f44, %rax
nop
nop
nop
nop
and $6168, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovntdq %ymm2, (%rax)
nop
nop
nop
nop
nop
xor $13138, %r14

// Faulty Load
lea addresses_WT+0xfb44, %r14
nop
add %rbp, %rbp
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'58': 18457}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
