.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x112e6, %r14
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x10278, %rbx
add %r11, %r11
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
sub $16879, %r14
lea addresses_normal_ht+0x1c25b, %rsi
lea addresses_A_ht+0x147f6, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $31, %rcx
rep movsb
nop
nop
nop
nop
and $15524, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_PSE+0x56f6, %rax
nop
nop
nop
nop
nop
mfence
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
dec %r11

// Faulty Load
mov $0x59cee200000003f6, %r15
nop
cmp $39032, %r11
vmovntdqa (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
