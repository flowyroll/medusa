.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10415, %rsi
lea addresses_D_ht+0x13711, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $60, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $49693, %rbx
lea addresses_normal_ht+0x1a315, %rdx
nop
nop
nop
nop
inc %r13
mov (%rdx), %cx
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x53e5, %rsi
nop
nop
nop
cmp $43999, %r8
mov (%rsi), %r13d
dec %rdx
lea addresses_D_ht+0xf047, %rsi
lea addresses_WT_ht+0x154d5, %rdi
clflush (%rsi)
sub %r11, %r11
mov $37, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x8a15, %rdx
cmp %rsi, %rsi
mov (%rdx), %r13d
nop
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0x15875, %r8
nop
nop
nop
nop
mfence
mov (%r8), %cx
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x5215, %rsi
lea addresses_normal_ht+0x18b11, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $120, %rcx
rep movsq
nop
nop
nop
nop
sub $63669, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Faulty Load
mov $0xa15, %rcx
sub $19024, %rdx
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'48': 1077, '46': 396, '45': 1, '00': 4963}
00 48 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 46 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 48 00 48 00 00 00 48 48 00 46 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 46 00 00 48 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 46 00 00 00 00 48 46 00 00 48 48 00 00 48 48 46 00 00 00 00 00 00 00 46 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 48 00 48 00 00 46 48 00 00 48 48 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 46 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 46 00 48 00 00 48 00 00 00 00 48 48 00 46 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 46 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 48 00 48 48 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 48 00 48 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 46 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 46 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 46 48 00 00 00 46 00 48 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 46 48 48 00 48 00 46 00 00 00 48 00 48 00 48 46 00 00 00 46 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 48 48 00 00 00 46 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 46 00 00 00 00 00 48 00 48 00 00 00 00 48 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 48 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 48 00 48 00 00 46 00 00 00 00 00 00 48 48 00 00 00 00 00 46 00 48 00 00 00 48 00 00 48 00 00 00 00 46 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 46 00 00 46 00 00 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 46 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 00 48 48 48 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 46 00 48 00 00 48 00 00 00 48 48 48 00 48 00
*/
