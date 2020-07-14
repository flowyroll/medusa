.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a9d1, %r9
cmp %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
xor $706, %r14
lea addresses_UC_ht+0x14773, %r10
nop
sub $12802, %rbx
movw $0x6162, (%r10)
nop
nop
and $49291, %r9
lea addresses_normal_ht+0x1b9b1, %r9
nop
nop
nop
nop
sub $27442, %rbp
movb (%r9), %bl
nop
and %rsi, %rsi
lea addresses_normal_ht+0x14051, %rsi
lea addresses_WT_ht+0x18c51, %rdi
clflush (%rsi)
nop
nop
and $39500, %rbx
mov $84, %rcx
rep movsb
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1c799, %r14
nop
nop
nop
nop
nop
inc %rdi
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rcx
cmp %rsi, %rsi
lea addresses_WT_ht+0x7779, %rsi
lea addresses_D_ht+0x13e51, %rdi
nop
nop
nop
nop
nop
xor $21868, %r10
mov $72, %rcx
rep movsb
nop
nop
nop
and $52838, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x115c9500000009d1, %r11
nop
inc %r15
movb $0x51, (%r11)
nop
nop
nop
xor $59137, %r11

// Store
lea addresses_PSE+0x112d1, %r8
and $29196, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
xor $46372, %r15

// Store
mov $0xdd1, %rsi
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rsi)
nop
xor $37001, %rbp

// Faulty Load
lea addresses_UC+0x105d1, %r11
nop
nop
nop
nop
add $43891, %rsi
mov (%r11), %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'00': 7}
00 00 00 00 00 00 00
*/
