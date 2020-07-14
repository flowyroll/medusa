.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x95be, %r11
nop
nop
inc %r13
movb $0x61, (%r11)
dec %r13
lea addresses_WC_ht+0x531a, %rsi
lea addresses_normal_ht+0x9086, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $11, %rcx
rep movsw
nop
xor $13357, %rdi
lea addresses_WT_ht+0x237a, %rsi
nop
nop
cmp $43078, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
cmp $47617, %r13
lea addresses_D_ht+0x19b3e, %rcx
nop
nop
nop
and $62672, %r9
mov (%rcx), %r15
add %r9, %r9
lea addresses_WC_ht+0x1249c, %r11
nop
and %r15, %r15
movb (%r11), %r13b
nop
nop
nop
nop
nop
and $170, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_WT+0x101be, %rax
nop
xor %r14, %r14
movb $0x51, (%rax)
cmp $56807, %rcx

// Store
lea addresses_WT+0x101be, %r9
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
xor $13284, %rax

// Store
lea addresses_A+0x17cbe, %r13
sub $8129, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and $3644, %r14

// Load
lea addresses_UC+0xdd3e, %r13
nop
nop
sub %r9, %r9
movb (%r13), %al
add $12271, %rbx

// Load
lea addresses_WC+0x10ba6, %rax
nop
nop
nop
nop
dec %rbx
mov (%rax), %r10
nop
nop
nop
nop
nop
sub %rax, %rax

// Load
mov $0x69e, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %r10, %r10
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_WT+0x101be, %rbx
nop
nop
nop
nop
cmp %r14, %r14
mov (%rbx), %r9d
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'58': 16}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
