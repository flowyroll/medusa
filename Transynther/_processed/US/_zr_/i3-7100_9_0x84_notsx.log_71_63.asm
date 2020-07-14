.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3044, %rsi
lea addresses_UC_ht+0xc704, %rdi
nop
cmp %r9, %r9
mov $31, %rcx
rep movsl
nop
nop
nop
and $14855, %rbx
lea addresses_UC_ht+0x504, %r12
nop
xor $42463, %r8
mov (%r12), %cx
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0xcd4c, %rdi
inc %r9
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0xbea0, %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%r8), %cl
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0xc49a, %r9
clflush (%r9)
dec %rcx
movb (%r9), %r12b
nop
nop
nop
nop
nop
inc %r12
lea addresses_WC_ht+0xb160, %r12
nop
nop
nop
nop
and %rdi, %rdi
mov (%r12), %r8w
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x4534, %rsi
lea addresses_WC_ht+0xc004, %rdi
xor $38741, %rbp
mov $65, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xdfb4, %r9
nop
nop
nop
sub $8370, %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $7925, %r12
lea addresses_UC_ht+0x1c8a4, %rsi
lea addresses_WC_ht+0x19f04, %rdi
nop
nop
add %rbx, %rbx
mov $87, %rcx
rep movsw
nop
and $10482, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax

// Faulty Load
lea addresses_US+0x16b04, %r9
add %rax, %rax
movb (%r9), %r11b
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 71}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
