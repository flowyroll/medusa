.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5908, %rsi
lea addresses_UC_ht+0x11b70, %rdi
nop
add %r10, %r10
mov $101, %rcx
rep movsw
nop
nop
sub $59260, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x16ebc, %rsi
lea addresses_PSE+0xd108, %rdi
xor %r15, %r15
mov $81, %rcx
rep movsw
nop
nop
nop
nop
xor %r13, %r13

// Store
mov $0x4463af0000000508, %rsi
nop
nop
sub %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add $49754, %rsi

// Load
mov $0x5bc4290000000e38, %rdi
nop
nop
inc %r11
mov (%rdi), %si
nop
nop
nop
nop
cmp $47897, %rsi

// Faulty Load
lea addresses_UC+0x1a108, %r15
add $49125, %rsi
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'46': 3, '33': 1137, '00': 212}
00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 00 33 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 00 33 33 00 33 33 00 33 33 00 00 00 33 33 33 00 33 33 33 00 33 33 00 33 33 33 33 33 33 33 33 46 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 00 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 00 00 33 33 33 00 33 33 00 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 00 00 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 00 33 00 33 33 33 33 00 00 33 33 33 33 33 33 00 33 00 33 33 33 00 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 00 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 00 33 33 33 33 33 00 33 00 33 33 33 00 33 33 33 33 33 00 33 00 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 00 33 33 33 33 00 33 33 33 00 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 00 33 00 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 33 33 33 33 00 33 33 00 00 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 00 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 00 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 00 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 00 00 33 33 33 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 00 33 33 33 00 33 33 00 33 33 33 00 00 33 00 33 33 33 33 00 33 33 33 33
*/