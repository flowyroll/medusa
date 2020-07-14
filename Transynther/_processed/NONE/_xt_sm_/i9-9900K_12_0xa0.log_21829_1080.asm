.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14f24, %rsi
lea addresses_UC_ht+0xc524, %rdi
nop
nop
nop
nop
add $60315, %rbx
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
add $34538, %rbx
lea addresses_A_ht+0x2aa, %rsi
lea addresses_normal_ht+0x924, %rdi
xor $64347, %r9
mov $85, %rcx
rep movsb
nop
nop
dec %r9
lea addresses_A_ht+0x391c, %r10
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xfbcc, %rcx
nop
nop
nop
nop
cmp %r11, %r11
mov (%rcx), %r9w
sub $3936, %r9
lea addresses_WC_ht+0xf524, %r11
nop
inc %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r11)
cmp %r9, %r9
lea addresses_A_ht+0xd7b2, %rsi
lea addresses_WC_ht+0x186a4, %rdi
nop
cmp %rax, %rax
mov $26, %rcx
rep movsq
nop
nop
nop
nop
and $39350, %r10
lea addresses_A_ht+0x2d24, %rsi
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
dec %rbx
lea addresses_WT_ht+0x1d2e4, %rsi
lea addresses_A_ht+0x17724, %rdi
add %r9, %r9
mov $14, %rcx
rep movsb
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xc8d4, %r11
clflush (%r11)
nop
nop
sub $65329, %r9
movb (%r11), %al
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x14604, %rsi
lea addresses_WT_ht+0x3324, %rdi
nop
nop
and %r10, %r10
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x8824, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0xb5c4, %rsi
nop
nop
xor %rbx, %rbx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
nop
and $10399, %r10
lea addresses_WC_ht+0xa524, %rdi
nop
nop
nop
sub %r11, %r11
mov (%rdi), %r9d
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1584, %rax
clflush (%rax)
nop
nop
nop
add $50688, %rcx
mov (%rax), %r9w
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x106a4, %r11
nop
dec %rsi
mov (%r11), %r10d
sub $56701, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x1fef4, %rdi
nop
nop
nop
nop
xor $19782, %rbx
movb $0x51, (%rdi)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x11744, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0xe524, %r11
clflush (%r11)
nop
nop
nop
and $23888, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r11)
inc %r14

// Store
mov $0xe0e, %rcx
nop
nop
nop
nop
inc %r14
movb $0x51, (%rcx)
nop
nop
dec %rcx

// Faulty Load
lea addresses_UC+0xe524, %rbx
and $45375, %rdi
movb (%rbx), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
