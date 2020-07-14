.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe9bb, %r9
clflush (%r9)
nop
nop
nop
sub $7986, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
add $27836, %r13
lea addresses_WT_ht+0x17d3b, %r13
nop
nop
sub $6916, %r10
movw $0x6162, (%r13)
nop
nop
add $36393, %rbp
lea addresses_UC_ht+0x1de3b, %r10
nop
nop
nop
nop
add %r11, %r11
mov (%r10), %r12w
nop
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0x1a62b, %r9
add %r8, %r8
mov (%r9), %r12
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x16c7b, %rsi
lea addresses_UC_ht+0x939d, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $7, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_D_ht+0x7c3b, %rcx
nop
xor $32505, %r8
movb $0x61, (%rcx)
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x673b, %rsi
lea addresses_A+0x783b, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $49, %rcx
rep movsl
sub %r9, %r9

// Faulty Load
lea addresses_WT+0x3c3b, %r9
nop
nop
add %r13, %r13
mov (%r9), %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'00': 1}
00
*/
