.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d0c4, %rsi
lea addresses_WT_ht+0x1834c, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $4, %rcx
rep movsw
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x59b4, %r8
nop
nop
nop
nop
and %r11, %r11
mov (%r8), %r14
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1ed38, %rax
nop
xor $19079, %r11
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
lfence
lea addresses_D_ht+0xe3c4, %rsi
nop
nop
nop
and $24311, %rdi
movl $0x61626364, (%rsi)
nop
nop
inc %rdi
lea addresses_normal_ht+0x193c4, %r11
nop
and %r14, %r14
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
sub $26120, %rax
lea addresses_WC_ht+0x4dc4, %rdi
nop
xor %r8, %r8
movb (%rdi), %r14b
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x28a4, %rsi
lea addresses_A_ht+0x6e44, %rdi
nop
xor %r8, %r8
mov $121, %rcx
rep movsq
nop
cmp $61505, %rcx
lea addresses_A_ht+0xb7c4, %rdi
nop
xor $37347, %rcx
mov (%rdi), %rax
nop
nop
nop
nop
nop
sub $18725, %rsi
lea addresses_D_ht+0x9174, %rsi
lea addresses_UC_ht+0xacc4, %rdi
nop
nop
xor $17599, %r13
mov $78, %rcx
rep movsw
add $15762, %rcx
lea addresses_D_ht+0x3504, %r14
nop
nop
nop
xor %r11, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
add $34567, %rcx
lea addresses_UC_ht+0x29b4, %r13
nop
nop
nop
nop
nop
dec %r11
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x90e0, %rsi
lea addresses_WC_ht+0x1bf9d, %rdi
clflush (%rdi)
nop
nop
add $26851, %r8
mov $12, %rcx
rep movsq
nop
nop
nop
and $29514, %rax
lea addresses_A_ht+0x5ac4, %rdi
nop
nop
nop
nop
xor $26597, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x133c4, %rsi
lea addresses_PSE+0xf3c4, %rdi
clflush (%rsi)
nop
nop
nop
add $38346, %r14
mov $10, %rcx
rep movsw
nop
add $8044, %rax

// Store
lea addresses_RW+0xd2c4, %rax
nop
add $40262, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rax)
cmp $62451, %rsi

// Faulty Load
lea addresses_PSE+0xf3c4, %r9
nop
nop
nop
cmp %rsi, %rsi
mov (%r9), %eax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
