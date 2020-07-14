.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18f65, %r9
cmp $9284, %r11
mov (%r9), %r12w
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x802d, %rsi
lea addresses_normal_ht+0xa2d, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbp
mov $65, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_A_ht+0x922d, %rsi
lea addresses_WT_ht+0x2a2d, %rdi
nop
xor $4160, %r11
mov $73, %rcx
rep movsb
cmp %rdx, %rdx
lea addresses_UC_ht+0x1cad, %r9
and $39563, %r12
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $25917, %rsi
lea addresses_normal_ht+0x13b0f, %r9
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
nop
nop
xor $1160, %rdi
lea addresses_A_ht+0x10c9d, %rdi
sub %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x196f5, %rdi
nop
nop
sub $42192, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x81ed, %rcx
nop
nop
nop
xor %rdi, %rdi
movb (%rcx), %dl
nop
nop
and $26134, %rbp
lea addresses_normal_ht+0x922d, %rsi
lea addresses_A_ht+0x83bd, %rdi
nop
nop
nop
sub %r12, %r12
mov $20, %rcx
rep movsb
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x1342d, %rsi
lea addresses_WC_ht+0x1d82d, %rdi
nop
nop
nop
nop
cmp $7531, %rdx
mov $60, %rcx
rep movsw
nop
nop
nop
sub $57114, %rcx
lea addresses_normal_ht+0xffad, %rdx
nop
nop
nop
xor %rbp, %rbp
mov (%rdx), %cx
nop
nop
nop
nop
nop
sub $32403, %rdx
lea addresses_A_ht+0xec3b, %rbp
nop
nop
nop
nop
nop
cmp $64852, %rsi
mov (%rbp), %r12
nop
nop
xor $42402, %rbp
lea addresses_normal_ht+0x16789, %rsi
lea addresses_A_ht+0xaa2d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
mov $33, %rcx
rep movsw
nop
nop
nop
nop
sub $52, %rbp
lea addresses_UC_ht+0x3431, %rbp
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x62d, %rbp
nop
nop
nop
xor $42036, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rbp)
nop
nop
sub %rax, %rax

// Store
mov $0x20d, %r14
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
xor $8579, %r10

// Store
lea addresses_WC+0x1a22d, %r14
clflush (%r14)
nop
nop
nop
nop
xor $15130, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_UC+0x7a2d, %rsi
nop
cmp $32008, %rdx
mov (%rsi), %rdi
nop
nop
and $44107, %rax

// Store
lea addresses_UC+0x1d42d, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_UC+0x7a2d, %rdx
nop
nop
and %r10, %r10
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
