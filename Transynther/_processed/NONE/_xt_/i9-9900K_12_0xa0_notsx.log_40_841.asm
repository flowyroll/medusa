.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1708c, %rsi
lea addresses_WT_ht+0x169dc, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $2, %rcx
rep movsl
lfence
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Load
lea addresses_RW+0xc09c, %rbp
nop
nop
nop
cmp %r8, %r8
movb (%rbp), %bl
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
mov $0x411ad4000000029c, %rdi
nop
nop
nop
xor $60613, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_RW+0xc09c, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%rdi), %bl
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'32': 40}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
