.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x47ba, %rsi
lea addresses_D_ht+0x1ec5a, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $80, %rcx
rep movsl
nop
and $53169, %r14
lea addresses_normal_ht+0x1a15a, %r14
nop
add %r11, %r11
mov (%r14), %esi
nop
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xeeca, %rsi
lea addresses_WT+0x1775a, %rdi
nop
nop
nop
nop
xor $65419, %r11
mov $89, %rcx
rep movsq
nop
nop
nop
nop
sub %r11, %r11

// REPMOV
lea addresses_US+0x15f5a, %rsi
lea addresses_normal+0x1eb0a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
cmp $8393, %r14
mov $39, %rcx
rep movsb
and $4425, %r11

// Faulty Load
mov $0x35a, %r11
nop
nop
nop
and $12933, %r9
mov (%r11), %ecx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_US', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'75': 1, '8f': 1}
75 8f
*/
