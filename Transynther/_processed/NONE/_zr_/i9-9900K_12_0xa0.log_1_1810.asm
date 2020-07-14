.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x195cc, %r11
xor $37049, %r12
movw $0x6162, (%r11)
nop
add %r9, %r9
lea addresses_WT_ht+0x63bc, %rdi
nop
and $64380, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x13b8, %rdx
clflush (%rdx)
lfence
movb (%rdx), %r9b
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1a9e8, %r11
clflush (%r11)
nop
sub $4514, %rdi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
sub $11222, %rcx
lea addresses_UC_ht+0x16288, %rsi
lea addresses_WT_ht+0x71e8, %rdi
add $44128, %r11
mov $1, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x193e8, %rcx
nop
nop
nop
nop
nop
xor $4343, %rsi
movb (%rcx), %r11b
nop
nop
nop
nop
nop
xor $42345, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Load
lea addresses_UC+0x17796, %r11
nop
nop
nop
nop
dec %rbp
mov (%r11), %r9w
and %rcx, %rcx

// Load
lea addresses_normal+0x2e88, %rax
nop
cmp $40532, %r13
movb (%rax), %r11b
nop
and $30604, %r13

// Store
lea addresses_normal+0x1ebc8, %rax
nop
nop
nop
xor $13591, %rsi
movw $0x5152, (%rax)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbp
cmp %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1a1e8, %rbp
lfence
mov (%rbp), %r9w
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 1}
00
*/
