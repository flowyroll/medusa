.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11cfb, %r8
nop
nop
nop
nop
cmp $27202, %rdx
movw $0x6162, (%r8)
nop
dec %rcx
lea addresses_WT_ht+0xb81b, %rsi
lea addresses_WT_ht+0x3a73, %rdi
nop
sub %rax, %rax
mov $86, %rcx
rep movsw
nop
nop
nop
nop
and $52868, %rdi
lea addresses_A_ht+0x13adb, %rsi
lea addresses_A_ht+0x1011b, %rdi
nop
nop
nop
nop
xor $46356, %r8
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0xefbb, %rsi
lea addresses_A_ht+0x145ab, %rdi
nop
nop
and $33925, %rbp
mov $74, %rcx
rep movsl
nop
nop
nop
xor $51318, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1b69b, %rdx
add $25082, %r11
mov (%rdx), %r9
nop
nop
nop
add $35514, %rsi

// Store
lea addresses_PSE+0x1cd06, %r14
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r14)
nop
and %rdx, %rdx

// Store
lea addresses_WC+0xa29b, %rsi
nop
nop
nop
sub $45034, %rbx
movl $0x51525354, (%rsi)
and %r14, %r14

// Store
lea addresses_PSE+0x94ab, %r11
nop
nop
nop
nop
dec %rbx
movl $0x51525354, (%r11)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WC+0xea6b, %rbx
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movntdq %xmm1, (%rbx)
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0xfa9b, %r9
nop
nop
add $47852, %r14
movw $0x5152, (%r9)
nop
add $58083, %rsi

// Faulty Load
mov $0x5d4da1000000029b, %r11
nop
cmp $48991, %r14
mov (%r11), %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'54': 21762, '00': 67}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
