.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf0d7, %rsi
lea addresses_D_ht+0x807f, %rdi
nop
nop
nop
sub %r14, %r14
mov $46, %rcx
rep movsw
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xae57, %r11
nop
nop
mfence
movw $0x6162, (%r11)
nop
add $28140, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_WT+0x69df, %rcx
nop
xor $23276, %r11
mov (%rcx), %rsi
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_US+0x1a87f, %rsi
nop
nop
nop
cmp $9631, %rax
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
