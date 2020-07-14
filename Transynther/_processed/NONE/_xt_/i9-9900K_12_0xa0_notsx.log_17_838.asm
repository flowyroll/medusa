.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe6b0, %rsi
lea addresses_A_ht+0xe970, %rdi
and $33324, %r12
mov $28, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x17db0, %r10
sub $39834, %rbx
movb $0x51, (%r10)
nop
nop
nop
nop
nop
dec %r9

// Store
mov $0x169ba20000000396, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $21887, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
add $4259, %r11

// Faulty Load
lea addresses_WT+0x1adb0, %rdx
nop
nop
nop
nop
add $32352, %r9
mov (%rdx), %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'39': 17}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
