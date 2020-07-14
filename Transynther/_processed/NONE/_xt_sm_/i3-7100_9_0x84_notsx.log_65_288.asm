.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1dfbf, %r9
nop
nop
sub $63181, %r11
mov $0x6162636465666768, %r8
movq %r8, (%r9)
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x14835, %r11
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
nop
and $58648, %r9
lea addresses_WC_ht+0x193e5, %r14
nop
nop
add $22983, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r14)
nop
xor $13583, %r8
lea addresses_WT_ht+0xbed9, %r9
nop
nop
nop
and %r10, %r10
mov (%r9), %r14w
xor $50322, %r8
lea addresses_normal_ht+0x13899, %rsi
clflush (%rsi)
nop
nop
nop
and $49627, %r10
movb $0x61, (%rsi)
cmp %r14, %r14
lea addresses_UC_ht+0x15499, %rsi
lea addresses_A_ht+0x1eb59, %rdi
nop
nop
nop
cmp $3162, %r8
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
and $32299, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x7ef6920000000511, %r9
nop
dec %r15
movl $0x51525354, (%r9)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0xb499, %r15
nop
nop
nop
nop
and $22495, %rbx
movw $0x5152, (%r15)
and $49739, %rsi

// Store
lea addresses_A+0xb499, %rbx
and $53168, %rax
movw $0x5152, (%rbx)
nop
nop
nop
add $9567, %r9

// Faulty Load
lea addresses_A+0xb499, %r15
nop
sub $25196, %r8
movb (%r15), %bl
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'52': 65}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
