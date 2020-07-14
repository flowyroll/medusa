.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11890, %rsi
lea addresses_UC_ht+0x13f10, %rdi
nop
nop
nop
dec %rdx
mov $19, %rcx
rep movsw
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Load
lea addresses_A+0xd386, %r15
nop
nop
nop
nop
cmp $65139, %rcx
mov (%r15), %ebp
nop
nop
xor $13450, %rbp

// Store
lea addresses_WT+0x18390, %rax
nop
cmp %r11, %r11
movb $0x51, (%rax)
nop
cmp $731, %rbp

// Store
mov $0x4cd7200000000f90, %rsi
nop
nop
nop
nop
nop
cmp $36427, %r11
movl $0x51525354, (%rsi)
sub $8977, %rax

// Store
lea addresses_RW+0x115e6, %r11
clflush (%r11)
nop
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
dec %rcx

// Store
mov $0x4cd7200000000f90, %r11
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%r11)
nop
nop
nop
xor $49987, %r9

// Faulty Load
mov $0x4cd7200000000f90, %rsi
clflush (%rsi)
nop
xor %rbp, %rbp
mov (%rsi), %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 2, '54': 35}
54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54
*/
