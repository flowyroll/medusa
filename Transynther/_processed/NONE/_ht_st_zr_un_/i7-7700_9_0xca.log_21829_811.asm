.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11f0, %rsi
lea addresses_WC_ht+0x1991e, %rdi
nop
nop
nop
nop
nop
cmp $43973, %r15
mov $86, %rcx
rep movsb
cmp $54078, %rdi
lea addresses_WC_ht+0x185be, %rsi
lea addresses_UC_ht+0x2cbe, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $42, %rcx
rep movsq
nop
nop
nop
nop
xor $35852, %rsi
lea addresses_WT_ht+0xa3be, %rsi
lea addresses_WC_ht+0x663e, %rdi
nop
nop
nop
and %r14, %r14
mov $91, %rcx
rep movsq
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Load
mov $0xb3e, %r15
nop
nop
nop
cmp %r8, %r8
mov (%r15), %r14w
nop
sub $8748, %rax

// Faulty Load
lea addresses_WT+0x184be, %rax
cmp $11702, %r9
mov (%rax), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'46': 6, '48': 70, '57': 1, '00': 14916, 'ff': 13, 'ca': 4245, '1a': 2499, '49': 78, '3c': 1}
00 00 00 1a ca 00 00 00 00 1a 00 ca ca 00 00 ca 1a 00 00 00 00 00 00 00 00 1a 00 00 00 ca 00 00 00 00 00 00 00 00 1a 00 00 00 00 ca 00 ca 00 00 00 00 1a 00 00 ca 00 00 00 00 ca 00 00 00 00 00 1a 00 00 00 ca 48 00 00 00 00 ca 1a 00 ca 00 00 ca ca 1a 00 ca ca 00 00 00 00 ca 1a 1a 00 00 00 00 00 1a 00 00 ca 00 1a 00 ca 00 1a 00 00 1a 00 00 00 00 00 ca 00 00 00 00 ca ca 1a 48 ca 00 00 1a 1a 00 00 ca ca ca 00 00 00 ca 1a 00 00 00 ca 00 00 1a 00 00 00 1a 00 00 00 00 00 ca 00 1a 00 00 ca 00 00 00 00 00 00 ca 1a 00 00 00 ca 1a 00 00 ca ca 00 00 1a 00 49 ca 00 1a 00 00 00 ca 00 00 1a 00 00 00 ca 00 1a 00 00 00 00 1a 00 ca 1a 00 ca 00 ca 00 00 ca 00 00 00 00 1a 00 00 ca 00 1a ca 00 00 00 1a 00 00 00 00 1a 1a 00 00 ca 00 00 1a 49 ca 00 00 00 ca 00 00 1a 00 00 00 00 00 00 ca 00 1a 00 00 ca 00 00 1a 00 00 1a 00 00 00 00 00 ca 00 00 ca ca 00 00 00 00 00 ca 00 00 00 00 00 00 00 1a 00 00 00 00 ca 00 00 00 ca 00 00 00 00 00 00 00 00 00 00 00 00 00 ca 00 00 00 00 00 ca 00 1a 00 00 00 1a 1a 00 00 00 00 ca 1a 00 00 ca ca 00 00 00 ca 00 00 ca 00 00 1a 00 00 ca 00 00 00 00 ca ca 00 1a 00 00 00 00 ca ca 00 00 00 00 1a 00 00 00 00 00 1a 00 00 00 00 ca 00 00 00 00 00 1a 00 00 00 ca ca 1a 00 ca 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 ca ca 1a 00 00 00 ca 00 00 00 00 00 00 1a 00 1a 00 ca 00 00 00 00 00 1a 00 1a 00 00 ca 00 ca 1a 1a 00 00 00 00 00 00 ca ca 00 00 00 00 ca 00 00 00 ca 00 1a 1a 00 00 ca 00 00 00 00 00 00 00 1a 00 00 00 00 00 ca 00 1a 00 ca 00 00 1a 00 00 00 00 1a 00 ca 00 00 1a 1a ca 00 00 00 1a 00 00 00 00 1a ca 00 00 ca 00 1a 00 00 00 1a ca 1a 00 00 00 1a 00 00 00 ca 00 00 ca 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 1a 00 00 ca 00 1a 00 00 ca ca 00 00 00 ca ca ca 1a 00 00 00 00 00 00 00 00 00 00 ca 00 00 ca 00 00 ca 00 00 00 00 00 00 00 00 00 00 ca 00 ca 00 ca ca 00 00 00 00 00 00 00 ca 00 00 00 00 00 1a 00 00 00 1a 00 00 1a 00 00 00 00 00 00 00 ca 00 00 00 00 00 00 00 00 00 ca 48 00 00 00 ca 1a 00 00 00 00 1a 00 00 00 1a 00 00 ca 00 1a ca 00 00 ca 00 00 00 00 00 ca 00 ca 00 00 ca 00 00 00 1a 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 ca 00 ca 00 ca 00 00 ca 00 00 1a 00 1a 00 00 ca 00 00 00 00 ca 00 00 00 00 00 00 ca 1a 00 00 00 ca ca 1a 00 00 49 ca 00 00 00 00 ca 1a 00 00 00 00 00 00 00 00 00 ca ca 00 00 00 00 ca 1a 1a ca 00 00 00 00 00 00 ca ca 1a 00 00 00 00 ca ca 00 00 00 00 00 00 00 00 00 00 1a ca 00 00 ca ca 00 00 00 00 ca ca 1a 1a 00 00 00 00 1a 00 00 00 00 00 ca 1a 00 00 00 1a 1a 00 00 00 1a 1a 00 00 ca 1a 00 00 00 00 1a 00 00 00 ca 00 00 1a ca ca 00 00 00 00 00 ca 00 00 00 00 00 ca 00 00 00 00 ca 00 00 00 00 00 00 ca 00 00 ca 00 00 00 00 00 00 00 00 1a 00 00 ca ca 00 ca 00 00 00 ca 00 00 49 ca 00 ca ca 00 00 00 ca 00 00 00 00 00 00 00 00 ca ca 1a 00 00 00 ca 00 1a 00 00 1a 00 00 00 00 ca ca ca ca 00 00 00 00 00 00 00 ca 00 ca ca ca 00 1a 1a 00 00 00 ca 1a 00 ca 00 00 ca 00 00 00 ca 00 00 00 00 1a 00 00 ca 00 00 00 00 00 00 00 ca 1a 1a 00 ca 00 00 00 1a 00 ca 00 ca ca 00 1a 1a 00 ca 00 00 00 00
*/
