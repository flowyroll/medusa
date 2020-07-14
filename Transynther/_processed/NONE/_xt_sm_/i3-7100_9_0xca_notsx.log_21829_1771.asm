.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x403f, %r13
nop
cmp %rsi, %rsi
mov (%r13), %r15d
add $48259, %r12
lea addresses_WT_ht+0xcaaf, %r9
nop
nop
xor %r14, %r14
movb (%r9), %al
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1a9ef, %r9
nop
nop
nop
nop
nop
xor $15128, %rsi
mov (%r9), %eax
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x19aaf, %rsi
nop
nop
cmp $47421, %r14
movl $0x61626364, (%rsi)
cmp %r13, %r13
lea addresses_UC_ht+0x80f1, %rsi
lea addresses_UC_ht+0x14daf, %rdi
nop
nop
nop
and %r12, %r12
mov $32, %rcx
rep movsb
nop
nop
sub $39157, %rcx
lea addresses_WC_ht+0x908f, %r15
nop
nop
nop
add %r14, %r14
movups (%r15), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1deaf, %rsi
lea addresses_D_ht+0x1a72f, %rdi
nop
nop
xor %r13, %r13
mov $104, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x10c4f, %rsi
lea addresses_A_ht+0x1d18f, %rdi
nop
nop
cmp %r9, %r9
mov $45, %rcx
rep movsb
nop
add %r9, %r9
lea addresses_A_ht+0xebaf, %rsi
lea addresses_normal_ht+0xe22f, %rdi
nop
nop
add %r14, %r14
mov $82, %rcx
rep movsq
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x11c53, %rsi
lea addresses_WT_ht+0xaeaf, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $87, %rcx
rep movsb
nop
nop
nop
nop
add $29092, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x3caf, %r11
nop
nop
dec %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0xd7af, %r11
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r11)
nop
inc %rcx

// REPMOV
lea addresses_normal+0x5aaf, %rsi
lea addresses_normal+0x103af, %rdi
nop
nop
sub $22384, %r9
mov $101, %rcx
rep movsw
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0x1614f, %rdx
nop
nop
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x19faf, %rsi
nop
sub %rdi, %rdi
movw $0x5152, (%rsi)
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0xdaaf, %rax
inc %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rax)
nop
dec %rsi

// Store
lea addresses_normal+0xdaaf, %rcx
inc %rdx
movw $0x5152, (%rcx)
nop
nop
nop
add $24101, %rdx

// Store
lea addresses_WT+0x1daaf, %r11
sub %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $21305, %rsi

// Store
lea addresses_normal+0xdaaf, %rdi
nop
nop
nop
and $33895, %rcx
movb $0x51, (%rdi)
xor $62955, %rsi

// Store
lea addresses_RW+0xbaaf, %rbp
nop
and $8964, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
dec %r9

// Store
lea addresses_normal+0xdaaf, %rsi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rsi)
nop
sub %rax, %rax

// Faulty Load
lea addresses_normal+0xdaaf, %rsi
nop
nop
nop
nop
sub $54778, %r11
movb (%rsi), %r9b
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
