.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x180b3, %rsi
lea addresses_normal_ht+0x10821, %rdi
add %r11, %r11
mov $20, %rcx
rep movsb
cmp $38249, %r14
lea addresses_D_ht+0xf0b3, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%r11), %r14d
cmp %r12, %r12
lea addresses_UC_ht+0x1e8b3, %r14
nop
nop
nop
nop
xor $19191, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
add $43721, %rdi
lea addresses_D_ht+0x81b3, %r11
nop
sub $54524, %r8
movb $0x61, (%r11)
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x13933, %rsi
lea addresses_normal_ht+0x140b3, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $96, %rcx
rep movsw
nop
nop
add $3719, %r8
lea addresses_D_ht+0x1ceb3, %rsi
lea addresses_D_ht+0x12333, %rdi
nop
dec %r12
mov $111, %rcx
rep movsw
nop
cmp $71, %rsi
lea addresses_A_ht+0xf3f3, %r11
nop
cmp %rdi, %rdi
mov (%r11), %rcx
cmp $41362, %rbx
lea addresses_A_ht+0xa2b3, %rsi
lea addresses_A_ht+0x19c58, %rdi
nop
nop
nop
sub %r11, %r11
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x4db3, %rsi
lea addresses_normal_ht+0x13873, %rdi
nop
nop
nop
nop
nop
add $12820, %rbx
mov $79, %rcx
rep movsw
nop
nop
nop
nop
add $11370, %rbx
lea addresses_D_ht+0x50f7, %r11
clflush (%r11)
nop
nop
nop
inc %rcx
movb (%r11), %bl
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x1b983, %rsi
lea addresses_D_ht+0x1464c, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $83, %rcx
rep movsb
nop
inc %r12
lea addresses_WC_ht+0x3fdb, %r11
nop
nop
nop
add %rbx, %rbx
mov (%r11), %rsi
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x5233, %rsi
lea addresses_D_ht+0x42b3, %rdi
clflush (%rdi)
nop
nop
nop
xor $22049, %r8
mov $71, %rcx
rep movsq
and $16321, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx

// Faulty Load
mov $0x8b3, %rcx
nop
nop
nop
nop
add %r11, %r11
mov (%rcx), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
