.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1780d, %r13
nop
nop
nop
nop
sub $48490, %r9
movb (%r13), %cl
nop
inc %rbp
lea addresses_A_ht+0x163d5, %r8
nop
add $54020, %rbp
movl $0x61626364, (%r8)
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x13841, %rbp
nop
and $43229, %r10
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1359, %rsi
lea addresses_UC_ht+0x86a1, %rdi
nop
nop
sub %r8, %r8
mov $26, %rcx
rep movsb
nop
nop
nop
sub $40110, %rdi
lea addresses_normal_ht+0x29e1, %rsi
lea addresses_UC_ht+0x8661, %rdi
cmp $58118, %rbp
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x1c49a, %r10
nop
nop
xor $57424, %r8
movl $0x61626364, (%r10)
inc %rcx
lea addresses_D_ht+0x15a21, %rdi
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%rdi)
add $48749, %r8
lea addresses_normal_ht+0x11e21, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
mov (%rsi), %cx
xor %r8, %r8
lea addresses_WT_ht+0xb221, %rsi
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
sub %r13, %r13
lea addresses_D_ht+0x1a0d9, %r8
nop
nop
nop
nop
nop
add $33479, %rsi
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
cmp %r10, %r10
lea addresses_WT_ht+0x8c21, %rdi
and %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
cmp $32662, %r10
lea addresses_WC_ht+0x1aa21, %r8
nop
nop
and $45152, %rbp
mov (%r8), %r9w
nop
nop
nop
nop
sub $33700, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x8521, %r14
nop
nop
and $38533, %r11
mov (%r14), %rcx
nop
nop
nop
nop
sub $33766, %rcx

// Store
lea addresses_US+0x19a21, %rdi
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rdi)
mfence

// Store
lea addresses_US+0x19a21, %r9
nop
nop
nop
nop
and $56040, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
nop
add %rcx, %rcx

// Load
lea addresses_PSE+0x1bea1, %r11
clflush (%r11)
nop
nop
nop
and %rdi, %rdi
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r13
xor %rdi, %rdi

// REPMOV
lea addresses_A+0xce5b, %rsi
lea addresses_D+0x1ba21, %rdi
cmp %r13, %r13
mov $59, %rcx
rep movsw
nop
nop
nop
and $58843, %r14

// REPMOV
lea addresses_WC+0x128d7, %rsi
lea addresses_WC+0x12921, %rdi
nop
nop
nop
cmp $64346, %r14
mov $35, %rcx
rep movsl
nop
nop
cmp $4909, %rdi

// Load
lea addresses_UC+0x7a21, %r13
nop
nop
nop
nop
inc %r9
movb (%r13), %r14b
add $2033, %rsi

// Store
lea addresses_US+0x19a21, %r11
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x2e21, %r13
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
inc %rsi

// Load
lea addresses_UC+0xd9c5, %rsi
inc %r13
mov (%rsi), %r11
nop
and $43542, %r13

// Store
lea addresses_PSE+0x8e59, %rcx
nop
nop
nop
nop
nop
sub $12267, %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_US+0x1d63d, %r14
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
dec %rdi

// REPMOV
mov $0x37f, %rsi
lea addresses_WC+0x7a9d, %rdi
nop
nop
nop
nop
add $33501, %r13
mov $16, %rcx
rep movsq
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_US+0x19a21, %rdx
nop
nop
nop
nop
nop
sub $493, %rsi
mov (%rdx), %r11w
lea oracles, %r11
and $0xff, %r11
shlq $12, %r11
mov (%r11,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 1}
00
*/
