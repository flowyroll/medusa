.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x63af, %r11
nop
nop
nop
nop
xor %r12, %r12
mov (%r11), %r9d
nop
add %rsi, %rsi
lea addresses_D_ht+0x26f, %rcx
nop
nop
and $62567, %r9
mov (%rcx), %r15d
nop
nop
cmp $45518, %r12
lea addresses_normal_ht+0x1a6df, %r12
nop
nop
inc %rbp
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
and $33237, %rsi
lea addresses_normal_ht+0x11caf, %rsi
lea addresses_D_ht+0x84ff, %rdi
nop
nop
nop
nop
xor $46888, %rbp
mov $26, %rcx
rep movsb
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x3a3f, %rbp
nop
nop
nop
nop
nop
cmp $9993, %r12
movb (%rbp), %r11b
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rsi

// Faulty Load
mov $0xcaf, %rsi
nop
nop
cmp %rcx, %rcx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
