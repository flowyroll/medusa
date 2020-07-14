.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1233a, %r15
nop
nop
nop
sub %r11, %r11
movb $0x61, (%r15)
nop
nop
inc %rcx
lea addresses_UC_ht+0x16ba, %rsi
lea addresses_WC_ht+0x1827a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $17331, %r14
mov $30, %rcx
rep movsq
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1553a, %r14
nop
sub %r11, %r11
mov (%r14), %r12d
nop
cmp $20549, %rsi
lea addresses_UC_ht+0xb4fa, %rsi
nop
and $44840, %r14
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x892a, %r11
nop
nop
nop
and $47283, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rdi
push %rsi

// Store
lea addresses_PSE+0x10b3a, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
movb $0x51, (%r11)
xor %rsi, %rsi

// Faulty Load
lea addresses_WT+0x733a, %r11
cmp %r10, %r10
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 10078, '47': 1420, 'ff': 2010, '70': 282, '52': 19, '02': 76, 'c0': 3, '8f': 6, 'de': 1, '80': 4, '50': 1, '30': 7}
00 00 00 47 00 ff 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 ff 00 47 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 47 00 00 ff 00 47 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 ff 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 ff ff 00 ff 00 00 00 ff ff 47 00 00 00 00 00 00 47 00 00 ff 47 00 ff 70 ff 70 00 ff 00 00 00 00 00 00 00 00 00 00 00 47 00 ff 00 52 00 ff 00 00 00 00 ff 00 ff 00 00 00 00 47 00 00 00 ff 00 ff 47 ff ff 00 00 ff 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 02 00 47 ff 00 00 ff 70 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 ff 00 00 00 00 00 00 00 00 00 02 00 47 00 00 00 00 00 47 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 ff 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 ff ff 00 00 00 47 00 00 00 00 47 47 00 00 00 47 00 00 ff 00 00 00 00 47 00 00 00 00 ff 70 00 47 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 47 00 00 00 47 ff 00 52 47 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 47 00 00 00 00 00 00 ff 00 ff 02 00 00 00 00 00 47 47 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 47 00 00 00 00 00 00 00 00 00 ff ff ff ff 70 00 ff 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 47 ff 00 00 00 00 00 00 47 47 ff 47 00 00 00 00 00 ff 70 00 00 00 00 00 00 47 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 47 00 00 47 00 ff 00 00 00 00 00 47 00 47 00 ff 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 ff ff 70 ff 00 00 00 ff 00 00 47 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 ff 47 00 00 47 00 00 47 ff 70 ff ff 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 ff 00 47 00 00 00 ff ff 70 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 ff ff 70 00 00 00 00 00 00 47 00 ff 00 00 00 00 47 00 00 00 00 00 47 52 00 00 00 00 00 ff 00 00 00 00 ff 70 00 00 00 00 ff 00 ff 47 00 ff 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 ff 00 ff 00 00 00 47 00 ff 00 00 00 ff 00 00 ff 00 00 47 00 00 00 ff 00 ff ff 00 47 00 ff 00 00 00 ff 00 00 47 ff 00 00 00 00 47 00 00 00 00 ff 47 00 52 00 ff ff 00 00 00 00 00 ff 00 ff 70 00 00 00 00 00 00 47 00 00 47 00 00 00 00 ff 47 00 00 00 00 00 00 00 00 ff 00 00 47 00 00 00 00 00 00 00 47 ff 00 ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 47 00 00 ff 00 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 ff ff 00 ff 00 00 00 00 ff 47 00 00 00 00 ff ff 70 00 00 00 ff 00 00 00 00 00 00 47 00 00 00 00 00 00 ff 70 00 47 47 00 00 ff 00 ff ff 47 00 00 ff 47 00 00 ff ff ff 47 ff ff 00 00 47 00 00 00 00 00 47 ff 00 47 00 ff 00 00 47 00 00 00 00 ff ff 47 ff 00 00 00 00 00 00 ff ff 70 00 00 00 00 00 00 ff 00 00 00 ff ff 47 00 00 ff 00 00 00 00 ff 00 00 00 47 00 00 00 00 00
*/
