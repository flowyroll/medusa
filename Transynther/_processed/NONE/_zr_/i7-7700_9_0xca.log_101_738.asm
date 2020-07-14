.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c850, %rsi
lea addresses_WT_ht+0x3650, %rdi
nop
sub $41454, %r11
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
add $57436, %rbx
lea addresses_WT_ht+0x19f50, %rsi
lea addresses_normal_ht+0xbb0, %rdi
nop
nop
xor $21325, %rax
mov $31, %rcx
rep movsl
nop
nop
add $59533, %rax
lea addresses_UC_ht+0x19bc3, %rsi
lea addresses_UC_ht+0x1c814, %rdi
nop
nop
nop
and %r11, %r11
mov $26, %rcx
rep movsl
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi

// Load
lea addresses_A+0xb450, %r13
and $50594, %rdi
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
nop
sub $60881, %r13

// Faulty Load
lea addresses_A+0xb450, %r15
nop
cmp %r8, %r8
mov (%r15), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}}
{'00': 101}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
