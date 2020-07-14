.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12345, %rsi
lea addresses_UC_ht+0x42d5, %rdi
clflush (%rsi)
nop
nop
nop
xor $64793, %rbp
mov $22, %rcx
rep movsw
add %r15, %r15
lea addresses_normal_ht+0x10819, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub $17029, %r14
lea addresses_UC_ht+0x177e5, %rdi
nop
cmp %r11, %r11
movw $0x6162, (%rdi)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x12d5, %rsi
lea addresses_UC_ht+0x18d64, %rdi
nop
nop
nop
nop
inc %rax
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
and $13170, %r11
lea addresses_D_ht+0xdb95, %rbp
nop
nop
nop
nop
nop
cmp $35489, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x176d5, %rsi
lea addresses_UC_ht+0xe2d5, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $47, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x8c55, %rdi
nop
nop
nop
nop
and $54806, %r14
movb (%rdi), %r11b
nop
nop
and $54491, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx

// Load
lea addresses_RW+0x1c995, %r11
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%r11), %cx
nop
nop
nop
nop
and $45314, %r10

// Faulty Load
lea addresses_US+0xbad5, %r15
nop
nop
nop
nop
and $61228, %r11
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
