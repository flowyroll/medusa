.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1f35, %rsi
lea addresses_WT_ht+0x11735, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $58, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x17f35, %rsi
lea addresses_WT_ht+0x12e35, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $106, %rcx
rep movsb
xor %r11, %r11
lea addresses_WC_ht+0x4035, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xfb75, %rsi
lea addresses_D_ht+0x1bab5, %rdi
nop
nop
nop
nop
nop
sub $25867, %r9
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x88b5, %rsi
lea addresses_normal_ht+0x110d5, %rdi
xor %rbp, %rbp
mov $7, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1270f, %rsi
lea addresses_A_ht+0xe55, %rdi
nop
nop
xor $39689, %r13
mov $27, %rcx
rep movsq
cmp $30625, %r11
lea addresses_normal_ht+0x15335, %r10
nop
nop
nop
nop
nop
lfence
movb (%r10), %r9b
nop
nop
nop
add $24611, %rbp
lea addresses_normal_ht+0xb175, %r10
add $52676, %r13
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rcx
sub %r10, %r10
lea addresses_D_ht+0x7a15, %rsi
lea addresses_UC_ht+0x16535, %rdi
nop
nop
nop
nop
nop
and $26722, %r11
mov $39, %rcx
rep movsl
nop
xor $4961, %r9
lea addresses_WT_ht+0x16735, %r9
clflush (%r9)
nop
cmp $8973, %rsi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
cmp $54789, %rdi
lea addresses_WC_ht+0xd6b5, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rbp), %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x16335, %rsi
lea addresses_A_ht+0x1d35, %rdi
nop
xor $27119, %r13
mov $11, %rcx
rep movsl
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x9d35, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r13), %r9b
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x9aad, %rsi
lea addresses_WC_ht+0x682b, %rdi
add $48034, %rbp
mov $36, %rcx
rep movsb
nop
nop
nop
sub $65503, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rsi

// Store
lea addresses_RW+0x7d75, %r10
nop
nop
dec %r11
movb $0x51, (%r10)
nop
nop
and $51225, %rsi

// Store
lea addresses_RW+0xc735, %rsi
nop
sub $12543, %rbp
movw $0x5152, (%rsi)
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x11335, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
nop
add %r15, %r15

// Store
mov $0x9d5, %rbp
nop
nop
nop
nop
add %r10, %r10
movw $0x5152, (%rbp)
nop
nop
nop
add $18464, %rbp

// Store
mov $0x5af9890000000ac5, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $28697, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0xd735, %r13
nop
cmp $8736, %rsi
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'46': 15593, '08': 2, '00': 1464}
46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 00 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 00 46
*/
