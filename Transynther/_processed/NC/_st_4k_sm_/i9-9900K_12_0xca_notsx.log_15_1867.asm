.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x19adb, %r11
cmp %rsi, %rsi
movb (%r11), %dl
nop
add %rdx, %rdx

// Store
mov $0x56d8ed00000000db, %r14
nop
and $37238, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
add %rax, %rax

// Store
lea addresses_normal+0xc0db, %rdi
nop
nop
nop
nop
xor $15859, %rbx
movl $0x51525354, (%rdi)
nop
nop
sub %r14, %r14

// Store
lea addresses_US+0x11c33, %r11
clflush (%r11)
nop
nop
nop
nop
sub $46113, %rax
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub $26254, %rdi

// Store
lea addresses_RW+0xa8db, %r11
nop
xor %rsi, %rsi
movw $0x5152, (%r11)
nop
nop
add %r14, %r14

// Store
lea addresses_US+0x17d0b, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
nop
cmp $49979, %rax

// Store
lea addresses_RW+0xde3b, %rbx
nop
nop
nop
and $48984, %rdx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
mov $0x56d8ed00000000db, %rax
nop
nop
nop
nop
cmp $45504, %rsi
mov (%rax), %r11d
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'54': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
