.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ca5, %rsi
lea addresses_UC_ht+0x11a5, %rdi
nop
nop
inc %r8
mov $11, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1534d, %rsi
lea addresses_normal_ht+0x1dc95, %rdi
xor %r11, %r11
mov $23, %rcx
rep movsl
nop
nop
xor $65425, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_US+0x1525d, %r13
add $6528, %rbx
movl $0x51525354, (%r13)
cmp $19672, %r9

// Load
mov $0x40b2b700000002a5, %rbx
clflush (%rbx)
inc %rdi
mov (%rbx), %ebp
nop
nop
nop
xor $34853, %r15

// Faulty Load
lea addresses_PSE+0x150a5, %rbp
add $24356, %r15
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'33': 1}
33
*/
