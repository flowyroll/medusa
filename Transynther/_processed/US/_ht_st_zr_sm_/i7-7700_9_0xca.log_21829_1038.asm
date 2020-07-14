.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdx
push %rsi
lea addresses_WC_ht+0x617e, %rbx
nop
nop
nop
add $17383, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1517e, %rbp
clflush (%rbp)
cmp %r11, %r11
movb (%rbp), %dl
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x16946, %rsi
lea addresses_normal+0xcbb6, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $91, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_D+0x189ee, %r14
and $29144, %rbx
movb (%r14), %cl
xor $27657, %r14

// Store
mov $0x1205930000000026, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
sub $30622, %rbx

// Store
lea addresses_normal+0x170be, %rcx
nop
nop
sub $1528, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_US+0x1697e, %rcx
nop
add $64144, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
sub $60825, %r11

// Faulty Load
lea addresses_US+0x1697e, %rdi
nop
nop
add $29570, %rsi
mov (%rdi), %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 267, '48': 482, '36': 13725, '58': 7268, '68': 87}
58 36 58 36 36 36 58 36 36 36 58 58 58 36 36 58 36 58 58 58 36 36 36 36 36 36 58 48 36 36 36 36 58 36 36 36 36 36 36 36 58 36 58 00 58 58 58 36 36 36 36 36 36 36 36 36 58 36 58 58 00 58 36 36 58 58 36 58 36 58 58 00 48 58 58 36 58 36 58 58 58 36 58 58 36 58 36 36 58 36 36 58 36 36 36 36 36 58 58 58 36 58 36 36 58 58 36 58 58 58 36 36 36 58 48 36 58 58 36 36 58 58 58 36 36 36 36 36 36 36 36 58 36 36 36 36 36 58 36 58 36 36 58 58 58 36 58 58 36 36 36 36 58 58 36 36 36 58 58 36 58 58 36 00 58 58 48 36 36 58 36 58 58 36 36 36 36 36 58 36 36 36 36 36 36 36 36 36 58 36 58 36 36 58 58 58 36 58 36 36 36 36 58 58 36 36 36 36 58 36 58 36 36 36 36 36 36 36 58 58 58 36 36 36 58 36 58 36 36 58 36 36 36 36 36 36 58 36 36 36 36 58 36 36 58 36 48 58 36 36 36 58 36 36 36 58 58 36 58 36 36 36 58 36 36 36 36 58 36 36 36 68 36 36 36 36 36 36 58 36 58 58 58 36 36 36 58 36 36 36 36 36 36 58 36 36 36 58 36 58 58 58 58 36 58 36 58 58 36 36 36 36 36 36 36 36 58 58 58 36 36 58 36 36 36 36 36 58 36 36 58 36 58 36 36 58 36 58 36 36 36 48 36 36 36 58 36 36 36 36 36 36 36 58 36 58 36 36 36 36 36 58 36 36 36 58 36 58 36 36 58 58 36 36 36 58 58 36 36 58 36 58 58 36 36 58 36 48 36 36 36 36 58 36 36 58 36 36 36 58 58 36 36 36 36 36 36 58 58 36 36 36 36 36 36 36 36 36 36 58 48 36 36 36 68 36 36 58 58 58 36 36 36 36 36 00 36 36 58 36 58 36 36 36 36 36 36 36 36 36 36 36 58 36 36 36 36 36 48 36 36 58 58 36 36 36 36 58 58 36 36 36 36 36 58 36 36 58 58 58 36 36 36 58 58 48 58 36 36 36 48 36 36 36 58 58 36 36 58 36 58 36 36 58 36 36 36 36 36 58 36 36 36 36 58 58 36 58 36 36 36 36 58 58 36 36 36 36 36 36 36 58 58 58 36 36 36 58 36 48 36 58 36 36 58 58 36 58 58 36 58 36 58 36 58 36 00 58 36 58 36 36 36 48 58 36 36 36 36 58 58 36 36 58 58 36 36 36 36 36 58 36 58 58 36 58 58 36 36 58 36 36 58 58 36 36 58 36 58 36 36 58 58 58 58 58 58 36 36 36 36 58 36 36 36 58 36 36 58 36 58 36 58 36 36 36 58 36 58 36 36 58 36 36 36 36 58 58 36 58 36 58 36 58 36 58 36 36 36 58 36 58 58 36 36 36 36 36 58 36 58 36 36 36 58 00 36 58 36 58 36 36 36 36 36 36 58 58 36 36 58 36 36 36 48 58 36 36 58 36 36 36 36 58 36 36 36 36 58 36 58 36 36 36 48 36 36 36 58 58 58 36 36 36 58 36 36 58 36 36 36 58 36 36 36 58 36 36 58 36 36 36 36 48 36 48 58 58 36 36 58 36 58 36 36 36 36 36 58 36 36 36 58 58 36 36 58 36 58 36 36 36 36 36 36 36 36 36 36 58 36 36 58 58 36 36 36 36 58 36 58 36 36 36 36 48 36 36 00 36 36 58 36 36 36 36 36 36 36 36 58 36 58 36 36 36 58 36 36 58 36 58 36 58 36 36 58 36 36 36 36 36 58 58 36 36 58 36 36 36 36 36 58 58 58 36 36 36 58 58 58 36 58 36 48 36 36 36 36 36 36 36 58 58 36 58 58 36 36 58 36 36 36 36 58 58 58 36 36 36 36 00 36 36 36 36 58 36 58 36 36 58 36 36 36 36 58 36 36 36 36 58 58 36 36 36 36 36 36 36 58 36 36 58 58 36 36 58 36 36 36 36 48 36 58 58 58 36 36 36 36 36 36 58 58 36 36 58 36 58 58 00 36 58 36 36 58 58 36 36 36 36 58 58 36 36 48 36 36 36 36 36 36 58 36 36 58 36 58 36 58 36 36 36 58 36 36 36 36 36 36 36 36 36 36 36 36 36 58 36 58 36 36 36 58 36 58 36 58 58 58 36 36 36 36 58 58 36 36 36
*/
