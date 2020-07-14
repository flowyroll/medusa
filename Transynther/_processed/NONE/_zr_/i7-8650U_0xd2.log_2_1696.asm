.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc49, %rsi
lea addresses_A_ht+0x9749, %rdi
nop
and %r8, %r8
mov $89, %rcx
rep movsl
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1c9c9, %rsi
lea addresses_A+0x11549, %rdi
nop
cmp %r15, %r15
mov $106, %rcx
rep movsl
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_WT+0x1e149, %r8
nop
nop
cmp $3891, %r11
mov (%r8), %di
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'00': 2}
00 00
*/
